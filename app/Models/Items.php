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
    ];


}
