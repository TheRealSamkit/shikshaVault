<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AccessedFile extends Model
{
    public $timestamps = false; // Since table only has first_accessed_at

    protected $fillable = [
        'user_id',
        'file_id',
        'first_accessed_at'
    ];

    protected $casts = [
        'first_accessed_at' => 'datetime',
    ];
}