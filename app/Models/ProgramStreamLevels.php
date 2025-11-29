<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProgramStreamLevels extends Model
{
    public function programStream()
    {
        // Links to 'program_streams' table
        return $this->belongsTo(ProgramStreams::class);
    }

    public function academicLevel()
    {
        // Links to 'academic_levels' table
        return $this->belongsTo(AcademicLevels::class);
    }
}
