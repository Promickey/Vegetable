@extends('admin.layouts.master')

@section('title', 'List Products')

@section('page', 'Products')

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
			<a href="{{ route('admin.products.create') }}" class="btn btn-primary pull-right">Thêm mới Sản phẩm</a>
		</div>
	</div>
</div>


<div class="container-fluid">
	<div class="row">
	    <div class="col-12">
	        <div class="card-box table-responsive">
	            <h4 class="m-t-0 header-title">Sẩn phẩm của danh mục <strong>{{ $category->name }}</strong></h4>

	            <table id="datatable" class="table table-bordered">
	                <thead>
	                <tr>
	                    <th>ID</th>
	                    <th>Tên</th>
	                    <th>Hình ảnh</th>
	                    <th>Giá (vnđ)</th>
	                    <th>Số Lượng</th>
	                    <th>Ngày Tạo</th>
	                    <th>Sửa</th>
	                    <th>Xoá</th>
	                </tr>
	                </thead>


	                <tbody>
	                @foreach($productsByCategory as $product)
					<tr>
						<td>{{ $product->id }}</td>
						<td><a href="{{ route('admin.products.show', $product->id) }}"><strong>{{ $product->name }}</strong></a></td>
						<td><img style="width: 100px; height: 70px;" src="{{ asset($product->images->first()->path) }}" alt=""></td>
						<td>{{ number_format($product->price) }}</td>
						<td>{{ $product->quantity }}</td>
						<td>{{ $product->created_at }}</td>
						<td><a class="btn btn-info" href="{{ route('admin.products.edit', $product->id) }}" data-toggle="tooltip" data-original-title="Chỉnh Sửa"><i  class="fa fa-edit"></i></a>
						</td>
						<td>
							<form action="{{ route('admin.products.destroy', $product->id) }}" method="POST" role="form">
                                @csrf
                                @method('DELETE')                   
                                <button onclick="return confirm('Nếu bạn xoá sản phẩm này, tất cả đơn hàng của sản phẩm cũng sẽ bị xoá.\nBạn có chắc chắn muốn xoá sản phẩm này?')" data-toggle="tooltip" data-original-title="Xoá Product" type="submit" class="btn btn-danger"><i class="dripicons-trash"></i></button>
                            </form>
		                </td>
						
					</tr>
					@endforeach
	                </tbody>
	            </table>
	        </div>
	    </div>
	</div> <!-- end row -->
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
            $('#datatable').DataTable();

            

            table.buttons().container()
                    .appendTo('#datatable-buttons_wrapper .col-md-6:eq(0)');
        } );

    </script>
@endsection