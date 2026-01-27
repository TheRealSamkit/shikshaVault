<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\DigitalFile;
use App\Models\AccessedFile;
use App\Models\TokenTransaction;
use App\Models\Feedback;
use App\Models\Report;
use App\Services\FileService;
use App\Services\ReviewService;
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

    public function processAction($type, FileService $fileService)
    {
        if (!Auth::check())
            return redirect()->route('login');

        $result = $fileService->processAccess(Auth::user(), $this->file, $type);

        if (!$result['success']) {
            $this->dispatch('toast', type: 'error', message: $result['message']);
            return;
        }

        if (strpos($result['message'], 'Access Granted') !== false) {
            $this->dispatch('toast', type: 'success', message: $result['message']);
        }

        if ($type === 'download') {
            return redirect()->route('file.download', ['slug' => $this->slug]);
        }

        $extension = strtolower($this->file->file_type);

        if ($extension === 'pdf') {
            return redirect()->route('file.view-pdf', ['slug' => $this->slug]);
        }
        if (in_array($extension, ['jpg', 'jpeg', 'png', 'gif', 'webp'])) {
            $previewUrl = route('file.preview', ['slug' => $this->slug]);
            $this->dispatch('open-image-modal', url: $previewUrl, title: $this->file->title);
            return;
        }

        $this->dispatch('toast', type: 'info', message: 'Preview not available for this file type. Please download.');
    }

    public function setRating($val)
    {
        $this->rating = $val;
    }

    public function submitFeedback(ReviewService $reviewService)
    {
        if (!Auth::check())
            return redirect()->route('login');
        if ($this->userHasRated)
            return;

        $this->validate([
            'rating' => 'required|integer|min:1|max:5',
            'comment' => 'nullable|string|max:500'
        ]);

        $reviewService->submitFeedback(Auth::user(), $this->file, [
            'rating' => $this->rating,
            'comment' => $this->comment,
        ]);

        $this->userHasRated = true;
        $this->dispatch('toast', type: 'success', message: 'Review submitted successfully!');
        $this->reset(['comment']);
    }

    public function submitReport(ReviewService $reviewService)
    {
        if (!Auth::check())
            return redirect()->route('login');
        if ($this->userHasReported)
            return;

        $this->validate([
            'reportReason' => 'required|string',
            'reportDetails' => 'nullable|string|max:1000'
        ]);

        $reviewService->submitReport(Auth::user(), $this->file, [
            'reason' => $this->reportReason,
            'details' => $this->reportDetails,
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