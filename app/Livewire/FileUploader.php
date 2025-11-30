<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\WithFileUploads;
use App\Helpers\LookupHelper;

class FileUploader extends Component
{
    use WithFileUploads;

    // Form Inputs
    public $title;
    public $description;
    public $file;
    public $tags = [];

    // Dropdown States
    public $academic_field_id = '';
    public $program_stream_id = '';
    public $program_stream_level_id = '';
    public $program_stream_level_subject_id = '';
    public $resource_type_id = '';

    // Institution Search States
    public $institution_id = '';
    public $institution_query = '';
    public $institution_results = [];
    // We will control visibility mostly via Alpine now for focus/blur events, 
    // but we keep this to track if we have results.
    public $has_results = false;

    // Data Collections
    public $academic_fields = [];
    public $program_streams = [];
    public $stream_levels = [];
    public $subjects = [];
    public $resource_types = [];

    protected $rules = [
        'title' => 'required|string|min:5|max:255',
        'description' => 'required|string|min:10',
        'academic_field_id' => 'required',
        'program_stream_id' => 'required',
        'program_stream_level_id' => 'required',
        'program_stream_level_subject_id' => 'required',
        'resource_type_id' => 'required',
        'institution_id' => 'required',
        // CHANGED: Removed zip, rar. Added specific image/doc types.
        'file' => 'required|file|max:10240|mimes:jpeg,png,jpg,pdf,doc,docx,ppt,pptx,xlsx,xls',
    ];

    public function mount()
    {
        $this->academic_fields = LookupHelper::getAcademicFields();
        $this->resource_types = LookupHelper::getResourceTypes();
    }

    // --- Institution Search Logic ---

    public function updatedInstitutionQuery()
    {
        $this->institution_id = '';

        if (strlen($this->institution_query) >= 1) {
            $results = LookupHelper::searchInstitutions($this->institution_query);
            $this->institution_results = $results->toArray();
            $this->has_results = $results->isNotEmpty();
        } else {
            $this->institution_results = [];
            $this->has_results = false;
        }
    }

    public function selectInstitution($id, $name)
    {
        $this->institution_id = $id;
        $this->institution_query = $name;
        $this->institution_results = []; // Clear results to hide dropdown
        $this->has_results = false;
    }

    // --- Cascading Logic (Same as before) ---
    public function updatedAcademicFieldId($value)
    {
        $this->reset(['program_stream_id', 'program_stream_level_id', 'program_stream_level_subject_id']);
        $this->program_streams = [];
        $this->stream_levels = [];
        $this->subjects = [];
        if ($value)
            $this->program_streams = LookupHelper::getProgramStreams($value);
    }

    public function updatedProgramStreamId($value)
    {
        $this->reset(['program_stream_level_id', 'program_stream_level_subject_id']);
        $this->stream_levels = [];
        $this->subjects = [];
        if ($value)
            $this->stream_levels = LookupHelper::getStreamLevels($value);
    }

    public function updatedProgramStreamLevelId($value)
    {
        $this->reset(['program_stream_level_subject_id']);
        $this->subjects = [];
        if ($value)
            $this->subjects = LookupHelper::getSubjects($value);
    }

    public function save()
    {
        $this->validate();
        session()->flash('success', 'File validated and ready for upload.');
    }

    public function render()
    {
        return view('livewire.file-uploader');
    }
}