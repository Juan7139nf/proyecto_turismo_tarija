<?php $__env->startSection('css'); ?>
    <style>
        .user-email {
            font-size: .85rem;
            margin-bottom: 1.5em;
        }
    </style>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <div style="background-size:cover; background-image: url(<?php echo e(Voyager::image( Voyager::setting('admin.bg_image'), voyager_asset('/images/bg.jpg'))); ?>); background-position: center center;position:relative; top:0; left:0; width:100%; height:300px;"></div>
    <!--<div style="height:300px; display:block; width:100%"></div>-->
    <div style="position:relative; z-index:9; text-align:center;">
        <img src="<?php if( !filter_var(Auth::user()->avatar, FILTER_VALIDATE_URL)): ?><?php echo e(Voyager::image( Auth::user()->avatar )); ?><?php else: ?><?php echo e(Auth::user()->avatar); ?><?php endif; ?>"
             class="avatar"
             style="border-radius:50%; width:150px; height:150px; border:5px solid #fff;"
             alt="<?php echo e(Auth::user()->name); ?> avatar">
        <h2 class="fw-bold"><?php echo e(ucwords(Auth::user()->name)); ?></h2>
        <div class="user-email text-muted fs-5"><?php echo e(ucwords(Auth::user()->email)); ?></div>
        <p class="fs-3 fw-bold"><?php echo e(Auth::user()->nombre); ?> <?php echo e(Auth::user()->apellido); ?></p>
        <p class="fs-4"><?php echo e(Auth::user()->telefono); ?></p>
        <?php if($route != ''): ?>
            <a href="<?php echo e($route); ?>" class="btn btn-red fw-bold fs-4"><?php echo e(__('voyager::profile.edit')); ?></a>
        <?php endif; ?>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('voyager::master', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH D:\Codigos\turismo\laravel\vendor\tcg\voyager\src/../resources/views/profile.blade.php ENDPATH**/ ?>