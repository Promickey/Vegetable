@extends('admin.layouts.master')

@section('title', 'List User')
@section('page', 'Users')
@section('content')

@if($user->role_id == 1)
<div class="row">
	<div class="col-sm-8">
        @if($message = Session::get('success'))
            <div class="alert alert-success">
                <strong>{{ $message }}</strong>
            </div>
        @endif
        @if($message = Session::get('danger'))
            <div class="alert alert-danger">
                <strong>{{ $message }}</strong>
            </div>
        @endif
	</div>
	<div class="col-sm-4">
		<a href="{{ route('admin.users.create') }}" class="btn btn-primary pull-right">Thêm mới Admin</a>
	</div>
</div>

<div class="row">
    <div class="col-12">
        <div class="card-box">
            <h4 class="m-t-0 header-title">Admin Info</h4>
			
            <table class="table">
                <thead>
                <tr>
                    <th>#</th>
                    <th>ID</th>
                    <th>Username</th>
                    <th>Email</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
	                <tr>
	                    <th scope="row"></th>
	                    <td>{{ $user->id }}</td>
	                    <td>{{ $user->username }}</td>
	                    <td>{{ $user->email }}</td>
	                    <td><a title="" data-placement="top" data-toggle="tooltip" class="tooltips" href="{{ route('admin.users.edit', $user->id) }}" data-original-title="Chỉnh sửa"><i class="fa fa-edit"></i></a></td>
	                </tr>
                </tbody>
            </table>
        </div>

    </div>
</div>
@else






