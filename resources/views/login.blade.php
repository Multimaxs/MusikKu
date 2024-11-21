<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Log in</title>
    <link rel="stylesheet" href="{{ asset('assets/CSS/akun.css') }}">
</head>
<body>
    @if (session()->has("success"))
        <div class="alert alert-success">
            {{session()->get("success")}}
        </div>
    @endif
    @if (session()->has("error"))
        <div class="alert alert-error">
            {{session()->get("error")}}
        </div>
    @endif
    <div class="container">
        <form action="{{route('login.post')}}" method="POST" class="ms-auto me-auto mt-auto" style="width: 500px">
            @csrf
            <div class="mb-3">
                <label class="form-label">Email address</label>
                <input type="email" class="form-control" name="email">
            </div>

            <div class="mb-3">
                <label class="form-label">Password</label>
                <input type="password" class="form-control" name="password">
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
        <div class="register-link mt-3 text-center">
            <p>Belum punya akun? <a href="{{ route('register') }}" class="text-primary">Daftar sekarang</a></p>
        </div>
    </div>
</body>
</html>