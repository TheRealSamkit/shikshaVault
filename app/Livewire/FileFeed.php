<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\DigitalFile;
use App\Models\AcademicFields;
use App\Models\ResourceTypes;
use App\Models\Subject;
use Livewire\Attributes\On;

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

    public function toggleBookmark($fileId)
    {
        // Auth::user()->bookmarks()->toggle($fileId);
        $this->dispatch('swal:toast', ['icon' => 'success', 'title' => 'Bookmark updated!']);
    }

    #[On('searchUpdated')]
    public function updateSearch($query)
    {
        $this->search = $query;
        $this->resetPage(); // Reset pagination when searching
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