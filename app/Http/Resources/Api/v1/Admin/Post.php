<?php

namespace App\Http\Resources\Api\v1\Admin;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\Api\v1\Admin\User as UserResorce;
use App\Http\Resources\Api\v1\Admin\Comment as CommentResource;
use App\Http\Resources\Api\v1\Admin\Category as CategoryResource;
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
            'title' => $this->title,
            'body' => $this->body,
            'image' => $this->image,
            'like_count' => $this->like_count,
            'comment_count' => $this->comment_count,
            'created_at' => $this->created_at,
            'Authore' => new UserResorce(User::find($this->user_id)),
            'comments' => CommentResource::collection($this->whenLoaded('comments')),
            'categories'=>CategoryResource::collection($this->whenLoaded('categories')),

        ];
    }
}
