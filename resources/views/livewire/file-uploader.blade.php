<div class="container-fluid">

    <script>
        document.addEventListener('livewire:init', () => {
            Livewire.on('upload-success', (data) => {
                let msg = data.message || (data[0] && data[0].message) || 'Success';
                window.showToast('success', msg);
            });
        });
    </script>

    @if (session()->has('success'))
        <div class="alert alert-success alert-dismissible fade show mb-4 shadow-sm" role="alert">
            <i class="ti ti-circle-check me-2"></i>{{ session('success') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        </div>
    @endif

    <div class="card border-0 shadow-sm">
        <div class="card-body p-4">
            <form wire:submit.prevent="save">

                <div class="mb-5">
                    <label class="form-label fw-bold text-uppercase text-muted small ls-1">File Attachment <span class="text-danger">*</span></label>
                    
                    @if($file)
                        <div wire:key="file-preview-card" class="card bg-body-tertiary border p-3">
                            <div class="d-flex align-items-center">
                                <div class="me-3">
                                    <i class="ti {{ $this->fileIcon }} display-6"></i>
                                </div>
                                <div class="flex-grow-1 overflow-hidden">
                                    <h5 class="mb-1 text-truncate fw-bold">{{ $file->getClientOriginalName() }}</h5>
                                    <p class="mb-0 text-muted small">
                                        {{ number_format($file->getSize() / 1024, 2) }} KB
                                    </p>
                                </div>
                                <div class="ms-3">
                                    <button type="button" wire:click="removeFile" class="btn btn-icon btn-action" title="Remove file">
                                        <i class="ti ti-x"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    @else
                        <div wire:key="dropzone-area"
                             wire:ignore 
                             x-data="{ 
                                uploading: false, 
                                progress: 0,
                                initDropzone() {
                                    this.$nextTick(() => {
                                        if (!window.Dropzone) return;
                                        if (this.$refs.dropzoneElement.dropzone) return;

                                        let dz = new Dropzone(this.$refs.dropzoneElement, {
                                            url: '#', 
                                            autoProcessQueue: false,
                                            maxFiles: 1,
                                            maxFilesize: 10,
                                            acceptedFiles: 'image/*,.pdf,.doc,.docx,.ppt,.pptx,.xls,.xlsx',
                                            addRemoveLinks: false,
                                            clickable: true, 
                                            dictDefaultMessage: '',
                                            
                                            // FIX: Logic to handle progress
                                            addedfile: (file) => {
                                                this.uploading = true; // 1. Show Progress Bar
                                                this.progress = 0;

                                                @this.upload('file', file, 
                                                    (uploadedFilename) => {
                                                        // Success
                                                        this.uploading = false;
                                                    }, 
                                                    () => {
                                                        // Error
                                                        this.uploading = false;
                                                        console.error('Upload failed');
                                                        dz.removeFile(file);
                                                        window.showToast('error', 'Upload failed');
                                                    }, 
                                                    (event) => {
                                                        // Progress Event
                                                        this.progress = event.detail.progress;
                                                    }
                                                );
                                            }
                                        });
                                    });
                                }
                             }" 
                             x-init="initDropzone()" class=""
                        >
                            <div x-ref="dropzoneElement" class="dropzone border-2 border-dashed rounded-3 text-center d-flex align-items-center justify-content-center p-5" style="min-height: 220px; cursor: pointer;">
                                
                                <div x-show="!uploading">
                                    <i class="ti ti-cloud-upload display-3 text-primary opacity-75 mb-3"></i>
                                    <h5 class="fw-bold text-body">Click here or Drag files to upload</h5>
                                    <p class="text-muted small mb-0">Max Size: 10MB</p>
                                    <p class="text-muted small">Allowed: Images, PDF, Word, Excel, PPT</p>
                                </div>

                                <div x-show="uploading" style="display: none;" class="w-100 px-5">
                                    <div class="d-flex justify-content-between mb-1">
                                        <span class="text-primary fw-bold small">Uploading...</span>
                                        <span class="text-primary fw-bold small" x-text="progress + '%'"></span>
                                    </div>
                                    <div class="progress" style="height: 6px;">
                                        <div class="progress-bar bg-primary" role="progressbar" 
                                             :style="'width: ' + progress + '%'" 
                                             aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    @endif
                    
                    @error('file') <div class="text-danger mt-2 small"><i class="ti ti-alert-circle me-1"></i>{{ $message }}</div> @enderror
                </div>

                <hr class="my-5 border-light">

                <div class="row g-4 mb-4">
                    <div class="col-12">
                        <label class="form-label fw-bold text-uppercase text-muted small ls-1">Resource Title <span class="text-danger">*</span></label>
                        <input type="text" wire:model="title" class="form-control form-control-lg @error('title') is-invalid @enderror" placeholder="e.g., Advanced Java Data Structures Notes">
                        @error('title') <div class="invalid-feedback">{{ $message }}</div> @enderror
                    </div>

                    <div class="col-12">
                        <label class="form-label fw-bold text-uppercase text-muted small ls-1">Description <span class="text-danger">*</span></label>
                        <textarea wire:model="description" class="form-control @error('description') is-invalid @enderror" rows="3" placeholder="Describe the contents..."></textarea>
                        @error('description') <div class="invalid-feedback">{{ $message }}</div> @enderror
                    </div>
                </div>

                <h6 class="fw-bold text-uppercase text-muted small ls-1 mb-4">Academic Categorization</h6>
                <div class="row g-4 mb-4">
                    <div class="col-md-6">
                        <label class="form-label fw-semibold">Academic Discipline</label>
                        <select wire:model.live="academic_field_id" class="form-select @error('academic_field_id') is-invalid @enderror">
                            <option value="">Select Discipline...</option>
                            @foreach($academic_fields as $field)
                                <option value="{{ $field->id }}">{{ $field->name }}</option>
                            @endforeach
                        </select>
                        @error('academic_field_id') <div class="invalid-feedback">{{ $message }}</div> @enderror
                    </div>

                    <div class="col-md-6">
                        <label class="form-label fw-semibold">Program / Stream</label>
                        <select wire:model.live="program_stream_id" class="form-select @error('program_stream_id') is-invalid @enderror" @if(!$academic_field_id) disabled @endif>
                            <option value="">Select Stream...</option>
                            @foreach($program_streams as $stream)
                                <option value="{{ $stream->id }}">{{ $stream->name }}</option>
                            @endforeach
                        </select>
                        @if($academic_field_id && $program_streams->isEmpty())
                            <div class="text-warning small mt-1"><i class="ti ti-info-circle me-1"></i>No streams found.
                            </div>
                        @endif
                        @error('program_stream_id') <div class="invalid-feedback">{{ $message }}</div> @enderror
                    </div>

                    <div class="col-md-6">
                        <label class="form-label fw-semibold">Academic Level / Year</label>
                        <select wire:model.live="program_stream_level_id" class="form-select @error('program_stream_level_id') is-invalid @enderror" @if(!$program_stream_id) disabled @endif>
                            <option value="">Select Level...</option>
                            @foreach($stream_levels as $level)
                                <option value="{{ $level->id }}">{{ $level->academicLevels->name ?? 'Unknown' }}</option>
                            @endforeach
                        </select>
                        @if($program_stream_id && $stream_levels->isEmpty())
                            <div class="text-warning small mt-1"><i class="ti ti-info-circle me-1"></i>No Academic Level
                                found.
                            </div>
                        @endif
                        @error('program_stream_level_id') <div class="invalid-feedback">{{ $message }}</div> @enderror
                    </div>

                    <div class="col-md-6">
                        <label class="form-label fw-semibold">Subject / Course</label>
                        <select wire:model="subject_id" class="form-select @error('subject_id') is-invalid @enderror" @if(!$program_stream_id) disabled @endif>
                            <option value="">Select Subject...</option>
                            @foreach($subjects as $item)
                                <option value="{{ $item->id }}">{{ $item->name }}</option>
                            @endforeach
                        </select>
                        @if($program_stream_id && count($subjects) == 0)
                            <div class="text-warning small mt-1"><i class="ti ti-alert-triangle me-1"></i>No subjects mapped.</div>
                        @endif
                        @error('subject_id') <div class="invalid-feedback">{{ $message }}</div> @enderror
                    </div>
                </div>

                <hr class="my-5 border-light">

                <h6 class="fw-bold text-uppercase text-muted small ls-1 mb-4">Context & Metadata</h6>
                <div class="row g-4 mb-4">
                    <div class="col-md-6">
                        <label class="form-label fw-semibold">Resource Type</label>
                        <select wire:model="resource_type_id" class="form-select @error('resource_type_id') is-invalid @enderror">
                            <option value="">Select Type...</option>
                            @foreach($resource_types as $type)
                                <option value="{{ $type->id }}">{{ $type->name }}</option>
                            @endforeach
                        </select>
                        @error('resource_type_id') <div class="invalid-feedback">{{ $message }}</div> @enderror
                    </div>

                    <div class="col-md-6 position-relative" x-data="{ focused: false }" @click.outside="focused = false">
                        <label class="form-label fw-semibold">Institution / University</label>
                        
                        <div x-show="focused && $wire.institution_query.length > 0" 
                             class="list-group position-absolute w-100 shadow border mb-1 bg-body" 
                             style="z-index: 1000; max-height: 250px; overflow-y: auto; bottom: 100%; display: none;">
                            @if(!empty($institution_results) && count($institution_results) > 0)
                                @foreach($institution_results as $inst)
                                    <button type="button" 
                                            class="list-group-item list-group-item-action" 
                                            wire:click="selectInstitution({{ $inst['id'] }}, '{{ addslashes($inst['name']) }}')"
                                            @click="focused = false">
                                        {{ $inst['name'] }}
                                    </button>
                                @endforeach
                            @else
                                <div class="list-group-item text-muted small p-3 bg-body">
                                    <i class="ti ti-search-off me-1"></i> No data found.
                                </div>
                            @endif
                        </div>

                        <div class="input-group">
                            <span class="input-group-text bg-body"><i class="ti ti-search"></i></span>
                            <input type="text" class="form-control @error('institution_id') is-invalid @enderror {{ $institution_id ? 'is-valid' : '' }}" 
                                   placeholder="Type to search..." 
                                   wire:model.live.debounce.300ms="institution_query" 
                                   x-on:focus="focused = true" 
                                   wire:focus="loadInitialInstitutions">
                        </div>
                        
                        <input type="hidden" wire:model="institution_id">
                        @error('institution_id') <div class="text-danger small mt-1">{{ $message }}</div> @enderror
                    </div>
                </div>

                <div class="d-grid mt-5">
                    <button type="submit" class="btn btn-primary btn-lg fw-bold py-3 shadow-sm" wire:loading.attr="disabled">
                        <span wire:loading.remove><i class="ti ti-cloud-up me-2"></i> Confirm & Upload</span>
                        <span wire:loading><span class="spinner-border spinner-border-sm me-2"></span> Validating...</span>
                    </button>
                </div>

            </form>
        </div>
    </div>

    <style>
        .dropzone {
            transition: all 0.3s ease;
        }
        .dropzone:hover, .dropzone.dz-drag-hover {
            border-color: var(--bs-primary) !important;
            background-color: rgba(var(--bs-primary-rgb), 0.05) !important;
        }
        .dz-preview .dz-image img {
            width: 100% !important;
            height: 100% !important;
            object-fit: cover;
        }
    </style>
</div>