<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detail Artis</title>
    <link rel="stylesheet" href="{{ asset('assets/CSS/detailartis.css') }}">
</head>
<body>
    <h1>{{ $showartis->title }}</h1>
    <img src="{{ Storage::url($showartis->thumbnail) }}" alt="{{ $showartis->title }}">
    <p>{{ $showartis->content }}</p>

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

<script>
    let currentAudio = null; 
    let currentButton = null;

    function toggleAudio(button, audioSrc) {
        if (currentAudio && currentAudio.src !== audioSrc) {
            currentAudio.pause();
            currentButton.textContent = '▶';
            currentAudio = null;
            currentButton = null;
        }

        else if (!currentAudio || currentAudio.src !== audioSrc) {
            currentAudio = new Audio(audioSrc); 
            currentAudio.play();
            button.textContent = '⏸';

            // Ketika audio selesai diputar
            currentAudio.onended = () => {
                button.textContent = '▶';
                currentAudio = null;
                currentButton = null;
            };

            currentButton = button;
        } 

        else if (!currentAudio.paused) {
            currentAudio.pause();
            button.textContent = '▶';
        } 

        else {
            currentAudio.play();
            button.textContent = '⏸';
        }
    }
</script>



</body>
</html>
