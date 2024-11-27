<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Truyentranh</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">

        <!-- Styles -->
        <link href="{{ asset('css/app.css') }}" rel="stylesheet">
        <link href="{{ asset('css/owl.carousel.min.css') }}" rel="stylesheet">
      

        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">


    </head>
    <body >
    <div class="container">

                <!-- <---------------------menu---------------> 
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="{{url('/')}}">Sáchtruyện.com</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="{{url('/')}}">Trang chủ</a>
                    </li>
                  
                    <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                <i class="fa fa-tags" aria-hidden="true"></i> Danh mục truyện
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                    @foreach ( $danhmuc as $key => $danh)
                    <a class="dropdown-item" href="{{url('danh-muc/'.$danh->slug_danhmuc)}}">{{$danh->tendanhmuc}}</a>
                    @endforeach
                </ul>
                </li>

                <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
          <i class="fa fa-tags" aria-hidden="true"></i>Thể loại truyện
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                    @foreach ( $theloai as $key => $the)
                    <a class="dropdown-item" href="{{url('the-loai/'.$the->slug_theloai)}}">{{$the->tentheloai}}</a>
                    @endforeach
                </ul>
        </li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
         <i class="fa fa-tags" aria-hidden="true"></i> Khách
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                   
                    <a class="dropdown-item" href="{{route('dang-ky')}}">  <i class="fa fa-user" aria-hidden="true"></i>Đăng ký</a>
                    <a class="dropdown-item" href="{{route('dang-nhap')}}">  <i class="fa fa-users" aria-hidden="true"></i>Đăng nhập</a>
                 
                </ul>
        </li>


                    
                </ul>
                <form class="d-flex my-lg-0" method="GET" action="{{url('tim-kiem')}}">
               
                <input class="form-control me-2" type="search" name="tukhoa" placeholder="Tìm kiếm tác giả,truyện.." aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Tìm kiếm</button>
                </form>
                </div>
            </div>
        </nav>
                 <!-- slide -->
                  @yield('slide')
                  <!-- sách mới -->
                   @yield('content')


        <footer class="text-muted">
      <div class="container">
        <p class="float-right">
          <a href="#">Back to top</a>
        </p>
        <p>Album example is © Bootstrap, but please download and customize it for yourself!</p>
        <p>New to Bootstrap? <a href="../../">Visit the homepage</a> or read our <a href="../../getting-started/">getting started guide</a>.</p>
      </div>
    </footer>

    </div>


          <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
    <script type="text/javascript" src=" https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js"></script>
   
        <script type="text/javascript">
                        $('.owl-carousel').owlCarousel({
                    loop:true,
                    margin:10,
                    //nav:true,
                    responsive:{
                        0:{
                            items:1
                        },
                        600:{
                            items:3
                        },
                        1000:{
                            items:5
                        }
                    }
                })
        </script>
        <!-- đoạn mã javascript chọn chapter ở trang xem truyện -->
        <script type="text/javascript">
    // Bắt sự kiện 'change' trên dropdown với class 'select-chapter'
    $('.select-chapter').on('change', function() {
        var url = $(this).val(); // Lấy giá trị của tùy chọn đã chọn
        if (url) { // Nếu giá trị tồn tại
            window.location = url; // Chuyển hướng đến URL đó
        }
        return false; // Ngăn chặn hành động mặc định
    });

    // Đánh dấu tùy chọn hiện tại trong dropdown khi trang được tải
    current_chapter();
    function current_chapter() {
        var url = window.location.href; // Lấy URL hiện tại của trang web
        $('.select-chapter').find('option[value="'+url+'"]').attr("selected", true); // Đánh dấu tùy chọn có giá trị bằng URL hiện tại là đã chọn
    }
</script>

    </body>
</html>
