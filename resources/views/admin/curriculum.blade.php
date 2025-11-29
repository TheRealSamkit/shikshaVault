@extends('layouts.app')

@section('title', 'Curriculum Manager')
@section('content')
    <div class="page-body m-0">
        <div class="row row-cards" @edit-item="$wire.loadSubjectData($event.detail.id)">
            <livewire:data-table test="col-lg-4 col-md-7" model="App\Models\Subject" title="Subjects" :columns="[
            ['key' => 'name', 'label' => 'Name'],
            ['key' => 'code', 'label' => 'Code']
        ]" /><livewire:data-table
                test="col-lg-3 col-md-7" model="App\Models\AcademicFields" title="Academic Fields" :columns="[
            ['key' => 'name', 'label' => 'Name'],
            ['key' => 'slug', 'label' => 'Slug']
        ]" />
        </div>
        <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">Click me</button>
        <div class="modal modal-blur fade" id="modal-danger" tabindex="-1" wire:ignore.self>
            <a href="#" class="btn btn-danger w-100" wire:click.prevent="destroy">
                Delete
            </a>
        </div>
    </div>
@endsection

@section('scripts')
    <script>
        // document.addEventListener('livewire:initialized', () => {
        //     Livewire.on('open-delete-modal', () => {
        //         const modalEl = document.getElementById('modal-danger');
        //         const modal = bootstrap.Modal.getOrCreateInstance(modalEl);
        //         modal.show();
        //     });

        //     Livewire.on('close-delete-modal', () => {
        //         const modalEl = document.getElementById('modal-danger');
        //         const modal = bootstrap.Modal.getOrCreateInstance(modalEl);
        //         modal.hide();
        //     });
        // });
    </script>
@endsection