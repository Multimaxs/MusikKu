<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List Artis</title>
    <link rel="stylesheet" href="{{ asset('assets/CSS/artis.css') }}">
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
            @else
                <button type="button" onclick="window.location.href='/register'">Daftar</button>
                <button type="button" onclick="window.location.href='/login'">Masuk</button>
            @endif

        </div>
    </nav>
  <!-- Navigation Bar -->

    <section class="artist-list">
        <div class="search-bar">
            <input type="text" placeholder="Cari Artis" />
        </div>
        <div class="container">
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
