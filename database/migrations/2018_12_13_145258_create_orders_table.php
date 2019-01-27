<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->nullable()  ;
            $table->decimal('total', 9, 0); //tong gia tien
            $table->string('fullname');
            $table->string('address');
            $table->string('phone');
            $table->string('email');
            $table->integer('type_payment_id')->unsigned()->nullable();  //phương thức thanh toán
            $table->string('note')->nullable();  //ghi chú cho đơn hàng
            $table->integer('status_id')->unsigned()->nullable(); //trạng thái đơn hàng đã giao hay chưa.
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('orders');
    }
}
