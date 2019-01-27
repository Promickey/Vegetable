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
<div class="container">
	<div class="row">
		<div class="col-sm-6 push-sm-2">
			<table class="table table-inverse">
				<thead>
					<tr>
						<th>ID</th>
						<th>Tên Danh Mục</th>
						<th>Action</th>
					</tr>
				</thead>

				<tbody>
					<tr>
						<td>{{ $category->id }}</td>
						<td>{{ $category->name }}</td>
						<td><a href="{{ route('admin.categories.edit', $category->id) }}">Edit</a></td>
					</tr>
				</tbody>

			</table>
			
		</div>
	</div>
</div>
@endsection
