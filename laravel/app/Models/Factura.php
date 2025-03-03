<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Factura extends Model
{
    use SoftDeletes;
    protected $dates = ['deleted_at'];
    protected $table = 'factura';
    protected $primaryKey = 'id';
    public $timestamps = true;
    //
    protected $fillable = [
        'id_pago',
        'total',
        'estado',
        'detalles',
    ];
}
