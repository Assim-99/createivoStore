<?php

namespace App\Http\Controllers;

use App\Http\Requests\EditItemsInfo;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Items;
use Illuminate\Http\Request;

class ItemsController extends Controller
{

    function index()
    {
        $items = Items::simplePaginate(16);
        return view('admin.design.items.show', get_defined_vars());
    }

    function show($id)
    {
        $item = Items::findOrFail($id);
        $categories = Category::pluck('name', 'id');
        $brands = Brand::pluck('name', 'id');
        return view('admin.design.items.itemPage', get_defined_vars());
    }

    function editInfo(EditItemsInfo $request, $id)
    {
        $request->validated();
        $status = Items::where('id', $id)->update($request->except('_token'));
        return response('ok' , 200)  ;
    }
}
