@extends('layouts.app')

@section('content')
    <div class="container py-4">
        <!-- Header Section -->
        <div class="row align-items-center mb-4">
            <div class="col-md-auto text-center">
                <img src="https://ui-avatars.com/api/?name={{ $user->username }}&size=128&background=0D8ABC&color=fff"
                    class="rounded-circle shadow-sm" width="128" height="128" alt="{{ $user->username }}">
            </div>
            <div class="col-md">
                <h1 class="display-6 mb-1 fw-bold">{{ $user->username }}</h1>
                <div class="text-muted mb-2">
                    <span class="badge bg-secondary">{{ $user->role ?? 'Member' }}</span>
                    <span class="mx-2">&bull;</span>
                    Joined {{ $user->created_at->format('F Y') }}
                </div>
                
                @if($isOwner)
                <div class="d-flex align-items-center gap-3">
                    <div class="d-flex align-items-center text-success">
                        <i class="fs-4 me-1">🪙</i>
                        <span class="fw-bold">{{ $user->tokens }} Tokens</span>
                    </div>
                    <div class="text-muted">{{ $user->email }}</div>
                </div>
                @endif
            </div>
            
            @if($isOwner)
            <div class="col-md-auto mt-3 mt-md-0">
                <a href="#settings" class="btn btn-outline-primary" data-bs-toggle="tab">
                    Edit Profile
                </a>
            </div>
            @endif
        </div>

        <div class="row">
            <!-- Sidebar Stats -->
            <div class="col-md-3 mb-4">
                <div class="card shadow-sm border-0">
                    <div class="card-body">
                        <h5 class="card-title text-muted mb-3">Stats</h5>
                        <div class="d-flex justify-content-between mb-2">
                            <span>Uploads</span>
                            <span class="fw-bold">{{ $myFiles->total() }}</span>
                        </div>
                        <!-- Add more public stats here if available, e.g. total downloads of their files -->
                    </div>
                </div>
            </div>

            <!-- Main Content tabs -->
            <div class="col-md-9">
                <div class="card shadow-sm border-0">
                    <div class="card-header bg-transparent border-bottom-0 pt-3 px-3">
                        <ul class="nav nav-tabs card-header-tabs">
                            <li class="nav-item">
                                <a class="nav-link active" data-bs-toggle="tab" href="#uploads">Uploads</a>
                            </li>
                            @if($isOwner)
                            <li class="nav-item">
                                <a class="nav-link" data-bs-toggle="tab" href="#bookmarks">Bookmarks</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-bs-toggle="tab" href="#wallet">Wallet History</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-bs-toggle="tab" href="#settings">Settings</a>
                            </li>
                            @endif
                        </ul>
                    </div>
                    
                    <div class="card-body">
                        <div class="tab-content">
                            <!-- Uploads Tab (Public) -->
                            <div class="tab-pane fade show active" id="uploads">
                                @if($myFiles->count() > 0)
                                    <div class="row g-3">
                                        @foreach($myFiles as $file)
                                        <div class="col-sm-6">
                                            <div class="card h-100 border-0 shadow-sm bg-light">
                                                <div class="card-body">
                                                    <h6 class="card-title text-truncate">
                                                        <a href="{{ route('file.view', $file->slug) }}" class="text-decoration-none text-dark">
                                                            {{ $file->title }}
                                                        </a>
                                                    </h6>
                                                    <p class="card-text small text-muted mb-2">
                                                        {{ Str::limit($file->description, 50) }}
                                                    </p>
                                                    <div class="d-flex justify-content-between small">
                                                        <span class="text-muted">{{ $file->download_count }} downloads</span>
                                                        <span class="badge bg-white text-secondary border">{{ $file->file_type }}</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        @endforeach
                                    </div>
                                    <div class="mt-3">
                                        {{ $myFiles->links() }}
                                    </div>
                                @else
                                    <div class="text-center py-4 text-muted">
                                        <p>No uploads found.</p>
                                    </div>
                                @endif
                            </div>

                            @if($isOwner)
                            <!-- Bookmarks Tab (Private) -->
                            <div class="tab-pane fade" id="bookmarks">
                                @if($bookmarks->count() > 0)
                                    <ul class="list-group list-group-flush">
                                        @foreach($bookmarks as $file)
                                            <li class="list-group-item d-flex justify-content-between align-items-center px-0">
                                                <div>
                                                    <a href="{{ route('file.view', $file->slug) }}" class="fw-medium text-decoration-none">
                                                        {{ $file->title }}
                                                    </a>
                                                    <br>
                                                    <small class="text-muted">By {{ $file->user->username ?? 'Unknown' }}</small>
                                                </div>
                                                <a href="{{ route('file.view', $file->slug) }}" class="btn btn-sm btn-outline-secondary">View</a>
                                            </li>
                                        @endforeach
                                    </ul>
                                @else
                                    <p class="text-center py-4 text-muted">No bookmarks yet.</p>
                                @endif
                            </div>

                            <!-- Wallet History Tab (Private) -->
                            <div class="tab-pane fade" id="wallet">
                                @if($transactions->count() > 0)
                                    <div class="table-responsive">
                                        <table class="table table-hover align-middle">
                                            <thead class="table-light">
                                                <tr>
                                                    <th>Description</th>
                                                    <th>Amount</th>
                                                    <th>Date</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach($transactions as $txn)
                                                    <tr>
                                                        <td>{{ $txn->description }}</td>
                                                        <td>
                                                            @if($txn->type == 'earn')
                                                                <span class="text-success fw-bold">+{{ $txn->amount }}</span>
                                                            @else
                                                                <span class="text-danger fw-bold">{{ $txn->amount }}</span>
                                                            @endif
                                                        </td>
                                                        <td class="text-muted small">{{ $txn->created_at->format('M d, Y H:i') }}</td>
                                                    </tr>
                                                @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                @else
                                    <p class="text-center py-4 text-muted">No transaction history.</p>
                                @endif
                            </div>

                            <!-- Settings Tab (Private) -->
                            <div class="tab-pane fade" id="settings">
                                <div class="space-y-6">
                                    <div class="p-4 bg-white shadow rounded-lg mb-4">
                                        <div class="max-w-xl">
                                            <livewire:profile.update-profile-information-form />
                                        </div>
                                    </div>

                                    <div class="p-4 bg-white shadow rounded-lg mb-4">
                                        <div class="max-w-xl">
                                            <livewire:profile.update-password-form />
                                        </div>
                                    </div>

                                    <div class="p-4 bg-white shadow rounded-lg">
                                        <div class="max-w-xl">
                                            <livewire:profile.delete-user-form />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection