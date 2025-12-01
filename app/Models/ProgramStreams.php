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
    public function subjects()
    {
        // Many-to-Many relationship via the new pivot table
        return $this->belongsToMany(Subject::class, 'program_stream_subjects', 'program_stream_id', 'subject_id');
    }

    public function academicLevels()
    {
        // Assuming you kept program_stream_levels to define duration
        return $this->belongsToMany(AcademicLevels::class, 'program_stream_levels', 'program_stream_id', 'academic_level_id')
            ->orderBy('level_order');
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
