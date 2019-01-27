<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TypePayment extends Model
{

	protected $fillable = ['name'];
    

    public function orders(){
    	return $this->hasMany('App\Order');
    }
}
