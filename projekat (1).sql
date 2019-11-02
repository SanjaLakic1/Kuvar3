-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2019 at 02:47 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekat`
--

-- --------------------------------------------------------

--
-- Table structure for table `namirnica`
--

CREATE TABLE `namirnica` (
  `id` int(11) DEFAULT NULL,
  `ime` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `namirnica`
--

INSERT INTO `namirnica` (`id`, `ime`) VALUES
(1, 'jabuka'),
(2, 'kruska'),
(3, 'visnja'),
(4, 'sljiva'),
(5, 'grozdje'),
(6, 'brusnica'),
(7, 'ananas'),
(8, 'krompir'),
(9, 'sargarepa'),
(10, 'pasulj'),
(11, 'grasak'),
(12, 'paradajz'),
(13, 'crni luk'),
(14, 'beli luk'),
(15, 'mix povrca'),
(16, 'brasno'),
(17, 'maslinovo ulje'),
(18, 'pirinac'),
(20, 'griz'),
(21, 'jaja'),
(22, 'mleko'),
(23, 'jogurt'),
(24, 'pilece belo '),
(25, 'teletina'),
(26, 'pileci batak'),
(27, 'riba'),
(28, 'mleveno meso'),
(29, 'suvo meso'),
(30, 'tunjevina'),
(31, 'bundeva'),
(19, 'testenine');

-- --------------------------------------------------------

--
-- Table structure for table `recept`
--

CREATE TABLE `recept` (
  `id` int(11) DEFAULT NULL,
  `ime` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `recept`
--

INSERT INTO `recept` (`id`, `ime`) VALUES
(1, 'Bolonjeze'),
(2, 'Kasica jabuka sargarepa'),
(3, 'Krem supa od bundeve'),
(4, 'Sareni pirinac'),
(5, 'Kasica bundeva'),
(6, 'Koh'),
(7, 'Pita sa jabukama'),
(8, 'Grasak'),
(9, 'Kasica krompir teletina'),
(10, 'Mafini sa sljivama'),
(11, 'Kasica grasak piletina'),
(12, 'Kolac sa visnjama'),
(13, 'Hleb bez glutena'),
(14, 'Kasica sargarepa'),
(15, 'Pasulj');

-- --------------------------------------------------------

--
-- Table structure for table `receptnamirnica`
--

CREATE TABLE `receptnamirnica` (
  `ID` int(50) NOT NULL,
  `IME` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ReceptID` int(50) NOT NULL,
  `NamirniceID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `receptnamirnica`
--

INSERT INTO `receptnamirnica` (`ID`, `IME`, `ReceptID`, `NamirniceID`) VALUES
(1, 'Bolonjeze.html', 1, 9),
(2, 'Bolonjeze.html', 1, 12),
(3, 'Bolonjeze.html', 1, 13),
(4, 'Bolonjeze.html', 1, 17),
(5, 'Bolonjeze.html', 1, 19),
(6, 'kasicajabukasargarepa.html', 2, 1),
(7, 'kasicajabukasargarepa.html', 2, 9),
(8, 'kremsupaodbundeve.html', 3, 8),
(9, 'kremsupaodbundeve.html', 3, 9),
(10, 'kremsupaodbundeve.html', 3, 13),
(11, 'kremsupaodbundeve.html', 3, 31),
(12, 'sarenipirinac.html', 4, 15),
(13, 'sarenipirinac.html', 4, 17),
(14, 'sarenipirinac.html', 4, 18),
(15, 'kasicabundeva.html', 5, 17),
(16, 'kasicabundeva.html', 5, 31),
(17, 'koh.html', 6, 20),
(18, 'koh.html', 6, 21),
(19, 'koh.html', 6, 22),
(20, 'pitasajabukama.html', 7, 1),
(21, 'pitasajabukama.html', 7, 16),
(22, 'pitasajabukama.html', 7, 17),
(23, 'pitasajabukama.html', 7, 22),
(24, 'grasak.html', 8, 9),
(25, 'grasak.html', 8, 11),
(26, 'grasak.html', 8, 13),
(27, 'grasak.html', 8, 24),
(28, 'kasicakrompirteletina.html', 9, 8),
(29, 'kasicakrompirteletina.html', 9, 17),
(30, 'kasicakrompirteletina.html', 9, 25),
(31, 'mafinisasljivama.html', 10, 4),
(32, 'mafinisasljivama.html', 10, 16),
(33, 'mafinisasljivama.html', 10, 17),
(34, 'mafinisasljivama.html', 10, 21),
(35, 'mafinisasljivama.html', 10, 23),
(36, 'kasicagrasakpiletina.html', 11, 11),
(37, 'kasicagrasakpiletina.html', 11, 17),
(38, 'kasicagrasakpiletina.html', 11, 24),
(39, 'kolacsavisnjama.html', 12, 3),
(40, 'kolacsavisnjama.html', 12, 16),
(41, 'kolacsavisnjama.html', 12, 17),
(42, 'kolacsavisnjama.html', 12, 23),
(43, 'hlebbezglutena.html', 13, 16),
(44, 'hlebbezglutena.html', 13, 17),
(45, 'kasicasargarepa.html', 14, 9),
(46, 'kasicasargarepa.html', 14, 17),
(47, 'pasulj.html', 15, 10),
(48, 'pasulj.html', 15, 13),
(49, 'pasulj.html', 15, 29);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(25) NOT NULL,
  `Username` varchar(65) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Username`, `Password`) VALUES
(1, 'SanjaLakic', 'LakicSanja'),
(2, 'JovanLakic', 'LakicJovan'),
(3, 'HelenaLakic', 'LakicHelena'),
(4, 'NikolaLakic', 'LakicNikola');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
