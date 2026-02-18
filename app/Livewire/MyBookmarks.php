<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use Livewire\Attributes\On;
use App\Services\BookmarkService;
use Illuminate\Support\Facades\Auth;

class MyBookmarks extends Component
{
    use WithPagination;

    public string $view = 'general'; // 'general', 'all', or 'collection:{id}'
    public int $activeCollectionId = 0;
    public string $activeCollectionName = '';
    public string $search = '';

    // Edit collection
    public bool $showEditModal = false;
    public int $editCollectionId = 0;
    public string $editName = '';
    public string $editDescription = '';
    public string $editVisibility = 'private';

    // Confirm delete
    public bool $showDeleteConfirm = false;
    public int $deleteCollectionId = 0;

    public function updatedSearch(): void
    {
        $this->resetPage();
    }

    public function mount(): void
    {
        $this->view = 'general';
    }

    public function switchToGeneral(): void
    {
        $this->view = 'general';
        $this->activeCollectionId = 0;
        $this->activeCollectionName = '';
        $this->resetPage();
    }

    public function switchToAll(): void
    {
        $this->view = 'all';
        $this->activeCollectionId = 0;
        $this->activeCollectionName = '';
        $this->resetPage();
    }

    public function switchToCollection(int $id, string $name): void
    {
        $this->view = 'collection';
        $this->activeCollectionId = $id;
        $this->activeCollectionName = $name;
        $this->resetPage();
    }

    public function removeBookmark(int $fileId, BookmarkService $service): void
    {
        if (!Auth::check())
            return;
        $service->toggleBookmark(Auth::user(), $fileId);
        $this->dispatch('bookmark-toggled', fileId: $fileId, bookmarked: false);
        $this->dispatch('toast', type: 'info', message: 'Bookmark removed.');
    }

    public function removeFromCollection(int $fileId, BookmarkService $service): void
    {
        if (!Auth::check() || $this->activeCollectionId === 0)
            return;
        $service->removeFromCollection(Auth::user(), $this->activeCollectionId, $fileId);
        $this->dispatch('toast', type: 'info', message: 'Removed from collection.');
    }

    // ─── Collection CRUD ───────────────────────────────────────

    public function openEditCollection(int $id): void
    {
        if (!Auth::check())
            return;

        $collection = \App\Models\FileCollection::where('user_id', Auth::id())
            ->findOrFail($id);

        $this->editCollectionId = $id;
        $this->editName = $collection->name;
        $this->editDescription = $collection->description ?? '';
        $this->editVisibility = $collection->visibility;
        $this->showEditModal = true;
    }

    public function updateCollection(BookmarkService $service): void
    {
        $this->validate([
            'editName' => 'required|string|min:2|max:100',
            'editDescription' => 'nullable|string|max:500',
            'editVisibility' => 'in:public,private',
        ]);

        if (!Auth::check())
            return;

        $service->updateCollection(Auth::user(), $this->editCollectionId, [
            'name' => $this->editName,
            'description' => $this->editDescription,
            'visibility' => $this->editVisibility,
        ]);

        if ($this->activeCollectionId === $this->editCollectionId) {
            $this->activeCollectionName = $this->editName;
        }

        $this->showEditModal = false;
        $this->dispatch('toast', type: 'success', message: 'Collection updated!');
    }

    public function confirmDeleteCollection(int $id): void
    {
        $this->deleteCollectionId = $id;
        $this->showDeleteConfirm = true;
    }

    public function deleteCollection(BookmarkService $service): void
    {
        if (!Auth::check())
            return;

        $service->deleteCollection(Auth::user(), $this->deleteCollectionId);

        if ($this->activeCollectionId === $this->deleteCollectionId) {
            $this->switchToGeneral();
        }

        $this->showDeleteConfirm = false;
        $this->deleteCollectionId = 0;
        $this->dispatch('toast', type: 'success', message: 'Collection deleted.');
    }

    #[On('collection-updated')]
    public function refreshCollections(): void
    {
        // Just triggers a re-render
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
        $service = app(BookmarkService::class);
        $user = Auth::user();

        $files = collect();
        $collections = collect();

        if ($user) {
            $collections = $service->getUserCollections($user);

            $files = match ($this->view) {
                'all' => $service->getAllBookmarks($user, 12, $this->search),
                'collection' => $this->activeCollectionId > 0
                ? $service->getCollectionFiles($user, $this->activeCollectionId, 12, $this->search)
                : $service->getGeneralBookmarks($user, 12, $this->search),
                default => $service->getGeneralBookmarks($user, 12, $this->search),
            };
        }

        return view('livewire.my-bookmarks', [
            'files' => $files,
            'collections' => $collections,
        ]);
    }
}
