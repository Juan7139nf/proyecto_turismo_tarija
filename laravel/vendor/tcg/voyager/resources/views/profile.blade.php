@extends('voyager::master')

@section('css')
    <style>
        .user-email {
            font-size: .85rem;
            margin-bottom: 1.5em;
        }
    </style>
@stop

@section('content')
    <div style="background-size:cover; background-image: url({{ Voyager::image( Voyager::setting('admin.bg_image'), voyager_asset('/images/bg.jpg')) }}); background-position: center center;position:relative; top:0; left:0; width:100%; height:300px;"></div>
    <!--<div style="height:300px; display:block; width:100%"></div>-->
    <div style="position:relative; z-index:9; text-align:center;">
        <img src="@if( !filter_var(Auth::user()->avatar, FILTER_VALIDATE_URL)){{ Voyager::image( Auth::user()->avatar ) }}@else{{ Auth::user()->avatar }}@endif"
             class="avatar"
             style="border-radius:50%; width:150px; height:150px; border:5px solid #fff;"
             alt="{{ Auth::user()->name }} avatar">
        <h2 class="fw-bold">{{ ucwords(Auth::user()->name) }}</h2>
        <div class="user-email text-muted fs-5">{{ ucwords(Auth::user()->email) }}</div>
        <p class="fs-3 fw-bold">{{ Auth::user()->nombre }} {{ Auth::user()->apellido }}</p>
        <p class="fs-4">{{ Auth::user()->telefono }}</p>
        @if ($route != '')
            <a href="{{ $route }}" class="btn btn-red fw-bold fs-4">{{ __('voyager::profile.edit') }}</a>
        @endif
    </div>
@stop
