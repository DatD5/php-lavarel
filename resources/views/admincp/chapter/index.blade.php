@extends('layouts.app')

@section('content')
@include('layouts.nav')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">Liệt kê chapter </div>

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
      <th scope="col">Tên chapter</th>
      <th scope="col">Slug chapter</th>
      <th scope="col">Tóm tắt</th>
      <th scope="col">Thuộc truyện</th>
      <th scope="col">Kích hoạt</th>
      <th scope="col">Quản lý</th>
    </tr>
  </thead>
  <tbody>
    @foreach ($chapter as $key => $chap)
    <tr>
      <th scope="row">{{ $loop->iteration }}</th>     <!-- $loop->iteration :in ra stt theoid -->
      <td>{{$chap->tieude}}</td>
      <td>{{$chap->slug_chapter}}</td>
      <td>{{$chap->tomtat}}</td>
      <td>{{$chap->truyen->tentruyen}}</td>
      <td>
        @if ($chap->kichhoat==0)
        <span class="text text-sucess">Kích Hoạt</span>
        @else
        <span class="text text-danger"> Ko Kích Hoạt</span>
        @endif
      </td>

      <td>
        <a href="{{route('Chapter.edit',[ $chap->id])}}" class="btn btn-primary">Edit</a>


        <form action="{{route('Chapter.destroy',[ $chap->id])}}" method="POST">
         @method('DELETE')
         @csrf
         <button class="btn- btn-danger"; onclick="return confirm('Bạn chắc muốn xóa chapter truyện này ko ?') ">
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
