@extends('../layout')

@section('content')

<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="{{url('/')}}">Trang chủ</a></li>
    <li class="breadcrumb-item"><a href="{{url('danh-muc/'.$truyen->danhmuctruyen->slug_danhmuc)}}">{{$truyen->danhmuctruyen->tendanhmuc}}</a></li>
    <li class="breadcrumb-item active" aria-current="page">{{$truyen->tentruyen}}</li>
  </ol>
</nav>
  
<div class="row">
     <div class="col-md-9">
        <div class="row">
            <div class="col-md-3">
            <img class="card-img-top" src="{{asset('public/uploads/truyen/'.$truyen->hinhanh)}}" >
            </div>
            <div class="col-md-9">
                <style type="text/css">
                        .infotruyen
                        {
                            list-style: none;
                        }
                </style>
              <ul class="infotruyen">
              <li>Tên truyện : {{$truyen->tentruyen}}</li>
                <li>Tác giả : {{$truyen->tacgia}}</li>
                <li>Danh mục truyện : <a href="{{url('danh-muc/'.$truyen->danhmuctruyen->slug_danhmuc)}}">{{$truyen->danhmuctruyen->tendanhmuc}}</a></li>
                <li>Thể loại:<a href="{{url('the-loai/'.$truyen->theloai->slug_theloai)}}">{{$truyen->theloai->tentheloai}}</a></li>
                <li>Số chapter:200</li>
                <li>Số lượt xem :2328</li>
                <li><a href="#">Xem mục lục</a></li>
             @if ($chapterdau)
             <li><a href="{{url('xem-chapter/'.$chapterdau->slug_chapter)}}" class="btn btn-primary">Đọc online</a>
             <button class="btn btn-danger btn-thich_truyen"><i class="fa fa-heart" aria-hidden="true">Thích truyện</i></button>
             </li>
             @else
             <li><a href="" class="btn btn-danger">Hiện tại chưa có chương</a></li>
             @endif
                
              </ul>
            </div>
            </div>
     </div>
     <div class="col-md-12">
        <p>Chào mừng các đạo hữu thân mến của NetTruyen, hãy cùng thưởng thức bộ truyện tranh Ngã Lão Ma Thần đầy cuốn hút trên website của chúng tôi. Bộ truyện này thuộc về các thể loại Action, Manhwa, Martial Arts, Supernatural, Truyện Màu và được cập nhật chap mới liên tục trên website NetTruyen. Đây là một trong những tác phẩm nổi bật nhất của Đang cập nhật và đã thu hút hàng triệu độc giả trên khắp thế giới.
        NetTruyenX là website đọc truyện tranh online hàng đầu tại Việt Nam, cung cấp cho bạn những bộ truyện tranh đa dạng và phong phú, từ những thể loại truyện tranh ngôn tình lãng mạn, truyện tranh đam mỹ nóng bỏng, truyện tranh xuyên không phiêu lưu, truyện tranh tu tiên huyền ảo, cho đến những thể loại truyện adult gây cấn và kích thích. Bạn có thể tìm kiếm và đọc truyện tranh theo nhiều tiêu chí khác nhau, như tên truyện, tác giả, thể loại, năm xuất bản, số lượt xem, số lượt yêu thích và nhiều tiêu chí khác.
        NetTruyenX luôn cập nhật những bộ truyện tranh mới nhất và nhanh nhất, đảm bảo bạn sẽ không bỏ lỡ bất kỳ bộ truyện tranh nào mà bạn yêu thích. Hãy đến với NetTruyenX để thưởng thức những giây phút giải trí tuyệt vời cùng với những bộ truyện tranh hấp dẫn nhất!
        Một trong những Ma thần mạnh nhất lịch sử võ lâm xuất hiện, là kỳ tài võ học kinh người, nhưng khởi nguồn lại là do ... thằng chút chít cách đó cả ngàn năm bay về can thiệp, câu chuyện hư cmn cấu này rồi sẽ đi đâu về đâu =))
        Để trải nghiệm truyện tranh tốt nhất, bạn nên đăng ký tài khoản tại NetTruyenX. Bạn sẽ có thể theo dõi những bộ truyện yêu thích, bình luận và giao lưu với cộng đồng độc giả sôi nổi. NetTruyenX tự hào mang đến cho bạn thế giới truyện tranh đa dạng và phong phú, với nhiều thể loại và tác phẩm hấp dẫn. Hãy đăng ký ngay hôm nay để khám phá những điều thú vị cùng Ngã Lão Ma Thần!
        </p>
     </div>
     <hr>
     <h4>Mục lục</h4>
     <ul class="mucluctruyen">
      @php
      $mucluc = count($chapter)
      @endphp
      @if($mucluc>0)
          @foreach ($chapter as $key =>$chap )
          <li><a href="{{url('xem-chapter/'.$chap->slug_chapter)}}">{{$chap->tieude}}</a></li>
          @endforeach
      @else
      <li>Hiện tại mục lục đang cập nhật............</li>
      @endif
        
     
     </ul>
     <h4>Sách cùng danh mục</h4>
     <div class="row">
     @foreach ( $cungdanhmuc as $key => $value )
            <div class="col-md-2">
                <div class="card mb-2 box-shadow">
                    <img class="card-img-top " src="{{ asset('public/uploads/truyen/' . $value->hinhanh) }}" alt="{{ $value->tentruyen }}">
                    <div class="card-body">
                        <h5>{{ $value->tentruyen }}</h5>
                        <p class="card-text">{{ $value->tomtat }}</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group">
                                <a href="{{ url('xem-truyen/' . $value->slug_truyen) }}" class="btn btn-sm btn-outline-secondary">Đọc ngay</a>
                                <a class="btn btn-sm btn-outline-secondary"><i class="fa-solid fa-eye"></i> 5000</a>
                            </div>
                            <small class="text-muted">9 mins ago</small>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
                 
                         
     </div>
     </div>

     <div class="col-md-3">
        <h3> Sách hay xem nhiều </h3>
     </div>
</div>
@endsection