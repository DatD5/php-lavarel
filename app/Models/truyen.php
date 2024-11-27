<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class truyen extends Model
{
    use HasFactory;
    public $timestamps = false ;// set time to false (hai cột cuối như bảng user)
    protected $fillable = [
     'tentruyen' ,'tacgia','tomtat','kichhoat','slug_truyen','hinhanh','danhmuc_id','theloai-id'
    ];
    protected $primarykey = 'id';
    protected $table ='truyen';

    public function danhmuctruyen(){
        return $this->belongsTo('App\Models\danhmuctruyen','danhmuc_id','id');
        }
    
        public function chapter(){
            return $this->hasMany('App\Models\Chapter','truyen_id','id');
            }
        
            public function theloai(){
                return $this->belongsTo('App\Models\theloai','theloai_id','id');
                }
}
