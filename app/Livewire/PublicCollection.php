<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\FileCollection;
use App\Models\DigitalFile;
use Illuminate\Support\Facades\Auth;

class PublicCollection extends Component
{
    use WithPagination;

    public FileCollection $collection;
    public string $search = '';

    public function mount(int $id): void
    {
        $this->collection = FileCollection::with('user')
            ->where('id', $id)
            ->where('visibility', 'public')
            ->firstOrFail();
    }

    public function updatedSearch(): void
    {
        $this->resetPage();
    }

    public function getFileIcon(string $extension): string
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
        $files = DigitalFile::whereHas(
            'collectionItems',
            fn($q) => $q->where('file_collection_id', $this->collection->id)
        )
            ->when($this->search, fn($q) => $q->where(
                fn($q2) => $q2->where('title', 'like', "%{$this->search}%")
                    ->orWhere('description', 'like', "%{$this->search}%")
            ))
            ->with(['user', 'subject', 'resourceType', 'academicField', 'institution'])
            ->paginate(12);

        return view('livewire.public-collection', [
            'files' => $files,
        ]);
    }
}
