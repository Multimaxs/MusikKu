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
        Schema::table('pendengar', function (Blueprint $table) {
            // Menambahkan kolom untuk menyimpan ID lagu, artis, genre, dan mood
            $table->string('profile_picture')->nullable()->after('id');
            $table->unsignedBigInteger('song_id')->nullable();
            $table->string('artis_id')->nullable();
            $table->string('genre_id')->nullable();
            $table->string('mood_id')->nullable();

            // Menambahkan foreign keys
            $table->foreign('song_id')->references('id')->on('songs')->onDelete('cascade');
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
        Schema::table('pendengar', function (Blueprint $table) {
            // Menghapus kolom relasi
            $table->dropForeign(['song_id']);
            $table->dropForeign(['artis_id']);
            $table->dropForeign(['genre_id']);
            $table->dropForeign(['mood_id']);
            $table->dropColumn('gambar');
            $table->dropColumn('song_id');
            $table->dropColumn('artis_id');
            $table->dropColumn('genre_id');
            $table->dropColumn('mood_id');
        });
    }
};
