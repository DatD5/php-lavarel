@extends('layouts.app')

@section('content')
@include('layouts.nav')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Cập nhật truyện</div>

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

                            <form method="POST" action="{{route('truyen.update',[$truyen->id])}}" enctype="multipart/form-data">
                            @method('PUT')
                            @csrf
            <div class="form-group">
            <label for="exampleInputEmail1" class="form-label">Tên truyện </label>
            <input type="text" class="form-control" value="{{$truyen->tentruyen}}" name="tentruyen" id="slug" onkeyup="ChangeToSlug();" aria-describedby="emailHelp" placeholder="tên truyen....">
            </div>

            <div class="form-group">
            <label for="exampleInputEmail1" class="form-label">Tác giả </label>
            <input type="text" class="form-control" value="{{$truyen->tacgia}}" name="tacgia"  aria-describedby="emailHelp" placeholder="tên tac gia....">
            </div>

            <div class="form-group">
            <label for="exampleInputEmail1" class="form-label">Slug truyen </label>
            <input type="text" class="form-control" value="{{$truyen->slug_truyen}}" name="slug_truyen" id="convert_slug" aria-describedby="emailHelp" placeholder="slug truyen....">
            </div>

            <div class="form-group">
            <label for="exampleInputEmail1" class="form-label">Tóm tắt truyen </label>
            <textarea class="form-control" rows="5" style="resize:none" name="tomtat" id="">{{$truyen->tomtat}}</textarea>
            </div>

            <div class="form-group">
            <label for="exampleInputEmail1">Danh mục truyện</label>
            <select name="danhmuc" class="form-select" aria-label="Default select example">
                @foreach ($danhmuc as $key=>$muc )
                <option value="{{$muc->id}}">{{$muc->tendanhmuc}}</option>
                @endforeach
           
            </select>
            </div>

            <div class="form-group">
            <label for="exampleInputEmail1">Thể loại truyện</label>
            <select name="theloai" class="form-select"   aria-label="Default select example">
                @foreach ($theloai as $key=>$the )
                <option value="{{$the->id}}">{{$the->tentheloai}}</option>
                @endforeach
           
            </select>
            </div>

            <div class="form-group">
            <label for="exampleInputEmail1" class="form-label">Hình ảnh truyện </label> <br>

            <input type="file" class="form-control-file"  name="hinhanh"  >
            <img src="{{asset('public/uploads/truyen/'.$truyen->hinhanh)}}" height="200" width="180" alt="">
            </div>

            <div class="form-group">
            <label for="exampleInputEmail1">Kích Hoạt</label>
            <select name="kichhoat" class="form-select" >
                        @if ($truyen->kichhoat==0)
                <option selected value="0">Kích Hoạt</option>
                <option value="1">Không kích hoạt</option>
                @else
                <option  value="0">Kích Hoạt</option>
                <option selected value="1">Không kích hoạt</option>
                @endif
            </select>
            </div>

            <button type="submit" class="btn btn-primary" name="capnhat">Cập nhật</button>
                            </form>


                </div>
            </div>
        </div>
    </div>
</div>
@endsection
