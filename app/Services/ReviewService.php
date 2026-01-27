<?php

namespace App\Services;

use App\Models\Feedback;
use App\Models\Report;
use App\Models\DigitalFile;
use App\Models\User;
use Illuminate\Support\Facades\DB;

class ReviewService
{
    /**
     * Submit feedback for a file.
     */
    public function submitFeedback(User $user, DigitalFile $file, array $data)
    {
        return DB::transaction(function () use ($user, $file, $data) {
            $feedback = Feedback::create([
                'user_id' => $user->id,
                'file_id' => $file->id,
                'rating' => $data['rating'],
                'comment' => $data['comment'] ?? null,
                'is_approved' => 1 // Default to approved for now, adjust as needed
            ]);

            $newAverage = Feedback::where('file_id', $file->id)
                ->where('is_approved', 1)
                ->avg('rating');

            $file->update(['average_rating' => $newAverage]);

            return $feedback;
        });
    }

    /**
     * Submit a report for a file.
     */
    public function submitReport(User $user, DigitalFile $file, array $data)
    {
        return Report::create([
            'reporter_id' => $user->id,
            'reportable_type' => DigitalFile::class,
            'reportable_id' => $file->id,
            'reason' => $data['reason'],
            'details' => $data['details'] ?? null,
            'status' => 'pending'
        ]);
    }
}
