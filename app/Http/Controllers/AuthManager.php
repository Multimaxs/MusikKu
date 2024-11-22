<?php

namespace App\Http\Controllers;

use App\Models\Pendengar;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Session;


class AuthManager extends Controller
{
    function login(){
        return view('login');
    }

    function register(){
        return view('register');
    }

    public function loginPost(Request $request){
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        $credentials = $request->only('email', 'password');
        if (Auth::guard('pendengar')->attempt($credentials)) {
            return redirect()->intended(route('home'))->with('success', 'Login berhasil');
        }

        return redirect(route('login'))->with('error', 'Email atau password salah');
    }

    function registerPost(Request $request){
        $request->validate([
            'name' => 'required',
            'email' => 'required',
            'password' => 'required'
        ]);

        $user = new Pendengar();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
        if ($user->save()){
            return redirect(route('login'))->with("success", "Berhasil membuat akun");
        }
        return redirect(route("register"))->with("error", "Skill issue");
    }

    function logout(){
        Session::flush();
        Auth::logout();
        return redirect(route("login"))->with("success","");
    }
}
