<?php

namespace App\Http\Controllers\Api\v1;


use App\Http\Resources\Api\v1\Admin\Category as CategoryResource;
use App\Models\Category;


class CategoryController extends ApiController
{
    /**
     * Method
     *
     * To return the Collection of Category
     *
     * @return void
     */
    public function index()
    {
        $category = Category::all();

        return $this->successRes(CategoryResource::collection($category->load(['child'])));
    }

    /**
     * Method show
     *
     * to show the collection of a Post
     *
     * @param Category $category [explicite description]
     *
     * @return void
     */
    public function show(Category $category)
    {
        $category = Category::find($category->id);
        return $this->successRes(new CategoryResource($category->load('posts')));
    }
}
