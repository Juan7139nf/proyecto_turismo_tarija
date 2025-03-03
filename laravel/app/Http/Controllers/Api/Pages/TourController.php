<?php

namespace App\Http\Controllers\Api\Pages;

use App\Http\Controllers\Controller;
use App\Models\Actividad;
use App\Models\TourActividad;
use App\Models\User;
use Illuminate\Http\Request;
use App\Models\Tour;

class TourController extends Controller
{
    // Obtener todos los tours
    public function getTours(Request $request)
    {
        $query = Tour::query();

        // Buscar por nombre (búsqueda parcial, insensible a mayúsculas/minúsculas)
        if ($request->has('nombre')) {
            $query->where('nombre', 'LIKE', '%' . $request->input('nombre') . '%');
        }

        // Buscar por destino (búsqueda parcial)
        if ($request->has('destino')) {
            $query->where('destino', 'LIKE', '%' . $request->input('destino') . '%');
        }

        // Obtener resultados paginados
        $tours = $query->paginate(10);

        // Procesar la portada y las fotos
        foreach ($tours as $tour) {
            // Agregar la ruta completa a la portada
            if (!empty($tour->portada)) {
                $tour->portada = url('storage/' . $tour->portada);
            }

            // Convertir la cadena de fotos en un array y agregar las rutas completas
            $tour->fotos = collect(json_decode($tour->fotos))->map(function ($foto) {
                return url('storage/' . $foto);
            });
        }

        // Retornar los tours paginados
        return response()->json(['tours' => $tours]);
    }

    // Obtener un tour por ID
    public function getTourById(Request $request, $id)
    {
        $tour = Tour::find($id);
        if (!$tour) {
            return response()->json(['error' => 'Tour no encontrado'], 404);
        }
        $tourActividades = TourActividad::where('id_tour', $id)->get();
        $actividades = $tourActividades->map(function ($tourActividad) {
            // Obtener la actividad relacionada
            $actividad = Actividad::find($tourActividad->id_actividad);
            $actividad->fotos = collect(json_decode($actividad->fotos))->map(function ($foto) {
                return url('storage/' . $foto);
            });

            // Obtener el guía relacionado con el tour (User)
            $guia = User::find($tourActividad->id_guia);
            $guia->avatar = url('storage/' . $guia->avatar);

            $tourActividad->makeHidden(['tour', 'actividad']);
            return [
                'actividad' => $actividad,
                'tour_actividad' => $tourActividad,
                'guia' => ['display' => $guia->display, 'avatar' => $guia->avatar],
            ];
        });

        // Agregar la ruta completa a la portada
        if (!empty($tour->portada)) {
            $tour->portada = url('storage/' . $tour->portada);
        }
        // Convertir la cadena de fotos en un array y agregar las rutas completas
        $tour->fotos = collect(json_decode($tour->fotos))->map(function ($foto) {
            return url('storage/' . $foto);
        });

        return response()->json(['tour' => $tour, 'actividades' => $actividades]);
    }
}
