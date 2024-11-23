<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class section extends Model
{
    use HasFactory;

    protected $primaryKey = 'tipe_id';
    public $incrementing = false; // karena tipe_id bukan auto increment
    protected $keyType = 'string';

    protected $fillable = ['tipe_id', 'title', 'thumbnail', 'content', 'post_as'];

    public function songs()
{
    return Song::where('artis_id', $this->tipe_id)
        ->orWhere('mood_id', $this->tipe_id)
        ->orWhere('genre_id', $this->tipe_id)
        ->get();
}
}
