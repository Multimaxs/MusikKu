<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class song extends Model
{
    use HasFactory;

    protected $fillable = [
        'judul',
        'deskripsi',
        'lirik',
        'gambar',
        'audio_file',
        'artis_id',
        'genre_id',
        'mood_id',
    ];

    public function artis()
    {
        return $this->belongsTo(Section::class, 'artis_id', 'tipe_id');
    }

    public function genre()
    {
        return $this->belongsTo(Section::class, 'genre_id', 'tipe_id');
    }

    public function mood()
    {
        return $this->belongsTo(Section::class, 'mood_id', 'tipe_id');
    }
}
