<aside class="navbar navbar-vertical navbar-expand-lg" data-bs-theme="dark">
    <div class="container-fluid">
        <!-- Hamburger Button (Mobile) -->
        <!-- 
           FIX: Ensure data-bs-target matches the ID of the collapse div below exactly.
           The class navbar-toggler works with Bootstrap JS to toggle the 'show' class on the target.
        -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#sidebar-menu"
            aria-controls="sidebar-menu" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Logo -->
        <h1 class="navbar-brand navbar-brand-autodark">
            <a href="{{ url('/') }}" class="text-decoration-none text-white">
                🚀 ShikshaVault
            </a>
        </h1>

        <!-- Sidebar Menu -->
        <div class="collapse navbar-collapse" id="sidebar-menu">
            <ul class="navbar-nav pt-lg-3">

                <!-- Shared Links -->
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('dashboard') }}" wire:navigate>
                        <span class="nav-link-icon d-md-none d-lg-inline-block">
                            <i class="ti ti-home"></i>
                        </span>
                        <span class="nav-link-title">Dashboard</span>
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="{{ route('upload.create') }}" wire:navigate>
                        <span class="nav-link-icon d-md-none d-lg-inline-block">
                            <i class="ti ti-cloud-upload"></i>
                        </span>
                        <span class="nav-link-title">Upload File</span>
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="{{ route('profile.show') }}" wire:navigate>
                        <span class="nav-link-icon d-md-none d-lg-inline-block">
                            <i class="ti ti-user-circle"></i>
                        </span>
                        <span class="nav-link-title">My Profile</span>
                    </a>
                </li>

                <!-- Admin Section -->
                @if(auth()->check() && auth()->user()->role === 'admin')
                    <li class="nav-item mt-3">
                        <div class="text-uppercase text-muted text-xs ms-3">Administration</div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('admin.dashboard') }}" wire:navigate>
                            <span class="nav-link-icon d-md-none d-lg-inline-block">
                                <i class="ti ti-shield-lock"></i>
                            </span>
                            <span class="nav-link-title">Admin Panel</span>
                        </a>
                    </li>
                @endif

                <!-- Spacer for Logout -->
                <li class="nav-item mt-auto">
                    <a class="nav-link text-danger" href="{{ route('logout') }}"
                        onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                        <span class="nav-link-icon d-md-none d-lg-inline-block">
                            <i class="ti ti-logout"></i>
                        </span>
                        <span class="nav-link-title">Logout</span>
                    </a>
                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                        @csrf
                    </form>
                </li>
            </ul>
        </div>
    </div>
</aside>