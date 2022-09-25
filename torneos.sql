-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2022 at 12:05 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `torneos`
--

-- --------------------------------------------------------

--
-- Table structure for table `juegos`
--

CREATE TABLE `juegos` (
  `Id_Jue_Dep` int(4) NOT NULL,
  `N_jue_dep` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `T_torneo` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Cant_Jug_Equip` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `torneo`
--

CREATE TABLE `torneo` (
  `Id_Torneo` int(4) NOT NULL,
  `N_torneo` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `N_jue_dep` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Cant_llaves` int(3) NOT NULL,
  `Id_Jue_Dep` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `torneo`
--

INSERT INTO `torneo` (`Id_Torneo`, `N_torneo`, `N_jue_dep`, `Cant_llaves`, `Id_Jue_Dep`) VALUES
(1, 'Los ratis', 'Rocket League', 16, 1),
(2, 'Los punkis', 'League of legends', 8, 2),
(3, 'Los ninis', 'Counter Strike: Global Offensive', 8, 3),
(4, 'Los Calamidades', 'League of legends', 8, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`Id_Jue_Dep`);

--
-- Indexes for table `torneo`
--
ALTER TABLE `torneo`
  ADD PRIMARY KEY (`Id_Torneo`),
  ADD KEY `Id_Jue_Dep` (`Id_Jue_Dep`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `juegos`
--
ALTER TABLE `juegos`
  MODIFY `Id_Jue_Dep` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `torneo`
--
ALTER TABLE `torneo`
  MODIFY `Id_Torneo` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
