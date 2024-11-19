<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FrontendSectionController;

Route::get('/', function () {
    return view('home');
});
Route::get('/artis', [FrontendSectionController::class, 'index'], function () {
    return view('artis');
});
Route::get('/genre', function () {
    return view('genre');
});
Route::get('/mood', function () {
    return view('mood');
});
