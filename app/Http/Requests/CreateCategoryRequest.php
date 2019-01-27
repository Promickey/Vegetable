<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreateCategoryRequest extends FormRequest
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
            'name' => 'required|unique:categories,name',
        ];
    }
     public function messages()
    {
        return [
            'name.required' => ' Hãy nhập tên danh mục ',
            'name.unique' => 'Tên danh mục này đã tồn tại',
            /*'parent_id.required' => 'Hãy chọn Danh mục cha'*/
        ];
    }
}
