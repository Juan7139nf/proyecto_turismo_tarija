<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Actividad extends Model
{
    use SoftDeletes;
    protected $dates = ['deleted_at'];
    protected $table = 'actividad';
    protected $primaryKey = 'id';
    public $timestamps = true;
    //
}
