<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PendengarSection extends Model
{
    use HasFactory;

    // Nama tabel yang digunakan
    protected $table = 'pendengar_section';

    // Kolom yang dapat diisi (mass assignable)
    protected $fillable = [
        'pendengar_id',
        'section_id',
        'type',
    ];

    // Relasi ke model Pendengar
    public function pendengar()
    {
        return $this->belongsTo(Pendengar::class, 'pendengar_id');
    }

    public function section()
    {
    return $this->hasOne(Section::class, 'tipe_id', 'section_id');
    }
}
