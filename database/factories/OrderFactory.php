<?php

use Faker\Generator as Faker;
use App\User;
use App\Status;
use App\TypePayment;


$factory->define(App\Order::class, function (Faker $faker) {
	$userIds = User::pluck('id');
	$statusIds = Status::pluck('id');
	$typePaymentIds = TypePayment::pluck('id');

    return [
    	'user_id' => $faker->randomElement($userIds),
    	'total' => $faker->numberBetween(30000, 99999999),
        'fullname' =>$faker->name,
    	'address' => $faker->address,
    	'phone' => $faker->phoneNumber,
        'email'=> $faker->email,
    	'type_payment_id' => $faker->randomElement($typePaymentIds),
    	'note' => $faker->realText(200),
    	'status_id' => $faker->randomElement($statusIds)

        
    ];
});
