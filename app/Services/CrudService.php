<?php

namespace App\Services;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class CrudService
{
    /**
     * Create a new record.
     */
    public function create(string $modelClass, array $data): Model
    {
        return $modelClass::create($data);
    }

    /**
     * Update an existing record.
     */
    public function update(string $modelClass, $id, array $data): ?Model
    {
        $item = $modelClass::find($id);
        if ($item) {
            $item->update($data);
            return $item;
        }
        return null;
    }

    /**
     * Delete a record.
     */
    public function delete(string $modelClass, $id): bool
    {
        $item = $modelClass::find($id);
        if ($item) {
            return $item->delete();
        }
        return false;
    }
}
