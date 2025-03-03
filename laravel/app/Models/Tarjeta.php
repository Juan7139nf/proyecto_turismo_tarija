<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Tarjeta extends Model
{
    use SoftDeletes;
    protected $dates = ['deleted_at'];
    protected $table = 'tarjeta';
    protected $primaryKey = 'id';
    public $timestamps = true;

    // Campos asignables en masa
    protected $fillable = [
        'id_turista',
        'numero_tarjeta',
        'nombre_titular',
        'ccv',
        'tipo_tarjeta',
        'estado',
    ];

    protected $appends = ['display'];
    public $additional_attributes = ['display'];
    // Relación con el modelo User (Turista)
    public function turista()
    {
        return $this->belongsTo(User::class, 'id_turista');
    }

    // Atributo display para mostrar toda la información
    public function getDisplayAttribute()
    {
        // Obtener nombre y apellido del turista
        $turista = $this->turista ? $this->turista->nombre . ' ' . $this->turista->apellido : 'Sin información del turista';

        // Obtener número y tipo de tarjeta
        $numeroTarjeta = $this->numero_tarjeta ?? 'Sin número de tarjeta';
        if ($numeroTarjeta !== 'Sin número de tarjeta') {
            // Enmascarar todos los números excepto los últimos 4
            $numeroTarjeta = str_repeat('*', strlen($numeroTarjeta) - 4) . substr($numeroTarjeta, -4);
        }
        $tipoTarjeta = $this->tipo_tarjeta ?? 'Sin tipo de tarjeta';

        return $turista . ' - ' . $numeroTarjeta . ' (' . $tipoTarjeta . ')';
    }
}
