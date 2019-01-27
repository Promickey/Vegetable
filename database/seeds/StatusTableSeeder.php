<?php

use Illuminate\Database\Seeder;
use App\Status;

class StatusTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Status::create(['name' => 'Pending']);
        Status::create(['name' => 'Approved']);
        Status::create(['name' => 'Completed']);
        Status::create(['name' => 'Cancelled']);

    }
}
