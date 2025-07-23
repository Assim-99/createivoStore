<?php

use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Route;
use Illuminate\Auth\Middleware\RedirectIfAuthenticated ;




Route::get('/', function () {
    return view('welcome');
});

require_once "admin.php";




