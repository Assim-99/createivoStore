<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Items extends Model
{
    use HasFactory , Notifiable ;
    
    protected $fillable = [
        'name',
        'short_description',
        'description',
        'price',
        'qantity' ,
        'image' ,
        'status', 
        'brand_id',
        'category_id',
        'created_by',
    ];

    function category()
    {
        return $this -> belongsTo(Category::class);
    }

       function brand()
    {
        return $this -> belongsTo(Brand::class);
    }

        function createdBy()
    {
        return $this -> belongsTo(User::class , 'created_by' ,'id');
    }




}
