@extends(auth()->check() ? 'layouts.app' : 'layouts.guest')

@section(auth()->check() ? 'content' : 'pubilc-file')
    <div class="col-12">
        @livewire('public-file-view', ['slug' => request()->route('slug')])
    </div>
@endsection