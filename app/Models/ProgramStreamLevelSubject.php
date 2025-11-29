<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProgramStreamLevelSubject extends Model
{
    public function subject()
    {
        // Links to 'subjects' table
        return $this->belongsTo(Subject::class);
    }

    public function programStreamLevel()
    {
        // Links to 'program_stream_levels' table
        return $this->belongsTo(ProgramStreamLevels::class);
    }
    // In App\Models\ProgramStreamLevelSubject

    // Use hasOneThrough to "skip" the middle table for cleaner access
    public function programStream()
    {
        return $this->hasOneThrough(
            ProgramStreams::class,
            ProgramStreamLevels::class,
            'id', // Foreign key on program_stream_levels table...
            'id', // Foreign key on program_streams table...
            'program_stream_level_id', // Local key on this table...
            'program_stream_id' // Local key on program_stream_levels table...
        );
    }
}
