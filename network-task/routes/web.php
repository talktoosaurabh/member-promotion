<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;

Route::get('/',[UserController::class,'index']);

Route::view('/register', 'registration');

Route::post('/createAccount',[UserController::class,'createAccount']);
