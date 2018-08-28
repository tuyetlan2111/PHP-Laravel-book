<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class composer extends Model
{
    protected $table ="composer";
    public function author(){
        return $this->belongsTo('App\author','id_author','id_author');
    }
}
