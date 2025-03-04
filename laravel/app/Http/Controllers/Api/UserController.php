<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Intervention\Image\Facades\Image;
use Validator;

class UserController extends Controller
{
    public function create(Request $request)
    {
        // Validación
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255|unique:users',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:8',
            'nombre' => 'required|string|max:255',
            'apellido' => 'required|string|max:255',
            'telefono' => 'required|numeric',
        ]);
    
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }
    
        // Crear usuario
        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
        $user->nombre = $request->nombre;
        $user->apellido = $request->apellido;
        $user->telefono = $request->telefono;
        $user->save();
        
        // Generar un token de acceso para el usuario
        $token = $user->createToken('API Token')->plainTextToken;
    
        // Devolver respuesta con el token
        return response()->json([
            'message' => 'User created successfully!',
            'user' => $user,
            'token' => $token
        ], 201);
    }

    // Editar usuario
    public function edit(Request $request, $id)
    {
        // Validación
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255|unique:users,name,'.$id,
            'email' => 'required|string|email|max:255|unique:users,email,' . $id,
            'password' => 'nullable|string|min:8',
            'nombre' => 'required|string|max:255',
            'apellido' => 'required|string|max:255',
            'telefono' => 'required|numeric',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        // Encontrar usuario
        $user = User::find($id);
        if (!$user) {
            return response()->json(['message' => 'User not found!'], 404);
        }

        // Actualizar usuario
        $user->name = $request->name;
        $user->email = $request->email;
        if ($request->has('password')) {
            $user->password = Hash::make($request->password);
        }
        $user->nombre = $request->nombre;
        $user->apellido = $request->apellido;
        $user->telefono = $request->telefono;
        $user->save();

        return response()->json(['message' => 'User updated successfully!', 'user' => $user], 200);
    }

    // Subir avatar
    public function updateAvatar(Request $request, $id)
    {
        // Validación de la imagen
        $validator = Validator::make($request->all(), [
            'avatar' => 'required|image|max:2048',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        // Encontrar usuario
        $user = User::find($id);
        if (!$user) {
            return response()->json(['message' => 'User not found!'], 404);
        }

        // Subir avatar
        if ($request->hasFile('avatar')) {
            // Obtener la imagen
            $image = $request->file('avatar');
    
            // Generar nombre único basado en la fecha actual (con milisegundos)
            $imageName = now()->format('Ymd_His_v') . '.' . 'webp'; // Ejemplo: 20250303_101230_1234.webp
    
            // Usar Intervention Image para redimensionar y convertir la imagen a webp
            $imageProcessed = Image::make($image)
                ->resize(300, null, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->encode('webp', 90); // Convertir a WebP con calidad 90
    
            // Guardar la imagen procesada en el almacenamiento
            $imagePath = 'users/March2025/' . $imageName;
            Storage::disk('public')->put($imagePath, $imageProcessed);
    
            // Eliminar el avatar anterior si existe
            if ($user->avatar) {
                Storage::disk('public')->delete($user->avatar);
            }
    
            // Actualizar campo avatar
            $user->avatar = $imagePath;
            $user->save();
        }
        $user->avatar = url('storage/' . $user->avatar);

        return response()->json(['message' => 'Avatar updated successfully!', 'user' => $user], 200);
    }
}
