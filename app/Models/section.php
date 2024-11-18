<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class section extends Model
{
    protected $fillable = ['title', 'thumbnail', 'content', 'post_as'];
}
