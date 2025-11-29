<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use Illuminate\Database\Eloquent\Builder;

class DataTable extends Component
{
    use WithPagination;

    // Configuration passed from parent
    public $model;          // e.g., 'App\Models\Subject'
    public $columns = [];   // e.g., [['key' => 'name', 'label' => 'Name']]
    public $title = 'Data';

    // State
    public $search = '';
    public $perPage = 10;
    public $sortField = 'id';
    public $sortDirection = 'desc';

    // Reset pagination when searching
    public function updatedSearch()
    {
        $this->resetPage();
    }

    // Generic Delete Action
    public function delete($id)
    {
        $record = $this->model::find($id);
        if ($record) {
            $record->delete();
            // Optional: Dispatch a success notification here
        }
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