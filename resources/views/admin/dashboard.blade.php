@extends('layouts.app')

@section('content')
    <div class="container">
        <h2 class="mb-4">🛡️ Admin Control Center</h2>

        <div class="row text-center mb-4">
            <div class="col-md-4">
                <div class="card bg-primary text-white">
                    <div class="card-body">
                        <h3>{{ $totalUsers }}</h3>
                        <p>Total Users</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card bg-success text-white">
                    <div class="card-body">
                        <h3>{{ $totalFiles }}</h3>
                        <p>Files Uploaded</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card bg-warning text-dark">
                    <div class="card-body">
                        <h3>{{ $totalTokens }} 🪙</h3>
                        <p>Economy Size</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="card">
            <div class="card-header bg-dark text-white">
                Recent Uploads (Moderation Queue)
            </div>
            <div class="card-body">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Title</th>
                            <th>Uploader</th>
                            <th>Date</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($recentUploads as $file)
                            <tr>
                                <td>
                                    <a href="{{ route('file.download', $file->slug) }}" target="_blank">
                                        {{ $file->title }}
                                    </a>
                                </td>
                                <td>
                                    {{ $file->user->username }}
                                    <form action="{{ route('admin.user.toggle', $file->user_id) }}" method="POST"
                                        class="d-inline">
                                        @csrf
                                        <button type="submit" class="btn btn-sm btn-outline-danger"
                                            onclick="return confirm('Are you sure you want to ban/unban this user?')">
                                            🚫
                                        </button>
                                    </form>
                                </td>
                                <td>{{ $file->upload_date->diffForHumans() }}</td>
                                <td>
                                    <span class="badge bg-success">{{ $file->status }}</span>
                                </td>
                                <td>
                                    <form action="{{ route('admin.file.delete', $file->id) }}" method="POST">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-sm btn-danger"
                                            onclick="return confirm('Permanently delete this file?')">
                                            Delete 🗑️
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection