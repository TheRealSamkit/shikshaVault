<div class="d-flex flex-column h-100">
    <a href="/" class="d-none d-lg-flex align-items-center mb-3 mb-md-0 text-body text-decoration-none">
        <span class="fs-1 fw-bold my-3 mx-auto">ShikshaVault</span>
    </a>

    <ul class="nav nav-pills flex-column p-2">
        @if(auth()->check() && auth()->user()->role === 'admin')
            <div class="small text-uppercase text-body mb-2 px-3">Admin</div>
            <li>
                <a href="{{ route('admin.dashboard') }}"
                    class="nav-link {{ request()->routeIs('admin.dashboard') ? 'active' : '' }}" wire:navigate>
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                        stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                        class="icon icon-tabler icons-tabler-outline icon-tabler-user-shield">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                        <path d="M6 21v-2a4 4 0 0 1 4 -4h2" />
                        <path d="M22 16c0 4 -2.5 6 -3.5 6s-3.5 -2 -3.5 -6c1 0 2.5 -.5 3.5 -1.5c1 1 2.5 1.5 3.5 1.5z" />
                        <path d="M8 7a4 4 0 1 0 8 0a4 4 0 0 0 -8 0" />
                    </svg>
                    Dashboard
                </a>
            </li>
            <li>
                <a href="{{ route('admin.curriculum') }}"
                    class="nav-link {{ request()->routeIs('admin.curriculum') ? 'active' : '' }}" wire:navigate>
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                        stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                        class="icon icon-tabler icons-tabler-outline icon-tabler-notebook">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                        <path d="M6 4h11a2 2 0 0 1 2 2v12a2 2 0 0 1 -2 2h-11a1 1 0 0 1 -1 -1v-14a1 1 0 0 1 1 -1m3 0v18" />
                        <path d="M13 8l2 0" />
                        <path d="M13 12l2 0" />
                    </svg>
                    Curriculum Management
                </a>
            </li>
            <li>
                <a href="{{ route('admin.test') }}" class="nav-link {{ request()->routeIs('admin.test') ? 'active' : '' }}"
                    wire:navigate>
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                        stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                        class="icon icon-tabler icons-tabler-outline icon-tabler-test-pipe">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                        <path d="M20 8.04l-12.122 12.124a2.857 2.857 0 1 1 -4.041 -4.04l12.122 -12.124" />
                        <path d="M7 13h8" />
                        <path d="M19 15l1.5 1.6a2 2 0 1 1 -3 0l1.5 -1.6z" />
                        <path d="M15 3l6 6" />
                    </svg>
                    Test Page
                </a>
            </li>

            <hr class="my-4">
            <div class="small text-uppercase text-body mb-2 px-3">System</div>

        @endif
        <li class="nav-item">
            <a href="{{ route('dashboard') }}" class="nav-link {{ request()->routeIs('dashboard') ? 'active' : '' }}"
                wire:navigate>
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                    stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                    class="icon icon-tabler icons-tabler-outline icon-tabler-home">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                    <path d="M5 12l-2 0l9 -9l9 9l-2 0" />
                    <path d="M5 12v7a2 2 0 0 0 2 2h10a2 2 0 0 0 2 -2v-7" />
                    <path d="M9 21v-6a2 2 0 0 1 2 -2h2a2 2 0 0 1 2 2v6" />
                </svg> Home
            </a>
        </li>

        <li>
            <a href="{{ route('upload.create') }}" class="nav-link {{ request()->routeIs('upload.*') ? 'active' : '' }}"
                wire:navigate>
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                    stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                    class="icon icon-tabler icons-tabler-outline icon-tabler-cloud-up">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                    <path
                        d="M12 18.004h-5.343c-2.572 -.004 -4.657 -2.011 -4.657 -4.487c0 -2.475 2.085 -4.482 4.657 -4.482c.393 -1.762 1.794 -3.2 3.675 -3.773c1.88 -.572 3.956 -.193 5.444 1c1.488 1.19 2.162 3.007 1.77 4.769h.99c1.38 0 2.57 .811 3.128 1.986" />
                    <path d="M19 22v-6" />
                    <path d="M22 19l-3 -3l-3 3" />
                </svg>
                Upload Files
            </a>
        </li>

        <li>
            <a href="{{ route('profile.show') }}" class="nav-link {{ request()->routeIs('profile.*') ? 'active' : '' }}"
                wire:navigate><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                    fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                    class="icon icon-tabler icons-tabler-outline icon-tabler-user">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                    <path d="M8 7a4 4 0 1 0 8 0a4 4 0 0 0 -8 0" />
                    <path d="M6 21v-2a4 4 0 0 1 4 -4h4a4 4 0 0 1 4 4v2" />
                </svg>
                My Profile
            </a>
        </li>
    </ul>
</div>