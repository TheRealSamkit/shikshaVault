<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class DigitalFile extends Model
{
    // 1. Define the table name (Optional if it follows conventions, but safe to specify)
    protected $table = 'digital_files';

    // 2. Allow Mass Assignment (Prevent the error you saw with 'tokens')
    protected $fillable = [
        'slug',
        'user_id',
        'title',
        'description',
        'file_path',
        'file_type',    // e.g. "application/pdf"
        'file_size',    // in bytes
        'content_hash', // MD5 or SHA256 hash
        'tags',         // JSON
        'keywords',     // JSON
        'visibility',   // 'public', 'private'
        'status',       // 'active', 'pending'
        'institution_id',
        'subject_id',
        'academic_field_id'
    ];
    const CREATED_AT = 'upload_date';
    const UPDATED_AT = 'last_updated';

    // 3. Cast JSON columns
    // Your SQL has 'tags' and 'keywords' as JSON. 
    // This tells Laravel: "When you get data from DB, turn it into a PHP Array. When you save, turn it back to JSON."
    protected $casts = [
        'tags' => 'array',
        'keywords' => 'array',
        'verified' => 'boolean',
    ];

    // 4. Define Relationship: A file belongs to a User
    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }// Existing user() relation...

    public function institution()
    {
        return $this->belongsTo(\App\Models\Institution::class);
    }

    public function subject()
    {
        return $this->belongsTo(\App\Models\Subject::class);
    }
}