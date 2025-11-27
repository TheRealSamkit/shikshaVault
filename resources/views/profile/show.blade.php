@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="card text-center">
                    <div class="card-body">
                        <img src="https://ui-avatars.com/api/?name={{ $user->username }}&background=0D8ABC&color=fff"
                            class="rounded-circle mb-3" width="100">

                        <h3>{{ $user->username }}</h3>
                        <p class="text-muted">{{ $user->email }}</p>

                        <hr>

                        <div class="row">
                            <div class="col-6">
                                <h5>{{ $user->tokens }} 🪙</h5>
                                <small>Tokens</small>
                            </div>
                            <div class="col-6">
                                <h5>{{ $myFiles->count() }} 📂</h5>
                                <small>Uploads</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-8">
                <div class="card">
                    <div class="card-header p-2">
                        <ul class="nav nav-pills">
                            <li class="nav-item">
                                <a class="nav-link active" data-bs-toggle="tab" href="#uploads">My Uploads</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-bs-toggle="tab" href="#wallet">Token History</a>
                            </li>
                        </ul>
                    </div>
                    <div class="card-body">
                        <div class="tab-content">

                            <div class="tab-pane active" id="uploads">
                                @if($myFiles->count() > 0)
                                    <ul class="list-group list-group-flush">
                                        @foreach($myFiles as $file)
                                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                                <div>
                                                    <strong>{{ $file->title }}</strong>
                                                    <br>
                                                    <small class="text-muted">Downloaded {{ $file->download_count }} times</small>
                                                </div>
                                                <span class="badge bg-primary">{{ $file->status }}</span>
                                            </li>
                                        @endforeach
                                    </ul>
                                @else
                                    <p class="text-center mt-3">You haven't uploaded anything yet.</p>
                                @endif
                            </div>

                            <div class="tab-pane" id="wallet">
                                @if($transactions->count() > 0)
                                    <div class="table-responsive">
                                        <table class="table table-sm">
                                            <thead>
                                                <tr>
                                                    <th>Action</th>
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
                                                                <span class="text-success">+{{ $txn->amount }}</span>
                                                            @else
                                                                <span class="text-danger">{{ $txn->amount }}</span>
                                                            @endif
                                                        </td>
                                                        <td>{{ $txn->created_at->format('d M H:i') }}</td>
                                                    </tr>
                                                @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                @else
                                    <p class="text-center mt-3">No transactions yet.</p>
                                @endif
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection