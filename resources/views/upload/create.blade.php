@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Upload Study Material</div>

                    <div class="card-body">
                        <form method="POST" action="{{ route('upload.store') }}" enctype="multipart/form-data">
                            @csrf

                            <div class="mb-3">
                                <label for="title" class="form-label">File Title</label>
                                <input type="text" class="form-control" name="title" required>
                            </div>

                            <div class="mb-3">
                                <label for="description" class="form-label">Description (Optional)</label>
                                <textarea class="form-control" name="description" rows="3"></textarea>
                            </div>

                            <div class="mb-3">
                                <label for="document" class="form-label">Select File (PDF, DOCX)</label>
                                <input type="file" class="form-control" name="document" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Institution</label>
                                <select name="institution_id" class="form-select" required>
                                    <option value="">Select College...</option>
                                    @foreach($institutions as $id => $name)
                                        <option value="{{ $id }}">{{ $name }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Subject</label>
                                <select name="subject_id" class="form-select" required>
                                    <option value="">Select Subject...</option>
                                    @foreach($subjects as $id => $name)
                                        <option value="{{ $id }}">{{ $name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Academic Field</label>
                                <select name="academic_field_id" class="form-select" required>
                                    <option value="">Select Field...</option>
                                    @foreach($academic_fields as $id => $name)
                                        <option value="{{ $id }}">{{ $name }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <button type="submit" class="btn btn-primary">Upload File</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection