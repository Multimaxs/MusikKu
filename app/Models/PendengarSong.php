<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PendengarSong extends Model
{
    use HasFactory;

    // Nama tabel yang digunakan
    protected $table = 'pendengar_song';

    // Kolom yang dapat diisi (mass assignable)
    protected $fillable = [
        'pendengar_id',
        'song_id',
    ];

    // Relasi ke model Pendengar
    public function pendengar()
    {
        return $this->belongsTo(Pendengar::class, 'pendengar_id');
    }

    // Relasi ke model Song
    public function song()
    {
        return $this->belongsTo(Song::class, 'song_id');
    }
}
