<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class ProgramStreamLevelSubject extends Model
{
    use HasFactory;

    protected $fillable = ['subject_id', 'program_stream_level_id'];

    public function subject()
    {
        return $this->belongsTo(Subject::class);
    }

    public function programStreamLevel()
    {
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
