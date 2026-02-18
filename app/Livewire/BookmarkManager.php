<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\Attributes\On;
use App\Services\BookmarkService;
use App\Models\FileCollection;
use Illuminate\Support\Facades\Auth;

class BookmarkManager extends Component
{
    public bool $showModal = false;
    public int $activeFileId = 0;
    public string $activeTab = 'collections'; // 'collections' or 'new'

    // Create collection form
    public string $newCollectionName = '';
    public string $newCollectionDescription = '';
    public string $newCollectionVisibility = 'private';

    // Which collections this file belongs to
    public array $fileCollectionIds = [];

    protected $rules = [
        'newCollectionName' => 'required|string|min:2|max:100',
        'newCollectionDescription' => 'nullable|string|max:500',
        'newCollectionVisibility' => 'in:public,private',
    ];

    #[On('open-bookmark-manager')]
    public function open(int $fileId): void
    {
        $this->activeFileId = $fileId;
        $this->activeTab = 'collections';
        $this->resetNewCollectionForm();
        $this->loadFileCollections();
        $this->showModal = true;
    }

    public function close(): void
    {
        $this->showModal = false;
        $this->activeFileId = 0;
    }

    public function loadFileCollections(): void
    {
        if (!Auth::check() || $this->activeFileId === 0)
            return;

        $this->fileCollectionIds = app(BookmarkService::class)
            ->getFileCollectionIds(Auth::user(), $this->activeFileId);
    }

    public function toggleFileInCollection(int $collectionId, BookmarkService $service): void
    {
        if (!Auth::check())
            return;

        $user = Auth::user();

        if (in_array($collectionId, $this->fileCollectionIds)) {
            $service->removeFromCollection($user, $collectionId, $this->activeFileId);
            $this->dispatch('toast', type: 'info', message: 'Removed from collection.');
        } else {
            $service->addToCollection($user, $collectionId, $this->activeFileId);
            $this->dispatch('toast', type: 'success', message: 'Added to collection!');
        }

        $this->loadFileCollections();
    }

    public function createCollection(BookmarkService $service): void
    {
        $this->validate();

        if (!Auth::check())
            return;

        $collection = $service->createCollection(Auth::user(), [
            'name' => $this->newCollectionName,
            'description' => $this->newCollectionDescription,
            'visibility' => $this->newCollectionVisibility,
        ]);

        // Auto-add current file to the new collection
        if ($this->activeFileId > 0) {
            $service->addToCollection(Auth::user(), $collection->id, $this->activeFileId);
            $this->loadFileCollections();
        }

        $this->resetNewCollectionForm();
        $this->activeTab = 'collections';
        $this->dispatch('toast', type: 'success', message: 'Collection created!');
        $this->dispatch('collection-updated');
    }

    private function resetNewCollectionForm(): void
    {
        $this->newCollectionName = '';
        $this->newCollectionDescription = '';
        $this->newCollectionVisibility = 'private';
    }

    public function render()
    {
        $collections = [];
        if (Auth::check()) {
            $collections = app(BookmarkService::class)->getUserCollections(Auth::user());
        }

        return view('livewire.bookmark-manager', [
            'collections' => $collections,
        ]);
    }
}
