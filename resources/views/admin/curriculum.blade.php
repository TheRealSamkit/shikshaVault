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

    </div>
@endsection