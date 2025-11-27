<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class TokenTransaction extends Model
{
    use HasFactory;
    //
    protected $fillable = [
        'user_id',
        'amount',
        'balance_after',
        'type',
        'description',
        'reference_type',
        'reference_id'
    ];
}
