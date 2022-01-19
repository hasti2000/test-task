<?php

namespace App\Http\Controllers\Api\v1;

use App\Http\Controllers\Controller;
use App\Http\Resources\Api\v1\Post as PostResource;
use App\Models\Comment;
use Illuminate\Http\Request;
use App\Models\Post;

class PostController extends ApiController
{


    /**
     * Method index
     *
     *  this is a method to return all posts to user
     *
     * @return void
     */
    public function index()
    {
        $posts = Post::all();
        return $this->successRes(PostResource::collection($posts));
    }


    /**
     * Method show
     * this is a method to show single post with it comments to user
     *
     * @param Post $post [explicite description]
     *
     * @return void
     */
    public function show(Post $post)
    {
        $post = Post::find($post->id);
        return $this->successRes(new PostResource($post->load('comments')));
    }
    /**
     * Method sendComment
     *
     * this method is for sending comments to specific post
     *
     * @param Post $post [explicite description]
     * @param Request $request [explicite description]
     *
     * sending comment to the post
     *
     * @return void
     */
    public function sendComment(Post $post, Request $request)
    {
        $validated_data = $request->validate([
            'comment' => 'required',

        ]);

        $comment = auth()->user()->comments()->create([

            'comment' => $validated_data['comment'],
            'post_id' => $post->id,
        ]);

        return response()->json([
            'status' => 'success',
            'data' => $comment,
        ]);
    }
    public function likePost(Post $post)
    {
        $post->update([
            'like_count' => $post->like_count + 1,
        ]);
        return $this->successRes(new PostResource($post));
    }
}
