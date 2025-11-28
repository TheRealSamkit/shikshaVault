<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\WithPagination; // Easy pagination without reload
use App\Models\DigitalFile;

class FileSearch extends Component
{
    use WithPagination;

    // This variable is automatically bound to the input box!
    public $search = '';

    // This variable tracks the dropdown selection
    public $institution_id = '';

    public $subject_id = '';

    // When the user types, reset to page 1 (so they don't get lost)
    public function updatedSearch()
    {
        $this->resetPage();
    }

    public function removeFile($slug)
    {
        $url = route('file.download', ['slug' => $slug]);
        return $this->redirect($url, navigate: true);
    }

    public function render()
    {
        $query = DigitalFile::with('user');

        // Apply filters if variables are not empty
        if ($this->search) {
            $query->where('title', 'like', '%' . $this->search . '%');
        }

        if ($this->institution_id) {
            $query->where('institution_id', $this->institution_id);
        }

        if ($this->subject_id) {
            $query->where('subject_id', $this->subject_id);
        }

        return view('livewire.file-search', [
            'files' => $query->latest()->paginate(10),
            'institutions' => \App\Models\Institution::pluck('name', 'id'),
            'subjects' => \App\Models\Subject::pluck('name', 'id'),
        ]);
    }
}