<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class categories extends Model
{

    protected $table = "categories";
    public $timestamps = false;
    public function product_type(){
        return $this->hasMany('App\books','id_category','id');
    }
}
