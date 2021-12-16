<?php

namespace App\Console\Commands;

use App\Models\People;
use App\Models\Planet;
use App\Services\StarWarsAPI;
use Carbon\Carbon;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Log;

class FetchStarWarsData extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'fetch:starwars {--categories=all : Options: people, planets and species. Multiple possible with `,` seperator.}';
    protected $aAvailableOptions = ['all', 'people', 'planets'];

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Fetch all the data from the starwars api';

    private $swClient;
    private $iLimit = 10;


    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct(StarWarsAPI $starWarsAPI)
    {
        $this->swClient = $starWarsAPI;

        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        Log::info('Starting: fetch:starwars', ['--categories' => $this->option('categories')]);
        $this->line('Fetching: ' . $this->option('categories'));

        $aCategories = explode(',', $this->option('categories'));

        foreach ($aCategories as $sCategory) {
            $this->line('Start fetching: ' . $sCategory);

            if (!in_array($sCategory, $this->aAvailableOptions)) {
                $this->error("Category `{$sCategory}` not available");
                continue;
            }

            $this->runFetcher($sCategory);
        }

        Log::info('Finished: fetch:starwars', ['--categories' => $this->option('categories')]);

        return 0;
    }

    /**
     * Run the fetcher by categorie
     *
     * @return boolean
     */
    public function runFetcher($sCategory)
    {

        switch($sCategory) {
            case 'people':
                $this->fetchPeople();
                break;
            case 'planets':
                $this->fetchPlanets();
                break;
            default:
                $this->fetchPlanets();
                $this->fetchPeople();
                break;
        }

        $this->info('done');
        Log::info('Finished: fetch:starwars', ['category' => $sCategory]);

        return true;
    }


    /**
     * fetchPlanets
     *
     * @return boolean
     */
    public function fetchPlanets()
    {
        Log::info('Fetching planets');

        $iCurrentPage = 1;
        $iRecordCount = 0;
        $bFirst = true;
        $aPlanets = $this->swClient->getPlanets("?page={$iCurrentPage}&limit={$this->iLimit}");

        if (!$aPlanets) {
            $this->error('No planets found');
            Log::info('No planets found');
            return;
        }

        $iTotalPages = $aPlanets['total_pages'];
        $iTotalRecordCount = $aPlanets['total_records'];

        $bar = $this->output->createProgressBar($iTotalRecordCount);
        $bar->start();

        while($iCurrentPage <= $iTotalPages) {
            if (!$bFirst) {
                $aPlanets = $this->swClient->getPlanets("?page={$iCurrentPage}&limit={$this->iLimit}");
            }

            foreach ($aPlanets['results'] as $aPlanet) {
                if (!$aPlanet) {
                    continue;
                }

                $iPlanetId = $aPlanet['uid'];

                if (!$aPlanetDetails = $this->swClient->getPlanet($iPlanetId)) {
                    $this->error("No planet found with uid: {$iPlanetId}");
                    Log::info('No planet found', $aPlanet);
                    return;
                }

                $aPlanetData = $aPlanetDetails['result']['properties'];
                $existingPlanet = Planet::query()
                ->where('external_id', '=', $iPlanetId)
                ->first();

                if (!$existingPlanet || ( $existingPlanet && $existingPlanet->created_at < Carbon::parse($aPlanetData['edited'])->toDateTimeString())) {
                    if ($existingPlanet) {
                        $existingPlanet->delete();
                    }

                    Planet::create([
                        'name' => $this->validateXSS($aPlanetData['name']),
                        'diameter' => $this->validateXSS($aPlanetData['diameter']),
                        'rotation_period' => $this->validateXSS($aPlanetData['rotation_period']),
                        'orbital_period' => $this->validateXSS($aPlanetData['orbital_period']),
                        'gravity' => $this->validateXSS($aPlanetData['gravity']),
                        'population' => $this->validateXSS($aPlanetData['population']),
                        'climate' => $this->validateXSS($aPlanetData['climate']),
                        'terrain' => $this->validateXSS($aPlanetData['terrain']),
                        'surface_water' => $this->validateXSS($aPlanetData['surface_water']),
                        'external_id' => $this->validateXSS($iPlanetId),
                    ]);
                }

                $bar->advance();

                $iRecordCount++;
            }

            $bFirst = false;
            $iCurrentPage++;
        }

        $bar->finish();
        Log::info('Fetching planets: finished');
        $this->info('done');

        return true;
    }


    /**
     * fetchPeople
     *
     * @return boolean
     */
    public function fetchPeople()
    {
        Log::info('Fetching people');

        $iCurrentPage = 1;
        $iRecordCount = 0;
        $bFirst = true;
        $aPeoples = $this->swClient->getPeoples("?page={$iCurrentPage}&limit={$this->iLimit}");

        if (!$aPeoples) {
            $this->error('No people found');
            Log::info('No people found');
            return;
        }

        $iTotalPages = $aPeoples['total_pages'];
        $iTotalRecordCount = $aPeoples['total_records'];
        $bar = $this->output->createProgressBar($iTotalRecordCount);
        $bar->start();

        while($iCurrentPage <= $iTotalPages) {
            if (!$bFirst) {
                $aPeoples = $this->swClient->getPeoples("?page={$iCurrentPage}&limit={$this->iLimit}");
            }

            foreach ($aPeoples['results'] as $aPeople) {
                if (!$aPeople) {
                    continue;
                }

                $iPeopleId = $aPeople['uid'];

                if (!$aPeopleDetails = $this->swClient->getPeople($iPeopleId)) {
                    $this->error("No people found with uid: {$iPeopleId}");
                    Log::info('No people found', $aPeople);
                    $bar->advance();

                    $iRecordCount++;
                    continue;
                }

                $aPeopleData = $aPeopleDetails['result']['properties'];

                $existingPeople = People::query()
                ->where('external_id', '=', $iPeopleId)
                ->first();

                if (!$existingPeople || ( $existingPeople && $existingPeople->created_at < Carbon::parse($aPeopleData['edited'])->toDateTimeString())) {
                    if ($existingPeople) {
                        $existingPeople->delete();
                    }

                    if (preg_match('/.*?planets\\/([0-9]+)/', $aPeopleData['homeworld'], $matches)) {
                        if (array_key_exists('1', $matches)) {
                            $aPeopleData['homeworld'] = $matches[1];
                        }
                    }

                    People::create([
                        'height' => $this->validateXSS($aPeopleData['height']),
                        'mass' => $this->validateXSS($aPeopleData['mass']),
                        'hair_color' => $this->validateXSS($aPeopleData['hair_color']),
                        'skin_color' => $this->validateXSS($aPeopleData['skin_color']),
                        'eye_color' => $this->validateXSS($aPeopleData['eye_color']),
                        'birth_year' => $this->validateXSS($aPeopleData['birth_year']),
                        'gender' => $this->validateXSS($aPeopleData['gender']),
                        'name' => $this->validateXSS($aPeopleData['name']),
                        'external_id' => $this->validateXSS($iPeopleId),
                        'planet_external_id' => $this->validateXSS($aPeopleData['homeworld']),
                    ]);
                }

                $bar->advance();

                $iRecordCount++;
            }

            $bFirst = false;
            $iCurrentPage++;
        }

        $bar->finish();
        Log::info('Fetching people: finished');
        $this->info('done');

        return true;
    }


    /**
     * validateXSS
     *
     * @param  mixed $value
     * @return void
     */
    public function validateXSS($value)
    {
        return htmlspecialchars(trim($value));
    }
}
