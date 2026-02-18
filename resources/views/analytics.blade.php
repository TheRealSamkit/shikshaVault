@extends('layouts.app')

@section('content')
    <div class="container-xl py-4">

        {{-- Page Header --}}
        <div class="page-header mb-4">
            <div class="row align-items-center">
                <div class="col">
                    <h2 class="page-title">Analytics</h2>
                    <div class="text-muted mt-1">Platform-wide insights and usage statistics</div>
                </div>
            </div>
        </div>

        {{-- ── Overview stat cards ─────────────────────────────── --}}
        <div class="row row-cards mb-4">
            {{-- Total Files --}}
            <div class="col-sm-6 col-lg-3">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex align-items-center mb-3">
                            <div class="subheader">Total Files</div>
                            @if($fileGrowth > 0)
                                <span class="ms-auto badge bg-success-lt">+{{ $fileGrowth }}%</span>
                            @elseif($fileGrowth < 0)
                                <span class="ms-auto badge bg-danger-lt">{{ $fileGrowth }}%</span>
                            @else
                                <span class="ms-auto badge bg-secondary-lt">0%</span>
                            @endif
                        </div>
                        <div class="h1 mb-0">{{ number_format($totalFiles) }}</div>
                        <div class="d-flex mt-2 text-muted small">
                            <span>+{{ $newFilesThisMonth }} this month</span>
                        </div>
                    </div>
                </div>
            </div>

            {{-- Total Users --}}
            <div class="col-sm-6 col-lg-3">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex align-items-center mb-3">
                            <div class="subheader">Total Users</div>
                            @php
                                $userGrowth = $newUsersLastMonth > 0
                                    ? round((($newUsersThisMonth - $newUsersLastMonth) / $newUsersLastMonth) * 100, 1)
                                    : 0;
                            @endphp
                            @if($userGrowth > 0)
                                <span class="ms-auto badge bg-success-lt">+{{ $userGrowth }}%</span>
                            @elseif($userGrowth < 0)
                                <span class="ms-auto badge bg-danger-lt">{{ $userGrowth }}%</span>
                            @else
                                <span class="ms-auto badge bg-secondary-lt">0%</span>
                            @endif
                        </div>
                        <div class="h1 mb-0">{{ number_format($totalUsers) }}</div>
                        <div class="d-flex mt-2 text-muted small">
                            <span>+{{ $newUsersThisMonth }} this month</span>
                        </div>
                    </div>
                </div>
            </div>

            {{-- Total Downloads --}}
            <div class="col-sm-6 col-lg-3">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex align-items-center mb-3">
                            <div class="subheader">Total Downloads</div>
                        </div>
                        <div class="h1 mb-0">{{ number_format($totalDownloads) }}</div>
                        <div class="d-flex mt-2 text-muted small">
                            <span>All time</span>
                        </div>
                    </div>
                </div>
            </div>

            {{-- Total Bookmarks --}}
            <div class="col-sm-6 col-lg-3">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex align-items-center mb-3">
                            <div class="subheader">Total Bookmarks</div>
                        </div>
                        <div class="h1 mb-0">{{ number_format($totalBookmarks) }}</div>
                        <div class="d-flex mt-2 text-muted small">
                            <span>Across all users</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        {{-- ── Charts row ─────────────────────────────────────── --}}
        <div class="row row-cards mb-4">
            {{-- Upload & Download trend --}}
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Activity — Last 30 Days</h3>
                    </div>
                    <div class="card-body">
                        <canvas id="activityChart" height="100"></canvas>
                    </div>
                </div>
            </div>

            {{-- Files by Academic Field --}}
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Files by Field</h3>
                    </div>
                    <div class="card-body">
                        <canvas id="fieldChart" height="200"></canvas>
                    </div>
                </div>
            </div>
        </div>

        {{-- ── Top Downloaded & Top Bookmarked ───────────────── --}}
        <div class="row row-cards mb-4">
            {{-- Top Downloaded --}}
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Top Downloaded Files</h3>
                    </div>
                    <div class="list-group list-group-flush">
                        @forelse($topDownloaded as $i => $file)
                            <div class="list-group-item">
                                <div class="row align-items-center">
                                    <div class="col-auto">
                                        <span class="avatar avatar-sm bg-blue-lt text-blue fw-bold">{{ $i + 1 }}</span>
                                    </div>
                                    <div class="col text-truncate">
                                        <a href="{{ route('file.view', $file->slug) }}"
                                            class="text-body d-block text-truncate fw-medium">{{ $file->title }}</a>
                                        <small class="text-muted">
                                            {{ $file->academicField->name ?? '—' }}
                                            @if($file->resourceType)
                                                · {{ $file->resourceType->name }}
                                            @endif
                                        </small>
                                    </div>
                                    <div class="col-auto">
                                        <span class="badge bg-blue-lt">
                                            {{ number_format($file->download_count) }}
                                            <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 24 24"
                                                fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                                stroke-linejoin="round" class="ms-1">
                                                <path d="M4 17v2a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-2" />
                                                <polyline points="7 11 12 16 17 11" />
                                                <line x1="12" y1="4" x2="12" y2="16" />
                                            </svg>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        @empty
                            <div class="list-group-item text-muted text-center py-4">No downloads yet</div>
                        @endforelse
                    </div>
                </div>
            </div>

            {{-- Top Bookmarked --}}
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Top Bookmarked Files</h3>
                    </div>
                    <div class="list-group list-group-flush">
                        @forelse($topBookmarked as $i => $file)
                            <div class="list-group-item">
                                <div class="row align-items-center">
                                    <div class="col-auto">
                                        <span class="avatar avatar-sm bg-yellow-lt text-yellow fw-bold">{{ $i + 1 }}</span>
                                    </div>
                                    <div class="col text-truncate">
                                        <a href="{{ route('file.view', $file->slug) }}"
                                            class="text-body d-block text-truncate fw-medium">{{ $file->title }}</a>
                                        <small class="text-muted">
                                            {{ $file->academicField->name ?? '—' }}
                                            @if($file->resourceType)
                                                · {{ $file->resourceType->name }}
                                            @endif
                                        </small>
                                    </div>
                                    <div class="col-auto">
                                        <span class="badge bg-yellow-lt">
                                            {{ number_format($file->bookmarks_count) }}
                                            <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 24 24"
                                                fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                                stroke-linejoin="round" class="ms-1">
                                                <path d="M19 21l-7 -5l-7 5v-14a2 2 0 0 1 2 -2h10a2 2 0 0 1 2 2z" />
                                            </svg>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        @empty
                            <div class="list-group-item text-muted text-center py-4">No bookmarks yet</div>
                        @endforelse
                    </div>
                </div>
            </div>
        </div>

        {{-- ── Top Uploaders ───────────────────────────────────── --}}
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Top Uploaders</h3>
            </div>
            <div class="table-responsive">
                <table class="table table-vcenter card-table">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>User</th>
                            <th>Files Uploaded</th>
                            <th>Joined</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse($topUploaders as $i => $uploader)
                            <tr>
                                <td class="text-muted">{{ $i + 1 }}</td>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <span class="avatar avatar-sm me-2"
                                            style="background-image: url('{{ $uploader->avatar_url ?? '' }}')">
                                            @if(!$uploader->avatar_url)
                                                {{ strtoupper(substr($uploader->name, 0, 1)) }}
                                            @endif
                                        </span>
                                        <div>
                                            <div class="fw-medium">{{ $uploader->name }}</div>
                                            <div class="text-muted small">{{ $uploader->email }}</div>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <span class="badge bg-green-lt">{{ number_format($uploader->uploads_count) }} files</span>
                                </td>
                                <td class="text-muted">{{ $uploader->created_at->format('M Y') }}</td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="4" class="text-center text-muted py-4">No uploaders yet</td>
                            </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>
        </div>

    </div>
