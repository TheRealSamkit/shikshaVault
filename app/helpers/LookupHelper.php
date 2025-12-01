<?php

namespace App\Helpers;

use App\Models\AcademicFields;
use App\Models\ProgramStreams;
use App\Models\ProgramStreamLevels;
use App\Models\Institution;
use App\Models\ResourceTypes;

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
        // Fetches allowed semesters for this stream (e.g., Sem 1-6 for Diploma)
        // This ensures a Diploma student doesn't see "Semester 8"
        return ProgramStreamLevels::with('academicLevels') // Ensure relation name matches Model
            ->where('program_stream_id', $streamId)
            ->get()
            ->sortBy(fn($q) => $q->academicLevels->level_order ?? 0);
    }

    public static function getSubjects($streamId)
    {
        // COMPLETE FIX: Fetches subjects directly associated with the Stream.
        // Independent of the Semester.
        $stream = ProgramStreams::with([
            'subjects' => function ($query) {
                $query->orderBy('name');
            }
        ])->find($streamId);

        return $stream ? $stream->subjects : collect([]);
    }

    public static function getResourceTypes()
    {
        return ResourceTypes::orderBy('name')->get();
    }

    public static function searchInstitutions($query)
    {
        // Only search from start of string
        return Institution::where('name', 'like', $query . '%')
            ->orderBy('name')
            ->limit(10)
            ->get();
    }
}