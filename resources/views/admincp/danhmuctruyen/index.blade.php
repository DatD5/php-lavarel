@extends('layouts.app')

@section('content')
@include('layouts.nav')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">Liệt kê danh mục truyện </div>

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
      <th scope="col">Tên danh mục</th>
      <th scope="col">Slug danh mục</th>
      <th scope="col">Mô tả</th>
      <th scope="col">Kích hoạt</th>
      <th scope="col">Quản lý</th>
    </tr>
  </thead>
  <tbody>
    @foreach ($danhmuctruyen as $key => $danhmuc)
    <tr>
      <th scope="row">{{ $loop->iteration }}</th>     <!-- $loop->iteration :in ra stt theoid -->
      <td>{{$danhmuc->tendanhmuc}}</td>
      <td>{{$danhmuc->slug_danhmuc}}</td>
      <td>{{$danhmuc->mota}}</td>
      <td>
        @if ($danhmuc->kichhoat==0)
        <span class="text text-sucess">Kích Hoạt</span>
        @else
        <span class="text text-danger"> Ko Kích Hoạt</span>
        @endif
      </td>

      <td>
        <a href="{{route('danhmuc.edit',[ $danhmuc->id])}}" class="btn btn-primary">Edit</a>


        <form action="{{route('danhmuc.destroy',[ $danhmuc->id])}}" method="POST">
         @method('DELETE')
         @csrf
         <button class="btn- btn-danger"; onclick="return confirm('Bạn chắc muốn xóa danh mục truyện này ko ?') ">
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
