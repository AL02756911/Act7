<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Curso extends Model
{

    use HasFactory;

    public function materialDidactico()
    {
    return $this->hasMany(MaterialDidactico::class);
    }

    public function grupo()
    {
    return $this->belongsTo(Grupo::class);
    }
}
