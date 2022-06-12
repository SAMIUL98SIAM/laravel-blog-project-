<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Faker\Generator as Faker;
use Illuminate\Support\Str;
use App\Models\Category;

class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {   $id = rand(30, 300);
        $image = "https://i.picsum.photos/id/".$id."/640/480.jpg";
        return [

                'title' => $this->faker->sentence(),
                'slug' => Str::slug($this->faker->sentence()),
                'image' => $image,
                'description' => $this->faker->text(400),
                'category_id' => function(){
                    return Category::inRandomOrder()->first()->id;
                },
                'user_id' => 1,
        ];
    }
}
