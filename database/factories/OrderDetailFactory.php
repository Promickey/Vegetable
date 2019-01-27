<?php

use Faker\Generator as Faker;
use App\Product;

$factory->define(App\OrderDetail::class, function (Faker $faker) {
	$productIds = Product::pluck('id');
    return [
        'product_id' => $faker->randomElement($productIds),
        'quantity' => $faker-> numberBetween(1,5)
    ];
});
