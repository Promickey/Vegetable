<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
	protected $fillable = ['user_id', 'total', 'address', 'phone', 'email', 'fullname', 'type_payment_id', 'note', 'status_id'];

	
	public function user(){
		return $this->belongsTo('App\User');
	}
	public function status(){
		return $this->belongsTo('App\Status');
	}
	public function typePayment(){
		return $this->belongsTo('App\typePayment');
	}
	
    public function orderDetails(){
    	return $this->hasMany('App\OrderDetail');
    }
}
