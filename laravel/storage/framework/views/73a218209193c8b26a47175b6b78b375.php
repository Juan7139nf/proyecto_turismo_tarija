<input type="number"
       class="form-control"
       name="<?php echo e($row->field); ?>"
       type="number"
       <?php if($row->required == 1): ?> required <?php endif; ?>
       <?php if(isset($options->min)): ?> min="<?php echo e($options->min); ?>" <?php endif; ?>
       <?php if(isset($options->max)): ?> max="<?php echo e($options->max); ?>" <?php endif; ?>
       step="<?php echo e($options->step ?? 'any'); ?>"
       placeholder="<?php echo e(old($row->field, $options->placeholder ?? $row->getTranslatedAttribute('display_name'))); ?>"
       value="<?php echo e(old($row->field, $dataTypeContent->{$row->field} ?? $options->default ?? '')); ?>">
<?php /**PATH D:\Codigos\turismo\laravel\vendor\tcg\voyager\src/../resources/views/formfields/number.blade.php ENDPATH**/ ?>