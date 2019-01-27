<?php

use Faker\Generator as Faker;
use App\Role;

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
*/

$factory->define(App\User::class, function (Faker $faker) {
	
	$gender = $faker->randomElement(['male', 'female']);
    
    $directory='public/images/avatars';
    if (!File::isDirectory($directory)) {

       $result = File::makeDirectory($directory, 0775, true);
    }

    return [
        'email' => $faker->unique()->safeEmail,
        'username' => $faker->unique()->userName,
        'password' => bcrypt($faker->password),
        'first_name' => $faker->firstName($gender),
        'avatar' => 'images/avatars/'.$faker->image('public/images/avatars',300,300, null, false) ,
        'gender' => $gender,
        'dob' => $faker->date($format = 'Y-m-d', $min = '-40 years', $max = '-10 years'),
        'phone'=> $faker->phoneNumber,
        'address' => $faker->address,
        'role_id' => 2,
        'status' => 1,
        'remember_token' => str_random(10),
    ];
});
