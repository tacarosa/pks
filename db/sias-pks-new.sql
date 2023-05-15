-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2023 at 04:00 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sias-pks-new`
--

-- --------------------------------------------------------

--
-- Table structure for table `cabang`
--

CREATE TABLE `cabang` (
  `id_cabang` int(100) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cabang`
--

INSERT INTO `cabang` (`id_cabang`, `kode`, `keterangan`) VALUES
(1, '000', 'Kantor Pusat'),
(2, '140', 'Cabang Arivai'),
(3, '193', 'Cabang Jakabaring'),
(4, '801', 'Cabang Syariah Palembang'),
(7, '174', 'Cabang PTC'),
(8, '150', 'Cabang Palembang'),
(14, 'SHK', 'SHK');

-- --------------------------------------------------------

--
-- Table structure for table `mou`
--

CREATE TABLE `mou` (
  `id` int(100) NOT NULL,
  `id_mou` int(100) NOT NULL,
  `id_addendum` int(100) NOT NULL,
  `nomor` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `phk_1` varchar(500) NOT NULL,
  `phk_2` varchar(500) NOT NULL,
  `phk_3` varchar(500) NOT NULL,
  `judul` varchar(1000) NOT NULL,
  `mulai` date NOT NULL,
  `selesai` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `cabang` varchar(50) NOT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mou`
--

INSERT INTO `mou` (`id`, `id_mou`, `id_addendum`, `nomor`, `tanggal`, `phk_1`, `phk_2`, `phk_3`, `judul`, `mulai`, `selesai`, `status`, `user`, `tipe`, `cabang`, `file`) VALUES
(23, 1, 1, '172/HCL/1/M/2021', '2022-05-13', 'Fajri', 'Albert', 'Dayat', 'Testing MOU Pertama', '2022-04-18', '2022-07-30', 'PKS/MoU Induk', '', 'KPS', 'UMA', 'Form EOD Laku Pandai 08122022.pdf'),
(24, 2, 2, '30/BKU/1.1/B/2021', '2022-12-31', '1', '2', '3', '123', '2022-01-24', '2022-08-30', 'PKS/MoU Induk', '', 'KPS', 'UMA', 'FORM EOM UPDATED 30112022.pdf'),
(25, 3, 2, '2959/TSI/3.1/M/2021', '2023-01-06', '1', '2', '3', '123', '2022-04-04', '2022-06-30', 'Addendum I', '', 'KPS', 'UMA', 'FORM EOD UPDATED 08122022.pdf'),
(28, 6, 6, '30/BKU/1.1/B/2021', '2021-04-30', 'Hidayat', 'Albert', 'Muhammad', 'Judul MOU yang terbaru dua edit', '2022-03-14', '2022-06-30', 'PKS/MoU Induk', '', 'KPS', 'UMA', 'pdf.pdf'),
(29, 7, 7, '1153/TSI/4.2/M/2021', '2022-12-13', 'M Hidayat Amin', 'Sholahul Fajri', 'Albert Ivando', 'Judul MOU yang terbaru', '2022-06-30', '2023-01-01', 'PKS/MoU Induk', '', 'KPS', 'UMA', '30OKT - 5 NOV - M HIDAYAT - PLATINUM HOTEL TUNJUNGAN SURABAYA.pdf'),
(30, 8, 8, '00004/UAT/MoU/2022', '0000-00-00', 'Bank Sumsel Babel', 'Vendor 1', '-', 'MoU edit', '2023-01-25', '2023-05-31', 'Arsip', '', 'CAB', '193', 'MoU.pdf'),
(32, 9, 8, 'x', '0000-00-00', 'Bank Sumsel Babel', 'Vendor 1', '-', 'MoU edit', '0000-00-00', '0000-00-00', 'Arsip', '', 'CAB', '193', 'MoU.pdf'),
(34, 10, 10, 'induk', '0000-00-00', 'induk', 'induk', 'induk', 'induk', '2023-01-26', '2023-01-26', 'Arsip', '', 'CAB', '193', 'MoU.pdf'),
(41, 14, 14, 'Addendum MoU cabang 193', '2023-04-12', 'Addendum MoU cabang 193', 'Addendum MoU cabang 193', 'Addendum MoU cabang 193', 'Addendum MoU cabang 193', '2023-04-12', '2023-10-12', 'Aktif', '', 'CAB', '193', 'MoU.pdf'),
(42, 15, 14, 'Addendum MoU 2 cabang 193 edit', '2023-04-12', 'Addendum MoU cabang 193', 'Addendum MoU cabang 193', 'Addendum MoU cabang 193', 'Addendum MoU cabang 193', '2023-04-12', '2023-07-12', 'Aktif', '', 'CAB', '193', 'MoU.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `perjanjian`
--

CREATE TABLE `perjanjian` (
  `id` int(100) NOT NULL,
  `id_perjanjian` int(100) NOT NULL,
  `id_addendum` int(100) NOT NULL,
  `nomor` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `phk_1` varchar(500) NOT NULL,
  `phk_2` varchar(500) NOT NULL,
  `phk_3` varchar(500) NOT NULL,
  `judul` varchar(1000) NOT NULL,
  `mulai` date NOT NULL,
  `selesai` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `cabang` varchar(50) NOT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perjanjian`
--

INSERT INTO `perjanjian` (`id`, `id_perjanjian`, `id_addendum`, `nomor`, `tanggal`, `phk_1`, `phk_2`, `phk_3`, `judul`, `mulai`, `selesai`, `status`, `user`, `tipe`, `cabang`, `file`) VALUES
(44, 2, 2, '30/BKU/1.1/B/2021', '2021-04-30', 'Fajri', 'Albert', 'Muhammad', 'Judul ajep ajep', '2022-04-04', '2022-07-30', 'Arsip', '', 'KPS', 'UMA', 'Form EOD Laku Pandai 30112022.pdf'),
(61, 13, 13, '1', '0000-00-00', 'Bank Sumsel Babel', 'Pihak 2', 'Pihak 3', '1 ed', '2023-01-26', '2023-01-27', 'Arsip', '', 'CAB', '193', 'PKS.pdf'),
(85, 16, 15, 'Addendum PKS cabang 193	 ', '2023-04-12', 'PKS cabang 193 ', 'PKS cabang 193 ', 'PKS cabang 193 ', 'ed PKS cabang 193 ', '2023-04-12', '2023-09-15', 'Addendum I', '', 'CAB', '193', 'PKS.pdf'),
(97, 17, 16, 'Addendum Addendum PKS cabang 193', '2022-08-31', 'PKS cabang 193 ', 'PKS cabang 193 ', 'PKS cabang 193 ', 'Addendum Addendum PKS cabang 193', '2023-05-10', '2023-05-10', 'Aktif', '', 'KPS', '000', 'PKS.pdf'),
(98, 18, 16, 'Add 2', '0000-00-00', 'PKS cabang 193 ', 'PKS cabang 193 ', 'PKS cabang 193 ', 'ed PKS cabang 193 ', '2023-05-10', '2023-05-11', 'Aktif', '', 'KPS', '000', 'PKS.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id_status` int(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id_status`, `keterangan`) VALUES
(1, 'Aktif'),
(2, 'Non Aktif/Kadaluarsa'),
(3, 'PKS/MoU Induk'),
(4, 'Addendum I'),
(5, 'Addendum II'),
(6, 'Addendum III'),
(7, 'Arsip');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `level` varchar(10) NOT NULL,
  `tipe` varchar(20) NOT NULL,
  `cabang` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `foto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fullname`, `level`, `tipe`, `cabang`, `status`, `foto`) VALUES
(1, 'admin', '81fccaf9f00a8441b77b18fa2c8010f4', 'Administrator', 'admin', 'KPS', '000', 'Aktif', 'user.png'),
(2, 'user', 'a13e7d4df150d90e60853f87d5abe94b', 'User Kantor Pusat', 'user', 'KPS', '000', 'Aktif', 'user.png'),
(3, 'admin1', '81fccaf9f00a8441b77b18fa2c8010f4', 'Administrator Cabang', 'admin1', 'CAB', '193', 'Aktif', 'Icon_profile2.png'),
(10, 'user1', 'a13e7d4df150d90e60853f87d5abe94b', 'User Cabang', 'user1', 'CAB', '193', 'Aktif', 'Icon_profile2.png'),
(19, 'superadmin', '7126b4b98ae718a020c23479f5b36248', 'Super Admin', 'superadmin', 'KPS', '000', 'Aktif', 'pinguin.jpg'),
(20, 'adminuser', 'f10ced8aa723b51e928c7e212f5bf415', 'Admin User', 'adminuser', 'KPS', '000', 'Aktif', 'pinguin.jpg'),
(21, 'admindata', '2fafd887b0dfa2be0fd07c20a314e648', 'Admin Data', 'admindata', 'KPS', '000', 'Aktif', 'pinguin.jpg'),
(35, 'user2', 'a13e7d4df150d90e60853f87d5abe94b', 'KAP', 'user1', 'CAB', '140', 'KPS', 'Icon_profile.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cabang`
--
ALTER TABLE `cabang`
  ADD PRIMARY KEY (`id_cabang`);

--
-- Indexes for table `mou`
--
ALTER TABLE `mou`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perjanjian`
--
ALTER TABLE `perjanjian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cabang`
--
ALTER TABLE `cabang`
  MODIFY `id_cabang` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `mou`
--
ALTER TABLE `mou`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `perjanjian`
--
ALTER TABLE `perjanjian`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id_status` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
