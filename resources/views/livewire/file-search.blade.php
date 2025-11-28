<div>
    <div class="card mb-4">
        <div class="card-body row g-3">
            <div class="col-md-6">
                <input wire:model.live="search" type="text" class="form-control" placeholder="Search files...">
            </div>

            <div class="col-md-2">
                <select wire:model.live="institution_id" class="form-select">
                    <option value="">All Colleges</option>
                    @foreach($institutions as $id => $name)
                        <option value="{{ $id }}">{{ $name }}</option>
                    @endforeach
                </select>
            </div>
            <div class="col-md-2">
                <select wire:model.live="subject_id" class="form-select">
                    <option value="">All Subjects</option>
                    @foreach($subjects as $id => $name)
                        <option value="{{ $id }}">{{ $name }}</option>
                    @endforeach
                </select>
            </div>

            <div class="col-md-2">
                <div wire:loading class="btn btn-primary disabled">
                    Searching... ⏳
                </div>
            </div>
        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Title</th>
                        <th>Author</th>
                        <th>Date</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($files as $file)
                        <tr>
                            <td>{{ $file->title }}</td>
                            <td>{{ $file->user->username }}</td>
                            <td>{{ $file->upload_date->diffForHumans() }}</td>
                            <td>
                                <div class="btn-group" role="group" aria-label="Basic example">
                                    <a wire:navigate href="{{ route('file.download', $file->slug) }}" type="button"
                                        class="btn btn-primary">Download
                                        File</a>
                                    <button type="button" class="btn btn-danger">Remove File</button>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>

            {{ $files->links() }}
        </div>
    </div>
</div>