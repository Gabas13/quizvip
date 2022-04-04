-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2022 at 09:24 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

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
  `kata` varchar(30) NOT NULL,
  `potongan` int(2) NOT NULL,
  `status` int(2) NOT NULL,
  `block` enum('yes','no') NOT NULL,
  `hasil` enum('BENAR','SALAH') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ktberkait`
--

INSERT INTO `ktberkait` (`id`, `baris`, `kelsoal`, `kata`, `potongan`, `status`, `block`, `hasil`) VALUES
(1, 0, 0, 'KATA0', 0, 0, 'yes', 'SALAH'),
(2, 1, 1, 'TERONG', 0, 0, 'yes', 'BENAR'),
(3, 2, 1, 'TUGU KERIS', 0, 0, 'yes', 'SALAH'),
(4, 3, 1, 'KETUPAT', 0, 0, 'yes', 'BENAR'),
(5, 4, 1, 'DOKTER', 0, 0, 'yes', 'BENAR'),
(6, 5, 1, 'KANGGURU', 0, 0, 'yes', 'BENAR'),
(7, 6, 1, 'B.J. HABIBIE', 0, 0, 'yes', 'BENAR'),
(8, 7, 1, 'GOLF', 0, 0, 'yes', 'SALAH'),
(9, 8, 1, 'PAYUNG', 0, 0, 'yes', 'SALAH'),
(10, 9, 1, 'GALON', 0, 0, 'yes', 'SALAH'),
(11, 10, 1, 'DASI', 0, 0, 'yes', 'SALAH'),
(12, 1, 2, 'JAMTOS', 0, 0, 'yes', 'BENAR'),
(13, 2, 2, 'SEPEDA', 0, 0, 'yes', 'BENAR'),
(14, 3, 2, 'JAGUNG', 0, 0, 'yes', 'BENAR'),
(15, 4, 2, 'MAULANA', 0, 0, 'yes', 'BENAR'),
(16, 5, 2, 'PEMPEK', 0, 0, 'yes', 'BENAR'),
(17, 6, 2, 'GARUDA', 0, 0, 'yes', 'SALAH'),
(18, 7, 2, 'KORAN', 0, 0, 'yes', 'BENAR'),
(19, 8, 2, 'GURU', 0, 0, 'yes', 'BENAR'),
(20, 9, 2, 'PENGGARIS', 0, 0, 'yes', 'BENAR'),
(21, 10, 2, 'COKELAT', 0, 0, 'yes', 'SALAH'),
(22, 1, 3, 'SELIMUT', 0, 0, 'yes', 'SALAH'),
(23, 2, 3, 'KAJANG LAKO', 0, 0, 'yes', 'BENAR'),
(24, 3, 3, 'PISANG', 0, 0, 'yes', 'SALAH'),
(25, 4, 3, 'BADAK', 0, 0, 'yes', 'BENAR'),
(26, 5, 3, 'FUTSAL', 0, 0, 'yes', 'SALAH'),
(27, 6, 3, 'ANCOL', 0, 0, 'yes', 'SALAH'),
(28, 7, 3, 'KAKTUS', 0, 0, 'yes', 'SALAH'),
(29, 8, 3, 'JOKOWI', 0, 0, 'yes', 'BENAR'),
(30, 9, 3, 'JANTUNG', 0, 0, 'yes', 'SALAH'),
(31, 10, 3, 'KAMPANYE', 0, 0, 'yes', 'SALAH'),
(32, 1, 4, 'RIDWAN KAMIL', 0, 0, 'yes', 'BENAR'),
(33, 2, 4, 'SARUNG', 0, 1, 'yes', 'SALAH'),
(34, 3, 4, 'SINGA', 0, 0, 'yes', 'SALAH'),
(35, 4, 4, 'SENAM', 0, 0, 'yes', 'BENAR'),
(36, 5, 4, 'DURIAN', 0, 0, 'yes', 'BENAR'),
(37, 6, 4, 'MADU', 0, 0, 'yes', 'SALAH'),
(38, 7, 4, 'PESAWAT', 0, 0, 'yes', 'SALAH'),
(39, 8, 4, 'POLISI', 0, 0, 'yes', 'SALAH'),
(40, 9, 4, 'JENGGOT', 0, 0, 'yes', 'BENAR'),
(41, 10, 4, 'KAMPUS', 0, 0, 'yes', 'SALAH'),
(42, 1, 5, 'MARTABAK', 0, 0, 'yes', 'BENAR'),
(43, 2, 5, 'TENIS', 0, 1, 'yes', 'SALAH'),
(44, 3, 5, 'DANAU TOBA', 0, 0, 'yes', 'SALAH'),
(45, 4, 5, 'HOTEL', 0, 0, 'yes', 'BENAR'),
(46, 5, 5, 'ANIES BASWEDAN', 0, 0, 'yes', 'BENAR'),
(47, 6, 5, 'NELAYAN', 0, 0, 'yes', 'SALAH'),
(48, 7, 5, 'KELAPA', 0, 0, 'yes', 'SALAH'),
(49, 8, 5, 'SPIDERMAN', 0, 0, 'yes', 'BENAR'),
(50, 9, 5, 'JERAWAT', 0, 0, 'yes', 'SALAH'),
(51, 10, 5, 'SAWAH', 0, 0, 'yes', 'BENAR'),
(52, 1, 6, 'KAMPOENG RADJA', 0, 0, 'yes', 'SALAH'),
(53, 2, 6, 'SAPI', 0, 0, 'yes', 'BENAR'),
(54, 3, 6, 'KOLAM', 0, 0, 'yes', 'SALAH'),
(55, 4, 6, 'LURAH', 0, 0, 'yes', 'BENAR'),
(56, 5, 6, 'BAKSO', 0, 0, 'yes', 'SALAH'),
(57, 6, 6, 'SOEHARTO', 0, 0, 'yes', 'BENAR'),
(58, 7, 6, 'DINGIN', 0, 0, 'yes', 'SALAH'),
(59, 8, 6, 'SILAT', 0, 0, 'yes', 'BENAR'),
(60, 9, 6, 'DIET', 0, 0, 'yes', 'SALAH'),
(61, 10, 6, 'PIALA', 0, 1, 'yes', 'SALAH'),
(62, 1, 7, 'SATE', 0, 0, 'yes', 'SALAH'),
(63, 2, 7, 'PANDA', 0, 0, 'yes', 'SALAH'),
(64, 3, 7, 'PILOT', 0, 0, 'yes', 'SALAH'),
(65, 4, 7, 'JEMBATAN AMPERA', 0, 0, 'yes', 'SALAH'),
(66, 5, 7, 'GANJAR PRANOWO', 0, 0, 'yes', 'SALAH'),
(67, 6, 7, 'BATIK', 0, 0, 'yes', 'SALAH'),
(68, 7, 7, 'MANGGIS', 0, 0, 'yes', 'SALAH'),
(69, 8, 7, 'PUASA', 0, 0, 'yes', 'SALAH'),
(70, 9, 7, 'OJEK', 0, 1, 'yes', 'SALAH'),
(71, 10, 7, 'NOVEL', 0, 0, 'yes', 'SALAH'),
(72, 1, 8, 'CANDI BOROBUDUR', 0, 0, 'yes', 'SALAH'),
(73, 2, 8, 'PATIN', 0, 0, 'yes', 'SALAH'),
(74, 3, 8, 'NADIEM MAKARIM', 0, 0, 'yes', 'SALAH'),
(75, 4, 8, 'SOTO', 0, 0, 'yes', 'SALAH'),
(76, 5, 8, 'ANGGUR', 0, 0, 'yes', 'SALAH'),
(77, 6, 8, 'KERAMIK', 0, 0, 'yes', 'SALAH'),
(78, 7, 8, 'VOLI', 0, 0, 'yes', 'SALAH'),
(79, 8, 8, 'GEREJA', 0, 0, 'yes', 'SALAH'),
(80, 9, 8, 'PETAI', 0, 0, 'yes', 'BENAR'),
(81, 10, 8, 'RACUN', 0, 1, 'yes', 'SALAH'),
(82, 1, 9, 'HASAN BASRI AGUS', 0, 1, 'yes', 'SALAH'),
(83, 2, 9, 'GUNTING', 0, 0, 'yes', 'SALAH'),
(84, 3, 9, 'MENARA EIFFEL', 0, 0, 'yes', 'SALAH'),
(85, 4, 9, 'BEBEK', 0, 0, 'yes', 'SALAH'),
(86, 5, 9, 'PECEL LELE', 0, 0, 'yes', 'SALAH'),
(87, 6, 9, 'QURBAN', 0, 0, 'yes', 'SALAH'),
(88, 7, 9, 'JERUK', 0, 0, 'yes', 'SALAH'),
(89, 8, 9, 'SATPAM', 0, 0, 'yes', 'SALAH'),
(90, 9, 9, 'ROKOK', 0, 0, 'yes', 'SALAH'),
(91, 10, 9, 'RADIO', 0, 0, 'yes', 'SALAH'),
(92, 1, 10, 'PIZZA', 0, 0, 'yes', 'BENAR'),
(93, 2, 10, 'NANAS', 0, 0, 'yes', 'BENAR'),
(94, 3, 10, 'PRABOWO', 0, 0, 'yes', 'BENAR'),
(95, 4, 10, 'MODEL', 0, 1, 'yes', 'SALAH'),
(96, 5, 10, 'BIOSKOP', 0, 0, 'yes', 'BENAR'),
(97, 6, 10, 'TAJ MAHAL', 0, 0, 'yes', 'BENAR'),
(98, 7, 10, 'SISIR', 0, 0, 'yes', 'BENAR'),
(99, 8, 10, 'TIKUS', 0, 0, 'yes', 'BENAR'),
(100, 9, 10, 'SABTU', 0, 0, 'yes', 'BENAR'),
(101, 10, 10, 'TANGGA', 0, 0, 'yes', 'BENAR'),
(102, 1, 11, 'TUMPENG', 0, 0, 'yes', 'BENAR'),
(103, 2, 11, 'CICAK', 0, 0, 'yes', 'BENAR'),
(104, 3, 11, 'PIRAMIDA', 0, 0, 'yes', 'BENAR'),
(105, 4, 11, 'TOMAT', 0, 0, 'yes', 'SALAH'),
(106, 5, 11, 'ARSITEK', 0, 1, 'yes', 'SALAH'),
(107, 6, 11, 'SURYA PALOH', 0, 0, 'yes', 'SALAH'),
(108, 7, 11, 'DISKON', 0, 0, 'yes', 'SALAH'),
(109, 8, 11, 'LILIN', 0, 0, 'yes', 'SALAH'),
(110, 9, 11, 'UPACARA', 0, 0, 'yes', 'BENAR'),
(111, 10, 11, 'VAKSIN', 0, 0, 'yes', 'BENAR'),
(112, 1, 12, 'KEBAB', 0, 0, 'yes', 'BENAR'),
(113, 2, 12, 'BECAK', 0, 0, 'yes', 'SALAH'),
(114, 3, 12, 'ZUMI ZOLA', 0, 0, 'yes', 'BENAR'),
(115, 4, 12, 'KOMPAS', 0, 0, 'yes', 'BENAR'),
(116, 5, 12, 'SUNGAI MUSI', 0, 0, 'yes', 'SALAH'),
(117, 6, 12, 'BUBUR', 0, 0, 'yes', 'BENAR'),
(118, 7, 12, 'PELANGI', 0, 1, 'yes', 'SALAH'),
(119, 8, 12, 'RENANG', 0, 0, 'yes', 'SALAH'),
(120, 9, 12, 'HANTU', 0, 0, 'yes', 'SALAH'),
(121, 10, 12, 'KACAMATA', 0, 0, 'yes', 'BENAR'),
(122, 1, 13, 'MONAS', 0, 0, 'yes', 'BENAR'),
(123, 2, 13, 'KAMBING', 0, 0, 'yes', 'SALAH'),
(124, 3, 13, 'MEGAWATI', 0, 0, 'yes', 'BENAR'),
(125, 4, 13, 'PISTOL', 0, 0, 'yes', 'BENAR'),
(126, 5, 13, 'KENTANG', 0, 0, 'yes', 'SALAH'),
(127, 6, 13, 'BALET', 0, 1, 'yes', 'SALAH'),
(128, 7, 13, 'PENGACARA', 0, 0, 'yes', 'BENAR'),
(129, 8, 13, 'DUKU', 0, 0, 'yes', 'BENAR'),
(130, 9, 13, 'KANTIN', 0, 0, 'yes', 'SALAH'),
(131, 10, 13, 'TINTA', 0, 0, 'yes', 'BENAR'),
(132, 1, 14, 'APEL', 0, 0, 'yes', 'BENAR'),
(133, 2, 14, 'BASKET', 0, 0, 'yes', 'BENAR'),
(134, 3, 14, 'BENDERA', 0, 0, 'yes', 'BENAR'),
(135, 4, 14, 'UNTA', 0, 0, 'yes', 'BENAR'),
(136, 5, 14, 'SUSILO BAMBANG YUDHOYONO', 0, 0, 'yes', 'SALAH'),
(137, 6, 14, 'GENTALA ARASY', 0, 0, 'yes', 'BENAR'),
(138, 7, 14, 'BIDAN', 0, 0, 'yes', 'BENAR'),
(139, 8, 14, 'VIHARA', 0, 1, 'yes', 'SALAH'),
(140, 9, 14, 'KERTAS', 0, 0, 'yes', 'SALAH'),
(141, 10, 14, 'GITAR', 0, 0, 'yes', 'SALAH'),
(142, 1, 15, 'SIOMAY', 0, 0, 'yes', 'BENAR'),
(143, 2, 15, 'KIPAS', 0, 1, 'yes', 'SALAH'),
(144, 3, 15, 'SYARIF FASHA', 0, 0, 'yes', 'BENAR'),
(145, 4, 15, 'ALPUKAT', 0, 0, 'yes', 'SALAH'),
(146, 5, 15, 'BURUNG', 0, 0, 'yes', 'BENAR'),
(147, 6, 15, 'ANGSO DUO', 0, 0, 'yes', 'BENAR'),
(148, 7, 15, 'PETANI', 0, 0, 'yes', 'BENAR'),
(149, 8, 15, 'SAMBAL', 0, 0, 'yes', 'BENAR'),
(150, 9, 15, 'TASBIH', 0, 0, 'yes', 'BENAR'),
(151, 10, 15, 'PAGAR', 0, 0, 'yes', 'SALAH'),
(152, 1, 16, 'KELERENG', 0, 1, 'yes', 'SALAH'),
(153, 2, 16, 'MONYET', 0, 0, 'yes', 'SALAH'),
(154, 3, 16, 'KOKI', 0, 0, 'yes', 'SALAH'),
(155, 4, 16, 'PEPAYA', 0, 0, 'yes', 'SALAH'),
(156, 5, 16, 'JAM GADANG', 0, 0, 'yes', 'BENAR'),
(157, 6, 16, 'SRI MULYANI', 0, 0, 'yes', 'BENAR'),
(158, 7, 16, 'BROKOLI', 0, 0, 'yes', 'SALAH'),
(159, 8, 16, 'DODOL', 0, 0, 'yes', 'BENAR'),
(160, 9, 16, 'OVEN', 0, 0, 'yes', 'BENAR'),
(161, 10, 16, 'HANDUK', 0, 0, 'yes', 'BENAR'),
(162, 1, 17, 'MELON', 0, 0, 'yes', 'SALAH'),
(163, 2, 17, 'TEMPOYAK', 0, 0, 'yes', 'BENAR'),
(164, 3, 17, 'SANDIAGA UNO', 0, 0, 'yes', 'SALAH'),
(165, 4, 17, 'JAM', 0, 0, 'yes', 'BENAR'),
(166, 5, 17, 'BATANGHARI', 0, 0, 'yes', 'BENAR'),
(167, 6, 17, 'PRAMUGARI', 0, 0, 'yes', 'BENAR'),
(168, 7, 17, 'KOMODO', 0, 0, 'yes', 'BENAR'),
(169, 8, 17, 'PURA', 0, 0, 'yes', 'BENAR'),
(170, 9, 17, 'KEMEJA', 0, 0, 'yes', 'BENAR'),
(171, 10, 17, 'RUMPUT', 0, 1, 'yes', 'SALAH'),
(172, 1, 18, 'PADAMARAN', 0, 0, 'no', 'SALAH'),
(173, 2, 18, 'DESAINER', 0, 1, 'no', 'SALAH'),
(174, 3, 18, 'SALAK', 0, 0, 'no', 'BENAR'),
(175, 4, 18, 'BONEKA', 0, 0, 'no', 'BENAR'),
(176, 5, 18, 'CANDI MUARO JAMBI', 0, 0, 'no', 'SALAH'),
(177, 6, 18, 'GUS DUR', 0, 0, 'no', 'BENAR'),
(178, 7, 18, 'GAJAH', 0, 0, 'no', 'BENAR'),
(179, 8, 18, 'MASJID', 0, 0, 'no', 'BENAR'),
(180, 9, 18, 'AYUNAN', 0, 0, 'no', 'BENAR'),
(181, 10, 18, 'CAFÉ', 0, 0, 'no', 'SALAH'),
(182, 1, 19, 'KURMA', 0, 0, 'yes', 'SALAH'),
(183, 2, 19, 'SABUN', 0, 0, 'yes', 'SALAH'),
(184, 3, 19, 'KAPAL', 0, 0, 'yes', 'SALAH'),
(185, 4, 19, 'AHOK', 0, 0, 'yes', 'SALAH'),
(186, 5, 19, 'TUGU JUANG', 0, 0, 'yes', 'SALAH'),
(187, 6, 19, 'KERANG', 0, 0, 'yes', 'SALAH'),
(188, 7, 19, 'TIMUN', 0, 0, 'yes', 'SALAH'),
(189, 8, 19, 'REPORTER', 0, 0, 'yes', 'SALAH'),
(190, 9, 19, 'TERMINAL', 0, 0, 'yes', 'SALAH'),
(191, 10, 19, 'TISU', 0, 0, 'yes', 'SALAH'),
(192, 1, 20, 'BARACK OBAMA', 0, 0, 'yes', 'SALAH'),
(193, 2, 20, 'WORTEL', 0, 0, 'yes', 'SALAH'),
(194, 3, 20, 'KASIR', 0, 0, 'yes', 'SALAH'),
(195, 4, 20, 'SELADA', 0, 0, 'yes', 'SALAH'),
(196, 5, 20, 'CUMI-CUMI', 0, 0, 'yes', 'SALAH'),
(197, 6, 20, 'KERETA API', 0, 0, 'yes', 'SALAH'),
(198, 7, 20, 'RAMBUTAN', 0, 0, 'yes', 'SALAH'),
(199, 8, 20, 'MUSEUM ', 0, 0, 'yes', 'SALAH'),
(200, 9, 20, 'BUTIK', 0, 0, 'yes', 'SALAH'),
(201, 10, 20, 'CUTI', 0, 0, 'yes', 'SALAH'),
(202, 1, 21, 'PARFUM', 0, 0, 'yes', 'SALAH'),
(203, 2, 21, 'UDANG', 0, 0, 'yes', 'SALAH'),
(204, 3, 21, 'TAMAN REMAJA', 0, 0, 'yes', 'SALAH'),
(205, 4, 21, 'ATLET', 0, 0, 'yes', 'SALAH'),
(206, 5, 21, 'JAMBU', 0, 0, 'yes', 'SALAH'),
(207, 6, 21, 'SUSU', 0, 0, 'yes', 'SALAH'),
(208, 7, 21, 'KARTINI', 0, 0, 'yes', 'SALAH'),
(209, 8, 21, 'SINGKONG', 0, 0, 'yes', 'SALAH'),
(210, 9, 21, 'LIFT', 0, 0, 'yes', 'SALAH'),
(211, 10, 21, 'TAKSI', 0, 0, 'yes', 'SALAH'),
(212, 1, 22, 'TENDA', 0, 0, 'yes', 'SALAH'),
(213, 2, 22, 'JERAPAH', 0, 0, 'yes', 'SALAH'),
(214, 3, 22, 'DOSEN', 0, 0, 'yes', 'SALAH'),
(215, 4, 22, 'TAMAN RIMBA', 0, 0, 'yes', 'SALAH'),
(216, 5, 22, 'KIM JONG UN', 0, 0, 'yes', 'SALAH'),
(217, 6, 22, 'MANGGA', 0, 0, 'yes', 'SALAH'),
(218, 7, 22, 'AMPLOP', 0, 0, 'yes', 'SALAH'),
(219, 8, 22, 'LONTONG', 0, 0, 'yes', 'SALAH'),
(220, 9, 22, 'AMBULAN', 0, 0, 'yes', 'SALAH'),
(221, 10, 22, 'BRANKAS', 0, 0, 'yes', 'SALAH'),
(222, 1, 23, 'MASKER', 0, 0, 'yes', 'SALAH'),
(223, 2, 23, 'GADO-GADO', 0, 0, 'yes', 'SALAH'),
(224, 3, 23, 'PRESIDEN', 0, 0, 'yes', 'SALAH'),
(225, 4, 23, 'ZEBRA', 0, 0, 'yes', 'SALAH'),
(226, 5, 23, 'BELIMBING', 0, 0, 'yes', 'SALAH'),
(227, 6, 23, 'SUSI PUDJIASTUTI', 0, 0, 'yes', 'SALAH'),
(228, 7, 23, 'SENTER', 0, 0, 'yes', 'SALAH'),
(229, 8, 23, 'DANAU KACO', 0, 0, 'yes', 'SALAH'),
(230, 9, 23, 'CERMIN', 0, 0, 'yes', 'SALAH'),
(231, 10, 23, 'KABEL', 0, 0, 'yes', 'SALAH'),
(232, 1, 24, 'BUAH NAGA', 0, 0, 'yes', 'SALAH'),
(233, 2, 24, 'SALDO', 0, 0, 'yes', 'SALAH'),
(234, 3, 24, 'PUAN MAHARANI', 0, 0, 'yes', 'SALAH'),
(235, 4, 24, 'DAGU', 0, 0, 'yes', 'SALAH'),
(236, 5, 24, 'ULAR', 0, 0, 'yes', 'SALAH'),
(237, 6, 24, 'RENDANG', 0, 0, 'yes', 'SALAH'),
(238, 7, 24, 'PAHIT', 0, 0, 'yes', 'SALAH'),
(239, 8, 24, 'MENARA PISA', 0, 0, 'yes', 'SALAH'),
(240, 9, 24, 'BOLA', 0, 0, 'yes', 'SALAH'),
(241, 10, 24, 'TELEVISI', 0, 0, 'yes', 'SALAH'),
(242, 1, 25, 'UTANG', 0, 0, 'yes', 'SALAH'),
(243, 2, 25, 'GUDEG', 0, 0, 'yes', 'SALAH'),
(244, 3, 25, 'FOTO', 0, 0, 'yes', 'SALAH'),
(245, 4, 25, 'STRAWBERRY', 0, 0, 'yes', 'SALAH'),
(246, 5, 25, 'TJAHJO KUMOLO', 0, 0, 'yes', 'SALAH'),
(247, 6, 25, 'LAMPU', 0, 0, 'yes', 'SALAH'),
(248, 7, 25, 'PINGUIN', 0, 0, 'yes', 'SALAH'),
(249, 8, 25, 'RAJA', 0, 0, 'yes', 'SALAH'),
(250, 9, 25, 'PIANO', 0, 0, 'yes', 'SALAH'),
(251, 10, 25, 'BULAN', 0, 0, 'yes', 'SALAH'),
(252, 1, 26, 'BANDARA', 0, 0, 'yes', 'SALAH'),
(253, 2, 26, 'ERICK THOHIR', 0, 0, 'yes', 'SALAH'),
(254, 3, 26, 'AQUARIUM', 0, 0, 'yes', 'SALAH'),
(255, 4, 26, 'RUJAK', 0, 0, 'yes', 'SALAH'),
(256, 5, 26, 'SUMPIT', 0, 0, 'yes', 'SALAH'),
(257, 6, 26, 'OTOT', 0, 0, 'yes', 'SALAH'),
(258, 7, 26, 'KEPITING', 0, 0, 'yes', 'SALAH'),
(259, 8, 26, 'SEMANGKA', 0, 0, 'yes', 'SALAH'),
(260, 9, 26, 'GERGAJI', 0, 0, 'yes', 'SALAH'),
(261, 10, 26, 'TALI', 0, 0, 'yes', 'SALAH'),
(262, 1, 27, 'KELELAWAR', 0, 0, 'yes', 'SALAH'),
(263, 2, 27, 'EMAS', 0, 0, 'yes', 'SALAH'),
(264, 3, 27, 'TRI RISMAHARINI', 0, 0, 'yes', 'SALAH'),
(265, 4, 27, 'DAPUR', 0, 0, 'yes', 'SALAH'),
(266, 5, 27, 'TULANG', 0, 0, 'yes', 'SALAH'),
(267, 6, 27, 'TEKWAN', 0, 0, 'yes', 'SALAH'),
(268, 7, 27, 'KARPET', 0, 0, 'yes', 'SALAH'),
(269, 8, 27, 'CERI', 0, 0, 'yes', 'SALAH'),
(270, 9, 27, 'PAKU', 0, 0, 'yes', 'SALAH'),
(271, 10, 27, 'PEMILU', 0, 0, 'yes', 'SALAH'),
(272, 1, 28, 'JAKET', 0, 0, 'yes', 'SALAH'),
(273, 2, 28, 'LEHER', 0, 0, 'yes', 'SALAH'),
(274, 3, 28, 'NASI GORENG', 0, 0, 'yes', 'SALAH'),
(275, 4, 28, 'NYAMUK', 0, 0, 'yes', 'SALAH'),
(276, 5, 28, 'JUSUF KALLA', 0, 0, 'yes', 'SALAH'),
(277, 6, 28, 'PULAU', 0, 0, 'yes', 'SALAH'),
(278, 7, 28, 'BENGKUANG', 0, 0, 'yes', 'SALAH'),
(279, 8, 28, 'KOMPOR', 0, 0, 'yes', 'SALAH'),
(280, 9, 28, 'HAKIM', 0, 0, 'yes', 'SALAH'),
(281, 10, 28, 'PETA', 0, 0, 'yes', 'SALAH'),
(282, 1, 29, 'ASTRONOT', 0, 0, 'yes', 'SALAH'),
(283, 2, 29, 'MENTEGA', 0, 0, 'yes', 'SALAH'),
(284, 3, 29, 'DAYAK', 0, 0, 'yes', 'SALAH'),
(285, 4, 29, 'DONALD TRUMP', 0, 0, 'yes', 'SALAH'),
(286, 5, 29, 'BANTAL', 0, 0, 'yes', 'SALAH'),
(287, 6, 29, 'LEMON', 0, 0, 'yes', 'SALAH'),
(288, 7, 29, 'SALON', 0, 0, 'yes', 'SALAH'),
(289, 8, 29, 'PURNAMA', 0, 0, 'yes', 'SALAH'),
(290, 9, 29, 'KULKAS', 0, 0, 'yes', 'SALAH'),
(291, 10, 29, 'IMLEK', 0, 0, 'yes', 'SALAH'),
(292, 1, 30, 'AMIEN RAIS', 0, 0, 'yes', 'SALAH'),
(293, 2, 30, 'KELENGKENG', 0, 0, 'yes', 'SALAH'),
(294, 3, 30, 'MONTIR', 0, 0, 'yes', 'SALAH'),
(295, 4, 30, 'KELINCI', 0, 0, 'yes', 'SALAH'),
(296, 5, 30, 'PERMEN', 0, 0, 'yes', 'SALAH'),
(297, 6, 30, 'SURAMADU', 0, 0, 'yes', 'SALAH'),
(298, 7, 30, 'BONUS', 0, 0, 'yes', 'SALAH'),
(299, 8, 30, 'TERMOS', 0, 0, 'yes', 'SALAH'),
(300, 9, 30, 'KEPALA', 0, 0, 'yes', 'SALAH'),
(301, 10, 30, 'MAJALAH', 0, 0, 'yes', 'SALAH'),
(302, 1, 31, 'ALIS', 0, 0, 'yes', 'SALAH'),
(303, 2, 31, 'LAPTOP', 0, 0, 'yes', 'SALAH'),
(304, 3, 31, 'BANGAU', 0, 0, 'yes', 'SALAH'),
(305, 4, 31, 'KEMOCENG', 0, 0, 'yes', 'SALAH'),
(306, 5, 31, 'BERLIAN', 0, 0, 'yes', 'SALAH'),
(307, 6, 31, 'PERAWAT', 0, 0, 'yes', 'SALAH'),
(308, 7, 31, 'IWAN FALS', 0, 0, 'yes', 'SALAH'),
(309, 8, 31, 'HARIMAU', 0, 0, 'yes', 'SALAH'),
(310, 9, 31, 'RANTAI', 0, 0, 'yes', 'SALAH'),
(311, 10, 31, 'SUSHI', 0, 0, 'yes', 'SALAH'),
(312, 1, 32, 'ANGSA', 0, 0, 'yes', 'SALAH'),
(313, 2, 32, 'PUPUK', 0, 0, 'yes', 'SALAH'),
(314, 3, 32, 'MATAHARI', 0, 0, 'yes', 'SALAH'),
(315, 4, 32, 'KEJU', 0, 0, 'yes', 'SALAH'),
(316, 5, 32, 'ADOLF HITLER', 0, 0, 'yes', 'SALAH'),
(317, 6, 32, 'TSUNAMI', 0, 0, 'yes', 'SALAH'),
(318, 7, 32, 'PISAU', 0, 0, 'yes', 'SALAH'),
(319, 8, 32, 'SELAI', 0, 0, 'yes', 'SALAH'),
(320, 9, 32, 'WASIT', 0, 0, 'yes', 'SALAH'),
(321, 10, 32, 'SEPATU', 0, 0, 'yes', 'SALAH'),
(322, 1, 33, 'INFUS', 0, 0, 'yes', 'SALAH'),
(323, 2, 33, 'BADUT', 0, 0, 'yes', 'SALAH'),
(324, 3, 33, 'KOPI', 0, 0, 'yes', 'SALAH'),
(325, 4, 33, 'RHOMA IRAMA', 0, 0, 'yes', 'SALAH'),
(326, 5, 33, 'BUNGLON', 0, 0, 'yes', 'SALAH'),
(327, 6, 33, 'RESMI', 0, 0, 'yes', 'SALAH'),
(328, 7, 33, 'TEMPE', 0, 0, 'yes', 'SALAH'),
(329, 8, 33, 'PENSIL', 0, 0, 'yes', 'SALAH'),
(330, 9, 33, 'SEDERHANA', 0, 0, 'yes', 'SALAH'),
(331, 10, 33, 'OPOR', 0, 0, 'yes', 'SALAH'),
(332, 1, 34, 'DONAT', 0, 0, 'yes', 'SALAH'),
(333, 2, 34, 'NATAL', 0, 0, 'yes', 'SALAH'),
(334, 3, 34, 'BELUT', 0, 0, 'yes', 'SALAH'),
(335, 4, 34, 'HAND SANITIZER', 0, 0, 'yes', 'SALAH'),
(336, 5, 34, 'AIRIN RACHMI DIANY', 0, 0, 'yes', 'SALAH'),
(337, 6, 34, 'GULING', 0, 0, 'yes', 'SALAH'),
(338, 7, 34, 'MAHKOTA', 0, 0, 'yes', 'SALAH'),
(339, 8, 34, 'KAMBOJA', 0, 0, 'yes', 'SALAH'),
(340, 9, 34, 'WARTAWAN', 0, 0, 'yes', 'SALAH'),
(341, 10, 34, 'DISPENSER', 0, 0, 'yes', 'SALAH'),
(342, 1, 35, 'GULA', 0, 0, 'yes', 'SALAH'),
(343, 2, 35, 'JARUM', 0, 0, 'yes', 'SALAH'),
(344, 3, 35, 'MENTERI', 0, 0, 'yes', 'SALAH'),
(345, 4, 35, 'TEROMPET', 0, 0, 'yes', 'SALAH'),
(346, 5, 35, 'BAMBANG PRIYANTO', 0, 0, 'yes', 'SALAH'),
(347, 6, 35, 'LABA-LABA', 0, 0, 'yes', 'SALAH'),
(348, 7, 35, 'SPAGHETTI', 0, 0, 'yes', 'SALAH'),
(349, 8, 35, 'DARAH', 0, 0, 'yes', 'SALAH'),
(350, 9, 35, 'PIKNIK', 0, 0, 'yes', 'SALAH'),
(351, 10, 35, 'AWAN', 0, 0, 'yes', 'SALAH');

-- --------------------------------------------------------

--
-- Table structure for table `nomorsoal`
--

CREATE TABLE `nomorsoal` (
  `idsoal` int(5) NOT NULL,
  `statsoal` enum('yes','no') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nomorsoal`
