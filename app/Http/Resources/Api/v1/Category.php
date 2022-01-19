<?php

namespace App\Http\Resources\Api\v1;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\Api\v1\Category as CategoryResource;
use App\Http\Resources\Api\v1\Post as PostResource;
use Illuminate\Queue\Events\Looping;

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

            'title'=>$this->title,
            'parent'=>$this->parent,
            'child' => CategoryResource::collection($this->whenLoaded('child')),
            'posts'=>PostResource::collection($this->whenLoaded(['posts'])),


        ];
    }
}
