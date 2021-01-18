<?php

namespace Mvcobjet2\models\Services;


use Mvcobjet2\models\DAO\ActorDao;
use Mvcobjet2\models\DAO\DirectorDao;
use Mvcobjet2\models\DAO\GenreDao;
use Mvcobjet2\models\DAO\MovieDao;

use Mvcobjet2\models\Entities\Actor;
use Mvcobjet2\models\Entities\Director;
use Mvcobjet2\models\Entities\Genre;
use Mvcobjet2\models\Entities\Movie;




class MovieService
{
    private $movieDao;
    private $genreDao;
    private $actorDao;
    private $directorDao;

    public function __construct()
    {

        $this->movieDao = new MovieDao();
        $this->genreDao = new GenreDao();
        $this->directorDao = new DirectorDao();
        $this->actorDao = new ActorDao();
    }
    public function getAllMovies()
    {
        $movie = $this->movieDao->findAll();
        return $movie;
    }

    public function getOneMovie($id)
    {

        $movie = $this->movieDao->findById($id);
        //print_r($movie);

        $genre = $this->genreDao->findByMovie($id);
        $movie->setGenre($genre);
        //print_r($movie);
        $director = $this->directorDao->findByMovie($id);
        $movie->setDirector($director);

        $actors = $this->actorDao->findByMovie($id);
        $movie->setActor($actors);


        return $movie;
    }

    public function create($movieData)
    {

        $movie = $this->movieDao->createObjectFromFields($movieData);

        $genre = $this->genreDao->findByMovie($movieData['genre']);
        $movie->setGenre($genre);

        $director = $this->directorDao->findByMovie($movieData['director']);
        $movie->setDirector($director);

        $this->movieDao->create($movie);
    }
}
