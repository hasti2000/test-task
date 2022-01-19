<?php

namespace App\Http\Resources\Api\v1\Admin;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\Api\v1\Admin\Category as CategoryResource;
use App\Http\Resources\Api\v1\Admin\post as PostResource;

class Category extends JsonResource
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
            'parent'=>$this->parent,
            // 'child' => CategoryResource::collection($this->whenLoaded('child')),
            // 'posts' => PostResource::collection($this->whenLoaded('posts')),
        ];
    }
}
