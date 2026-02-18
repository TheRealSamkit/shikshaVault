<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\DigitalFile;
use App\Models\TokenTransaction;

class ProfileController extends Controller
{
    public function show($id = null)
    {
        // If no ID is provided, show current user's profile
        if (!$id) {
            $user = Auth::user();
        } else {
            $user = \App\Models\User::findOrFail($id);
        }
        
        $isOwner = Auth::check() && Auth::id() === $user->id;

        // 1. Get Uploads (Public)
        $myFiles = DigitalFile::where('user_id', $user->id)
            ->latest()
            ->paginate(12);

        // 2. Private Data (Owner Only)
        $transactions = collect();
        $bookmarks = collect();

        if ($isOwner) {
            $transactions = TokenTransaction::where('user_id', $user->id)
                ->latest()
                ->limit(20)
                ->get();
            
            $bookmarks = $user->bookmarkedFiles()->with('user')->latest()->get();
        }

        return view('profile.show', compact('user', 'myFiles', 'transactions', 'bookmarks', 'isOwner'));
    }
}