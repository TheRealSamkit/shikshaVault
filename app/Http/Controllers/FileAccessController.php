<?php

namespace App\Http\Controllers;

use App\Models\DigitalFile;
use App\Models\AccessedFile;
use App\Models\Download; // Make sure you have this model
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;
use Illuminate\Http\Request;

class FileAccessController extends Controller
{
    public function download(Request $request, $slug)
    {
        $file = DigitalFile::where('slug', $slug)->firstOrFail();

        // 1. Owner Bypass
        if (Auth::check() && Auth::id() === $file->user_id) {
            return $this->serveFile($file, true, $request);
        }

        // 2. Check Access Record
        $access = AccessedFile::where('user_id', Auth::id())
            ->where('file_id', $file->id)
            ->first();

        // 3. Verify Access
        if (!$access) {
            return redirect()->route('file.view', $slug)->with('error', 'Please unlock this file first.');
        }

        // 4. Check 7-day expiry
        if (Carbon::now()->greaterThan($access->first_accessed_at->addDays(7))) {
            return redirect()->route('file.view', $slug)->with('error', 'Download license expired. Please renew access.');
        }

        return $this->serveFile($file, true, $request);
    }

    public function preview(Request $request, $slug)
    {
        $file = DigitalFile::where('slug', $slug)->firstOrFail();

        if (Auth::check() && Auth::id() === $file->user_id) {
            return $this->serveFile($file, false, $request);
        }

        $access = AccessedFile::where('user_id', Auth::id())
            ->where('file_id', $file->id)
            ->first();

        if (!$access) {
            return redirect()->route('file.view', $slug)->with('error', 'Please unlock this file first.');
        }

        return $this->serveFile($file, false, $request);
    }// Add this method to your FileAccessController class

    public function viewPdfWrapper($slug)
    {
        $file = DigitalFile::where('slug', $slug)->firstOrFail();

        if (Auth::id() !== $file->user_id) {
            $access = AccessedFile::where('user_id', Auth::id())
                ->where('file_id', $file->id)
                ->first();

            if (!$access) {
                return redirect()->route('file.view', $slug)->with('error', 'Access denied.');
            }
        }

        // Return a specific view for PDF.js, passing the raw file URL
        // We use the existing 'file.preview' route as the source for the PDF viewer
        return view('file.pdf-viewer', [
            'file' => $file,
            'src' => route('file.preview', $slug)
        ]);
    }

    private function serveFile($file, $isDownload, $request)
    {
        $path = $file->file_path;

        if (!Storage::disk('local')->exists($path)) {
            if (Storage::disk('public')->exists($path)) {
                $fullPath = Storage::disk('public')->path($path);
            } else {
                abort(404, 'File not found on server.');
            }
        } else {
            $fullPath = Storage::disk('local')->path($path);
        }

        // Logic: Increment stats only on download AND if 24 hours have passed since last download
        if ($isDownload && Auth::check()) {
            $lastDownload = Download::where('user_id', Auth::id())
                ->where('file_id', $file->id)
                ->latest('downloaded_at')
                ->first();

            if (!$lastDownload || Carbon::parse($lastDownload->downloaded_at)->diffInHours(now()) >= 24) {
                // Increment Counter
                $file->increment('download_count');

                // Log Download
                Download::create([
                    'user_id' => Auth::id(),
                    'file_id' => $file->id,
                    'downloaded_at' => now(),
                    'ip_address' => $request->ip()
                ]);
            }
        }


        return response()->file($fullPath, [
            'Content-Disposition' => ($isDownload ? 'attachment' : 'inline') . '; filename="' . $file->title . '.' . $file->file_type . '"'
        ]);
    }
}