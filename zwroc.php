<?php
require_once 'db.php';

// Sprawdzenie, czy formularz został wysłany
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $id_wypozyczenia = $_POST['id_wypozyczenia'];

    // Aktualizacja rekordu wypożyczenia w bazie danych
    $query = "UPDATE wypozyczenia SET data_zwrotu = CURDATE() WHERE id_wypozyczenia = '$id_wypozyczenia'";
    mysqli_query($connection, $query);

    echo "Pojazd został zwrócony!";
}

// Pobieranie listy aktywnych wypożyczeń
$query = "SELECT * FROM wypozyczenia WHERE data_zwrotu IS NULL";
$result = mysqli_query($connection, $query);

// Wyświetlanie formularza zwrotu pojazdu
echo "<h2>Zwróć samochód</h2>";
echo "<form method='POST' action='zwroc.php'>";
echo "<label for='id_wypozyczenia'>Wybierz wypożyczenie:</label>";
echo "<select name='id_wypozyczenia' id='id_wypozyczenia'>";
while ($row = mysqli_fetch_assoc($result)) {
    echo "<option value='" . $row['id_wypozyczenia'] . "'>ID: " . $row['id_wypozyczenia'] . " - Klient: " . $row['id_klienta'] . " - Pojazd: " . $row['id_pojazdu'] . "</option>";
}
echo "</select>";
echo "<br>";
echo "<input type='submit' value='Zwróć'>";
echo "</form>";

mysqli_close($connection);
?>
