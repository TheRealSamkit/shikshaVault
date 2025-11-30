<div class="{{ $test }}">
    <div class="card">
        @php #
            if( count($items) === 0){
                $loopFlag = true;
            }
        @endphp
        <div class="card-header mb-0 justify-content-between">
            <div class="card-title">{{ $title }}</div>
            <div class="wrapper d-flex">
                <input type="text" wire:model.live.debounce.300ms="search"
                    class="form-control form-control-{{$inputSize}} {{ $loopFlag ? 'd-none' : '' }}" placeholder="Search {{ $title }}..">
                <a href="#" wire:click.prevent="create" wire:loading.attr="disabled"
                    class="btn btn-action p-0">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                        stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                        class="icon icon-tabler icons-tabler-outline icon-tabler-plus">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                        <path d="M12 5l0 14" />
                        <path d="M5 12l14 0" />
                    </svg>
                </a>

                <a href="#" class="btn btn-action {{ $loopFlag ? 'd-none' : '' }}" data-bs-toggle="dropdown">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                        stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                        class="icon icon-tabler icons-tabler-outline icon-tabler-dots-vertical m-0">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                        <path d="M12 12m-1 0a1 1 0 1 0 2 0a1 1 0 1 0 -2 0" />
                        <path d="M12 19m-1 0a1 1 0 1 0 2 0a1 1 0 1 0 -2 0" />
                        <path d="M12 5m-1 0a1 1 0 1 0 2 0a1 1 0 1 0 -2 0" />
                    </svg>
                </a>
            </div>
        </div>

        <div class="card-body">
            @if (session()->has('message'))
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    {{ session('message') }}
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            @endif
            <h1 wire:loading>Loading<span class="animated-dots"></span></h1>

            <div class="table-responsive" wire:loading.remove>
                <table class="table table-sm">
                    <thead>
                        <tr class="{{ $loopFlag ? 'd-none' : '' }}">
                            <th class="text-center">#</th>
                            @foreach($columns as $col)
                                <th>{{ $col['label'] }}</th>
                            @endforeach
                            <th class="w-1"></th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($items as $item)
                            <tr wire:key="row-{{ $item->id }}">
                                <td class="text-center align-middle">{{ $item->id }}</td>

                                @foreach($columns as $col)
                                    <td class="align-middle">{{ data_get($item, $col['key']) }}</td>
                                @endforeach

                                <td>
                                    <div class="dropdown">
                                        <a href="#" class="btn dropdown-toggle btn-action" data-bs-toggle="dropdown">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                stroke-linecap="round" stroke-linejoin="round"
                                                class="icon icon-tabler icons-tabler-outline icon-tabler-dots-vertical m-0">
                                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                <path d="M12 12m-1 0a1 1 0 1 0 2 0a1 1 0 1 0 -2 0" />
                                                <path d="M12 19m-1 0a1 1 0 1 0 2 0a1 1 0 1 0 -2 0" />
                                                <path d="M12 5m-1 0a1 1 0 1 0 2 0a1 1 0 1 0 -2 0" />
                                            </svg>
                                        </a>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#"
                                                wire:click.prevent="edit({{ $item->id }})">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                    viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                    stroke-linecap="round" stroke-linejoin="round"
                                                    class="icon icon-tabler icons-tabler-outline icon-tabler-pencil">
                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                    <path d="M4 20h4l10.5 -10.5a2.828 2.828 0 1 0 -4 -4l-10.5 10.5v4" />
                                                    <path d="M13.5 6.5l4 4" />
                                                </svg>
                                                Edit
                                            </a>
                                            <a class="dropdown-item text-danger" href="#"
                                                wire:click.prevent="$dispatch('confirm-delete-{{ Str::kebab($title) }}', { id: {{ $item->id }} })">
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
                                                </svg>
                                                Delete
                                            </a>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        @endforeach
                        @if($loopFlag)
                            <tr>
                                <td colspan="{{ count($columns) + 2 }}">
                                    <div class="empty">
                                        <div class="empty-icon">
                                            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24"
                                                viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
                                                stroke-linecap="round" stroke-linejoin="round">
                                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                <circle cx="12" cy="12" r="9" />
                                                <line x1="9" y1="10" x2="9.01" y2="10" />
                                                <line x1="15" y1="10" x2="15.01" y2="10" />
                                                <path d="M9.5 15.25a3.5 3.5 0 0 1 5 0" />
                                            </svg>
                                        </div>
                                        <p class="empty-title">No {{$title}} found</p>
                                    </div>
                                </td>
                            </tr>
                        @endif
                    </tbody>
                </table>

                {{ $items->links('livewire.custom-pagination') }}
            </div>
        </div>
    </div>
 @if($showModal)
        <div class="modal fade show" style="display: block;" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">{{ $editMode ? 'Edit' : 'Create' }} {{ Str::singular($title) }}</h5>
                        <button type="button" class="btn-close" wire:click="closeModal"></button>
                    </div>
                    <div class="modal-body">
                        <form wire:submit.prevent="save">
                            @if($title === 'Subjects')
                                <div class="mb-3">
                                    <label class="form-label">Name</label>
                                    <input type="text" class="form-control @error('formData.name') is-invalid @enderror" 
                                           wire:model="formData.name">
                                    @error('formData.name') <div class="invalid-feedback">{{ $message }}</div> @enderror
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Code</label>
                                    <input type="text" class="form-control @error('formData.code') is-invalid @enderror" 
                                           wire:model="formData.code">
                                    @error('formData.code') <div class="invalid-feedback">{{ $message }}</div> @enderror
                                </div>

                            @elseif($title === 'Academic Fields')
                                <div class="mb-3">
                                    <label class="form-label">Name</label>
                                    <input type="text" class="form-control @error('formData.name') is-invalid @enderror" 
                                           wire:model="formData.name">
                                    @error('formData.name') <div class="invalid-feedback">{{ $message }}</div> @enderror
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Slug</label>
                                    <input type="text" class="form-control @error('formData.slug') is-invalid @enderror" 
                                           wire:model="formData.slug">
                                    @error('formData.slug') <div class="invalid-feedback">{{ $message }}</div> @enderror
                                </div>

                            @elseif($title === 'Program Streams')
                                <div class="mb-3">
                                    <label class="form-label">Name</label>
                                    <input type="text" class="form-control @error('formData.name') is-invalid @enderror" 
                                           wire:model="formData.name">
                                    @error('formData.name') <div class="invalid-feedback">{{ $message }}</div> @enderror
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Slug</label>
                                    <input type="text" class="form-control @error('formData.slug') is-invalid @enderror" 
                                           wire:model="formData.slug">
                                    @error('formData.slug') <div class="invalid-feedback">{{ $message }}</div> @enderror
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Academic Field</label>
                                    <select class="form-select @error('formData.academic_field_id') is-invalid @enderror" 
                                            wire:model="formData.academic_field_id">
                                        <option value="">Select Academic Field</option>
                                        @foreach($this->getDropdownOptions('academic_field_id') as $id => $name)
                                            <option value="{{ $id }}">{{ $name }}</option>
                                        @endforeach
                                    </select>
                                    @error('formData.academic_field_id') <div class="invalid-feedback">{{ $message }}</div> @enderror
                                </div>

                            @elseif($title === 'Program Stream Levels')
                                <div class="mb-3">
                                    <label class="form-label">Program Stream</label>
                                    <select class="form-select @error('formData.program_stream_id') is-invalid @enderror" 
                                            wire:model="formData.program_stream_id">
                                        <option value="">Select Program Stream</option>
                                        @foreach($this->getDropdownOptions('program_stream_id') as $id => $name)
                                            <option value="{{ $id }}">{{ $name }}</option>
                                        @endforeach
                                    </select>
                                    @error('formData.program_stream_id') <div class="invalid-feedback">{{ $message }}</div> @enderror
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Academic Level</label>
                                    <select class="form-select @error('formData.academic_level_id') is-invalid @enderror" 
                                            wire:model="formData.academic_level_id">
                                        <option value="">Select Academic Level</option>
                                        @foreach($this->getDropdownOptions('academic_level_id') as $id => $name)
                                            <option value="{{ $id }}">{{ $name }}</option>
                                        @endforeach
                                    </select>
                                    @error('formData.academic_level_id') <div class="invalid-feedback">{{ $message }}</div> @enderror
                                </div>

                            @elseif($title === 'Curriculum Subjects')
                                <div class="mb-3">
                                    <label class="form-label">Subject</label>
                                    <select class="form-select @error('formData.subject_id') is-invalid @enderror" 
                                            wire:model="formData.subject_id">
                                        <option value="">Select Subject</option>
                                        @foreach($this->getDropdownOptions('subject_id') as $id => $name)
                                            <option value="{{ $id }}">{{ $name }}</option>
                                        @endforeach
                                    </select>
                                    @error('formData.subject_id') <div class="invalid-feedback">{{ $message }}</div> @enderror
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Program Stream Level</label>
                                    <select class="form-select @error('formData.program_stream_level_id') is-invalid @enderror" 
                                            wire:model="formData.program_stream_level_id">
                                        <option value="">Select Program Stream Level</option>
                                        @foreach($this->getDropdownOptions('program_stream_level_id') as $id => $name)
                                            <option value="{{ $id }}">{{ $name }}</option>
                                        @endforeach 
                                    </select>
                                    @error('formData.program_stream_level_id') <div class="invalid-feedback">{{ $message }}</div> @enderror
                                </div>

                            @elseif($title === 'Academic Levels')
                                <div class="mb-3">
                                    <label class="form-label">Name</label>
                                    <input type="text" class="form-control @error('formData.name') is-invalid @enderror" 
                                           wire:model="formData.name">
                                    @error('formData.name') <div class="invalid-feedback">{{ $message }}</div> @enderror
                                </div>
                            @elseif($title === 'Resource Types')
                                <div class="mb-3">
                                    <label class="form-label">Name</label>
                                    <input type="text" class="form-control @error('formData.name') is-invalid @enderror" 
                                           wire:model="formData.name">
                                    @error('formData.name') <div class="invalid-feedback">{{ $message }}</div> @enderror
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Slug</label>
                                    <input type="text" class="form-control @error('formData.slug') is-invalid @enderror" 
                                           wire:model="formData.slug">
                                    @error('formData.slug') <div class="invalid-feedback">{{ $message }}</div> @enderror
                                </div>
                            @endif
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" wire:click="closeModal" wire:loading.attr="disabled">Cancel</button>
                        <button type="button" class="btn btn-primary" wire:click="save" wire:loading.attr="disabled">
                            {{ $editMode ? 'Update' : 'Create' }}
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal-backdrop fade show"></div>
    @endif
</div>

@script
<script>
    // Listen for the specific confirm-delete event for THIS table only
    $wire.on('confirm-delete-{{ Str::kebab($title) }}', (event) => {
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
                Livewire.dispatch("destroy-{{ Str::kebab($title) }}", {
                    id: event.id
                });
            }
        });
    });
</script>
@endscript