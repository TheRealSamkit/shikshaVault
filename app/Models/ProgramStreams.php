<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class ProgramStreams extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'slug', 'academic_field_id'];

    public function academicFields()
    {
        return $this->belongsTo(AcademicFields::class, 'academic_field_id');
    }

    // Alternative name for consistency
    public function academic_fields()
    {
        return $this->belongsTo(AcademicFields::class, 'academic_field_id');
    }

    public function programStreamLevels()
    {
        return $this->hasMany(ProgramStreamLevels::class, 'program_stream_id');
    }
}
