<?php

namespace Mvcobjet2\models\Services;


use Mvcobjet2\models\DAO\GenreDao;
use Mvcobjet2\models\Entities\Genre;



class GenreService
{
    private $genreDao;

    public function __construct()
    {
        $this->genreDao = new GenreDao();
    }

    public function getAllGenres()
    {
        $genres = $this->genreDao->findAll();
        return $genres;
    }
}
