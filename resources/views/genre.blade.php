<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List Genre</title>
    <link rel="stylesheet" href="{{ asset('assets/CSS/genre.css') }}">
</head>
<body>
    <section class="genre-list">
        <div class="search-bar">
            <input type="text" placeholder="Cari Genre" />
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
