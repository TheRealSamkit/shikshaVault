<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\WithFileUploads;
use App\Helpers\LookupHelper;
use App\Models\DigitalFile;
use App\Models\TokenTransaction;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;
use setasign\Fpdi\Fpdi;

class FileUploader extends Component
{
    use WithFileUploads;

    public $title, $description, $file, $tags = [];
    public $academic_field_id = '', $program_stream_id = '', $program_stream_level_id = '', $subject_id = '', $resource_type_id = '', $institution_id = '';
    public $institution_query = '', $institution_results = [];
    public $academic_fields = [], $program_streams = [], $stream_levels = [], $subjects = [], $resource_types = [];

    protected $rules = [
        'title' => 'required|string|min:5|max:255',
        'description' => 'required|string|min:10',
        'academic_field_id' => 'required',
        'program_stream_id' => 'required',
        'program_stream_level_id' => 'required',
        'subject_id' => 'required',
        'resource_type_id' => 'required',
        'institution_id' => 'required',
        'file' => 'required|file|max:10240|mimes:jpeg,png,jpg,pdf,doc,docx,ppt,pptx,xlsx,xls',
    ];

    public function mount()
    {
        $this->academic_fields = LookupHelper::getAcademicFields();
        $this->resource_types = LookupHelper::getResourceTypes();
    }

    // --- Helper: Get File Icon ---
    public function getFileIconProperty()
    {
        if (!$this->file)
            return 'ti-file';
        $ext = strtolower($this->file->getClientOriginalExtension());

        return match ($ext) {
            'pdf' => 'ti-file-type-pdf text-danger',
            'doc', 'docx' => 'ti-file-type-doc text-primary',
            'ppt', 'pptx' => 'ti-file-type-ppt text-warning',
            'xls', 'xlsx' => 'ti-file-type-xls text-success',
            'jpg', 'jpeg', 'png' => 'ti-photo text-info',
            default => 'ti-file-text',
        };
    }

    // --- Page Counter (Safe Mode) ---
    private function getPageCount($file)
    {
        $extension = strtolower($file->getClientOriginalExtension());
        $path = $file->getRealPath();

        try {
            if ($extension === 'pdf' && class_exists(\Smalot\PdfParser\Parser::class)) {
                $parser = new \Smalot\PdfParser\Parser();
                $pdf = $parser->parseFile($path);
                return count($pdf->getPages());
            }
            // Check if ZipArchive exists to prevent crash
            elseif (in_array($extension, ['docx', 'pptx']) && class_exists('ZipArchive')) {
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

    // --- Search Logic ---
    public function loadInitialInstitutions()
    {
        if (empty($this->institution_query)) {
            $this->institution_results = \App\Models\Institution::orderBy('name')->limit(10)->get()->toArray();
        } else {
            $this->updatedInstitutionQuery();
        }
    }

    private function generatePdfPreview($file, $uuidName)
    {
        $extension = strtolower($file->getClientOriginalExtension());

        // Only generate for PDFs
        if ($extension !== 'pdf') {
            return null;
        }

        try {
            $pdf = new Fpdi();
            // Get the page count of the uploaded file
            $pageCount = $pdf->setSourceFile($file->getRealPath());

            // Import Page 1
            $templateId = $pdf->importPage(1);
            $size = $pdf->getTemplateSize($templateId);

            // Create a new PDF with just that page
            $pdf->AddPage($size['orientation'], [$size['width'], $size['height']]);
            $pdf->useTemplate($templateId);

            // Generate filename for preview
            $previewName = 'preview_' . pathinfo($uuidName, PATHINFO_FILENAME) . '.pdf';

            $pdfContent = $pdf->Output('S');

            Storage::disk('public')->put('previews/' . $previewName, $pdfContent);

            return 'previews/' . $previewName;

        } catch (\Exception $e) {
            \Illuminate\Support\Facades\Log::error('Preview generation failed: ' . $e->getMessage());
            return null;
        }
    }

    public function updatedInstitutionQuery()
    {
        $this->institution_id = '';
        if (strlen($this->institution_query) >= 1) {
            $this->institution_results = LookupHelper::searchInstitutions($this->institution_query)->toArray();
        } else {
            $this->institution_results = [];
        }
    }

    public function selectInstitution($id, $name)
    {
        $this->institution_id = $id;
        $this->institution_query = $name;
        $this->institution_results = [];
    }

    // --- Cascading Logic ---
    public function updatedAcademicFieldId($value)
    {
        $this->reset(['program_stream_id', 'program_stream_level_id', 'subject_id']);
        $this->program_streams = $value ? LookupHelper::getProgramStreams($value) : [];
    }

    public function updatedProgramStreamId($value)
    {
        $this->reset(['program_stream_level_id', 'subject_id']);
        $this->stream_levels = $value ? LookupHelper::getStreamLevels($value) : [];
        $this->subjects = $value ? LookupHelper::getSubjects($value) : [];
    }

    public function removeFile()
    {
        $this->reset('file');
    }

    public function save()
    {
        $this->validate();
        DB::beginTransaction();

        try {
            $user = Auth::user();

            $extension = $this->file->getClientOriginalExtension();
            $storageName = Str::uuid() . '.' . $extension;
            $path = $this->file->storeAs('secure_docs', $storageName, 'local');
            $previewPath = $this->generatePdfPreview($this->file, $storageName);
            $fileRecord = DigitalFile::create([
                'slug' => Str::slug($this->title) . '-' . Str::random(6),
                'user_id' => $user->id,
                'title' => $this->title,
                'description' => $this->description,
                'file_path' => $path,
                'preview_path' => $previewPath,
                'file_type' => $extension,
                'file_size' => $this->file->getSize(),
                'page_count' => $this->getPageCount($this->file),
                'content_hash' => md5_file($this->file->getRealPath()),
                'institution_id' => $this->institution_id,
                'academic_field_id' => $this->academic_field_id,
                'program_stream_id' => $this->program_stream_id,
                'program_stream_level_id' => $this->program_stream_level_id, // Pivot ID
                'subject_id' => $this->subject_id,
                'academic_level_id' => $this->program_stream_level_id, // Storing pivot as level ref
                'resource_type_id' => $this->resource_type_id,
                'status' => 'active',
                'visibility' => 'public',
            ]);

            // 3. Reward
            $rewardAmount = 3; // Fixed reward amount
            $user->increment('tokens', $rewardAmount);
            TokenTransaction::create([
                'user_id' => $user->id,
                'amount' => $rewardAmount,
                'balance_after' => $user->tokens,
                'type' => 'credit',
                'description' => 'Upload Reward',
                'reference_type' => DigitalFile::class,
                'reference_id' => $fileRecord->id,
            ]);

            DB::commit();

            // Reset UI
            $this->reset();
            $this->mount();
            $this->dispatch('upload-success', message: 'File uploaded successfully! 5 Tokens earned.');

        } catch (\Exception $e) {
            DB::rollBack();
            $this->addError('file', 'Upload failed: ' . $e->getMessage());
        }
    }

    public function render()
    {
        return view('livewire.file-uploader');
    }
}