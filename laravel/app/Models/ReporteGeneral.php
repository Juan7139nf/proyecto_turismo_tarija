<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Auth;

class ReporteGeneral extends Model
{
    use SoftDeletes;
    protected $dates = ['deleted_at'];
    protected $table = 'reporte_general';
    protected $primaryKey = 'id';
    public $timestamps = true;
    //
    protected static function booted()
    {
        static::creating(function ($tour) {
            // Asignar el id_operador antes de crear el tour
            if (Auth::check()) {
                $tour->id_operador = Auth::id();
            }
        });
    }
}
