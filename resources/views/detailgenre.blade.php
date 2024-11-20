<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detail Artis</title>
    <link rel="stylesheet" href="{{ asset('assets/CSS/detailartis.css') }}">
</head>
<body>
    <h1>{{ $showgenre->title }}</h1>
    <img src="{{ Storage::url($showgenre->thumbnail) }}" alt="{{ $showgenre->title }}">
    <p>{{ $showgenre->content }}</p>

    <h2>Daftar Lagu</h2>
    <ul>
        <li>Contoh Lagu 1</li>
        <li>Contoh Lagu 2</li>
    </ul>
</body>
</html>
