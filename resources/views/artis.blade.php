<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List Artis</title>
    <link rel="stylesheet" href="{{ asset('assets/CSS/artis.css') }}">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Jockey+One&display=swap">
</head>
<body>
 <!-- Navigation Bar -->
 <nav class="navbar">
        <div class="nav-container">
            <h2 class="logo">MusikKu</h2>
            <ul class="menu">
                <li class="beranda"><a href="{{ url('/') }}">Beranda</a></li>
                <li class="artis"><a href="{{ url('/artis') }}">Artis</a></li>
                <li class="mood"><a href="{{ url('/mood') }}">Mood</a></li>
                <li class="genre"><a href="{{ url('/genre') }}">Genre</a></li>
            </ul>

            @php
                $isAuthenticated = Auth::guard('pendengar')->check();
            @endphp

            @if($isAuthenticated)
                <form action="{{ route('logout') }}" method="POST" style="display: inline;">
                @csrf
                    <button type="submit" class="btn btn-logout">Log Out</button>
                </form>
            @else
                <button type="button" onclick="window.location.href='/register'">Daftar</button>
                <button type="button" onclick="window.location.href='/login'">Masuk</button>
            @endif

        </div>
    </nav>
  <!-- Navigation Bar -->

    <section class="container">
        <div class="search-bar">
            <!-- Form pencarian -->
            <form action="{{ url('/artis') }}" method="GET">
                <input 
                    type="text" 
                    name="search" 
                    placeholder="Cari Artis" 
                    value="{{ request('search') }}" 
                    class="search-input"
                />
                <button type="submit" class="search-button">Cari</button>
            </form>
        </div>
        <div class="content">
            @if ($artis->isEmpty())
                <div class="warning" role="alert">
                    Data tidak ditemukan
                </div>
            @else
                <div class="artist-grid">
                    @foreach ($artis as $section)
                        <div class="artist-card">
                            <a href="{{ url('/artis/' . $section->tipe_id) }}">
                                <div class="artist-image">
                                    <img loading="lazy" src="{{ Storage::url($section->thumbnail) }}" alt="{{ $section->title }}">
                                </div>
                                <div class="artist-name">
                                    <p>{{ $section->title }}</p>
                                </div>
                            </a>
                        </div>
                    @endforeach
                </div>
            @endif
        </div>
    </section>
</body>
</html>
