<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Items>
 */
class ItemsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
                'name' => fake()->words(3, true), // اسم من 3 كلمات
                'short_description' => fake()->sentence(),
                'description' => fake()->paragraph(4),
                'price' => fake()->randomFloat(2, 10, 1000), // من 10 إلى 1000
                'quantity' => fake()->numberBetween(0, 100),
                'image' => 'https://placehold.co/600x400', // صورة وهمية
                'status' => fake()->randomElement(['active', 'inactive']),
        ];
    }
}
