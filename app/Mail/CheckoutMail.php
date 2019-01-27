<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;
use App\Order;

class CheckoutMail extends Mailable
{
    use Queueable, SerializesModels;

    public $order;


    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct(Order $order)  //giờ thì nó là 1 đối tượng, có thể truyền qua blade đc ở dạng đối tượng, ko phải mảng
    {
        $this->order = $order;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->from('support@vegetable.com')->subject('Check Out Successfully!')->view('email.checkout');
    }
}
