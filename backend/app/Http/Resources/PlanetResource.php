<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class PlanetResource extends JsonResource
{

    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'name' => $this->name,
            'diameter' => $this->diameter,
            'rotation_period' => $this->rotation_period,
            'orbital_period' => $this->orbital_period,
            'gravity' => $this->gravity,
            'population' => $this->population,
            'climate' => $this->climate,
            'terrain' => $this->terrain,
            'surface_water' => $this->surface_water,
            'residents' => PeopleResource::collection($this->whenLoaded('people')),
        ];
    }
}
