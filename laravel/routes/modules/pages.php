<?php
use App\Http\Controllers\Api\Pages\TourController;
use Illuminate\Support\Facades\Route;

Route::prefix("pages")->group(function () {
    Route::get('tours', [TourController::class, 'getTours']);
    Route::get('tours/{id}', [TourController::class, 'getTourById']);
});