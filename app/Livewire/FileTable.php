<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\DigitalFile;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class FileTable extends Component
{
    use WithPagination;

    protected $listeners = [
        'destroy-file' => 'destroy',
        'edit-file' => 'edit',
    ];

    public $search = '';
    public $perPage = 10;

    // Edit Modal State
    public $showModal = false;
    public $fileId = null;
    public $editTitle = '';
    public $editDescription = '';

    // Reset pagination when searching
    public function updatedSearch()
    {
        $this->resetPage();
    }

    // 1. Toggle Visibility (Public/Private)
    public function toggleVisibility($id)
    {
        $file = DigitalFile::where('user_id', Auth::id())->find($id);

        if ($file) {
            $newStatus = $file->visibility === 'public' ? 'private' : 'public';
            $file->update(['visibility' => $newStatus]);

            $msg = $newStatus === 'public' ? 'File is now Public' : 'File is now Private';
            $this->dispatch('toast', type: 'success', message: $msg);
        }
    }

    // 2. Delete File
    public function destroy($id)
    {
        $file = DigitalFile::where('user_id', Auth::id())->find($id);

        if ($file) {
            // Optional: Delete physical file here if needed
            // Storage::delete($file->file_path); 

            $file->delete(); // Soft delete based on migration
            $this->dispatch('toast', type: 'success', message: 'File deleted successfully');
        }
    }

    // 3. Open Edit Modal
    public function edit($id)
    {
        $file = DigitalFile::where('user_id', Auth::id())->find($id);

        if ($file) {
            $this->fileId = $file->id;
            $this->editTitle = $file->title;
            $this->editDescription = $file->description;
            $this->showModal = true;
        }
    }

    // 4. Save Changes
    public function update()
    {
        $this->validate([
            'editTitle' => 'required|min:5|max:255',
            'editDescription' => 'required|min:10',
        ]);

        $file = DigitalFile::where('user_id', Auth::id())->find($this->fileId);

        if ($file) {
            $file->update([
                'title' => $this->editTitle,
                'description' => $this->editDescription,
            ]);

            $this->showModal = false;
            $this->dispatch('toast', type: 'success', message: 'File details updated successfully');
        }
    }

    public function closeModal()
    {
        $this->showModal = false;
        $this->reset(['fileId', 'editTitle', 'editDescription']);
    }

    // Helper for Icons
    public function getFileIcon($extension)
    {
        return match (strtolower($extension)) {
            'pdf' => 'ti-file-type-pdf text-danger',
            'doc', 'docx' => 'ti-file-type-doc text-primary',
            'ppt', 'pptx' => 'ti-file-type-ppt text-warning',
            'xls', 'xlsx' => 'ti-file-type-xls text-success',
            'jpg', 'jpeg', 'png' => 'ti-photo text-info',
            default => 'ti-file-text',
        };
    }

    public function render()
    {
        $query = DigitalFile::query()
            ->with(['subject', 'resourceTypes']) // Eager load relationships
            ->where('user_id', Auth::id());

        if ($this->search) {
            $query->where(function ($q) {
                $q->where('title', 'like', '%' . $this->search . '%')
                    ->orWhereHas('subject', function ($sub) {
                        $sub->where('name', 'like', '%' . $this->search . '%');
                    });
            });
        }

        $files = $query->orderBy('upload_date', 'desc')->paginate($this->perPage);
        $loopFlag = $files->isEmpty();

        return view('livewire.file-table', [
            'files' => $files,
            'loopFlag' => $loopFlag
        ]);
    }
}