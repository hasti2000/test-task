<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'parent',
    ];


    /**
     * Category Child Relations
     *
     * @return void
     */
    public function child()
    {
        return $this->hasMany(Category::class, 'parent', 'id');
    }

    /**
     * Post Many To Many Relation
     *
     * @return void
     */
    public function posts()
    {
        return $this->belongsToMany(Post::class);
    }
}
