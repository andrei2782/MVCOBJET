<?php

namespace Mvcobjet2\models\Entities;

class Actor
{

    private $id;
    private $first_name;
    private $last_name;

    public function getId(): int
    {
        return $this->id;
    }
    public function setId(int $id): Actor
    {
        $this->id = $id;
        return $this;
    }

    public function getFirst_name(): string
    {
        return $this->first_name;
    }
    public function setFirst_name(string $first_name): Actor
    {
        $this->first_name = $first_name;
        return $this;
    }

    public function getLast_name(): string
    {
        return $this->last_name;
    }
    public function setLast_name(string $last_name): Actor
    {
        $this->last_name = $last_name;
        return $this;
    }
}
