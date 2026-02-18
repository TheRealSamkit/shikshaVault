{{-- Reusable edit collection form partial --}}
<form wire:submit.prevent="updateCollection">
    <div class="mb-3">
        <label class="form-label required">Name</label>
        <input type="text" class="form-control @error('editName') is-invalid @enderror" wire:model="editName">
        @error('editName') <div class="invalid-feedback">{{ $message }}</div> @enderror
    </div>

    <div class="mb-3">
        <label class="form-label">Description</label>
        <textarea class="form-control" wire:model="editDescription" rows="2"></textarea>
    </div>

    <div class="mb-3">
        <label class="form-label">Visibility</label>
        <div class="form-selectgroup">
            <label class="form-selectgroup-item">
                <input type="radio" wire:model="editVisibility" value="private" class="form-selectgroup-input">
                <span class="form-selectgroup-label">Private</span>
            </label>
            <label class="form-selectgroup-item">
                <input type="radio" wire:model="editVisibility" value="public" class="form-selectgroup-input">
                <span class="form-selectgroup-label">Public</span>
            </label>
        </div>
    </div>

    <div class="d-flex gap-2">
        <button type="button" class="btn btn-ghost flex-fill" wire:click="$set('showEditModal', false)">Cancel</button>
        <button type="submit" class="btn btn-primary flex-fill">Save Changes</button>
    </div>
</form>