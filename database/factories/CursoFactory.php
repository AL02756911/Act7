<?php

namespace Database\Factories;

use App\Models\Curso;
use Illuminate\Database\Eloquent\Factories\Factory;

class CursoFactory extends Factory
{
    protected $model = Curso::class;

    public function definition()
    {
        $kits = ['StarterKit', 'Educational Robotics Kit', 'Kit5'];

        return [
            'course_key'   => 'Rob' . $this->faker->unique()->numberBetween(100, 999),
            'titulo'       => $this->faker->sentence(3),
            'caratula'     => $this->faker->imageUrl(640, 480, 'technics'),
            'contenido'    => $this->faker->paragraph,
            'kit_robotica' => $this->faker->randomElement($kits),
            'created_at'   => now(),
            'updated_at'   => now(),
        ];
    }
}
