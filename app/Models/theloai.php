<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class theloai extends Model
{
    public $timestamps = false ;// set time to false (hai cột cuối như bảng user)
    protected $fillable = [
      'tentheloai' ,'mota','kichhoat','slug_theloai'
    ];
    protected $primarykey = 'id';
    protected $table ='theloai';

    public function truyen(){
        return $this->hasMany('App\Models\truyen');
        }
}