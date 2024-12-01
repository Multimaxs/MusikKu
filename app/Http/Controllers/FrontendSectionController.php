<?php

namespace App\Http\Controllers;

use App\Models\Section;
use App\Models\Song;
use Illuminate\Http\Request;

class FrontendSectionController extends Controller
{


    public function home()
    {
    $artis = Section::where('post_as', 'ARTIS')->limit(5)->get();
    $mood = Section::where('post_as', 'MOOD')->limit(5)->get();
    $genre = Section::where('post_as', 'GENRE')->limit(5)->get();

    return view('home', compact('artis', 'mood', 'genre'));
    }

    public function artis(Request $request)
    {
        // Ambil parameter pencarian
        $search = $request->input('search');

        // Filter artis berdasarkan nama jika ada pencarian
        $artis = Section::where('post_as', 'ARTIS')
            ->when($search, function ($query, $search) {
                return $query->where('title', 'like', '%' . $search . '%');
            })
            ->get();

        return view('artis', compact('artis'));
    }

    public function showartis($id)
    {
        $showartis = Section::findOrFail($id);
        $songs = Song::where('artis_id', $showartis->tipe_id)->get();
        return view('detailartis', compact('showartis', 'songs'));
    }

    public function mood(Request $request)
    {
        $search = $request->input('search');
        $mood = Section::where('post_as', 'MOOD')
            ->when($search, function ($query, $search) {
                return $query->where('title', 'like', '%' . $search . '%');
            })
            ->get();

        return view('mood', compact('mood'));
    }

    public function showmood($id)
    {
        $showmood = Section::findOrFail($id);
        $songs = Song::where('mood_id', $showmood->tipe_id)->get();
        return view('detailmood', compact('showmood', 'songs'));
    }

    public function genre(Request $request)
    {
        $search = $request->input('search');
        $genre = Section::where('post_as', 'GENRE')
            ->when($search, function ($query, $search) {
                return $query->where('title', 'like', '%' . $search . '%');
            })
            ->get();

        return view('genre', compact('genre'));
    }

    public function showgenre($id)
    {
        $showgenre = Section::findOrFail($id);
        $songs = Song::where('genre_id', $showgenre->tipe_id)->get();
        return view('detailgenre', compact('showgenre', 'songs'));
    }
}
