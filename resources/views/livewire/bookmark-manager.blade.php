{{-- Bookmark Manager: Modal on desktop, Offcanvas on mobile --}}
<div x-data="{
        show: @entangle('showModal'),
        get isDesktop() { return window.innerWidth >= 768 },
    }" x-on:resize.window="$el" x-cloak
    x-init="$watch('show', val => document.body.style.overflow = val ? 'hidden' : '')">

    {{-- ═══ DESKTOP MODAL (≥768px) ═══ --}}
    <template x-if="show && isDesktop">
        <div>
            {{-- Backdrop --}}
            <div style="position: fixed; inset: 0; background: rgba(0,0,0,0.5); backdrop-filter: blur(4px); z-index: 1050;"
                @click="show = false; $wire.close()"></div>
            {{-- Dialog --}}
            <div style="position: fixed; inset: 0; z-index: 1055; display: flex; align-items: center; justify-content: center; padding: 1rem;"
                @keydown.escape.window="show = false; $wire.close()">
                <div class="card shadow-lg border border-2"
                    style="width: 100%; max-width: 500px; max-height: 85vh; overflow: hidden;">
                    <div class="card-header border-bottom">
                        <h5 class="card-title d-flex align-items-center gap-2 m-0">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24"
                                fill="none" stroke="currentColor" stroke-width="2" class="icon">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                <path d="M18 7v14l-6 -4l-6 4v-14a4 4 0 0 1 4 -4h4a4 4 0 0 1 4 4z" />
                            </svg>
                            Save to Collection
                        </h5>
                        <button type="button" class="btn-close ms-auto" wire:click="close"
                            @click="show = false"></button>
                    </div>
                    <div class="card-body p-0" style="overflow-y: auto;">
                        @include('livewire.partials.bookmark-manager-body')
                    </div>
                </div>
            </div>
        </div>
    </template>

    {{-- ═══ MOBILE OFFCANVAS (<768px) ═══ --}} <template x-if="show && !isDesktop">
        <div>
            {{-- Backdrop --}}
            <div style="position: fixed; inset: 0; background: rgba(0,0,0,0.5); z-index: 1050;"
                @click="show = false; $wire.close()"></div>
            {{-- Bottom sheet --}}
            <div style="position: fixed; bottom: 0; left: 0; right: 0; z-index: 1055; height: 75vh; border-top-left-radius: 20px; border-top-right-radius: 20px; overflow: hidden;"
                class="card shadow-lg border-top border-start border-end">
                <div class="card-header border-bottom">
                    <h5 class="card-title d-flex align-items-center gap-2 m-0">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none"
                            stroke="currentColor" stroke-width="2" class="icon">
                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                            <path d="M18 7v14l-6 -4l-6 4v-14a4 4 0 0 1 4 -4h4a4 4 0 0 1 4 4z" />
                        </svg>
                        Save to Collection
                    </h5>
                    <button type="button" class="btn-close ms-auto" wire:click="close" @click="show = false"></button>
                </div>
                <div class="card-body p-0" style="overflow-y: auto;">
                    @include('livewire.partials.bookmark-manager-body')
                </div>
            </div>
        </div>
        </template>

</div>