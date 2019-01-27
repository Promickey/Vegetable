<!-- header -->
	<div class="agileits_header">
		<div class="w3l_offers">
			<a href="products.html">Today's special Offers !</a>
		</div>
		<div class="w3l_search">
			<form action="{{ route('search') }}" method="get">
				<input type="text" name="search" value="Search a product..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search a product...';}" required="">
				<input type="submit" value=" ">
			</form>
		</div>
		<div class="product_list_header">  

<!-- 	                <a href="" class="button view-your-cart">View your cart</a> -->
                <input type="submit" name="submit" value="View your cart" class="button cartview" data-login="{{Auth::check()}}" />
		</div>
		<!-- View mini cart  -->
		<div class="view-cart">
			
			<!-- <table class="table table-hover">
				<thead>
					<tr>
						<th>#</th>
						<th>Name</th>
						<th>Image</th>
						<th>Price</th>
						<th>Quantity</th>
						<th>Total</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>Ngò</td>
						<td></td>
						<td>10000</td>
						<td>2</td>
						<td>20000</td>
					</tr>
				</tbody>
			</table> -->

			<ul class="minicart">
				<li class="cart-item">
					<span class="cart-detail-name">name</span>
					<span class="cart-detail-quantity">quantity</span>
					<span class="btn btn-danger cart-detail-remove"><i class="fa fa-remove"></i></span>
					<span class="cart-detail-price">price</span>
				</li>
			</ul>
			<div class="cart-footer">
				<div class="cart-subtotal">Subtotal: <span class="subtotal">1000</span></div>
				<a href="{{route('checkout')}}"><button class="cart-checkout" type="submit">Check Out</button></a>
			</div>
		</div>
		<!-- end view minicart -->
		<div class="w3l_header_right">
			<ul>
				<li class="dropdown profile_details_drop">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user" aria-hidden="true"></i><span class="caret"></span></a>
					<div class="mega-dropdown-menu">
						<div class="w3ls_vegetables">
							<ul class="dropdown-menu drp-mnu">
								@if (Auth::check())
								<li>
									<div class="dropdown-item noti-title">
	                                    <h5 class="text-overflow m-0 text-capitalize">Welcome! {{ Auth::user()->first_name }}</h5>
	                                </div>
                                </li>

                                <!-- item-->
                                </li><li><a href="{{route('users.profile', Auth::user()->id)}}"><i class="fa fa-user-o"></i>My Account</a></li></li>

								<li>
									<a  href="{{ route('logout') }}"
	                                   onclick="event.preventDefault();
	                                             document.getElementById('logout-form').submit();"><i class="fi-power"></i>
	                                    Logout
	                                </a>
	                            
                               		<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
	                                    @csrf
	                                </form>
	                            </li>
								
								@else   <!-- có thể dùng if(Auth::guest) -->
								<li><a href="{{route('login')}}">Login</a></li> 
								<li><a href="{{route('register')}}">Sign Up</a></li>

								@endif
							</ul>
						</div>                  
					</div>	
				</li>
			</ul>
		</div>
		<div class="w3l_header_right1">
			<h2><a href="mail.html">Contact Us</a></h2>
		</div>
		<div class="clearfix"> </div>
	</div>
<!-- script-for sticky-nav -->
	<script>
	$(document).ready(function() {
		 var navoffeset=$(".agileits_header").offset().top;
		 $(window).scroll(function(){
			var scrollpos=$(window).scrollTop(); 
			if(scrollpos >=navoffeset){
				$(".agileits_header").addClass("fixed");
			}else{
				$(".agileits_header").removeClass("fixed");
			}
		 });
		 
	});
	</script>
<!-- //script-for sticky-nav -->
	<div class="logo_products">
		<div class="container">
			<div class="w3ls_logo_products_left">
				<h1><a href="{{ route('home') }}"><img style="width: 200px" src="{{ asset('users/images/vegetable_logo.png') }}" alt=""></a></h1>
			</div>
			<div class="w3ls_logo_products_left1">
				<ul class="special_items">
					<li><a href="#">Events</a><i>/</i></li>
					<li><a href="#">About Us</a><i>/</i></li>
					<li><a href="#">Best Deals</a><i>/</i></li>
					<li><a href="#">Services</a></li>
				</ul>
			</div>
			<div class="w3ls_logo_products_left1">
				<ul class="phone_email">
					<li><i class="fa fa-phone" aria-hidden="true"></i>(+0123) 234 567</li>
					<li><i class="fa fa-envelope-o" aria-hidden="true"></i><a href="mailto:vegetables@grocery.com">vegetables@grocery.com</a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<input type="hidden" class="cart-session" value="{{ session()->get('cart') }}">
<!-- end header -->