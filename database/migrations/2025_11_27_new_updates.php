<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
return new class extends Migration {

    public function up()
    {
        // 1. Token Ledger (Wallet History)
        Schema::create('token_transactions', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained()->cascadeOnDelete();

            $table->integer('amount'); // Can be positive (+10) or negative (-5)
            $table->integer('balance_after'); // Snapshot of balance at that moment

            $table->string('type'); // e.g., 'upload_reward', 'download_fee', 'referral_bonus', 'admin_adjustment'
            $table->string('description')->nullable(); // "Downloaded: Intro to Physics"

            // Polymorphic: Link transaction to a File, User (referral), or Payment
            $table->nullableMorphs('reference'); // reference_id, reference_type

            $table->timestamps();
            $table->index(['user_id', 'type']);
        });

        // 2. Collections (Study Lists / Playlists)
        Schema::create('file_collections', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained()->cascadeOnDelete();
            $table->string('name');
            $table->text('description')->nullable();
            $table->enum('visibility', ['public', 'private'])->default('public');
            $table->timestamps();
        });

        // Pivot table for Collections <-> Files
        Schema::create('collection_items', function (Blueprint $table) {
            $table->id();
            $table->foreignId('file_collection_id')->constrained()->cascadeOnDelete();
            $table->foreignId('digital_file_id')->constrained('digital_files')->cascadeOnDelete();
            $table->integer('sort_order')->default(0); // To order items in the list
            $table->timestamps();

            $table->unique(['file_collection_id', 'digital_file_id']); // No duplicates in one list
        });

        // 3. User Follows (Social)
        Schema::create('user_follows', function (Blueprint $table) {
            $table->id();
            $table->foreignId('follower_id')->constrained('users')->cascadeOnDelete();
            $table->foreignId('following_id')->constrained('users')->cascadeOnDelete();
            $table->timestamp('created_at')->useCurrent();

            $table->unique(['follower_id', 'following_id']); // Can't follow twice
        });
    }

    public function down()
    {
        Schema::dropIfExists('user_follows');
        Schema::dropIfExists('collection_items');
        Schema::dropIfExists('file_collections');
        Schema::dropIfExists('token_transactions');
    }
} ?>