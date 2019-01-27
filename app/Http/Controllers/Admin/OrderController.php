<?php

namespace App\Http\Controllers\Admin;  

use App\Order;
use App\TypePayment;
use App\Status;
use App\Http\Requests\OrderRequest;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;   

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $orders_pending = Order::where('status_id', 1)->orderBy('id', 'desc')->get();
        $orders_approved = Order::where('status_id', 2)->orderBy('id', 'desc')->get();
        $orders_completed = Order::where('status_id', 3)->orderBy('id', 'desc')->get();
        $orders_cancelled = Order::where('status_id', 4)->orderBy('id', 'desc')->get();

        return view('admin.orders.index', compact('orders_pending', 'orders_approved', 'orders_completed', 'orders_cancelled'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $type_payments = TypePayment:: all();
        $statuses = Status::all();
        return view('admin.orders.create', compact('type_payments', 'statuses'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(OrderRequest $request)
    {
        $data = $request->all();
        Order::create($data);
        return redirect()->route('admin.orders.index')->with('success', 'Tuyệt!!! Bạn vừa tạo thành công một đơn hàng!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function show(Order $order)
    {
        
        return view('admin.orders.show', compact('order'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function edit(Order $order)
    {
        $type_payments = TypePayment:: all();
        $statuses = Status::all();
        return view('admin.orders.edit', compact('order', 'type_payments', 'statuses'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Order $order)
    {
        $data = $request->all();
        $order->update($data);
        return redirect()->route('admin.orders.show', compact('order'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function destroy(Order $order)
    {
        $order->delete();
        return redirect()->route('admin.orders.index');
    }
}
