-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2022 at 03:59 AM
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
-- Database: `sias-pks`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_perjanjian`
--

CREATE TABLE `detail_perjanjian` (
  `id_detail` int(100) NOT NULL,
  `id_perjanjian` int(100) NOT NULL,
  `nomor` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `phk_pertama` varchar(500) NOT NULL,
  `phk_kedua` varchar(500) NOT NULL,
  `judul` varchar(1000) NOT NULL,  
  `mulai` date NOT NULL,
  `selesai` date NOT NULL,  
  `pic` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `bagian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_perjanian`
--

INSERT INTO `detail_perjanjian` (`id_detail`, `id_pekerjaan`, `tahapan`, `input`, `output`, `pic`, `mulai`, `target`, `prioritas`, `status`, `user`, `divisi`, `bagian`) VALUES
(1, 1, '01/PKS/M/2022', '2022-01-01', 'Bank Sumsel Babel', 'PT Multipolar Technology', 'PKS Aplikasi Virtual Account', '2022-02-01', '2023-02-01', 'Team Counterpart', 'PKS.pdf', 'Administrator', 'BSB', '999'),
(2, 1, '01/PKS/M/2022', '2022-01-01', 'Bank Sumsel Babel', 'PT Multipolar Technology', 'PKS Aplikasi Virtual Account', '2022-02-01', '2023-02-01', 'Team Counterpart', 'PKS.pdf', 'Administrator', 'BSB', '999'),
(3, 2, '01/PKS/M/2022', '2022-01-01', 'Bank Sumsel Babel', 'PT Multipolar Technology', 'PKS Aplikasi Virtual Account', '2022-02-01', '2023-02-01', 'Team Counterpart', 'PKS.pdf', 'Administrator', 'BSB', '999'),
(4, 2, '01/PKS/M/2022', '2022-01-01', 'Bank Sumsel Babel', 'PT Multipolar Technology', 'PKS Aplikasi Virtual Account', '2022-02-01', '2023-02-01', 'Team Counterpart', 'PKS.pdf', 'Administrator', 'BSB', '999');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_perjanjian`
--
ALTER TABLE `detail_perjanjian`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_perjanjian` (`id_perjanjian`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_perjanjian`
--
ALTER TABLE `detail_perjanjian`
  MODIFY `id_detail` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_pekerjaan`
--
ALTER TABLE `detail_perjanjian`
  ADD CONSTRAINT `detail_perjanjian_ibfk_1` FOREIGN KEY (`id_perjanjian`) REFERENCES `perjanjian` (`id_perjanjian`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
