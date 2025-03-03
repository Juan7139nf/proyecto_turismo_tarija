<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Reserva extends Model
{
    use SoftDeletes;
    protected $dates = ['deleted_at'];
    protected $table = 'reserva';
    protected $primaryKey = 'id';
    public $timestamps = true;
    protected $fillable = [
        'id_turista',
        'id_tour_actividad',
        'estado',
    ];
    //
    protected $appends = ['display'];
    public $additional_attributes = ['display'];
    // Relación con el modelo User (Turista)
    public function turista()
    {
        return $this->belongsTo(User::class, 'id_turista');
    }

    // Relación con el modelo TourActividad
    public function tourActividad()
    {
        return $this->belongsTo(TourActividad::class, 'id_tour_actividad');
    }

    // Atributo display que combina la información relacionada
    public function getDisplayAttribute()
    {
        // Obtener el nombre y apellido del turista (User)
        $turista = $this->turista ? $this->turista->nombre . ' ' . $this->turista->apellido : 'Sin información del turista';

        // Obtener los nombres de Tour y Actividad
        $tourNombre = $this->tourActividad && $this->tourActividad->tour ? $this->tourActividad->tour->nombre : 'Sin información del tour';
        $actividadNombre = $this->tourActividad && $this->tourActividad->actividad ? $this->tourActividad->actividad->nombre : 'Sin información de la actividad';

        return $turista . ' - ' . $tourNombre . ' - ' . $actividadNombre;
    }
}
