@extends('layouts.app')

@section('title', 'Library')

@section('header')
    <div class="row g-2 align-items-center">
        <div class="col">
            <!-- Page pre-title -->
            <div class="page-pretitle">
                Overview
            </div>
            <h2 class="page-title">
                Community Library
            </h2>
        </div>
        <!-- Page title actions -->
        <div class="col-auto ms-auto d-print-none">
            <div class="btn-list">
                <a href="{{ route('upload.create') }}" class="btn btn-primary d-none d-sm-inline-block" wire:navigate>
                    <i class="ti ti-plus"></i>
                    Upload Note
                </a>
                <a href="{{ route('upload.create') }}" class="btn btn-primary d-sm-none btn-icon"
                    aria-label="Create new report" wire:navigate>
                    <i class="ti ti-plus"></i>
                </a>
            </div>
        </div>
    </div>
@endsection

@section('content')
    <div class="row g-4">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <form action="{{ route('dashboard') }}" method="GET">
                        <div class="row g-2">
                            <div class="col">
                                <div class="input-icon">
                                    <span class="input-icon-addon">
                                        <i class="ti ti-search"></i>
                                    </span>
                                    <input type="text" name="search" value="{{ request('search') }}" class="form-control"
                                        placeholder="Search for notes, authors...">
                                </div>
                            </div>
                            <div class="col-auto">
                                <select name="institution_id" class="form-select">
                                    <option value="">All Institutions</option>
                                    @foreach($institutions as $id => $name)
                                        <option value="{{ $id }}" {{ request('institution_id') == $id ? 'selected' : '' }}>
                                            {{ $name }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-auto">
                                <select name="subject_id" class="form-select">
                                    <option value="">All Subjects</option>
                                    @foreach($subjects as $id => $name)
                                        <option value="{{ $id }}" {{ request('subject_id') == $id ? 'selected' : '' }}>{{ $name }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-auto">
                                <button type="submit" class="btn btn-icon" aria-label="Button">
                                    <i class="ti ti-filter"></i>
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        @forelse($files as $file)
            <div class="col-sm-6 col-lg-4">
                <div class="card card-sm">
                    <div class="d-block">
                        <div class="card-img-top bg-muted-lt d-flex align-items-center justify-content-center"
                            style="height: 140px;">
                            @if(str_contains($file->file_type, 'pdf'))
                                <i class="ti ti-file-type-pdf fs-1 text-danger"></i>
                            @elseif(str_contains($file->file_type, 'image'))
                                <i class="ti ti-photo fs-1 text-success"></i>
                            @else
                                <i class="ti ti-file-text fs-1 text-secondary"></i>
                            @endif
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="d-flex align-items-center mb-3">
                            <span class="avatar me-3 rounded bg-blue-lt">
                                {{ strtoupper(substr($file->user->username, 0, 2)) }}
                            </span>
                            <div>
                                <div class="font-weight-medium">{{ $file->title }}</div>
                                <div class="text-secondary small">{{ $file->user->username }} •
                                    {{ $file->upload_date->diffForHumans() }}
                                </div>
                            </div>
                        </div>
                        <div class="text-secondary mb-3">
                            {{ Str::limit($file->description, 80) }}
                        </div>

                        <div class="d-flex align-items-center gap-2">
                            <!-- Badges -->
                            <span class="badge bg-blue-lt">{{ optional($file->institution)->name ?? 'General' }}</span>
                            <span class="badge bg-green-lt">{{ optional($file->subject)->name ?? 'Misc' }}</span>
                        </div>
                    </div>

                    <!-- Card Footer / Actions -->
                    <div class="card-footer">
                        <div class="d-flex justify-content-between align-items-center">
                            <!-- Stats -->
                            <div class="text-secondary small">
                                <i class="ti ti-download me-1"></i> {{ $file->download_count }}
                                <span class="mx-1">|</span>
                                <i class="ti ti-files me-1"></i> {{ number_format($file->file_size / 1024, 0) }} KB
                            </div>

                            <div class="d-flex gap-2">
                                @if(auth()->id() === $file->user_id)>
                                    <form action="{{ route('file.destroy', $file->id) }}" method="POST"
                                        onsubmit="return confirm('Delete this file?');">
                                        @csrf @method('DELETE')
                                        <button type="submit" class="btn btn-icon btn-outline-danger btn-sm" title="Delete">
                                            <i class="ti ti-trash"></i>
                                        </button>
                                    </form>
                                @else
                                    <div class="dropdown">
                                        <button class="btn btn-icon btn-ghost-warning btn-sm" data-bs-toggle="dropdown">
                                            <i class="ti ti-flag"></i>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-end">
                                            <form action="/* route('file.report', $file->id) */" method="POST">
                                                @csrf
                                                <button type="submit" name="reason" value="Spam" class="dropdown-item">Report
                                                    Spam</button>
                                                <button type="submit" name="reason" value="Inappropriate"
                                                    class="dropdown-item">Inappropriate</button>
                                            </form>
                                        </div>
                                    </div>
                                @endif

                                <!-- Download Button -->
                                <a href="{{ route('file.download', $file->slug) }}" class="btn btn-primary btn-sm">
                                    <i class="ti ti-download me-2"></i> Download
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @empty
            <!-- EMPTY STATE (If no files found) -->
            <div class="col-12">
                <div class="empty">
                    <div class="empty-icon">
                        <i class="ti ti-mood-empty fs-1"></i>
                    </div>
                    <p class="empty-title">No results found</p>
                    <p class="empty-subtitle text-secondary">
                        Try adjusting your search or filter to find what you're looking for.
                    </p>
                    <div class="empty-action">
                        <a href="{{ route('dashboard') }}" class="btn btn-primary">
                            <i class="ti ti-refresh me-2"></i> Reset Search
                        </a>
                    </div>
                </div>
            </div>
        @endforelse

        <div class="col-12 mt-4">
            {{ $files->links('pagination::bootstrap-5') }}
        </div>
    </div>
@endsection