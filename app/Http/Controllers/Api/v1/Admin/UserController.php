<?php

namespace App\Http\Controllers\Api\v1\Admin;

use App\Http\Controllers\Api\v1\ApiController;
use App\Http\Controllers\Controller;
use App\Http\Resources\Api\v1\Admin\User as AdminUserResource;
use App\Http\Resources\Api\v1\User as UserResource;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
Use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
class UserController extends ApiController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users=User::paginate(10);
        return AdminUserResource::collection($users->load('posts'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validated_data = $request->validate([

            'name' => 'required|max:255',
            'email' => 'required|email|max:255|unique:users',
            'password' => 'required|min:6',



        ]);
        if (!$validated_data) {
            return $this->errorRes(422);
        }

        DB::beginTransaction();

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'api_token'=>Str::random(200),
            'password' => Hash::make($request->password),
            'is_admin'=>$request->is_admin
        ]);
        DB::commit();

        return new UserResource($user);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        return $this->successRes(new AdminUserResource($user));

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        $validated_data = $request->validate([

            'name' => 'required|max:255',
            'email' => 'required|email|max:255|unique:users',
            'password' => 'required|min:6',



        ]);
        if (!$validated_data) {
            return $this->errorRes(422);
        }
        DB::beginTransaction();

        $user->update([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);
        DB::commit();


        return new UserResource($user);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        DB::beginTransaction();
        $user->delete();
        DB::commit();

        return $this->successRes(200 , new UserResource($user));
    }

public function adminUsers()
{
    $admins=User::where('is_admin', 1)->get();
    return $this->successRes($admins);
}
}
