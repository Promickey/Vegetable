<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Order;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function showprofile($id)
    {
        $user = User::find($id);
        $orders = $user->orders; 
        return view('users.users.profile', compact('user','orders'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $user = User::find($id);
        return view('users.users.edit', compact('user'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $user = User::find($id);
        $data = $request->except('password', 'role_id', 'status');
        if (trim($request->password)) {
            $data['password'] = bcrypt($request->password);
        }
        if ($request->hasFile('avatar')) {
            if ($user->avatar != null) {
            unlink($user->avatar);
            }
            $file = $request->file('avatar');
            $name = time().$file->getClientOriginalName();
            $file->move('images/avatars', $name);
            $avatar = 'images/avatars/'.$name;
            $data['avatar'] = $avatar;
        }
        $user->update($data);
        return redirect()->route('users.profile', $user->id)->with('success', 'Bạn vừa cập nhật thông tin cá nhân thành công!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function showOrder($id, Order $order)
    {
        if($order->user->id == $id){
            return view('users.users.showOrder', compact('order'));
        }
        else{
            return redirect()->route('home')->with('danger', 'Không tìm thấy order này trong danh sách order của bạn, bạn vui lòng kiểm tra lại!');
        }

        
    }
}
