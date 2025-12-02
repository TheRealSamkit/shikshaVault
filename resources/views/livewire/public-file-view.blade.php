<div class="wrapper">
    <div class="row row-cards">
        
        <!-- Left Column: File Details -->
        <div class="col-lg-8">
            <div class="card h-100">
                <div class="card-body">
                    <div class="d-flex">
                        <h2 class="fs-1 m-0 d-flex justify-content-between align-items-center">
                            <span>
                                <i class="ti ti-file-type-{{ $file->file_type ?? 'pdf' }} text-danger me-1"></i>
                                {{ $file->title }}
                            </span>
                            @if($file->verified)
                                <i class="ti ti-circle-dashed-check text-success ms-2" title="Verified Resource"></i>
                            @endif
                        </h2>
                        
                        <!-- Copy Link -->
                        <div class="col-auto ms-auto d-print-none" x-data="{ copied: false }">
                            <button @click="
                                navigator.clipboard.writeText('{{ route('file.view', $file->slug) }}');
                                copied = true;
                                setTimeout(() => copied = false, 2000)" 
                                class="btn btn-icon" 
                                :class="copied ? 'btn-success' : 'btn-ghost-secondary'"
                                data-bs-toggle="tooltip" title="Copy Link">
                                
                                <svg x-show="!copied" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="icon icon-tabler icons-tabler-outline icon-tabler-copy">
                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                    <path d="M7 7m0 2.667a2.667 2.667 0 0 1 2.667 -2.667h8.666a2.667 2.667 0 0 1 2.667 2.667v8.666a2.667 2.667 0 0 1 -2.667 2.667h-8.666a2.667 2.667 0 0 1 -2.667 -2.667z" />
                                    <path d="M4.012 16.737a2.005 2.005 0 0 1 -1.012 -1.737v-10c0 -1.1 .9 -2 2 -2h10c.75 0 1.158 .385 1.5 1" />
                                </svg>
                                
                                <svg x-show="copied" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="icon icon-tabler icons-tabler-outline icon-tabler-check" style="display: none;">
                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                    <path d="M5 12l5 5l10 -10" />
                                </svg>
                            </button>
                        </div>
                    </div>

                    <div class="h3 text-secondary w-75 card-text mt-3">
                        {{ $file->description ?? 'No description provided.' }}
                    </div>

                    <hr class="my-3">

                    <!-- Metadata Tags -->
                    <div class="col-lg-12 bg-muted-lt p-3 rounded">
                        <div class="fw-semibold text-muted mb-2">Details</div>
                        <div class="row g-3">
                            <div class="col-md-6">
                                <div class="text-muted text-uppercase font-weight-bold text-xs">Author/Uploader</div>
                                <div class="font-weight-medium">{{ $file->user->username ?? 'Unknown' }}</div>
                            </div>
                            <div class="col-md-6">
                                <div class="text-muted text-uppercase font-weight-bold text-xs">Publisher/Institution</div>
                                <div class="font-weight-medium">{{ $file->institution->name ?? 'Not Specified' }}</div>
                            </div>
                            <div class="col-md-6">
                                <div class="text-muted text-uppercase font-weight-bold text-xs">Subject</div>
                                <div class="font-weight-medium">{{ $file->subject->name ?? 'General' }}</div>
                            </div>
                             <div class="col-md-6">
                                <div class="text-muted text-uppercase font-weight-bold text-xs">Academic Level</div>
                                <div class="font-weight-medium">{{ $file->academicLevel->name ?? 'N/A' }}</div>
                            </div>
                            <div class="col-md-6">
                                <div class="text-muted text-uppercase font-weight-bold text-xs">Resource Type</div>
                                <div class="font-weight-medium">{{ $file->resourceType->name ?? 'File' }}</div>
                            </div>
                             <div class="col-md-6">
                                <div class="text-muted text-uppercase font-weight-bold text-xs">File Size</div>
                                <div class="font-weight-medium">{{ round($file->file_size / 1024, 2) }} KB</div>
                            </div>
                        </div>
                    </div>
                    
                    <hr class="my-3">
                    
                    <!-- Stats -->
                    <div class="d-flex justify-content-between align-items-center flex-wrap">
                        <div class="d-flex align-items-center gap-4">
                            <!-- Downloads -->
                            <div class="d-flex align-items-center text-muted" title="Downloads">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="icon me-1">
                                    <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                    <path d="M4 17v2a2 2 0 0 0 2 2h12a2 2 0 0 0 2 -2v-2" />
                                    <path d="M7 11l5 5l5 -5" />
                                    <path d="M12 4l0 12" />
                                </svg>
                                {{ $file->download_count }}
                            </div>

                            <!-- Rating -->
                            <div class="d-flex align-items-center text-warning" title="Average Rating">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="currentColor" class="icon me-1">
                                    <path d="M12 17.75l-6.172 3.245l1.179 -6.873l-5 -4.867l6.9 -1l3.086 -6.253l3.086 6.253l6.9 1l-5 4.867l1.179 6.873z" />
                                </svg>
                                {{ number_format($file->average_rating ?? 0, 1) }}
                            </div>

                            <!-- Report Count -->
                            <div class="d-flex align-items-center text-danger" title="Reports">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="icon me-1">
                                    <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                    <path d="M5 5a5 5 0 0 1 7 0a5 5 0 0 0 7 0v9a5 5 0 0 1 -7 0a5 5 0 0 0 -7 0v-9z" />
                                    <path d="M5 21v-7" />
                                </svg>
                                {{ $reportCount }}
                            </div>
                        </div>

                        <!-- Upload Date -->
                         <div class="text-muted text-sm">Uploaded {{ $file->upload_date ? \Carbon\Carbon::parse($file->upload_date)->diffForHumans() : '' }}</div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Right Column: Actions & Reports -->
        <div class="col-lg-4">
            <!-- 1. Actions Card -->
            <div class="card mb-3">
                <div class="card-header">
                    <h3 class="card-title">Actions</h3>
                </div>
                <div class="card-body">
                    @auth
                        <div class="d-grid gap-2">
                            <!-- Download Button -->
                            <button wire:click="processAction('download')" class="btn btn-primary btn-lg" wire:loading.attr="disabled">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="icon icon-tabler icons-tabler-outline icon-tabler-download me-2">
                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                    <path d="M4 17v2a2 2 0 0 0 2 2h12a2 2 0 0 0 2 -2v-2" />
                                    <path d="M7 11l5 5l5 -5" />
                                    <path d="M12 4l0 12" />
                                </svg>
                                Download
                            </button>

                            <!-- Preview Button (Visible ONLY if supported: PDF or Image) -->
                            @if($this->canPreview)
                                <button wire:click="processAction('preview')" class="btn btn-ghost-primary btn-lg" wire:loading.attr="disabled">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="icon icon-tabler icons-tabler-outline icon-tabler-eye me-2">
                                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                        <path d="M10 12a2 2 0 1 0 4 0a2 2 0 0 0 -4 0" />
                                        <path d="M21 12c-2.4 4 -5.4 6 -9 6c-3.6 0 -6.6 -2 -9 -6c2.4 -4 5.4 -6 9 -6c3.6 0 6.6 2 9 6" />
                                    </svg>
                                    Preview
                                </button>
                            @endif
                        </div>
                    @else
                        <div class="text-center p-3">
                            <p class="mb-3 text-muted">Please login to access this file.</p>
                            <a href="{{ route('login') }}" class="btn btn-outline-primary w-100">Login</a>
                        </div>
                    @endauth
                </div>
            </div>

            <!-- 2. Report Card -->
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title text-danger">Report File</h3>
                </div>
                <div class="card-body">
                    @auth
                        @if($userHasReported)
                            <div class="alert alert-success" role="alert">
                                You have already reported this file.
                            </div>
                        @else
                            <form wire:submit.prevent="submitReport">
                                <div class="mb-3">
                                    <label class="form-label required">Reason</label>
                                    <select wire:model="reportReason" class="form-select @error('reportReason') is-invalid @enderror">
                                        <option value="">Select Reason</option>
                                        <option value="Spam">Spam</option>
                                        <option value="False Information">False Information</option>
                                        <option value="Inappropriate Content">Inappropriate Content</option>
                                        <option value="Copyright Violation">Copyright Violation</option>
                                        <option value="Other">Other</option>
                                    </select>
                                    @error('reportReason') <div class="invalid-feedback">{{ $message }}</div> @enderror
                                </div>
                                
                                <div class="mb-3">
                                    <label class="form-label">Details</label>
                                    <textarea wire:model="reportDetails" class="form-control" rows="2" placeholder="Specific details..."></textarea>
                                </div>
                                
                                <button type="submit" class="btn btn-outline-danger w-100">Submit Report</button>
                            </form>
                        @endif
                    @else
                        <div class="text-center text-muted">Login to report issues.</div>
                    @endauth
                </div>
            </div>
        </div>

        <!-- Bottom Row: Feedback & Ratings -->
        <div class="col-12 mt-4">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Reviews & Feedback</h3>
                </div>
                <div class="card-body">
                    @auth
                        @if(!$userHasRated)
                            <div class="mb-4 border-bottom pb-4">
                                <h4 class="mb-3">Leave a Review</h4>
                                <form wire:submit.prevent="submitFeedback">
                                    <div class="mb-3">
                                        <label class="form-label required">Rating</label>
                                        <div class="d-flex align-items-center">
                                            @for($i = 1; $i <= 5; $i++)
                                                <button type="button" 
                                                        wire:click="setRating({{ $i }})" 
                                                        class="btn btn-link p-0 me-1 text-decoration-none">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" 
                                                         viewBox="0 0 24 24" 
                                                         fill="{{ $rating >= $i ? 'currentColor' : 'none' }}" 
                                                         stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" 
                                                         class="icon icon-tabler icon-tabler-star {{ $rating >= $i ? 'text-warning' : 'text-muted' }}">
                                                        <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                                        <path d="M12 17.75l-6.172 3.245l1.179 -6.873l-5 -4.867l6.9 -1l3.086 -6.253l3.086 6.253l6.9 1l-5 4.867l1.179 6.873z" />
                                                    </svg>
                                                </button>
                                            @endfor
                                            <span class="ms-2 badge bg-blue-lt">{{ $rating > 0 ? $rating . '/5' : 'Select Stars' }}</span>
                                        </div>
                                        @error('rating') <div class="text-danger small mt-1">{{ $message }}</div> @enderror
                                    </div>

                                    <div class="mb-3">
                                        <label class="form-label">Comment</label>
                                        <textarea wire:model="comment" class="form-control" rows="3" placeholder="Share your experience with this material..."></textarea>
                                        @error('comment') <div class="text-danger small mt-1">{{ $message }}</div> @enderror
                                    </div>

                                    <button type="submit" class="btn btn-primary">Submit Review</button>
                                </form>
                            </div>
                        @else
                            <div class="alert alert-info mb-4">
                                You have already reviewed this file. Thank you!
                            </div>
                        @endif
                    @endauth

                    <!-- Reviews List -->
                    <div class="list-group list-group-flush">
                        @forelse($reviews as $review)
                            <div class="list-group-item ps-0 pe-0">
                                <div class="d-flex w-100 justify-content-between">
                                    <div class="d-flex align-items-center">
                                        <span class="avatar avatar-xs me-2 bg-secondary text-white">{{ substr($review->user->username ?? 'U', 0, 1) }}</span>
                                        <h5 class="mb-0">{{ $review->user->username }}</h5>
                                    </div>
                                    <small class="text-muted">{{ $review->created_at->diffForHumans() }}</small>
                                </div>
                                <div class="mb-1 mt-1 text-warning">
                                    @for($i = 0; $i < 5; $i++)
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" 
                                             fill="{{ $i < $review->rating ? 'currentColor' : 'none' }}" 
                                             stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" 
                                             class="icon icon-tabler icon-tabler-star">
                                            <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                            <path d="M12 17.75l-6.172 3.245l1.179 -6.873l-5 -4.867l6.9 -1l3.086 -6.253l3.086 6.253l6.9 1l-5 4.867l1.179 6.873z" />
                                        </svg>
                                    @endfor
                                </div>
                                <p class="mb-1 text-muted">{{ $review->comment }}</p>
                            </div>
                        @empty
                            <div class="text-center text-muted py-4">No reviews yet. Be the first to rate!</div>
                        @endforelse
                    </div>
                    
                    <div class="mt-3">
                        {{ $reviews->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Reusable Image Modal Component -->
    @livewire('image-preview-modal')

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