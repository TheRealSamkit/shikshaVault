<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\DigitalFile;
use App\Models\Reports;
use App\Models\TokenTransaction;
use Carbon\Carbon;

class AdminController extends Controller
{
    // 1. The Main Dashboard (Stats)
    public function index()
    {
        // Count everything to show a nice summary
        $latestUserCount = User::where('role', 'user')->where('created_at', '>', Carbon::now()->subDay())->count();
        $totalUsers = User::count();
        $totalFiles = DigitalFile::count();
        $reportCount = Reports::where('status', 'pending')->count();
        // Calculate total economy size (all tokens in existence)
        $totalTokens = User::sum('tokens');

        // Get the 5 most recent uploads (for quick review)
        $recentUploads = DigitalFile::with('user')->latest()->take(5)->get();

        return view('admin.dashboard', compact('totalUsers', 'totalFiles', 'totalTokens', 'recentUploads', 'latestUserCount', 'reportCount'));
    }

    // 2. Delete a File (Moderation)
    public function deleteFile($id)
    {
        $file = DigitalFile::findOrFail($id);

        // Optional: We could delete the physical file too using 
        // For now, we just delete the DB record.
        $file->Storage::delete();
        $file->delete();

        return back()->with('success', 'File removed by Admin.');
    }

    // 3. Toggle User Ban (User Management)
    public function toggleUserStatus($id)
    {
        $user = User::findOrFail($id);

        // If active -> block. If blocked -> active.
        $user->status = ($user->status === 'active') ? 'blocked' : 'active';
        $user->save();

        return back()->with('success', 'User status updated to ' . $user->status);
    }
}