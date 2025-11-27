<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            // Adding the role column after 'status'
            // defined roles: user, admin, moderator
            $table->enum('role', ['user', 'admin', 'moderator'])
                ->default('user')
                ->after('status');
            $table->softDeletes();
        });

        // 1. Mime Types (for file validation and icons)
        Schema::create('mime_types', function (Blueprint $table) {
            $table->id();
            $table->string('extension', 20)->unique(); // e.g., 'pdf', 'jpg'
            $table->string('mime_type', 100); // e.g., 'application/pdf'
            $table->string('icon_class')->nullable(); // e.g., 'fa-file-pdf' (for UI)
            $table->timestamps();
        });

        // --- Digital File Lookups ---

        // 2. Academic Fields (Broad categories: Engineering, Medical, Arts)
        Schema::create('academic_fields', function (Blueprint $table) {
            $table->id();
            $table->string('name', 100)->unique();
            $table->string('slug')->unique();
            $table->timestamps();
        });

        // 3. Program/Streams (Specifics: Computer Science, MBBS, Economics)
        // Depends on academic_fields
        Schema::create('program_streams', function (Blueprint $table) {
            $table->id();
            $table->foreignId('academic_field_id')->constrained()->cascadeOnDelete();
            $table->string('name', 100);
            $table->string('slug');
            $table->timestamps();
            $table->unique(['academic_field_id', 'slug']); // unique per field
        });

        // 4. Academic Levels (Hierarchy: Undergraduate, Grade 12, PhD)
        Schema::create('academic_levels', function (Blueprint $table) {
            $table->id();
            $table->string('name', 50)->unique();
            $table->integer('level_order')->default(0); // Helper to sort (e.g., 10 for 1st Year, 20 for 2nd Year)
            $table->timestamps();
        });

        // 5. Resource Types (Content nature: Lecture Notes, Past Paper, Lab Report)
        Schema::create('resource_types', function (Blueprint $table) {
            $table->id();
            $table->string('name', 50)->unique();
            $table->string('slug')->unique();
            $table->timestamps();
        });

        // 6. Subjects (Specific topics: Data Structures, Anatomy)
        // Made standalone so they can be reused across streams
        Schema::create('subjects', function (Blueprint $table) {
            $table->id();
            $table->string('name', 100)->unique();
            $table->string('code', 20)->nullable()->index(); // e.g., CS101
            $table->timestamps();
        });

        // 7. Institutions (Universities, Colleges)
        Schema::create('institutions', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('city')->nullable();
            $table->string('country')->default('India');
            $table->string('website')->nullable();
            $table->string('domain')->nullable(); // e.g., 'iitb.ac.in' (useful for email verification)
            $table->boolean('is_verified')->default(false);
            $table->timestamps();
            $table->index('name'); // Critical for search performance
        });
        Schema::create('digital_files', function (Blueprint $table) {
            $table->id();
            $table->string('slug')->unique();

            // Ownership
            $table->foreignId('user_id')->constrained('users')->cascadeOnDelete();

            // Core Content
            $table->string('title'); // Mandatory
            $table->text('description')->nullable();
            $table->string('file_path'); // Mandatory

            // --- NEW Categorization References ---

            // 1. Broad Field (e.g., Engineering)
            $table->foreignId('academic_field_id')->nullable()
                ->constrained('academic_fields')->nullOnDelete();

            // 2. Specific Stream (e.g., Computer Science)
            $table->foreignId('program_stream_id')->nullable()
                ->constrained('program_streams')->nullOnDelete();

            // 3. Level (e.g., Undergraduate, Grade 12)
            $table->foreignId('academic_level_id')->nullable()
                ->constrained('academic_levels')->nullOnDelete();

            // 4. Subject (e.g., Data Structures)
            $table->foreignId('subject_id')->nullable()
                ->constrained('subjects')->nullOnDelete();

            // 5. Resource Type (e.g., Lecture Notes, Past Paper)
            $table->foreignId('resource_type_id')->nullable()
                ->constrained('resource_types')->nullOnDelete();

            // 6. Institution (e.g., IIT Bombay)
            $table->foreignId('institution_id')->nullable()
                ->constrained('institutions')->nullOnDelete();

            // --- File Details ---
            $table->string('file_type', 20)->nullable(); // extension: pdf, jpg
            $table->unsignedBigInteger('file_size')->nullable(); // in bytes
            $table->string('content_hash', 64)->nullable()->index(); // SHA256 for duplicate check

            // --- Discovery ---
            $table->json('tags')->nullable(); // Searchable tags
            $table->json('keywords')->nullable(); // SEO keywords

            // --- Status & Visibility ---
            $table->boolean('verified')->default(false); // Has admin verified this?
            $table->enum('status', ['active', 'pending', 'rejected', 'archived'])->default('active');
            $table->enum('visibility', ['public', 'private', 'restricted'])->default('public');

            // --- Stats ---
            $table->unsignedInteger('download_count')->default(0);
            $table->decimal('average_rating', 3, 2)->nullable();

            // --- Timestamps ---
            $table->timestamp('upload_date')->useCurrent();
            $table->timestamp('last_updated')->useCurrent()->useCurrentOnUpdate();

            // --- Indexes for Filtering Performance ---
            // Composite index for the most common "Browse" query
            $table->index(['status', 'visibility', 'academic_field_id', 'resource_type_id'], 'idx_main_browse');

            // Fulltext search for search bar
            $table->fullText(['title', 'description']);

            $table->softDeletes();
        });
        // 1. Accessed Files (For Token Logic)
        // "Used only to detect if user has NEVER previewed/downloaded"
        Schema::create('accessed_files', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained('users')->cascadeOnDelete();
            $table->foreignId('file_id')->constrained('digital_files')->cascadeOnDelete();
            $table->timestamp('first_accessed_at')->useCurrent();

            // UNIQUE constraint ensures we only store the FIRST time they accessed it.
            // This makes querying "Has this user seen this file?" extremely fast.
            $table->unique(['user_id', 'file_id']);
        });

        // 2. Downloads (History)
        Schema::create('downloads', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained('users')->cascadeOnDelete();
            $table->foreignId('file_id')->constrained('digital_files')->cascadeOnDelete();
            $table->timestamp('downloaded_at')->useCurrent();
            $table->ipAddress('ip_address')->nullable(); // Optional: for security/analytics
        });

        // 3. Bookmarks (Saved Items)
        Schema::create('bookmarks', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained('users')->cascadeOnDelete();
            $table->foreignId('file_id')->constrained('digital_files')->cascadeOnDelete();
            $table->timestamp('created_at')->useCurrent();

            // Prevent duplicate bookmarks for the same file by the same user
            $table->unique(['user_id', 'file_id']);
        });

        // 4. Feedback (Ratings & Reviews)
        Schema::create('feedback', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained('users')->cascadeOnDelete();
            $table->foreignId('file_id')->constrained('digital_files')->cascadeOnDelete();

            $table->tinyInteger('rating')->unsigned(); // 1 to 5
            $table->text('comment')->nullable();

            $table->boolean('is_approved')->default(true); // Auto-approve or moderate
            $table->timestamps();

            // Optional: Ensure user can only rate a file once
            $table->unique(['user_id', 'file_id']);
        });

        // 5. Reports (Modular / Polymorphic)
        Schema::create('reports', function (Blueprint $table) {
            $table->id();
            $table->foreignId('reporter_id')->constrained('users')->cascadeOnDelete();

            // Polymorphic Columns:
            // reportable_id (e.g., 5)
            // reportable_type (e.g., "App\Models\DigitalFile" or "App\Models\User")
            $table->morphs('reportable');

            $table->string('reason'); // e.g., "Copyright", "Spam", "Abusive"
            $table->text('details')->nullable(); // Extra description

            $table->enum('status', ['pending', 'reviewed', 'resolved', 'dismissed'])->default('pending');

            $table->foreignId('resolved_by')->nullable()->constrained('users')->nullOnDelete();
            $table->timestamp('resolved_at')->nullable();

            $table->timestamps();

            // Index for filtering reports by status
            $table->index('status');
        });

        // 1. User Settings (One-to-One with Users)
        Schema::create('user_settings', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained('users')->cascadeOnDelete();

            // --- Profile & UI ---
            $table->enum('profile_visibility', ['public', 'private'])->default('public');
            $table->enum('theme', ['light', 'dark', 'system'])->default('system');

            // --- Feature Toggles ---
            $table->boolean('enable_todo_list')->default(true); // Toggle the Todo feature
            $table->boolean('allow_file_feedback')->default(true); // Allow comments on my files

            // --- Notifications: General ---
            $table->boolean('newsletter_subscribed')->default(true);
            $table->boolean('email_notifications')->default(true); // Master switch for emails

            // --- Notifications: Triggers & Thresholds ---
            // "Notify me when someone downloads my file"
            $table->boolean('notify_on_download')->default(true);
            $table->unsignedInteger('notify_download_threshold')->default(1); // e.g., "Every 1 download" or "Every 10 downloads"

            // "Notify me when my tokens change (credit/deduct)"
            $table->boolean('notify_token_updates')->default(true);
            $table->unsignedInteger('notify_token_threshold')->default(0); // 0 = Notify on any change

            $table->timestamps();
        });

        // 2. Notifications (System & User)
        Schema::create('notifications', function (Blueprint $table) {
            $table->id(); // Using ID, but UUID is also common for notifications
            $table->foreignId('user_id')->constrained('users')->cascadeOnDelete();

            $table->string('type')->index(); // e.g., 'download', 'system', 'alert', 'token'
            $table->string('title');
            $table->text('message');
            $table->string('action_url')->nullable(); // Link to the file or page

            $table->boolean('is_read')->default(false);
            $table->timestamp('read_at')->nullable();
            $table->timestamps();
        });

        // 3. Todo List (Personal Task Manager)
        Schema::create('todos', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained('users')->cascadeOnDelete();

            $table->string('task');
            $table->boolean('is_completed')->default(false);
            $table->enum('priority', ['low', 'medium', 'high'])->default('medium');
            $table->timestamp('due_date')->nullable();

            $table->timestamps();
            $table->index(['user_id', 'is_completed']); // Fast lookup for "My Pending Tasks"
        });

        // 4. Activity Logs (Audit Trail)
        Schema::create('activity_logs', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->nullable()->constrained()->nullOnDelete(); // Nullable incase user is deleted but we want the log

            $table->string('action'); // e.g., 'uploaded_file', 'changed_password', 'downloaded_file'
            $table->text('description')->nullable();

            // Polymorphic Relation (Optional but powerful)
            // Allows linking log to a specific File ID, Course ID, etc.
            $table->nullableMorphs('subject'); // Creates subject_id and subject_type

            $table->ipAddress('ip_address')->nullable();
            $table->string('user_agent')->nullable(); // Browser details

            $table->timestamps();
        });

    }

    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn('role');
        });
        Schema::dropIfExists('institutions');
        Schema::dropIfExists('subjects');
        Schema::dropIfExists('resource_types');
        Schema::dropIfExists('academic_levels');
        Schema::dropIfExists('program_streams');
        Schema::dropIfExists('academic_fields');
        Schema::dropIfExists('mime_types');
        Schema::dropIfExists('digital_files');

        Schema::dropIfExists('reports');
        Schema::dropIfExists('feedback');
        Schema::dropIfExists('bookmarks');
        Schema::dropIfExists('downloads');
        Schema::dropIfExists('accessed_files');


        Schema::dropIfExists('activity_logs');
        Schema::dropIfExists('todos');
        Schema::dropIfExists('notifications');
        Schema::dropIfExists('user_settings');
    }
};