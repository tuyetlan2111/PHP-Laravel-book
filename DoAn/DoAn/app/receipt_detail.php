<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class receipt_detail extends Model
{
    protected $table ="receipt_note_detail";
    public $timestamps = false;

    // public function product_type(){
    //     return $this->belongsTo('App\categories','id_category','id');
    // }
    public function receipt_detail(){
        return $this->belongsTo('App\receipt','id_bill','id');
    }
    // public function author_book(){
    //     return $this->hasMany('App\composer','id','id');
    // }
}