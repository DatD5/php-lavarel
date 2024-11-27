<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Chapter extends Model
{
    public $timestamps = false ;// set time to false (hai cột cuối như bảng user)
    protected $fillable = [
     'truyen_id' ,'tomtat','tieude','noidung','kichhoat','slug_chapter'
    ];
    protected $primarykey = 'id';
    protected $table ='chapter';

    public function truyen(){
        return $this->belongsTo('App\Models\truyen');
        }
}
