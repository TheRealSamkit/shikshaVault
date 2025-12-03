<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\DigitalFile;
use App\Models\AcademicFields;
use App\Models\ResourceTypes;
use App\Models\Subject;
use Livewire\Attributes\On;
use App\Models\AccessedFile;
use App\Models\TokenTransaction;
use App\Models\Feedback;
use App\Models\Report;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;

class FileFeed extends Component
{
    use WithPagination;

    // Filters
    public $search = '';
    public $selectedField = [];
    public $selectedType = [];
    public $selectedFileType = []; // New
    public $selectedSubject = [];  // New
    public $sort = 'latest';

    protected $queryString = [
        'search' => ['except' => ''],
        'selectedField' => ['except' => []],
        'selectedType' => ['except' => []],
        'selectedFileType' => ['except' => []],
        'selectedSubject' => ['except' => []],
    ];

    public function updatingSearch()
    {
        $this->resetPage();
    }

    // Helper for File Size (Keep this in your component)
    public function formatSize($bytes)
    {
        if ($bytes >= 1073741824)
            return number_format($bytes / 1073741824, 2) . ' GB';
        if ($bytes >= 1048576)
            return number_format($bytes / 1048576, 2) . ' MB';
        if ($bytes >= 1024)
            return number_format($bytes / 1024, 2) . ' KB';
        return $bytes . ' bytes';
    }

    public function processAction($type, $slug)
    {
        if (!Auth::check())
            return redirect()->route('login');

        $user = Auth::user();

        $hasAccess = false;
        $file = DigitalFile::where('slug', $slug)->firstOrFail();
        if (!$file) {
            $this->dispatch('toast', type: 'error', message: 'File not found.');
            return;
        }
        if ($user->id === $file->user_id) {
            $hasAccess = true;
        } else {
            $accessRecord = AccessedFile::where('user_id', $user->id)->where('file_id', $file->id)->first();
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
                    'description' => ($isRenewal ? 'Renewed download: ' : 'Unlocked: ') . $file->title,
                    'reference_type' => DigitalFile::class,
                    'reference_id' => $file->id,
                ]);

                if ($accessRecord) {
                    $accessRecord->update(['first_accessed_at' => now()]);
                } else {
                    AccessedFile::create(['user_id' => $user->id, 'file_id' => $file->id, 'first_accessed_at' => now()]);
                }

                $this->dispatch('toast', type: 'success', message: 'Access Granted (-' . $cost . ' tokens)');
            }
            $hasAccess = true;
        }

        if (!$hasAccess)
            return;
        if ($type === 'download') {
            return redirect()->route('file.download', ['slug' => $slug]);
        }

        $extension = strtolower($file->file_type);

        if ($extension === 'pdf') {
            return redirect()->route('file.view-pdf', ['slug' => $slug]);
        }
        if (in_array($extension, ['jpg', 'jpeg', 'png', 'gif', 'webp'])) {
            $previewUrl = route('file.preview', ['slug' => $slug]);
            $this->dispatch('open-image-modal', url: $previewUrl, title: $file->title);
            return;
        }

        $this->dispatch('toast', type: 'info', message: 'Preview not available for this file type. Please download.');
    }

    public function toggleBookmark($fileId)
    {
        // Auth::user()->bookmarks()->toggle($fileId);
        $this->dispatch('swal:toast', ['icon' => 'success', 'title' => 'Bookmark updated!']);
    }

    public function getFileIcon($extension)
    {
        return match (strtolower($extension)) {
            'pdf' => 'ti-file-type-pdf text-danger',
            'doc', 'docx' => 'ti-file-type-doc text-primary',
            'ppt', 'pptx' => 'ti-file-type-ppt text-warning',
            'xls', 'xlsx' => 'ti-file-type-xls text-success',
            'jpg', 'jpeg', 'png' => 'ti-photo text-info',
            default => 'ti-file-text',
        };
    }

    #[On('searchUpdated')]
    public function updateSearch($query)
    {
        $this->search = $query;
        $this->resetPage();
    }

    public function render()
    {
        $query = DigitalFile::query()
            // Added 'academicLevel' to the with() array
            ->with(['user', 'academicField', 'resourceType', 'subject', 'institution', 'academicLevel'])
            ->where('status', 'active')
            ->where('visibility', 'public');

        // 1. Search Logic
        if ($this->search) {
            $query->where(function ($q) {
                $q->where('title', 'like', '%' . $this->search . '%')
                    ->orWhere('description', 'like', '%' . $this->search . '%')
                    ->orWhereHas('user', fn($u) => $u->where('username', 'like', '%' . $this->search . '%'))
                    ->orWhereHas('subject', fn($s) => $s->where('name', 'like', '%' . $this->search . '%'));
            });
        }

        // 2. Filters
        if (!empty($this->selectedField)) {
            $query->whereIn('academic_field_id', $this->selectedField);
        }
        if (!empty($this->selectedType)) {
            $query->whereIn('resource_type_id', $this->selectedType);
        }
        if (!empty($this->selectedFileType)) {
            $query->whereIn('file_type', $this->selectedFileType);
        }
        if (!empty($this->selectedSubject)) {
            $query->whereIn('subject_id', $this->selectedSubject);
        }

        // 3. Sorting
        if ($this->sort === 'downloads') {
            $query->orderByDesc('download_count');
        } elseif ($this->sort === 'rating') {
            $query->orderByDesc('average_rating');
        } else {
            $query->latest('upload_date');
        }

        // Fetch filter options (Cache these in production)
        return view('livewire.file-feed', [
            'files' => $query->paginate(12),
            'academicFields' => AcademicFields::orderBy('name')->get(),
            'resourceTypes' => ResourceTypes::orderBy('name')->get(),
            'subjects' => Subject::orderBy('name')->limit(50)->get(),
            'fileTypes' => DigitalFile::select('file_type')->distinct()->pluck('file_type'),
        ]);
    }
}