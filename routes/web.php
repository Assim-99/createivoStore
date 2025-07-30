<?php

use App\Models\Brand;
use Illuminate\Support\Facades\Route;
use App\Models\Category;
use App\Models\Items;





Route::get('/', function () {

    Items::factory() -> count(50) -> create();


});


require_once "admin.php";
