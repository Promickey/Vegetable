<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use App\Http\Requests\RegisterRequest;
use Illuminate\Support\Facades\Mail;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:5', 'confirmed'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {
        return User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
        ]);
    }

    public function register(RegisterRequest $request){    
        $data = $request->except('password_confirmation');
        $confirmation_code = str_random(30);
        $data['role_id'] = 2;
        $data['password'] = bcrypt($request->password);
        $data['confirmation_code'] = $confirmation_code;
        $user = User::create($data)->toArray();
        Mail::send('email.activation', $user, function($message) use($user){
            $message->to($user['email']);
            $message->subject('Vegetable.com - Xác nhận tài khoản email');
        });
        //session(['success'=>'Register success! We sent activation code, please check your email.']);
        return redirect()->to('login')->with('success', 'Register success! We sent activation code, please check your email.');

    }

    public function verify($code){
        $user = User::where('confirmation_code', $code);
        if (!is_null($user)) {
            $user->update(['status' =>1, 'confirmation_code'=>null]);
            $notification = "Great! You are verified success!";
        }
        else{
            $notification = "Your confirmation code is invalid";
        }
        return redirect()->route('login')->with('status', $notification);
    }










}
