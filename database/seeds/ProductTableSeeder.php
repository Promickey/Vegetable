<?php

use Illuminate\Database\Seeder;
use App\Product;
use App\Image;

class ProductTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	factory(Product::class, 100)->create()->each(function ($product){
    		$product->images()->save(factory(Image::class)->make());  //tạo đồng thời 1 image cho product dựa trên quan hệ
    		$product->images()->save(factory(Image::class)->make());
    	});
    }
}
