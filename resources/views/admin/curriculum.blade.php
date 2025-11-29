@extends('layouts.app')

@section('title', 'Curriculum Manager')
@section('content')
    <div class="page-body m-0">
        <div class="row row-cards">
            <livewire:data-table model="App\Models\Subject" title="Subjects" :columns="[
            ['key' => 'name', 'label' => 'Name'],
            ['key' => 'code', 'label' => 'Code']
        ]" />
        </div>
    </div>
@endsection