<div class="{{ $test }}">
    <div class="card">
        <div class="card-header mb-0 justify-content-between">
            <div class="card-title">{{ $title }}</div>
            <div class="wrapper d-flex">
                <input type="text" wire:model.live.debounce.300ms="search" class="form-control form-control-sm"
                    placeholder="Search {{ $title }}..">

                <a href="#" wire:click.prevent="$dispatch('create-{{ Str::kebab($title) }}')"
                    class="btn btn-action p-0">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                        stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                        class="icon icon-tabler icons-tabler-outline icon-tabler-plus">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                        <path d="M12 5l0 14" />
                        <path d="M5 12l14 0" />
                    </svg>
                </a>

                <a href="#" class="btn btn-action" data-bs-toggle="dropdown">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                        stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                        class="icon icon-tabler icons-tabler-outline icon-tabler-dots-vertical m-0">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                        <path d="M12 12m-1 0a1 1 0 1 0 2 0a1 1 0 1 0 -2 0" />
                        <path d="M12 19m-1 0a1 1 0 1 0 2 0a1 1 0 1 0 -2 0" />
                        <path d="M12 5m-1 0a1 1 0 1 0 2 0a1 1 0 1 0 -2 0" />
                    </svg>
                </a>
            </div>
        </div>

        <div class="card-body">
            <h1 wire:loading>Loading<span class="animated-dots"></span></h1>

            <div class="table-responsive" wire:loading.remove>
                <table class="table table-sm">
                    <thead>
                        <tr>
                            <th class="text-center">#</th>
                            @foreach($columns as $col)
                                <th>{{ $col['label'] }}</th>
                            @endforeach
                            <th class="w-1"></th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($items as $item)
                            <tr wire:key="row-{{ $item->id }}">
                                <td class="text-center align-middle">{{ $item->id }}</td>

                                @foreach($columns as $col)
                                    <td class="align-middle">{{ $item->{$col['key']} }}</td>
                                @endforeach

                                <td>
                                    <div class="dropdown">
                                        <a href="#" class="btn dropdown-toggle btn-action" data-bs-toggle="dropdown">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                stroke-linecap="round" stroke-linejoin="round"
                                                class="icon icon-tabler icons-tabler-outline icon-tabler-dots-vertical m-0">
                                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                <path d="M12 12m-1 0a1 1 0 1 0 2 0a1 1 0 1 0 -2 0" />
                                                <path d="M12 19m-1 0a1 1 0 1 0 2 0a1 1 0 1 0 -2 0" />
                                                <path d="M12 5m-1 0a1 1 0 1 0 2 0a1 1 0 1 0 -2 0" />
                                            </svg>
                                        </a>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#"
                                                wire:click.prevent="$dispatch('edit-item', { id: {{ $item->id }} })">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                    viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                    stroke-linecap="round" stroke-linejoin="round"
                                                    class="icon icon-tabler icons-tabler-outline icon-tabler-pencil">
                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                    <path d="M4 20h4l10.5 -10.5a2.828 2.828 0 1 0 -4 -4l-10.5 10.5v4" />
                                                    <path d="M13.5 6.5l4 4" />
                                                </svg>
                                                Edit
                                            </a>
                                            <a class="dropdown-item" href="#"
                                                wire:click.prevent="$dispatch('confirm-delete', { id: {{ $item->id }}, model: '{{ $title }}' })">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                    viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                    stroke-linecap="round" stroke-linejoin="round"
                                                    class="icon icon-tabler icons-tabler-outline icon-tabler-trash">
                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                    <path d="M4 7l16 0" />
                                                    <path d="M10 11l0 6" />
                                                    <path d="M14 11l0 6" />
                                                    <path d="M5 7l1 12a2 2 0 0 0 2 2h8a2 2 0 0 0 2 -2l1 -12" />
                                                    <path d="M9 7v-3a1 1 0 0 1 1 -1h4a1 1 0 0 1 1 1v3" />
                                                </svg>
                                                Delete
                                            </a>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>

                {{ $items->links('livewire.custom-pagination') }}
            </div>
        </div>
    </div>

</div>

@script
<script>
    $wire.on('confirm-delete', (event) => {
        Swal.fire({
            title: "Are you sure?",
            text: "You won't be able to revert this!",
            icon: "warning",
            showCancelButton: true,
            confirmButtonColor: "#3085d6",
            cancelButtonColor: "#d33",
            confirmButtonText: "Yes, delete it!",
            theme: 'auto',
            reverseButtons: true,
            focusConfirm: true,
            customClass: {
                popup: 'swal-popup',
                confirmButton: 'btn btn-danger mx-2 fs-2',
                cancelButton: 'btn btn-default mx-2 fs-2'
            },
        }).then((result) => {
            if (result.isConfirmed) {
                $wire.dispatch("destroy-item", { id: event.id, model: event.model });
            }
        });
    });
</script>
@endscript