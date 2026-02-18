<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class CollectionItem extends Model
{
    protected $table = 'collection_items';

    protected $fillable = [
        'file_collection_id',
        'digital_file_id',
        'sort_order',
    ];

    public function collection(): BelongsTo
    {
        return $this->belongsTo(FileCollection::class, 'file_collection_id');
    }

    public function file(): BelongsTo
    {
        return $this->belongsTo(DigitalFile::class, 'digital_file_id');
    }
}
