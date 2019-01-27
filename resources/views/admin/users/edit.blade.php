@extends('admin.layouts.master')

@section('title', 'List User')

@section('page', 'Users')

@section('content')



<div class="container-fluid">
    <div class="row">
        <div class="col-3">
            <img src="{{ asset($user->avatar ? $user->avatar : 'http://via.placeholder.com/200x200') }}" alt="" style="width: 100%" class="img-responsive img-rounded">
        </div>
        <div class="col-9">
            <div class="card-box">
                <h1 class="m-t-0 header-title">Edit User Form </h1>
                <div class="row">
                    <div class="col-12">
                        <div class="p-20">
                            <form action="{{ route('admin.users.update', $user->id) }}" method="POST" class="form-horizontal" role="form" enctype="multipart/form-data">
                                @csrf
                                @method('PUT')
                                <div class="form-group row">
                                    <label class="col-2 col-form-label" for="name">Tên<span class="text-danger">*</span></label>
                                    <div class="col-10">
                                        <input name="first_name" id="name" type="text" class="form-control" placeholder="Nhập tên người dùng" value="{{ $user->first_name }}">
                                        @if($errors->has('first_name'))
                                            <div class="alert alert-danger">
                                                <span>{{ $errors->first('first_name') }}</span>
                                            </div>
                                        @endif
                                    </div>
                                </div>
                                

                                <div class="form-group row">
                                    <label class="col-2 col-form-label" for="username">Usernames <span class="text-danger">*</span></label>
                                    <div class="col-10">
                                        <input name="username" type="text" id="username" class="form-control" placeholder="Nhập username" value="{{$user->username}}">
                                        @if($errors->has('username'))
                                            <div class="alert alert-danger">
                                                <span class="strong">{{ $errors->first('username') }}</span>
                                            </div>
                                        @endif
                                    </div>
                                </div>
                                

                                <div class="form-group row">
                                    <label class="col-2 col-form-label" for="email">Email<span class="text-danger">*</span></label>
                                    <div class="col-10">
                                        <input name="email" type="email" id="email"  class="form-control" placeholder="Email" value="{{$user->email}}">
                                        @if($errors->has('email'))
                                            <div class="alert alert-danger">
                                                <span class="strong">{{ $errors->first('email') }}</span>
                                            </div>
                                        @endif
                                    </div>
                                </div>
                                

                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Password</label>
                                    <div class="col-10">
                                        <input name="password" type="password" class="form-control" placeholder="Nhập password">
                                        @if($errors->has('password'))
                                            <div class="alert alert-danger">
                                                <span class="strong">{{ $errors->first('password') }}</span>
                                            </div>
                                        @endif
                                    </div>
                                </div>
                                

                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Điện Thoại</label>
                                    <div class="col-10">
                                        <input name="phone" type="text" class="form-control" placeholder="số điện thoại" value="{{$user->phone}}">
                                        @if($errors->has('phone'))
                                            <div class="alert alert-danger">
                                                <span class="strong">{{ $errors->first('phone') }}</span>
                                            </div>
                                        @endif
                                    </div>
                                </div>
                                

                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Địa Chỉ</label>
                                    <div class="col-10">
                                        <input name="address" type="text" class="form-control" placeholder="Nhập địa chỉ" value="{{$user->address}}">
                                        @if($errors->has('address'))
                                            <div class="alert alert-danger">
                                                <span class="strong">{{ $errors->first('address') }}</span>
                                            </div>
                                        @endif
                                    </div>
                                </div>
                                
                                <!-- kind acc -->

                                <div class="form-group row">
                                    <div class="col-10">
                                        <input type="hidden" name="role_id" value="{{$user->role_id}}">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Ngày Sinh<span class="text-danger">*</span></label>
                                    <div class="col-10">
                                        <input name="dob" class="form-control" type="date" value="{{$user->dob}}" >
                                        @if($errors->has('dob'))
                                            <div class="alert alert-danger">
                                                <span class="strong">{{ $errors->first('dob') }}</span>
                                            </div>
                                        @endif
                                    </div>
                                </div>
                                
                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Status</label>
                                    <div class="col-10">
                                        <div class="radio radio-info form-check-inline">
                                            <input type="radio" id="status" value="1" name="status" {{($user->status==1)?'checked':''}}>
                                            <label for="inlineRadio1"> Active </label>
                                        </div>
                                        <div class="radio form-check-inline">
                                            <input type="radio" id="status" value="2" name="status" {{($user->status==2)?'checked':''}}>
                                            <label for="inlineRadio2"> In Active </label>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Giới Tính</label>
                                    <div class="col-10">
                                        <div class="radio radio-info form-check-inline">
                                            <input type="radio" id="gender" value="male" name="gender" {{($user->gender=='male')?'checked':''}} >
                                            <label for="inlineRadio1"> Nam </label>
                                        </div>
                                        <div class="radio form-check-inline">
                                            <input type="radio" id="gender" value="female" name="gender" {{($user->gender=='female')?'checked':''}}>
                                            <label for="inlineRadio2"> Nữ </label>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Ảnh Đại Diện</label>
                                    <div class="col-10">
                                        <input name="avatar" type="file" class="form-control">
                                        @if($errors->has('avatar'))
                                            <div class="alert alert-danger">
                                                <span class="strong">{{ $errors->first('avatar') }}</span>
                                            </div>
                                        @endif
                                    </div>
                                </div>
                                
                                <button type="submit" class="btn btn-primary">Cập Nhật Tài Khoản</button>

                            </form>
                        </div>
                    </div>

                </div>
                <!-- end row -->

            </div> <!-- end card-box -->
        </div>
    </div>
</div>



@endsection
