<div class="page-body mt-0">
    <div class="container-fluid">

        {{-- Collection Header --}}
        <div class="card mb-4">
            <div class="card-body">
                <div class="d-flex align-items-center gap-3 flex-wrap">
                    <div class="avatar avatar-xl bg-blue-lt rounded">
                        <svg xmlns="http://www.w3.org/2000/svg" width="36" height="36" viewBox="0 0 24 24" fill="none"
                            stroke="currentColor" stroke-width="1.5" class="icon text-blue">
                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                            <path
                                d="M5 4h4l3 3h7a2 2 0 0 1 2 2v8a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-11a2 2 0 0 1 2 -2" />
                        </svg>
                    </div>
                    <div class="flex-fill">
                        <h2 class="m-0">{{ $collection->name }}</h2>
                        @if($collection->description)
                            <p class="text-muted mb-1">{{ $collection->description }}</p>
                        @endif
                        <div class="d-flex align-items-center gap-3 text-muted small mt-1">
                            <span class="d-flex align-items-center gap-1">
                                <span class="avatar avatar-xs rounded-circle me-1"
                                    style="background-image: url('{{ asset('storage/' . $collection->user->avatar) }}');"></span>
                                {{ $collection->user->name }}
                            </span>
                            <span>·</span>
                            <span>{{ $files->total() }} {{ Str::plural('file', $files->total()) }}</span>
                            <span>·</span>
                            <span class="badge bg-green-lt">Public</span>
                        </div>
                    </div>
                    <div class="ms-auto d-flex gap-2 align-items-center flex-wrap">
                        <div class="input-icon" style="min-width: 220px;">
                            <span class="input-icon-addon">
                                <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24"
                                    viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none">
                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                    <circle cx="10" cy="10" r="7" />
                                    <line x1="21" y1="21" x2="15" y2="15" />
                                </svg>
                            </span>
                            <input type="text" class="form-control" placeholder="Search in collection..."
                                wire:model.live.debounce.300ms="search">
                        </div>
                        <div x-data="{ copied: false }">
                            <button class="btn btn-icon" :class="copied ? 'btn-success' : 'btn-ghost-secondary'"
                                @click="navigator.clipboard.writeText('{{ route('collection.public', $collection->id) }}'); copied = true; setTimeout(() => copied = false, 2000)"
                                title="Copy shareable link">
                                <svg x-show="!copied" xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                    viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" class="icon">
                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                    <path d="M10 14a3.5 3.5 0 0 0 5 0l4 -4a3.5 3.5 0 0 0 -5 -5l-1.5 1.5" />
                                    <path d="M14 10a3.5 3.5 0 0 0 -5 0l-4 4a3.5 3.5 0 0 0 5 5l1.5 -1.5" />
                                </svg>
                                <svg x-show="copied" xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                    viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" class="icon">
                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                    <path d="M5 12l5 5l10 -10" />
                                </svg>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        {{-- File Grid --}}
        <div class="row row-cards" wire:loading.class="opacity-50">
            @forelse($files as $file)
                <div class="col-sm-6 col-xl-4">
                    <div class="card h-100 card-stacked">
                        <div class="card-body d-flex flex-column">
                            <div class="d-flex flex-wrap gap-1 mb-2">
                                <span class="badge bg-blue-lt">{{ $file->academicField->name ?? 'General' }}</span>
                                @if($file->resourceType)
                                    <span class="badge bg-azure-lt">{{ $file->resourceType->name }}</span>
                                @endif
                            </div>
                            <h3 class="card-title text-truncate mb-1 lh-1">
                                <a href="{{ route('file.view', $file->slug) }}"
                                    class="text-reset d-flex align-items-center gap-1">
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
                                    {{ $file->subject->name }}
                                </div>
                            @endif
                        </div>
                        <div class="card-footer bg-transparent border-top-0 pt-0 pb-3">
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="d-flex align-items-center" style="max-width: 60%; overflow: hidden;">
                                    <span class="avatar avatar-sm rounded-circle me-2"
                                        style="background-image: url('{{ asset('storage/' . $file->user->avatar) }}');"></span>
                                    <span class="text-body small fw-bold text-truncate">{{ $file->user->username }}</span>
                                </div>
                                <a href="{{ route('file.view', $file->slug) }}" class="btn btn-sm btn-primary">View</a>
                            </div>
                        </div>
                    </div>
                </div>
            @empty
                <div class="col-12 text-center py-6">
                    <div class="empty">
                        <div class="empty-icon">
                            <svg xmlns="http://www.w3.org/2000/svg" width="64" height="64" viewBox="0 0 24 24" fill="none"
                                stroke="currentColor" stroke-width="1" class="icon">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                <path
                                    d="M5 4h4l3 3h7a2 2 0 0 1 2 2v8a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-11a2 2 0 0 1 2 -2" />
                            </svg>
                        </div>
                        <p class="empty-title">
                            @if($search) No files match "{{ $search }}" @else This collection is empty @endif
                        </p>
                    </div>
                </div>
            @endforelse
        </div>

        @if($files->hasPages())
            <div class="mt-4">{{ $files->links('livewire.custom-pagination') }}</div>
        @endif

    </div>
</div>