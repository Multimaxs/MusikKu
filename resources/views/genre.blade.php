<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List Mood</title>
    <link rel="stylesheet" href="{{ asset('assets/CSS/artis.css') }}">
</head>
<body>
    <section class="mood-list">
        <div class="search-bar">
            <input type="text" placeholder="Cari Mood" />
        </div>
        <div class="container">
            @if ($genre->isEmpty())
                <div class="warning" role="alert">
                    Data tidak ditemukan
                </div>
            @else
                <div class="artis-grid">
                    @foreach ($genre as $section)
                        <div class="artis-card">
                            <a href="{{ url('/genre/' . $section->id) }}">
                                <div class="artis-image">
                                    <img loading="lazy" src="{{ Storage::url($section->thumbnail) }}" alt="{{ $section->title }}">
                                </div>
                                <div class="artis-name">
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
