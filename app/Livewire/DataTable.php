<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use Illuminate\Database\Eloquent\Builder;
use Livewire\Attributes\On;

use function Laravel\Prompts\info;

class DataTable extends Component
{
    use WithPagination;

    // Configuration passed from parent
    public $model;          // e.g., 'App\Models\Subject'
    public $columns = [];   // e.g., [['key' => 'name', 'label' => 'Name']]
    public $title = 'Data';

    public $test;

    // State
    public $search = '';
    public $perPage = 10;
    public $sortField = 'id';
    public $sortDirection = 'desc';

    protected $listeners = [
        'destroy-item' => 'destroy'
    ];

    // Reset pagination when searching
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
        // 1. Initialize Query
        $query = $this->model::query();

        // 2. Handle Search
        if ($this->search) {
            $query->where(function (Builder $q) {
                foreach ($this->columns as $column) {
                    // Only search fields that exist in the DB (you might need a 'searchable' flag in robust apps)
                    $q->orWhere($column['key'], 'like', '%' . $this->search . '%');
                }
            });
        }

        // 3. Handle Sorting
        $query->orderBy($this->sortField, $this->sortDirection);

        // 4. Fetch Data
        $items = $query->paginate($this->perPage);

        return view('livewire.data-table', [
            'items' => $items
        ]);
    }
}