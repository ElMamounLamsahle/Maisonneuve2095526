<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class UserFactory extends Factory
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
            'date_naissance' => $this->faker->dateTimeBetween(date('Y') - 65 .'-01-01', date('Y') - 17 .'-12-31')->format('Y/m/d'),
            'phone' => $this->faker->e164PhoneNumber(),
            'adresse' => $this->faker->address(),
            'ville_id' =>  $this->faker->randomElement(Ville::pluck('id')),
            'email' => $this->faker->unique()->safeEmail(),
            'email_verified_at' => now(),
            'password' => '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', // password 1234567
            'remember_token' => Str::random(10),
        ];
    }

    /**
     * Indicate that the model's email address should be unverified.
     *
     * @return \Illuminate\Database\Eloquent\Factories\Factory
     */
    public function unverified()
    {
        return $this->state(function (array $attributes) {
            return [
                'email_verified_at' => null,
            ];
        });
    }
}
