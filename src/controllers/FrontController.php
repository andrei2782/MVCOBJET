<?php

namespace Mvcobjet2\controllers;

use Mvcobjet2\models\Services\GenreService;
use Mvcobjet2\models\Services\ActorService;
use Mvcobjet2\models\Services\DirectorService;
use Mvcobjet2\models\Services\MovieService;



use Twig\Environment;

class FrontController
{
    private $twig;
    private $genreService;
    private $actorService;
    private $directorService;
    private $movieService;

    public function __construct($twig)
    {
        // instanciation du service Genre
        $this->genreService = new GenreService();
        $this->actorService = new ActorService();
        $this->directorService = new DirectorService();
        $this->movieService = new MovieService();
        $this->twig = $twig;
    }
    public function acceuil()
    {
        echo $this->twig->render('base.html.twig');
    }
    public function genres()
    {
        /* 
         sur la version précédente j'utilisais DAO directement , ici on passe par les services
             avant :$genreDao = new GenreDao();
                    $genres = $genreDao->findAll();
       */
        $genres = $this->genreService->getAllGenres();
        /*  foreach ($genres as $genre) {
            echo $genre->getName();
        }*/

        /*  include_once __DIR__ . '/../views/GenreViews.php';*/

        echo $this->twig->render('genre.html.twig', ["genres" => $genres]);
    }

    public function actors()
    {
        $actors = $this->actorService->getAllActors();

        echo $this->twig->render('actor.html.twig', ["actor1" => $actors]);
    }

    public function Oneactor($id)
    {
        $actor = $this->actorService->getOneActor($id);

        echo $this->twig->render('actor.html.twig', ["actor1" => $actor]);
    }

    public function directors()
    {
        $directors = $this->directorService->getAllDirectors();

        echo $this->twig->render('director.html.twig', ["director1" => $directors]);
    }

    public function Onedirector($id)
    {
        $director = $this->directorService->getOneDirector($id);

        echo $this->twig->render('director.html.twig', ["director1" => $director]);
    }

    public function movies()
    {
        $movies = $this->movieService->getAllMovies();

        echo $this->twig->render('movie.html.twig', ["movies" => $movies]);
    }

    public function movie($id)
    {
        $movie = $this->movieService->getOneMovie($id);
        echo $this->twig->render('onemovie.html.twig', ["movie" => $movie]);
    }

    public function addmovie()
    {
        echo $this->twig->render('addmovie.html.twig');
    }
}
