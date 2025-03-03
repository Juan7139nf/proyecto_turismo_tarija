<?php

namespace App\Http\Controllers\Api\Finanza;

use App\Http\Controllers\Controller;
use App\Models\Factura;
use App\Models\Pago;
use App\Models\Reserva;
use App\Models\TourActividad;
use Illuminate\Http\Request;

class PagoController extends Controller
{
    public function store(Request $request)
    {
        // Validar que la tarjeta y las reservas sean proporcionadas
        $request->validate([
            'tarjeta' => 'required|exists:tarjeta,id', // Validar que la tarjeta exista en la tabla 'tarjeta'
            'id_reservas' => 'required|array',
            'id_reservas.*' => 'exists:reserva,id', // Validar que las reservas existan en la tabla 'reserva'
        ]);

        // Obtener el id de la tarjeta
        $tarjeta = $request->tarjeta;
        // Recoger las reservas y crear los pagos correspondientes
        $reservas = collect($request->id_reservas)->map(function ($idReserva) use ($tarjeta) {
            // Obtener la reserva y la actividad del tour relacionada
            $reserva = Reserva::find($idReserva);
            $tour_actividad = TourActividad::where('id', $reserva->id_tour_actividad)->firstOrFail();
            $fechaahora = now();

            // Crear el pago
            $pago = Pago::create([
                'id_tarjeta' => $tarjeta,
                'id_reserva' => $reserva->id,
                'monto' => $tour_actividad->precio_total,  // Tomamos el precio total de la actividad del tour
                'estado' => 'Completado',
            ]);

            // Crear la factura
            $factura = Factura::create([
                'id_pago' => $pago->id,
                'total' => $pago->monto,
                'estado' => 'Activo',
                'detalles' => "Pago realizado el {$fechaahora} por el monto de {$pago->monto}. Reserva confirmada.",
            ]);
            $reserva->update(['estado' => 'Confirmada']);
            // Devolver el pago y la factura
            return [
                'pago' => $pago,
                'factura' => $factura,
            ];
        });

        // Responder con las reservas procesadas, pagos y facturas
        return response()->json($reservas, 201);
    }
}
