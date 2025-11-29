<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Subject;
use Illuminate\Support\Facades\DB;

class CurriculumController extends Controller
{
    //
    public function index()
    {

        $subjects = DB::table('subjects')->pluck('name', 'id');

        return view('admin.curriculum');
    }
}
