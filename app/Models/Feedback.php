<?php

namespace App\Models;
use App\Models\User;
use App\Models\DigitalFile;
use Illuminate\Database\Eloquent\Model;

class Feedback extends Model
{
    protected $table = 'feedback';

    protected $fillable = [
        'user_id',
        'file_id',
        'rating',
        'comment',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
    public function file()
    {
        return $this->belongsTo(DigitalFile::class, 'file_id');
    }

}
