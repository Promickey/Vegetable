@extends('users/layouts/master')

@section('page', 'Orders/Checkout')

@section('banner_right')

<div class="w3l_banner_nav_right_banner3_btm">
	<div class="container">
		<div class="row" >
			<div class="col-sm-7">
				<table class="table table-hover main-checkout">
				<thead>
						<tr>
							<th>#</th>
							<th>Tên</th>
							<th>Image</th>
							<th>Price</th>
							<th>Qty</th>
							<th>Total</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</tbody>
				</table>	
			</div>
			<div class="col-sm-5 checkout-info">
				<form action="{{route('checkout.store')}}" method="POST" role="form">
					<legend><strong>Thông tin giao hàng</strong></legend>
					@csrf
					@if(auth()->check())
					<div class="form-group">
							<label for="">Fullname<span class="text-danger">*</span></label>
							<input type="text" class="form-control" name="fullname" value="{{auth()->user()->first_name}}"><br>
							@if($errors->has('fullname'))
                                <div class="alert alert-danger">
                                    <span>{{ $errors->first('fullname') }}</span>
                                </div>
                            @endif

							<label for="">Address<span class="text-danger">*</span></label>
							<input type="text" class="form-control" name="address" value="{{auth()->user()->address}}"><br>
							@if($errors->has('address'))
                                <div class="alert alert-danger">
                                    <span>{{ $errors->first('address') }}</span>
                                </div>
                            @endif

							<label for="">Phone<span class="text-danger">*</span></label>
							<input type="text" class="form-control" name="phone" value="{{auth()->user()->phone}}"><br>
							@if($errors->has('phone'))
                                <div class="alert alert-danger">
                                    <span>{{ $errors->first('phone') }}</span>
                                </div>
                            @endif

							<label for="">Email<span class="text-danger">*</span></label>
							<input type="text" class="form-control" name="email" value="{{auth()->user()->email}}"><br>
							@if($errors->has('email'))
                                <div class="alert alert-danger">
                                    <span>{{ $errors->first('email') }}</span>
                                </div>
                            @endif

							<label for="">Note</label>
							<textarea class="form-control" name="note" id="" cols="30" rows="5"></textarea>
							<label for="">Phương thức thanh toán<span class="text-danger">*</span></label>
							<select name="type_payment_id" id="input" class="form-control" required="required">
								<option value="1">COD</option>
								<option value="2">ATM</option>
								<option value="3">Bank</option>
								<option value="4">Pay</option>
							</select>
					</div>
					@else
					<div class="form-group">
							<label for="">Fullname<span class="text-danger">*</span></label>
							<input type="text" class="form-control" name="fullname" value=""><br>
							@if($errors->has('fullname'))
                                <div class="alert alert-danger">
                                    <span>{{ $errors->first('fullname') }}</span>
                                </div>
                            @endif

							<label for="">Address<span class="text-danger">*</span></label>
							<input type="text" class="form-control" name="address" value=""><br>
							@if($errors->has('address'))
                                <div class="alert alert-danger">
                                    <span>{{ $errors->first('address') }}</span>
                                </div>
                            @endif

							<label for="">Phone<span class="text-danger">*</span></label>
							<input type="text" class="form-control" name="phone" value=""><br>
							@if($errors->has('phone'))
                                <div class="alert alert-danger">
                                    <span>{{ $errors->first('phone') }}</span>
                                </div>
                            @endif

							<label for="">Email<span class="text-danger">*</span></label>
							<input type="text" class="form-control" name="email" value=""><br>
							@if($errors->has('email'))
                                <div class="alert alert-danger">
                                    <span>{{ $errors->first('email') }}</span>
                                </div>
                            @endif
                            
							<label for="">Note</label>
							<textarea class="form-control" name="note" id="" cols="30" rows="5"></textarea>
							<label for="">Phương thức thanh toán<span class="text-danger">*</span></label>
							<select name="type_payment_id" id="input" class="form-control" required="required">
								<option value="">Chọn Phương Thức Thanh Toán</option>
								<option value="1">COD</option>
								<option value="2">ATM</option>
								<option value="3">Bank</option>
								<option value="4">Pay</option>
							</select>
					</div>
					@endif
					<input type="hidden" class="form-control carts" id="" name="carts" value="">
					<button type="submit" class="btn btn-primary">Đặt hàng</button>
				</form>
			</div>	
		</div>
	</div>
</div>
@endsection