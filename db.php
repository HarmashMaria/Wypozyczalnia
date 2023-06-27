<?php
require_once 'config.php';

// Funkcja do nawiązywania połączenia z bazą danych
function connectDatabase() {
    global $host, $username, $password, $database;

    $connection = mysqli_connect($host, $username, $password, $database);

    // Sprawdzenie połączenia
    if (!$connection) {
        die("Błąd połączenia z bazą danych: " . mysqli_connect_error());
    }

    return $connection;
}

// Nawiązanie połączenia z bazą danych
$connection = connectDatabase();
