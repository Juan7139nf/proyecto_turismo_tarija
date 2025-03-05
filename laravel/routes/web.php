<?php

use App\Http\Controllers\ReportController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/login', function () {
    return redirect()->route('error.seguimos-trabajando');
})->name('login');

Route::get('/error/seguimos-trabajando', function () {
    return view('errors.seguimos-trabajando');
})->name('error.seguimos-trabajando');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::get('pdf/reserva', [ReportController::class, 'reserva'])->name('pdf.reserva');