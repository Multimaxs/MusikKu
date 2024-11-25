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
        Schema::create('pendengar_song', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('pendengar_id');
            $table->unsignedBigInteger('song_id');
            $table->timestamps();

            $table->foreign('pendengar_id')->references('id')->on('pendengar')->onDelete('cascade');
            $table->foreign('song_id')->references('id')->on('songs')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pendengar_song');
    }
};
