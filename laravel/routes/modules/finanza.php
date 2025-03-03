<?php
use App\Http\Controllers\Api\Finanza\PagoController;
use App\Http\Controllers\Api\Finanza\ReservaController;
use Illuminate\Support\Facades\Route;

Route::middleware('auth:sanctum')->group(function () {
    // Ver todas las reservas del usuario
    Route::get('/reservas', [ReservaController::class, 'index']);
    // Ver una reserva específica
    Route::get('/reservas/{id}', [ReservaController::class, 'show']);
    // Crear una reserva con múltiples actividades
    Route::post('/reservas', [ReservaController::class, 'store']);
    // Cancelar una reserva pendiente
    Route::put('/reservas/{id}/cancelar', [ReservaController::class, 'cancelar']);
    // Reactivar una reserva cancelada
    Route::put('/reservas/{id}/reactivar', [ReservaController::class, 'reactivar']);

    Route::post('/pagar/reservas', [PagoController::class,'store']);
});