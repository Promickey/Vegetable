<?php

namespace App\Http\Controllers;

use App\Product;
use Illuminate\Http\Request;
use App\Category;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::inRandomOrder()->paginate(12);
        

        return view('users.products.index', compact('products'));
    }


    public function productByCategory($id){
        $category = Category::find($id);
        $productsByCategory = Product::where('category_id', $id)->orderBy('id', 'DESC')->paginate(4);
        $otherCategories = Category::where([['parent_id', $category->parent_id], ['id', '<>', $category->id]])->inRandomOrder()->take(2)->get();

        $relative_products1 = Product::where('category_id', $otherCategories[0]->id)->orderBy('id', 'DESC')->paginate(4);
        $relative_products2 = Product::where('category_id', $otherCategories[1]->id)->orderBy('id', 'DESC')->paginate(4);
     
        
        return view('users.products.productByCategory', compact('productsByCategory', 'category', 'otherCategories', 'relative_products1', 'relative_products2'));
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        $allcomments = $product->comments;
        $comments = $product->comments->where('is_active', 1);

        $rating = ceil($allcomments->average('rating'));

        $category = $product->category;

        $other_products = $category->products->where('id', '<>', $product->id );   //cùng category


       return view('users.products.show', compact('product', 'comments', 'rating', 'other_products', 'category'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        //
    }


    public function search(Request $request)
    {
        $search = $request->get('search');
        $products = Product::where('name', 'like' , '%'.$search.'%')->paginate(8);
        //dd($search);
        return view('users.products.search', compact('products'));
    }



}
