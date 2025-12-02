<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\DigitalFile;
use App\Models\AccessedFile;
use App\Models\TokenTransaction;
use App\Models\Feedback;
use App\Models\Report;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;

class PublicFileView extends Component
{
    use WithPagination;

    public $slug;
    public $file;
    public $reportCount = 0;

    // User Interaction States
    public $userHasRated = false;
    public $userHasReported = false;

    // Feedback Inputs
    public $rating = 0;
    public $comment = '';

    // Reporting Inputs
    public $reportReason = '';
    public $reportDetails = '';

    public function mount($slug)
    {
        $this->slug = $slug;
        $this->file = DigitalFile::with(['user', 'subject', 'academicLevel', 'academicField', 'institution', 'resourceType'])
            ->where('slug', $slug)
            ->firstOrFail();

        $this->reportCount = Report::where('reportable_id', $this->file->id)
            ->where('reportable_type', DigitalFile::class)
            ->count();

        if (Auth::check()) {
            $this->userHasRated = Feedback::where('user_id', Auth::id())
                ->where('file_id', $this->file->id)
                ->exists();

            $this->userHasReported = Report::where('reporter_id', Auth::id())
                ->where('reportable_id', $this->file->id)
                ->where('reportable_type', DigitalFile::class)
                ->exists();
        }
    }

    public function processAction($type)
    {
        if (!Auth::check())
            return redirect()->route('login');

        $user = Auth::user();

        // Owner Bypass
        if ($user->id === $this->file->user_id) {
            return redirect()->route($type === 'download' ? 'file.download' : 'file.preview', ['slug' => $this->slug]);
        }

        $accessRecord = AccessedFile::where('user_id', $user->id)->where('file_id', $this->file->id)->first();
        $cost = 0;
        $isRenewal = false;

        if (!$accessRecord) {
            $cost = 5; // Initial cost
        } elseif ($type === 'download') {
            if (Carbon::now()->greaterThan($accessRecord->first_accessed_at->addDays(7))) {
                $cost = 3; // Renewal cost
                $isRenewal = true;
            }
        }

        if ($cost > 0) {
            if ($user->tokens < $cost) {
                $this->dispatch('toast', type: 'error', message: 'Insufficient tokens. Cost: ' . $cost);
                return;
            }

            $user->decrement('tokens', $cost);

            TokenTransaction::create([
                'user_id' => $user->id,
                'amount' => -$cost,
                'balance_after' => $user->tokens,
                'type' => 'debit',
                'description' => ($isRenewal ? 'Renewed download: ' : 'Unlocked: ') . $this->file->title,
                'reference_type' => DigitalFile::class,
                'reference_id' => $this->file->id,
            ]);

            if ($accessRecord) {
                $accessRecord->update(['first_accessed_at' => now()]);
            } else {
                AccessedFile::create(['user_id' => $user->id, 'file_id' => $this->file->id, 'first_accessed_at' => now()]);
            }

            $this->dispatch('toast', type: 'success', message: 'Access Granted (-' . $cost . ' tokens)');
        }

        return redirect()->route($type === 'download' ? 'file.download' : 'file.preview', ['slug' => $this->slug]);
    }

    public function setRating($val)
    {
        $this->rating = $val;
    }

    public function submitFeedback()
    {
        if (!Auth::check())
            return redirect()->route('login');
        if ($this->userHasRated)
            return;

        $this->validate([
            'rating' => 'required|integer|min:1|max:5',
            'comment' => 'nullable|string|max:500'
        ]);

        // Create Feedback
        Feedback::create([
            'user_id' => Auth::id(),
            'file_id' => $this->file->id,
            'rating' => $this->rating,
            'comment' => $this->comment,
            'is_approved' => 1 // Depending on your settings
        ]);

        // Update Average Rating on File
        $newAverage = Feedback::where('file_id', $this->file->id)
            ->where('is_approved', 1)
            ->avg('rating');

        $this->file->update(['average_rating' => $newAverage]);

        $this->userHasRated = true;
        $this->dispatch('toast', type: 'success', message: 'Review submitted successfully!');
        $this->reset(['comment']);
    }

    public function submitReport()
    {
        if (!Auth::check())
            return redirect()->route('login');
        if ($this->userHasReported)
            return;

        $this->validate([
            'reportReason' => 'required|string',
            'reportDetails' => 'nullable|string|max:1000'
        ]);

        Report::create([
            'reporter_id' => Auth::id(),
            'reportable_type' => DigitalFile::class,
            'reportable_id' => $this->file->id,
            'reason' => $this->reportReason,
            'details' => $this->reportDetails,
            'status' => 'pending'
        ]);

        $this->userHasReported = true;
        $this->reportCount++; // Optimistic update
        $this->dispatch('toast', type: 'success', message: 'Report submitted for review.');
        $this->reset(['reportReason', 'reportDetails']);
    }

    public function render()
    {
        $reviews = Feedback::with('user')
            ->where('file_id', $this->file->id)
            ->where('is_approved', 1)
            ->latest()
            ->paginate(5);

        return view('livewire.public-file-view', [
            'reviews' => $reviews
        ]);
    }
}