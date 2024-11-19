<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FrontendSectionController;

Route::get('/', function () {
    return view('home');
});
Route::get('/artis', [FrontendSectionController::class, 'index']);
Route::get('/artis/{id}', [FrontendSectionController::class, 'show']);


Route::get('/genre', function () {
    return view('genre');
});
Route::get('/mood', function () {
    return view('mood');
});
