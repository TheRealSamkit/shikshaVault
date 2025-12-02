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

    public $userHasRated = false;
    public $userHasReported = false;

    public $rating = 0;
    public $comment = '';
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

        // --- 1. Access Check & Payment Logic ---
        $hasAccess = false;

        if ($user->id === $this->file->user_id) {
            $hasAccess = true;
        } else {
            $accessRecord = AccessedFile::where('user_id', $user->id)->where('file_id', $this->file->id)->first();
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
            $hasAccess = true;
        }

        if (!$hasAccess)
            return;

        // --- 2. Action Routing Logic ---

        // Always allow download
        if ($type === 'download') {
            return redirect()->route('file.download', ['slug' => $this->slug]);
        }

        // Preview Logic
        $extension = strtolower($this->file->file_type);

        // Case A: PDF -> Redirect to specialized PDF Viewer Page
        if ($extension === 'pdf') {
            return redirect()->route('file.view-pdf', ['slug' => $this->slug]);
        }

        // Case B: Image -> Open Reusable Modal
        if (in_array($extension, ['jpg', 'jpeg', 'png', 'gif', 'webp'])) {
            $previewUrl = route('file.preview', ['slug' => $this->slug]);
            // Dispatch event to the reusable component
            $this->dispatch('open-image-modal', url: $previewUrl, title: $this->file->title);
            return;
        }

        // Case C: Office Docs / Others -> No preview
        $this->dispatch('toast', type: 'info', message: 'Preview not available for this file type. Please download.');
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

        Feedback::create([
            'user_id' => Auth::id(),
            'file_id' => $this->file->id,
            'rating' => $this->rating,
            'comment' => $this->comment,
            'is_approved' => 1
        ]);

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
        $this->reportCount++;
        $this->dispatch('toast', type: 'success', message: 'Report submitted for review.');
        $this->reset(['reportReason', 'reportDetails']);
    }

    // Helper property: Only allow preview button for PDF and Images
    public function getCanPreviewProperty()
    {
        $ext = strtolower($this->file->file_type);
        return in_array($ext, ['pdf', 'jpg', 'jpeg', 'png', 'gif', 'webp']);
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
        ])
            ->layout('layouts.app')
            ->section('content');
    }
}