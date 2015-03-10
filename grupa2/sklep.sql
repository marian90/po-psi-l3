-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 10 Mar 2015, 17:36
-- Wersja serwera: 5.6.21
-- Wersja PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `sklep`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategorie`
--

CREATE TABLE IF NOT EXISTS `kategorie` (
  `id_kategoria` int(11) NOT NULL,
  `nazwa_kategoria` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `kategorie`
--

INSERT INTO `kategorie` (`id_kategoria`, `nazwa_kategoria`) VALUES
(1, 'Laptop');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE IF NOT EXISTS `produkty` (
  `id_produkt` int(11) NOT NULL,
  `id_kategora` int(11) NOT NULL,
  `nazwa_produktu` varchar(32) NOT NULL,
  `typ` varchar(16) NOT NULL,
  `wersja` varchar(16) NOT NULL,
  `opis` text NOT NULL,
  `cena_netto` decimal(10,0) NOT NULL,
  `vat` int(11) NOT NULL,
  `producent` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `produkty`
--

INSERT INTO `produkty` (`id_produkt`, `id_kategora`, `nazwa_produktu`, `typ`, `wersja`, `opis`, `cena_netto`, `vat`, `producent`) VALUES
(1, 1, 'Laptop Lenovo Y580', 'Laptop', '1', '8GB RAM', '2000', 22, 'Lenovo');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `produkty`
--
ALTER TABLE `produkty`
 ADD PRIMARY KEY (`id_produkt`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
