@extends('layouts.app')

@section('title', 'Curriculum Manager')
@section('content')
    <div class="page-body m-0">
        <div class="row row-cards">
            <livewire:data-table test="col-lg-4 col-md-7" model="App\Models\Subject" title="Subjects" :columns="[
            ['key' => 'name', 'label' => 'Name'],
            ['key' => 'code', 'label' => 'Code']
        ]" />

            <livewire:data-table test="col-lg-4 col-md-7" model="App\Models\AcademicFields" title="Academic Fields"
                :columns="[
            ['key' => 'name', 'label' => 'Name'],
            ['key' => 'slug', 'label' => 'Slug']
        ]" />

            <livewire:data-table test="col-lg-4 col-md-7" model="App\Models\ProgramStreams" title="Program Streams"
                :with="['academic_fields']" :columns="[
            ['key' => 'name', 'label' => 'Name'],
            ['key' => 'slug', 'label' => 'Slug'],
            ['key' => 'academic_fields.name', 'label' => 'Related Field'],
        ]" />

            <livewire:data-table test="col-lg-6 col-md-7" model="App\Models\ProgramStreamLevels"
                title="Program Stream Levels" inputSize="lg p-2 fs-4 w-100" :with="['program_streams', 'academic_levels']"
                :columns="[
            ['key' => 'programstreams.name', 'label' => 'Related Stream'],
            ['key' => 'academiclevels.name', 'label' => 'Academic Level']
        ]" />

            <livewire:data-table model="App\Models\ProgramStreamLevelSubject" title="Curriculum Subjects"
                test="col-lg-6 col-md-7" inputSize="lg p-2 fs-4" :with="[
            'subject',
            'programStreamLevel.programStreams',
            'programStreamLevel.academicLevels'
        ]" :columns="[
            ['key' => 'subject.name', 'label' => 'Subject Name'],
            ['key' => 'subject.code', 'label' => 'Subject Code'],
            ['key' => 'programStreamLevel.programStreams.name', 'label' => 'Program/Stream'],
            ['key' => 'programStreamLevel.academicLevels.name', 'label' => 'Level/Sem']
        ]" />

            <livewire:data-table test="col-lg-3 col-md-7" model="App\Models\AcademicLevels" title="Academic Levels"
                :columns="[
            ['key' => 'name', 'label' => 'Name'],
        ]" />
            <livewire:data-table test="col-lg-3 col-md-7" model="App\Models\ResourceTypes" title="Resource Types"
                :columns="[
            ['key' => 'name', 'label' => 'Name'],
            ['key' => 'slug', 'label' => 'Slug'],
        ]" />
        </div>
    </div>
@endsection