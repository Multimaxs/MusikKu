<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('sections', function (Blueprint $table) {
            $table->string('tipe_id')->primary(); // Primary Key
            $table->string('title');
            $table->string('thumbnail')->nullable();
            $table->longText('content')->nullable();
            $table->enum('post_as', ['ARTIS', 'MOOD', 'GENRE']);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sections');
    }
};