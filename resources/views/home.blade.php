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

                @guest
                <button type="button">Daftar</button>
                <button type="button">Masuk</button>
                    <!-- Tampilkan tombol Sign In dan Log In jika user belum login -->
                    <!-- <a href="/register" class="btn btn-signin">Sign In</a>
                    <a href="/login" class="btn btn-login">Log In</a> -->
                @endguest

                @auth
                    <form action="{{ route('logout') }}" method="POST" style="display: inline;">
                    @csrf
                        <button type="submit" class="btn btn-logout">Log Out</button>
                    </form>
                @endauth
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
