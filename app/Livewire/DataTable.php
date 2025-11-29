<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use Illuminate\Database\Eloquent\Builder;
use Livewire\Attributes\On;
use Illuminate\Support\Str; // Import Str for checking dot notation

use function Laravel\Prompts\info;

class DataTable extends Component
{
    use WithPagination;

    public $model;
    public $columns = [];
    public $title = 'Data';

    // 1. ADD THIS: Property to accept relationships
    public $with = [];
    public $inputSize = 'sm';
    public $test;
    public $search = '';
    public $perPage = 10;
    public $sortField = 'id';
    public $sortDirection = 'desc';

    protected $listeners = ['destroy-item' => 'destroy'];

    public function updatedSearch()
    {
        $this->resetPage();
    }

    public function destroy($id, $model)
    {
        // Map the aliases to the real classes
        info("Destroy called with id: $id and model: $model");
        if ($this->title !== $model) {
            return;
        }
        info("Destroy executed for table: {$this->title}");

        $map = [
            'Subjects' => \App\Models\Subject::class,
            'Academic Fields' => \App\Models\AcademicFields::class,
        ];

        // Check if key exists
        if (!array_key_exists($model, $map)) {
            abort(403);
        }

        // Get the real class from the map
        $realClass = $map[$model];

        $realClass::find($id)->delete();
    }

    public function render()
    {
        $query = $this->model::query();

        // 2. ADD THIS: Eager load relationships to optimize performance
        if (!empty($this->with)) {
            $query->with($this->with);
        }

        // 3. UPDATE THIS: Search Logic for Relationships
        if ($this->search) {
            $query->where(function (Builder $q) {
                foreach ($this->columns as $column) {
                    $key = $column['key'];

                    // Check if the key contains a dot (e.g., 'department.name')
                    if (Str::contains($key, '.')) {
                        // Split relation and field (e.g., relation='department', field='name')
                        $parts = explode('.', $key);
                        $relation = array_shift($parts); // Get the first part
                        $field = implode('.', $parts);   // Rejoin the rest in case of deep nesting

                        // Use orWhereHas to search inside the related table
                        $q->orWhereHas($relation, function ($subQuery) use ($field) {
                            $subQuery->where($field, 'like', '%' . $this->search . '%');
                        });
                    } else {
                        // Standard search for direct columns
                        $q->orWhere($key, 'like', '%' . $this->search . '%');
                    }
                }
            });
        }

        $query->orderBy($this->sortField, $this->sortDirection);

        $items = $query->paginate($this->perPage);

        return view('livewire.data-table', [
            'items' => $items
        ]);
    }
}