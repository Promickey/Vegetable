@extends('admin.layouts.master')

@section('title', 'List Comments')

@section('page', 'Comments')

@section('link_top')
	
	<!-- DataTables -->
    <link href="{{ asset('admin/plugins/datatables/dataTables.bootstrap4.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('admin/plugins/datatables/buttons.bootstrap4.min.css') }}" rel="stylesheet" type="text/css" />

@endsection

@section('content')





<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
            <div class="card-box">
                <h4 class="header-title m-t-0 m-b-30">Comment List</h4>

                <ul class="nav nav-pills navtab-bg nav-justified pull-in ">
                	<li class="nav-item">
                        <a href="#messages1" data-toggle="tab" aria-expanded="false" class="nav-link active">
                            <i class="fi-mail mr-2"></i> Chưa Xác Nhận
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#profile1" data-toggle="tab" aria-expanded="false" class="nav-link ">
                            <i class="fi-head mr-2"></i>Đã Xác Nhận
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#home1" data-toggle="tab" aria-expanded="true" class="nav-link">
                            <i class="fi-monitor mr-2"></i> Tất Cả
                        </a>
                    </li>
                    
                </ul>
                <div class="tab-content">
                	<div class="tab-pane show active" id="messages1">
                        <div class="card-box table-responsive">
					        <h4 class="m-t-0 header-title">List Comment</h4>

					        <table id="datatable" class="table table-bordered infotable">
					            <thead>
					            <tr>
					                <th>ID</th>
					                <th>Username</th>
					                <th>Sản Phẩm</th>
					                <th>Title</th>
					                <th>Content</th>
					                <th>Rating</th>
					                <th>Created At</th>
					                <th>Action</th>
					                <th>Delete</th>
					            </tr>
					            </thead>


					            <tbody>
					            @foreach($comments_unactive as $comment)
								<tr>
									<td>{{ $comment->id }}</td>
									<td><a href="{{ route('admin.users.show', $comment->user->id) }}">{{ $comment->user->username?$comment->user->username:$comment->user->first_name }}</a></td>
									<td><a href="{{ route('admin.products.show', $comment->product->id) }}">{{ $comment->product->name }}</a></td>
									<td>{{ $comment->title }}</td>
									<td>{{ $comment->content }}</td>
									<td>{{ $comment->rating }}</td>
									<td>{{ $comment->created_at }}</td>
									<td>
										@if($comment->is_active == 1)
										<form action="{{ route('admin.comments.update', $comment->id) }}" method="POST" role="form">
											@csrf
											@method('PUT')
											<input type="hidden" name="is_active" value="0" class="form-control" id="" placeholder="Input field">
											<button data-toggle="tooltip" data-original-title="Huỷ Xác Nhận" type="submit" class="btn btn-success"><i class="  fa fa-calendar-check-o"></i></button>
										</form>
										@else
										<form action="{{ route('admin.comments.update', $comment->id) }}" method="POST" role="form">
											@csrf
											@method('PUT')
											<input type="hidden" name="is_active" value="1" class="form-control" id="" placeholder="Input field">
											<button data-toggle="tooltip" data-original-title="Xác Nhận" type="submit" class="btn btn-info"><i  class="fa fa-calendar-times-o"></i></button>
										</form>
										@endif
									</td>

									<td>
										<form action="{{ route('admin.comments.destroy', $comment->id) }}" method="POST" role="form">
											@csrf
											@method('DELETE')					
											<button data-toggle="tooltip" data-original-title="Xoá Comment" type="submit" class="btn btn-danger"><i class="dripicons-trash"></i></button>
										</form>
									</td>
								</tr>
								@endforeach
					            </tbody>
					        </table>
					    </div>
                    </div>
                    

                    <div class="tab-pane " id="profile1">
                        <div class="card-box table-responsive">
					        <h4 class="m-t-0 header-title">List Comment</h4>

					        <table id="datatable" class="table table-bordered infotable">
					            <thead>
					            <tr>
					                <th>ID</th>
					                <th>Username</th>
					                <th>Sản Phẩm</th>
					                <th>Title</th>
					                <th>Content</th>
					                <th>Rating</th>
					                <th>Created At</th>
					                <th>Action</th>
					                <th>Delete</th>
					            </tr>
					            </thead>


					            <tbody>
					            @foreach($comments_active as $comment)
								<tr>
									<td>{{ $comment->id }}</td>
									<td><a href="{{ route('admin.users.show', $comment->user->id) }}">{{ $comment->user->username?$comment->user->username:$comment->user->first_name }}</a></td>
									<td><a href="{{ route('admin.products.show', $comment->product->id) }}">{{ $comment->product->name }}</a></td>
									<td>{{ $comment->title }}</td>
									<td>{{ $comment->content }}</td>
									<td>{{ $comment->rating }}</td>
									<td>{{ $comment->created_at }}</td>
									<td>
										@if($comment->is_active == 1)
										<form action="{{ route('admin.comments.update', $comment->id) }}" method="POST" role="form">
											@csrf
											@method('PUT')
											<input type="hidden" name="is_active" value="0" class="form-control" id="" placeholder="Input field">
											<button data-toggle="tooltip" data-original-title="Huỷ Xác Nhận" type="submit" class="btn btn-success"><i class="  fa fa-calendar-check-o"></i></button>
										</form>
										@else
										<form action="{{ route('admin.comments.update', $comment->id) }}" method="POST" role="form">
											@csrf
											@method('PUT')
											<input type="hidden" name="is_active" value="1" class="form-control" id="" placeholder="Input field">
											<button data-toggle="tooltip" data-original-title="Xác Nhận" type="submit" class="btn btn-info"><i  class="fa fa-calendar-times-o"></i></button>
										</form>
										@endif
									</td>

									<td>
										<form action="{{ route('admin.comments.destroy', $comment->id) }}" method="POST" role="form">
											@csrf
											@method('DELETE')					
											<button data-toggle="tooltip" data-original-title="Xoá Comment" type="submit" class="btn btn-danger"><i class="dripicons-trash"></i></button>
										</form>
									</td>
								</tr>
								@endforeach
					            </tbody>
					        </table>
					    </div>
                    </div>
                    <div class="tab-pane" id="home1">
                        <div class="card-box table-responsive">
					        <h4 class="m-t-0 header-title">List Comment</h4>

					        <table id="datatable" class="table table-bordered infotable">
					            <thead>
					            <tr>
					                <th>ID</th>
					                <th>Username</th>
					                <th>Sản Phẩm</th>
					                <th>Title</th>
					                <th>Content</th>
					                <th>Rating</th>
					                <th>Created At</th>
					                <th>Action</th>
					                <th>Delete</th>
					            </tr>
					            </thead>


					            <tbody>
					            @foreach($comments as $comment)
								<tr>
									<td>{{ $comment->id }}</td>
									<td><a href="{{ route('admin.users.show', $comment->user->id) }}">{{ $comment->user->username?$comment->user->username:$comment->user->first_name }}</a></td>
									<td><a href="{{ route('admin.products.show', $comment->product->id) }}">{{ $comment->product->name }}</a></td>
									<td>{{ $comment->title }}</td>
									<td>{{ $comment->content }}</td>
									<td>{{ $comment->rating }}</td>
									<td>{{ $comment->created_at }}</td>
									<td>
										@if($comment->is_active == 1)
										<form action="{{ route('admin.comments.update', $comment->id) }}" method="POST" role="form">
											@csrf
											@method('PUT')
											<input type="hidden" name="is_active" value="0" class="form-control" id="" placeholder="Input field">
											<button data-toggle="tooltip" data-original-title="Huỷ Xác Nhận" type="submit" class="btn btn-success"><i class="  fa fa-calendar-check-o"></i></button>
										</form>
										@else
										<form action="{{ route('admin.comments.update', $comment->id) }}" method="POST" role="form">
											@csrf
											@method('PUT')
											<input type="hidden" name="is_active" value="1" class="form-control" id="" placeholder="Input field">
											<button data-toggle="tooltip" data-original-title="Xác Nhận" type="submit" class="btn btn-info"><i  class="fa fa-calendar-times-o"></i></button>
										</form>
										@endif
									</td>

									<td>
										<form action="{{ route('admin.comments.destroy', $comment->id) }}" method="POST" role="form">
											@csrf
											@method('DELETE')					
											<button data-toggle="tooltip" data-original-title="Xoá Comment" type="submit" class="btn btn-danger"><i class="dripicons-trash"></i></button>
										</form>
									</td>
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