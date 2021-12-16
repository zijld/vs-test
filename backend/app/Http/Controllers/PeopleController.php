<?php

namespace App\Http\Controllers;

use App\Http\Resources\PeopleResource;
use App\Models\People;
use Illuminate\Http\Request;

class PeopleController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware(['auth:sanctum']);
    // }

    public function index()
    {
        return PeopleResource::collection(People::with('planet')->paginate(10));
    }


    public function show(People $people)
    {
        return new PeopleResource($people->load('planet'));
    }
}
