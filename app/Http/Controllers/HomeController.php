<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DigitalFile;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(Request $request)
    {
        $query = DigitalFile::with(['user', 'institution', 'subject']);
        $query->when($request->filled('search'), function ($q) use ($request) {
            $term = $request->search;
            $q->where(function ($subQuery) use ($term) {
                $subQuery->where('title', 'like', "%{$term}%")
                    ->orWhere('description', 'like', "%{$term}%");
            });
        });
        $query->when($request->filled('institution_id'), function ($q) use ($request) {
            $q->where('institution_id', $request->institution_id);
        });
        $query->when($request->filled('subject_id'), function ($q) use ($request) {
            $q->where('subject_id', $request->subject_id);
        });

        $files = $query->latest()->paginate(10)->withQueryString();
        $institutions = \Illuminate\Support\Facades\DB::table('institutions')->pluck('name', 'id');
        $subjects = \Illuminate\Support\Facades\DB::table('subjects')->pluck('name', 'id');

        return view('dashboard', compact('files', 'institutions', 'subjects'));
    }
}
