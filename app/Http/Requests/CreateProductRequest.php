<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreateProductRequest extends FormRequest
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
            'name'=>'required|unique:products|min:8|max:32',
            'price'=>'required',
            'quantity'=>'required',
            'description'=>'required',

            'image'=>'required|image|mimes:png,jpg,jpeg,bpm'
        ];
    }
    public function messages(){
        return[
            'name.required'=>'Vui lòng nhập tên sản phẩm',
            'name.unique'=>'Tên sản phẩm này đã tồn tại'
            'name.min' => 'Tên phải có ít nhất 8 kí tự',
            'name.max' => 'Tên chỉ được tối đa 32 kí tự',
            'price.request'=>'Vui lòng nhập giá cả',
            'quantity.request'=>'Vui lòng nhập số lượng',
            'description.required'=>'Vui lòng nhập mô tả',
            'image.required'=>'Vui lòng nhập hình ảnh',
            'image.image'=>'Đây là hình ảnh',
            'image.mimes'=>'Hình ảnh của phải phải là 1 trong các định dạng sau: png,jpg,jpeg,bpm'
        ];
    }
}
