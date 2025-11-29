@extends('layouts.app')

@section('title', 'Upload Note')

@section('content')
    <div class="page-header mt-0 mb-4">
        <div class="container-fluid">
            <div class="row g-2 align-items-center">
                <div class="col">
                    <h2 class="page-title">Upload Study Material</h2>
                    <div class="page-pretitle mt-1">Share your notes with the community and earn tokens.</div>
                </div>
                <div class="col-auto ms-auto d-print-none">
                    <div class="btn-list">
                        <span class="d-none d-sm-inline">
                            <a href="#" class="btn btn-1"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                    viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                    stroke-linecap="round" stroke-linejoin="round"
                                    class="icon icon-tabler icons-tabler-outline icon-tabler-server-2">
                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                    <path
                                        d="M3 4m0 3a3 3 0 0 1 3 -3h12a3 3 0 0 1 3 3v2a3 3 0 0 1 -3 3h-12a3 3 0 0 1 -3 -3z" />
                                    <path
                                        d="M3 12m0 3a3 3 0 0 1 3 -3h12a3 3 0 0 1 3 3v2a3 3 0 0 1 -3 3h-12a3 3 0 0 1 -3 -3z" />
                                    <path d="M7 8l0 .01" />
                                    <path d="M7 16l0 .01" />
                                    <path d="M11 8h6" />
                                    <path d="M11 16h6" />
                                </svg>My Uploads</a>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="card shadow-sm">
        <div class="card-body">

            @if ($errors->any())
                <div class="alert alert-danger mb-4">
                    <ul class="mb-0">
                        <li>Test</li>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif

            <form method="POST" action="{{ route('upload.store') }}" enctype="multipart/form-data">
                @csrf
                <div class="row">
                    <div class="col-md-6 mb-3"><label class="form-label required">Title</label>
                        <input type="text" class="form-control @error('title') is-invalid @enderror" name="title"
                            placeholder="e.g. Thermodynamics Unit 1 Notes" required>
                    </div>
                    <div class="col-md-6 mb-3"> <label class="form-label">Description</label>
                        <textarea class="form-control" name="description" rows="3"
                            placeholder="Briefly describe what this file contains..."></textarea>
                    </div>
                </div>
                <div class="mb-3">
                    <label class="form-label required">Title</label>
                    <input type="text" class="form-control @error('title') is-invalid @enderror" name="title"
                        placeholder="e.g. Thermodynamics Unit 1 Notes" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Description</label>
                    <textarea class="form-control" name="description" rows="3"
                        placeholder="Briefly describe what this file contains..."></textarea>
                </div>

                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label class="form-label required">Institution</label>
                        <select name="institution_id" class="form-select" required>
                            <option value="">Select College...</option>
                            @foreach($institutions as $id => $name)
                                <option value="{{ $id }}">{{ $name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label class="form-label required">Subject</label>
                        <select name="subject_id" class="form-select" required>
                            <option value="">Select Subject...</option>
                            @foreach($subjects as $id => $name)
                                <option value="{{ $id }}">{{ $name }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>

                <!-- 3. File Input (Visual Dropzone Look) -->
                <div class="mb-4 mt-3">
                    <label class="form-label required">Document File</label>
                    <input type="file" class="form-control" name="document" accept=".pdf,.docx,.doc,.ppt,.pptx,.txt"
                        required>
                    <div class="form-text text-muted">
                        Supported: PDF, DOCX, PPT. Max size: 10MB.
                    </div>
                </div>

                <!-- 4. Submit -->
                <div class="d-flex justify-content-end gap-2">
                    <a href="{{ route('dashboard') }}" class="btn btn-ghost-secondary">Cancel</a>
                    <button type="submit" class="btn btn-primary">
                        <i class="ti ti-cloud-upload me-2"></i> Upload File
                    </button>
                </div>

            </form>
        </div>
    </div>
@endsection