<?php

namespace App\Http\Controllers;

use App\Models\Section;
use App\Models\Song;
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
        $songs = Song::where('artis_id', $showartis->tipe_id)->get();
        return view('detailartis', compact('showartis', 'songs'));
    }

    public function mood()
    {
        $mood = Section::where('post_as', 'MOOD')->get();
        return view('mood', compact('mood'));
    }

    public function showmood($id)
    {
        $showmood = Section::findOrFail($id);
        $songs = Song::where('mood_id', $showmood->tipe_id)->get();
        return view('detailmood', compact('showmood', 'songs'));
    }

    public function genre()
    {
        $genre = Section::where('post_as', 'GENRE')->get();
        return view('genre', compact('genre'));
    }

    public function showgenre($id)
    {
        $showgenre = Section::findOrFail($id);
        $songs = Song::where('genre_id', $showgenre->tipe_id)->get();
        return view('detailgenre', compact('showgenre', 'songs'));
    }
}
