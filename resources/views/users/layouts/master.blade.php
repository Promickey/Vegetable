<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Vegetable | Nông sản sạch</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Grocery Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
		

<!-- //for-mobile-apps -->

<link href="{{asset('users/css/bootstrap4.css')}}" rel="stylesheet" type="text/css" media="all" />
<link href="{{asset('users/css/bootstrap.css')}}" rel="stylesheet" type="text/css" media="all" />
<link href="{{asset('users/css/style.css')}}" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome icons -->
<link href="{{asset('users/css/font-icons.css')}}" rel="stylesheet" type="text/css" media="all" /> 
<!-- //font-awesome icons -->
<link href="{{asset('users/css/mycss.css')}}" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="{{asset('users/js/jquery-1.11.1.min.js')}}"></script>
<!-- //js -->



<link href="{{asset('users/css/fonts-google.css')}}" rel='stylesheet' type='text/css'>
<link href="{{asset('users/css/font-gg.css')}}" rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="{{asset('users/js/move-top.js')}}"></script>
<script type="text/javascript" src="{{asset('users/js/easing.js')}}"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
</head>
	
<body>

<!-- header -->
@include('users.layouts.header')
<!-- //header -->
<!-- products-breadcrumb -->
<div class="products-breadcrumb">
	<div class="container">
		<ul>
			<li><i class="fa fa-home" aria-hidden="true"></i><a href="{{route('home')}}">Home</a><span>|</span></li>
			<li><span class="text-capitalize font-weight-bold">@yield('page')</span></li>
		</ul>
	</div>
</div>
<!-- //products-breadcrumb -->
<!-- banner -->
	<div class="banner">
		<div class="w3l_banner_nav_left">
			<nav class="navbar nav_bottom">
			 <!-- Brand and toggle get grouped for better mobile display -->
			  <div class="navbar-header nav_2">
				  <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
			   </div> 
			   <!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse " id="bs-megadropdown-tabs">
					<ul class="nav navbar-nav nav_1">
						<li><a href="{{ route('products.index') }}">Products</a></li>
					<!--foreach  nav- category -->
						@foreach($categories as $category)
						@if($category->parent_id == null)
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">{{ $category->name }}<span class="caret"></span></a>
							<div class="dropdown-menu mega-dropdown-menu w3ls_vegetables_menu">
								<div class="w3ls_vegetables">
									<ul>
										@foreach($category->children as $child)
										<li><a href="{{ route('categories.list-products', $child->id) }}">{{$child->name}}</a></li>
										@endforeach
									</ul>
								</div>                  
							</div>	
						</li>
						@endif
						@endforeach
					</ul>
				 </div><!-- /.navbar-collapse -->
			</nav>
		 
		</div>

		<div class="w3l_banner_nav_right">
			@yield('banner_right')
			
			
		</div>
		<div class="clearfix"></div>
	</div>
	
@yield('hot_product')
@yield('product1')
@yield('product2')
	
@yield('top_product')
<!-- newsletter -->
	<div class="newsletter">
		<div class="container">
			<div class="w3agile_newsletter_left">
				<h3>sign up for our newsletter</h3>
			</div>
			<div class="w3agile_newsletter_right">
				<form action="#" method="post">
					<input type="email" name="Email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
					<input type="submit" value="subscribe now">
				</form>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //newsletter -->
<!-- footer -->
@include('users.layouts.footer')
<!-- //footer -->
<!-- Bootstrap Core JavaScript -->

<script src="{{asset('users/js/bootstrap.min.js')}}"></script>
<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
</script>
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->

<script src="{{ asset('users/js/cart.js')}}"></script>


<!-- <script src="{{ asset('users/js/minicart.js')}}"></script>
<script>
	paypal.minicart.render();

	paypal.minicart.cart.on('checkout', function (evt) {
		var items = this.items(),
			len = items.length,
			total = 0,
			i;

		// Count the number of each item in the cart
		for (i = 0; i < len; i++) {
			total += items[i].get('quantity');
		}

		if (total < 3) {
			alert('The minimum order quantity is 3. Please add more to your shopping cart before checking out');
			evt.preventDefault();
		}
	});

</script> -->


</body>
</html>
