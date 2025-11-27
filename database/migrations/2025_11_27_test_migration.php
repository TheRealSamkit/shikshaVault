<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->string('avatar', length: 150)->after('username');
            $table->integer('tokens')->after('remember_token');
            $table->enum('status', ['active', 'blocked'])->after('tokens');
            $table->enum('profile_visibility', ['public', 'private'])->after('status');
        });
    }

    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn(['tokens', 'avatar', 'status', 'profile_visibility']);
        });
    }
}

    ?>