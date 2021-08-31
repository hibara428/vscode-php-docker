<?php
require __DIR__ . '/../vendor/autoload.php';

use Symfony\Polyfill\Uuid\Uuid;

$uuid = Uuid::uuid_create();
echo $uuid . PHP_EOL;
