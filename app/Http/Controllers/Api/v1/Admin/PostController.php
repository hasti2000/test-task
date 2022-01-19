<?php

namespace App\Http\Controllers\Api\v1\Admin;

use App\Http\Controllers\Api\v1\ApiController;
use App\Http\Controllers\Controller;
use App\Http\Resources\Api\v1\Admin\Post as PostResource;
use Illuminate\Http\Request;
use App\Models\Post;
use Illuminate\Support\Facades\DB;
class PostController extends ApiController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts=Post::all();
        return PostResource::collection($posts->load('categories'));
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
            'title' => 'required|string',
            'body' => 'required|string',
            'categories'=>'required',
            'image' => 'required',

        ]);
        if (!$validated_data) {
            return $this->errorRes(422);
        }
        DB::beginTransaction();

        $post = auth()->user()->posts()->create([
            'title'=>$validated_data['title'],
            'body'=>$validated_data['body'],
            'image'=>$validated_data['image'],
        ]);
        $post->categories()->sync($validated_data['categories']);
        DB::commit();

        return $this->successRes(new PostResource($post->load('categories')));



    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
        return $this->successRes(new PostResource($post));

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post)
    {
        $validated_data = $request->validate([
            'title' => 'required|string',
            'body' => 'required|string',
            'categories'=>'required',
            'image' => 'required',

        ]);
        if (!$validated_data) {
            return $this->errorRes(422);
        }
        DB::beginTransaction();
        $post->update($validated_data);
        $post->categories()->sync($validated_data['categories']);

        DB::commit();

        return $this->successRes(new PostResource($post->load('categories')));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {


        DB::beginTransaction();
        $post->delete();
        DB::commit();

        return $this->successRes(200, new PostResource($post));
    }
}
