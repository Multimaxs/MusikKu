<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detail Artis</title>
    <link rel="stylesheet" href="{{ asset('assets/CSS/detailartis.css') }}">
</head>
<body>
    <h1>{{ $showmood->title }}</h1>
    <img src="{{ Storage::url($showmood->thumbnail) }}" alt="{{ $showmood->title }}">
    <p>{{ $showmood->content }}</p>

    <h2>Daftar Lagu:</h2>
    <div>
        @forelse ($songs as $song)
            <div class="song-container">
                <div class="song-header">
                    <h3>{{ $song->judul }}</h3>
                    <div class="dropdowns">
                        <div class="dropdown">
                            <button class="dropdown-btn">Deskripsi</button>
                            <div class="dropdown-content">
                                <p>{{ $song->deskripsi }}</p>
                            </div>
                        </div>
                        <div class="dropdown">
                            <button class="dropdown-btn">Lirik</button>
                            <div class="dropdown-content">
                                <p>{{ $song->lirik }}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @empty
            <p>Tidak ada lagu untuk mood ini.</p>
        @endforelse
    </div>
</body>
</html>
