<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FrontendSectionController;

Route::get('/', function () {
    return view('home');
});
Route::get('/artis', [FrontendSectionController::class, 'artis']);
Route::get('/artis/{id}', [FrontendSectionController::class, 'showartis']);

Route::get('/mood', [FrontendSectionController::class, 'mood']);
Route::get('/mood/{id}', [FrontendSectionController::class, 'showmood']);

Route::get('/genre', [FrontendSectionController::class, 'genre']);
Route::get('/genre/{id}', [FrontendSectionController::class, 'showgenre']);


