<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('home');
});

Route::get('/artis', function () {
    return view('artis');
});

Route::get('/genre', function () {
    return view('genre');
});

Route::get('/mood', function () {
    return view('mood');
});
