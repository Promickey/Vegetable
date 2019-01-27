@extends('users/layouts/master')

@section('banner_right')

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
	</div>
</div>


<section class="slider">
	<div class="flexslider">
		<ul class="slides">
			<li>
				<div class="w3l_banner_nav_right_banner">
					<h3>Make your <span>food</span> with Spicy.</h3>
					<div class="more">
						<a href="products.html" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</a>
					</div>
				</div>
			</li>
			<li>
				<div class="w3l_banner_nav_right_banner1">
					<h3>Make your <span>food</span> with Spicy.</h3>
					<div class="more">
						<a href="products.html" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</a>
					</div>
				</div>
			</li>
			<li>
				<div class="w3l_banner_nav_right_banner2">
					<h3>upto <i>50%</i> off.</h3>
					<div class="more">
						<a href="products.html" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</a>
					</div>
				</div>
			</li>
		</ul>
	</div>
</section>
<!-- flexSlider -->
	<link rel="stylesheet" href="{{asset('users/css/flexslider.css')}}" type="text/css" media="screen" property="" />
	<script defer src="{{asset('users/js/jquery.flexslider.js')}}"></script>
	<script type="text/javascript">
	$(window).load(function(){
	  $('.flexslider').flexslider({
		animation: "slide",
		start: function(slider){
		  $('body').removeClass('loading');
		}
	  });
	});
  </script>
<!-- //flexSlider -->
@endsection

@section('hot_product')
<div class="top-brands">
	<div class="container">
		<h3>Sản Phẩm Mới</h3>
		<div class="agile_top_brands_grids">
			@foreach($new_products as $product)
			<div class="col-md-3 top_brand_left">
				<div class="hover14 column">
					<div class="agile_top_brand_left_grid">
						<div class="agile_top_brand_left_grid_pos">
							<img src="{{asset('users/images/offer.png')}}" alt=" " class="img-responsive" />
						</div>
						<div class="agile_top_brand_left_grid1">
							<figure>
								<div class="snipcart-item block" >
									<div class="snipcart-thumb">
										<a href="{{route('products.show', $product->id)}}"><img style="width: 100%; height:200px;" title=" " alt="{{ $product->name }} " src="{{asset($product->images->first()? $product->images->first()->path:'http://via.placeholder.com/300')}}" /></a>		
										<p>{{$product->name}}</p>
										<h4>{{ number_format($product->price) }} VNĐ</h4>
									</div>
									<div class="snipcart-details top_brand_home_details">
										<div class="addtocart-btn button">
		                                    <a class="add-to-cart button" data-id="{{ $product->id }}" data-name="{{ $product->name }}" data-quantity="1" data-price="{{ $product->price }}" data-image="{{asset($product->images->first()? $product->images->first()->path:'http://via.placeholder.com/300')}}" href="#" data-login="{{Auth::check()}}">Add to cart</a>
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
<!-- //new-products -->

<div class="top-brands">
	<div class="container">
		<h3>Sản Phẩm Bán Chạy</h3>
		<div class="agile_top_brands_grids">
			@foreach($hot_products as $product)
			<div class="col-md-3 top_brand_left">
				<div class="hover14 column">
					<div class="agile_top_brand_left_grid">
						<div class="agile_top_brand_left_grid_pos">
							<img src="{{asset('users/images/offer.png')}}" alt=" " class="img-responsive" />
						</div>
						<div class="agile_top_brand_left_grid1">
							<figure>
								<div class="snipcart-item block" >
									<div class="snipcart-thumb">
										<a href="{{route('products.show', $product->id)}}"><img style="width: 100%; height:200px;" title=" " alt="{{ $product->name }} " src="{{asset($product->images->first()? $product->images->first()->path:'http://via.placeholder.com/300')}}" /></a>		
										<p>{{$product->name}}</p>
										<h4>{{ number_format($product->price) }} VNĐ</h4>
									</div>
									<div class="snipcart-details top_brand_home_details">
										<div class="addtocart-btn button">
		                                    <a class="add-to-cart button" data-id="{{ $product->id }}" data-name="{{ $product->name }}" data-quantity="1" data-price="{{ $product->price }}" data-image="{{asset($product->images->first()? $product->images->first()->path:'http://via.placeholder.com/300')}}" href="#" data-login="{{Auth::check()}}">Add to cart</a>
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
<!-- //top-brands -->
@endsection

@section('top_product')
<!-- fresh-vegetables -->
	<div class="fresh-vegetables">
		<div class="container">
			<div class="w3l_fresh_vegetables_grids">
				<div class="col-md-12 w3l_fresh_vegetables_grid_right">
					<div class="col-md-4 w3l_fresh_vegetables_grid">
						<div class="w3l_fresh_vegetables_grid1">
							<img src="{{asset('users/images/8.jpg')}}" alt=" " class="img-responsive" />
						</div>
					</div>
					<div class="col-md-4 w3l_fresh_vegetables_grid">
						<div class="w3l_fresh_vegetables_grid1">
							<div class="w3l_fresh_vegetables_grid1_rel">
								<img src="{{asset('users/images/7.jpg')}}" alt=" " class="img-responsive" />
								<div class="w3l_fresh_vegetables_grid1_rel_pos">
									<div class="more m1">
										<a href="products.html" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</a>
									</div>
								</div>
							</div>
						</div>
						<div class="w3l_fresh_vegetables_grid1_bottom">
							<img src="{{asset('users/images/10.jpg')}}" alt=" " class="img-responsive" />
							<div class="w3l_fresh_vegetables_grid1_bottom_pos">
								<h5>Special Offers</h5>
							</div>
						</div>
					</div>
					<div class="col-md-4 w3l_fresh_vegetables_grid">
						<div class="w3l_fresh_vegetables_grid1">
							<img src="{{asset('users/images/9.jpg')}}" alt=" " class="img-responsive" />
						</div>
						<div class="w3l_fresh_vegetables_grid1_bottom">
							<img src="{{asset('users/images/11.jpg')}}" alt=" " class="img-responsive" />
						</div>
					</div>
					<div class="clearfix"> </div>
					<div class="agileinfo_move_text">
						<div class="agileinfo_marquee">
							<h4>get <span class="blink_me">25% off</span> on first order and also get gift voucher</h4>
						</div>
						<div class="agileinfo_breaking_news">
							<span> </span>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<input type="hidden" value="{{request()->checkout}}" class="checkout-value">
<!-- //fresh-vegetables -->
@endsection


