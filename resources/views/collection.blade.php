@extends('layouts.app')
@section('content')
    @livewire('public-collection', ['id' => $id])
@endsection