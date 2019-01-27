@extends('users/layouts/master')

@section('page', 'Products')

@section('banner_right')
<div class="w3l_banner_nav_right_banner3">
	<h3>Best Deals For New Products<span class="blink_me"></span></h3>
</div>

@endsection


@section('product1')

<div class="w3ls_w3l_banner_nav_right_grid">
	<div class="container">
	<h3>Sản Phẩm</h3>
	<div class="w3ls_w3l_banner_nav_right_grid1">
		<h6>{{$category->name}}</h6>
		@foreach($productsByCategory as $product)
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
								<a href="{{route('products.show', $product->id)}}"><img style="width: 100%; height:200px;" src="{{ asset($product->images->first()->path) }}" alt=" " class="img-responsive" /></a>
								<p>{{ $product->name }}</p>
								<h4>{{ number_format($product->price) }} <span>VNĐ</span></h4>
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
	<div class="row">
		<div class="col-sm-6">
			{{ $productsByCategory->links() }}
		</div>
	</div>
	</div>
</div>

<div class="w3ls_w3l_banner_nav_right_grid">
	<div class="container">
	<h3>Sản Phẩm Liên Quan</h3>
	<div class="w3ls_w3l_banner_nav_right_grid1">
		<h6><a href="{{route('categories.list-products', $otherCategories[0]->id)}}">{{$otherCategories[0]->name}}</a></h6>
		@foreach($relative_products1 as $product)

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
								<a href="{{route('products.show', $product->id)}}"><img style="width: 100%; height:200px;" src="{{ asset($product->images->first()->path) }}" alt=" " class="img-responsive" /></a>
								<p>{{ $product->name }}</p>
								<h4>{{ number_format($product->price) }} <span>VNĐ</span></h4>
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
		<!-- paginate -->
		<div class="row">
			<div class="col-sm-6">
				{{$relative_products1->links()}}   
			</div>
		</div>
	</div>

	<div class="w3ls_w3l_banner_nav_right_grid1">
		<h6><a href="{{route('categories.list-products', $otherCategories[1]->id)}}">{{$otherCategories[1]->name}}</a></h6>
		@foreach($relative_products2 as $product)

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
								<a href="{{route('products.show', $product->id)}}"><img style="width: 100%; height:200px;" src="{{ asset($product->images->first()->path) }}" alt=" " class="img-responsive" /></a>
								<p>{{ $product->name }}</p>
								<h4>{{ number_format($product->price) }} <span>VNĐ</span></h4>
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
		<!-- paginate -->
		<div class="row">
			<div class="col-sm-6">
				{{$relative_products2->links()}}   
			</div>
		</div>
	</div>
	
	


	</div>
</div>

@endsection