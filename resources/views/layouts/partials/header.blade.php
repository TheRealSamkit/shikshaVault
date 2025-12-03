<nav class="navbar navbar-expand-lg navbar-light  border-bottom px-4">
    <div class="d-flex align-items-center w-100">
        <button class="btn d-lg-none me-3 p-0 border-0 shadow-none" type="button" data-bs-toggle="offcanvas"
            data-bs-target="#mobileSidebar">
            <i class="ti ti-menu-2 fs-1"></i></button>
        <h5 class="mb-0 me-auto">
            @yield('title')
        </h5>
        <div class="col-xl-8 d-none d-md-block mx-auto">
            @yield('search-bar')
        </div>
        <div class="d-flex align-items-center mx-2">
            @yield('search-btn')
            <a href="#" class="nav-link btn px-0 shadow-none" onclick="event.preventDefault(); toggleTheme();"
                title="Toggle Dark Mode" data-bs-toggle="tooltip" data-bs-placement="bottom">
                <i class="ti ti-sun fs-2 theme-icon-active d-none" id="theme-icon-sun"></i>
                <i class="ti ti-moon fs-2 theme-icon-active" id="theme-icon-moon"></i>
            </a>

            <a href="#" class="nav-link btn px-0 shadow-none" title="Show notifications" data-bs-toggle="tooltip"
                data-bs-placement="bottom">
                <i class="ti ti-bell" style="font-size: 1.25rem;"></i>
            </a>
        </div>
        <div class="dropdown">
            <a href="#" class="d-flex align-items-center link-secondary text-decoration-none dropdown-toggle"
                data-bs-toggle="dropdown">
                <div class="rounded-circle bg-primary text-white d-flex align-items-center justify-content-center me-2"
                    style="width: 32px; height: 32px;">
                    {{ strtoupper(substr(auth()->user()->username ?? 'U', 0, 1)) }}
                </div>
            </a>
            <ul class="dropdown-menu dropdown-menu-end text-small shadow">
                <li><a class="dropdown-item" href="{{ route('profile.show') }}" wire:navigate>Profile</a></li>
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