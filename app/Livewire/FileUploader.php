<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\WithFileUploads;
use App\Helpers\LookupHelper;

class FileUploader extends Component
{
    use WithFileUploads;

    // Inputs
    public $title, $description, $file;

    // IDs
    public $academic_field_id = '';
    public $program_stream_id = '';
    public $program_stream_level_id = '';
    public $subject_id = ''; // Renamed from program_stream_level_subject_id
    public $resource_type_id = '';

    // Search
    public $institution_id = '';
    public $institution_query = '';
    public $institution_results = [];

    // Lists
    public $academic_fields = [], $program_streams = [], $stream_levels = [], $subjects = [], $resource_types = [];

    protected $rules = [
        'title' => 'required|string|min:5|max:255',
        'description' => 'required|string|min:10',
        'academic_field_id' => 'required',
        'program_stream_id' => 'required',
        'program_stream_level_id' => 'required',
        'subject_id' => 'required',
        'resource_type_id' => 'required',
        'institution_id' => 'required',
        'file' => 'required|file|max:10240|mimes:jpeg,png,jpg,pdf,doc,docx,ppt,pptx,xlsx,xls',
    ];

    public function mount()
    {
        $this->academic_fields = LookupHelper::getAcademicFields();
        $this->resource_types = LookupHelper::getResourceTypes();
    }

    // --- Search Logic ---
    public function loadInitialInstitutions()
    {
        if (empty($this->institution_query)) {
            $this->institution_results = \App\Models\Institution::orderBy('name')->limit(10)->get()->toArray();
        } else {
            $this->updatedInstitutionQuery();
        }
    }

    public function updatedInstitutionQuery()
    {
        $this->institution_id = '';
        if (strlen($this->institution_query) >= 1) {
            $this->institution_results = LookupHelper::searchInstitutions($this->institution_query)->toArray();
        } else {
            $this->institution_results = [];
        }
    }

    public function selectInstitution($id, $name)
    {
        $this->institution_id = $id;
        $this->institution_query = $name;
        $this->institution_results = [];
    }

    // --- Cascading Logic ---

    public function updatedAcademicFieldId($value)
    {
        $this->reset(['program_stream_id', 'program_stream_level_id', 'subject_id']);
        $this->program_streams = [];
        $this->stream_levels = [];
        $this->subjects = [];
        if ($value)
            $this->program_streams = LookupHelper::getProgramStreams($value);
    }

    public function updatedProgramStreamId($value)
    {
        $this->reset(['program_stream_level_id', 'subject_id']);
        $this->stream_levels = [];
        $this->subjects = [];

        if ($value) {
            // 1. Load Levels (Semesters)
            $this->stream_levels = LookupHelper::getStreamLevels($value);

            // 2. COMPLETE FIX: Load Subjects immediately based on Stream
            // We no longer wait for the Semester to be picked.
            $this->subjects = LookupHelper::getSubjects($value);
        }
    }

    public function save()
    {
        $this->validate();
        session()->flash('success', 'File validated successfully.');
        // In actual save: 'subject_id' => $this->subject_id
    }

    public function render()
    {
        return view('livewire.file-uploader');
    }
}