<?php
$server = "localhost";
$username = "root";
$password = "";

try {
    $conn = new PDO("mysql:host=$server;dbname=bapasjaksel_sppd", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "connection failed: ". $e->getMessage();
}
?>