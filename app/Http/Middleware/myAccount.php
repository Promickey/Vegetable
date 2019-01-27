<?php

namespace App\Http\Middleware;


use Closure;
use User;
use Illuminate\Support\Facades\Auth;

class myAccount
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if($request->id != auth()->user()->id){
            return redirect()->route('home');
        }
        return $next($request);
    }
}
