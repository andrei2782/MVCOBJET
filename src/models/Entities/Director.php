<?php

namespace Mvcobjet2\models\Entities;

class Director
{

    private $id;
    private $first_name;
    private $last_name;

    public function getId(): int
    {
        return $this->id;
    }
    public function setId(int $id): Director
    {
        $this->id = $id;
        return $this;
    }

    public function getFirst_name(): string
    {
        return $this->first_name;
    }
    public function setFirst_name(string $first_name): Director
    {
        $this->first_name = $first_name;
        return $this;
    }

    public function getLast_name(): string
    {
        return $this->last_name;
    }
    public function setLast_name(string $last_name): Director
    {
        $this->last_name = $last_name;
        return $this;
    }
}
