<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;

    protected $fillable = [
        'comment', 'approved', 'parent_id', 'post_id'
    ];


    /**
     * Method child
     *
     * @return void
     */
    public function child()
    {
        return $this->hasMany(Comment::class, 'parent_id', 'id');
    }
    /**
     * User - Comment One To Many Relation
     *
     * @return void
     */
    public function users()
    {
        return $this->belongsTo(User::class);
    }
    /**
     * comment - post One To Many Relation
     *
     * @return void
     */
    public function posts()
    {
        return $this->belongsTo(Post::class);
    }
}
