<div class="w-100 d-flex mt-3">
    @if ($paginator->hasPages())
        @php
            // 1. Check if 'side' was passed in the links() array, otherwise default to 1
            $side = $side ?? 1;

            // 2. Calculate range
            $start = max(1, $paginator->currentPage() - $side);
            $end = min($paginator->lastPage(), $paginator->currentPage() + $side);
        @endphp

        <ul class="pagination mx-auto">
            {{-- PREVIOUS --}}
            @if ($paginator->onFirstPage())
                <li class="page-item disabled" aria-disabled="true">
                    <span class="page-link" aria-hidden="true">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                            stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                            class="icon icon-1">
                            <path d="M15 6l-6 6l6 6" />
                        </svg>
                    </span>
                </li>
            @else
                <li class="page-item">
                    {{-- Note: We use previousPage('pageName') logic automatically via Livewire --}}
                    <button type="button" class="page-link" wire:click="previousPage('{{ $paginator->getPageName() }}')"
                        rel="prev">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                            stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                            class="icon icon-1">
                            <path d="M15 6l-6 6l6 6" />
                        </svg>
                    </button>
                </li>
            @endif

            {{-- NUMBERS --}}
            @for ($page = $start; $page <= $end; $page++)
                @if ($page == $paginator->currentPage())
                    <li class="page-item active" aria-current="page">
                        <span class="page-link">{{ $page }}</span>
                    </li>
                @else
                    <li class="page-item">
                        <button type="button" class="page-link"
                            wire:click="gotoPage({{ $page }}, '{{ $paginator->getPageName() }}')">{{ $page }}</button>
                    </li>
                @endif
            @endfor

            {{-- NEXT --}}
            @if ($paginator->hasMorePages())
                <li class="page-item">
                    <button type="button" class="page-link" wire:click="nextPage('{{ $paginator->getPageName() }}')" rel="next">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                            stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                            class="icon icon-1">
                            <path d="M9 6l6 6l-6 6" />
                        </svg>
                    </button>
                </li>
            @else
                <li class="page-item disabled" aria-disabled="true">
                    <span class="page-link" aria-hidden="true">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                            stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                            class="icon icon-1">
                            <path d="M9 6l6 6l-6 6" />
                        </svg>
                    </span>
                </li>
            @endif
        </ul>
    @endif
</div>