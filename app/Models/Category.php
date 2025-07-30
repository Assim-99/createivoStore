<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table= 'category';

    protected $fillable = [
        'name' ,
        'manager',
    ];

    function items(){
        return $this -> hasMany(Items::class);
    }
}
