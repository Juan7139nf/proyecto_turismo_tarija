<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Tarjeta;

class TarjetaController extends Controller
{
    // Obtener todas las tarjetas del usuario autenticado
    public function index(Request $request)
    {
        $user = $request->user();
        $tarjetas = Tarjeta::where('id_turista', $user->id)->get();
        $tarjetas->makeHidden(['turista']);
        $tarjetas->makeHidden(['numero_tarjeta', 'ccv']);
        return response()->json($tarjetas);
    }

    // Obtener una tarjeta específica del usuario autenticado
    public function show(Request $request, $id)
    {
        $user = $request->user();
        $tarjeta = Tarjeta::where('id', $id)->where('id_turista', $user->id)->firstOrFail();
        $tarjeta->makeHidden(['turista']);
        $tarjeta->makeHidden(['numero_tarjeta', 'ccv']);
        return response()->json($tarjeta);
    }

    // Crear nueva tarjeta para el usuario autenticado
    public function store(Request $request)
    {
        $user = $request->user();

        $request->validate([
            'numero_tarjeta' => 'nullable|integer',
            'nombre_titular' => 'nullable|string',
            'ccv' => 'nullable|string',
            'tipo_tarjeta' => 'nullable|string',
        ]);

        $tarjeta = Tarjeta::create(array_merge($request->all(), ['id_turista' => $user->id]));
        $tarjeta->makeHidden(['turista']);
        return response()->json($tarjeta, 201);
    }

    // Actualizar tarjeta
    public function update(Request $request, $id)
    {
        $user = $request->user();
        $tarjeta = Tarjeta::where('id', $id)->where('id_turista', $user->id)->firstOrFail();

        $request->validate([
            'numero_tarjeta' => 'nullable|integer',
            'nombre_titular' => 'nullable|string',
            'ccv' => 'nullable|string',
            'tipo_tarjeta' => 'nullable|string',
        ]);

        $tarjeta->update($request->all());
        $tarjeta->makeHidden(['turista']);
        return response()->json($tarjeta);
    }

    // "Eliminar" tarjeta (cambiar estado a Inactivo)
    public function destroy(Request $request, $id)
    {
        $user = $request->user();
        $tarjeta = Tarjeta::where('id', $id)->where('id_turista', $user->id)->firstOrFail();
        $tarjeta->update(['estado' => 'Inactivo']);
        return response()->json(['message' => 'Tarjeta desactivada']);
    }

    // Activar tarjeta
    public function activate(Request $request, $id)
    {
        $user = $request->user();
        $tarjeta = Tarjeta::where('id', $id)->where('id_turista', $user->id)->firstOrFail();
        $tarjeta->update(['estado' => 'Activo']);
        return response()->json(['message' => 'Tarjeta activada']);
    }
}
