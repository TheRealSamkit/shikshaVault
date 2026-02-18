@section('title', 'Bookmarks')

{{-- My Bookmarks & Collections Page --}}
<div class="page-body mt-0">
    <div class="container-fluid">
        <div class="row">
            {{-- ═══ SIDEBAR: Collections Nav ═══ --}}
            <div class="col-lg-3 mb-3">
                <div class="card">
                    <div class="card-header d-flex justify-content-between align-items-center">
                        <h3 class="card-title m-0">Collections</h3>
                    </div>
                    <div class="list-group list-group-flush">
                        {{-- General Bookmarks --}}
                        <a href="#" wire:click.prevent="switchToGeneral"
                            class="list-group-item list-group-item-action d-flex align-items-center {{ $view === 'general' ? 'active' : '' }}">
                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24"
                                fill="none" stroke="currentColor" stroke-width="2" class="icon me-2">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                <path d="M18 7v14l-6 -4l-6 4v-14a4 4 0 0 1 4 -4h4a4 4 0 0 1 4 4z" />
                            </svg>
                            General
                        </a>

                        {{-- All Bookmarks --}}
                        <a href="#" wire:click.prevent="switchToAll"
                            class="list-group-item list-group-item-action d-flex align-items-center {{ $view === 'all' ? 'active' : '' }}">
                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24"
                                fill="none" stroke="currentColor" stroke-width="2" class="icon me-2">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                <path d="M4 4h6v6h-6z" />
                                <path d="M14 4h6v6h-6z" />
                                <path d="M4 14h6v6h-6z" />
                                <path d="M14 14h6v6h-6z" />
                            </svg>
                            All Bookmarks
                        </a>

                        <li class="list-group-item text-muted small text-uppercase bg-transparent py-1 px-3 mt-2">
                            My Collections
                        </li>

                        {{-- User Collections --}}
                        @forelse($collections as $collection)
                            <div class="list-group-item list-group-item-action d-flex align-items-center justify-content-between {{ $view === 'collection' && $activeCollectionId === $collection->id ? 'active' : '' }}"
                                style="cursor: pointer;">
                                <a href="#"
                                    wire:click.prevent="switchToCollection({{ $collection->id }}, '{{ addslashes($collection->name) }}')"
                                    class="text-reset text-decoration-none flex-fill d-flex align-items-center">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24"
                                        fill="none" stroke="currentColor" stroke-width="2" class="icon me-2">
                                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                        <path
                                            d="M5 4h4l3 3h7a2 2 0 0 1 2 2v8a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-11a2 2 0 0 1 2 -2" />
                                    </svg>
                                    <span class="text-truncate">{{ $collection->name }}</span>
                                    <span class="badge bg-secondary-lt ms-auto me-2">{{ $collection->items_count }}</span>
                                </a>
                                <div class="dropdown">
                                    <a href="#" class="btn-action p-0" data-bs-toggle="dropdown">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"
                                            fill="none" stroke="currentColor" stroke-width="2" class="icon">
                                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                            <circle cx="12" cy="12" r="1" />
                                            <circle cx="12" cy="19" r="1" />
                                            <circle cx="12" cy="5" r="1" />
                                        </svg>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-end">
                                        @if($collection->visibility === 'public')
                                            <div x-data="{ copied: false }">
                                                <a href="#" class="dropdown-item" @click.prevent="
                                                                navigator.clipboard.writeText('{{ route('collection.public', $collection->id) }}');
                                                                copied = true;
                                                                setTimeout(() => copied = false, 2000);
                                                            ">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                        viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                        class="icon me-1">
                                                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                        <path
                                                            d="M10 13a5 5 0 0 0 7.54 .54l3 -3a5 5 0 0 0 -7.07 -7.07l-1.72 1.71" />
                                                        <path
                                                            d="M14 11a5 5 0 0 0 -7.54 -.54l-3 3a5 5 0 0 0 7.07 7.07l1.71 -1.71" />
                                                    </svg>
                                                    <span x-text="copied ? 'Copied!' : 'Copy share link'"></span>
                                                </a>
                                            </div>
                                            <div class="dropdown-divider"></div>
                                        @endif
                                        <a href="#" class="dropdown-item"
                                            wire:click.prevent="openEditCollection({{ $collection->id }})">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                class="icon me-1">
                                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                <path d="M7 7h-1a2 2 0 0 0 -2 2v9a2 2 0 0 0 2 2h9a2 2 0 0 0 2 -2v-1" />
                                                <path
                                                    d="M20.385 6.585a2.1 2.1 0 0 0 -2.97 -2.97l-8.415 8.385v3h3l8.385 -8.415z" />
                                            </svg>
                                            Edit
                                        </a>
                                        <a href="#" class="dropdown-item text-danger"
                                            wire:click.prevent="confirmDeleteCollection({{ $collection->id }})">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                class="icon me-1">
                                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                <path d="M4 7l16 0" />
                                                <path d="M10 11l0 6" />
                                                <path d="M14 11l0 6" />
                                                <path d="M5 7l1 12a2 2 0 0 0 2 2h8a2 2 0 0 0 2 -2l1 -12" />
                                                <path d="M9 7v-3a1 1 0 0 1 1 -1h4a1 1 0 0 1 1 1v3" />
                                            </svg>
                                            Delete
                                        </a>
                                    </div>
                                </div>
                            </div>
                        @empty
                            <div class="list-group-item text-center text-muted small py-3">
                                No collections yet
                            </div>
                        @endforelse
                    </div>
                </div>
            </div>

            {{-- ═══ MAIN CONTENT: File Grid ═══ --}}
            <div class="col-lg-9">
                {{-- View Header --}}
                <div class="d-flex justify-content-between align-items-center mb-3 flex-wrap gap-2">
                    <div>
                        <h3 class="m-0">
                            @if($view === 'general')
                                General Bookmarks
                                <span class="text-muted fs-5">— not in any collection</span>
                            @elseif($view === 'all')
                                All Bookmarks
                            @elseif($view === 'collection')
                                {{ $activeCollectionName }}
                            @endif
                        </h3>
                    </div>
                    <div class="d-flex gap-2 align-items-center ms-auto">
                        <div class="input-icon" style="min-width: 220px;">
                            <span class="input-icon-addon">
                                <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24"
                                    viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none">
                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                    <circle cx="10" cy="10" r="7" />
                                    <line x1="21" y1="21" x2="15" y2="15" />
                                </svg>
                            </span>
                            <input type="text" class="form-control" placeholder="Search bookmarks..."
                                wire:model.live.debounce.300ms="search">
                        </div>
                        @if($view === 'collection' && $activeCollectionId > 0)
                            <button class="btn btn-sm btn-ghost-primary"
                                wire:click="openEditCollection({{ $activeCollectionId }})">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"
                                    fill="none" stroke="currentColor" stroke-width="2" class="icon me-1">
                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                    <path d="M7 7h-1a2 2 0 0 0 -2 2v9a2 2 0 0 0 2 2h9a2 2 0 0 0 2 -2v-1" />
                                    <path d="M20.385 6.585a2.1 2.1 0 0 0 -2.97 -2.97l-8.415 8.385v3h3l8.385 -8.415z" />
                                </svg>
                                Edit
                            </button>
                        @endif
                    </div>
                </div>

                {{-- File Cards Grid --}}
                <div class="row row-cards" wire:loading.class="opacity-50">
                    @forelse($files as $file)
                        <div class="col-sm-6 col-xl-4">
                            <div class="card h-100 card-stacked">
                                <div class="card-body d-flex flex-column">
                                    <div class="d-flex justify-content-between align-items-start mb-2">
                                        <div class="d-flex flex-wrap gap-1">
                                            <span class="badge bg-blue-lt text-truncate">
                                                {{ $file->academicField->name ?? 'General' }}
                                            </span>
                                            @if($file->resourceType)
                                                <span class="badge bg-azure-lt text-truncate">
                                                    {{ $file->resourceType->name }}
                                                </span>
                                            @endif
                                        </div>
                                        <div class="btn-group">
                                            {{-- Add to Collection --}}
                                            <button class="btn btn-ghost-primary btn-icon"
                                                wire:click="$dispatch('open-bookmark-manager', { fileId: {{ $file->id }} })"
                                                title="Add to collection">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18"
                                                    viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                    class="icon">
                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                    <path
                                                        d="M5 4h4l3 3h7a2 2 0 0 1 2 2v8a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-11a2 2 0 0 1 2 -2" />
                                                    <path d="M12 11v6" />
                                                    <path d="M9 14h6" />
                                                </svg>
                                            </button>
                                            {{-- Remove --}}
                                            @if($view === 'collection' && $activeCollectionId > 0)
                                                <button class="btn btn-icon btn-ghost-danger"
                                                    wire:click="removeFromCollection({{ $file->id }})"
                                                    title="Remove from collection">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18"
                                                        viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                        class="icon">
                                                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                        <path d="M18 6l-12 12" />
                                                        <path d="M6 6l12 12" />
                                                    </svg>
                                                </button>
                                            @else
                                                <button class="btn btn-ghost-danger btn-icon"
                                                    wire:click="removeBookmark({{ $file->id }})" title="Remove bookmark">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18"
                                                        viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                        class="icon">
                                                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                        <path d="M18 6l-12 12" />
                                                        <path d="M6 6l12 12" />
                                                    </svg>
                                                </button>
                                            @endif
                                        </div>
                                    </div>

                                    <h3 class="card-title text-truncate mb-1 lh-1">
                                        <a href="{{ route('file.view', $file->slug) }}"
                                            class="text-reset d-flex align-items-center gap-1" wire:navigate>
                                            <i class="ti {{ $this->getFileIcon($file->file_type) }} fs-1"></i>
                                            {{ $file->title }}
                                        </a>
                                    </h3>

                                    <div class="text-muted small text-truncate-2 mb-3 flex-grow-1">
                                        {{ $file->description }}
                                    </div>

                                    @if($file->subject)
                                        <div class="text-muted small mb-2 d-flex align-items-center">
                                            <svg xmlns="http://www.w3.org/2000/svg" class="icon me-1" width="16" height="16"
                                                viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" fill="none">
                                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                <path d="M3 19a9 9 0 0 1 9 0a9 9 0 0 1 9 0" />
                                                <path d="M3 6a9 9 0 0 1 9 0a9 9 0 0 1 9 0" />
                                                <line x1="3" y1="6" x2="3" y2="19" />
                                                <line x1="12" y1="6" x2="12" y2="19" />
                                                <line x1="21" y1="6" x2="21" y2="19" />
                                            </svg>
                                            <span class="text-truncate">{{ $file->subject->name }}</span>
                                        </div>
                                    @endif
                                </div>
                                <div class="card-footer bg-transparent border-top-0 pt-0 pb-3">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="d-flex align-items-center" style="max-width: 60%; overflow: hidden;">
                                            <span class="avatar avatar-sm rounded-circle me-2"
                                                style="background-image: url('{{ asset('storage/' . $file->user->avatar) }}');"></span>
                                            <span
                                                class="text-body small fw-bold text-truncate">{{ $file->user->username }}</span>
                                        </div>
                                        <a href="{{ route('file.view', $file->slug) }}" class="btn btn-sm btn-primary"
                                            wire:navigate>
                                            View
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @empty
                        <div class="col-12 text-center py-6">
                            <div class="empty">
                                <div class="empty-icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="64" height="64" viewBox="0 0 24 24"
                                        fill="none" stroke="currentColor" stroke-width="1" class="icon">
                                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                        <path d="M18 7v14l-6 -4l-6 4v-14a4 4 0 0 1 4 -4h4a4 4 0 0 1 4 4z" />
                                    </svg>
                                </div>
                                <p class="empty-title">
                                    @if($view === 'general')
                                        No uncategorized bookmarks
                                    @elseif($view === 'collection')
                                        This collection is empty
                                    @else
                                        No bookmarks yet
                                    @endif
                                </p>
                                <p class="empty-subtitle text-muted">
                                    Bookmark files from the home feed to save them here.
                                </p>
                                <a href="{{ route('dashboard') }}" class="btn btn-primary" wire:navigate>
                                    Browse Files
                                </a>
                            </div>
                        </div>
                    @endforelse
                </div>

                @if(method_exists($files, 'links'))
                    <div class="mt-4">
                        {{ $files->links('livewire.custom-pagination') }}
                    </div>
                @endif
            </div>
        </div>
    </div>

    {{-- ═══ Edit Collection Modal (Desktop) / Offcanvas (Mobile) ═══ --}}
    @if($showEditModal)
        {{-- Desktop --}}
        <div class="modal modal-blur fade show d-none d-md-block" style="display: block;" tabindex="-1">
            <div class="modal-dialog modal-dialog-centered modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Edit Collection</h5>
                        <button type="button" class="btn-close" wire:click="$set('showEditModal', false)"></button>
                    </div>
                    <div class="modal-body">
                        @include('livewire.partials.edit-collection-form')
                    </div>
                </div>
            </div>
        </div>
        <div class="modal-backdrop fade show d-none d-md-block"></div>

        {{-- Mobile --}}
        <div class="offcanvas offcanvas-bottom show d-md-none"
            style="height: 60vh; border-top-left-radius: 20px; border-top-right-radius: 20px; display: block; visibility: visible;">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title">Edit Collection</h5>
                <button type="button" class="btn-close" wire:click="$set('showEditModal', false)"></button>
            </div>
            <div class="offcanvas-body">
                @include('livewire.partials.edit-collection-form')
            </div>
        </div>
        <div class="offcanvas-backdrop fade show d-md-none"></div>
    @endif

    {{-- ═══ Delete Confirmation Modal ═══ --}}
    @if($showDeleteConfirm)
        <div class="modal modal-blur fade show" style="display: block;" tabindex="-1">
            <div class="modal-dialog modal-dialog-centered modal-sm">
                <div class="modal-content">
                    <div class="modal-body text-center py-4">
                        <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 24 24" fill="none"
                            stroke="currentColor" stroke-width="1" class="icon text-danger mb-3">
                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                            <path d="M12 9v4" />
                            <path
                                d="M10.363 3.591l-8.106 13.534a1.914 1.914 0 0 0 1.636 2.871h16.214a1.914 1.914 0 0 0 1.636 -2.87l-8.106 -13.536a1.914 1.914 0 0 0 -3.274 0z" />
                            <path d="M12 16h.01" />
                        </svg>
                        <h3>Delete Collection?</h3>
                        <p class="text-muted">This will remove the collection and unlink all files from it. Your bookmarks
                            will remain.</p>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-ghost w-100" wire:click="$set('showDeleteConfirm', false)">Cancel</button>
                        <button class="btn btn-danger w-100" wire:click="deleteCollection">Delete</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal-backdrop fade show"></div>
    @endif

    {{-- Include Bookmark Manager for "Add to Collection" from this page --}}
    @livewire('bookmark-manager')
</div>

@script
<script>
    Livewire.on('toast', (event) => {
        const data = event[0] || event;
        if (typeof window.showToast === 'function') {
            window.showToast(data.type, data.message);
        }
    });
</script>
@endscript