<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>{{ config('app.name', 'ShikshaVault') }}</title>

        <script src="{{ Vite::asset('resources/js/theme.js') }}"></script>

        @vite(['resources/css/app.css', 'resources/js/app.js'])
        @livewireStyles
    </head>

    <body>
        <div class="dashboard-container">
            <aside class="sidebar desktop-sidebar d-none d-lg-flex border-end">
                @include('layouts.partials.sidebar_content')
            </aside>

            <div class="offcanvas offcanvas-start text-bg-dark" tabindex="-1" id="mobileSidebar">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title fs-1">ShikshaVault</h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas"><svg
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                            stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                            class="icon icon-tabler icons-tabler-outline icon-tabler-x">
                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                            <path d="M18 6l-12 12" />
                            <path d="M6 6l12 12" />
                        </svg></button>
                </div>
                <div class="offcanvas-body p-0">
                    @include('layouts.partials.sidebar_content')
                </div>
            </div>

            <div class="main-content">

                @include('layouts.partials.header')

                <div class="p-3">
                    <div class="page-wrapper">
                        @if(session('success'))
                            <script>
                                document.addEventListener("DOMContentLoaded", () => window.showToast('success', "{{ session('success') }}"));
                            </script>
                        @endif
                        @if(session('error'))
                            <script>
                                document.addEventListener("DOMContentLoaded", () => window.showToast('error', "{{ session('error') }}"));
                            </script>
                        @endif

                        @yield('content')
                    </div>
                </div>

                <!-- FOOTER -->
                <footer class="mt-auto py-3  border-top text-center text-muted small">
                    &copy; {{ date('Y') }} ShikshaVault. All rights reserved.
                </footer>
            </div>
        </div>

        @livewireScripts
    </body>

</html>