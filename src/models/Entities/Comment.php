<?php

namespace Mvcobjet2\models\Entities;

class Comment
{

    private $id;
    private $author;
    private $mark;
    private $content;
    private $movie_id;


    public function getId(): int
    {
        return $this->id;
    }
    public function setId(int $id): Comment
    {
        $this->id = $id;
        return $this;
    }

    public function getAuthor(): string
    {
        return $this->author;
    }
    public function setAuthor(string $author): Comment
    {
        $this->author = $author;
        return $this;
    }

    public function getMark(): string
    {
        return $this->mark;
    }
    public function setMark(string $mark): Comment
    {
        $this->mark = $mark;
        return $this;
    }

    public function getContent(): string
    {
        return $this->content;
    }
    public function setContent(string $content): Comment
    {
        $this->content = $content;
        return $this;
    }

    public function getMovie_id(): int
    {
        return $this->movie_id;
    }
    public function setMovie_id(int $movie_id): Comment
    {
        $this->movie_id = $movie_id;
        return $this;
    }
}
