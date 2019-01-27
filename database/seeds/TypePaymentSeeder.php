<?php

use Illuminate\Database\Seeder;
use App\TypePayment;

class TypePaymentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        TypePayment::create(['name' => 'COD']);
        TypePayment::create(['name' => 'Cổng thanh toán điện tử']);
        TypePayment::create(['name' => 'Ví điện tử']);
        TypePayment::create(['name' => 'Chuyển khoản ngân hàng']);
    }
}
