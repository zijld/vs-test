<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class People extends Model
{
    use HasFactory;

    protected $fillable = [
        'height',
        'mass',
        'hair_color',
        'skin_color',
        'eye_color',
        'birth_year',
        'gender',
        'name',
        'planet_external_id',
        'external_id',
    ];

    public function planet()
    {
        return $this->hasOne(Planet::class, 'external_id', 'planet_external_id');
    }
}
