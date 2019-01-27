@extends('admin.layouts.master')

@section('title', 'List Products')

@section('page', 'Products')

@section('link_top')
	

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
        <div class="col-4">
        	@foreach($product->images as $image)
			<div class="col-12">
				<img class="" src="{{ asset($image->path ? $image->path : 'http://via.placeholder.com/300x300') }}" alt="" style="width: 100%;"  class="img-responsive img-rounded">
				<hr>
			</div>
			@endforeach
        </div>
        <div class="col-8">
        	<div class="card-box">
                <h4 class=" mt-0  mb-3"> Tên Sản Phẩm:  <span class="text-custom header-title">{{ $product->name }}</span></h4>
                <div class="">
                    <div class="">
                        <h5 class=" m-b-5">ID: <span class="text-custom">{{ $product->id }}</span> </h5>
                        <h5 class=" m-b-5">Danh Mục: <a href="{{ route('admin.category.products', $product->category->id ) }}"><span class="text-custom">{{ $product->category->name }}</span></a> </h5>
                        <p><b>Giá: {{ number_format($product->price) }} vnđ</b></p>
                        <p><b>Tổng: {{ $product->quantity }} </b></p>
                        <p><b>Tồn kho: {{ $product->quantity - $quantities_sold }} </b></p>
                        <p><b>Ngày Tạo: {{ $product->created_at }}</b></p>
                        <h4><b>Mô Tả</b></h4>
						
                        <p class="text-muted font-13 m-b-0">{{ $product->description }}</p>
                    </div>

                    <hr>
                    <div class="row">
						<div class="col-sm-7">
							
						</div>
						<div class="col-sm-2">
							<a href="{{ route('admin.products.edit', $product->id) }}" class="btn btn-primary pull-right">Sửa Thông Tin</a>
						</div>
						<div class="col-sm-2">
                            <form action="{{route('admin.products.destroy', $product->id)}}" method="POST" role="form">
                                @csrf
                                @method('DELETE')
                                <button onclick = "return confirm('Nếu bạn xoá người dùng này, tất cả đơn hàng và comment cũng sẽ bị xoá.\nBạn có chắc chắn muốn xoá người dùng này?')" class="btn btn-danger" type="submit">Xoá Sản Phẩm</button>
                            </form>
						</div>
					</div>

                </div>
            </div>

            <!-- <div class="row">
            
                <div class="col-sm-4">
                    <div class="card-box tilebox-one">
                        <i class="icon-layers float-right text-muted"></i>
                        <h6 class="text-muted text-uppercase mt-0">Orders</h6>
                        <h2 class="m-b-20" data-plugin="counterup">{{ $product->orderDetails->sum('quantity') }}</h2>
                    </div>
                </div>end col
            
                <div class="col-sm-4">
                    <div class="card-box tilebox-one">
                        <i class="icon-paypal float-right text-muted"></i>
                        <h6 class="text-muted text-uppercase mt-0">Tồn Kho</h6>
                        <h2 class="m-b-20">$<span data-plugin="counterup">{{ $product->quantity - ($product->orderDetails->sum('quantity')) }}</span></h2>
                    </div>
                </div>end col
            
                <div class="col-sm-4">
                    <div class="card-box tilebox-one">
                        <i class="icon-rocket float-right text-muted"></i>
                        <h6 class="text-muted text-uppercase mt-0">Đã Bán</h6>
                        <h2 class="m-b-20" data-plugin="counterup"></h2>
                    </div>
                </div>end col
            
            </div> -->
            <!-- end row -->

			

            <div class="card-box">
                <h4 class="header-title mb-3">Đơn Hàng</h4>

                <div class="table-responsive">
                    <table class="table m-b-0">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>ID Đơn Hàng</th>
                            <th>Số Lượng</th>
                            <th>Ngày Đặt Hàng</th>
                            <th>Trạng Thái</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($product->orderDetails as $orderDetail)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $orderDetail->order->id }}</td>
                            <td>{{ $orderDetail->quantity }}</td>
                            <td>{{ $orderDetail->created_at }}</td>
                            <td><span class="label label-info">{{ $orderDetail->order->status->name }}</span></td>
                        </tr>
                        @endforeach

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-10">
            <form action="" method="POST" role="form">
                <legend>Không gian Comment Test</legend>
            
                <div class="form-group">
                    <label for="">Title</label>
                    <input type="text" class="form-control" id="" placeholder="Input field">
                </div>
                <div class="form-group">
                    <label for="comment">Comment:</label>
                    <textarea class="form-control" rows="5" id="comment"></textarea>
                </div> 
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-8">
            <h2 class="page-header">Comments</h2>
            <section class="comment-list">
                <!-- Comment -->
            @if(!empty($comments))
            @foreach($comments as $comment)
              <article class="row">
                <div class="col-md-2 col-sm-2 hidden-xs">
                  <figure class="thumbnail">
                    <img class="img-responsive" width="100%" src="{{ asset($comment->user->avatar ? $comment->user->avatar : 'http://www.tangoflooring.ca/wp-content/uploads/2015/07/user-avatar-placeholder.png')}}" />
                    <figcaption class="text-center font-weight-bold text-capitalize">{{ $comment->user->username }}</figcaption>
                  </figure>
                </div>
                <div class="col-md-10 col-sm-10">
                  <div class="panel panel-default arrow left">
                    <div class="panel-body">
                      <header class="text-left">
                        <div class="comment-user font-weight-bold text-capitalize"><i class="fa fa-user"></i> {{ $comment->title }}</div>
                        <div>
                            @for($i=1; $i<=$comment->rating; $i++)
                            <i class="fa fa-star"></i>
                            @endfor
                            @for($i=1; $i<=(5-$comment->rating); $i++)
                            <i class="fa fa-star-o"></i>
                            @endfor
                        </div>
                        <time class="comment-date" datetime="16-12-2014 01:05"><i class="fa fa-clock-o"></i> {{ $comment->created_at }} </time>
                      </header>
                      <div class="comment-post">
                        <p>
                          {{ $comment->content }}
                        </p>
                      </div>
                      <p class="text-right"><a href="#" class="btn btn-default btn-sm"><i class="fa fa-reply"></i> reply</a></p>
                    </div>
                  </div>
                </div>
              </article>
            @endforeach
            @endif
            </section>
        </div>
    </div>
</div>


@endsection

@section('link_bottom')

		
		
	<!-- Counter Up  -->
	<script src="{{ asset('admin/plugins/waypoints/lib/jquery.waypoints.min.js') }}"></script>
    <script src="{{ asset('admin/plugins/counterup/jquery.counterup.min.js') }}"></script>
@endsection