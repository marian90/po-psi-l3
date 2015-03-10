-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 10 Mar 2015, 17:46
-- Wersja serwera: 5.6.21
-- Wersja PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `sklep int`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `adresy`
--

CREATE TABLE IF NOT EXISTS `adresy` (
  `id_adres` int(11) NOT NULL,
  `miejscowosc` varchar(70) NOT NULL,
  `wojewodztwo` varchar(20) NOT NULL,
  `kod_pocztowy` varchar(6) NOT NULL,
  `ulica` varchar(70) NOT NULL,
  `nr_domu` varchar(10) NOT NULL,
  `nr_lokalu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `adresy`
--

INSERT INTO `adresy` (`id_adres`, `miejscowosc`, `wojewodztwo`, `kod_pocztowy`, `ulica`, `nr_domu`, `nr_lokalu`) VALUES
(1, 'Opole', 'Opolskie', '00-222', 'Ksiazat Opolskich', '20', 0),
(2, 'Czestochowa', 'Slaskie', '42-150', 'Wielunska', '77', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamówienia_produkty`
--

CREATE TABLE IF NOT EXISTS `zamówienia_produkty` (
  `id_zamowienie_produkt` int(11) NOT NULL,
  `id_zamowienia` int(11) NOT NULL,
  `id_produkt` int(11) NOT NULL,
  `ilosc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `adresy`
--
ALTER TABLE `adresy`
 ADD PRIMARY KEY (`id_adres`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
