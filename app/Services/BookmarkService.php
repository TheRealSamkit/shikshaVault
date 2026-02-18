<?php

namespace App\Services;

use App\Models\Bookmark;
use App\Models\CollectionItem;
use App\Models\DigitalFile;
use App\Models\FileCollection;
use App\Models\User;
use Illuminate\Support\Collection;

class BookmarkService
{
    // ─── Bookmarks ─────────────────────────────────────────────

    /**
     * Toggle a bookmark for a file. Returns true if bookmarked, false if removed.
     */
    public function toggleBookmark(User $user, int $fileId): bool
    {
        $existing = Bookmark::where('user_id', $user->id)
            ->where('file_id', $fileId)
            ->first();

        if ($existing) {
            // Also remove from any collections
            CollectionItem::whereHas('collection', fn($q) => $q->where('user_id', $user->id))
                ->where('digital_file_id', $fileId)
                ->delete();

            $existing->delete();
            return false;
        }

        Bookmark::create([
            'user_id' => $user->id,
            'file_id' => $fileId,
        ]);

        return true;
    }

    /**
     * Check if a user has bookmarked a specific file.
     */
    public function isBookmarked(User $user, int $fileId): bool
    {
        return Bookmark::where('user_id', $user->id)
            ->where('file_id', $fileId)
            ->exists();
    }

    /**
     * Get all bookmark IDs for a user (for efficient client-side checks).
     */
    public function getUserBookmarkFileIds(User $user): array
    {
        return Bookmark::where('user_id', $user->id)
            ->pluck('file_id')
            ->toArray();
    }

    /**
     * Get bookmarked files not in any collection ("General" bookmarks).
     */
    public function getGeneralBookmarks(User $user, int $perPage = 12, string $search = '')
    {
        $inCollectionFileIds = CollectionItem::whereHas(
            'collection',
            fn($q) => $q->where('user_id', $user->id)
        )->pluck('digital_file_id');

        return DigitalFile::whereHas(
            'bookmarks',
            fn($q) => $q->where('user_id', $user->id)
        )
            ->whereNotIn('id', $inCollectionFileIds)
            ->when($search, fn($q) => $q->where(
                fn($q2) =>
                $q2->where('title', 'like', "%{$search}%")
                    ->orWhere('description', 'like', "%{$search}%")
                    ->orWhereJsonContains('tags', $search)
            ))
            ->with(['user', 'subject', 'resourceType', 'academicField', 'institution'])
            ->latest('upload_date')
            ->paginate($perPage);
    }

    /**
     * Get all bookmarked files for a user.
     */
    public function getAllBookmarks(User $user, int $perPage = 12, string $search = '')
    {
        return DigitalFile::whereHas(
            'bookmarks',
            fn($q) => $q->where('user_id', $user->id)
        )
            ->when($search, fn($q) => $q->where(
                fn($q2) =>
                $q2->where('title', 'like', "%{$search}%")
                    ->orWhere('description', 'like', "%{$search}%")
                    ->orWhereJsonContains('tags', $search)
            ))
            ->with(['user', 'subject', 'resourceType', 'academicField', 'institution'])
            ->latest('upload_date')
            ->paginate($perPage);
    }

    // ─── Collections ───────────────────────────────────────────

    /**
     * Create a new file collection.
     */
    public function createCollection(User $user, array $data): FileCollection
    {
        return FileCollection::create([
            'user_id' => $user->id,
            'name' => $data['name'],
            'description' => $data['description'] ?? null,
            'visibility' => $data['visibility'] ?? 'private',
        ]);
    }

    /**
     * Update a collection.
     */
    public function updateCollection(User $user, int $collectionId, array $data): FileCollection
    {
        $collection = FileCollection::where('user_id', $user->id)
            ->findOrFail($collectionId);

        $collection->update([
            'name' => $data['name'],
            'description' => $data['description'] ?? $collection->description,
            'visibility' => $data['visibility'] ?? $collection->visibility,
        ]);

        return $collection;
    }

    /**
     * Delete a collection (items are cascade-deleted by FK).
     */
    public function deleteCollection(User $user, int $collectionId): bool
    {
        return (bool) FileCollection::where('user_id', $user->id)
            ->where('id', $collectionId)
            ->delete();
    }

    /**
     * Get all collections for a user with item counts.
     */
    public function getUserCollections(User $user): Collection
    {
        return FileCollection::where('user_id', $user->id)
            ->withCount('items')
            ->latest()
            ->get();
    }

    /**
     * Get files in a specific collection.
     */
    public function getCollectionFiles(User $user, int $collectionId, int $perPage = 12, string $search = '')
    {
        $collection = FileCollection::where('user_id', $user->id)
            ->findOrFail($collectionId);

        return DigitalFile::whereHas(
            'collectionItems',
            fn($q) => $q->where('file_collection_id', $collectionId)
        )
            ->when($search, fn($q) => $q->where(
                fn($q2) =>
                $q2->where('title', 'like', "%{$search}%")
                    ->orWhere('description', 'like', "%{$search}%")
                    ->orWhereJsonContains('tags', $search)
            ))
            ->with(['user', 'subject', 'resourceType', 'academicField', 'institution'])
            ->paginate($perPage);
    }

    /**
     * Add a bookmarked file to a collection.
     * The file must already be bookmarked.
     */
    public function addToCollection(User $user, int $collectionId, int $fileId): bool
    {
        // Verify ownership of collection
        $collection = FileCollection::where('user_id', $user->id)
            ->findOrFail($collectionId);

        // Verify bookmark exists
        $bookmarkExists = Bookmark::where('user_id', $user->id)
            ->where('file_id', $fileId)
            ->exists();

        if (!$bookmarkExists) {
            // Auto-bookmark it first
            Bookmark::create([
                'user_id' => $user->id,
                'file_id' => $fileId,
            ]);
        }

        // Prevent duplicates
        $exists = CollectionItem::where('file_collection_id', $collectionId)
            ->where('digital_file_id', $fileId)
            ->exists();

        if ($exists) {
            return false;
        }

        $maxSort = CollectionItem::where('file_collection_id', $collectionId)->max('sort_order') ?? 0;

        CollectionItem::create([
            'file_collection_id' => $collectionId,
            'digital_file_id' => $fileId,
            'sort_order' => $maxSort + 1,
        ]);

        return true;
    }

    /**
     * Remove a file from a collection (keeps the bookmark).
     */
    public function removeFromCollection(User $user, int $collectionId, int $fileId): bool
    {
        $collection = FileCollection::where('user_id', $user->id)
            ->findOrFail($collectionId);

        return (bool) CollectionItem::where('file_collection_id', $collectionId)
            ->where('digital_file_id', $fileId)
            ->delete();
    }

    /**
     * Get which collections a file belongs to for a given user.
     */
    public function getFileCollectionIds(User $user, int $fileId): array
    {
        return CollectionItem::whereHas(
            'collection',
            fn($q) => $q->where('user_id', $user->id)
        )
            ->where('digital_file_id', $fileId)
            ->pluck('file_collection_id')
            ->toArray();
    }
}
