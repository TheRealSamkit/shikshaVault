<div class="page-body mt-0">
    <style>
        .scroll-parent {
            overflow: hidden;
            white-space: nowrap;
            mask-image: linear-gradient(90deg, transparent, #000 5%, #000 95%, transparent);
        }

        .scroll-element {
            display: inline-block;
            transition: transform 3s linear;
        }

        /* On hover, if text is long, we can use JS or simple CSS animation. 
           Here is a pure CSS approach that creates a Marquee effect on hover */
        .marquee-hover:hover .scroll-element {
            animation: marquee 8s linear infinite;
        }

        @keyframes marquee {
            0% {
                transform: translateX(0);
            }

            100% {
                transform: translateX(-100%);
            }
        }
    </style>
    @section('search-bar')
        <div class="ms-md-auto py-2 py-md-0 me-md-4 order-first order-md-last flex-grow-1">
            <div class="input-icon">
                <span class="input-icon-addon">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24"
                        stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                        <circle cx="10" cy="10" r="7" />
                        <line x1="21" y1="21" x2="15" y2="15" />
                    </svg>
                </span>

                <input type="text" class="form-control" placeholder="Search files, authors, tags..."
                    x-data="{ query: '{{ $search }}' }" x-model="query"
                    @input.debounce.300ms="$dispatch('searchUpdated', { query: query })">
            </div>
        </div>
    @endsection

    <div class="container-fluid">

        <div class="d-none d-md-flex justify-content-between align-items-center mb-4 gap-2 flex-wrap">
            <div class="d-flex gap-2 flex-wrap align-items-center">

                <div class="dropdown">
                    <button
                        class="btn {{ count($selectedField) > 0 ? 'btn-primary' : 'btn-ghost-default' }} dropdown-toggle"
                        type="button" data-bs-toggle="dropdown" data-bs-auto-close="outside">
                        Field @if(count($selectedField) > 0) ({{ count($selectedField) }}) @endif
                    </button>
                    <div class="dropdown-menu p-2" style="max-height: 300px; overflow-y: auto;">
                        @foreach($academicFields as $field)
                            <label class="dropdown-item">
                                <input class="form-check-input me-2" type="checkbox" wire:model.live="selectedField"
                                    value="{{ $field->id }}">
                                {{ $field->name }}
                            </label>
                        @endforeach
                    </div>
                </div>

                <div class="dropdown">
                    <button
                        class="btn {{ count($selectedType) > 0 ? 'btn-primary' : 'btn-ghost-default' }} dropdown-toggle"
                        type="button" data-bs-toggle="dropdown" data-bs-auto-close="outside">
                        Type @if(count($selectedType) > 0) ({{ count($selectedType) }}) @endif
                    </button>
                    <div class="dropdown-menu p-2" style="max-height: 300px; overflow-y: auto;">
                        @foreach($resourceTypes as $type)
                            <label class="dropdown-item">
                                <input class="form-check-input me-2" type="checkbox" wire:model.live="selectedType"
                                    value="{{ $type->id }}">
                                {{ $type->name }}
                            </label>
                        @endforeach
                    </div>
                </div>

                <div class="dropdown">
                    <button
                        class="btn {{ count($selectedSubject) > 0 ? 'btn-primary' : 'btn-ghost-default' }} dropdown-toggle"
                        type="button" data-bs-toggle="dropdown" data-bs-auto-close="outside">
                        Subject @if(count($selectedSubject) > 0) ({{ count($selectedSubject) }}) @endif
                    </button>
                    <div class="dropdown-menu p-2" style="max-height: 300px; overflow-y: auto; width: 250px;">
                        @foreach($subjects as $subject)
                            <label class="dropdown-item">
                                <input class="form-check-input me-2" type="checkbox" wire:model.live="selectedSubject"
                                    value="{{ $subject->id }}">
                                {{ $subject->name }}
                            </label>
                        @endforeach
                    </div>
                </div>

                <div class="dropdown">
                    <button
                        class="btn {{ count($selectedFileType) > 0 ? 'btn-primary' : 'btn-ghost-default' }} dropdown-toggle"
                        type="button" data-bs-toggle="dropdown" data-bs-auto-close="outside">
                        Format @if(count($selectedFileType) > 0) ({{ count($selectedFileType) }}) @endif
                    </button>
                    <div class="dropdown-menu p-2">
                        @foreach($fileTypes as $ft)
                            <label class="dropdown-item text-uppercase">
                                <input class="form-check-input me-2" type="checkbox" wire:model.live="selectedFileType"
                                    value="{{ $ft }}">
                                {{ $ft }}
                            </label>
                        @endforeach
                    </div>
                </div>

                @if(count($selectedField) + count($selectedType) + count($selectedSubject) + count($selectedFileType) > 0)
                    <button
                        wire:click="$set('selectedField', []); $set('selectedType', []); $set('selectedSubject', []); $set('selectedFileType', [])"
                        class="btn btn-link text-danger text-decoration-none">
                        Clear all
                    </button>
                @endif
            </div>

            <div class="d-flex align-items-center">
                <span class="text-muted me-2 small">Sort:</span>
                <select wire:model.live="sort" class="form-select form-select-sm w-auto">
                    <option value="latest">Newest First</option>
                    <option value="downloads">Most Downloaded</option>
                    <option value="rating">Highest Rated</option>
                </select>
            </div>
        </div>

        <div class="d-md-none row mb-3 sticky-top py-2 shadow-sm"
            style="z-index: 9; margin-left: -1rem; margin-right: -1rem; padding-left: 1rem; padding-right: 1rem;">
            <div class="col-12 d-flex justify-content-between align-items-center">
                <span class="text-muted small">{{ $files->total() }} results</span>
                <button class="btn btn-outline-primary btn-sm rounded-pill" data-bs-toggle="offcanvas"
                    data-bs-target="#offcanvasFilters">
                    Filters & Sort
                </button>
            </div>
        </div>

        <div wire:loading wire:target="search, selectedField, selectedType, selectedSubject, selectedFileType, sort"
            class="w-100 text-center py-5">
            <div class="spinner-border text-primary" role="status"></div>
        </div>

        <div class="row row-cards" wire:loading.class="opacity-50">
            @forelse($files as $file)
                <div class="col-sm-6 col-md-8 col-lg-4 col-xl-3">
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
                                <div class="dropdown">
                                    <a href="#" class="p-1 rounded-pill btn-action" data-bs-toggle="dropdown"
                                        aria-expanded="false">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24"
                                            viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
                                            stroke-linecap="round" stroke-linejoin="round">
                                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                            <circle cx="12" cy="12" r="1" />
                                            <circle cx="12" cy="19" r="1" />
                                            <circle cx="12" cy="5" r="1" />
                                        </svg>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-end">
                                        <a href="#" class="dropdown-item" wire:click="toggleBookmark({{ $file->id }})"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                stroke-linecap="round" stroke-linejoin="round"
                                                class="icon icon-tabler icons-tabler-outline icon-tabler-bookmark">
                                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                <path d="M18 7v14l-6 -4l-6 4v-14a4 4 0 0 1 4 -4h4a4 4 0 0 1 4 4z" />
                                            </svg>Bookmark</a>
                                        <a href="#" class="dropdown-item"><svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                                class="icon icon-tabler icons-tabler-outline icon-tabler-flag">
                                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                <path
                                                    d="M5 5a5 5 0 0 1 7 0a5 5 0 0 0 7 0v9a5 5 0 0 1 -7 0a5 5 0 0 0 -7 0v-9z" />
                                                <path d="M5 21v-7" />
                                            </svg>Report</a>
                                    </div>
                                </div>
                            </div>

                            <h3
                                class="card-title text-truncate mb-1 lh-1 d-flex align-items-center justify-content-between">
                                <a href="{{ route('file.view', $file->slug) }}"
                                    class="text-reset d-flex align-items-center gap-1" title="{{ $file->title }}"
                                    wire:navigate>
                                    <i class="ti {{ $this->getFileIcon($file->file_type) }} fs-1"></i>
                                    {{ $file->title }}</a>
                                @if($file->verified)<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                        viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                        stroke-linecap="round" stroke-linejoin="round"
                                        class="icon icon-tabler icons-tabler-outline icon-tabler-rosette-discount-check text-success">
                                        <path stroke="none" d="M0 0h24v24H0z" fill="none" data-bs-toggle="tooltip"
                                            data-bs-original-title="Verified" title="Verified" />
                                        <path
                                            d="M5 7.2a2.2 2.2 0 0 1 2.2 -2.2h1a2.2 2.2 0 0 0 1.55 -.64l.7 -.7a2.2 2.2 0 0 1 3.12 0l.7 .7c.412 .41 .97 .64 1.55 .64h1a2.2 2.2 0 0 1 2.2 2.2v1c0 .58 .23 1.138 .64 1.55l.7 .7a2.2 2.2 0 0 1 0 3.12l-.7 .7a2.2 2.2 0 0 0 -.64 1.55v1a2.2 2.2 0 0 1 -2.2 2.2h-1a2.2 2.2 0 0 0 -1.55 .64l-.7 .7a2.2 2.2 0 0 1 -3.12 0l-.7 -.7a2.2 2.2 0 0 0 -1.55 -.64h-1a2.2 2.2 0 0 1 -2.2 -2.2v-1a2.2 2.2 0 0 0 -.64 -1.55l-.7 -.7a2.2 2.2 0 0 1 0 -3.12l.7 -.7a2.2 2.2 0 0 0 .64 -1.55v-1" />
                                        <path d="M9 12l2 2l4 -4" />
                                    </svg>
                                @endif
                            </h3>



                            <div class="text-muted small text-truncate-2 mb-3 flex-grow-1">
                                {{ $file->description }}
                            </div>

                            <div class="row g-0 mb-3">
                                <div class="col-auto">
                                    <div class="text-muted small border border-end-0 rounded-start px-2 py-1 bg-info-lt">
                                        {{ strtoupper($file->file_type) }}
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <div class="text-muted small border border-end-0 px-2 py-1 bg-info-lt">
                                        {{ $this->formatSize($file->file_size) }}
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <div class="text-muted small border rounded-end px-2 py-1 bg-info-lt">
                                        {{ $file->page_count ?? '?' }} pages
                                    </div>
                                </div>
                            </div>

                            @if($file->subject)
                                <div class="text-muted small mb-2 d-flex align-items-center">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-book me-1"
                                        width="16" height="16" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                                        fill="none" stroke-linecap="round" stroke-linejoin="round">
                                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                        <path d="M3 19a9 9 0 0 1 9 0a9 9 0 0 1 9 0" />
                                        <path d="M3 6a9 9 0 0 1 9 0a9 9 0 0 1 9 0" />
                                        <line x1="3" y1="6" x2="3" y2="19" />
                                        <line x1="12" y1="6" x2="12" y2="19" />
                                        <line x1="21" y1="6" x2="21" y2="19" />
                                    </svg>
                                    <span class="text-truncate">
                                        {{ $file->subject->name }}
                                        @if($file->academicLevel)
                                            &bull; {{ $file->academicLevel->name }}
                                        @endif
                                    </span>
                                </div>
                            @endif
                        </div>

                        <div class="card-footer bg-transparent border-top-0 pt-0 pb-3">
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="d-flex align-items-center" style="max-width: 50%; overflow: hidden;">
                                    <span class="avatar avatar-md rounded-circle me-2"
                                        style="background-image: url('{{ asset('storage/' . $file->user->avatar) }}');aspect-ratio:1/1;"></span>
                                    <div class="d-flex flex-column w-auto" style="overflow: hidden;">
                                        <div class="text-body small fw-bold text-truncate">{{ $file->user->username }}</div>

                                        <div class="text-muted marquee-hover scroll-parent">
                                            <div class="scroll-element">
                                                {{ $file->institution->name ?? 'Independent' }} &nbsp;&nbsp;
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="btn-group btn-group" role="group">
                                    <button type="button" class="btn btn-ghost btn-icon" title="View"
                                        wire:click="processAction('preview','{{ $file->slug }}')">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-1" width="24" height="24"
                                            viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
                                            stroke-linecap="round" stroke-linejoin="round">
                                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                            <circle cx="12" cy="12" r="2" />
                                            <path
                                                d="M22 12c-2.667 4.667 -6 7 -10 7s-7.333 -2.333 -10 -7c2.667 -4.667 6 -7 10 -7s7.333 2.333 10 7" />
                                        </svg>
                                    </button>
                                    <button type="button" class="btn btn-primary btn-icon" title="Download"
                                        wire:click="processAction('download','{{ $file->slug }}')">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24"
                                            viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
                                            stroke-linecap="round" stroke-linejoin="round">
                                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                            <path d="M4 17v2a2 2 0 0 0 2 2h12a2 2 0 0 0 2 -2v-2" />
                                            <polyline points="7 11 12 16 17 11" />
                                            <line x1="12" y1="4" x2="12" y2="16" />
                                        </svg>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @empty
                <div class="col-12 text-center py-6">
                    <div class="empty">
                        <div class="empty-img"><img src="{{ asset('svg/No-File.svg') }}" width="280" height="280" alt="">
                        </div>
                        <p class="empty-title">No resources found</p>
                        <p class="empty-subtitle text-muted">Try adjusting your search or filters.</p>
                        <button wire:click="$set('search', ''); $set('selectedField', []);" class="btn btn-primary">Clear
                            All Filters</button>
                    </div>
                </div>
            @endforelse
            @livewire('image-preview-modal')
        </div>

        <div class="mt-4">
            {{ $files->links() }}
        </div>
    </div>

    <div wire:ignore.self class="offcanvas offcanvas-bottom bg-body" tabindex="-1" id="offcanvasFilters"
        aria-labelledby="offcanvasFiltersLabel"
        style="height: 85vh; border-top-left-radius: 20px; border-top-right-radius: 20px;">

        <div class="offcanvas-header border-bottom">
            <h5 class="offcanvas-title fw-bold" id="offcanvasFiltersLabel">Filters & Sort</h5>
            <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>

        <div class="offcanvas-body p-0">
            <div class="accordion accordion-flush" id="accordionFilters">

                <div class="accordion-item bg-transparent">
                    <h2 class="accordion-header">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                            data-bs-target="#collapseSort" aria-expanded="true">
                            Sort By
                        </button>
                    </h2>
                    <div id="collapseSort" class="accordion-collapse collapse show" data-bs-parent="#accordionFilters">
                        <div class="accordion-body pt-0">
                            <div class="form-selectgroup form-selectgroup-boxes d-flex flex-column">
                                <label class="form-selectgroup-item flex-fill">
                                    <input type="radio" wire:model.live="sort" value="latest"
                                        class="form-selectgroup-input">
                                    <span class="form-selectgroup-label d-flex align-items-center p-3">
                                        <span class="me-3">
                                            <span class="form-selectgroup-check"></span>
                                        </span>
                                        <span class="form-selectgroup-label-content">
                                            <span class="font-weight-medium">Newest First</span>
                                        </span>
                                    </span>
                                </label>
                                <label class="form-selectgroup-item flex-fill">
                                    <input type="radio" wire:model.live="sort" value="downloads"
                                        class="form-selectgroup-input">
                                    <span class="form-selectgroup-label d-flex align-items-center p-3">
                                        <span class="me-3">
                                            <span class="form-selectgroup-check"></span>
                                        </span>
                                        <span class="form-selectgroup-label-content">
                                            <span class="font-weight-medium">Most Popular</span>
                                        </span>
                                    </span>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="accordion-item bg-transparent">
                    <h2 class="accordion-header">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#collapseFields">
                            Academic Fields
                        </button>
                    </h2>
                    <div id="collapseFields" class="accordion-collapse collapse" data-bs-parent="#accordionFilters">
                        <div class="accordion-body pt-0">
                            <div class="vstack gap-2">
                                @foreach($academicFields as $field)
                                    <label class="form-check mb-2">
                                        <input class="form-check-input" type="checkbox" wire:model.live="selectedField"
                                            value="{{ $field->id }}">
                                        <span class="form-check-label">{{ $field->name }}</span>
                                    </label>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>

                <div class="accordion-item bg-transparent">
                    <h2 class="accordion-header">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#collapseTypes">
                            Resource Types
                        </button>
                    </h2>
                    <div id="collapseTypes" class="accordion-collapse collapse" data-bs-parent="#accordionFilters">
                        <div class="accordion-body pt-0">
                            <div class="vstack gap-2">
                                @foreach($resourceTypes as $type)
                                    <label class="form-check mb-2">
                                        <input class="form-check-input" type="checkbox" wire:model.live="selectedType"
                                            value="{{ $type->id }}">
                                        <span class="form-check-label">{{ $type->name }}</span>
                                    </label>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>

                <div class="accordion-item bg-transparent">
                    <h2 class="accordion-header">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#collapseSubjects">
                            Subjects
                        </button>
                    </h2>
                    <div id="collapseSubjects" class="accordion-collapse collapse" data-bs-parent="#accordionFilters">
                        <div class="accordion-body pt-0">
                            <div class="vstack gap-2" style="max-height: 250px; overflow-y: auto;">
                                @foreach($subjects as $subject)
                                    <label class="form-check mb-2">
                                        <input class="form-check-input" type="checkbox" wire:model.live="selectedSubject"
                                            value="{{ $subject->id }}">
                                        <span class="form-check-label">{{ $subject->name }}</span>
                                    </label>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>

                <div class="accordion-item bg-transparent">
                    <h2 class="accordion-header">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#collapseFormats">
                            File Formats
                        </button>
                    </h2>
                    <div id="collapseFormats" class="accordion-collapse collapse" data-bs-parent="#accordionFilters">
                        <div class="accordion-body pt-0">
                            <div class="d-flex flex-wrap gap-2">
                                @foreach($fileTypes as $ft)
                                    <label class="form-selectgroup-item">
                                        <input type="checkbox" wire:model.live="selectedFileType" value="{{ $ft }}"
                                            class="form-selectgroup-input">
                                        <span class="form-selectgroup-label text-uppercase px-3">{{ $ft }}</span>
                                    </label>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="sticky-bottom bg-body border-top p-3 d-flex gap-2">
            <button class="btn btn-ghost-danger w-50"
                wire:click="$set('selectedField', []); $set('selectedType', []); $set('selectedSubject', []); $set('selectedFileType', [])">
                Clear
            </button>
            <button class="btn btn-primary w-50" data-bs-dismiss="offcanvas">
                Show {{ $files->total() }} Results
            </button>
        </div>

    </div>
</div>