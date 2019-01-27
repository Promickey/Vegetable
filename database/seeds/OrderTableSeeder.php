<?php

use Illuminate\Database\Seeder;
use App\Order;
use App\OrderDetail;

class OrderTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Order::class, 20)->create()->each(function ($order){
    		$order->orderDetails()->save(factory(OrderDetail::class)->make());  //tạo đồng thời 4 orderdetail cho order dựa trên quan hệ
    		$order->orderDetails()->save(factory(OrderDetail::class)->make());
    		$order->orderDetails()->save(factory(OrderDetail::class)->make());
    		$order->orderDetails()->save(factory(OrderDetail::class)->make());
    	});
    }
}
