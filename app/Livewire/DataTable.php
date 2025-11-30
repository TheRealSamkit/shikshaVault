<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Builder;
use Livewire\Attributes\On;

class DataTable extends Component
{
    use WithPagination;

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

    /**
     * Handle delete event for THIS specific table only.
     * Use dynamic event listener based on title.
     */
    public function getListeners()
    {
        $kebabTitle = Str::kebab($this->title);
        return [
            "destroy-{$kebabTitle}" => 'destroy',
        ];
    }

    public function destroy($id)
    {
        $map = [
            'Subjects' => \App\Models\Subject::class,
            'Academic Fields' => \App\Models\AcademicFields::class,
            'Program Streams' => \App\Models\ProgramStreams::class,
            'Program Stream Levels' => \App\Models\ProgramStreamLevels::class,
            'Curriculum Subjects' => \App\Models\ProgramStreamLevelSubject::class,
            'Academic Levels' => \App\Models\AcademicLevels::class,
        ];

        $realClass = $map[$this->title] ?? null;

        if (!$realClass) {
            return;
        }

        $record = $realClass::find($id);
        if ($record) {
            $record->delete();
        }

        // Only this specific table will refresh
        $this->resetPage();
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