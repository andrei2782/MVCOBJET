<?php

namespace Mvcobjet2\models\DAO;

use Mvcobjet2\models\Entities\Director;

class DirectorDao extends BaseDao
{

    public function findAll()
    {
        $stmt = $this->db->prepare("SELECT * FROM director ");
        $res = $stmt->execute();
        if ($res) {
            $directors = [];
            while ($row = $stmt->fetch(\PDO::FETCH_ASSOC)) {
                $directors[] = $this->createObjectFromFields($row);
            }
            return $directors;
        } else {
            throw new \PDOException($stmt->errorInfo()[2]);
        }
    }
    public function findByMovie($movieId)
    {

        $stmt = $this->db->prepare("
        SELECT director.id, director.first_name, director.last_name
        FROM director
        INNER JOIN movie ON movie.director_id = director.id
        WHERE movie.id = :movieId");
        $res = $stmt->execute([':movieId' => $movieId]);
        if ($res) {
            return $stmt->fetchObject(Director::class);
        } else {
            throw new \PDOException($stmt->errorInfo()[2]);
        }
    }
    public function findById($id)
    {
        $stmt = $this->db->prepare("SELECT * FROM director WHERE id = :id");
        $director = $stmt->execute([':id' => $id]);

        if ($director) {
            return $this->createObjectFromFields($stmt->fetch(\PDO::FETCH_ASSOC));
        } else {
            throw new \PDOException($stmt->errorInfo()[2]);
        }
    }

    public function createObjectFromFields($fields): director
    {
        //
        // liaison entre la donnée BDD et l'objet 
        // ici on voit le chainage ->setId->setName 
        //
        $director = new director();
        $director->setId($fields['id'])
            ->setFirst_name($fields['first_name'])
            ->setLast_name($fields['last_name']);


        return $director;
    }
}
