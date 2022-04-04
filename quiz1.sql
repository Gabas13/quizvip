-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2022 at 08:10 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `ktberkait`
--

CREATE TABLE `ktberkait` (
  `id` int(11) NOT NULL,
  `baris` int(2) NOT NULL,
  `kelsoal` int(3) NOT NULL,
  `kata` varchar(20) NOT NULL,
  `potongan` int(2) NOT NULL,
  `status` int(2) NOT NULL,
  `block` enum('yes','no') NOT NULL,
  `hasil` enum('BENAR','SALAH') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ktberkait`
--

INSERT INTO `ktberkait` (`id`, `baris`, `kelsoal`, `kata`, `potongan`, `status`, `block`, `hasil`) VALUES
(1, 0, 0, 'KATA0', 0, 0, 'no', 'SALAH'),
(2, 1, 1, 'KATA1', 0, 1, 'yes', 'SALAH'),
(3, 2, 1, 'KATA2', 0, 1, 'yes', 'SALAH'),
(4, 3, 1, 'KATA3', 0, 1, 'yes', 'SALAH'),
(5, 4, 1, 'KATA4', 0, 1, 'yes', 'SALAH'),
(6, 5, 1, 'KATA5', 0, 1, 'yes', 'SALAH'),
(7, 6, 1, 'KATA6', 0, 1, 'yes', 'SALAH'),
(8, 7, 1, 'KATA7', 0, 1, 'yes', 'SALAH'),
(9, 8, 1, 'KATA8', 0, 1, 'yes', 'SALAH'),
(10, 1, 2, 'KATA9', 0, 0, 'no', 'BENAR'),
(11, 2, 2, 'KATA10', 0, 1, 'no', 'SALAH'),
(12, 3, 2, 'KATA11', 0, 0, 'no', 'SALAH'),
(13, 4, 2, 'KATA12', 0, 0, 'no', 'SALAH'),
(14, 5, 2, 'KATA13', 0, 0, 'no', 'SALAH'),
(15, 6, 2, 'KATA14', 0, 0, 'no', 'SALAH'),
(16, 7, 2, 'KATA15', 0, 0, 'no', 'SALAH'),
(17, 8, 2, 'KATA16', 0, 0, 'no', 'SALAH');

-- --------------------------------------------------------

--
-- Table structure for table `trubaris`
--

CREATE TABLE `trubaris` (
  `id` int(11) NOT NULL,
  `baris` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trubaris`
--

INSERT INTO `trubaris` (`id`, `baris`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `trukelsoal`
--

CREATE TABLE `trukelsoal` (
  `id` int(11) NOT NULL,
  `kelsoal` int(3) NOT NULL,
  `statpakai` int(2) NOT NULL,
  `block` enum('yes','no') NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trukelsoal`
--

INSERT INTO `trukelsoal` (`id`, `kelsoal`, `statpakai`, `block`) VALUES
(1, 1, 1, 'yes'),
(2, 2, 1, 'no'),
(3, 3, 1, 'yes'),
(4, 4, 1, 'yes'),
(5, 5, 1, 'yes'),
(6, 6, 1, 'yes'),
(7, 7, 0, 'yes'),
(8, 8, 0, 'yes'),
(9, 9, 0, 'yes'),
(10, 10, 0, 'yes'),
(11, 11, 0, 'yes'),
(12, 12, 0, 'yes'),
(13, 13, 0, 'yes'),
(14, 14, 0, 'yes'),
(15, 15, 0, 'yes'),
(16, 16, 0, 'yes'),
(17, 17, 0, 'yes'),
(18, 18, 0, 'yes'),
(19, 19, 0, 'yes'),
(20, 20, 0, 'yes'),
(21, 21, 0, 'yes'),
(22, 22, 0, 'yes'),
(23, 23, 0, 'yes'),
(24, 24, 0, 'yes'),
(25, 25, 0, 'yes'),
(26, 26, 0, 'yes'),
(27, 27, 0, 'yes'),
(28, 28, 0, 'yes'),
(29, 29, 0, 'yes'),
(30, 30, 0, 'yes'),
(31, 31, 0, 'yes'),
(32, 32, 0, 'yes'),
(33, 33, 0, 'yes'),
(34, 34, 0, 'yes'),
(35, 35, 0, 'yes'),
(36, 36, 0, 'yes'),
(37, 37, 0, 'yes'),
(38, 38, 0, 'yes'),
(39, 39, 0, 'yes'),
(40, 40, 0, 'yes');

--
-- Triggers `trukelsoal`
--
DELIMITER $$
CREATE TRIGGER `trigger_update_ktberkait_for_manage_block` AFTER UPDATE ON `trukelsoal` FOR EACH ROW BEGIN
		UPDATE ktberkait SET
			block =NEW.block 
		WHERE kelsoal = NEW.kelsoal;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ktberkait`
--
ALTER TABLE `ktberkait`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trubaris`
--
ALTER TABLE `trubaris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trukelsoal`
--
ALTER TABLE `trukelsoal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ktberkait`
--
ALTER TABLE `ktberkait`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `trubaris`
--
ALTER TABLE `trubaris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `trukelsoal`
--
ALTER TABLE `trukelsoal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
