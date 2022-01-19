<?php

namespace App\Http\Resources\Api\v1;
use App\Http\Resources\Api\v1\User as UserResource;
use Illuminate\Http\Resources\Json\JsonResource;
use App\Models\User;
class Comment extends JsonResource
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
            'comment'=>$this->comment,
            'created_at'=>$this->created_at,
            'author'=>new UserResource(User::find($this->user_id)),
        ];
    }
}
