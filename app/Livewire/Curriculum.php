<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Subject;

class Curriculum extends Component
{
    use WithPagination;

    public $find_subject = '';

    // FIX 1: The function name must match "updated" + "PropertyName" (CamelCase)
    public function updatedFindSubject()
    {
        // FIX 2: Reset the specific page name ('subjects'), not the default 'page'
        $this->resetPage('subjects');
    }

    public function render()
    {
        // FIX 3: Start the query builder first
        $query = Subject::query();

        // FIX 4: Apply the search condition if it exists
        if ($this->find_subject) {
            $query->where('name', 'like', '%' . $this->find_subject . '%');
        }

        return view('livewire.curriculum', [
            'subjects' => $query->paginate(10, ['*'], 'subjects')
        ]);
    }
}