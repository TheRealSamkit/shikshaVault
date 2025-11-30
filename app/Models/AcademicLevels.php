<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
class AcademicLevels extends Model
{
    use HasFactory;

    protected $fillable = ['name'];

    public function programStreamLevels()
    {
        return $this->hasMany(ProgramStreamLevels::class, 'academic_level_id');
    }
}
