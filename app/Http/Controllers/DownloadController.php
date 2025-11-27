<?php

namespace App\Http\Controllers;

use App\Models\DigitalFile;
use App\Models\Download;
use App\Models\TokenTransaction;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB; // Crucial for Transactions

class DownloadController extends Controller
{
    public function download($slug)
    {
        // 1. Find the file safely
        $file = DigitalFile::where('slug', $slug)->firstOrFail();
        $user = Auth::user();

        // 2. CHECK: Is the file physically there?
        if (!Storage::disk('local')->exists($file->file_path)) {
            return back()->with('error', 'File not found on server.');
        }

        // 3. SCENARIO A: User is the Owner (Free Download)
        if ($file->user_id === $user->id) {
            return Storage::disk('local')->download($file->file_path, $file->title . '.' . explode('/', $file->file_type)[1]);
        }

        // 4. SCENARIO B: User already bought this file (Free Re-download)
        $alreadyDownloaded = Download::where('user_id', $user->id)
            ->where('file_id', $file->id)
            ->exists();

        if ($alreadyDownloaded) {
            return Storage::disk('local')->download($file->file_path, $file->title . '.' . explode('/', $file->file_type)[1]);
        }

        // 5. SCENARIO C: New Purchase (Cost: 1 Token)

        // Check Balance
        if ($user->tokens < 1) {
            return back()->with('error', 'Insufficient tokens! Upload files to earn more.');
        }

        // START TRANSACTION (The Safety Net)
        try {
            DB::transaction(function () use ($user, $file) {
                // A. Deduct 1 Token from Downloader
                $user->decrement('tokens', 1);

                // B. Add 1 Token to Uploader (Incentive)
                $uploader = User::find($file->user_id);
                if ($uploader) {
                    $uploader->increment('tokens', 1);
                }

                // C. Log the Cost (for Downloader)
                TokenTransaction::create([
                    'user_id' => $user->id,
                    'amount' => -1,
                    'balance_after' => $user->tokens, // Current balance
                    'type' => 'spend',
                    'description' => 'Downloaded: ' . $file->title,
                    'reference_type' => 'digital_file',
                    'reference_id' => $file->id,
                ]);

                // D. Log the Earnings (for Uploader)
                if ($uploader) {
                    TokenTransaction::create([
                        'user_id' => $uploader->id,
                        'amount' => 1,
                        'balance_after' => $uploader->tokens,
                        'type' => 'earn',
                        'description' => 'Download Reward: ' . $file->title,
                        'reference_type' => 'digital_file',
                        'reference_id' => $file->id,
                    ]);
                }

                // E. Record the Download Permission
                Download::create([
                    'user_id' => $user->id,
                    'file_id' => $file->id,
                    'ip_address' => request()->ip()
                ]);

                // F. Update File Stats
                $file->increment('download_count');
            });

        } catch (\Exception $e) {
            // If anything goes wrong in the DB, stop everything.
            dd($e->getMessage(), $e->getTraceAsString());
            return back()->with('error', 'Transaction failed. Please try again.');
        }

        // 6. Deliver the File
        return Storage::disk('local')->download($file->file_path, $file->title . '.' . explode('/', $file->file_type)[1]);
    }
}