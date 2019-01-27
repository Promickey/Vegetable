@extends('admin.layouts.master')

@section('title', 'Edit Product')

@section('page', 'Products')

@section('content')



<div class="container-fluid">
    <div class="row">
    	
        <div class="col-4">
        	@foreach($images as $image)
			<div class="col-12">
				<img class="" src="{{ asset($image->path ? $image->path : 'http://via.placeholder.com/300x300') }}" alt="" style="height: 300px" class="img-responsive img-rounded">
				<hr>
			</div>
			@endforeach
        </div>
        <div class="col-8">
            <div class="card-box">
                <h1 class="m-t-0 header-title">Edit Product Form </h1>
                <div class="row">
                    <div class="col-12">
                        <div class="p-20">
                            <form action="{{ route('admin.products.update', $product->id) }}" method="POST" class="form-horizontal" role="form" enctype="multipart/form-data">
                                @csrf
                                @method('PUT')
                               <div class="form-group row">
                                    <label class="col-2 col-form-label" for="name">Tên Sản Phẩm<span class="text-danger">*</span></label>
                                    <div class="col-10">
                                        <input name="name" id="name" type="text" class="form-control" placeholder="Nhập tên sản phẩm" value="{{ $product->name }}">
                                        @if($errors->has('name'))
                                            <div class="alert alert-danger">
                                                <span>{{ $errors->first('name') }}</span>
                                            </div>
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-2 col-form-label" for="price">Giá <span class="text-danger">*</span></label>
                                    <div class="col-10">
                                        <input name="price" type="number" id="price" class="form-control" placeholder="Nhập giá" value="{{ $product->price }}">
                                        @if($errors->has('price'))
                                            <div class="alert alert-danger">
                                                <span class="strong">{{ $errors->first('price') }}</span>
                                            </div>
                                        @endif
                                    </div>
                                </div>
                                

                                <div class="form-group row">
                                    <label class="col-2 col-form-label" >Số Lượng<span class="text-danger">*</span></label>
                                    <div class="col-10">
                                        <input name="quantity" type="number" id="quantity"  class="form-control" placeholder="Số Lượng" value="{{ $product->quantity }}">
                                        @if($errors->has('quantity'))
                                            <div class="alert alert-danger">
                                                <span class="strong">{{ $errors->first('quantity') }}</span>
                                            </div>
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Mô Tả<span class="text-danger">*</span></label>
                                    <div class="col-10">
                                        <textarea name="description"  class="form-control" rows="10" placeholder="Nhập mô tả sản phẩm">{{ $product->description }}</textarea>
                                        @if($errors->has('description'))
                                            <div class="alert alert-danger">
                                                <span class="strong">{{ $errors->first('description') }}</span>
                                            </div>
                                        @endif
                                    </div>
                                </div>
                                
                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Danh Mục<span class="text-danger">*</span></label>
                                    <div class="col-10">
                                        <select name="category_id" class="form-control" required>
                                            <option value='' selected>Chọn danh mục</option>
											@foreach($categories as $category)
											@if($category->id == $product->category_id)
											<option value="{{ $category->id }}" selected>{{ $category->id }}. {{ $category->name }}</option>
											@else
											<option value="{{ $category->id }}">{{ $category->id }}. {{ $category->name }}</option>
											@endif
											@endforeach
                                        </select>
                                    </div>
                                </div>
                                                             
                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Hình Ảnh</label>
                                    <div class="col-10">
                                        <input name="image" type="file" class="form-control">
                                        @if($errors->has('image'))
                                            <div class="alert alert-danger">
                                                <span class="strong">{{ $errors->first('image') }}</span>
                                            </div>
                                        @endif
                                    </div>
                                </div>

                                
                                <div class="form-group text-right m-b-0">                                
                                    <button class="btn btn-custom waves-effect waves-light" type="submit" class="btn btn-primary">Cập Nhật Sản Phẩm</button>

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