<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class TourActividad extends Model
{
    use SoftDeletes;
    protected $dates = ['deleted_at'];
    protected $table = 'tour_actividad';
    protected $primaryKey = 'id';
    public $timestamps = true;
    //
    protected $appends = ['display'];
    public $additional_attributes = ['display'];
    // Relación con el modelo Tour
    public function tour()
    {
        return $this->belongsTo(Tour::class, 'id_tour');
    }

    // Relación con el modelo Actividad
    public function actividad()
    {
        return $this->belongsTo(Actividad::class, 'id_actividad');
    }

    // Atributo display que combina los nombres de las tablas relacionadas
    public function getDisplayAttribute()
    {
        return $this->tour ? $this->tour->nombre . ' - ' . $this->actividad->nombre : 'Sin información';
    }
}
