<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class books extends Model
{
    protected $table ="books";
    public $timestamps = false;

    public function product_type(){
        return $this->belongsTo('App\categories','id_category','id');
    }
    public function order_detail(){
        return $this->hasMany('App\detail_order','id','id_order');
    }
    public function author_book(){
        return $this->hasMany('App\composer','id','id');
    }
}
