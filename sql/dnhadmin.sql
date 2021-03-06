-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Machine: 127.0.0.1
-- Genereertijd: 20 mrt 2015 om 16:10
-- Serverversie: 5.5.34
-- PHP-versie: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `wordpress`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dnh_rubriek`
--

CREATE TABLE IF NOT EXISTS `dnh_rubriek` (
  `ID` int(10) unsigned NOT NULL,
  `Naam` varchar(64) NOT NULL,
  `Omschrijving` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `dnh_rubriek`
--

INSERT INTO `dnh_rubriek` (`ID`, `Naam`, `Omschrijving`) VALUES
(1, 'Contributie en liggeld leden', ''),
(2, 'Passanten', NULL),
(3, 'Water en elektra, inkomsten', NULL),
(5, 'Water en elektra, uitgaven', NULL),
(7, 'Huur perceel & Waterschap\r\n', NULL),
(8, 'Gemeentebelasting (o.a. Kliko)', ''),
(9, 'Kosten juridisch advies\r\n', NULL),
(10, 'Verzekeringen\r\n', NULL),
(11, 'Bankkosten', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dnh_tarief`
--

CREATE TABLE IF NOT EXISTS `dnh_tarief` (
  `Jaar` int(10) unsigned NOT NULL,
  `Contributie_leden` decimal(10,2) unsigned DEFAULT NULL,
  `Energietoeslag_leden` decimal(10,2) unsigned DEFAULT NULL,
  `Liggeld_leden` decimal(10,2) unsigned DEFAULT NULL,
  `Liggeld_passanten` decimal(10,2) unsigned DEFAULT NULL,
  PRIMARY KEY (`Jaar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `dnh_tarief`
--

INSERT INTO `dnh_tarief` (`Jaar`, `Contributie_leden`, `Energietoeslag_leden`, `Liggeld_leden`, `Liggeld_passanten`) VALUES
(2014, '100.00', '12.50', '7.50', '0.75'),
(2015, '100.00', '12.50', '7.50', '0.75');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
