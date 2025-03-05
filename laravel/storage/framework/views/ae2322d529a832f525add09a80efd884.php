<!DOCTYPE html>
<html lang="<?php echo e(str_replace('_', '-', app()->getLocale())); ?>">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><?php echo $__env->yieldContent('title', Voyager::setting("site.title")); ?></title>

    <?php $logo_favicon = Voyager::setting('site.logo', ''); ?>
    <?php if($logo_favicon == ''): ?>
        <link rel="shortcut icon" href="<?php echo e(voyager_asset('images/logo-icon.png')); ?>" type="image/png">
    <?php else: ?>
        <link rel="shortcut icon" href="<?php echo e(Voyager::image($logo_favicon)); ?>" type="image/png">
    <?php endif; ?>

    <link rel="stylesheet" href="css/bootstrap.css">
    <script src="js/bootstrap.js"></script>
</head>

<body class="bg-black">
    <div class="text-center py-5">
        <h1 class="fw-bold text-danger" style="font-size: 5rem"><?php echo e(setting('site.title')); ?></h1>
        <p class="fs-3 fw-bold text-white"><?php echo e(setting('site.description')); ?></p>
        <?php if(Route::has('login')): ?>
            <nav class="">
                <?php if(auth()->guard()->check()): ?>
                    <a href="/" class="btn btn-primary fs-3 fw-bold">
                        Entra aquí
                    </a>
                <?php else: ?>
                    <a href="/" class="btn btn-primary fs-3 fw-bold">
                        Iniciar sesion
                    </a>
                <?php endif; ?>
            </nav>
        <?php endif; ?>
        <?php $logo = Voyager::setting('site.logo', ''); ?>
        <?php if($logo == ''): ?>
            <img src="<?php echo e(voyager_asset('images/logo-icon.png')); ?>" alt="" style="max-width: 500px;">
        <?php else: ?>
            <img src="<?php echo e(Voyager::image($logo)); ?>" alt="" style="max-width: 500px;">
        <?php endif; ?>
        <p class="fs-3 fw-bold text-white">No deberias estar en esta página!</p>
        <a href="<?php echo e(url('/admin')); ?>" class="btn btn-outline-light btn-small fw-bold">
            PANEL ADMINISTRATIVO
        </a>
    </div>
</body>

</html><?php /**PATH D:\Codigos\proyectos_turismo\laravel\resources\views/welcome.blade.php ENDPATH**/ ?>