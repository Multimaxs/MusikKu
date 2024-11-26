<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{ asset('assets/CSS/home.css') }}">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Jockey+One&display=swap">
    <title>MusikKu</title>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar">
        <div class="nav-container">
            <h2 class="logo">MusikKu</h2>
            <ul class="menu">
                <li class="beranda"><a href="{{ url('/') }}">Beranda</a></li>
                <li class="artis"><a href="{{ url('/artis') }}">Artis</a></li>
                <li class="musik"><a href="{{ url('/mood') }}">Mood</a></li>
                <li class="musik"><a href="{{ url('/genre') }}">Genre</a></li>
            </ul>

            @php
                $isAuthenticated = Auth::guard('pendengar')->check();
            @endphp

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
    </nav>

    <!-- Hero Section -->
    <div class="container">
    <div class="hero-section">
    <!-- Konten Teks -->
    <div class="hero-content">
        <h3>Selamat Datang di MusikKu!</h3>
        <h1>Temukan dunia musik yang tak terbatas!</h1>
        <p>
        Dengan katalog musik kami, Anda dapat menjelajahi ribuan lagu, album, dan artis dari berbagai genre dan era. Apakah Anda sedang mencari hits terbaru, lagu-lagu legendaris, atau ingin menemukan musik baru sesuai selera Anda, kami punya semuanya!
        </p>
    </div>

    <!-- Gambar -->
    <div class="hero-image">
        <img src="{{ asset('assets/img/icon.png') }}" alt="3D Icons">
    </div>
</div>

    </div>
</body>
</html>
