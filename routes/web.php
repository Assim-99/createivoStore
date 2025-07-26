<?php

use App\Models\Items;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Route;
use Illuminate\Auth\Middleware\RedirectIfAuthenticated ;




Route::get('/', function () {
    // dump( Items::factory() -> count(50) -> create() ) ;
});

require_once "admin.php";




