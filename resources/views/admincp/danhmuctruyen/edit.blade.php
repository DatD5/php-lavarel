@extends('layouts.app')

@section('content')
@include('layouts.nav')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Cập nhật danh mục truyện</div>

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

                    <form method="post" action="{{route('danhmuc.update',[$danhmuc->id])}}">
                        @method('PUT')
                        @csrf
  <div class="form-group">
    <label for="exampleInputEmail1" class="form-label">Tên danh mục </label>
    <input type="text" class="form-control" value="{{$danhmuc->tendanhmuc}}" name="tendanhmuc" id="slug" onkeyup="ChangeToSlug();" aria-describedby="emailHelp" placeholder="tên dannh mục ....">
  </div>

  <div class="form-group">
    <label for="exampleInputEmail1" class="form-label">Slug danh mục </label>
    <input type="text" class="form-control" value="{{$danhmuc->slug_danhmuc}}" name="slug_danhmuc" id="convert_slug" aria-describedby="emailHelp" placeholder="slug danh mục ....">
  </div>

  <div class="form-group">
    <label for="exampleInputEmail1" class="form-label">Mô tả danh mục </label>
    <input type="text" class="form-control"  value="{{$danhmuc->mota}}" name="mota" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="mô tả danh mục ....">
  </div>

 <div class="form-group">
 <label for="exampleInputEmail1">Kích Hoạt</label>
  <select name="kichhoat" class="form-select" >
    @if ($danhmuc->kichhoat==0)
    <option selected value="0">Kích Hoạt</option>
    <option value="1">Không kích hoạt</option>
    @else
    <option  value="0">Kích Hoạt</option>
    <option selected value="1">Không kích hoạt</option>
    @endif
 
  </select>
 </div>
 
  <button type="submit" class="btn btn-primary" name="capnhats">Cập nhật</button>
                 </form>


                </div>
            </div>
        </div>
    </div>
</div>
@endsection
