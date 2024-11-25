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
        Schema::create('pendengar_section', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('pendengar_id');
            $table->string('section_id'); // Ini untuk artis_id, genre_id, mood_id
            $table->enum('type', ['ARTIS', 'GENRE', 'MOOD']); // Tipe dari section (ARTIS, GENRE, MOOD)
            $table->timestamps();

            $table->foreign('pendengar_id')->references('id')->on('pendengar')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pendengar_section');
    }
};
