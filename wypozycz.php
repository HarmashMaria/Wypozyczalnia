<?php
require_once 'db.php';

// Sprawdzenie, czy formularz został wysłany
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $id_klienta = $_POST['id_klienta'];
    $id_pojazdu = $_POST['id_pojazdu'];
    $data_wypozyczenia = $_POST['data_wypozyczenia'];
    $data_zwrotu = $_POST['data_zwrotu'];

    // Dodawanie nowego wypożyczenia do bazy danych
    $query = "INSERT INTO wypozyczenia (id_klienta, id_pojazdu, data_wypozyczenia, data_zwrotu) VALUES ('$id_klienta', '$id_pojazdu', '$data_wypozyczenia', '$data_zwrotu')";
    mysqli_query($connection, $query);

    echo "Pojazd został wypożyczony!";
}

// Pobieranie listy klientów i pojazdów
$query_klienci = "SELECT * FROM klienci";
$query_pojazdy = "SELECT * FROM pojazdy";
$result_klienci = mysqli_query($connection, $query_klienci);
$result_pojazdy = mysqli_query($connection, $query_pojazdy);

// Wyświetlanie formularza wypożyczenia
echo "<h2>Wypożycz samochód</h2>";
echo "<form method='POST' action='wypozycz.php'>";
echo "<label for='id_klienta'>Wybierz klienta:</label>";
echo "<select name='id_klienta' id='id_klienta'>";
while ($row = mysqli_fetch_assoc($result_klienci)) {
    echo "<option value='" . $row['id_klienta'] . "'>" . $row['imie'] . " " . $row['nazwisko'] . "</option>";
}
echo "</select>";
echo "<br>";
echo "<label for='id_pojazdu'>Wybierz pojazd:</label>";
echo "<select name='id_pojazdu' id='id_pojazdu'>";
while ($row = mysqli_fetch_assoc($result_pojazdy)) {
    echo "<option value='" . $row['id_pojazdu'] . "'>" . $row['marka'] . " " . $row['model'] . "</option>";
}
echo "</select>";
echo "<br>";
echo "<label for='data_wypozyczenia'>Data wypożyczenia:</label>";
echo "<input type='date' name='data_wypozyczenia' id='data_wypozyczenia' required>";
echo "<br>";
echo "<label for='data_zwrotu'>Data zwrotu:</label>";
echo "<input type='date' name='data_zwrotu' id='data_zwrotu' required>";
echo "<br>";
echo "<input type='submit' value='Wypożycz'>";
echo "</form>";

mysqli_close($connection);
?>
