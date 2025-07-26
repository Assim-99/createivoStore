<?php

namespace App\Http\Controllers;

use App\Http\Requests\LoginAdminRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginAdminController extends Controller
{

    function viewForm()
    {
        return view('admin.login');
    }

    function login(LoginAdminRequest $request)
    {

        $request->validated();

        $data = $request->only('username', 'password');

        $remember = $request->remember ?? false;


        if (Auth::attempt($data, $remember)) {
            return redirect('admin/index');
        }
        return redirect()->route('login')->with('statLog', 'Cheack Your Data ! ');
    }


    function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect()->route('login');
    }
}
