<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use App\Role;
use App\Http\Requests\UserRequest;
use App\Http\Requests\UserEditRequest;


class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::where('role_id', 2)->orderBy('created_at', 'desc')->get();
        $admins = User::where('role_id', 1)->get();
        return view('admin.users.index', compact('users', 'admins'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $roles = Role::all();
        return view('admin.users.create', compact('roles'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(UserRequest $request)
    {
        $data = $request->all();
        $data['password'] = bcrypt($request->password);
        if ($request->hasFile('avatar')) {
            $file = $request->file('avatar');
            $name = time().$file->getClientOriginalName();
            $file->move('images/avatars', $name);
            $avatar = 'images/avatars/'.$name;
            $data['avatar'] = $avatar;
        }

       
        User::create($data);
        return redirect()->route('admin.users.index')->with('success', 'Bạn vừa thêm mới một người dùng thành công!!!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        $orders = $user->orders; 
        return view('admin.users.show', compact('user', 'orders'));

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        $roles = Role::all();
        return view('admin.users.edit', compact('user', 'roles'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UserEditRequest $request, User $user)
    {
        $data = $request->except('password');
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
        return redirect()->route('admin.users.show',compact('user'))->with('success', 'Bạn vừa cập nhật thông tin người dùng thành công!');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        if ($user->avatar !=null) {
            unlink($user->avatar);
        }
        
        $user->delete();
        return redirect()->route('admin.users.index')->with('danger', 'Bạn vừa xoá một tài khoản người dùng!');
        
    }
}
