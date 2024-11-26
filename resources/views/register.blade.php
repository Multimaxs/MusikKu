<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daftar Akun</title>
    <link rel="stylesheet" href="{{ asset('assets/CSS/akunRegis.css') }}">
</head>
<body>
    <div class="container">
        <div class="box">
            <!-- Teks Daftar Akun -->
            <h1>Daftar Akun</h1>

            <!-- Pesan Success/Error -->
            @if (session()->has("success"))
                <div class="alert alert-success">
                    {{ session()->get("success") }}
                </div>
            @endif
            @if (session()->has("error"))
                <div class="alert alert-error">
                    {{ session()->get("error") }}
                </div>
            @endif

            <!-- Form Pendaftaran -->
            <div class="inputBox">
                <form action="{{ route('register.post') }}" method="POST">
                    @csrf
                    <div class="mb-3">
                        <label for="name" class="form-label"></label>
                        <input type="text" class="form-control" id="name" name="name" placeholder="Masukkan Username" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label"></label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Masukkan Email" required>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label"></label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Masukkan Password" required>
                    </div>
                    <div class="mb-3">
                        <label for="password_confirmation" class="form-label"></label>
                        <input type="password" class="form-control" id="password_confirmation" name="password_confirmation" placeholder="Masukkan Ulang Password" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
                <div class="register-link">
                    <p>Sudah punya akun? <a href="{{ route('login') }}">Masuk sekarang</a></p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
