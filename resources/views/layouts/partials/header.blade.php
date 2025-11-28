<header class="navbar navbar-expand-md d-none d-lg-flex d-print-none">
    <div class="container-xl">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-menu"
            aria-controls="navbar-menu" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="navbar-nav flex-row order-md-last">
            <div class="d-none d-md-flex">

                <a href="#" class="nav-link px-0" title="Show notifications" data-bs-toggle="tooltip"
                    data-bs-placement="bottom">
                    <i class="ti ti-bell" style="font-size: 1.25rem;"></i>
                </a>
            </div>

            <!-- User Menu -->
            <div class="nav-item dropdown">
                <a href="#" class="nav-link d-flex lh-1 text-reset p-0" data-bs-toggle="dropdown"
                    aria-label="Open user menu">

                    <span class="avatar avatar-sm bg-blue-lt">
                        {{ strtoupper(substr(auth()->user()->username ?? 'SV', 0, 2)) }}
                    </span>

                    <div class="d-none d-xl-block ps-2">
                        <div>{{ auth()->user()->username ?? 'Guest' }}</div>
                        <div class="mt-1 small text-muted">{{ ucfirst(auth()->user()->role ?? 'User') }}</div>
                    </div>
                </a>
                <div class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <a href="{{ route('profile.show') }}" class="dropdown-item">Profile</a>
                    <div class="dropdown-divider"></div>
                    <a href="{{ route('logout') }}" class="dropdown-item"
                        onclick="event.preventDefault(); document.getElementById('logout-form').submit();">Logout</a>
                </div>
            </div>
        </div>
        <div class="collapse navbar-collapse" id="navbar-menu">
            <!-- Search Bar / Breadcrumbs Area -->
        </div>
    </div>
</header>