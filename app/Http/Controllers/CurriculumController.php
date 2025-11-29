<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Subject;
use \Illuminate\Support\Facades\DB;

class CurriculumController extends Controller
{
    //
    public function index()
    {
        return view('admin.curriculum');
    }
}

//this is not being used anymore
?>