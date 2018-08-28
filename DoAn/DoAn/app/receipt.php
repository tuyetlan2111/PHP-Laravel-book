<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class receipt extends Model
{
    protected $table ="receipt_note";
    public $timestamps = false;

    // public function product_type(){
    //     return $this->belongsTo('App\categories','id_category','id');
    // }
    public function receipt_detail(){
        return $this->hasMany('App\receipt_detail','id_bill','id');
    }
    // public function author_book(){
    //     return $this->hasMany('App\composer','id','id');
    // }
}