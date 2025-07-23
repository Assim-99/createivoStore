<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class LoginAdminRequest extends FormRequest
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
            'username' => [
                'required',
                'string',
                'min:3',
                'max:20',
                'regex:/^[a-zA-Z0-9_]+$/',
            ],

            'password' => [
                'required',
                'string',
                'min:3', // الحد الأدنى 8 حروف
                // 'regex:/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/',
            ],
        ];
    }
    function messages()
    {
        return [
            'username.required' => 'اسم المستخدم مطلوب، متسيبهوش فاضي.',
            'username.string'   => 'اسم المستخدم لازم يكون نص مش أرقام أو حاجة غريبة.',
            'username.unique'   => 'الاسم ده مستخدم قبل كدا، اختار اسم تاني.',
            'username.regex'    => 'الاسم لازم يكون فيه حروف إنجليزي، أرقام، أو (_) بس. مفيش مسافات ولا رموز غريبة.',
            'password.required'  => 'الباسورد لازم يتكتب، مينفعش تسيبه فاضي.',
            'password.string'    => 'الباسورد لازم يكون نص.',
            'password.min'       => 'الباسورد لازم يكون 8 حروف على الأقل.',
            'password.regex'     => 'الباسورد لازم يحتوي على حرف كبير، صغير، رقم، ورمز زي @ أو #.',

        ];
    }
}
