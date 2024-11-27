<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Models\danhmuctruyen;
use App\Models\truyen;
use App\Models\Chapter;
use App\Models\theloai;
use App\Models\userpublic;
use Session;

class IndexController extends Controller
{
public function dangky()
{
    $danhmuc = danhmuctruyen::orderBy('id','DESC')->get();
    $theloai = theloai::orderBy('id','DESC')->get();
   
    
    return view('pages.users.dangky')->with(compact('danhmuc','theloai'));
}
public function dangnhap()
{
    $danhmuc = danhmuctruyen::orderBy('id','DESC')->get();
    $theloai = theloai::orderBy('id','DESC')->get();
  
    
    return view('pages.users.dangnhap')->with(compact('danhmuc','theloai'));
}
public function registerpublic (Request $request)
{
    $data= $request->validate(
        [
        'username'=> 'required|unique:userpublic|max:100',
        'email'=> 'required|unique:userpublic|max:100',
        'password'=> 'required|required_with:password-cofirmation|same:password|max:100',
      
        ],
        [
            'username.unique' =>'Tên username đã có',
            'email.unique' =>'Tên  email đã có',
            'username.required' =>'username còn trống',
            'password.required' => 'mật khẩu còn trống trống',
            'email.required' => 'email còn trống',
        ]
     );
// $data = $request->all();

     $userpublic= new userpublic();
     $userpublic->username = $data['username'];
     $userpublic->email = $data['email'];
     $userpublic->password= $data['password'];
     $userpublic->date_created = Carbon::now('Asia/Ho_Chi_Minh');

   $userpublic ->save();
     return redirect()->back()->with('status','Đăng kí thành công ');// redirect :chuyển hướng người dùng về trang trc đó
}

public function loginpublic (Request $request)
{
    $data= $request->validate(
        [
        
       'username'=> 'required',
        'password'=> 'required',
      
        ],
        [
            'password.required' => 'mật khẩu còn trống trống',
            'username.required' => 'tên username  còn trống',
        ]
     );
// $data = $request->all();

//      $userpublic= userpublic::where('username',$data['username'])->where('password',md5($data['password']))->first();
//      if($userpublic){
//         Session::put('loginpublic',true);
//         Session::put('userpublic_id',$userpublic->id);
//         Session::put('username',$userpublic->username);
//         return redirect()->back()->with('status','Đăng nhập thành công ');
//      }
//      else
//      {
//         return redirect()->back()->with('status','Đăng nhập ko thành công ');
//      }
// }
    }





    public function home ()  {
        $danhmuc = danhmuctruyen::orderBy('id','DESC')->get();
        $theloai = theloai::orderBy('id','DESC')->get();
        $slidetruyen = truyen::orderBy('id','DESC')->where('kichhoat',0)->take(8)->get();
        $truyen = truyen::orderBy('id','DESC')->where('kichhoat',0)->get();
        return view('pages.home')->with(compact('danhmuc','truyen','theloai','slidetruyen'));
    }
    public function danhmuc($slug)
    {
        $danhmuc = danhmuctruyen::orderBy('id','DESC')->get();
        $danhmuc_id = danhmuctruyen::where('slug_danhmuc',$slug)->first();
        $tendanhmuc = $danhmuc_id->tendanhmuc;
        $theloai = theloai::orderBy('id','DESC')->get();
        $slidetruyen = truyen::orderBy('id','DESC')->where('kichhoat',0)->take(8)->get();
        $truyen = truyen::orderBy('id','DESC')->where('kichhoat',0)->where('danhmuc_id',$danhmuc_id->id)->get();
        return view('pages.danhmuc')->with(compact('danhmuc','truyen','tendanhmuc','theloai','slidetruyen'));
    }
    public function theloai($slug)
    {
        $theloai = theloai::orderBy('id','DESC')->get();
        $danhmuc = danhmuctruyen::orderBy('id','DESC')->get();
        $theloai_id = theloai::where('slug_theloai',$slug)->first();
        $tentheloai = $theloai_id->tentheloai;
        $slidetruyen = truyen::orderBy('id','DESC')->where('kichhoat',0)->take(8)->get();
        $truyen = truyen::orderBy('id','DESC')->where('kichhoat',0)->where('theloai_id',$theloai_id->id)->get();
        return view('pages.theloai')->with(compact('danhmuc','truyen','tentheloai','theloai','slidetruyen'));
    }
    public function xemtruyen($slug){
        $danhmuc = danhmuctruyen::orderBy('id','DESC')->get();
        $theloai = theloai::orderBy('id','DESC')->get();
        $slidetruyen = truyen::orderBy('id','DESC')->where('kichhoat',0)->take(8)->get();
        $truyen = truyen::with('danhmuctruyen','theloai')->where('slug_truyen',$slug)->where('kichhoat',0)->first();

        $chapter=Chapter::with('truyen')->orderBy('id','ASC')->where('truyen_id',$truyen->id)->get();
        $chapterdau=Chapter::with('truyen')->orderBy('id','ASC')->where('truyen_id',$truyen->id)->first();

        $cungdanhmuc =truyen::with('danhmuctruyen','theloai')->where('danhmuc_id',$truyen->danhmuctruyen->id)
        ->whereNotIn('id',[$truyen->id])->get();

        return view('pages.truyen')->with(compact('danhmuc','truyen','chapter','cungdanhmuc','chapterdau','theloai','slidetruyen'));
    }
     public function xemchapter($slug)
     {
        $danhmuc = danhmuctruyen::orderBy('id','DESC')->get();
        $theloai = theloai::orderBy('id','DESC')->get();
        $slidetruyen = truyen::orderBy('id','DESC')->where('kichhoat',0)->take(8)->get();
        $truyen=Chapter::where('slug_chapter',$slug)->first();

         //breadcrum
         $truyen_breadcrumb = truyen::with('danhmuctruyen','theloai')->where('id',$truyen->truyen_id)->first();
         //end-breadcrum

        $chapter=Chapter::with('truyen')->where('slug_chapter',$slug)->where('truyen_id',$truyen->truyen_id)->first();
        $allchapter = Chapter::with('truyen')->orderBy('id','ASC')->where('truyen_id',$truyen->truyen_id)->get();

        $nextchapter = Chapter::where('truyen_id',$truyen->truyen_id)->where('id','>',$chapter->id)->min('slug_chapter');
        $previouschapter = Chapter::where('truyen_id',$truyen->truyen_id)->where('id','<',$chapter->id)->max('slug_chapter');
        return view('pages.chapter')->with(compact('danhmuc','chapter','truyen','allchapter','nextchapter','previouschapter','theloai','truyen_breadcrumb','slidetruyen'));

     }
     public function timkiem()
     {
        $danhmuc = danhmuctruyen::orderBy('id','DESC')->get();
        $theloai = theloai::orderBy('id','DESC')->get();
        $slidetruyen = truyen::orderBy('id','DESC')->where('kichhoat',0)->take(8)->get();

        $tukhoa=$_GET['tukhoa'];
        $truyen = truyen::with('danhmuctruyen','theloai')->where('tentruyen','LIKE','%'.$tukhoa.'%')
        ->orwhere('tomtat','LIKE','%'.$tukhoa.'%')->orwhere('tacgia','LIKE','%'.$tukhoa.'%')->get();
        return view('pages.timkiem')->with(compact('danhmuc','truyen','theloai','slidetruyen','tukhoa'));
     }
}
