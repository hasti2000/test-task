<?php

namespace App\Http\Resources\Api\v1;

use App\Http\Resources\Api\v1\Comment as CommentResource;
use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\Api\v1\Admin\User as UserResorce;
use App\Models\Comment;
use App\Models\User;

class Post extends JsonResource
{

    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'id'=>$this->id,
            'title'=>$this->title,
            'body'=>$this->body,
            'image'=>$this->image,
            'like_count'=>$this->like_count,
            'comment_count'=>Comment::where('post_id' ,$this->id )->count(),
            'created_at'=>$this->created_at,
            'Authore'=> new UserResorce(User::find($this->user_id)->first()),
            'comments' => CommentResource::collection($this->whenLoaded('comments')),
        ];
    }
}
