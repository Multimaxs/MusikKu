<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List Genre</title>
    <link rel="stylesheet" href="{{ asset('assets/CSS/genre.css') }}">
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
            <div class="btn-container">
            @if ($isAuthenticated)
                <form action="{{ route('profile') }}" style="display: inline;">
                    @csrf
                    <button type="submit" class="btn btn-logout">Profil</button>
                </form>
                <form action="{{ route('logout') }}" method="POST" style="display: inline;">
                    @csrf
                    <button type="submit" class="btn btn-logout">Log Out</button>
                </form>
            @else
                <button type="button" class="btn btn-register" onclick="window.location.href='{{ route('register') }}'">Daftar</button>
                <button type="button" class="btn btn-login" onclick="window.location.href='{{ route('login') }}'">Masuk</button>
            @endif
            </div>
    </div>
</nav>
<!-- Navigation Bar -->

    <section class="genre-list">
        <div class="search-bar">
            <form action="{{ url('/genre') }}" method="GET">
                <input 
                    type="text" 
                    name="search" 
                    placeholder="Cari Genre" 
                    value="{{ request('search') }}" 
                    class="search-input"
                />
                <button type="submit" class="search-button">Cari</button>
            </form>
        </div>
        <div class="container">
            @if ($genre->isEmpty())
                <div class="warning" role="alert">
                    Data tidak ditemukan
                </div>
            @else
                <div class="genre-grid">
                    @foreach ($genre as $section)
                        <div class="genre-card">
                            <a href="{{ url('/genre/' . $section->tipe_id) }}">
                                <div class="genre-image">
                                    <img loading="lazy" src="{{ Storage::url($section->thumbnail) }}" alt="{{ $section->title }}">
                                </div>
                                <div class="genre-name">
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
