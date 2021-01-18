<?php

namespace Mvcobjet2\models\Entities;

class Genre
{
    private $id;
    private $name;

    public function getId(): int
    {
        return $this->id;
    }

    public function setId(int $id): Genre
    {
        $this->id = $id;
        return $this;
    }

    public function getName(): string
    {
        return $this->name;
    }

    public function setName(string $name): Genre
    {
        $this->name = $name;
        return $this;
    }
}
