<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;

Route::get('/',[UserController::class,'index']);

// Route::view('', 'registration');

Route::get('/register',[UserController::class,'createAccount']);