<div class="container-fluid">
    <div class="row">
        <div class="col-sm-8 offset-sm-1">
            @if($message = Session::get('success'))
                <div class="alert alert-success">
                    <strong>{{ $message }}</strong>
                </div>
            @endif
            @if($message = Session::get('danger'))
                <div class="alert alert-danger">
                    <strong>{{ $message }}</strong>
                </div>
            @endif
            </div>
    </div>

    <div class="row">
        <div class="col-sm-12">
            <!-- meta -->
            <div class="profile-user-box card-box bg-custom">
                <div class="row">
                    <div class="col-sm-9">
                        <span class="pull-left mr-3"><img src="{{ asset($user->avatar ? $user->avatar : 'http://via.placeholder.com/200x200') }}" alt="" class="thumb-lg rounded-circle"></span>
                        <div class="media-body text-white">
                            <h4 class="mt-1 mb-1 font-18 text-capitalize">{{ $user->first_name }}</h4>
                            <p class="font-13 text-light">{{ $user->dob }}</p>
                            <p class="text-light mb-0">{{ $user->address }}</p>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="text-right">
                            <a href="{{ route('admin.users.edit', $user->id) }}">
                            	<button type="button" class="btn btn-light waves-effect">
	                                <i class="mdi mdi-account-settings-variant mr-1"></i> Edit Profile
	                            </button>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3 offset-sm-9">
                        <div class="text-right">
                            <form action="{{ route('admin.users.destroy', $user->id) }}" method="POST" role="form">
                            @csrf
                            @method('DELETE')
                            <button onclick = "return confirm('Nếu bạn xoá người dùng này, tất cả đơn hàng và comment cũng sẽ bị xoá.\nBạn có chắc chắn muốn xoá người dùng này?')" type="submit" class="btn btn-danger waves-effect">
                                <i class="mdi mdi-account-settings-variant mr-1"></i> Delete Profile
                            </button>
                            </form>
                        </div>
                        
                    </div>
                </div>
            </div>
            <!--/ meta -->
        </div>
    </div>
    <!-- end row -->


    <div class="row">
        <div class="col-md-4">
            <!-- Personal-Information -->
            <div class="card-box">
                <h4 class="header-title mt-0 m-b-20">Personal Information</h4>
                <div class="panel-body">

                    <hr/>

                    <div class="text-left">
                        <p class="text-muted font-13"><strong>ID :</strong> <span class="m-l-15">{{$user->id}}</span></p>
                        <p class="text-muted font-13"><strong>Tên :</strong> <span class="m-l-15">{{$user->first_name}}</span></p>
                        <p class="text-muted font-13"><strong>Giới Tính :</strong> <span class="m-l-15">{{$user->gender}}</span></p>
                        <p class="text-muted font-13"><strong>Sinh Nhật :</strong> <span class="m-l-15">{{$user->dob}}</span></p>

                        <p class="text-muted font-13"><strong>Điện Thoại :</strong><span class="m-l-15">{{$user->phone}}</span></p>

                        <p class="text-muted font-13"><strong>Email :</strong> <span class="m-l-15">{{$user->email}}</span></p>

                        <p class="text-muted font-13"><strong>Địa Chỉ :</strong> <span class="m-l-15">{{$user->address}}</span></p>

                        <p class="text-muted font-13"><strong>Trạng Thái :</strong> <span class="m-l-15">{{ $user->status==1 ? 'Active' : 'In Active' }}</span></p>

                        

                    </div>

                    <ul class="social-links list-inline m-t-20 m-b-0">
                        <li class="list-inline-item">
                            <a title="" data-placement="top" data-toggle="tooltip" class="tooltips" href="" data-original-title="Facebook"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li class="list-inline-item">
                            <a title="" data-placement="top" data-toggle="tooltip" class="tooltips" href="" data-original-title="Twitter"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li class="list-inline-item">
                            <a title="" data-placement="top" data-toggle="tooltip" class="tooltips" href="" data-original-title="Skype"><i class="fa fa-skype"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- Personal-Information -->

        </div>


        <div class="col-md-8">

            <!-- <div class="row">
            
                <div class="col-sm-4">
                    <div class="card-box tilebox-one">
                        <i class="icon-layers float-right text-muted"></i>
                        <h6 class="text-muted text-uppercase mt-0">Orders</h6>
                        <h2 class="m-b-20" data-plugin="counterup">1,587</h2>
                        <span class="badge badge-custom"> +11% </span> <span class="text-muted">From previous period</span>
                    </div>
                </div>end col
            
                <div class="col-sm-4">
                    <div class="card-box tilebox-one">
                        <i class="icon-paypal float-right text-muted"></i>
                        <h6 class="text-muted text-uppercase mt-0">Revenue</h6>
                        <h2 class="m-b-20">$<span data-plugin="counterup">46,782</span></h2>
                        <span class="badge badge-danger"> -29% </span> <span class="text-muted">From previous period</span>
                    </div>
                </div>end col
            
                <div class="col-sm-4">
                    <div class="card-box tilebox-one">
                        <i class="icon-rocket float-right text-muted"></i>
                        <h6 class="text-muted text-uppercase mt-0">Product Bought</h6>
                        <h2 class="m-b-20" data-plugin="counterup">1,890</h2>
                        <span class="badge badge-custom"> +89% </span> <span class="text-muted">Last year</span>
                    </div>
                </div>end col
            
            </div>
            end row -->

            

            <div class="card-box">
                <h4 class="header-title mb-3">Order</h4>

                <div class="table-responsive">
                    <table class="table m-b-0">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Order ID</th>
                            <th>Ngày Đặt</th>
                            <th>Tổng Tiền (vnđ)</th>
                            <th>Trạng Thái</th>
                            <th>Phương Thức Thanh Toán</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($orders as $order)
                        <tr>
                            <td>{{$loop->iteration}}</td>
                            <td><a class="font-weight-bold" href="{{route('admin.orders.show', $order->id)}}">{{$order->id}}</a></td>
                            <td>{{$order->created_at}}</td>
                            <td>{{number_format($order->total)}}</td>
                            <td class="font-weight-bold text-{{$order->status->id==1?'info':($order->status->id==2?'primary':($order->status->id==3?'success':'danger'))}}">{{$order->status->name}}</td>
                            <td><span class="label label-info">{{$order->typePayment->name}}</span></td>
                        </tr>
                        @endforeach
                        

                        </tbody>
                    </table>
                </div>
            </div>

        </div>
        <!-- end col -->

    </div>
    <!-- end row -->


</div> <!-- container -->








@endif


@endsection
