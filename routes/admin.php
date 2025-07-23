<?php

use App\Http\Controllers\LoginAdminController;
use Illuminate\Support\Facades\Route;





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

});
