@extends('admin.layouts.master')

@section('title', 'List Categories')

@section('content')

<ol class="breadcrumb bc-colored bg-theme" id="breadcrumb">
    <li class="breadcrumb-item ">
        <a href="">Home</a>
    </li>
    <li class="breadcrumb-item">
        <a href="#">Admin</a>
    </li>
    <li class="breadcrumb-item active">Danh Mục Sản Phẩm</li>
</ol>






<div class="container-fluid">
	<div class="row">
		<div class="col-lg-6">

            <div class="card-box">
                <h4 class="header-title m-t-0">Edit Category Form: <strong>Danh mục {{ $category->name }}</strong> </h4>
                
                <form action="{{ route('admin.categories.update', $category->id) }}" method="POST" role="form">
                	@csrf
                	@method('PUT')
                    <div class="form-group">
                        <label for="name">Tên Danh mục<span class="text-danger">*</span></label>
                        <input value="{{ $category->name }}" type="text" name="name" parsley-trigger="change" required
                               placeholder="Nhập tên danh mục" class="form-control" id="name">
                    </div>
                    @if($errors->has('name'))
						<div class="alert alert-danger">
							<span class="strong">{{ $errors->first('name') }}</span>
						</div>
					@endif

					@if($category->parent_id == null)
					<div class="form-group">			
						<select disabled name="parent_id" id="input" class="form-control" required="required">
							<option>Danh mục gốc</option>
						</select>
					</div>

					@else
                    <div class="form-group">
                        <label for="emailAddress">Danh Mục Cha<span class="text-danger">*</span></label>
                        <select name="parent_id" id="input" class="form-control" required="required">
							<option>Chọn danh mục cha</option>
							@foreach($categories as $cate)
							@if($cate->parent_id == null)
								@if($cate->id == $category->parent_id)
								<option value="{{ $cate->id }}" selected="selected">{{ $cate->id }}. {{ $cate->name }}</option>
								@else
								<option value="{{ $cate->id }}">{{ $cate->id }}. {{ $cate->name }}</option>
								@endif
							@endif
							@endforeach
						</select>
                    </div>
                    @endif

                    <div class="form-group text-right m-b-0">
                        <button class="btn btn-custom waves-effect waves-light" type="submit">
                            Update
                        </button>
                        
                        <button type="button" class="btn btn-light waves-effect m-l-5" onclick="window.location='{{ URL::previous() }}'">Cancel</button>
                    </div>

                </form>
            </div> <!-- end card-box -->
        </div>
        <!-- end col -->
	</div>
</div>

@endsection
