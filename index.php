<?php

require_once "vendor/autoload.php";

use Mvcobjet2\controllers\FrontController;
use Twig\Environment;
use Twig\Loader\FilesystemLoader;

$loader = new FilesystemLoader(__DIR__ . '/src/views');
$twig = new Environment($loader, ['cache' => false]);

$fc = new FrontController($twig);

$base = dirname($_SERVER['PHP_SELF']);

if (ltrim($base, '/')) {
    $_SERVER['REQUEST_URI'] = substr($_SERVER['REQUEST_URI'], strlen($base));
}



$klein = new \Klein\Klein();


$klein->respond('GET', '/', function () use ($fc) {
    $fc->acceuil();
});

$klein->respond('GET', '/genres', function () use ($fc) {
    // use est une manière d'effectuer une closure en PHP 
    $fc->genres();
});

$klein->respond('GET', '/actors', function () use ($fc) {
    // use est une manière d'effectuer une closure en PHP 
    $fc->actors();
});

$klein->respond('GET', '/actors/[:id]', function ($request) use ($fc) {
    $id = $request->id;
    $fc->Oneactor($id);
});

$klein->respond('GET', '/directors', function () use ($fc) {
    // use est une manière d'effectuer une closure en PHP 
    $fc->directors();
});

$klein->respond('GET', '/directors/[:id]', function ($request) use ($fc) {
    $id = $request->id;
    $fc->Onedirector($id);
});

$klein->respond('GET', '/movies', function () use ($fc) {

    $fc->movies();
});

$klein->respond('GET', '/movies/[:id]', function ($request) use ($fc) {
    $fc->movie($request->id);
});

$klein->respond('GET', '/addmovie', function () use ($fc) {
    $fc->addmovie();
});


$klein->dispatch();
