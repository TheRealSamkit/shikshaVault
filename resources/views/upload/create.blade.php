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
                        <span class="">
                            <a href="{{ route('uploads') }}" class="btn btn-1" wire:navigate> <svg
                                    xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                    fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                    stroke-linejoin="round"
                                    class="icon icon-tabler icons-tabler-outline icon-tabler-folder-open me-0 text-center me-md-2">
                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                    <path
                                        d="M5 19l2.757 -7.351a1 1 0 0 1 .936 -.649h12.307a1 1 0 0 1 .986 1.164l-.996 5.211a2 2 0 0 1 -1.964 1.625h-14.026a2 2 0 0 1 -2 -2v-11a2 2 0 0 1 2 -2h4l3 3h7a2 2 0 0 1 2 2v2" />
                                </svg><span class="d-none d-sm-inline">My Uploads </span></a>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @livewire('file-uploader')
@endsection