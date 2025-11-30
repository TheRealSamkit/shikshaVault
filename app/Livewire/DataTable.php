<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Builder;
use Livewire\Attributes\On;

use function Laravel\Prompts\info;

class DataTable extends Component
{
    use WithPagination;
    public $count = 0;
    public $name;
    public $model;
    public $title = 'Data';
    public $columns = [];
    public $with = [];
    public $search = '';
    public $inputSize = 'sm';
    public $test = '';
    public $sortField = 'id';
    public $sortDirection = 'asc';
    public $perPage = 10;
    public $loopFlag = false;

    // When search is updated, reset pagination
    public function updatedSearch()
    {
        $this->resetPage();
    }
    //Form fields for create/edit can be added here
    public $showModal = false;
    public $editMode = false;
    public $itemId = null;
    public $formData = [];
    /* this function mehtod is used to listen the events dynamically
    based on the title of the datatable */
    public function getListeners()
    {
        $kebabTitle = Str::kebab($this->title);
        return [
            "destroy-{$kebabTitle}" => 'destroy',
            "create-{$kebabTitle}" => 'create',
            "edit-{$kebabTitle}" => 'edit',
        ];
    }

    public function create()
    {
        $this->resetForm();
        $this->editMode = false;
        $this->showModal = true;
    }

    public function edit($id)
    {
        $this->resetForm();
        $this->editMode = true;
        $this->itemId = $id;

        $modelClass = $this->getModelClass();
        $item = $modelClass::find($id);

        if ($item) {
            // Populate form data based on columns
            foreach ($this->columns as $column) {
                $key = $column['key'];
                // Only get direct attributes, not relationships
                if (!Str::contains($key, '.') && isset($item->$key)) {
                    $this->formData[$key] = $item->$key;
                }
            }

            // Handle specific model relationships
            $this->populateRelationshipFields($item);
        }

        $this->showModal = true;
    }


    protected function populateRelationshipFields($item)
    {
        $titleMap = [
            'Program Streams' => ['academic_field_id'],
            'Program Stream Levels' => ['program_stream_id', 'academic_level_id'],
            'Curriculum Subjects' => ['subject_id', 'program_stream_level_id'],
        ];

        if (isset($titleMap[$this->title])) {
            foreach ($titleMap[$this->title] as $field) {
                if (isset($item->$field)) {
                    $this->formData[$field] = $item->$field;
                }
            }
        }
    }

    public function save()
    {
        $this->validate($this->getValidationRules());

        $modelClass = $this->getModelClass();

        if ($this->editMode && $this->itemId) {
            // Update existing
            $item = $modelClass::find($this->itemId);
            if ($item) {
                $item->update($this->formData);
            }
        } else {
            // Create new
            $modelClass::create($this->formData);
        }

        $this->showModal = false;
        $this->resetForm();
        $this->resetPage();

        session()->flash('message', $this->editMode ? 'Item updated successfully!' : 'Item created successfully!');
    }
    public function destroy($id)
    {
        $modelClass = $this->getModelClass();
        $record = $modelClass::find($id);

        if ($record) {
            $record->delete();
            session()->flash('message', 'Item deleted successfully!');
        }

        $this->resetPage();
    }

    public function closeModal()
    {
        $this->showModal = false;
        $this->resetForm();
    }

    protected function resetForm()
    {
        $this->formData = [];
        $this->itemId = null;
        $this->editMode = false;
        $this->resetValidation();
    }

    protected function getModelClass()
    {
        $map = [
            'Subjects' => \App\Models\Subject::class,
            'Academic Fields' => \App\Models\AcademicFields::class,
            'Program Streams' => \App\Models\ProgramStreams::class,
            'Program Stream Levels' => \App\Models\ProgramStreamLevels::class,
            'Curriculum Subjects' => \App\Models\ProgramStreamLevelSubject::class,
            'Academic Levels' => \App\Models\AcademicLevels::class,
            'Resource Types' => \App\Models\ResourceTypes::class,
        ];

        return $map[$this->title] ?? $this->model;
    }

    protected function getValidationRules()
    {
        $rules = [
            'Subjects' => [
                'formData.name' => 'required|string|max:255',
                'formData.code' => 'required|string|max:50|unique:subjects,code,' . $this->itemId,
            ],
            'Academic Fields' => [
                'formData.name' => 'required|string|max:255',
                'formData.slug' => 'required|string|max:255|unique:academic_fields,slug,' . $this->itemId,
            ],
            'Resource Types' => [
                'formData.name' => 'required|string|max:255',
                'formData.slug' => 'required|string|max:255|unique:resource_types,slug,' . $this->itemId,
            ],
            'Program Streams' => [
                'formData.name' => 'required|string|max:255',
                'formData.slug' => 'required|string|max:255|unique:program_streams,slug,' . $this->itemId,
                'formData.academic_field_id' => 'required|exists:academic_fields,id',
            ],
            'Program Stream Levels' => [
                'formData.program_stream_id' => 'required|exists:program_streams,id',
                'formData.academic_level_id' => 'required|exists:academic_levels,id',
            ],
            'Curriculum Subjects' => [
                'formData.subject_id' => 'required|exists:subjects,id',
                'formData.program_stream_level_id' => 'required|exists:program_stream_levels,id',
            ],
            'Academic Levels' => [
                'formData.name' => 'required|string|max:255',
            ],
        ];

        return $rules[$this->title] ?? [];
    }

    public function getDropdownOptions($field)
    {
        $optionsMap = [
            'academic_field_id' => \App\Models\AcademicFields::pluck('name', 'id'),
            'program_stream_id' => \App\Models\ProgramStreams::pluck('name', 'id'),
            'academic_level_id' => \App\Models\AcademicLevels::pluck('name', 'id'),
            'subject_id' => \App\Models\Subject::pluck('name', 'id'),
            'program_stream_level_id' => \App\Models\ProgramStreamLevels::with(['programStreams', 'academicLevels'])
                ->get()
                ->mapWithKeys(function ($item) {
                    return [
                        $item->id => $item->programStreams->name . ' - ' . $item->academicLevels->name
                    ];
                }),
        ];

        return $optionsMap[$field] ?? collect();
    }

    public function render()
    {
        $query = $this->model::query();

        // Eager load relationships
        if (!empty($this->with)) {
            $query->with($this->with);
        }

        // Search logic including relationship columns
        if ($this->search) {
            $search = $this->search;

            $query->where(function ($q) use ($search) {
                foreach ($this->columns as $column) {
                    $key = $column['key'];

                    // Handle relationship column: relation.field
                    if (Str::contains($key, '.')) {
                        $parts = explode('.', $key);
                        $relation = array_shift($parts);
                        $field = implode('.', $parts);
                        info($relation . ' - ' . $field . '   - ' . $search);
                        $q->orWhereHas($relation, function ($sub) use ($field, $search) {
                            $sub->where($field, 'like', "%{$search}%");
                        });
                    } else {
                        $q->orWhere($key, 'like', "%{$search}%");
                    }
                }
            });
        }

        $query->orderBy($this->sortField, $this->sortDirection);

        return view('livewire.data-table', [
            'items' => $query->paginate($this->perPage),
        ]);
    }
}