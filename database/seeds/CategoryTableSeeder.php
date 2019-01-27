<?php

use Illuminate\Database\Seeder;
use App\Category;

class CategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	Category::create(['name' => 'Đồ Khô']); 			//1
        Category::create(['name' => 'Rau - Củ - Quả']); 	//2
        Category::create(['name' => 'Trái Cây']);  			//3
        Category::create(['name' => 'Thịt - Trứng']);		//4
        Category::create(['name' => 'Thuỷ - Hải Sản']);		//5
        Category::create(['name' => 'Gia vị & Phụ Liệu']);	//6
        Category::create(['name' => 'Đồ Uống']);			//7

        //Đồ Khô
        Category::create([
        	'name'=>'Gạo',
        	'parent_id' => 1
        ]);
        Category::create([
        	'name'=>'Ngũ Cốc',
        	'parent_id' => 1
        ]);
        Category::create([
        	'name'=>'Các Loại hạt',
        	'parent_id' => 1
        ]);
        Category::create([
        	'name'=>'Bánh - Kẹo',
        	'parent_id' => 1
        ]);
        Category::create([
        	'name'=>'Đồ Khô Khác',
        	'parent_id' => 1
        ]);

        //Rau - Củ - Quả
        Category::create([
        	'name'=>'Rau Tươi',
        	'parent_id' => 2
        ]);
        Category::create([
        	'name'=>'Rau Gia Vị',
        	'parent_id' => 2
        ]);
        Category::create([
        	'name'=>'Nấm - Rau Mầm',
        	'parent_id' => 2
        ]);
        Category::create([
        	'name'=>'Củ - Quả',
        	'parent_id' => 2
        ]);

        //Trái Cây
        Category::create([
        	'name'=>'Trái Cây Việt',
        	'parent_id' => 3
        ]);
        Category::create([
        	'name'=>'Trái Cây Nhập Khẩu',
        	'parent_id' => 3
        ]);
        Category::create([
        	'name'=>'Trái Cây Khô',
        	'parent_id' => 3
        ]);

        //Thịt - Trứng
        Category::create([
        	'name'=>'Thịt Bò',
        	'parent_id' => 4
        ]);
        Category::create([
        	'name'=>'Thịt Heo',
        	'parent_id' => 4
        ]);
        Category::create([
        	'name'=>'Thịt Gia Cầm',
        	'parent_id' => 4
        ]);
        Category::create([
        	'name'=>'Trứng',
        	'parent_id' => 4
        ]);

        //Thuỷ - Hải Sản
        Category::create([
        	'name'=>'Cá',
        	'parent_id' => 5
        ]);
        Category::create([
        	'name'=>'Mực',
        	'parent_id' => 5
        ]);
        Category::create([
        	'name'=>'Tôm - Cua',
        	'parent_id' => 5
        ]);
        Category::create([
        	'name'=>'Thuỷ - Hải Sản Khác',
        	'parent_id' => 5
        ]);

        //Gia Vị & Phụ Liệu

        Category::create([
        	'name'=>'Dầu Ăn',
        	'parent_id' => 6
        ]);
        Category::create([
        	'name'=>'Giấm Ăn',
        	'parent_id' => 6
        ]);
        Category::create([
        	'name'=>'Bơ - Pho Mát',
        	'parent_id' => 6
        ]);
        Category::create([
        	'name'=>'Nước Chấm',
        	'parent_id' => 6
        ]);
        Category::create([
        	'name'=>'Gia Vị',
        	'parent_id' => 6
        ]);

        //Đồ Uống
        Category::create([
        	'name'=>'Sữa',
        	'parent_id' => 7
        ]);
        Category::create([
        	'name'=>'Mật ong',
        	'parent_id' => 7
        ]);
        Category::create([
        	'name'=>'Cà Phê & Trà',
        	'parent_id' => 7
        ]);
        Category::create([
        	'name'=>'Nước Trái Cây',
        	'parent_id' => 7
        ]);
        Category::create([
        	'name'=>'Nước Khoáng',
        	'parent_id' => 7
        ]);

    }
}
