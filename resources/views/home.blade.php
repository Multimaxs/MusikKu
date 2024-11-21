<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{ asset('assets/CSS/home.css') }}">
    <title>MusikKu</title>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar">
        <div class="nav-container">
            <a href="/" class="logo">MusikKu</a>
            <div class="nav-buttons">
                @guest
                    <!-- Tampilkan tombol Sign In dan Log In jika user belum login -->
                    <a href="/register" class="btn btn-signin">Sign In</a>
                    <a href="/login" class="btn btn-login">Log In</a>
                @endguest

                @auth
                    <form action="{{ route('logout') }}" method="POST" style="display: inline;">
                    @csrf
                        <button type="submit" class="btn btn-logout">Log Out</button>
                    </form>
                @endauth
            </div>
        </div>
    </nav>
    <div class="container">
        <!-- Konten Utama -->
    </div>
</body>
</html>