@endsection

@section('scripts')
    <script src="https://cdn.jsdelivr.net/npm/chart.js@4/dist/chart.umd.min.js"></script>
    <script>
        const isDark = document.documentElement.getAttribute('data-bs-theme') === 'dark';
        const gridColor = isDark ? 'rgba(255,255,255,0.08)' : 'rgba(0,0,0,0.06)';
        const textColor = isDark ? '#adb5bd' : '#616876';

        // ── Activity chart (uploads + downloads per day) ──────────
        const activityCtx = document.getElementById('activityChart').getContext('2d');
        new Chart(activityCtx, {
            type: 'line',
            data: {
                labels: @json($uploadDates),
                datasets: [
                    {
                        label: 'Uploads',
                        data: @json($uploadCounts),
                        borderColor: '#206bc4',
                        backgroundColor: 'rgba(32,107,196,0.12)',
                        borderWidth: 2,
                        fill: true,
                        tension: 0.35,
                        pointRadius: 0,
                        pointHoverRadius: 4,
                    },
                    {
                        label: 'Downloads',
                        data: @json($downloadCounts),
                        borderColor: '#2fb344',
                        backgroundColor: 'rgba(47,179,68,0.10)',
                        borderWidth: 2,
                        fill: true,
                        tension: 0.35,
                        pointRadius: 0,
                        pointHoverRadius: 4,
                    },
                ],
            },
            options: {
                responsive: true,
                interaction: { mode: 'index', intersect: false },
                plugins: {
                    legend: { labels: { color: textColor, boxWidth: 12 } },
                    tooltip: { mode: 'index' },
                },
                scales: {
                    x: {
                        ticks: { color: textColor, maxTicksLimit: 10 },
                        grid: { color: gridColor },
                    },
                    y: {
                        beginAtZero: true,
                        ticks: { color: textColor, precision: 0 },
                        grid: { color: gridColor },
                    },
                },
            },
        });

        // ── Files by Academic Field (horizontal bar) ──────────────
        const fieldCtx = document.getElementById('fieldChart').getContext('2d');
        new Chart(fieldCtx, {
            type: 'bar',
            data: {
                labels: @json($filesByField->pluck('name')),
                datasets: [{
                    label: 'Files',
                    data: @json($filesByField->pluck('digital_files_count')),
                    backgroundColor: [
                        '#206bc4', '#2fb344', '#f76707', '#ae3ec9',
                        '#d63939', '#0ca678', '#4299e1', '#f59f00',
                    ],
                    borderWidth: 0,
                    borderRadius: 4,
                }],
            },
            options: {
                indexAxis: 'y',
                responsive: true,
                plugins: {
                    legend: { display: false },
                    tooltip: { mode: 'index' },
                },
                scales: {
                    x: {
                        beginAtZero: true,
                        ticks: { color: textColor, precision: 0 },
                        grid: { color: gridColor },
                    },
                    y: {
                        ticks: { color: textColor },
                        grid: { display: false },
                    },
                },
            },
        });
    </script>
@endsection