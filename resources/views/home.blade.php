<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{ asset('assets/CSS/home.css') }}">
    <style>
@import url('https://fonts.googleapis.com/css2?family=Jockey+One&display=swap');
</style>
    <title>MusikKu</title>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar">
        <div class="nav-container">
            <h2 class="logo">MusikKu</h2>
            <ul>
                <li class="menu-item beranda"><a href="/">Beranda</a></li>
                <li class="menu-item musik"><a href="/musik">Musik</a></li>
                <li class="menu-item artis"><a href="/artis">Artis</a></li>
            </ul>

            @php
                $isAuthenticated = Auth::guard('pendengar')->check();
            @endphp

            @if($isAuthenticated)
                <form action="{{ route('logout') }}" method="POST" style="display: inline;">
                @csrf
                    <button type="submit" class="btn btn-logout">Log Out</button>
                </form>
                <form action="{{ route('/profil') }}" method="POST" style="display: inline;">
                @csrf
                    <button type="submit" class="btn btn-logout">Log Out</button>
                </form>
            @else
                <button type="button" onclick="window.location.href='/register'">Daftar</button>
                <button type="button" onclick="window.location.href='/login'">Masuk</button>
            @endif
            </div>
            <div class="hero-image">
            <img src="{{ asset('assets/img/3dicons.png') }}" alt="3D Icons">
            </div>
        </div>
    </nav>
    <div class="container">
        <!-- Konten Utama -->
    </div>
</body>
</html>
