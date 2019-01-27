@extends('admin.layouts.master')

@section('title', 'Dashboard')

@section('content')

@section('page', 'Dashboard')

<div class="container-fluid">

    <div class="row">
        <div class="col-12">
            <div class="card-box">
                <h4 class="header-title">Manage </h4>

                    <div class="text-center mt-4 mb-4">
                        <div class="row">
                            <div class="col-xs-6 col-sm-3">
                                <a href="{{route('admin.orders.index')}}">
                                    <div class="card-box widget-flat border-custom bg-custom text-white">
                                        <i class="fi-layers "></i>
                                        <h1 class="m-b-10">{{$total_new_orders}}</h3>
                                        <p class="text-uppercase m-b-5 font-15 font-600">Đơn hàng mới</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xs-6 col-sm-3">
                                <a href="{{route('admin.comments.index')}}">
                                    <div class="card-box bg-primary widget-flat border-primary text-white">
                                        <i class="fi-speech-bubble"></i>
                                        <h1 class="m-b-10">{{$total_new_comments}}</h3>
                                        <p class="text-uppercase m-b-5 font-15 font-600">Bình luận mới</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xs-6 col-sm-3">
                                <a href="{{route('admin.users.index')}}">
                                    <div class="card-box widget-flat border-success bg-success text-white">
                                        <i class="fi-head"></i>
                                        <h1 class="m-b-10">{{$total_users}}</h3>
                                        <p class="text-uppercase m-b-5 font-15 font-600">Khách Hàng</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xs-6 col-sm-3">
                                <a href="{{route('admin.products.index')}}">
                                    <div class="card-box bg-danger widget-flat border-danger text-white">
                                        <i class="fi-box"></i>
                                        <h1 class="m-b-10">{{$total_products}}</h3>
                                        <p class="text-uppercase m-b-5 font-15 font-600">Sản phẩm</p>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
            

                <!-- end row -->
            </div>
        </div>
    </div>
    <!-- end row -->




</div> <!-- container -->
@endsection