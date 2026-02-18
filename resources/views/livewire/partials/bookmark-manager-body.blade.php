{{-- Shared body content for both modal & offcanvas --}}
<div class="p-3">
    {{-- Tab Navigation --}}
    <ul class="nav nav-tabs mb-3" role="tablist">
        <li class="nav-item">
            <button class="nav-link {{ $activeTab === 'collections' ? 'active' : '' }}"
                    wire:click="$set('activeTab', 'collections')">
                My Collections
            </button>
        </li>
        <li class="nav-item">
            <button class="nav-link {{ $activeTab === 'new' ? 'active' : '' }}"
                    wire:click="$set('activeTab', 'new')">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" class="icon me-1"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M12 5v14"/><path d="M5 12h14"/></svg>
                New Collection
            </button>
        </li>
    </ul>

    {{-- Collections List Tab --}}
    @if($activeTab === 'collections')
        <div class="list-group list-group-flush" style="max-height: 350px; overflow-y: auto;">
            @forelse($collections as $collection)
                <label class="list-group-item list-group-item-action d-flex align-items-center gap-3 cursor-pointer"
                       wire:click="toggleFileInCollection({{ $collection->id }})"
                       style="cursor: pointer;">
                    <input type="checkbox"
                           class="form-check-input m-0"
                           {{ in_array($collection->id, $fileCollectionIds) ? 'checked' : '' }}
                           readonly>
                    <div class="flex-fill">
                        <div class="fw-semibold">{{ $collection->name }}</div>
                        <div class="text-muted small">
                            {{ $collection->items_count }} {{ Str::plural('item', $collection->items_count) }}
                            &bull;
                            <span class="badge bg-{{ $collection->visibility === 'public' ? 'green' : 'secondary' }}-lt">
                                {{ ucfirst($collection->visibility) }}
                            </span>
                        </div>
                    </div>
                    <div wire:loading wire:target="toggleFileInCollection({{ $collection->id }})">
                        <div class="spinner-border spinner-border-sm text-primary"></div>
                    </div>
                </label>
            @empty
                <div class="text-center text-muted py-4">
                    <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1" class="icon mb-2"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M4 4h6v6h-6z"/><path d="M14 4h6v6h-6z"/><path d="M4 14h6v6h-6z"/><path d="M17 17m-3 0a3 3 0 1 0 6 0a3 3 0 1 0 -6 0"/></svg>
                    <p class="mb-1">No collections yet</p>
                    <button class="btn btn-sm btn-primary" wire:click="$set('activeTab', 'new')">Create One</button>
                </div>
            @endforelse
        </div>
    @endif

    {{-- New Collection Tab --}}
    @if($activeTab === 'new')
        <form wire:submit.prevent="createCollection">
            <div class="mb-3">
                <label class="form-label required">Collection Name</label>
                <input type="text" class="form-control @error('newCollectionName') is-invalid @enderror"
                       wire:model="newCollectionName"
                       placeholder="e.g., Exam Prep, Semester 3 Notes">
                @error('newCollectionName')
                    <div class="invalid-feedback">{{ $message }}</div>
                @enderror
            </div>

            <div class="mb-3">
                <label class="form-label">Description</label>
                <textarea class="form-control @error('newCollectionDescription') is-invalid @enderror"
                          wire:model="newCollectionDescription"
                          rows="2"
                          placeholder="What's this collection for?"></textarea>
                @error('newCollectionDescription')
                    <div class="invalid-feedback">{{ $message }}</div>
                @enderror
            </div>

            <div class="mb-3">
                <label class="form-label">Visibility</label>
                <div class="form-selectgroup">
                    <label class="form-selectgroup-item">
                        <input type="radio" wire:model="newCollectionVisibility" value="private" class="form-selectgroup-input">
                        <span class="form-selectgroup-label">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" class="icon me-1"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M5 13a2 2 0 0 1 2 -2h10a2 2 0 0 1 2 2v6a2 2 0 0 1 -2 2h-10a2 2 0 0 1 -2 -2v-6z"/><path d="M11 16a1 1 0 1 0 2 0a1 1 0 0 0 -2 0"/><path d="M8 11v-4a4 4 0 1 1 8 0v4"/></svg>
                            Private
                        </span>
                    </label>
                    <label class="form-selectgroup-item">
                        <input type="radio" wire:model="newCollectionVisibility" value="public" class="form-selectgroup-input">
                        <span class="form-selectgroup-label">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" class="icon me-1"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M3 12a9 9 0 1 0 18 0a9 9 0 0 0 -18 0"/><path d="M3.6 9h16.8"/><path d="M3.6 15h16.8"/></svg>
                            Public
                        </span>
                    </label>
                </div>
            </div>

            <div class="d-flex gap-2">
                <button type="button" class="btn btn-ghost flex-fill" wire:click="$set('activeTab', 'collections')">
                    Cancel
                </button>
                <button type="submit" class="btn btn-primary flex-fill" wire:loading.attr="disabled">
                    <span wire:loading.remove wire:target="createCollection">Create & Add</span>
                    <span wire:loading wire:target="createCollection">Creating...</span>
                </button>
            </div>
        </form>
    @endif
</div>
