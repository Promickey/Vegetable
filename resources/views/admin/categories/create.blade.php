@extends('admin.layouts.master')

@section('title', 'List Categories')

@section('page', 'Categories')

@section('content')



<div class="container-fluid">
	<div class="row">
		<div class="col-lg-6">

            <div class="card-box">
                <h4 class="header-title m-t-0">Create New Category Form</h4>
                

                <form action="{{ Route('admin.categories.store') }}" method="POST" role="form">
                	@csrf
                    <div class="form-group">
                        <label for="name">Tên Danh mục<span class="text-danger">*</span></label>
                        <input value="{{old('name')}}" type="text" name="name" parsley-trigger="change" required
                               placeholder="Nhập tên danh mục" class="form-control" id="name">
                    </div>
                    @if($errors->has('name'))
						<div class="alert alert-danger">
							<span class="strong">{{ $errors->first('name') }}</span>
						</div>
					@endif
                    <div class="form-group">
                        <label for="emailAddress">Danh Mục Cha<span class="text-danger">*</span></label>
                        <select name="parent_id" id="input" class="form-control" required="required">
							<option value="">Chọn danh mục cha</option>
							<option value="">Danh mục gốc</option>
							@foreach($categories as $cate)
							@if($cate->parent_id == null)
								<option value="{{ $cate->id }}">{{ $cate->id }}. {{ $cate->name }}</option>
							@endif
							@endforeach
						</select>
                    </div>

                    <div class="form-group text-right m-b-0">
                        <button class="btn btn-custom waves-effect waves-light" type="submit">
                            Submit
                        </button>
                        <a href="{{url()->previous()}}" class="btn btn-light waves-effect m-l-5">
                            Cancel
                        </a>
                    </div>

                </form>
            </div> <!-- end card-box -->
        </div>
        <!-- end col -->
	</div>
</div>

@endsection
