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
            'image' => fake()->randomElement([
                "https://dummyimage.com/300x300/000/fff&text=Product+1",
                "https://dummyimage.com/300x300/111/fff&text=Product+2",
                "https://dummyimage.com/300x300/222/fff&text=Product+3",
                "https://dummyimage.com/300x300/333/fff&text=Product+4",
                "https://dummyimage.com/300x300/444/fff&text=Product+5",
                "https://dummyimage.com/300x300/555/fff&text=Product+6",
                "https://dummyimage.com/300x300/666/fff&text=Product+7",
                "https://dummyimage.com/300x300/777/fff&text=Product+8",
                "https://dummyimage.com/300x300/888/fff&text=Product+9",
                "https://dummyimage.com/300x300/999/fff&text=Product+10",
                "https://dummyimage.com/300x300/aa0/fff&text=Product+11",
                "https://dummyimage.com/300x300/bb0/fff&text=Product+12",
                "https://dummyimage.com/300x300/cc0/fff&text=Product+13",
                "https://dummyimage.com/300x300/dd0/fff&text=Product+14",
                "https://dummyimage.com/300x300/ee0/fff&text=Product+15",
                ]),
            'status' => fake()->randomElement(['active', 'inactive']),
            'created_by' => 3 ,
            'category_id' => rand(1,10),
            'brand_id' => rand(1,30),
        ];
    }
}
