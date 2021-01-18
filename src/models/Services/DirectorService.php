<?php

namespace Mvcobjet2\models\Services;


use Mvcobjet2\models\DAO\DirectorDao;
use Mvcobjet2\models\Entities\Director;



class DirectorService
{
    private $directorDao;

    public function __construct()
    {
        $this->directorDao = new DirectorDao();
    }

    public function getAllDirectors()
    {
        $directors = $this->directorDao->findAll();
        return $directors;
    }

    public function getOneDirector($id)
    {
        $director = $this->directorDao->findById($id);
        return $director;
    }
}
