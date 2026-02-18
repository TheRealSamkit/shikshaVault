<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\Attributes\On;
use App\Services\BookmarkService;
use Illuminate\Support\Facades\Auth;

class BookmarkButton extends Component
{
    public int $fileId;
    public bool $isBookmarked = false;

    public function mount(int $fileId): void
    {
        $this->fileId = $fileId;

        if (Auth::check()) {
            $this->isBookmarked = app(BookmarkService::class)
                ->isBookmarked(Auth::user(), $fileId);
        }
    }

    public function toggle(BookmarkService $service): void
    {
        if (!Auth::check()) {
            $this->redirect(route('login'));
            return;
        }

        if ($this->isBookmarked) {
            // Un-bookmark: remove bookmark + all collection entries
            $service->toggleBookmark(Auth::user(), $this->fileId);
            $this->isBookmarked = false;

            $this->dispatch('bookmark-toggled', fileId: $this->fileId, bookmarked: false);
            $this->dispatch('toast', type: 'info', message: 'Bookmark removed.');
        } else {
            // Bookmark: save to bookmarks and open collection picker
            $service->toggleBookmark(Auth::user(), $this->fileId);
            $this->isBookmarked = true;

            $this->dispatch('bookmark-toggled', fileId: $this->fileId, bookmarked: true);
            $this->dispatch('open-bookmark-manager', fileId: $this->fileId);
            $this->dispatch('toast', type: 'success', message: 'Bookmarked! Choose a collection or close to keep in General.');
        }
    }

    #[On('bookmark-toggled')]
    public function refreshState(int $fileId, bool $bookmarked): void
    {
        if ($fileId === $this->fileId) {
            $this->isBookmarked = $bookmarked;
        }
    }

    public function render()
    {
        return view('livewire.bookmark-button');
    }
}
