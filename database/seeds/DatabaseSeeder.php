<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        $this->call(RoleTableSeeder::class);
        $this->call(UserTableSeeder::class);
        $this->call(StatusTableSeeder::class);
        $this->call(TypePaymentSeeder::class);
        $this->call(CategoryTableSeeder::class);
        $this->call(ProductTableSeeder::class);
        $this->call(ImageTableSeeder::class);
        $this->call(OrderTableSeeder::class);
        $this->call(CommentTableSeeder::class);
    }
}
