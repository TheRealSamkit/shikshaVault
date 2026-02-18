<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class FileCollection extends Model
{
    protected $table = 'file_collections';

    protected $fillable = [
        'user_id',
        'name',
        'description',
        'visibility',
    ];

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    public function items(): HasMany
    {
        return $this->hasMany(CollectionItem::class, 'file_collection_id')->orderBy('sort_order');
    }

    public function files(): BelongsToMany
    {
        return $this->belongsToMany(DigitalFile::class, 'collection_items', 'file_collection_id', 'digital_file_id')
            ->withPivot('sort_order')
            ->orderByPivot('sort_order');
    }
}
