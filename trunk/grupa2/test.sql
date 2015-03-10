-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 10 Mar 2015, 17:24
-- Wersja serwera: 5.6.21
-- Wersja PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `test`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `administratorzy`
--

CREATE TABLE IF NOT EXISTS `administratorzy` (
`id_admin` int(11) NOT NULL,
  `login` varchar(50) COLLATE utf8_bin NOT NULL,
  `haslo` varchar(50) COLLATE utf8_bin NOT NULL,
  `imie` varchar(50) COLLATE utf8_bin NOT NULL,
  `nazwisko` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `administratorzy`
--

INSERT INTO `administratorzy` (`id_admin`, `login`, `haslo`, `imie`, `nazwisko`) VALUES
(1, 'pawel', 'testowe', 'Paweł', 'Koneczny');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE IF NOT EXISTS `zamowienia` (
`id_zamowienia` int(7) NOT NULL,
  `id_klient` int(7) NOT NULL,
  `data_zamowienia` datetime NOT NULL,
  `data_realizacji` datetime NOT NULL,
  `status` enum('wyslana','oczekuje','zwrocona','') COLLATE utf8_bin NOT NULL,
  `rodzaj_odbioru` enum('przedplata','za pobraniem','odbior osobisty','') COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`id_zamowienia`, `id_klient`, `data_zamowienia`, `data_realizacji`, `status`, `rodzaj_odbioru`) VALUES
(1, 1, '2015-03-18 00:00:00', '2015-03-27 00:00:00', 'oczekuje', 'za pobraniem'),
(2, 1, '2015-03-01 00:00:00', '2015-03-04 00:00:00', 'wyslana', 'przedplata');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `administratorzy`
--
ALTER TABLE `administratorzy`
 ADD PRIMARY KEY (`id_admin`), ADD UNIQUE KEY `login` (`login`);

--
-- Indexes for table `zamowienia`
--
ALTER TABLE `zamowienia`
 ADD PRIMARY KEY (`id_zamowienia`), ADD KEY `id_klient` (`id_klient`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `administratorzy`
--
ALTER TABLE `administratorzy`
MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
MODIFY `id_zamowienia` int(7) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
