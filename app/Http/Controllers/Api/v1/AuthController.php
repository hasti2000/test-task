<?php

namespace App\Http\Controllers\Api\v1;

use App\Http\Controllers\Controller;
use App\Http\Resources\Api\v1\Admin\User as UserResource;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Password;

class AuthController extends ApiController
{
    public function register(Request $request)
    {
        //data validation
        $validated_data = $request->validate([

            'name' => 'required|max:255',
            'email' => 'required|email|max:255|unique:users',
            'password' => 'required|min:6',


        ]);
        if (!$validated_data) {
            return $this->errorRes(422);
        }


        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'api_token' => Str::random(200),
            'password' => Hash::make($request->password),
        ]);

        return new UserResource($user);
    }
    public function login(Request $request)
    {

        $validated_data = $request->validate([

            'email' => 'required|email|exists:users,email',
            'password' => 'required|min:6',
        ]);

        if (!auth()->attempt($validated_data)) {
            return $this->errorRes(403, 'is not correct');
        }

        return new UserResource(User::find(auth()->user()->id));
    }


    public function authenticatedUser()
    {
        return response()->json(auth()->user());
    }
    public function logOut(User $user)
    {
         return ($user->delete('api_token'));


    }
}
