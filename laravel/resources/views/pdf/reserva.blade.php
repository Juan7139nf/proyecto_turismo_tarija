<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>@yield('title', Voyager::setting("site.title"))</title>

    <?php $logo_favicon = Voyager::setting('site.logo', ''); ?>
    @if($logo_favicon == '')
        <link rel="shortcut icon" href="{{ voyager_asset('images/logo-icon.png') }}" type="image/png">
    @else
        <link rel="shortcut icon" href="{{ Voyager::image($logo_favicon) }}" type="image/png">
    @endif

    <link rel="stylesheet" href="../css/bootstrap.css">
    <script src="../js/bootstrap.js"></script>
    <style>
        /* Estilos específicos para la impresión */
        @media print {
            body {
                width: 100%;
                height: auto;
                margin: 0;
                padding: 0;
            }

            /* Configurar la orientación horizontal y el tamaño carta */
            @page {
                size: letter landscape;
                margin: 0;
            }

            /* Escalar la página al 60% */
            body {
                zoom: 60%;
            }

            .container-fluid {
                width: 100%;
            }

            /* Ajustar las tablas para impresión */
            table {
                width: 100%;
                border-collapse: collapse;
            }

            th,
            td {
                padding: 8px;
                text-align: left;
                border: 1px solid #ddd;
            }

            .table-dark th {
                background-color: #343a40;
                color: white;
            }
        }
    </style>
    <script>
        // Imprimir automáticamente al cargar la página
        window.onload = function () {
            window.print();
        };
    </script>
</head>

<body>
    <div class="container-fluid mt-5">
        <div class="d-flex justify-content-between">
            <h1 class="mb-4 fw-bold">Reporte de Reservas</h1>
            <div class="">
                <?php $logo = Voyager::setting('site.logo', ''); ?>
                @if($logo == '')
                    <img src="{{ voyager_asset('images/logo-icon.png') }}" alt="" style="max-width: 80px;">
                @else
                    <img src="{{ Voyager::image($logo) }}" alt="" style="max-width: 80px;">
                @endif
            </div>
        </div>
        <p class="text-small fw-bold">&copy; {{ setting('site.description') }} - 2025</p>
        <table class="table table-striped table-bordered border-black border-1">
            <thead>
                <tr class="text-center">
                    <th>ID</th>
                    <th>Cliente</th>
                    <th>Fecha creación</th>
                    <th>Duración</th>
                    <th>Destino</th>
                    <th>Tour actividad</th>
                    <th>Fecha inicio</th>
                    <th>Fecha fin</th>
                    <th>Precio</th>
                    <th>Estado</th>
                </tr>
            </thead>
            <tbody>
                @foreach($data as $reserva)
                    <tr>
                        <td>{{ $reserva->id }}</td>
                        <td>{{ $reserva->turista ? $reserva->turista->display : 'Sin información del turista' }}</td>
                        <td class="text-center">{{ $reserva->created_at }}</td>
                        <td class="text-end">
                            {{ $reserva->tourActividad && $reserva->tourActividad->actividad->duracion ? $reserva->tourActividad->actividad->duracion . ' min' : 'Sin información' }}
                        </td>
                        <td>{{ $reserva->tourActividad && $reserva->tourActividad->tour->destino ? $reserva->tourActividad->tour->destino : 'Sin destino' }}
                        </td>
                        <td>{{ $reserva->tourActividad ? $reserva->tourActividad->display : 'Sin información del tour' }}
                        </td>
                        <td class="text-center">
                            {{ $reserva->tourActividad && $reserva->tourActividad->tour->fecha_inicio ? $reserva->tourActividad->tour->fecha_inicio : 'Sin fecha' }}
                        </td>
                        <td class="text-center">
                            {{ $reserva->tourActividad && $reserva->tourActividad->tour->fecha_fin ? $reserva->tourActividad->tour->fecha_fin : 'Sin fecha' }}
                        </td>
                        <td class="text-end">
                            {{ $reserva->tourActividad ? $reserva->tourActividad->precio_total . ' Bs' : 'Sin información del precio' }}
                        </td>
                        <td class="text-center {{ $reserva->estado == "Pendiente" ? "text-danger" : "" }}">
                            {{ $reserva->estado }}
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</body>

</html>