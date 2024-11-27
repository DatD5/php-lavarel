<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\danhmuctruyen;
use App\Models\truyen;
use App\Models\theloai;
class TruyenController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $list_truyen = truyen::with('danhmuctruyen','theloai')->orderBy('id','DESC')->get();
        
        return view ('admincp.truyen.index')->with(compact('list_truyen'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $theloai= theloai ::orderBy('id','DESC')->get();
        $danhmuc = danhmuctruyen::orderBy('id','DESC')->get();
        return view ('admincp.truyen.create')->with(compact('danhmuc','theloai'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data= $request->validate(
            [
            'tentruyen'=> 'required|unique:truyen|max:255',
            'tacgia'=> 'required|unique:truyen|max:255',
            'slug_truyen'=> 'required|unique:truyen|max:255',
            'hinhanh' => 'required|image|mimes:jpg,png,jpeg,gif,svg|max:2048|dimensions:min_width=100,min_height=100,max_width=2000,max_height=2000', 
            'tomtat'=> 'required|max:255', 
            'kichhoat'=> 'required',
            'danhmuc'=>'required',
            'theloai'=>'required',
            ],
            [
                'tentruyen.unique' =>'tên truyện đã có',
                'slug_truyen.unique' =>'tên  slug truyện đã có',
                'tentruyen.required' =>'tên truyện còn trống',
                'tomtat.required' => 'tóm tắt truyện trống',
                'tacgia.required' =>'tác giả còn trống',
                'slug_truyen.required'=>'slug truyện còn trống',
                'hinhanh.required'=>'hình ảnh truyện còn trống'
            ]
         );
// $data = $request->all();

         $truyen= new truyen();   
         $truyen->tentruyen = $data['tentruyen'];
         $truyen->slug_truyen = $data['slug_truyen'];
         $truyen->theloai_id = $data['theloai'];
         $truyen->tomtat = $data['tomtat'];
         $truyen->tacgia = $data['tacgia'];
         $truyen->kichhoat = $data['kichhoat'];
         $truyen->danhmuc_id = $data['danhmuc'];

//them anh vao folder hinh1 . jpg
            $get_image=$request->hinhanh;   //lấy ảnh từ yc
            $path = 'public/uploads/truyen/';   
            $get_name_image = $get_image->getClientOriginalName();  //lấy tên gốc của tệp
            $name_image = current(explode('.',$get_name_image));  //lấy tên tệp ko có đg mở rộng
            $new_image = $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension(); //lấy tên mới cùng vs mở rộng
            $get_image->move($path, $new_image); //di chuyển đến thư mục đích

            $truyen->hinhanh =$new_image;  //lưu tên ảnh vào thuộc tính của truyện

         $truyen->save();
         return redirect()->back()->with('status','Thêm  truyện thành công ');// redirect :chuyển hướng người dùng về trang trc đó
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $truyen = truyen::find($id);
        $theloai= theloai ::orderBy('id','ASC')->get();
        $danhmuc = danhmuctruyen::orderBy('id','DESC')->get();
        return view ('admincp.truyen.edit')->with(compact('truyen','danhmuc','theloai'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data= $request->validate(
            [
            'tentruyen'=> 'required|max:255',
            'slug_truyen'=> 'required|max:255',
            'tacgia'=> 'required', 
            'tomtat'=> 'required', 
            'kichhoat'=> 'required',
            'danhmuc'=>'required',
            'theloai'=>'required',
            ],
            [
                'tentruyen.unique' =>'tên truyện đã có',
                'slug_truyen.unique' =>'tên  slug truyện đã có',
                'tentruyen.required' =>'tên truyện còn trống',
                'tacgia.required' =>'tác giả còn trống',
                'tomtat.required' => 'tóm tắt truyện trống',
                'slug_truyen.required'=>'slug truyện còn trống',
                
            ]
         );
// $data = $request->all();

         $truyen=  truyen::find($id);   
         $truyen->tentruyen = $data['tentruyen'];
         $truyen->slug_truyen = $data['slug_truyen'];
         $truyen->tomtat = $data['tomtat'];
         $truyen->tacgia = $data['tacgia'];
         $truyen->kichhoat = $data['kichhoat'];
         $truyen->danhmuc_id = $data['danhmuc'];
         $truyen->theloai_id = $data['theloai'];

//them anh vao folder hinh1 . jpg
            $get_image=$request->hinhanh;   //lấy ảnh từ yc
            if($get_image)
            {
            $path = 'public/uploads/truyen/';   
            $get_name_image = $get_image->getClientOriginalName();  //lấy tên gốc của tệp
            $name_image = current(explode('.',$get_name_image));  //lấy tên tệp ko có đg mở rộng
            $new_image = $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension(); //lấy tên mới cùng vs mở rộng
            $get_image->move($path, $new_image); //di chuyển đến thư mục đích
            $truyen->hinhanh =$new_image;  //lưu tên ảnh vào thuộc tính của truyện
            }

         

         $truyen->save();
         return redirect()->back()->with('status','Cập nhật  truyện thành công ');// redirect :chuyển hướng người dùng về trang trc đó
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $truyen =truyen::find($id);
        $path = 'public/uploads/truyen/';   
        if($truyen->hinhanh !=NULL)
        {
            unlink($path.$truyen->hinhanh);
        }
        truyen::find($id)->delete();
        return redirect()->back()->with('status','Xóa truyện thành công');

    }
}