--

INSERT INTO `nomorsoal` (`idsoal`, `statsoal`) VALUES
(1, 'yes'),
(2, 'yes'),
(3, 'yes'),
(4, 'yes'),
(5, 'yes');

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
(2, 2, 1, 'yes'),
(3, 3, 1, 'yes'),
(4, 4, 1, 'yes'),
(5, 5, 1, 'yes'),
(6, 6, 1, 'yes'),
(7, 7, 1, 'yes'),
(8, 8, 1, 'yes'),
(9, 9, 1, 'yes'),
(10, 10, 1, 'yes'),
(11, 11, 1, 'yes'),
(12, 12, 1, 'yes'),
(13, 13, 1, 'yes'),
(14, 14, 1, 'yes'),
(15, 15, 1, 'yes'),
(16, 16, 1, 'yes'),
(17, 17, 1, 'yes'),
(18, 18, 1, 'no'),
(19, 19, 1, 'yes'),
(20, 20, 1, 'yes'),
(21, 21, 1, 'yes'),
(22, 22, 1, 'yes'),
(23, 23, 1, 'yes'),
(24, 24, 1, 'yes'),
(25, 25, 1, 'yes'),
(26, 26, 1, 'yes'),
(27, 27, 1, 'yes'),
(28, 28, 1, 'yes'),
(29, 29, 1, 'yes'),
(30, 30, 1, 'yes'),
(31, 31, 1, 'yes'),
(32, 32, 1, 'yes'),
(33, 33, 1, 'yes'),
(34, 34, 1, 'yes'),
(35, 35, 1, 'yes'),
(36, 36, 1, 'yes'),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

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
