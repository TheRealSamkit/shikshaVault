<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up()
    {
        // Table 1: Link Program ↔ Level
        Schema::create('program_stream_levels', function (Blueprint $table) {
            $table->id();
            $table->foreignId('program_stream_id')->constrained()->cascadeOnDelete();
            $table->foreignId('academic_level_id')->constrained()->cascadeOnDelete();
            $table->timestamps();

            // Prevent duplicate (program, level)
            $table->unique(['program_stream_id', 'academic_level_id']);
        });

        // Table 2: Link Program ↔ Level ↔ Subject
        Schema::create('program_stream_level_subjects', function (Blueprint $table) {
            $table->id();
            $table->foreignId('program_stream_level_id')
                ->constrained('program_stream_levels')
                ->cascadeOnDelete();

            $table->foreignId('subject_id')
                ->constrained('subjects')
                ->cascadeOnDelete();

            $table->timestamps();

            // Prevent duplicate mapping
            $table->unique(['program_stream_level_id', 'subject_id'], 'psls_program_level_subject_unique');
        });
    }

    public function down()
    {
        // drop child table first
        Schema::dropIfExists('program_stream_level_subjects');
        Schema::dropIfExists('program_stream_levels');
    }
};
