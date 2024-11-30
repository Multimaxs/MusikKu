<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Log in</title>
    <!-- Tambahkan Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    <!-- Tambahkan CSS Kustom -->
    <link rel="stylesheet" href="{{ asset('assets/CSS/akun.css') }}">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Jockey+One&display=swap">

</head>
<body>
<div class="container">
    <div class="box">
        <h1 class="text-center">Masukkan Akun</h1>
        <!-- Tampilkan pesan sukses jika ada -->
        @if (session()->has('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif

        <!-- Tampilkan pesan error jika ada -->
        @if (session()->has('error'))
            <div class="alert alert-danger">
                {{ session('error') }}
            </div>
        @endif

        <!-- Form login -->
        <div class="inputBox mt-4">
            <form action="{{ route('login.post') }}" method="POST" style="width: 100%;">
                @csrf
                <div class="mb-3">
                    <label for="email" class="form-label"></label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Masukkan Email" required>
                    @error('email')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label"></label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Masukkan Password" required>
                    @error('password')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>
                <button type="submit">Submit</button>
            </form>
        </div>

        <!-- Link untuk pendaftaran -->
        <div class="register-link text-center mt-3">
            <p>Belum punya akun? <a href="{{ route('register') }}">Daftar sekarang</a></p>
        </div>
    </div>
</div>

</body>
</html>
