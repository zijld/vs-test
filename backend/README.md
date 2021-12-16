## Laravel test

### Installation

Linux / MacOS
Run: `cp ~/.env.example ~/.env`
Run: `composer install`
Run: `php artisan key:generate`
Open `.env`

Change the following to your details `#DB_NAME` and `#Password`

```bash
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=#DB_NAME
DB_USERNAME=root
DB_PASSWORD=#Password
```

Finally run:
`php artisan migrate`

### FETCH DATA

Ik wil over het algemeen niet afhankelijk zijn van een third party API tenzij het niet anders kan aangezien swapi.dev op het moment van schrijven ook niet werkt ;)
Dus heb ik gekozen voor een command die de de data uit de API ophaalt d.m.v een dagelijks cronjob in `app/Console/Kernel.php`.

Uiteraard heeft dit zijn voordelen:

-   Manipuleren / valideren
-   Omdat een DB query sneller is dan een API call

Nadelen:

-   Geen live data
-   Limits van de API
-   Mag niet altijd

**_Handmatig data fetch command_**
`php artisan fetch:starwars` optioneel `--categories=people,planets` [default: all]
Deze call is wel erg traag omdat de API een beetje belast wordt :) Ik zal de db export van people en planets in git plaatsen `db-vz_db-15-12-2021.sql`, dat is misschien wat handiger.
De command werkt wel en refreshed alleen de records die nieuw geupdate zijn of niet bestaan.
Daarnaast heb gekozen voor optionele categorieën omdat ik het fijn zou vinden om dit ook per tabel te fetchen.

### Database structure

`external_id` is de id uit de API
Alle datatypes zijn `strings` aangezien die API ook `unknown` returned bij numeric velden dus i.v.m tijd even snel alles string gemaakt

### Species

Deze heb ik overgeslagen. Ik zou de `people` die bij de `specie` horen opgeslagen hebben in een tussentabel en deze vervolgens ophalen via de laravel functies: hasOneThrough & hasManyThrough. Het lijkt verder op de connectie die ik al gedaan heb bij planets & people

### SWAPI Service

Ik heb de logica ondergebracht in `App/Service/StarWarsAPI` wanneer er iets veranderd met de API endpoints kan dat over het algemeen snel aangepast worden.

### Authentication

Helaas geen tijd voor gehad maar dit zou ik doen met sanctum API tokens
