{{-- Reusable bookmark toggle button - use anywhere with @livewire('bookmark-button', ['fileId' => $file->id]) --}}
<button wire:click="toggle" class="btn btn-icon {{ $isBookmarked ? 'btn-warning' : 'btn-ghost-secondary' }}"
    title="{{ $isBookmarked ? 'Remove Bookmark' : 'Bookmark' }}" wire:loading.attr="disabled">
    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
        fill="{{ $isBookmarked ? 'currentColor' : 'none' }}" stroke="currentColor" stroke-width="2"
        stroke-linecap="round" stroke-linejoin="round" class="icon icon-tabler icon-tabler-bookmark">
        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
        <path d="M18 7v14l-6 -4l-6 4v-14a4 4 0 0 1 4 -4h4a4 4 0 0 1 4 4z" />
    </svg>
</button>