<?php

namespace App\Http\Controllers\Api\v1\Admin;

use App\Http\Controllers\Api\v1\ApiController;
use App\Http\Controllers\Controller;
use App\Http\Resources\Api\v1\Admin\Category as categoryResource;
use App\Http\Resources\Api\v1\Admin\Post as PostResource;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CategoryController extends ApiController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categories = Category::all();
        return categoryResource::collection($categories->load(['child']));
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
            'title' => 'required|string|unique:categories,title',
            'parent' => 'required|integer',

        ]);
        if (!$validated_data) {
            return $this->errorRes(422);
        }
        DB::beginTransaction();

        $category = Category::create([
            'parent' => $request->parent,
            'title' => $request->title,

        ]);

        DB::commit();

        return $this->successRes(201, new CategoryResource($category));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Category $category)
    {
        return $this->successRes(new categoryResource($category));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Category $category)
    {
        $validated_data = $request->validate([
            'title' => 'required|string|unique:categories,title',
            'parent' => 'required|integer',
        ]);
        if (!$validated_data) {
            return $this->errorRes(422);
        }

        DB::beginTransaction();
        $category->update([
            'parent' => $request->parent,
            'title' => $request->title,
        ]);
        DB::commit();
        return $this->successRes(200, new CategoryResource($category));
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Category $category)
    {

        DB::beginTransaction();
        $category->delete();
        DB::commit();

        return $this->successRes(200, new CategoryResource($category));
    }

    /**
     * Method child
     *
     * to return children of each Category
     *
     * @param Category $category [explicite description]
     *
     * @return void
     */
    public function child(Category $category)
    {
        return $this->successRes(new CategoryResource($category->load('child')));
    }
    /**
     * Method posts
     *
     * to return posts of a Category
     *
     * @param Category $category [explicite description]
     *
     * @return void
     */
    public function posts(Category $category)
    {
        return $this->successRes(new PostResource($category->load('posts')));
    }
}
