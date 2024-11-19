<?php

namespace App\Http\Controllers;

use App\Models\Section;
use Illuminate\Http\Request;

class FrontendSectionController extends Controller
{
    public function index()
    {
        $sections = Section::all();
        return view('artis', compact('sections'));
    }

    public function show($id)
    {
        $section = Section::findOrFail($id);
        return view('detailartis', compact('section')); // This can remain unchanged
    }
}