<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class EducationalDataSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $fields = ['Engineering', 'Medical', 'Arts', 'Commerce', 'Science'];
        foreach ($fields as $field) {
            $fieldId = DB::table('academic_fields')->insertGetId([
                'name' => $field,
                'slug' => Str::slug($field),
                'created_at' => now(),
            ]);

            DB::table('subjects')->insert([
                ['name' => $field . '- Basics 101', 'code' => strtoupper(substr($field, 0, 3)) . '101'],
                ['name' => $field . '- Advanced', 'code' => strtoupper(substr($field, 0, 3)) . '201']
            ]);
        }
        $colleges = ['Delhi University', 'IIT Bombay', 'Anna University', 'Gujarat University'];
        foreach ($colleges as $college) {
            DB::table('institutions')->insert([
                'name' => $college,
                'country' => 'India',
                'is_verified' => 1,
            ]);
        }

    }
}

