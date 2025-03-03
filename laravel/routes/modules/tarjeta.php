<?php
use App\Http\Controllers\Api\TarjetaController;
use Illuminate\Support\Facades\Route;

Route::prefix("card")->middleware('auth:sanctum')->group(function () {
    Route::get('/tarjetas', [TarjetaController::class, 'index']);
    Route::get('/tarjetas/{id}', [TarjetaController::class, 'show']);
    Route::post('/tarjetas', [TarjetaController::class, 'store']);
    Route::put('/tarjetas/{id}', [TarjetaController::class, 'update']);
    Route::delete('/tarjetas/{id}', [TarjetaController::class, 'destroy']);
    Route::patch('/tarjetas/{id}/activar', [TarjetaController::class, 'activate']);
}); 