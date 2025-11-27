<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\DigitalFile;
use App\Models\TokenTransaction;

class ProfileController extends Controller
{
    public function show()
    {
        $user = Auth::user();

        // 1. Get My Uploads
        $myFiles = DigitalFile::where('user_id', $user->id)
            ->latest()
            ->get();

        // 2. Get My Token History (Earnings & Spendings)
        $transactions = TokenTransaction::where('user_id', $user->id)
            ->latest()
            ->limit(20) // Just show last 20 for prototype
            ->get();

        return view('profile.show', compact('user', 'myFiles', 'transactions'));
    }
}