@extends('layouts.app')

@section('content')
@include('layouts.nav')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">Liệt kê thể loại truyện </div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <table class="table caption-top">

  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Tên thể loại</th>
      <th scope="col">Slug thể loại</th>
      <th scope="col">Mô tả</th>
      <th scope="col">Kích hoạt</th>
      <th scope="col">Quản lý</th>
    </tr>
  </thead>
  <tbody>
    @foreach ($theloai as $key => $theloai)
    <tr>
      <th scope="row">{{ $loop->iteration }}</th>     <!-- $loop->iteration :in ra stt theoid -->
      <td>{{$theloai->tentheloai}}</td>
      <td>{{$theloai->slug_theloai}}</td>
      <td>{{$theloai->mota}}</td>
      <td>
        @if ($theloai->kichhoat==0)
        <span class="text text-sucess">Kích Hoạt</span>
        @else
        <span class="text text-danger"> Ko Kích Hoạt</span>
        @endif
      </td>

      <td>
        <a href="{{route('theloai.edit',[ $theloai->id])}}" class="btn btn-primary">Edit</a>


        <form action="{{route('theloai.destroy',[ $theloai->id])}}" method="POST">
         @method('DELETE')
         @csrf
         <button class="btn- btn-danger"; onclick="return confirm('Bạn chắc muốn xóa thể loại truyện này ko ?') ">
            Delete</button>
        </form>
      </td>

    </tr>
    @endforeach
  </tbody>
</table>


                </div>
            </div>
        </div>
    </div>
</div>
@endsection
