@extends('admin.layouts.master')

@section('title', 'List Categories')

@section('page', 'Categories')

@section('link_top')
	

	<!-- DataTables -->
    <link href="{{ asset('admin/plugins/datatables/dataTables.bootstrap4.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('admin/plugins/datatables/buttons.bootstrap4.min.css') }}" rel="stylesheet" type="text/css" />
@endsection

@section('content')


<div class="container">
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
		<div class="col-sm-10">
			
		</div>
		<div class="col-sm-2 ">
			<a href="{{ route('admin.categories.create') }}" class="btn btn-custom waves-effect waves-light">Thêm mới danh mục</a>
		</div>
	</div>
</div>


<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="card-box table-responsive">
                <h4 class="m-t-0 header-title">List Danh mục Sản phẩm</h4>
                <table id="datatable" class="table infotable table-bordered">

                	<thead>
                    <tr>
                        <th>ID</th>
                        <th>Tên Danh Mục</th>
                        <th>Mô Tả</th>
                        <th>Sửa</th>
                        <th>Xoá</th>
                    </tr>
                    </thead>

                    <tbody>
                    @foreach($categories as $category)
                    @if($category->parent_id == null)
                    <tr>
                        <td>{{$category->id}}</td>
                        <td><a href="{{ route('admin.categories.subcategories', $category->id) }}"><strong>{{$category->name}}</strong></a></td>
                        <td>phần mô tả</td>
                        <td><a class="btn btn-info" href="{{ route('admin.categories.edit', $category->id) }}" data-toggle="tooltip" data-original-title="Chỉnh Sửa"><i  class="fa fa-edit"></i></a>
                        </td>
                        <td>
                        	<a onclick="alert('Đây là danh mục gốc, bạn không thể xoá được')" class="btn btn-danger" href="#" data-toggle="tooltip" data-original-title="Chỉnh Sửa"><i  class="fa fa-edit"></i></a>
                        </td>
                    </tr>
                    @endif
                    @endforeach
                	</tbody>

                </table>
            </div>
        </div>
    </div>
    <!-- end row -->
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
