<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\theloai;
use App\Models\truyen;
class TheloaiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $theloai = theloai::orderBy('id', 'DESC')->get();
        return view('admincp.theloai.index')->with(compact('theloai'));
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view ('admincp.theloai.create');
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
            'tentheloai'=> 'required|unique:theloai|max:255',
            'slug_theloai'=> 'required|unique:theloai|max:255',
            'mota'=> 'required|max:255', 
            'kichhoat'=> 'required',
          
            ],
            [
                'tentheloai.unique' =>'Tên thể loại đã có',
                'slug_theloai.unique' =>'Tên  slug thể loại đã có',
                'tentheloai.required' =>'tên thể loại còn trống',
                'mota.required' => 'mô tả thể loại trống',
                'slug_theloai.required' => 'Slug thể loại còn trống',
            ]
         );
// $data = $request->all();

         $theloai= new theloai();
         $theloai->tentheloai = $data['tentheloai'];
         $theloai->slug_theloai = $data['slug_theloai'];
         $theloai->mota = $data['mota'];
         $theloai->kichhoat = $data['kichhoat'];
         $theloai->save();
         return redirect()->back()->with('status','Thêm thể loại truyện thành công ');// redirect :chuyển hướng người dùng về trang trc đó
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
        $theloai = theLoai::find($id);
        if (!$theloai) {
            return redirect()->route('theloai.index')->with('error', 'Thể loại không tồn tại.');
        }
        return view('admincp.theloai.edit', compact('theloai'));
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
            'tentheloai'=> 'required|max:255',
            'slug_theloai'=> 'required|max:255',
            'mota'=> 'required|max:255', 
            'kichhoat'=> 'required',
            ],
            [
                'tentheloai.required' => 'tên thể loại trống',
                'slug_theloai.required' =>'tên  slug thể loại đã có',
                'mota.required' => 'mô tả thể loại trống',
            ]
         );
// $data = $request->all();

        $theloai = theloai::find($id);

         $theloai->tentheloai = $data['tentheloai'];
         $theloai->slug_theloai = $data['slug_theloai'];
         $theloai->mota = $data['mota'];
         $theloai->kichhoat = $data['kichhoat'];
         $theloai->save();
         return redirect()->back()->with('status','Cập nhật thể loại truyện thành công ');// redirect :chuyển hướng người dùng về trang trc đó
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        theloai::find($id)->delete();
        return redirect()->back()->with('status','Xóa thể loại truyện thành công ');
    }
}
