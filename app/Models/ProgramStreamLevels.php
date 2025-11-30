<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class ProgramStreamLevels extends Model
{
    use HasFactory;

    protected $fillable = ['program_stream_id', 'academic_level_id'];

    public function programStreams()
    {
        return $this->belongsTo(ProgramStreams::class, 'program_stream_id');
    }

    // Alternative name for consistency
    public function program_streams()
    {
        return $this->belongsTo(ProgramStreams::class, 'program_stream_id');
    }

    public function academicLevels()
    {
        return $this->belongsTo(AcademicLevels::class, 'academic_level_id');
    }

    // Alternative name for consistency
    public function academic_levels()
    {
        return $this->belongsTo(AcademicLevels::class, 'academic_level_id');
    }

    public function programStreamLevelSubjects()
    {
        return $this->hasMany(ProgramStreamLevelSubject::class);
    }
}
