<?php

namespace App\Http\Controllers\Admin;
use App\Category;
use App\Product;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\CategoryRequest;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categories = Category::with('children')->get();
        /*foreach ($categories as $key => $category) {
            echo $category->name;
            echo '<br>';
        }*/
        return view('admin.categories.index', compact('categories'));
    }

    public function subcategories(Category $category)
    {
        $subcategories = $category->children;
        return view('admin.categories.subcategories', compact('subcategories', 'category'));
    }

    public function productsByCategory(Category $category)
    {
        $productsByCategory = $category->products;
        return view('admin.products.productsByCategory', compact('productsByCategory', 'category'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::all();
        return view('admin.categories.create', compact('categories'));

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CategoryRequest $request)
    {
        $parent_id = $request->parent_id;
        $data = $request->all();
        Category::create($data);
        if ($parent_id == null) {
            return redirect()->route('admin.categories.index')->with('success', 'Tuyêt!! Bạn vừa tạo mới một danh mục, hãy cập nhập các sản phẩm mới!');
        }
        else{
            return redirect()->route('admin.categories.subcategories', $parent_id)->with('success', 'Tuyêt!! Bạn vừa tạo mới một danh mục, hãy cập nhập các sản phẩm mới!');
       }
        
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Category $category)
    {
        return view('admin.categories.show', compact('category'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Category $category)
    {
        $categories = Category::all();
        return view('admin.categories.edit', compact('category', 'categories'));
       /*return dd($category->name);*/
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(CategoryRequest $request, Category $category)
    {
        $data = $request->all();
        $category->update($data);
        return redirect()->route('admin.categories.show', compact('category'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Category $category)
    {

        $parent_id = $category->parent_id;
        $category->delete();
        return redirect()->route('admin.categories.subcategories', $parent_id)->with('danger', 'Bạn vừa xoá một danh mục');
    }
}
