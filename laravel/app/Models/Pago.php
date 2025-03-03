<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Pago extends Model
{
    use SoftDeletes;
    protected $dates = ['deleted_at'];
    protected $table = 'pago';
    protected $primaryKey = 'id';
    public $timestamps = true;
    //
    protected $fillable = [
        'id_tarjeta',
        'id_reserva',
        'monto',
        'estado',
    ];
    protected $appends = ['display'];
    public $additional_attributes = ['display'];
    // Relación con la tabla Tarjeta
    public function tarjeta()
    {
        return $this->belongsTo(Tarjeta::class, 'id_tarjeta');
    }

    // Relación con la tabla Reserva
    public function reserva()
    {
        return $this->belongsTo(Reserva::class, 'id_reserva');
    }

    // Atributo display para mostrar toda la información
    public function getDisplayAttribute()
    {
        // Obtener datos de la tarjeta
        $persona = $this->tarjeta?->turista->nombre . ' ' . $this->tarjeta?->turista?->apellido ?? 'Sin información del turista';

        $numeroTarjeta = $this->tarjeta?->numero_tarjeta ?? 'Sin número de tarjeta';
        if ($numeroTarjeta !== 'Sin número de tarjeta') {
            // Enmascarar todos los números excepto los últimos 4
            $numeroTarjeta = str_repeat('*', strlen($numeroTarjeta) - 4) . substr($numeroTarjeta, -4);
        }
        $tipoTarjeta = $this->tarjeta?->tipo_tarjeta ?? 'Sin tipo de tarjeta';

        // Obtener datos de la reserva, tour y actividad
        $tourNombre = $this->reserva?->tourActividad?->tour?->nombre ?? 'Sin nombre de tour';
        $actividadNombre = $this->reserva?->tourActividad?->actividad?->nombre ?? 'Sin nombre de actividad';

        // Obtener datos del turista
        $turistaNombre = $this->reserva?->turista?->nombre ?? 'Sin nombre';
        $turistaApellido = $this->reserva?->turista?->apellido ?? 'Sin apellido';

        return "Persona: {$persona} - Tarjeta: {$numeroTarjeta} ({$tipoTarjeta}) - Tour: {$tourNombre} - Actividad: {$actividadNombre} - Turista: {$turistaNombre} {$turistaApellido}";
    }
}
