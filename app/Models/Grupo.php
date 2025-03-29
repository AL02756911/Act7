<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Grupo extends Model
{
    public function estudiantes()
    {
    return $this->hasMany(User::class);
    }

    public function cursos()
    {
    return $this->hasMany(Curso::class);
    }
}
