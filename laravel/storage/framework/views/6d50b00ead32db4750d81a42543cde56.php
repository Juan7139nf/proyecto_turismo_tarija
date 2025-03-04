<!DOCTYPE html>
<html lang="<?php echo e(config('app.locale')); ?>" dir="<?php echo e(__('voyager::generic.is_rtl') == 'true' ? 'rtl' : 'ltr'); ?>">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="robots" content="none" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="admin login">

    <?php $admin_favicon = Voyager::setting('admin.icon_image', ''); ?>
    <?php if($admin_favicon == ''): ?>
        <link rel="shortcut icon" href="<?php echo e(voyager_asset('images/logo-icon.png')); ?>" type="image/png">
    <?php else: ?>
        <link rel="shortcut icon" href="<?php echo e(Voyager::image($admin_favicon)); ?>" type="image/png">
    <?php endif; ?>

    <title><?php echo $__env->yieldContent('title', 'Admin - ' . Voyager::setting("admin.title")); ?></title>

    <?php echo $__env->yieldContent('pre_css'); ?>
    <link rel="stylesheet" href="<?php echo e(asset('css/bootstrap.css')); ?>">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
</head>

<body>
    <div class="w-100 m-auto align-items-center bg-black">
        <div class="position-relative overflow-hidden">
            <img class="vw-100 vh-100 object-fit-cover position-relative"
                src="<?php echo e(Voyager::image(Voyager::setting("admin.bg_image"), voyager_asset("images/bg.jpg"))); ?>" alt="" style="filter: blur(5px); object-position: center;">
            <div class="position-absolute bottom-0 d-flex">
                <div class="">
                    <?php $admin_logo_img = Voyager::setting('admin.icon_image', ''); ?>
                    <?php if($admin_logo_img == ''): ?>
                        <img class="" src="<?php echo e(voyager_asset('images/logo-icon-light.png')); ?>" alt="Logo Icon" height="90">
                    <?php else: ?>
                        <img class="" src="<?php echo e(Voyager::image($admin_logo_img)); ?>" alt="Logo Icon" height="90">
                    <?php endif; ?>
                </div>
                <div class="text-white">
                    <h1 class="fs-1 fw-bold"><?php echo e(Voyager::setting('admin.title', 'Voyager')); ?></h1>
                    <p class="fs-4"><?php echo e(Voyager::setting('admin.description', __('voyager::login.welcome'))); ?>

                    </p>
                </div>
            </div>
        </div>

        <div class="position-absolute top-0 vw-100 vh-100 align-content-center">
            <div class="card p-5 mx-auto bg-black bg-opacity-25" style="max-width: 30rem;">
                <div class=""><?php $admin_logo_img = Voyager::setting('admin.icon_image', ''); ?>
                    <?php if($admin_logo_img == ''): ?>
                        <img class="" src="<?php echo e(voyager_asset('images/logo-icon-light.png')); ?>" alt="Logo Icon" height="70">
                    <?php else: ?>
                        <img class="" src="<?php echo e(Voyager::image($admin_logo_img)); ?>" alt="Logo Icon" height="70">
                    <?php endif; ?>
                </div>
                <?php echo $__env->yieldContent('content'); ?>
            </div>
        </div> <!-- .login-sidebar -->
    </div> <!-- .container-fluid -->
    <?php echo $__env->yieldContent('post_js'); ?>
</body>

</html><?php /**PATH D:\Codigos\proyectos_turismo\laravel\vendor\tcg\voyager\src/../resources/views/auth/master.blade.php ENDPATH**/ ?>