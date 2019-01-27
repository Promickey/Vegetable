<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class LoginRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'email'=>'required|email',
            'password'=>'required|min:5|max:20'
        ];
    }

    public function message(){
        return [
            'email.required'=>'Bạn cần nhập trường Email',
            'email.email' => 'Địa chỉ email không hợp lệ',
            'password.required'=>'Bạn chưa nhập password',
            'password.min'=>'Password không được ít hơn 5 kí tự',
            'password.max'=>'Password không được nhiều hơn 20 kí tự'
        ];

    }
}
