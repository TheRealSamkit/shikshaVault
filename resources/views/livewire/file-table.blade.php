<div>
    <script>
        document.addEventListener('livewire:init', () => {
            Livewire.on('toast', (event) => {
                window.showToast(event.type, event.message);
            });
        });
    </script>

    <div class="card my-4">
        <div class="card-header d-flex align-items-center justify-content-between">
            <div class="card-title">My Uploads</div>

            <div class="wrapper d-flex gap-2">
                <input type="text" wire:model.live.debounce.300ms="search"
                    class="form-control form-control-sm {{ $loopFlag ? 'd-none' : '' }}" placeholder="Search files...">

                <a href="{{ route('upload.create') }}" class="btn btn-primary w-75" wire:navigate>
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                        stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                        class="icon icon-tabler icons-tabler-outline icon-tabler-plus me-0 me-md-1">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                        <path d="M12 5l0 14" />
                        <path d="M5 12l14 0" />
                    </svg>
                    <span class="d-none d-sm-inline">Upload New</span>
                </a>
            </div>
        </div>


        <div class="card-body p-0">
            <div class="table-responsive">
                <table class="table table-vcenter card-table table-hover z-1">
                    <thead>
                        <tr class="{{ $loopFlag ? 'd-none' : '' }}">
                            <th>File Details</th>
                            <th class="text-center">Status</th>
                            <th class="text-center">Visibility</th>
                            <th class="text-center">Stats</th>
                            <th class="text-end">Date</th>
                            <th class="w-1"></th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($files as $file)
                            <tr wire:key="file-row-{{ $file->id }}">
                                <td>
                                    <div class="d-flex align-items-center">
                                        <div class="me-3">
                                            <i class="ti {{ $this->getFileIcon($file->file_type) }} fs-1"></i>
                                        </div>
                                        <div class="flex-fill">
                                            <div class="font-weight-medium text-truncate" style="max-width: 300px;"
                                                title="{{ $file->title }}">
                                                {{ $file->title }}
                                                @if($file->verified)
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                        viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                        stroke-linecap="round" stroke-linejoin="round"
                                                        class="icon icon-tabler icons-tabler-outline icon-tabler-circle-dashed-check text-success ms-1">
                                                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                        <path d="M8.56 3.69a9 9 0 0 0 -2.92 1.95" />
                                                        <path d="M3.69 8.56a9 9 0 0 0 -.69 3.44" />
                                                        <path d="M3.69 15.44a9 9 0 0 0 1.95 2.92" />
                                                        <path d="M8.56 20.31a9 9 0 0 0 3.44 .69" />
                                                        <path d="M15.44 20.31a9 9 0 0 0 2.92 -1.95" />
                                                        <path d="M20.31 15.44a9 9 0 0 0 .69 -3.44" />
                                                        <path d="M20.31 8.56a9 9 0 0 0 -1.95 -2.92" />
                                                        <path d="M15.44 3.69a9 9 0 0 0 -3.44 -.69" />
                                                        <path d="M9 12l2 2l4 -4" />
                                                    </svg>
                                                @endif
                                            </div>
                                            <div class="text-muted small">
                                                {{ $file->subject->name ?? 'General' }}
                                                <span class="mx-1">&bull;</span>
                                                {{ $file->resourceType->name ?? 'Doc' }}
                                            </div>
                                        </div>
                                    </div>
                                </td>

                                <td class="text-center">
                                    @if($file->status === 'active')
                                        <span class="badge bg-success-lt">Approved</span>
                                    @elseif($file->status === 'pending')
                                        <span class="badge bg-warning-lt">Pending</span>
                                    @else
                                        <span class="badge bg-danger-lt">Rejected</span>
                                    @endif
                                </td>

                                <td class="text-center">
                                    @if($file->visibility === 'public')
                                        <span class="text-success" title="Public" data-bs-toggle="tooltip"
                                            data-bs-original-title="Public">
                                            <svg xmlns=" http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                                fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                                stroke-linejoin="round"
                                                class="icon icon-tabler icons-tabler-outline icon-tabler-world text-success">
                                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                <path d="M3 12a9 9 0 1 0 18 0a9 9 0 0 0 -18 0" />
                                                <path d="M3.6 9h16.8" />
                                                <path d="M3.6 15h16.8" />
                                                <path d="M11.5 3a17 17 0 0 0 0 18" />
                                                <path d="M12.5 3a17 17 0 0 1 0 18" />
                                            </svg>
                                        </span>
                                    @else
                                        <span class="text-muted" title="Private"><svg xmlns="http://www.w3.org/2000/svg"
                                                width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                                class="icon icon-tabler icons-tabler-outline icon-tabler-lock">
                                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                <path
                                                    d="M5 13a2 2 0 0 1 2 -2h10a2 2 0 0 1 2 2v6a2 2 0 0 1 -2 2h-10a2 2 0 0 1 -2 -2v-6z" />
                                                <path d="M11 16a1 1 0 1 0 2 0a1 1 0 0 0 -2 0" />
                                                <path d="M8 11v-4a4 4 0 1 1 8 0v4" />
                                            </svg>
                                        </span>
                                    @endif
                                </td>

                                <td class="text-center">
                                    <div class="d-flex justify-content-center gap-3 text-muted small">
                                        <span title="Downloads">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                stroke-linecap="round" stroke-linejoin="round"
                                                class="icon icon-tabler icons-tabler-outline icon-tabler-download text-azure">
                                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                <path d="M4 17v2a2 2 0 0 0 2 2h12a2 2 0 0 0 2 -2v-2" />
                                                <path d="M7 11l5 5l5 -5" />
                                                <path d="M12 4l0 12" />
                                            </svg> {{ $file->download_count }}
                                        </span>
                                        <span title="Rating">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                stroke-linecap="round" stroke-linejoin="round"
                                                class="icon icon-tabler icons-tabler-outline icon-tabler-star text-warning me-1">
                                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                <path
                                                    d="M12 17.75l-6.172 3.245l1.179 -6.873l-5 -4.867l6.9 -1l3.086 -6.253l3.086 6.253l6.9 1l-5 4.867l1.179 6.873z" />
                                            </svg>{{ $file->average_rating ?? '0.0' }}
                                        </span>
                                    </div>
                                </td>

                                <td class="text-end text-muted small">
                                    {{ $file->upload_date->diffForHumans() }}
                                </td>

                                <td>
                                    <div class="dropdown">
                                        <a href="#" class="btn btn-action" data-bs-toggle="dropdown">
                                            <i class="ti ti-dots-vertical"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-end z-3"><button class="dropdown-item"
                                                @click="navigator.clipboard.writeText('{{ route('file.view', $file->slug) }}');
                                                        window.showToast('success', 'Link copied to clipboard!','special');">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                    viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                    stroke-linecap="round" stroke-linejoin="round"
                                                    class="icon icon-tabler icons-tabler-outline icon-tabler-copy">
                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                    <path
                                                        d="M7 7m0 2.667a2.667 2.667 0 0 1 2.667 -2.667h8.666a2.667 2.667 0 0 1 2.667 2.667v8.666a2.667 2.667 0 0 1 -2.667 2.667h-8.666a2.667 2.667 0 0 1 -2.667 -2.667z" />
                                                    <path
                                                        d="M4.012 16.737a2.005 2.005 0 0 1 -1.012 -1.737v-10c0 -1.1 .9 -2 2 -2h10c.75 0 1.158 .385 1.5 1" />
                                                </svg>Copy Link
                                            </button>
                                            <a href="{{ route('file.view', $file->slug)}}" class="dropdown-item"
                                                wire:navigate> <svg xmlns="http://www.w3.org/2000/svg" width="24"
                                                    height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                    stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                                    class="icon icon-tabler icons-tabler-outline icon-tabler-eye">
                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                    <path d="M10 12a2 2 0 1 0 4 0a2 2 0 0 0 -4 0" />
                                                    <path
                                                        d="M21 12c-2.4 4 -5.4 6 -9 6c-3.6 0 -6.6 -2 -9 -6c2.4 -4 5.4 -6 9 -6c3.6 0 6.6 2 9 6" />
                                                </svg> View Details
                                            </a>
                                            <a class="dropdown-item" href="#" wire:click.prevent="edit({{ $file->id }})">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                    viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                    stroke-linecap="round" stroke-linejoin="round"
                                                    class="icon icon-tabler icons-tabler-outline icon-tabler-edit">
                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                    <path d="M7 7h-1a2 2 0 0 0 -2 2v9a2 2 0 0 0 2 2h9a2 2 0 0 0 2 -2v-1" />
                                                    <path
                                                        d="M20.385 6.585a2.1 2.1 0 0 0 -2.97 -2.97l-8.415 8.385v3h3l8.385 -8.415z" />
                                                    <path d="M16 5l3 3" />
                                                </svg> Edit Details
                                            </a>

                                            <a class="dropdown-item" href="#"
                                                wire:click.prevent="toggleVisibility({{ $file->id }})">
                                                @if($file->visibility === 'public')
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                        viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                        stroke-linecap="round" stroke-linejoin="round"
                                                        class="icon icon-tabler icons-tabler-outline icon-tabler-lock">
                                                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                        <path
                                                            d="M5 13a2 2 0 0 1 2 -2h10a2 2 0 0 1 2 2v6a2 2 0 0 1 -2 2h-10a2 2 0 0 1 -2 -2v-6z" />
                                                        <path d="M11 16a1 1 0 1 0 2 0a1 1 0 0 0 -2 0" />
                                                        <path d="M8 11v-4a4 4 0 1 1 8 0v4" />
                                                    </svg> Make Private
                                                @else
                                                    <svg xmlns=" http://www.w3.org/2000/svg" width="24" height="24"
                                                        viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                        stroke-linecap="round" stroke-linejoin="round"
                                                        class="icon icon-tabler icons-tabler-outline icon-tabler-world text-success">
                                                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                        <path d="M3 12a9 9 0 1 0 18 0a9 9 0 0 0 -18 0" />
                                                        <path d="M3.6 9h16.8" />
                                                        <path d="M3.6 15h16.8" />
                                                        <path d="M11.5 3a17 17 0 0 0 0 18" />
                                                        <path d="M12.5 3a17 17 0 0 1 0 18" />
                                                    </svg> Make Public
                                                @endif
                                            </a>

                                            <div class="dropdown-divider"></div>

                                            <a class="dropdown-item text-danger" href="#"
                                                wire:click.prevent="$dispatch('confirm-delete', { id: {{ $file->id }} })">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                    viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                    stroke-linecap="round" stroke-linejoin="round"
                                                    class="icon icon-tabler icons-tabler-outline icon-tabler-trash">
                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                    <path d="M4 7l16 0" />
                                                    <path d="M10 11l0 6" />
                                                    <path d="M14 11l0 6" />
                                                    <path d="M5 7l1 12a2 2 0 0 0 2 2h8a2 2 0 0 0 2 -2l1 -12" />
                                                    <path d="M9 7v-3a1 1 0 0 1 1 -1h4a1 1 0 0 1 1 1v3" />
                                                </svg> Delete
                                            </a>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        @endforeach

                        @if($loopFlag)
                            <tr>
                                <td colspan="6">
                                    <div class="empty py-5">
                                        <div class="empty-icon">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                stroke-linecap="round" stroke-linejoin="round"
                                                class="icon icon-tabler icons-tabler-outline icon-tabler-folder-off text-muted">
                                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                <path
                                                    d="M8 4h1l3 3h7a2 2 0 0 1 2 2v8m-2 2h-14a2 2 0 0 1 -2 -2v-11a2 2 0 0 1 1.189 -1.829" />
                                                <path d="M3 3l18 18" />
                                            </svg>
                                        </div>
                                        <p class="empty-title">No files found</p>
                                        <p class="empty-subtitle text-muted">
                                            You haven't uploaded any study materials yet.
                                        </p>
                                        <div class="empty-action">
                                            <a href="{{ route('upload.create') }}" class="btn btn-primary">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                    viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                    stroke-linecap="round" stroke-linejoin="round"
                                                    class="icon icon-tabler icons-tabler-outline icon-tabler-plus">
                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                    <path d="M12 5l0 14" />
                                                    <path d="M5 12l14 0" />
                                                </svg> Upload First Note
                                            </a>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        @endif
                    </tbody>
                </table>
            </div>

            <div class="card-footer d-flex align-items-center">
                {{ $files->links() }}
            </div>
        </div>
    </div>

    @if($showModal)
        <div class="modal fade show" style="display: block; background: rgba(0,0,0,0.5);" tabindex="-1">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Edit File Details</h5>
                        <button type="button" class="btn-close" wire:click="closeModal"></button>
                    </div>
                    <div class="modal-body">
                        <form wire:submit.prevent="update">
                            <div class="mb-3">
                                <label class="form-label required">Title</label>
                                <input type="text" class="form-control @error('editTitle') is-invalid @enderror"
                                    wire:model="editTitle">
                                @error('editTitle') <div class="invalid-feedback">{{ $message }}</div> @enderror
                            </div>

                            <div class="mb-3">
                                <label class="form-label required">Description</label>
                                <textarea class="form-control @error('editDescription') is-invalid @enderror" rows="4"
                                    wire:model="editDescription"></textarea>
                                @error('editDescription') <div class="invalid-feedback">{{ $message }}</div> @enderror
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-link link-secondary" wire:click="closeModal">Cancel</button>
                        <button type="button" class="btn btn-primary ms-auto" wire:click="update">Save Changes</button>
                    </div>
                </div>
            </div>
        </div>
    @endif
</div>


@script
<script>
    // Listen for the specific confirm-delete event for THIS table only
    $wire.on('confirm-delete', (event) => {
        Swal.fire({
            title: "Are you sure?",
            text: "You won't be able to revert this!",
            icon: "warning",
            showCancelButton: true,
            confirmButtonColor: "#3085d6",
            cancelButtonColor: "#d33",
            confirmButtonText: "Yes, delete it!",
            theme: 'auto',
            reverseButtons: true,
            focusConfirm: true,
            customClass: {
                popup: 'swal-popup',
                confirmButton: 'btn btn-danger mx-2 fs-2',
                cancelButton: 'btn btn-default mx-2 fs-2'
            },
        }).then((result) => {
            if (result.isConfirmed) {
                // Dispatch to THIS specific table only
                Livewire.dispatch("destroy-file", {
                    id: event.id
                });
            }
        });
    });
</script>
@endscript