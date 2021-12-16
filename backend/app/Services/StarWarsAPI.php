<?php

namespace App\Services;

use Illuminate\Support\Facades\Http;

class StarWarsAPI
{
    protected $url;
    protected $http;
    protected $headers;

    public function __construct()
    {
        $this->client = Http::baseUrl(env('SW_BASE_URL'));
    }

    public function getPlanet($id, string $uri = null)
    {
        return $this->returnJsonReponse($this->client->get("/planets/{$id}{$uri}"));
    }

    public function getPlanets(string $uri = null)
    {
        return $this->returnJsonReponse($this->client->get('/planets'. $uri));
    }

    public function getPeople($id, string $uri = null)
    {
        return $this->returnJsonReponse($this->client->get("/people/{$id}{$uri}"));
    }

    public function getPeoples(string $uri = null)
    {
        return $this->returnJsonReponse($this->client->get('/people'. $uri));
    }

    public function getSpecies(string $uri = null)
    {
        return $this->returnJsonReponse($this->client->get('/species'. $uri));
    }

    private function returnJsonReponse($request)
    {
        $response = $request ? $request->json() : null;
        $status = $request ? $request->status() : 500;

        if ($response && $status === 200 ) {
            return $response;
        }

        return null;
    }
}
