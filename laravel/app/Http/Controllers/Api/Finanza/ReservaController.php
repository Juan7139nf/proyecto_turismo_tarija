<?php

namespace App\Http\Controllers\Api\Finanza;

use App\Http\Controllers\Controller;
use App\Models\Reserva;
use Illuminate\Http\Request;

class ReservaController extends Controller
{

    // Ver todas las reservas del usuario autenticado
    public function index(Request $request)
    {
        $user = $request->user();
        $reservas = Reserva::where('id_turista', $user->id)->get();

        $reservas->transform(function ($reserva) {
            // Transformación del avatar del turista
            if ($reserva->turista && $reserva->turista->avatar) {
                $reserva->turista->avatar = url('storage/' . $reserva->turista->avatar);
            }
            $reserva->tourActividad->makeHidden(['tour', 'actividad']);
    
            return $reserva;
        });

        return response()->json($reservas);
    }

    // Ver una reserva específica
    public function show(Request $request, $id)
    {
        $user = $request->user();
        $reserva = Reserva::where('id', $id)->where('id_turista', $user->id)->firstOrFail();
        if ($reserva->turista && $reserva->turista->avatar) {
            $reserva->turista->avatar = url('storage/' . $reserva->turista->avatar);
        }
        $reserva->tourActividad->makeHidden(['tour', 'actividad']);

        return response()->json($reserva);
    }

    // Crear reserva con múltiples actividades
    public function store(Request $request)
    {
        $request->validate([
            'id_tour_actividades' => 'required|array',
            'id_tour_actividades.*' => 'exists:tour_actividad,id',
        ]);

        $userId = $request->user()->id;
        $reservas = collect($request->id_tour_actividades)->map(function ($idActividad) use ($userId) {
            return Reserva::create([
                'id_turista' => $userId,
                'id_tour_actividad' => $idActividad,
                'estado' => 'Pendiente',
            ]);
        });
        $reservas->transform(function ($reserva) {
            // Transformación del avatar del turista
            if ($reserva->turista && $reserva->turista->avatar) {
                $reserva->turista->avatar = url('storage/' . $reserva->turista->avatar);
            }
            $reserva->tourActividad->makeHidden(['tour', 'actividad']);
    
            return $reserva;
        });

        return response()->json($reservas, 201);
    }

    // Cancelar una reserva
    public function cancelar(Request $request, $id)
    {
        $user = $request->user();
        $reserva = Reserva::where('id', $id)->where('id_turista', $user->id)->firstOrFail();

        if ($reserva->estado === 'Pendiente') {
            $reserva->update(['estado' => 'Cancelado']);
            return response()->json(['message' => 'Reserva cancelada']);
        }
        return response()->json(['message' => 'Solo se pueden cancelar reservas pendientes'], 400);
    }

    // Revertir cancelación de una reserva
    public function reactivar(Request $request, $id)
    {
        $user = $request->user();
        $reserva = Reserva::where('id', $id)->where('id_turista', $user->id)->firstOrFail();

        if ($reserva->estado === 'Cancelado') {
            $reserva->update(['estado' => 'Pendiente']);
            return response()->json(['message' => 'Reserva reactivada']);
        }
        return response()->json(['message' => 'Solo se pueden reactivar reservas canceladas'], 400);
    }
}
