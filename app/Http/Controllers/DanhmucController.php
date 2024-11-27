<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\danhmuctruyen;
class DanhmucController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
        $danhmuctruyen = danhmuctruyen::orderBy('id', 'DESC')->get();
return view('admincp.danhmuctruyen.index')->with(compact('danhmuctruyen'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view ('admincp.danhmuctruyen.create');
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
            'tendanhmuc'=> 'required|unique:danhmuc|max:255',
            'slug_danhmuc'=> 'required|unique:danhmuc|max:255',
            'mota'=> 'required|max:255', 
            'kichhoat'=> 'required',
          
            ],
            [
                'tendanhmuc.unique' =>'Tên danh mục đã có',
                'slug_danhmuc.unique' =>'Tên  slug danh mục đã có',
                'tendanhmuc.required' =>'tên danh mục còn trống',
                'mota.required' => 'mô tả danh mục trống',
                'slug_danhmuc.required' => 'Slug danh mục còn trống',
            ]
         );
// $data = $request->all();

         $danhmuctruyen= new danhmuctruyen();
         $danhmuctruyen->tendanhmuc = $data['tendanhmuc'];
         $danhmuctruyen->slug_danhmuc = $data['slug_danhmuc'];
         $danhmuctruyen->mota = $data['mota'];
         $danhmuctruyen->kichhoat = $data['kichhoat'];
         $danhmuctruyen->save();
         return redirect()->back()->with('status','Thêm danh mục truyện thành công ');// redirect :chuyển hướng người dùng về trang trc đó
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
        $danhmuc = danhmuctruyen::find($id);
        return view('admincp.danhmuctruyen.edit')->with(compact('danhmuc'));
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
            'tendanhmuc'=> 'required|max:255',
            'slug_danhmuc'=> 'required|max:255',
            'mota'=> 'required|max:255', 
            'kichhoat'=> 'required',
            ],
            [
                'tendanhmuc.required' => 'tên danh mục trống',
                'slug_danhmuc.required' =>'tên  slug danh mục đã có',
                'mota.required' => 'mô tả danh mục trống',
            ]
         );
// $data = $request->all();

        $danhmuctruyen = danhmuctruyen::find($id);

         $danhmuctruyen->tendanhmuc = $data['tendanhmuc'];
         $danhmuctruyen->slug_danhmuc = $data['slug_danhmuc'];
         $danhmuctruyen->mota = $data['mota'];
         $danhmuctruyen->kichhoat = $data['kichhoat'];
         $danhmuctruyen->save();
         return redirect()->back()->with('status','Cập nhật danh mục truyện thành công ');// redirect :chuyển hướng người dùng về trang trc đó
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        danhmuctruyen::find($id)->delete();
        return redirect()->back()->with('status','Xóa danh mục truyện thành công ');
    }
}
