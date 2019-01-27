@extends('admin.layouts.master')

@section('title', 'Create Order')

@section('page', 'Orders')

@section('content')



<div class="container-fluid">
    <div class="row">
       
        <div class="col-10">
            <div class="card-box">
                <h1 class="m-t-0 header-title">Create Order Form </h1>
                <div class="row">
                    <div class="col-12">
                        <div class="p-20">
                            <form action="{{ route('admin.orders.store') }}" method="POST" class="form-horizontal" role="form" enctype="multipart/form-data">
                                @csrf
                               <div class="form-group row">
                                    <label class="col-2 col-form-label" for="user_id">User ID<span class="text-danger">*</span></label>
                                    <div class="col-10">
                                        <input name="user_id" id="user_id" type="text" class="form-control" placeholder="Nhập mã số khách hàng" value="{{old('user_id')}}">
                                        @if($errors->has('user_id'))
                                            <div class="alert alert-danger">
                                                <span>{{ $errors->first('user_id') }}</span>
                                            </div>
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-2 col-form-label" for="total">Tổng tiền thanh toán <span class="text-danger">*</span></label>
                                    <div class="col-10">
                                        <input name="total" type="number" id="total" class="form-control" placeholder="Nhập tổng tiền" value="{{old('total')}}">
                                        @if($errors->has('total'))
                                            <div class="alert alert-danger">
                                                <span class="strong">{{ $errors->first('total') }}</span>
                                            </div>
                                        @endif
                                    </div>
                                </div>
                                

                                <div class="form-group row">
                                    <label class="col-2 col-form-label" >Họ và Tên người nhận<span class="text-danger">*</span></label>
                                    <div class="col-10">
                                        <input name="fullname" type="text" id="fullname"  class="form-control" placeholder="Họ và tên" value="{{old('fullname')}}">
                                        @if($errors->has('fullname'))
                                            <div class="alert alert-danger">
                                                <span class="strong">{{ $errors->first('fullname') }}</span>
                                            </div>
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Địa chỉ người nhận<span class="text-danger">*</span></label>
                                    <div class="col-10">
                                        <input name="address" type="text" id="address"  class="form-control" placeholder="Địa Chỉ" value="{{old('address')}}">
                                        @if($errors->has('address'))
                                            <div class="alert alert-danger">
                                                <span class="strong">{{ $errors->first('address') }}</span>
                                            </div>
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Số Điện Thoại người nhận<span class="text-danger">*</span></label>
                                    <div class="col-10">
                                        <input name="phone" type="text" id="phone"  class="form-control" placeholder="số điện thoại" value="{{old('phone')}}">
                                        @if($errors->has('phone'))
                                            <div class="alert alert-danger">
                                                <span class="strong">{{ $errors->first('phone') }}</span>
                                            </div>
                                        @endif
                                    </div>
                                </div>
                                
                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Hình Thức Thanh Toán<span class="text-danger">*</span></label>
                                    <div class="col-10">
                                        <select name="type_payment_id" class="form-control">
											@foreach($type_payments as $type_payment)
											<option value="{{ $type_payment->id }}" >{{ $type_payment->id }}. {{ $type_payment->name }}</option>
											@endforeach
                                        </select>
                                        @if($errors->has('type_payment_id'))
                                            <div class="alert alert-danger">
                                                <span class="strong">{{ $errors->first('type_payment_id') }}</span>
                                            </div>
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Trạng Thái Đơn Hàng<span class="text-danger">*</span></label>
                                    <div class="col-10">
                                        <select name="status_id" class="form-control">
                                            @foreach($statuses as $status)
                                            <option value="{{ $status->id }}" >{{ $status->id }}. {{ $status->name }}</option>
                                            @endforeach
                                        </select>
                                        @if($errors->has('status_id'))
                                            <div class="alert alert-danger">
                                                <span class="strong">{{ $errors->first('status_id') }}</span>
                                            </div>
                                        @endif
                                    </div>
                                </div>
                                                             
                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Ghi Chú<span class="text-danger">*</span></label>
                                    <div class="col-10">
                                        <textarea name="note"  class="form-control" rows="5" placeholder="Nhập ghi chú">{{old('note')}}</textarea>
                                        @if($errors->has('note'))
                                            <div class="alert alert-danger">
                                                <span class="strong">{{ $errors->first('note') }}</span>
                                            </div>
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group text-right m-b-0">                                
                                    <button class="btn btn-custom waves-effect waves-light" type="submit" class="btn btn-primary">Tạo Đơn Hàng</button>

                                    <button type="button" class="btn btn-light waves-effect m-l-5" onclick="window.location='{{ URL::previous() }}'">Cancel</button>
                                </div>

                            </form>
                        </div>
                    </div>

                </div>
                <!-- end row -->

            </div> <!-- end card-box -->
        </div>
    </div>
</div>



@endsection