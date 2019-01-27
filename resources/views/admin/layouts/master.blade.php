<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Admin| @yield('title')</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <!-- App favicon -->
        <link rel="shortcut icon" href="{{ asset('admin/assets/images/favicon.ico') }}">     

        @yield('link_top')  
  
        <!-- App css -->
        <link href="{{ asset('admin/assets/css/bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
        <link href="{{ asset('admin/assets/css/icons.css') }}" rel="stylesheet" type="text/css" />
        <link href="{{ asset('admin/assets/css/metismenu.min.css') }}" rel="stylesheet" type="text/css" />
        <link href="{{ asset('admin/assets/css/style_cl.css') }}" rel="stylesheet" type="text/css" />
        <link href="{{ asset('admin/assets/css/mycss.css') }}" rel="stylesheet" type="text/css" />

        <script src="{{ asset('admin/assets/js/modernizr.min.js') }}"></script>

    </head>


    <body>

        <!-- Begin page -->
        <div id="wrapper">

            <!-- ========== Left Sidebar Start ========== -->
            <div class="left side-menu">

                <div class="slimscroll-menu" id="remove-scroll">

                    <!-- User box -->
                    <div class="user-box">
                        <div class="user-img">
                            <img src="{{asset(Auth::user()->avatar)}}" alt="user-img" title="Mat Helme" class="rounded-circle img-fluid">
                        </div>
                        <h5 class="font-weight-bold text-capitalize"><a href="#">{{ Auth::user()->username }}</a> </h5>
                        <p class="text-muted">Admin Head</p>
                    </div>

                    <!--- Sidemenu -->
                    <div id="sidebar-menu">

                        <ul class="metismenu" id="side-menu">

                            <!--<li class="menu-title">Navigation</li>-->

                            <li>
                                <a href="{{ route('admin.dashboard') }}">
                                    <i class="fi-air-play"></i><span> Dashboard </span>
                                </a>
                            </li>

                            <li>
                                <a href="javascript: void(0);"><i class="fi-layers"></i> <span> Quản Lý Danh Mục </span> <span class="menu-arrow"></span></a>
                                <ul class="nav-second-level" aria-expanded="false">
                                    <li><a href="{{ route('admin.categories.index') }}">Danh Sách Danh Mục</a></li>
                                    <li><a href="{{ route('admin.categories.create') }}">Thêm Danh Mục</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="javascript: void(0);"><i class="dripicons-rocket"></i><span> Quản Lý Sản Phẩm </span> <span class="menu-arrow"></span></a>
                                <ul class="nav-second-level" aria-expanded="false">
                                    <li><a href="{{ route('admin.products.index') }}">Danh Sách Sản Phẩm</a></li>
                                    <li><a href="{{ route('admin.products.create') }}">Thêm Sản Phẩm</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="javascript: void(0);"><i class="fa fa-address-book"></i><span> Quản Lý Người Dùng </span> <span class="menu-arrow"></span></a>
                                <ul class="nav-second-level" aria-expanded="false">
                                    <li><a href="{{ route('admin.users.index') }}">Danh Sách Người Dùng</a></li>
                                    <li><a href="{{ route('admin.users.create') }}">Thêm Người Dùng</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="javascript: void(0);"><i class="fa fa-shopping-basket"></i><span> Quản Lý Đơn Hàng </span> <span class="menu-arrow"></span></a>
                                <ul class="nav-second-level" aria-expanded="false">
                                    <li><a href="{{ route('admin.orders.index') }}">Danh Sách Đơn Hàng</a></li>
                                    <li><a href="{{ route('admin.orders.create') }}">Thêm Đơn Hàng</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="{{ route('admin.comments.index') }}"><i class="fa fa-comments"></i><span> Quản Lý Comment </span> <span class=""></span></a>
                            </li>


                        </ul>

                    </div>
                    <!-- Sidebar -->

                    <div class="clearfix"></div>

                </div>
                <!-- Sidebar -left -->

            </div>
            <!-- Left Sidebar End -->



            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->

            <div class="content-page">

                <!-- Top Bar Start -->
                <div class="topbar">

                    <nav class="navbar-custom">

                        <!-- LOGO -->
                        <div class="logo-box">
                            <a href="index.html" class="logo">
                                <img src="{{ asset('admin/assets/images/logo_sm.png') }}" alt="" height="60">
                            </a>
                        </div>

                        <ul class="list-unstyled topbar-right-menu float-right mb-0">

                            <!-- <li class="hide-phone app-search">
                                <form>
                                    <input type="text" placeholder="Search..." class="form-control">
                                    <button type="submit"><i class="fa fa-search"></i></button>
                                </form>
                            </li> -->

                           

                            

                            <li class="dropdown notification-list">
                                <a class="nav-link dropdown-toggle nav-user" data-toggle="dropdown" href="#" role="button"
                                   aria-haspopup="false" aria-expanded="false">
                                    <img src="{{asset(Auth::user()->avatar)}}" alt="user" class="rounded-circle"> <span class="ml-1 text-capitalize font-weight-bold">{{ Auth::user()->username }} <i class="mdi mdi-chevron-down"></i> </span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right dropdown-menu-animated profile-dropdown ">
                                    <!-- item-->
                                    <div class="dropdown-item noti-title">
                                        <h6 class="text-overflow m-0">Welcome !</h6>
                                    </div>

                                    <!-- item-->
                                    <a href="{{ route('admin.users.show', Auth::user()->id) }}" class="dropdown-item notify-item">
                                        <i class="fi-head"></i> <span>My Account</span>
                                    </a>

                                    <!-- item-->
                                    <form action="{{ route('logout') }}" method="POST" role="form">
                                        @csrf
                                    <button class="btn btn-link dropdown-item notify-item" type="submit"><a style="color: black;" href="javascript:void(0);" class=""><i class="fi-power"></i><span>Logout</span></a></button>
                                    </form>
                                    

                                </div>
                            </li>

                        </ul>

                        <ul class="list-inline menu-left mb-0">
                            <li class="float-left">
                                <button class="button-menu-mobile open-left">
                                    <i class="dripicons-menu"></i>
                                </button>
                            </li>
                            <li>
                                <div class="page-title-box">
                                    <h4 class="page-title">Vegetable </h4>
                                </div>
                            </li>

                        </ul>

                    </nav>

                </div>
                <!-- Top Bar End -->



                <!-- Start Page content -->
                <div class="content">
                    <ul class="list-inline menu-left mb-0">
                        <li class="float-left">
                            <button class="button-menu-mobile open-left disable-btn">
                                <i class="dripicons-menu"></i>
                            </button>
                        </li>
                        <li>
                            <div class="page-title-box">
                                <h4 class="page-title">@yield('page') </h4>
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item"><a href="#">Admin</a></li>
                                    <li class="breadcrumb-item active">@yield('page')</li>
                                </ol>
                            </div>
                        </li>

                    </ul>
                    <hr>
                    @yield('content')
                    

                </div> <!-- content -->

                <footer class="footer text-right">
                    2018 © Vegetable.com - Fresh Food
                </footer>

            </div>


            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->


        </div>
        <!-- END wrapper -->

        <!-- jQuery  -->
        <script src="{{ asset('admin/assets/js/jquery.min.js') }}"></script>
        <script src="{{ asset('admin/assets/js/popper.min.js') }}"></script>
        <script src="{{ asset('admin/assets/js/bootstrap.min.js') }}"></script>
        <script src="{{ asset('admin/assets/js/metisMenu.min.js') }}"></script>
        <script src="{{ asset('admin/assets/js/waves.js') }}"></script>
        <script src="{{ asset('admin/assets/js/jquery.slimscroll.js') }}"></script>

        
        @yield('link_bottom')  
        

        <!-- App js -->
        <script src="{{ asset('admin/assets/js/jquery.core.js') }}"></script>
        <script src="{{ asset('admin/assets/js/jquery.app.js') }}"></script>
        

        javascript by me
        <script src="{{ asset('admin/assets/js/myJavascript.js') }}"></script>
        
        @yield('codescript')

    </body>
</html>