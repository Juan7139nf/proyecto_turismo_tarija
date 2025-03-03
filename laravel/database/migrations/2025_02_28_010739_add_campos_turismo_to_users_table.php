<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('users', function (Blueprint $table) {
            $table->string('nombre')->nullable();
            $table->string('apellido')->nullable();
            $table->integer('telefono')->nullable();
            $table->enum('estado_operador', ['Activo', 'Inactivo'])->nullable()->default(null);
            $table->text('especialidad_guia')->nullable();
            $table->enum('estado_guia', ['Disponible', 'En servicio', 'Asignado', 'Inactivo'])->nullable()->default(null);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn(['nombre', 'apellido', 'telefono', 'estado_operador', 'especialidad_guia', 'estado_guia']);
        });
    }
};
