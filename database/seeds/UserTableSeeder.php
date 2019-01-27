<?php

use Illuminate\Database\Seeder;
use App\User;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	User::create([

    		'username' => 'Promickey',
    		'password' => bcrypt('admin'),
    		'email' => 'promickey@gmail.com',
    		'first_name' => 'Admin',
    		'avatar' => 'admin/avatar1.jpg',
    		'gender' => 'male',
    		'dob' => '1993-6-2',
    		'phone' => '0909090909',
            'status' => 1,
    		'address' => '123 Nguyễn Trãi',
    		'role_id' => 1,

    	]);

        User::create([
            'username' => 'Thanhluan',
            'password' => bcrypt('luan3566'),
            'email' => 'tranthanhluan0401@gmail.com',
            'first_name' => 'Thanh Luan',
            'avatar' => 'admin/unnamed.jpg',
            'gender' => 'male',
            'dob' => '1997-6-2',
            'phone' => '0909090909',
            'status' => 1,
            'address' => '123 Tôn Đức Thắng',
            'role_id' => 1,
        ]);

        factory(App\User::class, 10)->create();
    }
}
