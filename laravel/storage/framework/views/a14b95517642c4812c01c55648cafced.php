<?php $__env->startSection('page_title', __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular')); ?>

<?php $__env->startSection('css'); ?>
    <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>">
<?php $__env->stopSection(); ?>

<?php $__env->startSection('page_header'); ?>
    <h1 class="page-title">
        <i class="<?php echo e($dataType->icon); ?>"></i>
        <?php echo e(__('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular')); ?>

    </h1>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <div class="page-content container-fluid">
        <form class="form-edit-add" role="form"
              action="<?php if(!is_null($dataTypeContent->getKey())): ?><?php echo e(route('voyager.'.$dataType->slug.'.update', $dataTypeContent->getKey())); ?><?php else: ?><?php echo e(route('voyager.'.$dataType->slug.'.store')); ?><?php endif; ?>"
              method="POST" enctype="multipart/form-data" autocomplete="off">
            <!-- PUT Method if we are editing -->
            <?php if(isset($dataTypeContent->id)): ?>
                <?php echo e(method_field("PUT")); ?>

            <?php endif; ?>
            <?php echo e(csrf_field()); ?>


            <div class="row">
                <div class="col-md-6">
                    <div class="panel panel-bordered">
                    
                        <?php if(count($errors) > 0): ?>
                            <div class="alert alert-danger">
                                <ul>
                                    <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <li><?php echo e($error); ?></li>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </ul>
                            </div>
                        <?php endif; ?>

                        <div class="panel-body">
                            <div class="form-group">
                                <label for="name"><?php echo e(__('voyager::generic.name')); ?></label>
                                <input type="text" class="form-control" id="name" name="name" placeholder="<?php echo e(__('voyager::generic.name')); ?>"
                                       value="<?php echo e(old('name', $dataTypeContent->name ?? '')); ?>">
                            </div>

                            <div class="form-group">
                                <label for="email"><?php echo e(__('voyager::generic.email')); ?></label>
                                <input type="email" class="form-control" id="email" name="email" placeholder="<?php echo e(__('voyager::generic.email')); ?>"
                                       value="<?php echo e(old('email', $dataTypeContent->email ?? '')); ?>">
                            </div>

                            <div class="form-group">
                                <label for="password"><?php echo e(__('voyager::generic.password')); ?></label>
                                <?php if(isset($dataTypeContent->password)): ?>
                                    <br>
                                    <small><?php echo e(__('voyager::profile.password_hint')); ?></small>
                                <?php endif; ?>
                                <input type="password" class="form-control" id="password" name="password" value="" autocomplete="new-password">
                            </div>
                            
                            <div class="form-group">
                                <label for="nombre">Nombres</label>
                                <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombres"
                                       value="<?php echo e(old('nombre', $dataTypeContent->nombre ?? '')); ?>">
                            </div>

                            <div class="form-group">
                                <label for="apellido">Apellidos</label>
                                <input type="text" class="form-control" id="apellido" name="apellido" placeholder="Apellidos"
                                       value="<?php echo e(old('apellido', $dataTypeContent->apellido ?? '')); ?>">
                            </div>

                            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('editRoles', $dataTypeContent)): ?>
                                <div class="form-group">
                                    <label for="default_role"><?php echo e(__('voyager::profile.role_default')); ?></label>
                                    <?php
                                        $dataTypeRows = $dataType->{(isset($dataTypeContent->id) ? 'editRows' : 'addRows' )};

                                        $row     = $dataTypeRows->where('field', 'user_belongsto_role_relationship')->first();
                                        $options = $row->details;
                                    ?>
                                    <?php echo $__env->make('voyager::formfields.relationship', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
                                </div>
                                <div class="form-group">
                                    <label for="additional_roles"><?php echo e(__('voyager::profile.roles_additional')); ?></label>
                                    <?php
                                        $row     = $dataTypeRows->where('field', 'user_belongstomany_role_relationship')->first();
                                        $options = $row->details;
                                    ?>
                                    <?php echo $__env->make('voyager::formfields.relationship', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
                                </div>
                            <?php endif; ?>
                            <?php
                            if (isset($dataTypeContent->locale)) {
                                $selected_locale = $dataTypeContent->locale;
                            } else {
                                $selected_locale = config('app.locale', 'en');
                            }

                            ?>
                            <div class="form-group">
                                <label for="locale"><?php echo e(__('voyager::generic.locale')); ?></label>
                                <select class="form-control select2" id="locale" name="locale">
                                    <?php $__currentLoopData = Voyager::getLocales(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $locale): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <option value="<?php echo e($locale); ?>"
                                    <?php echo e(($locale == $selected_locale ? 'selected' : '')); ?>><?php echo e($locale); ?></option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="telefono">Telefono</label>
                                <input type="text" class="form-control" id="telefono" name="telefono" placeholder="Telefono"
                                    value="<?php echo e(old('telefono', $dataTypeContent->telefono ?? '')); ?>">
                            </div>

                            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('editRoles', $dataTypeContent)): ?>
                            <div class="form-group">
                                <label for="estado_operador">Estado del Operador</label>
                                <select class="form-control" id="estado_operador" name="estado_operador">
                                    <option value="Activo" <?php echo e(old('estado_operador', $dataTypeContent->estado_operador ?? 'Activo') == 'Activo' ? 'selected' : ''); ?>>Activo</option>
                                    <option value="Inactivo" <?php echo e(old('estado_operador', $dataTypeContent->estado_operador ?? 'Activo') == 'Inactivo' ? 'selected' : ''); ?>>Inactivo</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="estado_guia">Estado de la Guía</label>
                                <select class="form-control" id="estado_guia" name="estado_guia">
                                    <option value="Disponible" <?php echo e(old('estado_guia', $dataTypeContent->estado_guia ?? 'Disponible') == 'Disponible' ? 'selected' : ''); ?>>Disponible</option>
                                    <option value="En servicio" <?php echo e(old('estado_guia', $dataTypeContent->estado_guia ?? 'Disponible') == 'En servicio' ? 'selected' : ''); ?>>En servicio</option>
                                    <option value="Asignado" <?php echo e(old('estado_guia', $dataTypeContent->estado_guia ?? 'Disponible') == 'Asignado' ? 'selected' : ''); ?>>Asignado</option>
                                    <option value="Inactivo" <?php echo e(old('estado_guia', $dataTypeContent->estado_guia ?? 'Disponible') == 'Inactivo' ? 'selected' : ''); ?>>Inactivo</option>
                                </select>
                            </div>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="panel panel panel-bordered panel-warning">
                        <div class="panel-body">
                            <div class="form-group">
                                <?php if(isset($dataTypeContent->avatar)): ?>
                                    <img src="<?php echo e(filter_var($dataTypeContent->avatar, FILTER_VALIDATE_URL) ? $dataTypeContent->avatar : Voyager::image( $dataTypeContent->avatar )); ?>" style="width:200px; height:auto; clear:both; display:block; padding:2px; border:1px solid #ddd; margin-bottom:10px;" />
                                <?php endif; ?>
                                <input type="file" data-name="avatar" name="avatar">
                            </div>
                            <div class="form-group">
                                <label for="especialidad_guia">Especialidad</label>
                                <textarea class="form-control richTextBox" name="especialidad_guia" id="richtextespecialidad_guia">
                                    <?php echo e(old('especialidad_guia', $dataTypeContent->especialidad_guia ?? '')); ?>

                                </textarea>
                                <?php $__env->startPush('javascript'); ?>
                                    <script>
                                        $(document).ready(function() {
                                            var additionalConfig = {
                                                selector: 'textarea.richTextBox[name="especialidad_guia"]',
                                            }
                                        
                                            $.extend(additionalConfig, <?php echo json_encode($options->tinymceOptions ?? (object)[]); ?>)
                                        
                                            tinymce.init(window.voyagerTinyMCE.getConfig(additionalConfig));
                                        });
                                    </script>
                                <?php $__env->stopPush(); ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <button type="submit" class="btn btn-primary pull-right save">
                <?php echo e(__('voyager::generic.save')); ?>

            </button>
        </form>
        <div style="display:none">
            <input type="hidden" id="upload_url" value="<?php echo e(route('voyager.upload')); ?>">
            <input type="hidden" id="upload_type_slug" value="<?php echo e($dataType->slug); ?>">
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('javascript'); ?>
    <script>
        $('document').ready(function () {
            $('.toggleswitch').bootstrapToggle();
        });
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('voyager::master', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH D:\Codigos\turismo\laravel\vendor\tcg\voyager\src/../resources/views/users/edit-add.blade.php ENDPATH**/ ?>