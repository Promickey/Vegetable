<?php

use Faker\Generator as Faker;
use App\Product;

$factory->define(App\Image::class, function (Faker $faker) {
	$productIds = Product::pluck('id');
    return [
        'name'=>$faker->name,
        'path'=>'images/products/'.$faker->image('public/images/products',400,300, null, false),
        
    ];
});
