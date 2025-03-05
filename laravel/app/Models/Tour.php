<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Auth;

class Tour extends Model
{
    use SoftDeletes;
    protected $dates = ['deleted_at'];
    protected $table = 'tour';
    protected $primaryKey = 'id';
    public $timestamps = true;
    //
    public function tourActividad()
    {
        return $this->hasMany(TourActividad::class, 'id_tour');
    }
    protected static function booted()
    {
        static::creating(function ($tour) {
            // Asignar el id_operador antes de crear el tour
            if (Auth::check()) {
                $tour->id_operador = Auth::id();
            }
        });

        static::updating(function ($tour) {
            if (Auth::check()) {
                $tour->id_operador = Auth::id();
            }
        });
    }
}
