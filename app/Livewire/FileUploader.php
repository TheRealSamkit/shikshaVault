<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\WithFileUploads;
use App\Helpers\LookupHelper;
use App\Models\DigitalFile;
use App\Models\TokenTransaction;
use App\Services\FileService;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;

class FileUploader extends Component
{
    use WithFileUploads;

    public $title, $description, $file, $tags = [];
    public $academic_field_id = '', $program_stream_id = '', $program_stream_level_id = '', $subject_id = '', $resource_type_id = '', $institution_id = '';
    public $institution_query = '', $institution_results = [];
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

    public function getFileIconProperty()
    {
        if (!$this->file)
            return 'ti-file';
        $ext = strtolower($this->file->getClientOriginalExtension());

        return match ($ext) {
            'pdf' => 'ti-file-type-pdf text-danger',
            'doc', 'docx' => 'ti-file-type-doc text-primary',
            'ppt', 'pptx' => 'ti-file-type-ppt text-warning',
            'xls', 'xlsx' => 'ti-file-type-xls text-success',
            'jpg', 'jpeg', 'png' => 'ti-photo text-info',
            default => 'ti-file-text',
        };
    }

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
        $this->program_streams = $value ? LookupHelper::getProgramStreams($value) : [];
    }

    public function updatedProgramStreamId($value)
    {
        $this->reset(['program_stream_level_id', 'subject_id']);
        $this->stream_levels = $value ? LookupHelper::getStreamLevels($value) : [];
        $this->subjects = $value ? LookupHelper::getSubjects($value) : [];
    }

    public function removeFile()
    {
        $this->reset('file');
    }


    public function save(FileService $fileService)
    {
        $this->validate();

        try {
            $fileService->upload(Auth::user(), [
                'title' => $this->title,
                'description' => $this->description,
                'academic_field_id' => $this->academic_field_id,
                'program_stream_id' => $this->program_stream_id,
                'program_stream_level_id' => $this->program_stream_level_id,
                'subject_id' => $this->subject_id,
                'resource_type_id' => $this->resource_type_id,
                'institution_id' => $this->institution_id,
            ], $this->file);

            $this->reset();
            $this->mount();
            $this->dispatch('upload-success', message: 'File uploaded successfully! 5 Tokens earned.');

        } catch (\Exception $e) {
            $this->addError('file', 'Upload failed: ' . $e->getMessage());
        }
    }

    public function render()
    {
        return view('livewire.file-uploader');
    }
}