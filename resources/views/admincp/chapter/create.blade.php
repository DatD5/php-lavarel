@extends('layouts.app')

@section('content')
@include('layouts.nav')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Thêm chapter truyện</div>

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

                    <form method="post" action="{{route('Chapter.store')}}">
                        @csrf
  <div class="form-group">
    <label for="exampleInputEmail1" class="form-label">Tên chapter </label>
    <input type="text" class="form-control" value="{{old('tieude')}}" name="tieude" id="slug" onkeyup="ChangeToSlug();" aria-describedby="emailHelp" placeholder="tên chapter ....">
  </div>

  <div class="form-group">
    <label for="exampleInputEmail1" class="form-label">Slug chapter </label>
    <input type="text" class="form-control" value="{{old('slug_chapter')}}" name="slug_chapter" id="convert_slug" aria-describedby="emailHelp" placeholder="slug chapter ....">
  </div>

  <div class="form-group">
    <label for="exampleInputEmail1" class="form-label">Tóm tắt chapter </label>
    <input type="text" class="form-control" value="{{old('tomtat')}}" name="tomtat" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="">
  </div>

  <div class="form-group">
    <label for="exampleInputEmail1" class="form-label"> Nội dung </label>
    <textarea name="noidung" id="noidung_chapter" class="form-control" rows="5" style="resize:none"></textarea>
  </div>


  <div class="form-group">
    <label for="exampleInputEmail1" class="form-label">Thuộc truyện </label>
    <select name="truyen_id" class="form-select" >
        @foreach ($truyen as $key =>$value)
        <option value="{{$value->id}}">{{$value->tentruyen}}</option>
        @endforeach
    
    </select>
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
