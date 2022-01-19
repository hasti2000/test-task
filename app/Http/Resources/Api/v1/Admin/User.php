<?php

namespace App\Http\Resources\Api\v1\Admin;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\Api\v1\Admin\Post as PostResource;

class User extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        // return parent::toArray($request);
        return [
            'name' => $this->name,
            'email' => $this->email,
            'is_admin'=>$this->is_admin,
            'token' => $this->api_token,
            'posts' => PostResource::collection($this->whenLoaded('posts')),


        ];
    }
}
