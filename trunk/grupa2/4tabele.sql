-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 10 Mar 2015, 18:36
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `administratorzy`
--

CREATE TABLE IF NOT EXISTS `administratorzy` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) COLLATE utf8_bin NOT NULL,
  `haslo` varchar(50) COLLATE utf8_bin NOT NULL,
  `imie` varchar(50) COLLATE utf8_bin NOT NULL,
  `nazwisko` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_admin`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `administratorzy`
--

INSERT INTO `administratorzy` (`id_admin`, `login`, `haslo`, `imie`, `nazwisko`) VALUES
(1, 'pawel', 'testowe', 'Paweł', 'Koneczny');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `galeria_zdjec`
--

CREATE TABLE IF NOT EXISTS `galeria_zdjec` (
  `id_zdjecie` int(11) NOT NULL,
  `id_produkt` int(11) NOT NULL,
  `nazwa` varchar(20) NOT NULL,
  `data_dodania` datetime NOT NULL,
  PRIMARY KEY (`id_zdjecie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `galeria_zdjec`
--

INSERT INTO `galeria_zdjec` (`id_zdjecie`, `id_produkt`, `nazwa`, `data_dodania`) VALUES
(1, 1, 'zdjecie1', '2015-03-10 17:07:24'),
(2, 2, 'zdjecie2', '2015-03-10 17:38:00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE IF NOT EXISTS `klienci` (
  `id_klient` int(11) NOT NULL,
  `id_adres` int(11) NOT NULL,
  `login` varchar(16) NOT NULL,
  `haslo` varchar(16) NOT NULL,
  `imie` varchar(20) NOT NULL,
  `nazwisko` varchar(20) NOT NULL,
  `czy_firma` tinyint(1) NOT NULL,
  `nazwa_firmy` varchar(30) NOT NULL,
  `regon` int(11) DEFAULT NULL,
  `nip` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_klient`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `klienci`
--

INSERT INTO `klienci` (`id_klient`, `id_adres`, `login`, `haslo`, `imie`, `nazwisko`, `czy_firma`, `nazwa_firmy`, `regon`, `nip`) VALUES
(1, 1, 'gienia', 'kwiatuszek', 'Genowefa', 'Kowalik', 0, '', NULL, NULL),
(2, 2, 'Maly', 'malutki', 'Grzegorz', 'Kowalski', 0, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE IF NOT EXISTS `zamowienia` (
  `id_zamowienia` int(7) NOT NULL AUTO_INCREMENT,
  `id_klient` int(7) NOT NULL,
  `data_zamowienia` datetime NOT NULL,
  `data_realizacji` datetime NOT NULL,
  `status` enum('wyslana','oczekuje','zwrocona','') COLLATE utf8_bin NOT NULL,
  `rodzaj_odbioru` enum('przedplata','za pobraniem','odbior osobisty','') COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_zamowienia`),
  KEY `id_klient` (`id_klient`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`id_zamowienia`, `id_klient`, `data_zamowienia`, `data_realizacji`, `status`, `rodzaj_odbioru`) VALUES
(1, 1, '2015-03-18 00:00:00', '2015-03-27 00:00:00', 'oczekuje', 'za pobraniem'),
(2, 1, '2015-03-01 00:00:00', '2015-03-04 00:00:00', 'wyslana', 'przedplata');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
