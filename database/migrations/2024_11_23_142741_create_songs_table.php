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
        Schema::create('songs', function (Blueprint $table) {
            $table->id(); // Primary Key
            $table->string('judul');
            $table->text('deskripsi')->nullable();
            $table->longText('lirik')->nullable();
            $table->string('audio_file');
            $table->string('artis_id')->nullable();
            $table->string('genre_id')->nullable();
            $table->string('mood_id')->nullable();
            $table->timestamps();

            // Foreign keys
            $table->foreign('artis_id')->references('tipe_id')->on('sections')->onDelete('cascade');
            $table->foreign('genre_id')->references('tipe_id')->on('sections')->onDelete('cascade');
            $table->foreign('mood_id')->references('tipe_id')->on('sections')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('songs');
    }
};
