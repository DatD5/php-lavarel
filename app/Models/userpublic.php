<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class userpublic extends Model
{
    use HasFactory;

    public $timestamps = false ;// set time to false (hai cột cuối như bảng user)
    protected $fillable = [
     'username' ,'email','passwword'
    ];
    protected $primarykey = 'id';
    protected $table ='userpublic';
}
