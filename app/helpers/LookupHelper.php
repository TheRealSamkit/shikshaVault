<?php

namespace App\Helpers;

use App\Models\AcademicFields;
use App\Models\ProgramStreams;
use App\Models\ProgramStreamLevels;
use App\Models\ProgramStreamLevelSubject;
use App\Models\ResourceTypes;
use App\Models\Institution;

class LookupHelper
{
    public static function getAcademicFields()
    {
        return AcademicFields::orderBy('name')->get();
    }

    public static function getProgramStreams($fieldId)
    {
        return ProgramStreams::where('academic_field_id', $fieldId)
            ->orderBy('name')
            ->get();
    }

    public static function getStreamLevels($streamId)
    {
        return ProgramStreamLevels::with('academicLevels')
            ->where('program_stream_id', $streamId)
            ->get()
            ->sortBy(fn($q) => $q->academicLevel->level_order ?? 0);
    }

    public static function getSubjects($streamLevelId)
    {
        return ProgramStreamLevelSubject::with('subject')
            ->where('program_stream_level_id', $streamLevelId)
            ->get()
            ->sortBy(fn($q) => $q->subject->name ?? '');
    }

    public static function getResourceTypes()
    {
        return ResourceTypes::orderBy('name')->get();
    }

    public static function searchInstitutions($query)
    {
        // CHANGED: Removed first '%' to match only start of string
        return Institution::where('name', 'like', $query . '%')
            ->orderBy('name')
            ->limit(10)
            ->get();
    }
}