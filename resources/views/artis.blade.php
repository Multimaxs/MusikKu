<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List Artis</title>
    <link rel="stylesheet" href="{{ asset('assets/CSS/artis.css') }}">
</head>
<body>
    <section class="artist-list">
        <div class="search-bar">
            <input type="text" placeholder="Cari Artis" />
        </div>
        <div class="container">
            @if ($sections->isEmpty())
                <div class="warning" role="alert">
                    Data tidak ditemukan
                </div>
            @else
                <div class="artist-grid">
                    @foreach ($sections as $section)
                        <div class="artist-card">
                            <a href="{{ url('/artis/' . $section->id) }}">
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
