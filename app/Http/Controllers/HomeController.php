<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Product;
use App\OrderDetail;
use DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
       /* $this->middleware('auth');*/
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()  //trang chủ
    {
        $new_products = Product::take(8)->orderBy('id', 'DESC')->paginate(8);

        $hot_products = Product::leftJoin('order_details', 'products.id', '=', 'order_details.product_id')
                        ->join('orders', 'orders.id', '=', 'order_details.order_id')
                        ->where('orders.status_id', '<>', '4')
                        ->groupBy('order_details.product_id')
                        ->orderByRaw('Sum(order_details.quantity) DESC')
                        ->select('products.id','products.name', 'products.price', 'products.quantity', 'products.category_id', 'products.description')
                        ->take(8)->with('images')->get();

        return view('users.web.index', compact('new_products', 'hot_products'));
    }


}

