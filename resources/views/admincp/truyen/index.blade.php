@extends('layouts.app')

@section('content')
@include('layouts.nav')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">Liệt kê  truyện </div>

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
                    <th scope="col">Tên truyện</th>
                    <th scope="col">Tác giả</th>
                    <th scope="col">Hình ảnh</th>
                    <th scope="col">Slug truyện</th>
                    <th scope="col">Tóm tắt</th>
                    <th scope="col">Danh mục</th>
                    <th scope="col">Thể loại</th>
                    <th scope="col">Kích hoạt</th>
                    <th scope="col">Quản lý</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($list_truyen as $key => $truyen)
                    <tr>
                    <th scope="row">{{ $key }}</th>     
                    <td>{{$truyen->tentruyen}}</td>
                    <td>{{$truyen->tacgia}}</td>
                    <td><img src="{{asset('public/uploads/truyen/'.$truyen->hinhanh)}}" height="200" width="180" alt=""></td>
                    <td>{{$truyen->slug_truyen}}</td>
                    <td>{{$truyen->tomtat}}</td>
                    <td>{{$truyen->danhmuctruyen->tendanhmuc}}</td>
                    <td>{{$truyen->theloai->tentheloai}}</td>
                    <td>
                        @if ($truyen->kichhoat==0)
                        <span class="text text-sucess">Kích Hoạt</span>
                        @else
                        <span class="text text-danger"> Ko Kích Hoạt</span>
                        @endif
                    </td>

                    <td>
                        <a href="{{route('truyen.edit',[ $truyen->id])}}" class="btn btn-primary">Edit</a>


                        <form action="{{route('truyen.destroy',[ $truyen->id])}}" method="POST">
                        @method('DELETE')
                        @csrf
                        <button class="btn- btn-danger"; onclick="return confirm('Bạn chắc muốn xóa  truyện này ko ?') ">Delete</button>
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
