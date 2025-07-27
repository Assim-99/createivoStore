<?php

use App\Http\Controllers\LoginAdminController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ItemsController;







// ----------------- Login Admin ------------- ;


Route::prefix('admin')->middleware('guest')->group(function () {

    Route::get('/login', [LoginAdminController::class, 'viewForm'])->name('login');
    Route::post('/login', [LoginAdminController::class, 'login'])->name('actionLogin');
});




Route::prefix('admin')->middleware('auth')->group(function () {

    Route::get('index', function () {
        return view('admin.index');
    });

    Route::post('logout', [LoginAdminController::class, 'logout']);

    // ------------ items ------------- ;
    Route::get('items', [ItemsController::class, 'index']);
    Route::get('items/show/{id}', [ItemsController::class, 'show']);
    Route::get('items/create', [ItemsController::class, 'create']);
    Route::post('items/edit/{id}', [ItemsController::class, 'edit']);
    // ------------ /// ------------- ;

});
