<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\Attributes\On;
use Livewire\Attributes\Title;

// 1. Extend 'Component', NOT 'Controller'
#[Title('Curriculum Manager')]
class Curriculum extends Component
{
    public $deleteId = null;
    public $deleteModel = null;

    // 2. Listen for the event dispatched by the child DataTable
    #[On('confirm-delete')]
    public function setDeleteData($id, $model)
    {
        $this->deleteId = $id;
        $this->deleteModel = $model;

        // 3. Dispatch event to browser to open the modal
        $this->dispatch('open-delete-modal');
    }

    // 4. The actual delete logic

    public function render()
    {
        // 5. Point this to your existing blade view
        // Ensure your view is at resources/views/curriculum.blade.php
        return view('admin.curriculum');
    }
}