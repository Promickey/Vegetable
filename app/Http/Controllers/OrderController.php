<?php

namespace App\Http\Controllers;

use App\Order;
use App\OrderDetail;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\CheckoutRequest;

use Illuminate\Support\Facades\Mail;
use App\Mail\CheckoutMail;

use Illuminate\Http\Request;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
        return view('users.orders.checkout');
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
    public function store(CheckoutRequest $request)
    {
         
        $data = $request->except('carts');
        if (auth()->user()) {
            $data['user_id']=auth()->user()->id;
        }
        $carts = json_decode($request->get('carts'));
        $total = 0;
        foreach ($carts as $cart) {
            $total += $cart->quantity*$cart->price;
        }
        $data['status_id'] =1;
        $data['total'] = $total;
        $checkout = false;

        DB::beginTransaction();

        try {
            $order = Order::create($data);
            foreach ($carts as $cart) {
                $order_detail = (array)$cart;
                $order_detail['quantity'] = $cart->quantity; 
                $order_detail['product_id']=$cart->id;
                $order_detail['order_id'] = $order->id;
                OrderDetail::create($order_detail);
            }
            DB::commit();

            Mail::to($request->email)->send(new CheckoutMail($order));
            $checkout = true;

            return redirect()->route('home', compact('checkout'))->with('success','Bạn đã đặt hàng thành công');
        } catch (\Exception $e) {
            DB::rollback();
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function show(Order $order)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function edit(Order $order)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id, Order $order)
    {
        if ($request->status_id ==4) {   //tránh việc sửa HTML rồi submit
            $data = $request->all();
            $order->update($data);
            return redirect()->route('users.profile', compact('id','order'));
        }
        else{
            return back();
        }
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function destroy(Order $order)
    {
        //
    }
}
