<?php

namespace App\Http\Controllers;

use App\Models\Bookmark;
use App\Models\DigitalFile;
use App\Models\Download;
use App\Models\User;
use App\Models\AcademicFields;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class AnalyticsController extends Controller
{
    public function index()
    {
        // ── Overview stats ──────────────────────────────────────
        $totalFiles = DigitalFile::count();
        $totalUsers = User::count();
        $totalDownloads = Download::count();
        $totalBookmarks = Bookmark::count();

        // Growth this month vs last month
        $thisMonth = Carbon::now()->startOfMonth();
        $lastMonth = Carbon::now()->subMonth()->startOfMonth();

        $newFilesThisMonth = DigitalFile::where('upload_date', '>=', $thisMonth)->count();
        $newFilesLastMonth = DigitalFile::whereBetween('upload_date', [$lastMonth, $thisMonth])->count();
        $fileGrowth = $newFilesLastMonth > 0
            ? round((($newFilesThisMonth - $newFilesLastMonth) / $newFilesLastMonth) * 100, 1)
            : 0;

        $newUsersThisMonth = User::where('created_at', '>=', $thisMonth)->count();
        $newUsersLastMonth = User::whereBetween('created_at', [$lastMonth, $thisMonth])->count();

        // ── Top 10 most downloaded files ────────────────────────
        $topDownloaded = DigitalFile::withCount('accesses as download_count_real')
            ->with(['user', 'academicField', 'resourceType'])
            ->orderByDesc('download_count')
            ->take(10)
            ->get();

        // ── Top 10 most bookmarked files ────────────────────────
        $topBookmarked = DigitalFile::withCount('bookmarks')
            ->with(['user', 'academicField', 'resourceType'])
            ->orderByDesc('bookmarks_count')
            ->having('bookmarks_count', '>', 0)
            ->take(10)
            ->get();

        // ── Uploads per day (last 30 days) ──────────────────────
        $uploadsPerDay = DigitalFile::select(
            DB::raw('DATE(upload_date) as date'),
            DB::raw('COUNT(*) as count')
        )
            ->where('upload_date', '>=', Carbon::now()->subDays(30))
            ->groupBy('date')
            ->orderBy('date')
            ->pluck('count', 'date');

        // Fill in zeros for missing days
        $uploadDates = [];
        $uploadCounts = [];
        for ($i = 29; $i >= 0; $i--) {
            $date = Carbon::now()->subDays($i)->format('Y-m-d');
            $uploadDates[] = Carbon::now()->subDays($i)->format('M d');
            $uploadCounts[] = $uploadsPerDay[$date] ?? 0;
        }

        // ── Downloads per day (last 30 days) ────────────────────
        $downloadsPerDay = Download::select(
            DB::raw('DATE(downloaded_at) as date'),
            DB::raw('COUNT(*) as count')
        )
            ->where('downloaded_at', '>=', Carbon::now()->subDays(30))
            ->groupBy('date')
            ->orderBy('date')
            ->pluck('count', 'date');

        $downloadCounts = [];
        for ($i = 29; $i >= 0; $i--) {
            $date = Carbon::now()->subDays($i)->format('Y-m-d');
            $downloadCounts[] = $downloadsPerDay[$date] ?? 0;
        }

        // ── Files by academic field ──────────────────────────────
        $filesByField = AcademicFields::withCount('digitalFiles')
            ->orderByDesc('digital_files_count')
            ->take(8)
            ->get();

        // ── Top uploaders ────────────────────────────────────────
        $topUploaders = User::withCount('uploads')
            ->orderByDesc('uploads_count')
            ->having('uploads_count', '>', 0)
            ->take(10)
            ->get();

        return view('analytics', compact(
            'totalFiles',
            'totalUsers',
            'totalDownloads',
            'totalBookmarks',
            'newFilesThisMonth',
            'newFilesLastMonth',
            'fileGrowth',
            'newUsersThisMonth',
            'newUsersLastMonth',
            'topDownloaded',
            'topBookmarked',
            'uploadDates',
            'uploadCounts',
            'downloadCounts',
            'filesByField',
            'topUploaders',
        ));
    }
}
