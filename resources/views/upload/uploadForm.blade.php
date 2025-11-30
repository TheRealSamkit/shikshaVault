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

    @livewire('file-uploader')
@endsection