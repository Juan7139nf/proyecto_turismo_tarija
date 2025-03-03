<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use TCG\Voyager\Models\Role;
use TCG\Voyager\Traits\VoyagerUser;

class User extends \TCG\Voyager\Models\User
{
    use HasApiTokens, HasFactory, Notifiable, SoftDeletes, VoyagerUser;
    protected $dates = ['deleted_at'];

    /** @use HasFactory<\Database\Factories\UserFactory> */
    //use HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var list<string>
     */
    protected $fillable = [
        'name',
        'email',
        'avatar',
        'password',
        'settings',
        'nombre',
        'apellido',
        'telefono',
        'estado_operador',
        'especialidad_guia',
        'estado_guia',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var list<string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ];
    }

    public function scopeGuias($query)
    {
        return $query->where(function ($query) {
            // Filtrar si tiene un rol directo
            $query->whereHas('role', function ($q) {
                $q->where('id', 4); // ID del rol guía
            })
                // O si tiene el rol en la tabla intermedia
                ->orWhereHas('roles', function ($q) {
                    $q->where('id', 4); // ID del rol guía
                });
        });
    }

    public function roles()
    {
        return $this->belongsToMany(Role::class, 'user_roles', 'user_id', 'role_id');
    }

    public function role()
    {
        return $this->belongsTo(Role::class, 'role_id');
    }
    
    protected $appends = ['display'];

    public function getDisplayAttribute()
    {
        return trim($this->nombre . ' ' . $this->apellido);
    }
}