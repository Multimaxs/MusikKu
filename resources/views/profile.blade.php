<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profil</title>
    <link rel="stylesheet" href="{{ asset('assets/CSS/profile.css') }}">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Jockey+One&display=swap">

</head>
<body>
    <h1>Profile</h1>

    <!-- Foto Profil -->
    <div class="profile-picture">
        @if ($pendengar->profile_picture)
            <img src="{{ Storage::url($pendengar->profile_picture) }}" alt="Foto Profil">
        @else
            <img src="{{ asset('assets/images/default-profile.png') }}" alt="Default Foto Profil">
        @endif
        <form action="{{ route('profile.update.picture') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <label for="profile_picture">Ganti Foto Profil:</label>
            <input type="file" name="profile_picture" id="profile_picture" accept="image/*">
            <button type="submit">Upload</button>
        </form>
    </div>

    <!-- Informasi Pendengar -->
    <div class="profile-info">
        <p><strong>Nama:</strong> {{ $pendengar->name }}</p>
        <p><strong>Email:</strong> {{ $pendengar->email }}</p>
    </div>

    <!-- Daftar Artis yang Disukai -->
    <div class="liked-section">
        <h2>Artis yang Disukai</h2>
        @forelse ($likedArtists as $artist)
            <div class="artist-item">
                <p>{{ $artist->section->title }}</p>
            </div>
        @empty
            <p>Belum ada artis yang disukai.</p>
        @endforelse
    </div>

    <div class="liked-section">
        <h2>Genre yang Disukai</h2>
        @forelse ($likedGenres as $genre)
            <div class="artist-item">
                <p>{{ $genre->section->title }}</p>
            </div>
        @empty
            <p>Belum ada genre yang disukai.</p>
        @endforelse
    </div>

    <div class="liked-section">
        <h2>Genre yang Disukai</h2>
        @forelse ($likedMoods as $mood)
            <div class="artist-item">
                <p>{{ $mood->section->title }}</p>
            </div>
        @empty
            <p>Belum ada mood yang disukai.</p>
        @endforelse
    </div>

    <!-- Daftar Lagu yang Disukai -->
    <div class="liked-section">
        <h2>Lagu yang Disukai</h2>
        @forelse ($likedSongs as $likedSong)
            <div class="song-item">
                <p>{{ $likedSong->song->judul }}</p>
                <audio controls>
                    <source src="{{ Storage::url($likedSong->song->audio_file) }}" type="audio/mpeg">
                    Your browser does not support the audio element.
                </audio>
            </div>
        @empty
            <p>Belum ada lagu yang disukai.</p>
        @endforelse
    </div>
</body>
</html>
