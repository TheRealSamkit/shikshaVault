<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class DigitalFile extends Model
{
    protected $table = 'digital_files';

    // Map timestamps to your custom column names
    const CREATED_AT = 'upload_date';
    const UPDATED_AT = 'last_updated';

    protected $fillable = [
        'slug',
        'user_id',
        'title',
        'description',
        'file_path',
        'file_type',
        'file_size',
        'content_hash',
        'tags',
        'keywords',
        'visibility',
        'status',
        'download_count',
        'average_rating',
        'page_count',
        // Foreign Keys
        'institution_id',
        'academic_field_id',
        'program_stream_id',
        'program_stream_level_id', // Make sure to save this
        'program_stream_level_subject_id', // This is technically the pivot, but helpful to store
        'subject_id', // The actual subject ID
        'academic_level_id', // The actual level ID
        'resource_type_id',
        'verified'
    ];

    protected $casts = [
        'tags' => 'array',
        'keywords' => 'array',
        'verified' => 'boolean',
    ];

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    public function subject(): BelongsTo
    {
        return $this->belongsTo(Subject::class, 'subject_id');
    }

    public function resourceType(): BelongsTo
    {
        return $this->belongsTo(ResourceTypes::class, 'resource_type_id');
    }

    public function institution(): BelongsTo
    {
        return $this->belongsTo(Institution::class, 'institution_id');
    }

    public function academicLevels(): BelongsTo
    {
        return $this->belongsTo(AcademicLevels::class, 'academic_level_id');
    }
    public function academicField(): BelongsTo
    {
        return $this->belongsTo(AcademicFields::class, 'academic_field_id');
    }
    public function subjects(): BelongsTo
    {
        return $this->belongsTo(Subject::class, 'subject_id');
    }

    public function resourceTypes(): BelongsTo
    {
        return $this->belongsTo(ResourceTypes::class, 'resource_type_id');
    }

    public function institutions(): BelongsTo
    {
        return $this->belongsTo(Institution::class, 'institution_id');
    }

    public function academicLevel(): BelongsTo
    {
        return $this->belongsTo(AcademicLevels::class, 'academic_level_id');
    }
}