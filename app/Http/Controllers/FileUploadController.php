<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\DigitalFile;
use Illuminate\Http\Request;
use Illuminate\Support\Str; // For generating unique Slugs
use Illuminate\Support\Facades\Auth; // To get current user
use Illuminate\Support\Facades\Storage; // To handle file saving
use Illuminate\Support\Facades\DB; // To handle file saving


class FileUploadController extends Controller
{
    // 1. Show the Upload Form
    public function create()
    {
        $institutions = DB::table('institutions')->pluck('name', 'id');
        $subjects = DB::table('subjects')->pluck('name', 'id');
        $academic_fields = DB::table('academic_fields')->pluck('name', 'id');
        return view('upload.create', compact('subjects', 'institutions', 'academic_fields')); // We will create this view next
    }

    // 2. Handle the Form Submission
    public function store(Request $request)
    {
        // A. VALIDATION
        // Ensure the user actually uploaded a file and it's not a virus/exe
        // dd($request->all());
        $request->validate([
            'title' => 'required|string|max:255',
            'document' => 'required|file|mimes:pdf,docx,ppt,pptx,txt|max:10240', // Max 10MB
            'institution_id' => 'required|exists:institutions,id',
            'subject_id' => 'required|exists:subjects,id',
            'academic_field_id' => 'required|exists:academic_fields,id'
        ]);
        // dd('Validation Passed', $request->file('document'));
        // B. FILE PROCESSING
        $file = $request->file('document');

        // Generate a hash of the file content (MD5). 
        // This is crucial for your 'content_hash' column to detect duplicates later.
        $hash = md5_file($file->getRealPath());

        // Check for duplicates (Optional: You can block upload here if hash exists)
        // $existing = DigitalFile::where('content_hash', $hash)->first();
        // if($existing) { return back()->withErrors(['Duplicate file found!']); }

        // Save the file to the 'private' folder so not everyone can access it directly via URL.
        // It returns the path, e.g., "uploads/xyz123.pdf"
        $path = $file->store('uploads', 'local');

        // C. DATABASE ENTRY
        DigitalFile::create([
            'user_id' => Auth::id(), // The currently logged-in user
            'title' => $request->title,
            'description' => $request->description,
            'slug' => Str::slug($request->title) . '-' . Str::random(6), // e.g., "my-notes-a1b2c3"

            // File Metadata
            'file_path' => $path,
            'file_type' => $file->getClientMimeType(),
            'file_size' => $file->getSize(),
            'content_hash' => $hash,

            //Look UP table data
            'institution_id' => $request->institution_id,
            'subject_id' => $request->subject_id,
            'academic_field_id' => $request->academic_field_id,

            // Defaults (We can make these dynamic later)
            'status' => 'active',
            'visibility' => 'public',
        ]);

        return redirect()->route('dashboard')->with('success', 'File uploaded successfully!');
    }
}