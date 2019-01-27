@extends('admin.layouts.master')

@section('title', 'List Orders')

@section('page', 'Orders')

@section('link_top')
	

	<!-- DataTables -->
    <link href="{{ asset('admin/plugins/datatables/dataTables.bootstrap4.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('admin/plugins/datatables/buttons.bootstrap4.min.css') }}" rel="stylesheet" type="text/css" />
@endsection

@section('content')


<div class="container">
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
			<a href="{{ route('admin.orders.create') }}" class="btn btn-primary pull-right">Thêm mới Đơn Hàng</a>
		</div>
	</div>
</div>


<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
            <div class="card-box">
                <h4 class="header-title m-t-0 m-b-30">Danh Sách Đơn Hàng</h4>

                <ul class="nav nav-pills navtab-bg nav-justified pull-in ">
                    <li class="nav-item">
                        <a href="#pending" data-toggle="tab" aria-expanded="false" class="nav-link active">
                            <i class="fi-monitor mr-2"></i> Chờ Xử Lý
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#approved" data-toggle="tab" aria-expanded="true" class="nav-link ">
                            <i class="fi-head mr-2"></i>Đã Duyệt
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#completed" data-toggle="tab" aria-expanded="false" class="nav-link">
                            <i class="fi-mail mr-2"></i>Đã Hoàn Thành
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#cancelled" data-toggle="tab" aria-expanded="false" class="nav-link">
                            <i class="fi-cog mr-2"></i> Huỷ Bỏ
                        </a>
                    </li>
                </ul>
                <div class="tab-content">
                	<!-- chờ xử lý -->
                    <div class="tab-pane show active" id="pending">
                        <div class="card-box table-responsive">

					        <table id="datatable" class="table table-bordered infotable">
					            <thead>
					            <tr>
					                <th>ID</th>
				                    <th>Tên Khách Hàng</th>
				                    <th>Tổng Tiền</th>
				                    <th>Địa Chỉ</th>
				                    <th>Số Điện Thoại</th>
				                    <th>Email</th>
				                    <th>Phương Thức Thanh Toán</th>
				                    <th>Sửa</th>
				                    <th>Xoá</th>
					            </tr>
					            </thead>

					            <tbody>
					            @foreach($orders_pending as $order)
								<tr>
									<td><a href="{{ route('admin.orders.show', $order->id) }}"><strong>{{ $order->id }}</strong></a></td>
									@if($order->user)
									<td><a href="{{ route('admin.users.show', $order->user->id) }}"><strong>{{ $order->user->first_name }}</strong></a></td>
									@else
									<td><strong>{{ $order->fullname }}</strong></td>
									@endif
									<td>{{ $order->total }}</td>
									<td>{{ $order->address }}</td>
									<td>{{ $order->phone }}</td>
									<td>{{$order->email}}</td>
									<td>{{ $order->typePayment->name }}</td>
									<td><a class="btn btn-info" href="{{ route('admin.orders.edit', $order->id) }}" data-toggle="tooltip" data-original-title="Chỉnh Sửa"><i  class="fa fa-edit"></i></a>
									</td>
									<td>
										<form action="{{ route('admin.orders.destroy', $order->id) }}" method="POST" role="form">
			                                @csrf
			                                @method('DELETE')                   
			                                <button onclick="return confirm('Bạn có chắc chắn muốn xoá đơn hàng này?')" data-toggle="tooltip" data-original-title="Xoá đơn hàng" type="submit" class="btn btn-danger"><i class="dripicons-trash"></i></button>
			                            </form>
					                </td>
									
								</tr>
								@endforeach
					            </tbody>
					        </table>
					    </div>
                    </div>

                    <!-- đã duyệt -->
                    <div class="tab-pane  " id="approved">
                        <div class="card-box table-responsive">


					        <table id="datatable" class="table table-bordered infotable">
					            <thead>
					            <tr>
					                <th>ID</th>
				                    <th>Tên Khách Hàng</th>
				                    <th>Tổng Tiền</th>
				                    <th>Địa Chỉ</th>
				                    <th>Số Điện Thoại</th>
				                    <th>Email</th>
				                    <th>Phương Thức Thanh Toán</th>
				                    <th>Sửa</th>
				                    <th>Xoá</th>
					            </tr>
					            </thead>

					            <tbody>
					            @foreach($orders_approved as $order)
								<tr>
									<td><a href="{{ route('admin.orders.show', $order->id) }}"><strong>{{ $order->id }}</strong></a></td>
									@if($order->user)
									<td><a href="{{ route('admin.users.show', $order->user->id) }}"><strong>{{ $order->user->first_name }}</strong></a></td>
									@else
									<td><strong>{{ $order->fullname }}</strong></td>
									@endif
									<td>{{ $order->total }}</td>
									<td>{{ $order->address }}</td>
									<td>{{ $order->phone }}</td>
									<td>{{$order->email}}</td>
									<td>{{ $order->typePayment->name }}</td>
									<td><a class="btn btn-info" href="{{ route('admin.orders.edit', $order->id) }}" data-toggle="tooltip" data-original-title="Chỉnh Sửa"><i  class="fa fa-edit"></i></a>
									</td>
									<td>
										<form action="{{ route('admin.orders.destroy', $order->id) }}" method="POST" role="form">
			                                @csrf
			                                @method('DELETE')                   
			                                <button onclick="return confirm('Bạn có chắc chắn muốn xoá đơn hàng này?')" data-toggle="tooltip" data-original-title="Xoá đơn hàng" type="submit" class="btn btn-danger"><i class="dripicons-trash"></i></button>
			                            </form>
					                </td>
									
								</tr>
								@endforeach
					            </tbody>
					        </table>
					    </div>
                    </div>

                    <!-- đã hoàn thành -->
                    <div class="tab-pane" id="completed">
                        <div class="card-box table-responsive">

					        <table id="datatable" class="table table-bordered infotable">
					            <thead>
					            <tr>
					                <th>ID</th>
				                    <th>Tên Khách Hàng</th>
				                    <th>Tổng Tiền</th>
				                    <th>Địa Chỉ</th>
				                    <th>Số Điện Thoại</th>
				                    <th>Email</th>
				                    <th>Phương Thức Thanh Toán</th>
				          
					            </tr>
					            </thead>

					            <tbody>
					            @foreach($orders_completed as $order)
								<tr>
									<td><a href="{{ route('admin.orders.show', $order->id) }}"><strong>{{ $order->id }}</strong></a></td>
									@if($order->user)
									<td><a href="{{ route('admin.users.show', $order->user->id) }}"><strong>{{ $order->user->first_name }}</strong></a></td>
									@else
									<td><strong>{{ $order->fullname }}</strong></td>
									@endif
									<td>{{ $order->total }}</td>
									<td>{{ $order->address }}</td>
									<td>{{ $order->phone }}</td>
									<td>{{$order->email}}</td>
									<td>{{ $order->typePayment->name }}</td>
									
								</tr>
								@endforeach
					            </tbody>
					        </table>
					    </div>
                    </div>

                    <!-- Huỷ bỏ -->
                    <div class="tab-pane" id="cancelled">
                        <div class="card-box table-responsive">

					        <table id="datatable" class="table table-bordered infotable">
					            <thead>
					            <tr>
					                <th>ID</th>
				                    <th>Tên Khách Hàng</th>
				                    <th>Tổng Tiền</th>
				                    <th>Địa Chỉ</th>
				                    <th>Số Điện Thoại</th>
				                    <th>Email</th>
				                    <th>Phương Thức Thanh Toán</th>
				                   
					            </tr>
					            </thead>

					            <tbody>
					            @foreach($orders_cancelled as $order)
								<tr>
									<td><a href="{{ route('admin.orders.show', $order->id) }}"><strong>{{ $order->id }}</strong></a></td>
									@if($order->user)
									<td><a href="{{ route('admin.users.show', $order->user->id) }}"><strong>{{ $order->user->first_name }}</strong></a></td>
									@else
									<td><strong>{{ $order->fullname }}</strong></td>
									@endif
									<td>{{ $order->total }}</td>
									<td>{{ $order->address }}</td>
									<td>{{ $order->phone }}</td>
									<td>{{$order->email}}</td>
									<td>{{ $order->typePayment->name }}</td>
									
								</tr>
								@endforeach
					            </tbody>
					        </table>
					    </div>
                    </div>
                </div>
            </div>
        </div> <!-- end col -->
	</div>
</div>




@endsection

@section('link_bottom')

 	<!-- Required datatable js -->
    <script src="{{ asset('admin/plugins/datatables/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('admin/plugins/datatables/dataTables.bootstrap4.min.js') }}"></script>

@endsection

@section('codescript')
	<script type="text/javascript">
        $(document).ready(function() {

            // Default Datatable
            $('.infotable').DataTable();

            

            table.buttons().container()
                    .appendTo('#datatable-buttons_wrapper .col-md-6:eq(0)');
        } );

    </script>
@endsection