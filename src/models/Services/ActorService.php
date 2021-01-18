<?php

namespace Mvcobjet2\models\Services;


use Mvcobjet2\models\DAO\ActorDao;
use Mvcobjet2\models\Entities\Actor;



class ActorService
{
    private $actorDao;

    public function __construct()
    {
        $this->actorDao = new ActorDao();
    }

    public function getAllActors()
    {
        $actors = $this->actorDao->findAll();
        return $actors;
    }
    public function getOneActor($id)
    {
        $actor = $this->actorDao->findById($id);
        return $actor;
    }
}
