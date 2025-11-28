<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>ShikshaVault - Community Learning</title>

        @vite(['resources/css/app.css', 'resources/js/app.js'])
    </head>

    <body class="d-flex flex-column min-vh-100 bg-light">

        <header class="navbar navbar-expand-md navbar-light d-print-none  border-bottom">
            <div class="container-xl">
                <h1 class="navbar-brand navbar-brand-autodark d-none-navbar-horizontal pe-0 pe-md-3">
                    <a href=".">ShikshaVault</a>
                </h1>
                <div class="navbar-nav flex-row order-md-last">
                    @if (Route::has('login'))
                        <div class="nav-item d-none d-md-flex me-3">
                            @auth
                                <a href="{{ url('/dashboard') }}" class="btn btn-primary">Go to Dashboard</a>
                            @else
                                <div class="btn-list">
                                    <a href="{{ route('login') }}" class="btn btn-outline-primary">Log in</a>
                                    @if (Route::has('register'))
                                        <a href="{{ route('register') }}" class="btn btn-primary">Register</a>
                                    @endif
                                </div>
                            @endauth
                        </div>
                    @endif
                </div>
            </div>
        </header>

        <!-- Hero Section -->
        <div class="page page-center">
            <div class="container container-tight py-4">
                <div class="text-center mb-4">
                    <h1 class="display-4 fw-bold">Share Knowledge.<br>Earn Tokens.</h1>
                    <p class="text-secondary">
                        The ultimate community platform for students. Upload your notes to earn tokens,
                        and use tokens to download premium study materials from peers.
                    </p>
                </div>

                <!-- Feature Grid -->
                <div class="row row-cards text-center">
                    <div class="col-md-4">
                        <div class="card card-body">
                            <div class="mb-3 text-primary"><i class="ti ti-cloud-upload fs-1"></i></div>
                            <h3>Upload</h3>
                            <p class="text-secondary small">Share your notes securely.</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card card-body">
                            <div class="mb-3 text-warning"><i class="ti ti-coin fs-1"></i></div>
                            <h3>Earn</h3>
                            <p class="text-secondary small">Get paid in tokens.</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card card-body">
                            <div class="mb-3 text-success"><i class="ti ti-download fs-1"></i></div>
                            <h3>Learn</h3>
                            <p class="text-secondary small">Access quality content.</p>
                        </div>
                    </div>
                </div>

                <div class="mt-5 text-center">
                    @auth
                        <a href="{{ url('/dashboard') }}" class="btn btn-lg btn-primary w-100">Enter Vault</a>
                    @else
                        <a href="{{ route('login') }}" class="btn btn-lg btn-primary w-100">Start Sharing Now</a>
                        <div class="mt-2">
                            <small class="text-muted">New here? <a href="{{ route('register') }}">Create an
                                    account</a></small>
                        </div>
                    @endauth
                </div>
            </div>
        </div>
    </body>

</html>