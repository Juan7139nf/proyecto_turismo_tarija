<?php

namespace App\Http\Controllers\Api\Pages;

use App\Http\Controllers\Controller;
use App\Models\Calificacion;
use Illuminate\Http\Request;

class CalificacionController extends Controller
{
    // Listar todas las calificaciones del usuario autenticado
    public function index(Request $request)
    {
        $user = $request->user();
        $calificaciones = Calificacion::where('id_turista', $user->id)->get();

        return response()->json($calificaciones);
    }

    // Crear una nueva calificación
    public function store(Request $request)
    {
        $user = $request->user();

        $request->validate([
            'id_tour_actividad' => 'required',
            'puntuacion' => 'required|integer|min:1|max:5',
            'comentario' => 'nullable|string',
        ]);

        $calificacion = Calificacion::create([
            'id_turista' => $user->id,
            'id_tour_actividad' => $request->id_tour_actividad,
            'puntuacion' => $request->puntuacion,
            'comentario' => $request->comentario,
        ]);

        return response()->json($calificacion, 201);
    }

    // Ver una calificación específica
    public function show(Request $request, $id)
    {
        $user = $request->user();
        $calificacion = Calificacion::where('id', $id)->where('id_turista', $user->id)->firstOrFail();

        return response()->json($calificacion);
    }

    // Actualizar una calificación
    public function update(Request $request, $id)
    {
        $user = $request->user();
        $calificacion = Calificacion::where('id', $id)->where('id_turista', $user->id)->firstOrFail();

        $request->validate([
            'puntuacion' => 'integer|min:1|max:5',
            'comentario' => 'nullable|string',
        ]);

        $calificacion->update($request->only(['puntuacion', 'comentario']));

        return response()->json($calificacion);
    }
}
