@extends('layouts.app')

@section('content')
@include('layouts.nav')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Thêm danh mục truyện</div>

                <!-- hàm thông báo lỗi validation -->
                @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif


                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <form method="post" action="{{route('danhmuc.store')}}">
                        @csrf
  <div class="form-group">
    <label for="exampleInputEmail1" class="form-label">Tên danh mục </label>
    <input type="text" class="form-control" value="{{old('tendanhmuc')}}" name="tendanhmuc" id="slug" onkeyup="ChangeToSlug();" aria-describedby="emailHelp" placeholder="tên danh mục ....">
  </div>

  <div class="form-group">
    <label for="exampleInputEmail1" class="form-label">Slug danh mục </label>
    <input type="text" class="form-control" value="{{old('slug_danhmuc')}}" name="slug_danhmuc" id="convert_slug" aria-describedby="emailHelp" placeholder="slug danh mục ....">
  </div>

  <div class="form-group">
    <label for="exampleInputEmail1" class="form-label">Mô tả danh mục </label>
    <input type="text" class="form-control" value="{{old('mota')}}" name="mota" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="mô tả danh mục ....">
  </div>

 <div class="form-group">
 <label for="exampleInputEmail1">Kích Hoạt</label>
  <select name="kichhoat" class="form-select" aria-label="Default select example">
  <option value="0">Kích Hoạt</option>
  <option value="1">Không kích hoạt</option>
  </select>
 </div>
 
  <button type="submit" class="btn btn-primary" name="themdanhmuc">Thêm</button>
                 </form>


                </div>
            </div>
        </div>
    </div>
</div>
@endsection
