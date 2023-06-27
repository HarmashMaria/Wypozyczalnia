-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Cze 27, 2023 at 09:45 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wypozyczalnia_aut`
--
CREATE DATABASE IF NOT EXISTS `wypozyczalnia_aut` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `wypozyczalnia_aut`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `id_klienta` int(11) NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `adres` varchar(100) NOT NULL,
  `telefon` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `klienci`
--

INSERT INTO `klienci` (`id_klienta`, `imie`, `nazwisko`, `adres`, `telefon`, `email`) VALUES
(1, 'Jan', 'Kowalski', '', '123456789', ''),
(2, 'Anna', 'Nowak', '', '987654321', ''),
(3, 'Piotr', 'Wiśniewski', '', '555111222', ''),
(4, 'Maria', 'Lewandowska', '', '999888777', ''),
(5, 'Katarzyna', 'Jankowska', '', '111222333', ''),
(6, 'Andrzej', 'Dąbrowski', '', '444555666', ''),
(7, 'Ewa', 'Zielińska', '', '777888999', ''),
(8, 'Michał', 'Wójcik', '', '222333444', ''),
(9, 'Magdalena', 'Krawczyk', '', '666777888', ''),
(10, 'Tomasz', 'Piotrowski', '', '888999000', ''),
(11, 'Beata', 'Kaczmarek', '', '333444555', ''),
(12, 'Grzegorz', 'Grabowski', '', '555666777', ''),
(13, 'Iwona', 'Pawlak', '', '999000111', ''),
(14, 'Marcin', 'Michalski', '', '444555666', ''),
(15, 'Alicja', 'Zając', '', '222333444', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pojazdy`
--

CREATE TABLE `pojazdy` (
  `id_pojazdu` int(11) NOT NULL,
  `marka` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `rocznik` int(11) NOT NULL,
  `cena` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pojazdy`
--

INSERT INTO `pojazdy` (`id_pojazdu`, `marka`, `model`, `rocznik`, `cena`) VALUES
(1, 'Toyota', 'Corolla', 2019, 150.00),
(2, 'Volkswagen', 'Golf', 2018, 130.00),
(3, 'Ford', 'Focus', 2020, 140.00),
(4, 'Renault', 'Clio', 2021, 120.00),
(5, 'BMW', 'Series 3', 2017, 200.00),
(6, 'Mercedes-Benz', 'A-Class', 2022, 180.00),
(7, 'Audi', 'A4', 2019, 190.00),
(8, 'Hyundai', 'i30', 2020, 110.00),
(9, 'Kia', 'Ceed', 2018, 100.00),
(10, 'Nissan', 'Qashqai', 2021, 170.00),
(11, 'Peugeot', '308', 2020, 125.00),
(12, 'Seat', 'Leon', 2019, 135.00),
(13, 'Skoda', 'Octavia', 2022, 160.00),
(14, 'Volvo', 'V40', 2017, 170.00),
(15, 'Mazda', '3', 2021, 140.00);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wypozyczenia`
--

CREATE TABLE `wypozyczenia` (
  `id_wypozyczenia` int(11) NOT NULL,
  `id_klienta` int(11) NOT NULL,
  `id_pojazdu` int(11) NOT NULL,
  `data_wypozyczenia` date NOT NULL,
  `data_zwrotu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wypozyczenia`
--

INSERT INTO `wypozyczenia` (`id_wypozyczenia`, `id_klienta`, `id_pojazdu`, `data_wypozyczenia`, `data_zwrotu`) VALUES
(1, 1, 1, '2023-06-01', '2023-06-05'),
(2, 2, 3, '2023-06-02', '2023-06-04'),
(3, 3, 5, '2023-06-03', '2023-06-07'),
(4, 4, 7, '2023-06-05', '2023-06-08'),
(5, 5, 9, '2023-06-06', '2023-06-09'),
(6, 6, 11, '2023-06-07', '2023-06-10'),
(7, 7, 13, '2023-06-08', '2023-06-11'),
(8, 8, 15, '2023-06-09', '2023-06-12'),
(9, 9, 2, '2023-06-10', '2023-06-13'),
(10, 10, 4, '2023-06-12', '2023-06-15'),
(11, 11, 6, '2023-06-14', '2023-06-18'),
(12, 12, 8, '2023-06-15', '2023-06-17'),
(13, 13, 10, '2023-06-17', '2023-06-19'),
(14, 14, 12, '2023-06-18', '2023-06-21'),
(15, 15, 14, '2023-06-20', '2023-06-23');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`id_klienta`);

--
-- Indeksy dla tabeli `pojazdy`
--
ALTER TABLE `pojazdy`
  ADD PRIMARY KEY (`id_pojazdu`);

--
-- Indeksy dla tabeli `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  ADD PRIMARY KEY (`id_wypozyczenia`),
  ADD KEY `id_klienta` (`id_klienta`),
  ADD KEY `id_pojazdu` (`id_pojazdu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `klienci`
--
ALTER TABLE `klienci`
  MODIFY `id_klienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pojazdy`
--
ALTER TABLE `pojazdy`
  MODIFY `id_pojazdu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  MODIFY `id_wypozyczenia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  ADD CONSTRAINT `wypozyczenia_ibfk_1` FOREIGN KEY (`id_klienta`) REFERENCES `klienci` (`id_klienta`),
  ADD CONSTRAINT `wypozyczenia_ibfk_2` FOREIGN KEY (`id_pojazdu`) REFERENCES `pojazdy` (`id_pojazdu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
