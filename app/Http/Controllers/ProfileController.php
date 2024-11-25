<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Models\PendengarSection;
use App\Models\PendengarSong;

class ProfileController extends Controller
{
    // Tampilkan halaman profil
    public function show()
    {
        // Ambil data pendengar yang login
        $pendengar = auth()->user();

        // Ambil data artis, lagu, mood, dan genre yang disukai
        $likedArtists = PendengarSection::where('pendengar_id', $pendengar->id)->where('type', 'ARTIS')->get();
        $likedGenres = PendengarSection::where('pendengar_id', $pendengar->id)->where('type', 'GENRE')->get();
        $likedMoods = PendengarSection::where('pendengar_id', $pendengar->id)->where('type', 'MOOD')->get();
        $likedSongs = PendengarSong::where('pendengar_id', $pendengar->id)->get();

        // Kembalikan tampilan profil
        return view('profile', compact('pendengar', 'likedArtists', 'likedGenres', 'likedMoods', 'likedSongs'));
    }

    // Update foto profil
    public function updatePicture(Request $request)
    {
        // Validasi foto yang diunggah
        $request->validate([
            'profile_picture' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048', // Maksimal 2MB
        ]);

        // Ambil data pendengar yang sedang login
        $pendengar = auth()->user();

        // Jika ada foto profil yang lama, hapus dari penyimpanan
        if ($pendengar->profile_picture && Storage::exists('public/' . $pendengar->profile_picture)) {
            Storage::delete('public/' . $pendengar->profile_picture);
        }

        // Jika ada file gambar yang diunggah
        if ($request->hasFile('profile_picture')) {
            $path = $request->file('profile_picture')->store('profile_pictures', 'public');
            $pendengar->profile_picture = $path; // Simpan path ke database
            $pendengar->save(); // Simpan perubahan ke database
        }

        // Redirect kembali ke halaman profil dengan pesan sukses
        return redirect()->route('profile')->with('success', 'Foto profil berhasil diperbarui.');
    }

    // Menyukai artis
    public function likeArtist(Request $request)
    {
        $request->validate([
            'artist_id' => 'required|string',
        ]);

        $pendengar = auth()->user();

        // Cek apakah artis sudah disukai
        $exists = PendengarSection::where('pendengar_id', $pendengar->id)
            ->where('section_id', $request->artist_id)
            ->where('type', 'ARTIS')
            ->exists();

        if (!$exists) {
            PendengarSection::create([
                'pendengar_id' => $pendengar->id,
                'section_id' => $request->artist_id,
                'type' => 'ARTIS',
            ]);
        }

        return back()->with('success', 'Artis berhasil disukai!');
    }

    public function likeGenre(Request $request)
    {
        $request->validate([
            'genre_id' => 'required|string',
        ]);

        $pendengar = auth()->user();

        // Cek apakah artis sudah disukai
        $exists = PendengarSection::where('pendengar_id', $pendengar->id)
            ->where('section_id', $request->genre_id)
            ->where('type', 'GENRE')
            ->exists();

        if (!$exists) {
            PendengarSection::create([
                'pendengar_id' => $pendengar->id,
                'section_id' => $request->genre_id,
                'type' => 'GENRE',
            ]);
        }

        return back()->with('success', 'Genre berhasil disukai!');
    }
    
    public function likeMood(Request $request)
    {
        $request->validate([
            'mood_id' => 'required|string',
        ]);

        $pendengar = auth()->user();

        // Cek apakah artis sudah disukai
        $exists = PendengarSection::where('pendengar_id', $pendengar->id)
            ->where('section_id', $request->mood_id)
            ->where('type', 'MOOD')
            ->exists();

        if (!$exists) {
            PendengarSection::create([
                'pendengar_id' => $pendengar->id,
                'section_id' => $request->mood_id,
                'type' => 'MOOD',
            ]);
        }

        return back()->with('success', 'Mood berhasil disukai!');
    }

    // Menyukai lagu
    public function likeSong(Request $request)
    {
        $request->validate([
            'song_id' => 'required|integer',
        ]);

        $pendengar = auth()->user();

        // Cek apakah lagu sudah disukai
        $exists = PendengarSong::where('pendengar_id', $pendengar->id)
            ->where('song_id', $request->song_id)
            ->exists();

        if (!$exists) {
            PendengarSong::create([
                'pendengar_id' => $pendengar->id,
                'song_id' => $request->song_id,
            ]);
        }

        return back()->with('success', 'Lagu berhasil disukai!');
    }
}
