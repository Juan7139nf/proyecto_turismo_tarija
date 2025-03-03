<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;

class AuthController extends Controller
{
    
    // Método para el inicio de sesión
    public function login(Request $request)
    {
        // Validación de los datos de entrada
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required|string|min:6',
        ]);

        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 400);
        }

        // Intentar autenticar al usuario
        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            $user = Auth::user();
            $user->avatar = Voyager::image($user->avatar);
            
            // Generar un token de acceso para el usuario
            $token = $user->createToken('API Token')->plainTextToken;

            return response()->json([
                'message' => 'Login exitoso',
                'token' => $token,
                'user' => $user
            ]);
        }

        return response()->json(['error' => 'Credenciales incorrectas'], 401);
    }

    // Método para cerrar sesión
    public function logout(Request $request)
    {
        $request->user()->currentAccessToken()->delete();

        return response()->json(['message' => 'Cierre de sesión exitoso']);
    }

    public function user(Request $request)
    {
        $user = $request->user();
        $user->avatar = Voyager::image($user->avatar);

        return response()->json($user);
    }
}
