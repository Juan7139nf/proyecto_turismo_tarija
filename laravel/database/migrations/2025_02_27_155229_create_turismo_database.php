<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     */

    public function up(): void
    {
        // Tabla usuario
        Schema::create('usuario', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->rememberToken();
            $table->timestamps();
        });

        // Tabla turista
        /*
        Schema::create('turista', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_usuario');
            $table->timestamps();
            $table->primary('id');
            $table->foreign('id_usuario')->references('id')->on('usuario');
        });
*/
        // Tabla operador
        /*
        Schema::create('operador', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_usuario');
            $table->enum('estado', ['Activo', 'Inactivo'])->default('Activo');
            $table->timestamps();
            $table->primary('id');
            $table->foreign('id_usuario')->references('id')->on('usuario');
        });
*/
        // Tabla guia_turistico
        /*
        Schema::create('guia_turistico', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_usuario');
            $table->text('especialidad')->nullable();
            $table->enum('estado', ['Disponible', 'En servicio', 'Asignado', 'Inactivo'])->default('Disponible');
            $table->timestamps();
            $table->primary('id');
            $table->foreign('id_usuario')->references('id')->on('usuario');
        });
*/
        // Tabla reporte_general
        Schema::create('reporte_general', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_operador');
            $table->string('tipo_reporte')->nullable();
            $table->text('datos')->nullable();
            $table->timestamps();
            $table->primary('id');
            $table->foreign('id_operador')->references('id')->on('users');
        });

        // Tabla tour
        Schema::create('tour', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_operador');
            $table->string('nombre')->nullable();
            $table->string('destino')->nullable();
            $table->text('descripcion')->nullable();
            $table->decimal('precio', 10, 2)->nullable();
            $table->timestamp('fecha_inicio')->nullable();
            $table->timestamp('fecha_fin')->nullable();
            $table->integer('cupos_disponibles')->nullable();
            $table->boolean('estado')->default(true);
            $table->timestamps();
            $table->primary('id');
            $table->foreign('id_operador')->references('id')->on('users');
        });

        // Tabla actividad
        Schema::create('actividad', function (Blueprint $table) {
            $table->id();
            $table->string('nombre')->nullable();
            $table->text('descripcion')->nullable();
            $table->integer('duracion')->nullable();
            $table->boolean('estado')->default(true);
            $table->timestamps();
            $table->primary('id');
        });

        // Tabla tour_actividad
        Schema::create('tour_actividad', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_tour');
            $table->unsignedBigInteger('id_actividad');
            $table->unsignedBigInteger('id_guia');
            $table->integer('orden')->nullable();
            $table->enum('estado', ['Programada', 'Cancelada', 'En curso', 'Completada'])->default('Programada');
            $table->decimal('precio_total', 10, 2)->nullable();
            $table->string('lugar')->nullable();
            $table->timestamps();
            $table->primary('id');
            $table->foreign('id_tour')->references('id')->on('tour');
            $table->foreign('id_actividad')->references('id')->on('actividad');
            $table->foreign('id_guia')->references('id')->on('users');
        });

        // Tabla reserva
        Schema::create('reserva', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_turista');
            $table->unsignedBigInteger('id_tour_actividad');
            $table->enum('estado', ['Pendiente', 'Confirmada', 'Cancelado'])->default('Pendiente');
            $table->timestamps();
            $table->primary('id');
            $table->foreign('id_turista')->references('id')->on('users');
            $table->foreign('id_tour_actividad')->references('id')->on('tour_actividad');
        });

        // Tabla calificacion
        Schema::create('calificacion', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_turista');
            $table->unsignedBigInteger('id_tour_actividad');
            $table->integer('puntuacion')->nullable();
            $table->text('comentario')->nullable();
            $table->timestamps();
            $table->primary('id');
            $table->foreign('id_turista')->references('id')->on('users');
            $table->foreign('id_tour_actividad')->references('id')->on('tour_actividad');
        });

        // Tabla reporte_seguimiento
        Schema::create('reporte_seguimiento', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_guia');
            $table->unsignedBigInteger('id_tour_actividad');
            $table->text('descripcion')->nullable();
            $table->integer('tipo_incidente')->nullable();
            $table->timestamps();
            $table->primary('id');
            $table->foreign('id_guia')->references('id')->on('users');
            $table->foreign('id_tour_actividad')->references('id')->on('tour_actividad');
        });

        // Tabla tarjeta
        Schema::create('tarjeta', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_turista');
            $table->integer('numero_tarjeta')->nullable();
            $table->string('nombre_titular')->nullable();
            $table->string('ccv')->nullable();
            $table->string('tipo_tarjeta')->nullable();
            $table->enum('estado', ['Activo', 'Inactivo'])->default('Activo');
            $table->timestamps();
            $table->primary('id');
            $table->foreign('id_turista')->references('id')->on('users');
        });

        // Tabla pago
        Schema::create('pago', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_tarjeta');
            $table->unsignedBigInteger('id_reserva');
            $table->decimal('monto', 10, 2)->nullable();
            $table->enum('estado', ['Pendiente', 'Transito', 'Cancelado', 'Fallido', 'Completado'])->default('Pendiente');
            $table->timestamps();
            $table->primary('id');
            $table->foreign('id_tarjeta')->references('id')->on('tarjeta');
            $table->foreign('id_reserva')->references('id')->on('reserva');
        });

        // Tabla factura
        Schema::create('factura', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_pago');
            $table->decimal('total', 10, 2)->nullable();
            $table->enum('estado', ['Activo', 'Inactivo'])->default('Activo');
            $table->text('detalles')->nullable();
            $table->timestamps();
            $table->primary('id');
            $table->foreign('id_pago')->references('id')->on('pago');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('factura');
        Schema::dropIfExists('pago');
        Schema::dropIfExists('tarjeta');
        Schema::dropIfExists('reporte_seguimiento');
        Schema::dropIfExists('calificacion');
        Schema::dropIfExists('reserva');
        Schema::dropIfExists('tour_actividad');
        Schema::dropIfExists('actividad');
        Schema::dropIfExists('tour');
        Schema::dropIfExists('reporte_general');
        // Schema::dropIfExists('guia_turistico');
        // Schema::dropIfExists('operador');
        // Schema::dropIfExists('turista');
        Schema::dropIfExists('usuario');
    }
};
