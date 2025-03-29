<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class KitsTableSeeder extends Seeder
{
    public function run()
    {
        DB::table('kits')->insert([
            ['nombre' => 'StarterKit', 'created_at' => now(), 'updated_at' => now()],
            ['nombre' => 'Educational Robotics Kit', 'created_at' => now(), 'updated_at' => now()],
            ['nombre' => 'Kit5', 'created_at' => now(), 'updated_at' => now()],
        ]);
    }
}
