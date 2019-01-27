<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Product;
use App\Category;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\ProductRequest;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::with('images')->orderBy('id','DESC')->get();
        return view('admin.products.index', compact('products'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::whereNotNull('parent_id')->get();  
        return view('admin.products.create',compact('categories'));
        
        //return dd($categories);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProductRequest $request)
    {
        $productData = $request->except('image');
        if ($request->hasFile('image')) 
        {
            $imageData = [];     // áp dụng để upload multi, 1 thì ko cần
            $image = $request->file('image');
            $name = time().$image->getClientOriginalName();  //lấy tên
            $image->move('images/products', $name);    // di chuyển từ temp sang folder lưu trữ
            $path = 'images/products/'.$name;            // lấy đường dẫn
            $imageData[] = [
                'name' => $name,
                'path' => $path
            ];                              //imageData là collection nên phải duyệt mảng mới create new object image được.
            $product = Product::create($productData);
            foreach ($imageData as $key => $item) {
                $product->images()->create($item);
            }        
        }
        else{
            $product = Product::create($productData);    
        }
  
        return redirect()->route('admin.products.show', compact('product'))->with('success', 'Sản phẩm đã được tạo mới thành công!!!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        $images = $product->images()->get();
        $comments = $product->comments->where('is_active', 1);
        $quantities_sold = DB::table('products')
                        ->join('order_details', 'products.id', '=', 'order_details.product_id')
                        ->join('orders', 'orders.id', '=', 'order_details.order_id')
                        ->where('products.id', '=', $product->id)
                        ->where('orders.status_id', '<>', '4')
                        ->sum('order_details.quantity');

        return view('admin.products.show', compact('product', 'images', 'comments', 'quantities_sold'));
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        $images = $product->images()->get();
        $categories = Category::whereNotNull('parent_id')->get();  
         
       return view('admin.products.edit', compact('product', 'categories', 'images'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(ProductRequest $request, Product $product)
    {
        $productData = $request->except('image');
        if ($request->hasFile('image')) 
        {
            $image = $request->file('image');
            $name = time().$image->getClientOriginalName();  //lấy tên
            $image->move('images/products', $name);    // di chuyển từ temp sang folder lưu trữ
            $path = 'images/products/'.$name;            // lấy đường dẫn
            $imageData = [
                'name' => $name,
                'path' => $path
            ];
            $product->update($productData);
            $product->images()->create($imageData);         
        }
        else{
            $product->update($productData);
        }

        
    
        return redirect()->route('admin.products.show', compact('product'))->with('success', 'Sản phẩm đã được cập nhật thành công!!!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        $images = $product->images()->get();   //phải get() ra mới xoá được
        foreach ($images as $key => $image) {
            unlink($image->path);
            $image->delete();
        }
        
        $product->delete();
        return redirect()->route('admin.products.index')->with('danger', 'Sản phẩm đã được xoá!!!');
    }
}
