@extends('users/layouts/master')

@section('page', 'Products')

@section('banner_right')

<div class="w3l_banner_nav_right_banner3">
	<h3>Best Deals For New Products<span class="blink_me"></span></h3>
</div>
<div class="agileinfo_single">
	<div class="col-sm-12">
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

	<h5>{{$product->name}}</h5>
	<div class="col-md-4 agileinfo_single_left">
		@if($product->images->first())
		@foreach($product->images as $image)
		<img id="example" src="{{ asset($image->path ? $image->path : 'http://via.placeholder.com/300')}}" style="width: 100%;" alt=" " class="img-responsive" />
		@endforeach
		@else
		<img id="example" src="{{asset('http://via.placeholder.com/300')}}" style="width: 100%;" alt=" " class="img-responsive" />
		@endif
	</div>
	<div class="col-md-8 agileinfo_single_right">
		<div class="rating">
			<span class="">
				<!-- @for($i=5; $i>=1; $i--)
				<input id="rating{{$i}}" type="radio" name="" value="{{$i}}" {{ $rating ==$i ? 'checked' : '' }}>
				<label for="rating{{$i}}">{{$i}}</label>
				@endfor -->
				<label for="">
					@for($j=1; $j<=$rating; $j++)
                    <i style="color: #50c8f5;" class="fa fa-star"></i>
                    @endfor
                    @for($i=1; $i<=(5-$rating); $i++)
                    <i class="fa fa-star-o"></i>
                    @endfor
                    
				</label>
			</span>
		</div>
		<div class="w3agile_description">
			<h4>Description :</h4>
			<p>{{ $product->description }} </p>
		</div>
		<div class="snipcart-item block">
			<div class="snipcart-thumb agileinfo_single_right_snipcart">
				<h4>{{number_format($product->price)}}<span>VNĐ</span></h4>
			</div>
			<div class="snipcart-details agileinfo_single_right_details">
				<div class="addtocart-btn button">
                    <a class="add-to-cart button" data-id="{{ $product->id }}" data-name="{{ $product->name }}" data-quantity="1" data-price="{{ $product->price }}" data-image="{{asset($product->images->first()? $product->images->first()->path:'http://via.placeholder.com/300')}}" href="#" data-login="{{Auth::check()}}">Add to cart</a>
				</div>
			</div>
		</div>
	</div>
	<div class="clearfix"> </div>
</div>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-10">
            <form action="{{ route('comments.store') }}" method="POST" role="form">
            	@csrf
                <legend>Không gian Comment Test</legend>
                @if($errors->has('user_id'))
                    <div class="alert alert-danger">
                        <span>{{ $errors->first('user_id') }}</span>
                    </div>
                @endif
            
                <div class="form-group">
                    <label for="">Tiêu Đề</label>
                    <input name="title" type="text" class="form-control" id="" placeholder="Input field" value="{{old('title')}}">
                    @if($errors->has('title'))
                    <div class="alert alert-danger">
                        <span>{{ $errors->first('title') }}</span>
                    </div>
               		@endif
                </div>
                <div>
                	<label for="">Rating:</label>
                </div>
                <div class="rating">
					<span class="">
						@for($i=1; $i<=5; $i++)
						<input id="" type="radio" name="rating" value="{{$i}}" {{ $i == 4 ? 'checked' : '' }}>
						<label for="">
							@for($j=1; $j<=$i; $j++)
                            <i style="color: #50c8f5;" class="fa fa-star"></i>
                            @endfor
                            @for($j=1; $j<=(5-$i); $j++)
		                    <i class="fa fa-star-o"></i>
		                    @endfor
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</label>
						@endfor
					</span>
				</div>
				<div>
					@if(Auth::check())
					<input type="hidden" name="user_id" value="{{Auth::user()->id}}">
					@else
					<input type="hidden" name="user_id" value="">
					@endif
					<input type="hidden" name="product_id" value="{{$product->id}}">
				</div>
                <div class="form-group">
                    <label for="comment">Comment:</label>
                    <textarea name="content" class="form-control" rows="5" id="comment">{{old('content')}}</textarea>
                    @if($errors->has('content'))
                    <div class="alert alert-danger">
                        <span>{{ $errors->first('content') }}</span>
                    </div>
               		@endif
                </div> 
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-10">
            <h2 class="page-header">Comments</h2>
            <section class="comment-list">
                <!-- Comment -->
            @foreach($comments as $comment)
              <article class="row">
                <div class="col-md-2 col-sm-2 hidden-xs">
                  <figure class="thumbnail">
                    <img class="img-responsive" width="100%" src="{{ asset($comment->user->avatar ? $comment->user->avatar : 'http://www.tangoflooring.ca/wp-content/uploads/2015/07/user-avatar-placeholder.png')}}" />
                  </figure>
                  <figcaption class="text-center font-weight-bold text-capitalize"><strong>{{ $comment->user->username?$comment->user->username:$comment->user->first_name }}</strong></figcaption>
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
                      <!-- <p class="text-right"><a href="#" class="btn btn-default btn-sm"><i class="fa fa-reply"></i> reply</a></p> -->
                    </div>
                  </div>
                </div>
              </article>
            @endforeach
            </section>
        </div>
    </div>
</div>

@endsection

@section('product1')
<!-- brands -->
<div class="w3ls_w3l_banner_nav_right_grid w3ls_w3l_banner_nav_right_grid_popular">
	<div class="container">
		<h3>Sản Phẩm Cùng Loại</h3>
		<div class="w3ls_w3l_banner_nav_right_grid1">
			<h6>{{ $category->name }}</h6>
			@foreach($other_products as $product)
			<div class="col-md-3 w3ls_w3l_banner_left">
				<div class="hover14 column">
				<div class="agile_top_brand_left_grid w3l_agile_top_brand_left_grid">
					<div class="agile_top_brand_left_grid_pos">
						<img src="{{asset('users/images/offer.png')}}" alt=" " class="img-responsive" />
					</div>
					<div class="agile_top_brand_left_grid1">
						<figure>
							<div class="snipcart-item block">
								<div class="snipcart-thumb">
									<a href="{{route('products.show', $product->id)}}"><img src="{{asset($product->images->first()->path)}}" alt=" " class="img-responsive" /></a>
									<p>{{$product->name}}</p>
									<h4>{{number_format($product->price)}} <span>VNĐ</span></h4>
								</div>
								<div class="snipcart-details">
									<div class="addtocart-btn button">
	                                    <a class="add-to-cart button" data-id="{{ $product->id }}" data-name="{{ $product->name }}" data-quantity="1" data-price="{{ $product->price }}" data-image="{{asset($product->images->first()->path)}}" href="#" data-login="{{Auth::check()}}">Add to cart</a>
									</div>
								</div>
							</div>
						</figure>
					</div>
				</div>
				</div>
			</div>
			@endforeach
			<div class="clearfix"> </div>
		</div>
	</div>
</div>



<!-- //brands -->
@endsection