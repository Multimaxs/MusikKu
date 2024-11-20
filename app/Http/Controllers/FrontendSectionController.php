<?php

namespace App\Http\Controllers;

use App\Models\Section;
use Illuminate\Http\Request;

class FrontendSectionController extends Controller
{
    public function artis()
    {
        $artis = Section::where('post_as', 'ARTIS')->get();
        return view('artis', compact('artis'));
    }


    public function showartis($id)
    {
        $showartis = Section::findOrFail($id);
        return view('detailartis', compact('showartis')); // This can remain unchanged
    }

    public function mood()
    {
        $mood = Section::where('post_as', 'MOOD')->get();
        return view('mood', compact('mood'));
    }

    public function showmood($id)
    {
        $showmood = Section::findOrFail($id);
        return view('detailmood', compact('showmood')); // This can remain unchanged
    }

    public function genre()
    {
        $genre = Section::where('post_as', 'GENRE')->get();
        return view('genre', compact('genre'));
    }

    public function showgenre($id)
    {
        $showgenre = Section::findOrFail($id);
        return view('detailgenre', compact('showgenre')); // This can remain unchanged
    }

}