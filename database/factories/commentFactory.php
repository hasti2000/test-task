<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class commentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'comment' => $this->faker->sentence(),
            'approved'=> $this->faker->boolean(),
        ];
    }
}
