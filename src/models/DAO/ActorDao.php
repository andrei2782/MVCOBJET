<?php

namespace Mvcobjet2\models\DAO;

use Mvcobjet2\models\Entities\Actor;

class ActorDao extends BaseDao
{

    public function findAll()
    {
        $stmt = $this->db->prepare("SELECT * FROM actor ");
        $res = $stmt->execute();
        if ($res) {
            $actors = [];
            while ($row = $stmt->fetch(\PDO::FETCH_ASSOC)) {
                $actors[] = $this->createObjectFromFields($row);
            }
            return $actors;
        } else {
            throw new \PDOException($stmt->errorInfo()[2]);
        }
    }

    public function findById($id)
    {
        $stmt = $this->db->prepare("SELECT * FROM actor WHERE id = :id");
        $actor = $stmt->execute([':id' => $id]);

        if ($actor) {
            return $this->createObjectFromFields($stmt->fetch(\PDO::FETCH_ASSOC));
        } else {
            throw new \PDOException($stmt->errorInfo()[2]);
        }
    }
    public function findByMovie($movieId)
    {

        $stmt = $this->db->prepare("
        SELECT id, first_name, last_name
        FROM actor
        INNER JOIN movies_actors ON movies_actors.actor_id = actor.id
        WHERE movie_id = :movieId");
        $res = $stmt->execute([':movieId' => $movieId]);

        if ($res) {
            $actors = [];
            while ($row = $stmt->fetch(\PDO::FETCH_ASSOC)) {
                $actors[] = $this->createObjectFromFields($row);
            }
            return $actors;
        } else {
            throw new \PDOException($stmt->errorInfo()[2]);
        }
    }
    public function createObjectFromFields($fields): actor
    {
        //
        // liaison entre la donnée BDD et l'objet 
        // ici on voit le chainage ->setId->setName 
        //
        $actor = new actor();
        $actor->setId($fields['id'])
            ->setFirst_name($fields['first_name'])
            ->setLast_name($fields['last_name']);


        return $actor;
    }
}
