<?php

$fileContents = file_get_contents('compose.yml.dist');
$generatedContents = str_replace('{{port}}', findFreePort(8894), $fileContents);

file_put_contents('compose.yml', $generatedContents);

function findFreePort($startPort)
{
    $port = $startPort;
    $socket = socket_create(AF_INET, SOCK_STREAM, SOL_TCP);

    while (!@socket_bind($socket, '127.0.0.1', $port)) {
        $port++;
    }

    socket_close($socket);
    return $port;
}
