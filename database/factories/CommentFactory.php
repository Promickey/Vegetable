<?php

use Faker\Generator as Faker;
use App\Product;
use App\User;

$factory->define(App\Comment::class, function (Faker $faker) {
	$userIds = User::pluck('id');
	$productIds = Product::pluck('id');
    return [
        'title' => $faker->realText(30),
        'content'=>$faker->realText(200),
        'rating' => $faker->numberBetween(1,5),
        'is_active' => 0,
        'user_id' => $faker->randomElement($userIds),
        'product_id' => $faker->randomElement($productIds)
    ];
});
