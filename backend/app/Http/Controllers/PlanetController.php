<?php

namespace App\Http\Controllers;

use App\Http\Resources\PlanetResource;
use App\Models\Planet;
use Illuminate\Http\Request;

class PlanetController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware(['auth:sanctum']);
    // }

    public function index()
    {
        $planets = Planet::query()->with('people')->paginate(10);

        return PlanetResource::collection($planets);
    }


    public function show(Planet $planet)
    {
        return new PlanetResource($planet->load('people'));
    }
}
