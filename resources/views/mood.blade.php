<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List Mood</title>
    <link rel="stylesheet" href="{{ asset('assets/CSS/mood.css') }}">
</head>
<body>
    <section class="mood-list">
        <div class="search-bar">
            <input type="text" placeholder="Cari Mood" />
        </div>
        <div class="container">
            @if ($mood->isEmpty())
                <div class="warning" role="alert">
                    Data tidak ditemukan
                </div>
            @else
                <div class="mood-grid">
                    @foreach ($mood as $section)
                        <div class="mood-card">
                            <a href="{{ url('/mood/' . $section->tipe_id) }}">
                                <div class="mood-image">
                                    <img loading="lazy" src="{{ Storage::url($section->thumbnail) }}" alt="{{ $section->title }}">
                                </div>
                                <div class="mood-name">
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
