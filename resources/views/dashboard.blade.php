@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10">
                <div class="d-flex justify-content-between align-items-center mb-4">
                    <h2>📚 Community Notes</h2>
                    <a href="{{ route('upload.create') }}" class="btn btn-primary">
                        Upload New File 📤
                    </a>
                </div>
                <div class="card mb-4">
                    <div class="card-body">
                        <form action="{{ route('dashboard') }}" method="GET" class="row g-3">

                            <div class="col-md-4">
                                <input type="text" name="search" class="form-control" placeholder="Search notes..."
                                    value="{{ request('search') }}">
                            </div>

                            <div class="col-md-3">
                                <select name="institution_id" class="form-select">
                                    <option value="">All Colleges</option>
                                    @foreach($institutions as $id => $name)
                                        <option value="{{ $id }}" {{ request('institution_id') == $id ? 'selected' : '' }}>
                                            {{ $name }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="col-md-3">
                                <select name="subject_id" class="form-select">
                                    <option value="">All Subjects</option>
                                    @foreach($subjects as $id => $name)
                                        <option value="{{ $id }}" {{ request('subject_id') == $id ? 'selected' : '' }}>
                                            {{ $name }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="col-md-2">
                                <button type="submit" class="btn btn-primary w-100">Filter 🔍</button>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="card">
                    <div class="card-header">Recent Uploads</div>

                    <div class="card-body">
                        @if($files->count() > 0)
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Title</th>
                                        <th>Author</th>
                                        <th>Type</th>
                                        <th>Category</th>
                                        <th>Size</th>
                                        <th>Date</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($files as $file)
                                        <tr>
                                            <td>
                                                <strong>{{ $file->title }}</strong>
                                                <br>
                                                <small class="text-muted">{{ Str::limit($file->description, 30) }}</small>
                                            </td>
                                            <td>{{ $file->user->username }}</td>
                                            <td>
                                                <span class="badge bg-secondary">{{ $file->file_type }}</span>
                                            </td>
                                            <td>
                                                <span
                                                    class="badge bg-info text-dark">{{ optional($file->institution)->name ?? 'General' }}</span>
                                                <br>
                                                <small>{{ optional($file->subject)->name }}</small>
                                            </td>
                                            <td>{{ number_format($file->file_size / 1024, 2) }} KB</td>
                                            <td>{{ $file->upload_date->diffForHumans() }}</td>
                                            <td>
                                                @php
                                                    // Small logic check for button style (Optional but nice UI)
                                                    $isOwner = $file->user_id === auth()->id();
                                                    // Ideally we pass this from controller, but for now this works:
                                                    $hasBought = \App\Models\Download::where('user_id', auth()->id())
                                                        ->where('file_id', $file->id)->exists();
                                                @endphp<a href="{{ route('file.download', $file->slug) }}"
                                                    class="btn btn-sm {{ ($isOwner || $hasBought) ? 'btn-success' : 'btn-warning' }}">

                                                    @if($isOwner)
                                                        Download ⬇️
                                                    @elseif($hasBought)
                                                        Re-Download 🔄
                                                    @else
                                                        Buy (1 Token) 🪙
                                                    @endif
                                                </a>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>

                            <div class="d-flex justify-content-center">
                                {{ $files->links() }}
                            </div>
                        @else
                            <div class="text-center py-4">
                                <h4>No files found 😢</h4>
                                <p>Be the first to upload something!</p>
                            </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection