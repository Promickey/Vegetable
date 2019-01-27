@extends('admin.layouts.master')

@section('title', 'List User')
@section('page', 'Users')

@section('link_top')
    

    <!-- DataTables -->
    <link href="{{ asset('admin/plugins/datatables/dataTables.bootstrap4.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('admin/plugins/datatables/buttons.bootstrap4.min.css') }}" rel="stylesheet" type="text/css" />
@endsection

@section('content')

<div class="container-fluid">
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
            <div class="card-box table-responsive">
                <h4 class="m-t-0 header-title">Admin Info</h4>

                <table id="datatable" class="table infotable table-bordered">
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
                    @foreach($admins as $admin)
    	                <tr>
    	                    <th>#{{ $loop->iteration }}</th>
    	                    <td>{{ $admin->id }}</td>
    	                    <td>{{ $admin->username }}</td>
    	                    <td>{{ $admin->email }}</td>
    	                    <td><a class="btn btn-info" href="{{ route('admin.users.edit', $admin->id) }}" data-toggle="tooltip" data-original-title="Chỉnh Sửa"><i  class="fa fa-edit"></i></a></td>
    	                </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>

        </div>
    </div>


    <div class="row">
    	<div class="col-sm-8">
    	</div>
    	<div class="col-sm-4">
    		<a href="{{ route('admin.users.create') }}" class="btn btn-primary pull-right">Thêm mới User</a>
    	</div>
    </div>
</div>

<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="card-box table-responsive">
                <h4 class="m-t-0 header-title">User Info</h4>

                <table id="datatable" class="table infotable table-bordered">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>ID</th>
                        <th>Username</th>
                        <th>Name</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>Ngày Sinh</th>
                        <th>Sửa</th>
                        <th>Xoá</th>
                    </tr>
                    </thead>


                    <tbody>
                    @foreach($users as $user)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $user->id }}</td>
                        <td><span class="text-capitalize">{{ $user->username }}</span></td>
                        <td><a class="text-capitalize" href="{{ route('admin.users.show', $user->id) }}">{{ $user->first_name }}</a></td>
                        <td>{{ $user->phone }}</td>
                        <td>{{ $user->email }}</td>
                        <td>{{ $user->dob }}</td>
                        <td><a class="btn btn-info" href="{{ route('admin.users.edit', $user->id) }}" data-toggle="tooltip" data-original-title="Chỉnh Sửa"><i  class="fa fa-edit"></i></a></td>
                        <td>
                            <form action="{{ route('admin.users.destroy', $user->id) }}" method="POST" role="form">
                                @csrf
                                @method('DELETE')                   
                                <button onclick="return confirm('Nếu bạn xoá người dùng này, tất cả đơn hàng và comment cũng sẽ bị xoá.\nBạn có chắc chắn muốn xoá người dùng này?')" data-toggle="tooltip" data-original-title="Xoá User" type="submit" class="btn btn-danger"><i class="dripicons-trash"></i></button>
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

    <!-- Selection table -->
    <script src="{{ asset('admin/plugins/datatables/dataTables.select.min.js') }}"></script>


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

<!-- phải sử dụng 2 loại bảng khác nhau mới ko lỗi, chưa hiểu
    jQuery.Deferred exception: table is not defined ReferenceError: table is not defined
    at HTMLDocument.<anonymous>
 -->