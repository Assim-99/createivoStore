<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class EditItemsInfo extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'name' => 'required|string|max:255',

            'short_description' => 'required|string|max:255',

            'description' => 'required|string|min:10',

            'price' => 'required|numeric|min:0',

            'quantity' => 'required|integer|min:0',

            'status' => 'required|in:active,inactive',

            'brand_id' => 'required|exists:brand,id',

            'category_id' => 'required|exists:category,id',
        ];
    }

    function messages()
    {
        return
            [
                'name.required' => 'من فضلك اكتب اسم المنتج.',
                'name.string' => 'اسم المنتج لازم يكون نص.',
                'name.max' => 'اسم المنتج كبير أوي، خليه أقل من 255 حرف.',

                'short_description.required' => 'اكتب وصف مختصر عن المنتج.',
                'short_description.string' => 'الوصف المختصر لازم يكون نص.',
                'short_description.max' => 'الوصف المختصر طويل شوية، خليه تحت 255 حرف.',

                'description.required' => 'اكتب وصف كامل عن المنتج.',
                'description.string' => 'الوصف لازم يكون نص.',
                'description.min' => 'الوصف قصير جدًا، اكتبه بشكل أوضح شوية.',

                'price.required' => 'اكتب سعر المنتج.',
                'price.numeric' => 'السعر لازم يكون رقم.',
                'price.min' => 'السعر مينفعش يكون أقل من 0.',

                'quantity.required' => 'اكتب الكمية المتاحة.',
                'quantity.integer' => 'الكمية لازم تكون عدد صحيح.',
                'quantity.min' => 'الكمية لازم تكون 0 أو أكتر.',
            ];
    }
}
