@extends('admin.layouts.master')

@section('title', 'Sub Categories')

@section('page', 'Categories')

@section('link_top')
	

	<!-- DataTables -->
    <link href="{{ asset('admin/plugins/datatables/dataTables.bootstrap4.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('admin/plugins/datatables/buttons.bootstrap4.min.css') }}" rel="stylesheet" type="text/css" />
@endsection

@section('content')



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
        <div class="col-12">
            <div class="card-box table-responsive">
                <h4 class="m-t-0 header-title">List Danh Mục con của <strong><i>{{ $category->name }}</i></strong></h4>
                <table id="datatable" class="table infotable table-bordered">

                	<thead>
                    <tr>
                        <th>STT</th>
                        <th>ID</th>
                        <th>Tên Danh Mục</th>
                        <th>Mô Tả</th>
                        <th>Sửa</th>
                        <th>Xoá</th>
                    </tr>
                    </thead>

                    <tbody>
                    @foreach($subcategories as $category)
                    <tr>
                        <td>{{$loop->iteration}}</td>
                        <td>{{$category->id}}</td>
                        <td><a href="{{ route('admin.category.products', $category->id) }}"><strong>{{$category->name}}</strong></a></td>
                        <td>phần mô tả</td>
                        <td><a class="btn btn-info" href="{{ route('admin.categories.edit', $category->id) }}" data-toggle="tooltip" data-original-title="Chỉnh Sửa"><i  class="fa fa-edit"></i></a>
                        </td>
                        <td>
                        	<form action="{{ route('admin.categories.destroy', $category->id) }}" method="POST" role="form">
                                @csrf
                                @method('DELETE')                   
                                <button onclick="return confirm('Nếu bạn xoá danh mục này, tất cả sản phẩm, đơn hàng liên quan cũng sẽ bị xoá.\nBạn có chắc chắn muốn xoá danh mục này?')" data-toggle="tooltip" data-original-title="Xoá Product" type="submit" class="btn btn-danger"><i class="dripicons-trash"></i></button>
                            </form>
                        </td>
                    </tr>
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
