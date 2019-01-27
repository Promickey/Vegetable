<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CommentRequest extends FormRequest
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
            'title' => 'required',
            'content' => 'required',
            'rating' => 'required',
            'user_id' => 'required'

        ];
    }

    public function messages()
    {
        return [
            'user_id.required' => 'Bạn hãy đăng nhập hoặc tạo tài khoản để có thể đánh giá sản phẩm !!!'


        ];
    }

}
