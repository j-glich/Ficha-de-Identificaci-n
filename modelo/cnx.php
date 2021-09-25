<?php

$mysqli = new mysqli("localhost:3306", "root", "itsoeh", "cima2");
if($mysqli->connect_errno) {
    echo "Error: Falló la conexión a MySQL, información: \n";
    echo "Errno: " . $mysqli->connect_errno . "\n";
    echo "Error: " . $mysqli->connect_error . "\n";
    exit;
}

?>   