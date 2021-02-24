<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Employee;
use App\User;
use Faker\Generator as Faker;
use Illuminate\Support\Str;

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
*/

$factory->define(Employee::class, function (Faker $faker) {
    return [
        'employee_id' => $faker->ssn,
        'dept_id' => 1,
        'name' => $faker->name,
        'email' => $faker->unique()->safeEmail,
        'contact' => $faker->unique()->phoneNumber,
        'cnic' => $faker->ssn,
        'address' => $faker->address
    ];
});
