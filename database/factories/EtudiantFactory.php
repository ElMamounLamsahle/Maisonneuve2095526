<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Etudiant;
use App\Models\Ville;

class EtudiantFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'nom' => $this->faker->name(),
            'adresse' => $this->faker->address(),
            'phone' => $this->faker->e164PhoneNumber(),
            'email' => $this->faker->unique()->safeEmail(),
            'date_naissance' => $this->faker->dateTimeBetween(date('Y') - 65 .'-01-01', date('Y') - 17 .'-12-31')->format('Y/m/d'),
            'ville_id' =>  $this->faker->randomElement(Ville::pluck('id'))
        ];
    }
}
