<?php
require_once 'db.php';

// Pobieranie listy pojazdów
$query = "SELECT * FROM pojazdy";
$result = mysqli_query($connection, $query);

// Wyświetlanie listy pojazdów
echo "<h2>Przeglądaj pojazdy</h2>";
echo "<ul>";
while ($row = mysqli_fetch_assoc($result)) {
    echo "<li>Marka: " . $row['marka'] . ", Model: " . $row['model'] . "</li>";
}
echo "</ul>";

mysqli_close($connection);
?>
