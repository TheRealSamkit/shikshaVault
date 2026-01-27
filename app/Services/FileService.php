<?php

namespace App\Services;

use App\Models\DigitalFile;
use App\Models\AccessedFile;
use App\Models\TokenTransaction;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use setasign\Fpdi\Fpdi;
use Smalot\PdfParser\Parser;

class FileService
{
    /**
     * Process file access and token deductions.
     */
    public function processAccess(User $user, DigitalFile $file, string $type)
    {
        if ($user->id === $file->user_id) {
            return ['success' => true, 'message' => 'Owner access granted.'];
        }

        $accessRecord = AccessedFile::where('user_id', $user->id)->where('file_id', $file->id)->first();
        $cost = 0;
        $isRenewal = false;

        if (!$accessRecord) {
            $cost = 5;
        } elseif ($type === 'download') {
            if (Carbon::now()->greaterThan($accessRecord->first_accessed_at->addDays(7))) {
                $cost = 3;
                $isRenewal = true;
            }
        }

        if ($cost > 0) {
            if (!$user->hasTokens($cost)) {
                return ['success' => false, 'message' => 'Insufficient tokens. Cost: ' . $cost];
            }

            return DB::transaction(function () use ($user, $file, $cost, $isRenewal, $accessRecord) {
                $user->debitTokens($cost);

                TokenTransaction::create([
                    'user_id' => $user->id,
                    'amount' => -$cost,
                    'balance_after' => $user->tokens,
                    'type' => 'debit',
                    'description' => ($isRenewal ? 'Renewed download: ' : 'Unlocked: ') . $file->title,
                    'reference_type' => DigitalFile::class,
                    'reference_id' => $file->id,
                ]);

                if ($accessRecord) {
                    $accessRecord->update(['first_accessed_at' => now()]);
                } else {
                    AccessedFile::create([
                        'user_id' => $user->id,
                        'file_id' => $file->id,
                        'first_accessed_at' => now()
                    ]);
                }

                return ['success' => true, 'message' => 'Access Granted (-' . $cost . ' tokens)'];
            });
        }

        return ['success' => true, 'message' => 'Access already granted.'];
    }

    /**
     * Handle file upload logic.
     */
    public function upload(User $user, array $data, $file)
    {
        $contentHash = md5_file($file->getRealPath());
        $duplicate = DigitalFile::where('content_hash', $contentHash)->first();

        if ($duplicate) {
            throw new \Exception('This file has already been uploaded to the platform.');
        }

        return DB::transaction(function () use ($user, $data, $file, $contentHash) {
            $extension = $file->getClientOriginalExtension();
            $storageName = Str::uuid() . '.' . $extension;
            $path = $file->storeAs('secure_docs', $storageName, 'local');
            $previewPath = $this->generatePdfPreview($file, $storageName);

            $streamLevelRecord = DB::table('program_stream_levels')
                ->where('id', $data['program_stream_level_id'])
                ->first();

            $actualAcademicLevelId = $streamLevelRecord ? $streamLevelRecord->academic_level_id : null;

            $fileRecord = DigitalFile::create([
                'slug' => Str::slug($data['title']) . '-' . Str::random(6),
                'user_id' => $user->id,
                'title' => $data['title'],
                'description' => $data['description'],
                'file_path' => $path,
                'preview_path' => $previewPath,
                'file_type' => $extension,
                'file_size' => $file->getSize(),
                'page_count' => $this->getPageCount($file),
                'content_hash' => $contentHash,
                'institution_id' => $data['institution_id'],
                'academic_field_id' => $data['academic_field_id'],
                'program_stream_id' => $data['program_stream_id'],
                'program_stream_level_id' => $data['program_stream_level_id'],
                'subject_id' => $data['subject_id'],
                'academic_level_id' => $actualAcademicLevelId,
                'resource_type_id' => $data['resource_type_id'],
                'status' => 'active',
                'visibility' => 'public',
            ]);

            $rewardAmount = 3;
            $user->creditTokens($rewardAmount);
            TokenTransaction::create([
                'user_id' => $user->id,
                'amount' => $rewardAmount,
                'balance_after' => $user->tokens,
                'type' => 'credit',
                'description' => 'Upload Reward',
                'reference_type' => DigitalFile::class,
                'reference_id' => $fileRecord->id,
            ]);

            return $fileRecord;
        });
    }

    /**
     * Generate PDF Preview.
     */
    public function generatePdfPreview($file, $uuidName)
    {
        $extension = strtolower($file->getClientOriginalExtension());

        if ($extension !== 'pdf') {
            return null;
        }

        try {
            $pdf = new Fpdi();
            $pdf->setSourceFile($file->getRealPath());

            $templateId = $pdf->importPage(1);
            $size = $pdf->getTemplateSize($templateId);

            $pdf->AddPage($size['orientation'], [$size['width'], $size['height']]);
            $pdf->useTemplate($templateId);

            $previewName = 'preview_' . pathinfo($uuidName, PATHINFO_FILENAME) . '.pdf';
            $pdfContent = $pdf->Output('S');

            Storage::disk('public')->put('previews/' . $previewName, $pdfContent);

            return 'previews/' . $previewName;
        } catch (\Exception $e) {
            \Log::error('Preview generation failed: ' . $e->getMessage());
            return null;
        }
    }

    /**
     * Get page count for various file types.
     */
    public function getPageCount($file)
    {
        $extension = strtolower($file->getClientOriginalExtension());
        $path = $file->getRealPath();

        try {
            if ($extension === 'pdf' && class_exists(Parser::class)) {
                $parser = new Parser();
                $pdf = $parser->parseFile($path);
                return count($pdf->getPages());
            } elseif (in_array($extension, ['docx', 'pptx']) && class_exists('ZipArchive')) {
                $zip = new \ZipArchive();
                if ($zip->open($path) === true) {
                    $xmlPath = $extension === 'docx' ? 'docProps/app.xml' : 'docProps/app.xml';
                    if (($index = $zip->locateName($xmlPath)) !== false) {
                        $xml = $zip->getFromIndex($index);
                        $xmlObj = simplexml_load_string($xml);
                        $key = $extension === 'docx' ? 'Pages' : 'Slides';
                        return (int) $xmlObj->$key;
                    }
                    $zip->close();
                }
            }
        } catch (\Exception $e) {
            return null;
        }
        return null;
    }

    /**
     * Toggle file visibility between public and private.
     */
    public function toggleVisibility(User $user, $fileId)
    {
        $file = DigitalFile::where('user_id', $user->id)->find($fileId);

        if ($file) {
            $newStatus = $file->visibility === 'public' ? 'private' : 'public';
            $file->update(['visibility' => $newStatus]);
            return $newStatus;
        }

        throw new \Exception('File not found or unauthorized.');
    }

    /**
     * Delete a file.
     */
    public function delete(User $user, $fileId)
    {
        $file = DigitalFile::where('user_id', $user->id)->find($fileId);

        if ($file) {
            $file->delete();
            return true;
        }

        throw new \Exception('File not found or unauthorized.');
    }

    /**
     * Update file metadata.
     */
    public function update(User $user, $fileId, array $data)
    {
        $file = DigitalFile::where('user_id', $user->id)->find($fileId);

        if ($file) {
            $file->update([
                'title' => $data['title'],
                'description' => $data['description'],
            ]);
            return $file;
        }

        throw new \Exception('File not found or unauthorized.');
    }
}
