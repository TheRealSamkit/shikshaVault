<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}" data-bs-theme="dark">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>{{ config('app.name', 'ShikshaVault') }}</title>

        <!-- Scripts -->
        @vite(['resources/css/app.css', 'resources/js/app.js'])
        <script src="{{ Vite::asset('resources/js/theme.js') }}"></script>

        @livewireStyles
    </head>

    <body>
        <div class="page page-center">
            <div class="container container-tight py-4">
                <div class="text-center mb-4">
                    <a href="{{ url('/') }}" class="navbar-brand navbar-brand-autodark">
                        <h1 class="m-0">ShikshaVault</h1>
                    </a>
                </div>
                @yield('content')
                @livewireScripts
            </div>
            <div class="mx-lg-5 mx-md-1 px-lg-4 px-md-1 mb-4">
                @yield('pubilc-file')
            </div>
        </div>
    </body>

</html>