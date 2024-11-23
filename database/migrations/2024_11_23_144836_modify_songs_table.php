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
        Schema::table('songs', function (Blueprint $table) {
            // Tambahkan kolom gambar
            $table->string('gambar')->nullable()->after('lirik');

            // Ubah audio_file menjadi nullable
            $table->string('audio_file')->nullable()->change();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('songs', function (Blueprint $table) {
            // Hapus kolom gambar
            $table->dropColumn('gambar');

            // Kembalikan audio_file menjadi not null
            $table->string('audio_file')->nullable(false)->change();
        });
    }
};
