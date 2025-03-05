<?php

namespace App\Http\Controllers;

use App\Models\Reserva;
use App\Models\UserRoles;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ReportController extends Controller
{
    public function reserva()
    {
        // Obtener el usuario autenticado
        $user = Auth::user();
    
        // Verificar si el usuario tiene el rol con id 3
        $role = UserRoles::where('user_id', $user->id)
                        ->where('role_id', 3)
                        ->first();
    
        // Si no tiene el rol 3, redirigirlo o hacer que cierre la ventana
        if (!$role) {
            return response()->view('errors.seguimos-trabajando');
        }
    
        // Si tiene el rol 3, mostrar los datos
        $data = Reserva::with(['turista', 'tourActividad.tour', 'tourActividad.actividad', 'tourActividad'])->get();
        return view('pdf.reserva', compact('data'));
    }
}
