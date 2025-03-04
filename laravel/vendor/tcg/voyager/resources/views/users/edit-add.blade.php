@extends('voyager::master')

@section('page_title', __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular'))

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@section('page_header')
    <h1 class="page-title">
        <i class="{{ $dataType->icon }}"></i>
        {{ __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular') }}
    </h1>
@stop

@section('content')
    <div class="page-content container-fluid">
        <form class="form-edit-add" role="form"
              action="@if(!is_null($dataTypeContent->getKey())){{ route('voyager.'.$dataType->slug.'.update', $dataTypeContent->getKey()) }}@else{{ route('voyager.'.$dataType->slug.'.store') }}@endif"
              method="POST" enctype="multipart/form-data" autocomplete="off">
            <!-- PUT Method if we are editing -->
            @if(isset($dataTypeContent->id))
                {{ method_field("PUT") }}
            @endif
            {{ csrf_field() }}

            <div class="row">
                <div class="col-md-6">
                    <div class="panel panel-bordered">
                    {{-- <div class="panel"> --}}
                        @if (count($errors) > 0)
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif

                        <div class="panel-body">
                            <div class="form-group">
                                <label for="name">{{ __('voyager::generic.name') }}</label>
                                <input type="text" class="form-control" id="name" name="name" placeholder="{{ __('voyager::generic.name') }}"
                                       value="{{ old('name', $dataTypeContent->name ?? '') }}">
                            </div>

                            <div class="form-group">
                                <label for="email">{{ __('voyager::generic.email') }}</label>
                                <input type="email" class="form-control" id="email" name="email" placeholder="{{ __('voyager::generic.email') }}"
                                       value="{{ old('email', $dataTypeContent->email ?? '') }}">
                            </div>

                            <div class="form-group">
                                <label for="password">{{ __('voyager::generic.password') }}</label>
                                @if(isset($dataTypeContent->password))
                                    <br>
                                    <small>{{ __('voyager::profile.password_hint') }}</small>
                                @endif
                                <input type="password" class="form-control" id="password" name="password" value="" autocomplete="new-password">
                            </div>
                            
                            <div class="form-group">
                                <label for="nombre">Nombres</label>
                                <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombres"
                                       value="{{ old('nombre', $dataTypeContent->nombre ?? '') }}">
                            </div>

                            <div class="form-group">
                                <label for="apellido">Apellidos</label>
                                <input type="text" class="form-control" id="apellido" name="apellido" placeholder="Apellidos"
                                       value="{{ old('apellido', $dataTypeContent->apellido ?? '') }}">
                            </div>

                            @can('editRoles', $dataTypeContent)
                                <div class="form-group">
                                    <label for="default_role">{{ __('voyager::profile.role_default') }}</label>
                                    @php
                                        $dataTypeRows = $dataType->{(isset($dataTypeContent->id) ? 'editRows' : 'addRows' )};

                                        $row     = $dataTypeRows->where('field', 'user_belongsto_role_relationship')->first();
                                        $options = $row->details;
                                    @endphp
                                    @include('voyager::formfields.relationship')
                                </div>
                                <div class="form-group">
                                    <label for="additional_roles">{{ __('voyager::profile.roles_additional') }}</label>
                                    @php
                                        $row     = $dataTypeRows->where('field', 'user_belongstomany_role_relationship')->first();
                                        $options = $row->details;
                                    @endphp
                                    @include('voyager::formfields.relationship')
                                </div>
                            @endcan
                            @php
                            if (isset($dataTypeContent->locale)) {
                                $selected_locale = $dataTypeContent->locale;
                            } else {
                                $selected_locale = config('app.locale', 'en');
                            }

                            @endphp
                            <div class="form-group">
                                <label for="locale">{{ __('voyager::generic.locale') }}</label>
                                <select class="form-control select2" id="locale" name="locale">
                                    @foreach (Voyager::getLocales() as $locale)
                                    <option value="{{ $locale }}"
                                    {{ ($locale == $selected_locale ? 'selected' : '') }}>{{ $locale }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="telefono">Telefono</label>
                                <input type="text" class="form-control" id="telefono" name="telefono" placeholder="Telefono"
                                    value="{{ old('telefono', $dataTypeContent->telefono ?? '') }}">
                            </div>

                            @can('editRoles', $dataTypeContent)
                            <div class="form-group">
                                <label for="estado_operador">Estado del Operador</label>
                                <select class="form-control" id="estado_operador" name="estado_operador">
                                    <option value="Activo" {{ old('estado_operador', $dataTypeContent->estado_operador ?? 'Activo') == 'Activo' ? 'selected' : '' }}>Activo</option>
                                    <option value="Inactivo" {{ old('estado_operador', $dataTypeContent->estado_operador ?? 'Activo') == 'Inactivo' ? 'selected' : '' }}>Inactivo</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="estado_guia">Estado de la Guía</label>
                                <select class="form-control" id="estado_guia" name="estado_guia">
                                    <option value="Disponible" {{ old('estado_guia', $dataTypeContent->estado_guia ?? 'Disponible') == 'Disponible' ? 'selected' : '' }}>Disponible</option>
                                    <option value="En servicio" {{ old('estado_guia', $dataTypeContent->estado_guia ?? 'Disponible') == 'En servicio' ? 'selected' : '' }}>En servicio</option>
                                    <option value="Asignado" {{ old('estado_guia', $dataTypeContent->estado_guia ?? 'Disponible') == 'Asignado' ? 'selected' : '' }}>Asignado</option>
                                    <option value="Inactivo" {{ old('estado_guia', $dataTypeContent->estado_guia ?? 'Disponible') == 'Inactivo' ? 'selected' : '' }}>Inactivo</option>
                                </select>
                            </div>
                            @endcan
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="panel panel panel-bordered panel-warning">
                        <div class="panel-body">
                            <div class="form-group">
                                @if(isset($dataTypeContent->avatar))
                                    <img src="{{ filter_var($dataTypeContent->avatar, FILTER_VALIDATE_URL) ? $dataTypeContent->avatar : Voyager::image( $dataTypeContent->avatar ) }}" style="width:200px; height:auto; clear:both; display:block; padding:2px; border:1px solid #ddd; margin-bottom:10px;" />
                                @endif
                                <input type="file" data-name="avatar" name="avatar">
                            </div>
                            <div class="form-group">
                                <label for="especialidad_guia">Especialidad</label>
                                <textarea class="form-control richTextBox" name="especialidad_guia" id="richtextespecialidad_guia">
                                    {{ old('especialidad_guia', $dataTypeContent->especialidad_guia ?? '') }}
                                </textarea>
                                @push('javascript')
                                    <script>
                                        $(document).ready(function() {
                                            var additionalConfig = {
                                                selector: 'textarea.richTextBox[name="especialidad_guia"]',
                                            }
                                        
                                            $.extend(additionalConfig, {!! json_encode($options->tinymceOptions ?? (object)[]) !!})
                                        
                                            tinymce.init(window.voyagerTinyMCE.getConfig(additionalConfig));
                                        });
                                    </script>
                                @endpush
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <button type="submit" class="btn btn-primary pull-right save">
                {{ __('voyager::generic.save') }}
            </button>
        </form>
        <div style="display:none">
            <input type="hidden" id="upload_url" value="{{ route('voyager.upload') }}">
            <input type="hidden" id="upload_type_slug" value="{{ $dataType->slug }}">
        </div>
    </div>
@stop

@section('javascript')
    <script>
        $('document').ready(function () {
            $('.toggleswitch').bootstrapToggle();
        });
    </script>
@stop
