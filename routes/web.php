<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FrontendSectionController;
use App\Http\Controllers\AuthManager;

Route::get('/', function () {
    return view('home');
})->name('home');

Route::get('/artis', [FrontendSectionController::class, 'artis']);
Route::get('/artis/{tipe_id}', [FrontendSectionController::class, 'showartis']);

Route::get('/mood', [FrontendSectionController::class, 'mood']);
Route::get('/mood/{tipe_id}', [FrontendSectionController::class, 'showmood']);

Route::get('/genre', [FrontendSectionController::class, 'genre']);
Route::get('/genre/{tipe_id}', [FrontendSectionController::class, 'showgenre']);


Route::get('/login', [AuthManager::class, 'login'])->name('login');
Route::post('/login', [AuthManager::class, 'loginPost'])->name('login.post');

Route::get('/register', [AuthManager::class, 'register'])->name('register');
Route::post('/register', [AuthManager::class, 'registerPost'])->name('register.post');

Route::post('/logout', [AuthManager::class, 'logout'])->name('logout');


