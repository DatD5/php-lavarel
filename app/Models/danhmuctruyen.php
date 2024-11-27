<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class danhmuctruyen extends Model
{
    use HasFactory;

    public $timestamps = false ;// set time to false (hai cột cuối như bảng user)
    protected $fillable = [
     'tendanhmuc' ,'mota','kichhoat','slug_danhmuc'
    ];
    protected $primarykey = 'id';
    protected $table ='danhmuc';

    public function truyen(){
    return $this->hasMany('App\Models\truyen');
    }

}
