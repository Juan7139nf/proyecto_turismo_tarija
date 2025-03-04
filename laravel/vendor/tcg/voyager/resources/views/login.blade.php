@extends('voyager::auth.master')

@section('content')
    <form action="{{ route('voyager.login') }}" method="POST">
        {{ csrf_field() }}
        <h1 class="h3 mb-3 fw-bold text-white">{{ __('voyager::login.signin_below') }}</h1>

        <div class="form-floating mb-3">
            <input type="email" class="form-control" name="email" id="email" value="{{ old('email') }}"
                placeholder="{{ __('voyager::generic.email') }}" required>
            <label for="email">{{ __('voyager::generic.email') }}</label>
        </div>
        <div class="form-floating">
            <input type="password" class="form-control" id="floatingPassword" name="password"
                placeholder="{{ __('voyager::generic.password') }}" required>
            <label for="floatingPassword">{{ __('voyager::generic.password') }}</label>
        </div>

        <div class="form-check text-start my-3">
            <input class="form-check-input" type="checkbox" name="remember" id="remember" value="1">
            <label class="form-check-label text-white" for="remember">
                {{ __('voyager::generic.remember_me') }}
            </label>
        </div>
        <button class="btn btn-primary w-100 py-2 fw-bold fs-4" type="submit">
            <span class="signingin d-none">{{ __('voyager::login.loggingin') }}...</span>
            <span class="signin">{{ __('voyager::generic.login') }}</span>
        </button>
        <p class="mt-3 mb-3 text-white">&copy; 2025 Los hombres detras del sol</p>
    </form>
    <div style="clear:both"></div>

    @if(!$errors->isEmpty())
        <div class="btn btn-primary active">
            <ul class="list-group list-unstyled">
                @foreach($errors->all() as $err)
                    <li class="fw-bold">{{ $err }}</li>
                @endforeach
            </ul>
        </div>
    @endif
@endsection

@section('post_js')

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const btn = document.querySelector('button[type="submit"]');
            const form = document.forms[0];
            const email = document.querySelector('[name="email"]');
            const password = document.querySelector('[name="password"]');

            // Deshabilitar botón inicialmente
            btn.disabled = true;

            // Función para validar los campos
            function validarCampos() {
                if (email.value.trim() !== '' && password.value.trim() !== '') {
                    btn.disabled = false;
                } else {
                    btn.disabled = true;
                }
            }

            // Validar en cada cambio
            email.addEventListener('input', validarCampos);
            password.addEventListener('input', validarCampos);

            // Mostrar el spinner al enviar
            btn.addEventListener('click', function (ev) {
                if (form.checkValidity()) {
                    btn.querySelector('.signingin').className = 'signingin';
                    btn.querySelector('.signin').className = 'signin d-none';
                } else {
                    ev.preventDefault();
                }
            });

            // Autoenfocar y manejar estilos
            email.focus();
            document.getElementById('emailGroup')?.classList.add("focused");

            email.addEventListener('focusin', () => {
                document.getElementById('emailGroup')?.classList.add("focused");
            });

            email.addEventListener('focusout', () => {
                document.getElementById('emailGroup')?.classList.remove("focused");
            });

            password.addEventListener('focusin', () => {
                document.getElementById('passwordGroup')?.classList.add("focused");
            });

            password.addEventListener('focusout', () => {
                document.getElementById('passwordGroup')?.classList.remove("focused");
            });
        });


    </script>
@endsection