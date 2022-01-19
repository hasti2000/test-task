<?php

namespace App\Http\Controllers\Api\v1\Admin;

use App\Http\Controllers\Api\v1\ApiController;
use App\Http\Controllers\Controller;
use App\Http\Resources\Api\v1\Admin\Comment as CommentResource;
use Illuminate\Http\Request;
use App\Models\Comment;

class CommentController extends ApiController
{

    /**
     * Method approved
     *
     * @return void [return approved comments collection]
     */
    public function approved()
    {
        $comments = Comment::where('approved', 1)->get();
        return CommentResource::collection($comments->load('users'));
    }



    /**
     * Method unapproved
     *
     * @return void [return unapproved comments collection]
     */
    public function unapproved()
    {
        $comments = Comment::where('approved', 0)->get();
        return CommentResource::collection($comments->load('users'));
    }




    /**
     * Method approveComment
     *
     * @param Comment $comment [Comment Model]
     *
     * @return void [approve specific comment]
     */
    public function approveComment(Comment $comment)
    {
        $comments = Comment::where('approved', 0)->get();
        $comment->update([
            'approve' => 1,
        ]);
        return $this->successRes(new CommentResource($comment));
    }
}
