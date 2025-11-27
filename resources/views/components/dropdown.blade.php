@props([
    'align' => 'right',
    'width' => '200px', 
])

@php
$alignment = match ($align) {
    'left' => 'start-0',
    default => 'end-0',
};
@endphp

<div class="position-relative" 
     x-data="{ open: false }" 
     @click.outside="open = false">

    <!-- Trigger -->
    <div @click="open = ! open" style="cursor:pointer;">
        {{ $trigger }}
    </div>

    <!-- Dropdown Menu -->
    <div class="dropdown-menu show mt-2 shadow"
         x-show="open"
         x-transition
         @click="open = false"
         :style="'display:block; position:absolute; '.$alignment.'; width:{{ $width }};'"
    >
        {{ $content }}
    </div>

</div>
