
<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ItemsController;


Route::get('products', [ItemsController::class, 'index']);
Route::get('products/show/{id}', [ItemsController::class, 'show']);
Route::get('products/create', [ItemsController::class, 'create']);


Route::post('products/{id}/edit', [ItemsController::class, 'edit']);
