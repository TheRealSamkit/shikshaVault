<div>
    <div x-data="{ seeModal: @entangle('showModal') }" x-seeModal="seeModal" x-transition.opacity
        class="modal modal-blur fade" :class="{ 'show': seeModal }" id="image-preview-modal" tabindex="-1" role="dialog"
        aria-hidden="true" :style="seeModal ? 'display: block; background-color: rgba(0,0,0,0.9);' : 'display: none;'"
        x-cloak>
        <div class="modal-dialog modal-full-width modal-dialog-centered" role="document">
            <div class="modal-content shadow-lg bg-dark border-0">
                <div class="modal-header border-0 p-2">
                    <h5 class="modal-title text-white ps-2">{{ $title }}</h5>
                    <button type="button" class="btn-close btn-close-white" wire:click="close" @click="seeModal = false"
                        aria-label="Close"></button>
                </div>
                <div class="modal-body p-0 d-flex justify-content-center align-items-center" style="height: 90vh;">
                    @if($imageUrl)
                        <img src="{{ $imageUrl }}" class="img-fluid"
                            style="max-height: 100%; max-width: 100%; object-fit: contain;" alt="Preview">
                    @else
                        <div class="spinner-border text-light" role="status"></div>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>