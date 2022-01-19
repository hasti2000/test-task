<?php

namespace Database\Seeders;

use App\Models\Comment;
use App\Models\Post;
use Illuminate\Database\Seeder;
use App\Models\User;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::factory(10)->create()->each(function ($user) {
            Post::factory(rand(1, 4))->make()->each(function ($post) use ($user) {
                $post->categories()->category_id=rand(1,12);
                $user->posts()->save($post);
                $post->user_id = $user->id;
                Comment::factory(rand(3, 10))->make(['user_id' => $user->id])->each(function ($comment, $key) use ($post) {
                    $comment->parent_id = $key;
                    $post->comments()->save($comment);
                });
            });
        });
    }
}
