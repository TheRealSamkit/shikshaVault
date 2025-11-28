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

                <nav class="navbar navbar-expand-lg navbar-light  border-bottom px-4">
                    <div class="d-flex align-items-center w-100">
                        <button class="btn d-lg-none me-3 p-0 border-0 shadow-none" type="button"
                            data-bs-toggle="offcanvas" data-bs-target="#mobileSidebar">
                            <i class="ti ti-menu-2 fs-1"></i></button>
                        <h5 class="mb-0 me-auto">
                            @yield('title', 'Dashboard')
                        </h5>

                        <div class="dropdown">
                            <a href="#"
                                class="d-flex align-items-center link-secondary text-decoration-none dropdown-toggle"
                                data-bs-toggle="dropdown">
                                <div class="rounded-circle bg-primary text-white d-flex align-items-center justify-content-center me-2"
                                    style="width: 32px; height: 32px;">
                                    {{ strtoupper(substr(auth()->user()->username ?? 'U', 0, 1)) }}
                                </div>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end text-small shadow">
                                <li><a class="dropdown-item" href="{{ route('profile.show') }}">Profile</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li>
                                    <a class="dropdown-item text-danger" href="{{ route('logout') }}"
                                        onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                        Sign out
                                    </a>
                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf</form>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>

                <div class="p-1">
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

                <!-- FOOTER -->
                <footer class="mt-auto py-3  border-top text-center text-muted small">
                    &copy; {{ date('Y') }} ShikshaVault. All rights reserved.
                </footer>
            </div>
        </div>

        @livewireScripts
    </body>

</html>