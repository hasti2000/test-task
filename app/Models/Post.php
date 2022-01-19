<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;
    protected $fillable = [
        'title', 'body', 'image', 'like_count', 'comment_count', 'user_id',
    ];

    /**
     * Users relation.
     *
     * @return void
     */
    public function users()
    {
        $this->belongsTo(User::class);
    }
    /**
     * comments relation.
     *
     * return \Illuminate\Database\Eloquent\Relations\MorphMany
     */
    public function comments()
    {
        return $this->hasMany(Comment::class);
    }
    /**
     * categories relation.
     *
     * @return void
     *
     */
    public function  categories()
    {
        return $this->belongsToMany(Category::class);
    }
}
