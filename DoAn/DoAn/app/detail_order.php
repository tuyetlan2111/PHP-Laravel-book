<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class detail_order extends Model
{
    protected $table = "order_detail";
    public $timestamps = false;
    public function product(){
        return $this->belongsTo('App\books','id','id_order');
    }
    public function order(){
        return $this->belongsTo('App\order','id_order','id_order');
    }
}
