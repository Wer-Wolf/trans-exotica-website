-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 02. Apr 2021 um 11:39
-- Server-Version: 10.4.18-MariaDB
-- PHP-Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `trans-exotica`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `animals`
--

CREATE TABLE `animals` (
  `AID` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `enname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `boxes`
--

CREATE TABLE `boxes` (
  `BID` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `length` int(10) UNSIGNED NOT NULL,
  `height` int(10) UNSIGNED NOT NULL,
  `width` int(10) UNSIGNED NOT NULL,
  `weight` int(10) UNSIGNED NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `entext` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pictures`
--

CREATE TABLE `pictures` (
  `PID` int(10) UNSIGNED NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ranimal`
--

CREATE TABLE `ranimal` (
  `AID` int(10) UNSIGNED NOT NULL,
  `BID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rpicture`
--

CREATE TABLE `rpicture` (
  `PID` int(10) UNSIGNED NOT NULL,
  `BID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`AID`);

--
-- Indizes für die Tabelle `boxes`
--
ALTER TABLE `boxes`
  ADD PRIMARY KEY (`BID`);

--
-- Indizes für die Tabelle `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`PID`);

--
-- Indizes für die Tabelle `ranimal`
--
ALTER TABLE `ranimal`
  ADD PRIMARY KEY (`AID`,`BID`),
  ADD KEY `BID` (`BID`);

--
-- Indizes für die Tabelle `rpicture`
--
ALTER TABLE `rpicture`
  ADD PRIMARY KEY (`PID`,`BID`),
  ADD KEY `BID` (`BID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `animals`
--
ALTER TABLE `animals`
  MODIFY `AID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `boxes`
--
ALTER TABLE `boxes`
  MODIFY `BID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `pictures`
--
ALTER TABLE `pictures`
  MODIFY `PID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `ranimal`
--
ALTER TABLE `ranimal`
  ADD CONSTRAINT `ranimal_ibfk_1` FOREIGN KEY (`BID`) REFERENCES `boxes` (`BID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ranimal_ibfk_2` FOREIGN KEY (`AID`) REFERENCES `animals` (`AID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `rpicture`
--
ALTER TABLE `rpicture`
  ADD CONSTRAINT `rpicture_ibfk_1` FOREIGN KEY (`BID`) REFERENCES `boxes` (`BID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rpicture_ibfk_2` FOREIGN KEY (`PID`) REFERENCES `pictures` (`PID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
