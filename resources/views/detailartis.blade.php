<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detail Artis</title>
    <link rel="stylesheet" href="{{ asset('assets/CSS/detailartis.css') }}">
    <link rel="icon" href="{{ asset('assets/img/icon.png') }}">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Jockey+One&display=swap">

</head>
<body>
    <div class="card">
        <div class="card-content">
            <h1>{{ $showartis->title }}</h1>
            <img src="{{ Storage::url($showartis->thumbnail) }}" alt="{{ $showartis->title }}">
            <p>{!! strip_tags($showartis->content) !!}</p>
            <form action="{{ route('profile.like.artist') }}" method="POST"> 
                @csrf
                <input type="hidden" name="artist_id" value="{{ $showartis->tipe_id }}">
                <button type="submit">Sukai Artis</button>
            </form>
        </div>
    </div>

    <!-- Tombol Suka untuk Artis -->

    <h2>Daftar Lagu:</h2>
    <div>
        @forelse ($songs as $song)
            <div class="song-container">
                <div class="song-header">
                    <div class="song-image">
                        <img src="{{ Storage::url($song->gambar) }}" alt="{{ $song->judul }}">
                        <button onclick="toggleAudio(this, '{{ Storage::url($song->audio_file) }}')">▶</button>
                    </div>
                    <h3>{{ $song->judul }}</h3>
                    
                    <form action="{{ route('profile.like.song') }}" method="POST">
                    @csrf
                        <input type="hidden" name="song_id" value="{{ $song->id }}">
                        <button type="submit">Sukai Lagu</button>
                    </form>
                    
                    <div class=" ms">
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

    <script>
        let currentAudio = null; 
        let currentButton = null;

        function toggleAudio(button, audioSrc) {
            if (currentAudio && currentAudio.src !== audioSrc) {
                currentAudio.pause();
                currentButton.textContent = '▶';
                currentAudio = null;
                currentButton = null;
            } else if (!currentAudio || currentAudio.src !== audioSrc) {
                currentAudio = new Audio(audioSrc); 
                currentAudio.play();
                button.textContent = '⏸';

                currentAudio.onended = () => {
                    button.textContent = '▶';
                    currentAudio = null;
                    currentButton = null;
                };

                currentButton = button;
            } else if (!currentAudio.paused) {
                currentAudio.pause();
                button.textContent = '▶';
            } else {
                currentAudio.play();
                button.textContent = '⏸';
            }
        }

        function likeArtist(artistId, button) {
            const csrfToken = document.querySelector('meta[name="csrf-token"]').content;
            
            fetch('/like/artist', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': csrfToken
                },
                body: JSON.stringify({ artist_id: artistId })
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    button.textContent = 'Artis Disukai';
                    button.disabled = true;
                } else {
                    alert('Gagal menyukai artis.');
                }
            })
            .catch(error => console.error('Error:', error));
        }

        function likeSong(songId, button) {
            const csrfToken = document.querySelector('meta[name="csrf-token"]').content;
            
            fetch('/like/song', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': csrfToken
                },
                body: JSON.stringify({ song_id: songId })
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    button.textContent = 'Lagu Disukai';
                    button.disabled = true;
                } else {
                    alert('Gagal menyukai lagu.');
                }
            })
            .catch(error => console.error('Error:', error));
        }
    </script>
        <!-- footer start -->
        <footer>
      <div class="credit">
        <p>Created by Kelompok 7. | &copy; 2024</p>
      </div>
    </footer>
    <!-- footer end -->
</body>
</html>
