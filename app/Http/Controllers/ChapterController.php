<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use  App\Models\Chapter;
use  App\Models\truyen;
class ChapterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $chapter = Chapter::with('truyen')->orderBy('id','DESC')->get();
        return view('admincp.chapter.index')->with(compact('chapter'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $truyen = truyen::orderBy('id','DESC')->get();
        return view('admincp.chapter.create')->with(compact('truyen'));
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
            'tieude'=> 'required|unique:chapter|max:255',
            'slug_chapter'=> 'required|unique:chapter|max:255',
            'noidung'=> 'required', 
            'tomtat'=> 'required', 
            'kichhoat'=> 'required',
            'truyen_id'=>'required',
            ],
            [
                'tieude.unique' =>'tiêu đề chapter đã có',
                'slug_chapter.unique' =>'tên  slug chapter đã có',
                'tieude.required' =>'tiêu đề truyện còn trống',
                'tomtat.required' => 'tóm tắt truyện trống',
                'slug_chapter.required'=>'slug chapter còn trống',
                'noidung.required' => 'nội dung truyện trống',
            ]
         );
// $data = $request->all();

         $chapter= new Chapter();   
         $chapter->tieude = $data['tieude'];
         $chapter->slug_chapter = $data['slug_chapter'];
         $chapter->tomtat = $data['tomtat'];
         $chapter->noidung = $data['noidung'];
         $chapter->kichhoat = $data['kichhoat'];
         $chapter->truyen_id = $data['truyen_id'];



         $chapter->save();
         return redirect()->back()->with('status','Thêm chapter của truyện  thành công ');// redirect :chuyển hướng người dùng về trang trc đó
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
        $chapter = Chapter::find($id);
        $truyen = truyen::orderBy('id','DESC')->get();
        return view('admincp.chapter.edit')->with(compact('truyen','chapter'));
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
            'tieude'=> 'required|max:255',
            'slug_chapter'=> 'required|max:255',
            'noidung'=> 'required', 
            'tomtat'=> 'required', 
            'kichhoat'=> 'required',
            'truyen_id'=>'required',
            ],
            [
                'tieude.unique' =>'tiêu đề truyện đã có',
                'slug_chapter.unique' =>'tên  slug chapter đã có',
                'tieude.required' =>'tiêu đề truyện còn trống',
                'tomtat.required' => 'tóm tắt truyện trống',
                'slug_chapter.required'=>'slug chapter còn trống',
                'noidung.required' => 'nội dung truyện trống',
            ]
         );
// $data = $request->all();

         $chapter=  Chapter::find($id);   
         $chapter->tieude = $data['tieude'];
         $chapter->slug_chapter = $data['slug_chapter'];
         $chapter->tomtat = $data['tomtat'];
         $chapter->noidung = $data['noidung'];
         $chapter->kichhoat = $data['kichhoat'];
         $chapter->truyen_id = $data['truyen_id'];



         $chapter->save();
         return redirect()->back()->with('status','Cập nhật chapter của truyện  thành công ');// redirect :chuyển hướng người dùng về trang trc đó
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Chapter::find($id)->delete();
        return redirect()->back()->with('status','Xóa chapter thành công');
    }
}
