<?php

namespace App\Http\Controllers;

use App\Models\Items;
use Illuminate\Http\Request;

class ItemsController extends Controller
{

    function index()
    {
        $items = Items::all();
        return view('admin.design.products.show', get_defined_vars());
    }

    function show($id)
    {
        $item = Items::findOrFail($id);
        return view('admin.design.products.itemPage', get_defined_vars());
    }

    function edit( Request $request , $id)
    {
        
    }
}
