<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class order extends Model
{
    protected $table = "order_customer";
    public $timestamps = false;
    public function order_detail(){
        return $this->hasMany('App\detail_order','id_order','id_order');
    }
    public function order(){
        return $this->belongsTo('App\User','id','id_order');
    }
}
