**[Opis projektu:]{.underline}**

Projekt jest aplikacją internetową typu wypożyczalnia samochodów. Składa
się z kilku plików i skryptów, które obsługują różne funkcjonalności.

**Plik \"config.php\"** zawiera dane konfiguracyjne do połączenia z bazą
danych, takie jak nazwa hosta, nazwa użytkownika, hasło i nazwa bazy
danych. Tworzy również połączenie z bazą danych za pomocą funkcji
mysqli_connect().

**Plik \"db.php\"** zawiera funkcję connectDatabase(), która nawiązuje
połączenie z bazą danych na podstawie danych z pliku \"config.php\". Ta
funkcja jest wykorzystywana w innych plikach, aby uzyskać dostęp do
połączenia z bazą danych.

**Plik \"index.php\"** to główna strona logowania. Umożliwia
użytkownikowi wprowadzenie numeru klienta w formularzu. Po wysłaniu
formularza, numer klienta jest zapisywany w bazie danych w tabeli
\"klienci\" za pomocą zapytania SQL INSERT. Następnie użytkownik jest
przekierowywany do strony \"index2.php\".

**Plik \"index2.php\"** to strona po zalogowaniu. Wyświetla dostępne
opcje dla zalogowanego użytkownika, takie jak przeglądanie pojazdów,
wypożyczanie samochodów i zwracanie samochodów.

**Plik \"pojazdy.php\"** wyświetla listę dostępnych pojazdów z bazy
danych. Sprawdza również, czy użytkownik jest zalogowany przed
wyświetleniem tej strony.

**Plik \"wypozycz.php\"** umożliwia użytkownikowi wypożyczenie
samochodu. Wyświetla formularz, w którym użytkownik może wybrać pojazd i
podać datę wypożyczenia i zwrotu. Po wysłaniu formularza, dane są
zapisywane w bazie danych w tabeli \"wypozyczenia\".

**Plik \"zwroc.php\"** umożliwia użytkownikowi zwrócenie wypożyczonego
samochodu. Wyświetla formularz, w którym użytkownik może wybrać
wypożyczenie do zwrotu. Po wysłaniu formularza, rekord wypożyczenia jest
usuwany z bazy danych.

**Plik \"style.css\"** zawiera reguły CSS, które określają wygląd
strony, takie jak kolory, tło i układ elementów.

**Plik \"wypozyczalnia_aut.sql\"** zawiera kod SQL do utworzenia bazy
danych \"wypozyczalnia_aut\" oraz tabele \"klienci\", "pojazdy" I
"wypozyczenia". Zawiera również przykładowe dane, które są wstawiane do
tych tabel.

Ten projekt tworzy prostą aplikację wypożyczalni samochodów, która
umożliwia użytkownikom przeglądanie dostępnych pojazdów, wypożyczanie i
zwracanie samochodów.

**[Opis bazy danych:]{.underline}**

**Baza danych \"wypozyczalnia_aut\"** składa się z trzech tabel:
\"klienci\", \"pojazdy\" i \"wypozyczenia\". Poniżej znajduje się opis
struktury tych tabel oraz zachodzące związki pomiędzy nimi:

**Tabela \"klienci\":**

Składa się z kolumn:

id_klienta - unikalny identyfikator klienta (typ: int)

imie - imię klienta (typ: varchar(50))

nazwisko - nazwisko klienta (typ: varchar(50))

adres - adres klienta (typ: varchar(100))

telefon - numer telefonu klienta (typ: varchar(20))

email - adres email klienta (typ: varchar(100))

Klucz główny: id_klienta

**Tabela \"pojazdy\":**

Składa się z kolumn:

id_pojazdu - unikalny identyfikator pojazdu (typ: int)

marka - marka pojazdu (typ: varchar(50))

model - model pojazdu (typ: varchar(50))

rocznik - rocznik pojazdu (typ: int)

cena - cena wynajmu pojazdu (typ: decimal(10,2))

Klucz główny: id_pojazdu

**Tabela \"wypozyczenia\":**

Składa się z kolumn:

id_wypozyczenia - unikalny identyfikator wypożyczenia (typ: int)

id_klienta - identyfikator klienta powiązanego z wypożyczeniem (typ:
int)

id_pojazdu - identyfikator pojazdu powiązanego z wypożyczeniem (typ:
int)

data_wypozyczenia - data rozpoczęcia wypożyczenia (typ: date)

data_zwrotu - data zwrotu wypożyczenia (typ: date)

**Klucz główny:** id_wypozyczenia

**Klucze obce:**

id_klienta - powiązany z tabelą \"klienci\" (kolumna: id_klienta)

id_pojazdu - powiązany z tabelą \"pojazdy\" (kolumna: id_pojazdu)

**Związki pomiędzy tabelami:**

Tabela \"wypozyczenia\" zawiera dwa klucze obce, które łączą ją z
tabelami \"klienci\" i \"pojazdy\".

Klucz obcy id_klienta łączy kolumnę id_klienta w tabeli \"wypozyczenia\"
z kluczem głównym id_klienta w tabeli \"klienci\". Ten związek
reprezentuje powiązanie klienta z wypożyczeniem.

Klucz obcy id_pojazdu łączy kolumnę id_pojazdu w tabeli \"wypozyczenia\"
z kluczem głównym id_pojazdu w tabeli \"pojazdy\". Ten związek
reprezentuje powiązanie pojazdu z wypożyczeniem.

Dzięki tym związkom można powiązać informacje o klientach, pojazdach i
wypożyczeniach w bazie danych. Na przykład, można uzyskać informacje o
kliencie, który wypożyczył dany pojazd poprzez odwołanie się do tabeli
\"klienci\" za pomocą klucza obcego id_klienta w tabeli
\"wypozyczenia\".
