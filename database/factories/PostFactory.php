<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'title' => $this->faker->sentence(),
            'body'=> $this->faker->paragraph(5),
            'image' => $this->faker->imageUrl(),
            'like_count'=>$this->faker->numberBetween(10,200),
            'comment_count'=>0,
        ];
    }
}
