<?php
use App\Http\Controllers\Api\Pages\CalificacionController;
use Illuminate\Support\Facades\Route;

Route::middleware('auth:sanctum')->group(function () {
    Route::get('/calificaciones', [CalificacionController::class, 'index']); // Listar todas tus calificaciones
    Route::post('/calificaciones', [CalificacionController::class, 'store']); // Crear una calificación
    Route::get('/calificaciones/{id}', [CalificacionController::class, 'show']); // Ver una calificación específica
    Route::put('/calificaciones/{id}', [CalificacionController::class, 'update']); // Editar una calificación
});
