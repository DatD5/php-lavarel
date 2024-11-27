@extends('../layout')

@section('content')
<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="{{url('/')}}">Trang chủ</a></li>
   
    <li class="breadcrumb-item"><a href="{{url('danh-muc/'.$truyen_breadcrumb->danhmuctruyen->slug_danhmuc)}}">{{$truyen_breadcrumb->danhmuctruyen->tendanhmuc}}</a></li>
    <li class="breadcrumb-item"><a href="{{url('the-loai/'.$truyen_breadcrumb->theloai->slug_theloai)}}">{{$truyen_breadcrumb->theloai->tentheloai}}</a></li>
    <li class="breadcrumb-item active" aria-current="page">{{$truyen_breadcrumb->tentruyen}}</li>
  </ol>
</nav>

    <div class="row">
        <div class="col-md-12">
            <h3>{{ $chapter->truyen->tentruyen }}</h3>
            <p>Chương hiện tại: {{$chapter->tieude}}</p>
            <div class="col-md-5">
            <div class="form-group">
                <label for="exampInputEmail1">Chọn chương :</label>
          <p class="mt-4"><a class="btn btn-primary" href="{{url('xem-chapter/'.$previouschapter)}}">Chương trước</a></p>
                <select  name="select-chapter"  class="custom-select select-chapter">
                    @foreach ($allchapter as $key =>$chap )
                    <option value="{{url('xem-chapter/'.$chap->slug_chapter)}}">{{$chap->tieude}}</option>
                    @endforeach
                </select>
                <p class="mt-4"><a class="btn btn-primary" href="{{url('xem-chapter/'.$nextchapter)}}">Chương sau</a></p>
                </div>
            </div>

            <div class="noidungchuong">
            {{$chapter->noidung}}
            </div> 
            <h3>Lưu và chia sẻ truyện :</h3>
                <a href="#" class="btn btn-social btn-facebook">
                    <i class="fab fa-facebook-f"></i> Facebook
                </a>
                <a href="#" class="btn btn-social btn-twitter">
                    <i class="fab fa-twitter"></i> Twitter
                </a>
        </div>
    </div> 
@endsection
