<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UsersTableSeeder extends Seeder
{
    public function run()
    {
        DB::table('users')->insert([
            [
                'name'   => 'Admon',
                'email'    => 'admon@robotics.com',
                'password' => Hash::make('Adm@2022'),
                'rol'      => 'Administrativo',
                'grupo_id' => null,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name'   => 'Tecmilenio',
                'email'    => 'tecmilenio@robotics.com',
                'password' => Hash::make('Adm@2022'),
                'rol'      => 'Profesor',
                'grupo_id' => null,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name'   => 'Estudiante',
                'email'    => 'student@robotics.com',
                'password' => Hash::make('Adm@2022'),
                'rol'      => 'Estudiante',
                'grupo_id' => null,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}
