<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>@yield('title', Voyager::setting("site.title"))</title>

    <?php $logo_favicon = Voyager::setting('site.logo', ''); ?>
    @if($logo_favicon == '')
        <link rel="shortcut icon" href="{{ voyager_asset('images/logo-icon.png') }}" type="image/png">
    @else
        <link rel="shortcut icon" href="{{ Voyager::image($logo_favicon) }}" type="image/png">
    @endif

    <link rel="stylesheet" href="css/bootstrap.css">
    <script src="js/bootstrap.js"></script>
</head>

<body class="bg-black">
    <div class="text-center py-5">
        <h1 class="fw-bold text-danger" style="font-size: 5rem">{{ setting('site.title') }}</h1>
        <p class="fs-3 fw-bold text-white">{{ setting('site.description') }}</p>
        @if (Route::has('login'))
            <nav class="">
                @auth
                    <a href="/" class="btn btn-primary fs-3 fw-bold">
                        Entra aquí
                    </a>
                @else
                    <a href="/" class="btn btn-primary fs-3 fw-bold">
                        Iniciar sesion
                    </a>
                @endauth
            </nav>
        @endif
        <?php $logo = Voyager::setting('site.logo', ''); ?>
        @if($logo == '')
            <img src="{{ voyager_asset('images/logo-icon.png') }}" alt="" style="max-width: 500px;">
        @else
            <img src="{{ Voyager::image($logo) }}" alt="" style="max-width: 500px;">
        @endif
        <p class="fs-3 fw-bold text-white">No deberias estar en esta página!</p>
        <a href="{{ url('/admin') }}" class="btn btn-outline-light btn-small fw-bold">
            PANEL ADMINISTRATIVO
        </a>
    </div>
</body>

</html>