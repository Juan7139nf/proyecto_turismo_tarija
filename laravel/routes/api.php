<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\UserController;

Route::post('/user/create', [UserController::class, 'create']);
Route::put('/user/edit/{id}', [UserController::class, 'edit'])->middleware('auth:sanctum');
Route::post('/user/avatar/{id}', [UserController::class, 'updateAvatar'])->middleware('auth:sanctum');

Route::get("test", function (Request $request){
    return response()->json('api funciona');;
});

Route::post('login', [AuthController::class, 'login']);
Route::post('logout', [AuthController::class, 'logout'])->middleware('auth:sanctum');
Route::get('user', [AuthController::class, 'user'])->middleware('auth:sanctum');

foreach (glob(base_path('routes/modules/*.php')) as $routeFile) {
    require $routeFile;
}