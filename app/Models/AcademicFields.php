<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class AcademicFields extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'slug'];

    public function programStreams()
    {
        return $this->hasMany(ProgramStreams::class, 'academic_field_id');
    }
}
