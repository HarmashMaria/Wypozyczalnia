<?php
$host = 'localhost';
$username = 'root';
$password = '';
$database = 'Wypozyczalnia_aut';

// Połączenie z bazą danych
$connection = mysqli_connect($host, $username, $password, $database);

// Sprawdzenie połączenia
if (!$connection) {
    die("Błąd połączenia z bazą danych: " . mysqli_connect_error());
}