-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2023 at 07:16 AM
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
-- Database: `mrbs`
--
CREATE DATABASE IF NOT EXISTS `mrbs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mrbs`;

-- --------------------------------------------------------

--
-- Table structure for table `mrbs_area`
--

CREATE TABLE `mrbs_area` (
  `id` int(11) NOT NULL,
  `disabled` tinyint(4) NOT NULL DEFAULT 0,
  `area_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_key` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timezone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_admin_email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resolution` int(11) DEFAULT NULL,
  `default_duration` int(11) DEFAULT NULL,
  `default_duration_all_day` tinyint(4) NOT NULL DEFAULT 0,
  `morningstarts` int(11) DEFAULT NULL,
  `morningstarts_minutes` int(11) DEFAULT NULL,
  `eveningends` int(11) DEFAULT NULL,
  `eveningends_minutes` int(11) DEFAULT NULL,
  `private_enabled` tinyint(4) DEFAULT NULL,
  `private_default` tinyint(4) DEFAULT NULL,
  `private_mandatory` tinyint(4) DEFAULT NULL,
  `private_override` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_create_ahead_enabled` tinyint(4) DEFAULT NULL,
  `min_create_ahead_secs` int(11) DEFAULT NULL,
  `max_create_ahead_enabled` tinyint(4) DEFAULT NULL,
  `max_create_ahead_secs` int(11) DEFAULT NULL,
  `min_delete_ahead_enabled` tinyint(4) DEFAULT NULL,
  `min_delete_ahead_secs` int(11) DEFAULT NULL,
  `max_delete_ahead_enabled` tinyint(4) DEFAULT NULL,
  `max_delete_ahead_secs` int(11) DEFAULT NULL,
  `max_per_day_enabled` tinyint(4) NOT NULL DEFAULT 0,
  `max_per_day` int(11) NOT NULL DEFAULT 0,
  `max_per_week_enabled` tinyint(4) NOT NULL DEFAULT 0,
  `max_per_week` int(11) NOT NULL DEFAULT 0,
  `max_per_month_enabled` tinyint(4) NOT NULL DEFAULT 0,
  `max_per_month` int(11) NOT NULL DEFAULT 0,
  `max_per_year_enabled` tinyint(4) NOT NULL DEFAULT 0,
  `max_per_year` int(11) NOT NULL DEFAULT 0,
  `max_per_future_enabled` tinyint(4) NOT NULL DEFAULT 0,
  `max_per_future` int(11) NOT NULL DEFAULT 0,
  `max_secs_per_day_enabled` tinyint(4) NOT NULL DEFAULT 0,
  `max_secs_per_day` int(11) NOT NULL DEFAULT 0,
  `max_secs_per_week_enabled` tinyint(4) NOT NULL DEFAULT 0,
  `max_secs_per_week` int(11) NOT NULL DEFAULT 0,
  `max_secs_per_month_enabled` tinyint(4) NOT NULL DEFAULT 0,
  `max_secs_per_month` int(11) NOT NULL DEFAULT 0,
  `max_secs_per_year_enabled` tinyint(4) NOT NULL DEFAULT 0,
  `max_secs_per_year` int(11) NOT NULL DEFAULT 0,
  `max_secs_per_future_enabled` tinyint(4) NOT NULL DEFAULT 0,
  `max_secs_per_future` int(11) NOT NULL DEFAULT 0,
  `max_duration_enabled` tinyint(4) NOT NULL DEFAULT 0,
  `max_duration_secs` int(11) NOT NULL DEFAULT 0,
  `max_duration_periods` int(11) NOT NULL DEFAULT 0,
  `custom_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approval_enabled` tinyint(4) DEFAULT NULL,
  `reminders_enabled` tinyint(4) DEFAULT NULL,
  `enable_periods` tinyint(4) DEFAULT NULL,
  `periods` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmation_enabled` tinyint(4) DEFAULT NULL,
  `confirmed_default` tinyint(4) DEFAULT NULL,
  `times_along_top` tinyint(4) NOT NULL DEFAULT 0,
  `default_type` char(1) NOT NULL DEFAULT 'E'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mrbs_area`
--

INSERT INTO `mrbs_area` (`id`, `disabled`, `area_name`, `sort_key`, `timezone`, `area_admin_email`, `resolution`, `default_duration`, `default_duration_all_day`, `morningstarts`, `morningstarts_minutes`, `eveningends`, `eveningends_minutes`, `private_enabled`, `private_default`, `private_mandatory`, `private_override`, `min_create_ahead_enabled`, `min_create_ahead_secs`, `max_create_ahead_enabled`, `max_create_ahead_secs`, `min_delete_ahead_enabled`, `min_delete_ahead_secs`, `max_delete_ahead_enabled`, `max_delete_ahead_secs`, `max_per_day_enabled`, `max_per_day`, `max_per_week_enabled`, `max_per_week`, `max_per_month_enabled`, `max_per_month`, `max_per_year_enabled`, `max_per_year`, `max_per_future_enabled`, `max_per_future`, `max_secs_per_day_enabled`, `max_secs_per_day`, `max_secs_per_week_enabled`, `max_secs_per_week`, `max_secs_per_month_enabled`, `max_secs_per_month`, `max_secs_per_year_enabled`, `max_secs_per_year`, `max_secs_per_future_enabled`, `max_secs_per_future`, `max_duration_enabled`, `max_duration_secs`, `max_duration_periods`, `custom_html`, `approval_enabled`, `reminders_enabled`, `enable_periods`, `periods`, `confirmation_enabled`, `confirmed_default`, `times_along_top`, `default_type`) VALUES
(1, 0, 'Ruang Rapat TSI', 'Ruang Rapat TSI', 'Asia/Jakarta', '', 1800, 3600, 0, 7, 0, 18, 30, 0, 0, 0, 'none', 0, 0, 0, 604800, 0, 0, 0, 604800, 0, 1, 0, 5, 0, 10, 0, 50, 0, 100, 0, 7200, 0, 36000, 0, 90000, 0, 360000, 0, 360000, 0, 7200, 2, NULL, 0, 1, 0, '[\"Period 1\",\"Period 2\"]', 1, 1, 0, 'I');

-- --------------------------------------------------------

--
-- Table structure for table `mrbs_entry`
--

CREATE TABLE `mrbs_entry` (
  `id` int(11) NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT 0 COMMENT 'Unix timestamp',
  `end_time` int(11) NOT NULL DEFAULT 0 COMMENT 'Unix timestamp',
  `entry_type` int(11) NOT NULL DEFAULT 0,
  `repeat_id` int(11) DEFAULT NULL,
  `room_id` int(11) NOT NULL DEFAULT 1,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_by` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_by` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT 'E',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `reminded` int(11) DEFAULT NULL,
  `info_time` int(11) DEFAULT NULL,
  `info_user` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ical_uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ical_sequence` smallint(6) NOT NULL DEFAULT 0,
  `ical_recur_id` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_registration` tinyint(4) NOT NULL DEFAULT 0,
  `registrant_limit` int(11) NOT NULL DEFAULT 0,
  `registrant_limit_enabled` tinyint(4) NOT NULL DEFAULT 1,
  `registration_opens` int(11) NOT NULL DEFAULT 1209600 COMMENT 'Seconds before the start time',
  `registration_opens_enabled` tinyint(4) NOT NULL DEFAULT 0,
  `registration_closes` int(11) NOT NULL DEFAULT 0 COMMENT 'Seconds before the start_time',
  `registration_closes_enabled` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mrbs_entry`
--

INSERT INTO `mrbs_entry` (`id`, `start_time`, `end_time`, `entry_type`, `repeat_id`, `room_id`, `timestamp`, `create_by`, `modified_by`, `name`, `type`, `description`, `status`, `reminded`, `info_time`, `info_user`, `info_text`, `ical_uid`, `ical_sequence`, `ical_recur_id`, `allow_registration`, `registrant_limit`, `registrant_limit_enabled`, `registration_opens`, `registration_opens_enabled`, `registration_closes`, `registration_closes_enabled`) VALUES
(2, 1654477200, 1654509600, 0, NULL, 1, '2022-06-06 09:44:45', 'png', '', 'SIT/UAT Digital Loan', 'I', 'SIT/UAT Aplikasi Digital Loan', 0, NULL, NULL, NULL, NULL, 'MRBS-629dcc8dc3e06-4c5581f2@172.17.34.39', 0, NULL, 0, 0, 0, 1209600, 0, 0, 0),
(3, 1654563600, 1654596000, 0, NULL, 1, '2022-06-06 09:46:06', 'png', '', 'SIT/UAT Digital Loan', 'I', 'SIT/UAT Aplikasi Digital Loan', 0, NULL, NULL, NULL, NULL, 'MRBS-629dccde317fe-819f6c89@172.17.34.39', 0, NULL, 0, 0, 0, 1209600, 0, 0, 0),
(4, 1654650000, 1654682400, 0, NULL, 1, '2022-06-06 09:46:24', 'png', '', 'SIT/UAT Digital Loan', 'I', 'SIT/UAT Aplikasi Digital Loan', 0, NULL, NULL, NULL, NULL, 'MRBS-629dccf072c67-a962565d@172.17.34.39', 0, NULL, 0, 0, 0, 1209600, 0, 0, 0),
(5, 1654736400, 1654768800, 0, NULL, 1, '2022-06-06 09:46:36', 'png', '', 'SIT/UAT Digital Loan', 'I', 'SIT/UAT Aplikasi Digital Loan', 0, NULL, NULL, NULL, NULL, 'MRBS-629dccfc91006-9c0fb2f5@172.17.34.39', 0, NULL, 0, 0, 0, 1209600, 0, 0, 0),
(6, 1654822800, 1654855200, 0, NULL, 1, '2022-06-06 09:47:22', 'png', '', 'SIT/UAT Digital Loan', 'I', 'SIT/UAT Aplikasi Digital Loan', 0, NULL, NULL, NULL, NULL, 'MRBS-629dcd2ad1888-24b774ab@172.17.34.39', 0, NULL, 0, 0, 0, 1209600, 0, 0, 0),
(7, 1673499600, 1673503200, 0, NULL, 1, '2023-01-12 04:05:34', 'admin', '', 'Makan Siang', 'I', 'Makan Siang Bagian Pengembangan', 0, NULL, NULL, NULL, NULL, 'MRBS-63bf870e772ad-d526b757@172.17.34.39', 0, NULL, 0, 0, 0, 1209600, 0, 0, 0),
(9, 1673506800, 1673510400, 0, NULL, 1, '2023-01-12 04:27:31', 'png', '', 'Rapat Pembahasan server 550', 'I', 'rapat akan diadakan dengan TIm ITI', 0, NULL, NULL, NULL, NULL, 'MRBS-63bf8c3322e30-3425f431@172.17.34.39', 0, NULL, 0, 0, 0, 1209600, 0, 0, 0),
(10, 1673514000, 1673517600, 0, NULL, 1, '2023-01-12 04:35:21', 'admin', '', 'Makan Sore', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-63bf8e092b8fd-d5b07bc2@172.17.34.39', 0, NULL, 0, 0, 0, 1209600, 0, 0, 0),
(11, 1674097200, 1674104400, 0, NULL, 1, '2023-01-19 01:06:42', 'iti', '', 'POC Voice', 'E', 'Pelaksanaan POC Voice', 0, NULL, NULL, NULL, NULL, 'MRBS-63c897a273437-a6b59cf1@172.17.34.39', 0, NULL, 0, 0, 0, 1209600, 0, 0, 0),
(12, 1674104400, 1674108000, 0, NULL, 2, '2023-01-19 01:16:39', 'opr', '', 'Makan Siang', 'I', 'Jangan Ganggu', 0, NULL, NULL, NULL, NULL, 'MRBS-63c899f74af7d-0f5605ed@172.17.34.39', 0, NULL, 0, 0, 0, 1209600, 0, 0, 0),
(13, 1674104400, 1674120600, 0, NULL, 1, '2023-01-19 04:58:04', 'png', '', 'Makan Siang', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-63c8cddccbab8-0194ca8a@172.17.34.39', 0, NULL, 0, 0, 0, 1209600, 0, 0, 0),
(14, 1674190800, 1674194400, 0, NULL, 1, '2023-01-19 07:21:40', 'png', '', 'Makan Siang', 'I', 'Makan Siang Bersama', 0, NULL, NULL, NULL, NULL, 'MRBS-63c8ef842fa0a-c1dfdd18@172.17.34.39', 0, NULL, 0, 0, 0, 1209600, 0, 0, 0),
(16, 1677652200, 1677661200, 0, NULL, 1, '2023-03-01 03:14:16', 'png', 'png', 'DIGILOAN', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-63fec2f831533-2295de5d@172.17.34.39', 1, NULL, 0, 0, 0, 1209600, 0, 0, 0),
(17, 1678073400, 1678186800, 0, NULL, 1, '2023-03-06 02:14:15', 'png', '', 'SIT UAT DIGILOAN', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-64054c771db95-3f651e6c@172.17.34.39', 0, NULL, 0, 0, 0, 1209600, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mrbs_participants`
--

CREATE TABLE `mrbs_participants` (
  `id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registered` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrbs_repeat`
--

CREATE TABLE `mrbs_repeat` (
  `id` int(11) NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT 0 COMMENT 'Unix timestamp',
  `end_time` int(11) NOT NULL DEFAULT 0 COMMENT 'Unix timestamp',
  `rep_type` int(11) NOT NULL DEFAULT 0,
  `end_date` int(11) NOT NULL DEFAULT 0 COMMENT 'Unix timestamp',
  `rep_opt` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `room_id` int(11) NOT NULL DEFAULT 1,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_by` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_by` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT 'E',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rep_interval` smallint(6) NOT NULL DEFAULT 1,
  `month_absolute` smallint(6) DEFAULT NULL,
  `month_relative` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `reminded` int(11) DEFAULT NULL,
  `info_time` int(11) DEFAULT NULL,
  `info_user` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ical_uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ical_sequence` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mrbs_room`
--

CREATE TABLE `mrbs_room` (
  `id` int(11) NOT NULL,
  `disabled` tinyint(4) NOT NULL DEFAULT 0,
  `area_id` int(11) NOT NULL DEFAULT 0,
  `room_name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sort_key` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` int(11) NOT NULL DEFAULT 0,
  `room_admin_email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invalid_types` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON encoded',
  `custom_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mrbs_room`
--

INSERT INTO `mrbs_room` (`id`, `disabled`, `area_id`, `room_name`, `sort_key`, `description`, `capacity`, `room_admin_email`, `invalid_types`, `custom_html`) VALUES
(1, 0, 1, 'Ruang Rapat Pengembangan', 'Ruang Rapat Pengembangan', 'Ruang Rapat Pengembangan', 0, '', NULL, NULL),
(2, 0, 1, 'Ruang Rapat Operasional', 'Ruang Rapat Operasional', 'Ruang Rapat Operasional', 0, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mrbs_sessions`
--

CREATE TABLE `mrbs_sessions` (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED DEFAULT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mrbs_sessions`
--

INSERT INTO `mrbs_sessions` (`id`, `access`, `data`) VALUES
('3egkjrja5hnjkf9nigu34q6t46', 1678071010, 'csrf_token|s:64:\"be5572a4036049889babff4c49e8c49ef3ff68268965d4105e002d0743d726c8\";'),
('457j6j1b27lfe66r0vqasicg9i', 1680139919, 'csrf_token|s:64:\"ccc5a8abfce02074ece5505dc7499da5bc57e13edea734a5993010aa5fd07ce6\";'),
('4k8v6gijo6vm40u4c9fkj49f6d', 1679366228, 'csrf_token|s:64:\"d7d7f81f55e0f6b84a4b8d73ab401d11c3a1c44ae9090b85bc387afae675c427\";'),
('7bfv3h3rt8vul5tn4m5r48mt8i', 1677566996, 'csrf_token|s:64:\"d905c0bba9d80c4d4f115d560a8f1478826e42b404a9bc2a078f7a9f9df4ab8a\";'),
('gltnbctq8d06ubdb8600j2f4bq', 1678764883, 'csrf_token|s:64:\"a37935cdc08fb919c03a146db1df812f43b785da97ca52c16e6df3689a4b0f36\";'),
('jne748ibsmdunh78fuvi7h5i8s', 1678073066, 'csrf_token|s:64:\"f3873c3cbdd837fd6c8b09d8a1bb26805f0306971136f7421f938cbd58b88ef3\";user|O:9:\"MRBS\\User\":10:{s:8:\"username\";s:3:\"png\";s:12:\"display_name\";s:8:\"User PNG\";s:5:\"email\";s:13:\"png@gmail.com\";s:5:\"level\";i:1;s:2:\"id\";i:2;s:13:\"password_hash\";s:60:\"$2y$10$rgW1y3q.BLbeKsGrKM3LluwbLD8JE52GZWTNF3sqCJ8tVIhqK9XpS\";s:9:\"timestamp\";s:19:\"2023-01-19 11:57:09\";s:10:\"last_login\";i:1677640423;s:14:\"reset_key_hash\";N;s:16:\"reset_key_expiry\";i:0;}'),
('lsqdp31ls7rptt5uedlbknnmfb', 1677551417, 'csrf_token|s:64:\"890fd70dd45857d1109fe7b37eb4fb6b5423611a1de60a011e573b3b3b725614\";'),
('vu9b7csk40qvdh5pclic5o5j8b', 1676961949, 'csrf_token|s:64:\"0ee9672a8807d4dd5cf13c4c420aa968e11927c00bf0dd1fea08b3fe3866e0cc\";');

-- --------------------------------------------------------

--
-- Table structure for table `mrbs_users`
--

CREATE TABLE `mrbs_users` (
  `id` int(11) NOT NULL,
  `level` smallint(6) NOT NULL DEFAULT 0,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_login` int(11) NOT NULL DEFAULT 0,
  `reset_key_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_key_expiry` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mrbs_users`
--

INSERT INTO `mrbs_users` (`id`, `level`, `name`, `display_name`, `password_hash`, `email`, `timestamp`, `last_login`, `reset_key_hash`, `reset_key_expiry`) VALUES
(1, 2, 'adminpng', 'Room Administrator', '$2y$10$YJ6kjqJPBA/vnHxdly.5w.D0.YVQCXf2wQuFzBTEn6XLCdWaPEMGK', 'admin_room@gmail.com', '2023-01-12 04:01:43', 1674113051, NULL, 0),
(2, 1, 'png', 'User PNG', '$2y$10$rgW1y3q.BLbeKsGrKM3LluwbLD8JE52GZWTNF3sqCJ8tVIhqK9XpS', 'png@gmail.com', '2023-01-19 04:57:09', 1679294861, NULL, 0),
(3, 1, 'pgk', 'User PGK', '$2y$10$ZGJdAxhj4ZuCbV6kLgbWruW8fyR5cLnZ2Xk9HXlMB/kR8il2/Z4Km', 'pgk@gmail.com', '2023-01-19 01:08:52', 1674197448, NULL, 0),
(4, 1, 'iti', 'User ITI', '$2y$10$ua3NnvSXk4ocnBVoptiVmuuKtFKUbiE25BM0ypI0iuZfmlwvnX1z2', 'iti@gmail.com', '2023-01-19 00:59:01', 1674093241, NULL, 0),
(5, 1, 'opr', 'User OPR', '$2y$10$YgB.UpSAih.XY2GFZhGVHOycVgRhGNYiUXWTnz2BzAVIsvN3jTZHO', 'opr@gmail.com', '2023-01-19 01:09:01', 1674090977, NULL, 0),
(6, 1, 'admin', 'Administrator', '$2y$10$m4ZEvLPvL56t81h9Of5zbutlFSAAkkM6Y1mOK4IH/jewtAwQfwK6O', 'admin@gmail.com', '2023-01-12 03:53:52', 1674090947, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mrbs_variables`
--

CREATE TABLE `mrbs_variables` (
  `id` int(11) NOT NULL,
  `variable_name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variable_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mrbs_variables`
--

INSERT INTO `mrbs_variables` (`id`, `variable_name`, `variable_content`) VALUES
(1, 'db_version', '82'),
(2, 'local_db_version', '1');

-- --------------------------------------------------------

--
-- Table structure for table `mrbs_zoneinfo`
--

CREATE TABLE `mrbs_zoneinfo` (
  `id` int(11) NOT NULL,
  `timezone` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `outlook_compatible` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `vtimezone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_updated` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mrbs_area`
--
ALTER TABLE `mrbs_area`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_area_name` (`area_name`);

--
-- Indexes for table `mrbs_entry`
--
ALTER TABLE `mrbs_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `repeat_id` (`repeat_id`),
  ADD KEY `idxStartTime` (`start_time`),
  ADD KEY `idxEndTime` (`end_time`),
  ADD KEY `idxRoomStartEnd` (`room_id`,`start_time`,`end_time`);

--
-- Indexes for table `mrbs_participants`
--
ALTER TABLE `mrbs_participants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_entryid_username` (`entry_id`,`username`);

--
-- Indexes for table `mrbs_repeat`
--
ALTER TABLE `mrbs_repeat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `mrbs_room`
--
ALTER TABLE `mrbs_room`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_room_name` (`area_id`,`room_name`),
  ADD KEY `idxSortKey` (`sort_key`);

--
-- Indexes for table `mrbs_sessions`
--
ALTER TABLE `mrbs_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idxAccess` (`access`);

--
-- Indexes for table `mrbs_users`
--
ALTER TABLE `mrbs_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_name` (`name`);

--
-- Indexes for table `mrbs_variables`
--
ALTER TABLE `mrbs_variables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_variable_name` (`variable_name`);

--
-- Indexes for table `mrbs_zoneinfo`
--
ALTER TABLE `mrbs_zoneinfo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_timezone` (`timezone`,`outlook_compatible`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mrbs_area`
--
ALTER TABLE `mrbs_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mrbs_entry`
--
ALTER TABLE `mrbs_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `mrbs_participants`
--
ALTER TABLE `mrbs_participants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mrbs_repeat`
--
ALTER TABLE `mrbs_repeat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mrbs_room`
--
ALTER TABLE `mrbs_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mrbs_users`
--
ALTER TABLE `mrbs_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mrbs_variables`
--
ALTER TABLE `mrbs_variables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mrbs_zoneinfo`
--
ALTER TABLE `mrbs_zoneinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mrbs_entry`
--
ALTER TABLE `mrbs_entry`
  ADD CONSTRAINT `mrbs_entry_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `mrbs_room` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `mrbs_entry_ibfk_2` FOREIGN KEY (`repeat_id`) REFERENCES `mrbs_repeat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mrbs_participants`
--
ALTER TABLE `mrbs_participants`
  ADD CONSTRAINT `mrbs_participants_ibfk_1` FOREIGN KEY (`entry_id`) REFERENCES `mrbs_entry` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mrbs_repeat`
--
ALTER TABLE `mrbs_repeat`
  ADD CONSTRAINT `mrbs_repeat_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `mrbs_room` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `mrbs_room`
--
ALTER TABLE `mrbs_room`
  ADD CONSTRAINT `mrbs_room_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `mrbs_area` (`id`) ON UPDATE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'sias-pks-new010523', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"mrbs\",\"phpmyadmin\",\"sias-events\",\"sias-hcl\",\"sias-istmonitoring\",\"sias-pks\",\"sias-pks-new\",\"sias-tsi\",\"sias-tsi2\",\"sias-tsi2023\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"sias-pks-new\",\"table\":\"perjanjian\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-05-01 05:14:36', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `sias-events`
--
CREATE DATABASE IF NOT EXISTS `sias-events` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sias-events`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_events`
--

CREATE TABLE `tbl_events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_events`
--

INSERT INTO `tbl_events` (`id`, `title`, `start`, `end`, `user`) VALUES
(22, 'Hidayat User : Regresi IST77 SP16', '2023-03-30', '2023-04-01', 'Hidayat User'),
(23, 'Hidayat User : Regresi 2 SP16', '2023-03-31', '2023-04-02', 'Hidayat User'),
(24, 'Antubanyu : Testing Yang Sama', '2023-03-30', '2023-04-01', 'Antubanyu'),
(25, 'Hidayat Admin : Membuat Aplikasi Mobile', '2023-04-02', '2023-04-09', 'Hidayat Admin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `level` enum('user','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fullname`, `level`) VALUES
(1, 'hakko', 'fb92eb16a09ed530c91a0e17d9d61a7758754013', 'Hakko Bio Richard', 'admin'),
(9, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Hidayat Admin', 'admin'),
(10, 'user', '12dea96fec20593566ab75692c9949596833adc9', 'Hidayat User', 'user'),
(11, 'user1', 'b3daa77b4c04a9551b8781d03191fe098f325e67', 'Antubanyu', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_events`
--
ALTER TABLE `tbl_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_events`
--
ALTER TABLE `tbl_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Database: `sias-hcl`
--
CREATE DATABASE IF NOT EXISTS `sias-hcl` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sias-hcl`;

-- --------------------------------------------------------

--
-- Table structure for table `catatan`
--

CREATE TABLE `catatan` (
  `id` int(100) NOT NULL,
  `perihal` varchar(1000) NOT NULL,
  `uraian` varchar(5000) NOT NULL,
  `target` date NOT NULL,
  `tanggal_terima` date NOT NULL,
  `prioritas` varchar(50) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `bagian` varchar(50) NOT NULL,
  `file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catatan`
--

INSERT INTO `catatan` (`id`, `perihal`, `uraian`, `target`, `tanggal_terima`, `prioritas`, `pic`, `status`, `user`, `divisi`, `bagian`, `file`) VALUES
(2, 'Persiapan Migrasi Server', 'Persiapan Migrasi Server Divisi Pengembangan', '2021-10-09', '2021-09-28', 'Biasa', 'ABC', 'Perencanaan', 'Administrator', 'HCL', 'HCL2', 'Bukti Penerimaan _ PPDB Sumsel 2021.PDF'),
(3, 'Catatan Pertama Antar Bagian', 'Contoh Catatan Utama', '2021-10-01', '2021-09-30', 'Biasa', 'XYZ', 'Perencanaan', 'Username1', 'HCL', 'HCL1', 'statement-20210907_110744.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pekerjaan`
--

CREATE TABLE `detail_pekerjaan` (
  `id_detail` int(100) NOT NULL,
  `id_pekerjaan` int(100) NOT NULL,
  `tahapan` varchar(5000) NOT NULL,
  `input` varchar(5000) NOT NULL,
  `output` varchar(5000) NOT NULL,
  `target` date NOT NULL,
  `prioritas` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `bagian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_pekerjaan`
--

INSERT INTO `detail_pekerjaan` (`id_detail`, `id_pekerjaan`, `tahapan`, `input`, `output`, `target`, `prioritas`, `status`, `user`, `divisi`, `bagian`) VALUES
(0, 3, 'Penerbitan & Pengesahan PP Kamus Kompetensi, Standar Kompetensi dan Framework Pengukuran Kompetensi', '--', 'PP Kamus Kompetensi, Standar Kompetensi dan Framework Pengukuran Kompetensi', '2021-10-01', 'Low Priority', 'Koordinasi', 'Administrator', '', 'admin'),
(1, 3, 'Penyusunan Draft Kamus Kompetensi', 'Telah dilakukan riview draft PP Kamus Kompetensi yang telah disusun oleh PT. SDG', 'Draft PP Kamus Kompetensi', '2021-08-31', 'Medium Priority', 'Lewat Jangka Waktu (Addendum)', 'Administrator', '', 'admin'),
(2, 3, 'Penyusunan Draft Profil Kompetensi', 'Telah disusun Draft Standar Kompetensi Jabatan BSB', 'Draft PP Prosedur & Petunjuk Teknis Penerapan Kompetensi Jabatan', '2021-11-30', 'Medium Priority', 'Belum', 'Administrator', '', 'admin'),
(3, 3, 'Penyusunan Draft Framework Pengukuran Kompetensi', 'Telah disusun Draft Framework Pengukuran Kompetensi', 'Draft PP Prosedur & Petunjuk Teknis Penerapan Kompetensi Jabatan', '2021-09-05', 'Medium Priority', 'Selesai', 'Administrator', '', 'admin'),
(4, 3, 'Usulan Prinsif Draft Kamus Kompetensi, Standar Kompetensi dan Framework Pengukuran Kompetensi', '-', 'Memo Persetujuan Prinsip Draft Kamus Kompetensi, standar Kompetensi dan Framework Pengukuran Kompetensi', '2021-09-07', 'Medium Priority', 'Dalam Proses', 'Administrator', '', 'admin'),
(5, 3, 'Opini Kepatuhan & Risiko Draft PP Kamus Kompetensi, Standar Kompetensi dan Framework Pengukuran Kompetensi', '-', 'Draft PP Kamus Kompetensi, Standar Kompetensi dan Framework Pengukuran Kompetensi', '2021-09-10', 'Medium Priority', 'Perencanaan', 'Administrator', '', 'admin'),
(8, 1, 'Development', 'Proses Pengembangan Aplikasi', 'Selesai Melakukan Development Aplikasi', '2021-09-30', 'Medium Priority', 'Selesai', 'Administrator', 'HCL', 'HCL'),
(9, 1, 'IUT', 'Proses IUT dan Development', 'Selesai Proses IUT', '2021-10-01', 'Medium Priority', 'Dalam Proses', 'Administrator', 'HCL', 'HCL'),
(10, 1, 'SIT', '-', 'Selesai Proses SIT', '2021-10-01', 'Medium Priority', 'Perencanaan', 'Administrator', 'HCL', 'HCL'),
(11, 1, 'UAT', '-', 'Selesai UAT', '2021-10-01', 'Medium Priority', 'Perencanaan', 'Administrator', 'HCL', 'HCL'),
(12, 1, 'Migrasi', '-', 'Selesai Proses Migrasi', '2021-10-01', 'Medium Priority', 'Perencanaan', 'Administrator', 'HCL', 'HCL');

-- --------------------------------------------------------

--
-- Table structure for table `notulen`
--

CREATE TABLE `notulen` (
  `id` int(10) NOT NULL,
  `no_notulen` varchar(20) NOT NULL,
  `status_notulen` varchar(30) NOT NULL,
  `tanggal_notulen` date NOT NULL,
  `tanggal_terima` date NOT NULL,
  `asal_notulen` varchar(50) NOT NULL,
  `perihal` varchar(100) NOT NULL,
  `user` varchar(50) NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `bagian` varchar(50) NOT NULL,
  `file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notulen`
--

INSERT INTO `notulen` (`id`, `no_notulen`, `status_notulen`, `tanggal_notulen`, `tanggal_terima`, `asal_notulen`, `perihal`, `user`, `divisi`, `bagian`, `file`) VALUES
(1, '01/NOT/TSI/2021', 'Monitor', '2021-09-28', '2021-09-28', 'TSI', 'Pembuatan Aplikasi Monitoring HCL', 'Administrator', 'HCL', 'HCL1', 'Detail Pekerjaan.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id_pekerjaan` int(100) NOT NULL,
  `uraian` varchar(5000) NOT NULL,
  `target` date NOT NULL,
  `prioritas` varchar(50) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `bagian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pekerjaan`
--

INSERT INTO `pekerjaan` (`id_pekerjaan`, `uraian`, `target`, `prioritas`, `pic`, `status`, `user`, `divisi`, `bagian`) VALUES
(1, 'Aplikasi Pekerjaan SDM', '2021-10-01', 'Medium Priority', 'DYT', 'Dalam Proses', 'Administrator', 'HCL', 'HCL1'),
(3, 'Perencanaan & Pengembangan Kompetensi Jabatan', '2021-09-30', 'High Priority', 'DYT', 'Dalam Proses', 'Administrator', 'HCL', 'HCL1'),
(4, 'Aplikasi Suka Suka', '2021-09-14', 'Low Priority', 'ANTU', 'Selesai', 'Administrator', 'HCL', 'HCL2'),
(5, 'Percobaan Aplikasi', '2021-12-31', 'High Priority', 'ANTU', 'Lewat Jangka Waktu (Addendum)', 'Administrator', 'HCL', 'HCL2');

-- --------------------------------------------------------

--
-- Table structure for table `perjanjian`
--

CREATE TABLE `perjanjian` (
  `id` int(100) NOT NULL,
  `nomor` varchar(100) NOT NULL,
  `uraian` varchar(5000) NOT NULL,
  `mulai` date NOT NULL,
  `target` date NOT NULL,
  `tanggal_terima` date NOT NULL,
  `prioritas` varchar(50) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `bagian` varchar(50) NOT NULL,
  `file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perjanjian`
--

INSERT INTO `perjanjian` (`id`, `nomor`, `uraian`, `mulai`, `target`, `tanggal_terima`, `prioritas`, `pic`, `status`, `user`, `divisi`, `bagian`, `file`) VALUES
(1, '172/HCL/1/M/2021', 'Berita Acara Tanda Tangan Serah Terima Aplikasi Monitoring HCL', '2021-09-29', '2023-03-30', '2021-09-29', 'Biasa', 'DIKA', 'Perencanaan', 'username', 'HCL', 'HCL1', 'Detail Pekerjaan.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `level` enum('admin','admin1','user','user1') NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `bagian` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `foto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fullname`, `level`, `divisi`, `bagian`, `jenis_kelamin`, `foto`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'admin', 'HCL', 'HCL', 'Perempuan', 'user3.png'),
(2, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'username', 'user', 'HCL', 'HCL1', 'Laki Laki', 'users.png'),
(10, 'admin1', 'e00cf25ad42683b3df678c61f42c6bda', 'administrator1', 'admin1', 'HCL', 'HCL1', 'Laki Laki', 'user1.png'),
(11, 'user1', '24c9e15e52afc47c225b757e7bee1f9d', 'Username1', 'user1', 'HCL', 'HCL1', 'Perempuan', 'user2.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catatan`
--
ALTER TABLE `catatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_pekerjaan`
--
ALTER TABLE `detail_pekerjaan`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_pekerjaan` (`id_pekerjaan`);

--
-- Indexes for table `notulen`
--
ALTER TABLE `notulen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`);

--
-- Indexes for table `perjanjian`
--
ALTER TABLE `perjanjian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catatan`
--
ALTER TABLE `catatan`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `detail_pekerjaan`
--
ALTER TABLE `detail_pekerjaan`
  MODIFY `id_detail` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notulen`
--
ALTER TABLE `notulen`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  MODIFY `id_pekerjaan` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `perjanjian`
--
ALTER TABLE `perjanjian`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_pekerjaan`
--
ALTER TABLE `detail_pekerjaan`
  ADD CONSTRAINT `detail_pekerjaan_ibfk_1` FOREIGN KEY (`id_pekerjaan`) REFERENCES `pekerjaan` (`id_pekerjaan`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `sias-istmonitoring`
--
CREATE DATABASE IF NOT EXISTS `sias-istmonitoring` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sias-istmonitoring`;

-- --------------------------------------------------------

--
-- Table structure for table `detail_migrasi`
--

CREATE TABLE `detail_migrasi` (
  `id_detail` int(5) NOT NULL,
  `id_migrasi` int(5) NOT NULL,
  `nomor` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `perihal` varchar(500) NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  `tgl_migrasi` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `migrasi`
--

CREATE TABLE `migrasi` (
  `id_migrasi` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `migrasi`
--

INSERT INTO `migrasi` (`id_migrasi`, `judul`, `keterangan`, `tanggal`) VALUES
(2, 'Aplikasi API MANAJEMENT (OPEN API)', 'Deskripsi Aplikasi API Management', NULL),
(3, 'APLIKASI DIGITAL LOAN (DMS)', 'Migrasi Aplikasi Digital Loan Bank Sumsel Babel', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `objek`
--

CREATE TABLE `objek` (
  `id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `versi` varchar(20) NOT NULL,
  `ukuran` int(10) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `objek`
--

INSERT INTO `objek` (`id`, `nama`, `keterangan`, `versi`, `ukuran`, `tanggal`, `jam`) VALUES
(1, 'vlinkf', '1204250 Jan 25 15:37 vlinkf', 'vlinkf_v1.1.31', 1204250, '2022-01-25', '15:37:00'),
(3, 'rintisf', '1234567890 Mar 20 14:00 rintisf', 'ritnisf_v3.1.4', 1234567890, '2022-03-20', '14:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pcode`
--

CREATE TABLE `pcode` (
  `id` int(5) NOT NULL,
  `pcode` varchar(6) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `berhasil` varchar(6) NOT NULL,
  `gagal` varchar(6) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pcode`
--

INSERT INTO `pcode` (`id`, `pcode`, `keterangan`, `berhasil`, `gagal`, `status`) VALUES
(1, '380053', 'EDUPAY INQ CASH', '0', '0', 'Tidak Aktif'),
(2, '810053', 'EDUPAY PAY CASH', '0', '0', 'Tidak Aktif'),
(3, '381053', 'EDUPAY INQ DEBET', '0', '0', 'Tidak Aktif'),
(4, '811053', 'EDUPAY PAY DEBET', '0', '0', 'Tidak Aktif'),
(5, '810002', 'VOU SIM CASH', '0', '0', ''),
(6, '811002', 'VOU SIM DEBET', '0', '0', ''),
(7, '810003', 'VOU AS CASH', '0', '0', ''),
(8, '811003', 'VOU AS DEBET', '0', '0', ''),
(9, '810045', 'VOU XL CASH', '0', '0', ''),
(10, '811045', 'VOU XL DEBET', '0', '0', ''),
(12, '381001', 'TGH HALO INQ DEBET', '0', '0', ''),
(13, '810001', 'TGH HALO PAY CASH', '0', '0', ''),
(14, '811001', 'TGH HALO PAY DEBET', '0', '0', ''),
(15, '380012', 'PDAM INQ CASH', '0', '0', 'Tidak Aktif'),
(16, '810012', 'PDAM PAY CASH', '0', '0', 'Tidak Aktif'),
(17, '381012', 'PDAM INQ DEBET', '0', '0', 'Tidak Aktif'),
(18, '811012', 'PDAM PAY DEBET', '0', '0', 'Tidak Aktif'),
(19, '380038', 'PBB INQ CASH', '0', '0', 'Tidak Aktif'),
(20, '810038', 'PBB PAY CASH', '0', '0', 'Tidak Aktif'),
(22, '811038', 'PBB PAY DEBET', '0', '0', 'Tidak Aktif'),
(23, '380051', 'BPHTB INQ CASH', '0', '0', 'Tidak Aktif'),
(24, '810051', 'BPHTB PAY CASH', '0', '0', 'Tidak Aktif'),
(25, '381051', 'BPHTB INQ DEBET', '0', '0', 'Tidak Aktif'),
(26, '811051', 'BPHTB PAY DEBET', '0', '0', 'Tidak Aktif'),
(27, '380052', '9PAJAK INQ CASH', '0', '0', 'Tidak Aktif'),
(28, '810052', '9PAJAK PAY CASH', '0', '0', 'Tidak Aktif'),
(29, '381052', '9PAJAK INQ DEBET', '0', '0', 'Tidak Aktif'),
(30, '811052', '9PAJAK PAY DEBET', '0', '0', 'Tidak Aktif'),
(31, '380078', 'BPJS INQ CASH', '0', '0', 'Tidak Aktif'),
(32, '810078', 'BPJS PAY CASH', '0', '0', 'Tidak Aktif'),
(33, '381078', 'BPJS INQ DEBET', '0', '0', 'Tidak Aktif'),
(36, '210012', 'VA', '0', '0', 'Aktif'),
(37, '321000', 'INQ IBFT', '0', '0', 'Aktif'),
(38, '401000', 'PAY IBFT', '4', '1', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `rc`
--

CREATE TABLE `rc` (
  `id` int(5) NOT NULL,
  `rc` varchar(4) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rc`
--

INSERT INTO `rc` (`id`, `rc`, `keterangan`) VALUES
(1, '00', 'TRANSAKSI BERHASIL'),
(2, '08', 'TRANSAKSI TIMEOUT'),
(3, '14', 'ID TIDAK DITEMUKAN'),
(5, '05', 'ERROR UMUM'),
(7, '01', 'ERROR TIDAK DI KETAHUI2'),
(8, '51', 'SALDO TIDAK CUKUP');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `level` enum('admin','user') NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `foto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fullname`, `level`, `jenis_kelamin`, `foto`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'admin', 'Perempuan', 'admin.png'),
(2, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'Useristrator', 'user', 'Laki Laki', 'user.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_migrasi`
--
ALTER TABLE `detail_migrasi`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `migrasi`
--
ALTER TABLE `migrasi`
  ADD PRIMARY KEY (`id_migrasi`);

--
-- Indexes for table `objek`
--
ALTER TABLE `objek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pcode`
--
ALTER TABLE `pcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rc`
--
ALTER TABLE `rc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_migrasi`
--
ALTER TABLE `detail_migrasi`
  MODIFY `id_detail` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrasi`
--
ALTER TABLE `migrasi`
  MODIFY `id_migrasi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `objek`
--
ALTER TABLE `objek`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pcode`
--
ALTER TABLE `pcode`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `rc`
--
ALTER TABLE `rc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `sias-pks`
--
CREATE DATABASE IF NOT EXISTS `sias-pks` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sias-pks`;

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
(8, '150', 'Cabang Palembang');

-- --------------------------------------------------------

--
-- Table structure for table `mou`
--

CREATE TABLE `mou` (
  `id_mou` int(100) NOT NULL,
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

INSERT INTO `mou` (`id_mou`, `nomor`, `tanggal`, `phk_1`, `phk_2`, `phk_3`, `judul`, `mulai`, `selesai`, `status`, `user`, `tipe`, `cabang`, `file`) VALUES
(1, '2959/TSI/3.1/M/2021', '2021-04-29', 'Fajri', 'Albert', 'Dayat', 'Perjanjian Kesepahaman ', '2022-07-06', '2023-06-30', 'Aktif', '', 'KPS', 'UMA', 'Daftar Perjanjian Kerjasama.pdf'),
(2, '30/BKU/1.1/B/2021', '2022-05-13', 'Fajri', '-', '-', 'Pengetahuan Alam', '2022-01-24', '2022-08-30', 'Setatus Seratus', '', 'KPS', 'UMA', 'BSB-202204-017020_1.pdf'),
(3, '172/HCL/1/M/2021', '2021-04-29', 'Hidayat', 'Albert', '-', 'Judul Tak Berjudul', '2022-01-03', '2022-06-24', 'Arsip', '', 'KPS', 'UMA', 'ResponseSummary.pdf'),
(4, '1', '2021-11-10', 'Fajri', 'Albert', 'Muhammad', 'Tidak Tahu', '2022-01-03', '2022-08-30', 'Arsip', '', 'CAB', '193', 'suratkeluar_11922_TJRPHO.pdf'),
(5, '001/TC/2022', '2022-08-22', '-', '-', '-', 'Taca edit', '2022-08-22', '2022-08-23', 'Aktif', '', 'KPS', 'UMA', 'MoU.pdf'),
(6, '001/TC/2022', '2022-08-22', '-', '-', '-', 'TACA UPLOAD ADENDUM', '2022-08-22', '2022-08-22', 'Addendum I', '', 'KPS', 'UMA', 'MoU.pdf'),
(7, '00001/UAT/MoU/2022', '2022-08-31', 'Bank Sumsel Babel', 'Pihak 2', 'Pihak 3', 'Memorandum of Undestanding (MoU) BSB dan Pihak 2 bersama Pihak 3', '2022-08-01', '2022-09-01', 'Aktif', '', 'CAB', '140', 'MoU.pdf'),
(8, '00002/UAT/MoU/2022', '2022-08-31', 'Bank Sumsel Babel', 'Bank', 'Bank', 'MoU Induk', '2022-06-01', '2022-07-01', 'Arsip', '', 'KPS', '140', 'MoU.pdf'),
(9, '00003/UAT/MoU/2022	', '2022-08-31', 'Bank Sumsel Babel', 'Bank', 'Bank', 'Addendum MoU Induk', '2022-08-01', '2022-10-01', 'Addendum I', '', 'KPS', '140', 'MoU.pdf'),
(10, '00111/UAT/MoU/2022', '2022-08-31', 'Pihak 1', 'Pihak 2', 'Pihak 3', 'test mou 3 bulan', '2022-07-01', '2022-10-01', 'Aktif', '', 'KPS', 'UMA', 'MoU.pdf'),
(11, '00003/UAT/MoU/2022', '2022-09-02', 'Bank Sumsel Babel', 'Pihak 2', 'Pihak 3', 'MoU pra UAT', '2022-09-05', '2023-01-02', 'Aktif', '', 'KPS', 'UMA', 'MoU.pdf'),
(12, '00003/UAT/MoU/2022	', '2022-08-31', 'Bank Sumsel Babel', 'Pihak 2', '-', 'coba dengan no MoU yang sama 00003/UAT/MoU/2022	', '2022-09-02', '2022-09-02', 'Aktif', '', 'KPS', 'UMA', 'MoU.pdf'),
(13, '00005/M/UAT/2022', '2022-09-02', 'BSB', 'BSB', 'BSB', 'MoU BSB', '2022-09-02', '2022-09-30', 'Aktif', '', 'KPS', 'UMA', 'MoU.pdf'),
(14, '00004/UAT/MoU/2022', '2022-09-22', 'Bank Sumsel Babel', 'Pihak 2', 'Pihak 3', 'MoU edit', '2022-08-01', '2022-11-05', 'Arsip', '', 'KPS', '140', 'MoU.pdf'),
(15, '00004/UAT/MoU/2022', '2022-07-01', 'Bank Sumsel Babel', 'Pihak 2', 'Pihak 3', 'Memorandum of Understanding Memorandum of Understanding Memorandum of Understanding Memorandum of Understanding Memorandum of Understanding Memorandum of Understanding Memorandum of Understanding Memorandum of Understanding Memorandum of Understanding Memorandum of Understanding Memorandum of Understanding ', '2022-03-04', '2022-10-01', '', '', 'KPS', '140', 'MoU.pdf'),
(16, '00005/UAT/MoU/2022', '2022-06-09', 'Bank Sumsel Babel', 'Vendor 1', '-', 'Memorandum of understanding MoU', '2022-09-30', '2022-12-01', 'Addendum I', '', 'KPS', '140', 'MoU.pdf'),
(17, '00006/UAT/MoU/2022', '2022-08-04', 'Bank Sumsel Babel', '-', '-', '-', '2022-09-30', '2022-10-29', 'Addendum I', '', 'KPS', '140', 'MoU.pdf'),
(18, '2959/TSI/3.1/M/2021	', '2022-12-14', 'Bank Sumsel Babel', 'Vendor 1', 'Vendor 2', '2959/TSI/3.1/M/2021	', '2022-08-01', '2023-03-16', 'Aktif', '', 'KPS', 'UMA', 'MoU.pdf'),
(20, '001/TC/2022', '2022-12-21', 'Bank Sumsel Babel', 'Pihak Kedua', '-', 'MOU', '2022-12-21', '2023-12-21', 'Aktif', '', 'KPS', 'UMA', 'Icon_profile.png');

-- --------------------------------------------------------

--
-- Table structure for table `perjanjian`
--

CREATE TABLE `perjanjian` (
  `id_perjanjian` int(100) NOT NULL,
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

INSERT INTO `perjanjian` (`id_perjanjian`, `nomor`, `tanggal`, `phk_1`, `phk_2`, `phk_3`, `judul`, `mulai`, `selesai`, `status`, `user`, `tipe`, `cabang`, `file`) VALUES
(1, '001/PKS/UMA/06/2022', '2022-06-29', 'Bank Sumsel Babel', 'PT Multipolar Technology Tbk', '-', 'Pembuatan Aplikasi Database Perjanjian Kerjasama Satuan Hukum', '2022-06-01', '2022-07-31', 'Arsip', '', 'KPS', 'UMA', 'BSB-202204-017020_1.pdf'),
(2, '172/HCL/1/M/2021', '2021-04-29', '1', '2', '-', 'DMSs', '2022-03-14', '2022-07-01', 'Arsip', '', 'KPS', 'UMA', 'ResponseSummary.pdf'),
(3, '172/HCL/1/M/2022', '2021-04-21', 'Pertama', 'Kedua', 'Ketiga', 'PKS ', '2022-01-25', '2022-09-03', 'Non Aktif/Kadaluarsa', '', 'KPS', 'UMA', 'BSB-202204-017020_1.pdf'),
(14, '172/HCL/1/M/2021', '2021-04-30', '1', '2', '-', '1354654', '2022-01-24', '2023-09-02', 'Non Aktif/Kadaluarsa', '', 'KPS', 'UMA', 'Catatan Keuntungan Harian Bulan APRIL 2022.xlsx'),
(15, '1', '2021-04-29', '1', '1', '1', '1', '2022-01-03', '2022-06-30', 'Arsip', '', 'KPS', 'UMA', 'Catatan Keuntungan Harian Bulan APRIL 2022.xlsx'),
(16, '172/HCL/1/M/2021', '2021-11-10', '1', '2', '-', '012345647', '2022-04-18', '2022-11-01', 'Arsip', '', 'KPS', 'UMA', 'suratkeluar_11922_TJRPHO.pdf'),
(17, '/TSI/2020', '2021-04-29', 'Bank Sumsel Babel', 'Pihak Kedua', '-', 'PKS Bank Sumsel Babel', '2022-03-14', '2022-06-24', 'Arsip', '', 'KPS', '140', 'Catatan Keuntungan Harian Bulan APRIL 2022.xlsx'),
(18, '2519/TSI/3.1/M/2021', '2022-07-07', 'Hidayat', 'Amin', 'Muhammad', 'Semua Tidak Berjudul', '2022-07-07', '2023-06-30', 'Arsip', '', 'CAB', '193', 'Daftar Semua Perjanjian Kerjasama Habis Masa Berlaku.pdf'),
(19, '0001/HCL/1/M/2021', '2021-04-29', 'Pihak 1', 'Pihak 2', '-', 'PKS INDUK', '2022-03-14', '2022-07-30', 'Arsip', '', 'KPS', '140', 'Daftar Perjanjian Kerjasama.pdf'),
(20, '0003/UAT/PKS/2022', '2022-08-31', 'Bank Sumsel Babel', 'Vendor 1', 'Vendor 2', 'Surat Perjanjian kerjasama PT Bank Sumsel Babel Antara Vendo 1 bersama Vendor 2 tentang Aplikasi Database PKS dan MoU (Test)', '2022-08-31', '2022-12-01', 'Arsip', '', 'KPS', '140', 'brd_aplikasi-pks-mou.pdf'),
(21, '0002/HCL/1/M/2022', '2022-07-01', 'Pihak 1', 'Pihak 2', '-', 'Addendum PKS INDUK ', '2022-07-01', '2022-09-01', 'Arsip', '', 'KPS', '140', 'PKS.pdf'),
(22, '10000/UAT/PKS/UMA/2022', '2022-08-31', 'Pihak 1', 'Pihak 2', 'Pihak 3', 'Perjanjian Kerjasama Perjanjian Kerjasama Perjanjian Kerjasama Perjanjian Kerjasama Perjanjian Kerjasama Perjanjian Kerjasama Perjanjian Kerjasama Perjanjian Kerjasama Perjanjian Kerjasama Perjanjian Kerjasama', '2022-08-01', '2022-10-01', 'Aktif', '', 'KPS', 'UMA', 'PKS.pdf'),
(23, '20000/UAT/PKS/UMA/2022', '2022-08-31', 'Pihak 1', 'Pihak 2', 'Pihak 3', 'PKS ADDENDUM', '2022-08-31', '2022-10-01', 'Addendum I', '', 'KPS', 'UMA', 'PKS.pdf'),
(25, '00002/UAT/MoU/2022', '2022-09-05', 'Bank Sumsel Babel', 'Pihak 2', 'Pihak 3', 'PKS Bank Sumsel Babel', '2022-08-16', '2022-08-17', 'Aktif', '', 'CAB', '193', 'PKS.pdf'),
(26, '00001/UAT/PKS/2022', '2022-09-29', 'Pihak 1', 'Pihak 2', 'Pihak 3', 'Perjanjian Kerjasama antara Bank Pembangunan Daerah Sumatra Selatan dan Bangka Belitung dan PT Multipolar Technology dan PT Lintas Arta tentang Penyimpanan Source Code Core Banking System Bank Sumsel Babel', '2022-09-29', '2022-12-29', 'Aktif', '', 'CAB', '140', 'PKS.pdf'),
(27, '00002/UAT/PKS/2022', '2022-11-29', 'Bank Sumsel Babel', 'PT Multipolar Technology', 'PT Lintasarta', 'Addendum I Perjanjian Kerjasama antara Bank Pembangunan Daerah Sumatra Selatan dan Bangka Belitung dan PT Multipolar Technology dan PT Lintas Arta tentang Penyimpanan Source Code Core Banking System Bank Sumsel Babel', '2022-11-29', '2022-01-31', 'Addendum I', '', 'KPS', 'UMA', 'PKS.pdf'),
(28, '00004/UAT/PKS/2022', '2022-05-03', 'Bank Sumsel Babel', 'Pihak 2', 'Pihak 3', 'PKS', '2022-01-01', '2022-04-01', 'Arsip', '', 'CAB', '140', 'MoU.pdf'),
(29, '00006/UAT/PKS/2022', '2022-09-30', 'Bank Sumsel Babel', 'Vendor 1', 'Vendor 2', 'Perjanjian Kerjasama antara Bank Pembangunan Daerah Sumatra Selatan dan Bangka Belitung dan PT Multipolar Technology dan PT Lintas Arta tentang Penyimpanan Source Code Core Banking System Bank Sumsel Babel', '2022-08-01', '2022-09-30', 'Aktif', '', 'KPS', 'UMA', 'PKS.pdf'),
(30, '00007/UAT/PKS/2022', '2022-08-01', 'Bank Sumsel Babel', 'Vendor 1', 'Vendor 2', 'Surat Perjanjian kerjasama PT Bank Sumsel Babel Antara Vendo 1 bersama Vendor 2 tentang Aplikasi Database PKS dan MoU (Test)', '2022-08-01', '2022-09-30', 'Aktif', '', 'KPS', 'UMA', 'PKS.pdf'),
(31, '00007UAT/PKS/2022', '2022-07-01', 'Bank Sumsel Babel', 'Vendor 1', 'Vendor 2', 'Perjanjian Kerjasama Addendum I Perjanjian Kerjasama Addendum I Perjanjian Kerjasama Addendum I Perjanjian Kerjasama Addendum I Perjanjian Kerjasama Addendum I Perjanjian Kerjasama Addendum I Perjanjian Kerjasama Addendum I Perjanjian Kerjasama Addendum I Perjanjian Kerjasama Addendum I Perjanjian Kerjasama Addendum I Perjanjian Kerjasama Addendum I Perjanjian Kerjasama Addendum I Perjanjian Kerjasama Addendum I Perjanjian Kerjasama Addendum I Perjanjian Kerjasama Addendum I Perjanjian Kerjasama Addendum I Perjanjian Kerjasama Addendum I Perjanjian Kerjasama Addendum I Perjanjian Kerjasama Addendum I Perjanjian Kerjasama Addendum I Perjanjian Kerjasama Addendum I Perjanjian Kerjasama Addendum I', '2022-07-01', '2022-09-30', 'Arsip', '', 'KPS', 'UMA', 'PKS.pdf'),
(32, '00044/UAT/PKS/2022', '2022-12-13', 'PT Bank Sumsel Babel', 'Vendor 1', 'Vendor 2', 'Surat Perjanjian kerjasama PT Bank Sumsel Babel Antara Vendor 1 bersama Vendor 2 tentang Aplikasi Database PKS dan MoU (Test)', '2022-12-13', '2023-12-12', 'Aktif', '', 'CAB', '140', 'PKS.pdf'),
(34, '100/DIR/P/2022', '2022-12-20', 'Bank Sumsel Babel', 'Vendor 1', '-', 'PERJANJIAN KERJA SAMA', '2022-12-20', '2024-12-20', 'Aktif', '', 'KPS', 'UMA', 'Icon_profile.png'),
(35, '1234/UAT/PKS/2022', '2022-12-21', 'Bank Sumsel Babel', 'Vendor 1', '-', 'PKS', '2022-12-21', '2023-12-21', 'Aktif', '', 'CAB', '140', 'Icon_profile.png'),
(36, '1153/TSI/4.2/M/2021', '2021-05-10', 'M Hidayat Amin', 'Sholahul Fajri', 'Albert Ivando', 'User Satu', '2022-12-30', '2023-01-01', 'PKS/MoU Induk', '', 'KPS', 'UMA', '[UPDATE] FSD BSB Merchant  v1.1 091222.pdf'),
(37, '1153/TSI/4.2/M/2021', '2021-05-10', 'M Hidayat Amin', 'Sholahul Fajri', 'Albert Ivando', 'User Satu', '2022-12-30', '2023-01-01', 'PKS/MoU Induk', '', 'KPS', 'UMA', '[UPDATE] FSD BSB Merchant  v1.1 091222.pdf');

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
(7, 'Arsip'),
(8, 'Status Satu'),
(10, 'Status 2'),
(12, 'tes');

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
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'admin', 'KPS', 'UMA', 'Aktif', 'pinguin.png'),
(2, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'User Kantor Pusat', 'user', 'KPS', 'UMA', 'Aktif', 'user.png'),
(3, 'admin1', 'e00cf25ad42683b3df678c61f42c6bda', 'Administrator Cabang', 'admin1', 'CAB', '193', 'Aktif', 'pinguin.jpg'),
(10, 'user1', '24c9e15e52afc47c225b757e7bee1f9d', 'User Cabang', 'user1', 'CAB', '140', 'Aktif', 'Icon_profile.png'),
(11, 'user_disabled', 'fcb99363379e1d02f443aa1a1e0e2a6c', 'User Tidak Aktif', 'user1', 'CAB', '801', 'Non Aktif', 'Icon_profile2.png'),
(15, 'test', '098f6bcd4621d373cade4e832627b4f6', 'test', 'admin', 'KPS', '140', '', 'Icon_profile.png'),
(16, 'JBR01', 'ff44570aca8241914870afbc310cdb85', 'Taca Rosa', 'user1', 'KPS', '193', '', 'Icon_profile.png');

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
  ADD PRIMARY KEY (`id_mou`);

--
-- Indexes for table `perjanjian`
--
ALTER TABLE `perjanjian`
  ADD PRIMARY KEY (`id_perjanjian`);

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
  MODIFY `id_cabang` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mou`
--
ALTER TABLE `mou`
  MODIFY `id_mou` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `perjanjian`
--
ALTER TABLE `perjanjian`
  MODIFY `id_perjanjian` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id_status` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Database: `sias-pks-new`
--
CREATE DATABASE IF NOT EXISTS `sias-pks-new` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sias-pks-new`;

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
(38, 11, 11, '0', '2021-04-30', '0', '0', '0', '0', '2022-01-03', '0000-00-00', 'PKS/MoU Induk', '', 'CAB', '193', 'earth02.jpg'),
(39, 12, 12, '1', '2021-11-10', '1', '1', '1', '1', '2022-04-18', '2022-06-30', 'Addendum I', '', 'CAB', '193', 'earth07.jpg'),
(40, 13, 11, '2', '2021-04-30', '0', '0', '0', '0', '2022-03-14', '2023-06-30', 'Addendum III', '', 'CAB', '193', 'earth08.jpg'),
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
(78, 14, 14, 'PKS kantor Pusat', '2023-04-12', 'PKS kantor Pusat', 'PKS kantor Pusat', 'PKS kantor Pusat', 'PKS kantor Pusat', '2023-01-25', '2024-02-07', 'Aktif', '', 'KPS', '000', 'PKS.pdf'),
(84, 15, 15, 'PKS cabang 193 ', '2023-04-12', 'PKS cabang 193 ', 'PKS cabang 193 ', 'PKS cabang 193 ', 'PKS cabang 193 ', '2023-04-12', '2023-11-30', 'Aktif', '', 'CAB', '193', 'PKS.pdf'),
(85, 16, 15, 'Addendum PKS cabang 193	 ', '2023-04-12', 'PKS cabang 193 ', 'PKS cabang 193 ', 'PKS cabang 193 ', 'PKS cabang 193 ', '2023-04-12', '2023-09-15', 'Addendum I', '', 'CAB', '193', 'PKS.pdf'),
(86, 17, 17, 'PKS 2 cabang 193 ', '2023-04-12', 'PKS 2 cabang 193 ', 'PKS 2 cabang 193 ', 'PKS 2 cabang 193 ', 'PKS 2 cabang 193 ', '2023-04-12', '2024-04-20', 'Aktif', '', 'CAB', '193', 'PKS.pdf'),
(87, 18, 18, 'PKS 3 cabang 193 ', '2023-04-12', 'PKS 3 cabang 193 ', 'PKS 3 cabang 193 ', 'PKS 3 cabang 193 ', 'PKS 3 cabang 193 ', '2023-04-12', '2023-06-15', 'Aktif', '', 'CAB', '193', 'PKS.pdf');

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
(7, 'Arsip'),
(8, 'Status Satu'),
(10, 'Status 2');

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
(21, 'admindata', '2fafd887b0dfa2be0fd07c20a314e648', 'Admin Data', 'admindata', 'KPS', '000', 'Aktif', 'pinguin.jpg');

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
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `perjanjian`
--
ALTER TABLE `perjanjian`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id_status` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- Database: `sias-tsi`
--
CREATE DATABASE IF NOT EXISTS `sias-tsi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sias-tsi`;

-- --------------------------------------------------------

--
-- Table structure for table `catatan`
--

CREATE TABLE `catatan` (
  `id` int(100) NOT NULL,
  `perihal` varchar(1000) NOT NULL,
  `uraian` varchar(5000) NOT NULL,
  `target` date NOT NULL,
  `tanggal_terima` date NOT NULL,
  `prioritas` varchar(50) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `bagian` varchar(50) NOT NULL,
  `file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detail_pekerjaan`
--

CREATE TABLE `detail_pekerjaan` (
  `id_detail` int(100) NOT NULL,
  `id_pekerjaan` int(100) NOT NULL,
  `tahapan` varchar(5000) NOT NULL,
  `input` varchar(5000) NOT NULL,
  `output` varchar(5000) NOT NULL,
  `target` date NOT NULL,
  `prioritas` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `bagian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_pekerjaan`
--

INSERT INTO `detail_pekerjaan` (`id_detail`, `id_pekerjaan`, `tahapan`, `input`, `output`, `target`, `prioritas`, `status`, `user`, `divisi`, `bagian`) VALUES
(1, 6, 'Inisiasi Project', 'Selesai', 'Selesai', '2021-10-01', 'Medium Priority', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(2, 6, 'Pembuatan Aplikasi', 'Proses Pembuatan Aplikasi', '-', '2021-12-31', 'Medium Priority', 'Dalam Proses', 'M Hidayat Amin', 'TSI', 'PNG'),
(3, 6, 'Testing Aplikasi', '-', '-', '2021-12-31', 'Medium Priority', 'Belum', 'M Hidayat Amin', 'TSI', 'PNG'),
(4, 6, 'Launching Aplikasi', '-', '-', '2022-01-10', 'Medium Priority', 'Belum', 'M Hidayat Amin', 'TSI', 'PNG');

-- --------------------------------------------------------

--
-- Table structure for table `notulen`
--

CREATE TABLE `notulen` (
  `id` int(10) NOT NULL,
  `no_notulen` varchar(20) NOT NULL,
  `status_notulen` varchar(30) NOT NULL,
  `tanggal_notulen` date NOT NULL,
  `tanggal_terima` date NOT NULL,
  `asal_notulen` varchar(50) NOT NULL,
  `perihal` varchar(100) NOT NULL,
  `user` varchar(50) NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `bagian` varchar(50) NOT NULL,
  `file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id_pekerjaan` int(100) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `uraian` varchar(5000) NOT NULL,
  `target` date NOT NULL,
  `prioritas` varchar(50) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `bagian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pekerjaan`
--

INSERT INTO `pekerjaan` (`id_pekerjaan`, `judul`, `uraian`, `target`, `prioritas`, `pic`, `status`, `user`, `divisi`, `bagian`) VALUES
(6, 'Pembuatan Aplikasi Monitoring Pekerjaan Divisi Teknologi & Sistem Informasi', 'Aplikasi Monitoring Pekerjaan Divisi Teknologi & Sistem Informasi\r\nDoc : Abc1234', '2022-01-25', 'Low Priority', 'Hidayat', 'Dalam Proses', 'M Hidayat Amin', 'TSI', 'PNG'),
(7, 'Fintec DIGILOAN Bank Sumsel Babel', '2830/TSI/4.2/M/2021  Change Divisi BKU Digiloan\r\nPekerjaan Change\r\nRequest Integrasi Bank Vision\r\ndan Digiloan untuk\r\nSentralisasi Kredit Konsumer', '2021-12-03', 'High Priority', 'Ahmad Bastian', 'Dalam Proses', 'Ahmad Bastian', 'TSI', 'PNG');

-- --------------------------------------------------------

--
-- Table structure for table `perjanjian`
--

CREATE TABLE `perjanjian` (
  `id` int(100) NOT NULL,
  `nomor` varchar(100) NOT NULL,
  `uraian` varchar(5000) NOT NULL,
  `mulai` date NOT NULL,
  `target` date NOT NULL,
  `tanggal_terima` date NOT NULL,
  `prioritas` varchar(50) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `bagian` varchar(50) NOT NULL,
  `file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `level` enum('admin','admin1','user','user1') NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `bagian` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `foto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fullname`, `level`, `divisi`, `bagian`, `jenis_kelamin`, `foto`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'admin', 'TSI', 'TSI', 'Perempuan', 'admin.png'),
(2, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'Username', 'user', 'TSI', 'TSI', 'Laki Laki', 'user.png'),
(3, 'admin1', 'e00cf25ad42683b3df678c61f42c6bda', 'Administrator1', 'admin1', 'TSI', 'PNG', 'Perempuan', 'admin.png'),
(4, 'user1', '24c9e15e52afc47c225b757e7bee1f9d', 'Username1', 'user1', 'TSI', 'PNG', 'Laki Laki', 'user.png'),
(12, 'dayat', '9efef95a35ea9a35555db2d59d27c356', 'M Hidayat Amin', 'user1', 'TSI', 'PNG', 'Laki Laki', 'user.png'),
(13, 'bastian', '5aaea65c794379b4984c0ec3477973ff', 'Ahmad Bastian', 'user1', 'TSI', 'PNG', 'Laki Laki', 'user.png'),
(14, 'adminpng', '195e895473de8cefed8a556f50183398', 'Admin Pengembangan', 'admin1', 'TSI', 'PNG', 'Perempuan', 'admin.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catatan`
--
ALTER TABLE `catatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_pekerjaan`
--
ALTER TABLE `detail_pekerjaan`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_pekerjaan` (`id_pekerjaan`);

--
-- Indexes for table `notulen`
--
ALTER TABLE `notulen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`);

--
-- Indexes for table `perjanjian`
--
ALTER TABLE `perjanjian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catatan`
--
ALTER TABLE `catatan`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail_pekerjaan`
--
ALTER TABLE `detail_pekerjaan`
  MODIFY `id_detail` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notulen`
--
ALTER TABLE `notulen`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  MODIFY `id_pekerjaan` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `perjanjian`
--
ALTER TABLE `perjanjian`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_pekerjaan`
--
ALTER TABLE `detail_pekerjaan`
  ADD CONSTRAINT `detail_pekerjaan_ibfk_1` FOREIGN KEY (`id_pekerjaan`) REFERENCES `pekerjaan` (`id_pekerjaan`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `sias-tsi2`
--
CREATE DATABASE IF NOT EXISTS `sias-tsi2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sias-tsi2`;

-- --------------------------------------------------------

--
-- Table structure for table `catatan`
--

CREATE TABLE `catatan` (
  `id` int(100) NOT NULL,
  `perihal` varchar(1000) NOT NULL,
  `uraian` varchar(5000) NOT NULL,
  `target` date NOT NULL,
  `tanggal_terima` date NOT NULL,
  `prioritas` varchar(50) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `bagian` varchar(50) NOT NULL,
  `file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detail_pekerjaan`
--

CREATE TABLE `detail_pekerjaan` (
  `id_detail` int(100) NOT NULL,
  `id_pekerjaan` int(100) NOT NULL,
  `tahapan` varchar(5000) NOT NULL,
  `input` varchar(5000) NOT NULL,
  `output` varchar(5000) NOT NULL,
  `pic` varchar(50) NOT NULL,
  `mulai` date NOT NULL,
  `target` date NOT NULL,
  `prioritas` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `bagian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_pekerjaan`
--

INSERT INTO `detail_pekerjaan` (`id_detail`, `id_pekerjaan`, `tahapan`, `input`, `output`, `pic`, `mulai`, `target`, `prioritas`, `status`, `user`, `divisi`, `bagian`) VALUES
(1, 1, 'Dokumen FSD dan TSD', '-', '-', 'MLPT & BSB', '2022-01-03', '2022-01-14', 'High Priority', 'Dalam Proses', 'Admin Pengembangan', 'TSI', 'PNG'),
(2, 1, 'Training', '-', '-', 'MLPT & BSB', '2022-01-17', '2022-01-21', 'High Priority', 'Dalam Proses', 'Admin Pengembangan', 'TSI', 'PNG'),
(3, 1, 'Setup/Install Aplikasi', '-', '-', 'MLPT & BSB', '2022-01-24', '2022-01-28', 'High Priority', 'Dalam Proses', 'Admin Pengembangan', 'TSI', 'PNG'),
(4, 1, 'Pembuatan Aplikasi', '-', '-', 'MLPT & BSB', '2022-01-24', '2022-02-11', 'High Priority', 'Dalam Proses', 'Admin Pengembangan', 'TSI', 'PNG'),
(5, 1, 'Proses IUT', '-', '-', 'MLPT', '2022-02-14', '2022-03-11', 'High Priority', 'Dalam Proses', 'Admin Pengembangan', 'TSI', 'PNG'),
(6, 1, 'Proses SIT', '-', '-', 'BSB', '2022-03-14', '2022-03-31', 'High Priority', 'Dalam Proses', 'Admin Pengembangan', 'TSI', 'PNG'),
(7, 1, 'Proses UAT', '-', '-', 'BSB', '2022-04-04', '2022-04-15', 'High Priority', 'Dalam Proses', 'Admin Pengembangan', 'TSI', 'PNG'),
(8, 1, 'Proses Migrasi', '-', '-', 'MLPT & BSB', '2022-04-04', '2022-04-15', 'High Priority', 'Dalam Proses', 'Admin Pengembangan', 'TSI', 'PNG'),
(9, 1, 'Test Operasional', '-', '-', 'BSB', '2022-04-18', '2022-04-22', 'High Priority', 'Dalam Proses', 'Admin Pengembangan', 'TSI', 'PNG'),
(10, 4, 'Dokumen Change Request', '- Memoke PGK konfirmasi detil permintaan perubahan \r\n- 2369/TSI/1.1/M/2021, Tgl 14 Oktober 2021, Perihal Konfirmasi \r\n  Penyampaian Problem Pemeliharaan Sistem Menu Uji Dini \r\n  APlikasi FLPP \r\n- DocId : VVKYUF \r\n- Menunggu Konfimasi dari PGK', 'Menunggu konfirmasi dari PGK (2369/TSI/1.1/M/2021)', 'Albert', '0000-00-00', '0000-00-00', 'Low Priority', 'Selesai', 'Umar Holik', 'TSI', 'PNG'),
(11, 2, 'Dokumen FSD dan TSD', '-', '-', 'MLPT & BSB', '2022-01-03', '2022-01-14', 'High Priority', 'Dalam Proses', 'Admin Pengembangan', 'TSI', 'PNG'),
(12, 2, 'Persiapan Server dan Network', '-', '-', 'MLPT & BSB', '2022-03-01', '2022-03-11', 'High Priority', 'Dalam Proses', 'Admin Pengembangan', 'TSI', 'PNG'),
(13, 2, 'Setup/Install Aplikasi', '-', '-', 'MLPT & BSB', '2022-02-21', '2022-03-11', 'High Priority', 'Dalam Proses', 'Admin Pengembangan', 'TSI', 'PNG'),
(14, 2, 'Proses IUT', '-', '-', 'MLPT', '2022-03-14', '2022-04-15', 'High Priority', 'Dalam Proses', 'Admin Pengembangan', 'TSI', 'PNG'),
(15, 2, 'Proses SIT', '-', '-', 'BSB', '2022-04-18', '2022-04-29', 'High Priority', 'Dalam Proses', 'Admin Pengembangan', 'TSI', 'PNG'),
(16, 2, 'Proses UAT', '-', '-', 'BSB', '2022-05-02', '2022-05-13', 'High Priority', 'Dalam Proses', 'Admin Pengembangan', 'TSI', 'PNG'),
(17, 2, 'Proses Migrasi', '-', '-', 'MLPT & BSB', '2022-05-02', '2022-05-13', 'High Priority', 'Dalam Proses', 'Admin Pengembangan', 'TSI', 'PNG'),
(18, 2, 'Test Operasional', '-', '-', 'BSB', '2022-05-16', '2022-05-20', 'High Priority', 'Dalam Proses', 'Admin Pengembangan', 'TSI', 'PNG'),
(19, 11, 'Proses Migrasi', 'Telah dilakukan Migrasi Tanggal 05-01-2022', 'Selesai', 'Handika', '2022-01-01', '2022-01-06', 'Medium Priority', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(20, 12, 'Proses Migrasi', 'Koordinasi Migrasi Tanggal 05-01-2022\r\nMenunggu jadwal Migrasi oleh Bagian ITO', '-', 'Hidayat', '2022-01-01', '0000-00-00', 'Medium Priority', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(21, 13, 'Proses UAT', 'Proses SIT/UAT SIPD LS Gaji', 'Selesai', 'Hidayat', '2022-01-01', '2022-01-01', 'Medium Priority', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(22, 13, 'Proses UAT', 'Proses SIT/UAT SIPD LS Non Gaji, dijadwalkan tanggal 7 Januari 2022', 'UAT dengan BAKUDA Pangkal Pinang', 'Hidayat', '2022-01-07', '0000-00-00', 'Medium Priority', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(23, 14, 'Proses SIT', 'Menunggu koordinasi dengan Pihak Dirjen Pajak, terkait pelaksanaan lanjutan testing Jam Cut Off', 'Informasi dari PG&K (7 Januari 2022) bahwa pihak MPN meminta untuk dilakukan SIT ulang dikarenakan dokumen yang sebelumnya sudah terlalu lama, Jika telah selesai maka hasil capture dan logs akan diserahkan ke tim DJP untuk diusulkan proses UAT.', 'Hidayat', '2022-01-01', '0000-00-00', 'Medium Priority', 'Dalam Proses', 'M Hidayat Amin', 'TSI', 'PNG'),
(24, 15, 'Proses UAT', 'Menunggu jadwal koordinasi testing dari pihak PGK dan Telkom', '-', 'Hidayat', '2022-01-01', '0000-00-00', 'Medium Priority', 'Dalam Proses', 'M Hidayat Amin', 'TSI', 'PNG'),
(25, 16, 'Dokumen Change Request', '-', '-', 'Hidayat', '0000-00-00', '0000-00-00', 'Low Priority', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(26, 16, 'Proses UAT', '1. Testing Chanel Teller\r\n2. Testing Chanel ATM\r\n3. Testing Chanel IB', '1. Testing Chanel Teller : Selesai (07-01-2122)\r\n2. Testing Chanel ATM : Belum\r\n3. Testing Chanel IB : Selesai (10-01-2022)', 'Hidayat', '2122-01-01', '0000-00-00', 'Low Priority', 'Dalam Proses', 'M Hidayat Amin', 'TSI', 'PNG'),
(27, 7, 'Dokumen Change Request', 'Maintenance Rekening PRK Syariah pada menu BI Basel\r\non Progress  untuk Rekeneng syariah pada menu BI Basel', '-   BRP,\r\n-   FSD ( desiagn,sungsionalitas )\r\n-  Chenge souurce Bank Vision nya yang terakhir\r\n-  Diskusi dengan User Terkait FSD \r\n-  Obejct di BV Harus terakhir di Production (OS)\r\n-   Progress Aplikasi Maintenance Rekening PRK\r\n-  Selesai \r\n-  P4SA  on Progresss\r\n-  Memo SIT\r\n- Menunggu UAT\r\n', 'Fajri', '2021-11-23', '2022-01-29', 'Medium Priority', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(28, 10, 'Dokumen BRD', 'Setting Penggunaan Pinpad Pada Menu User Lever Cabang', '- Item \r\n- Pelajari BRD dan FDS dari User dan PGK\r\n- Persiapan Delelopment  terkait dengan Pinpad \r\n- Development  terkait Objek di Bank Vision\r\n- SIT dan P4SA\r\n- Memo Pengembangan 731/TSI/1.2/M//2021', 'Andy Sya putra', '2022-01-03', '2022-01-14', 'Medium Priority', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(29, 6, 'Dokumen Change Request', 'Memo  2635/TSI/4.2/M/2021 11 November 2021\r\nMemo  2532/TSI/2.3/M/2021 03 November 2021\r\nMeno \r\nPerbaikan selisih antara rekening Koran Kasda dan Laporan B9', '- Mempelajari  BRD dam FSD \r\n  Selisih Rekening Koran Kasda dan B9\r\n- Persiapan Development Terkait Objek - Objek Laporan B9\r\n- Development \r\n  on pregress changer request \r\n- Persiapan SIT Development\r\n  \r\n', 'Albert', '2021-11-11', '2022-01-28', 'Medium Priority', 'Dalam Proses', 'Ahmad Bastian', 'TSI', 'PNG'),
(30, 18, 'Dokumen Change Request', '-Bussines Requirement Document (BDR)\r\n-Funcional Spesification Document (FSD)\r\n- SIT dan UAT  On Progress Aplikasi', '-SIT dan UAT    On Progress ', 'Albert', '2021-11-01', '2022-01-21', 'Medium Priority', 'Dalam Proses', 'Ahmad Bastian', 'TSI', 'PNG'),
(31, 5, 'Dokumentasi UAT', 'Memo 98/TSI/1.2/M/2022 \r\nAplikasi interface pelaporan SLIK.\r\n-Objek Aplikasi Pelaporan SLIK\r\n-Dokumen Pengembangan aplikasi\r\n-Berita acara SIT', 'Objek Objek Telah disampaikan aplikasi ttersebut yang akan di live di production', 'Andy Syahputra', '2021-11-13', '2022-01-13', 'High Priority', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(32, 17, 'Dokumen Change Request', 'Butuh penjelasan detail\r\n200/TSI/1.2/M/2021   tanggal 24 Januari 2022\r\nPengembangan Siskehat Gen 2\r\n', 'A. Data yang akan di gunakan apakah diambil dari deskripsi transaksi \r\n    Manual input User,Log siskohat atau dari sumber lainnya\r\nB. Berdasarkan penyempaian dari user, saat ini semua traksaksi dilakukan \r\n    Secara manual\r\nC. Beberaoa data kelengkapan Bank Wajib memberikan data seperti fund code \r\n    dan trx_code dimana belum ada pemisahan secara spesifik, sehingga sulit untuk \r\n    di proses untuk laporan.', 'Andy Syaputra', '0000-00-00', '0000-00-00', 'High Priority', 'Belum', 'Umar Holik', 'TSI', 'PNG'),
(33, 7, 'Dokumentasi SIT', 'Telah dilakukkan Dokumentasi SIT (26-01-2022) \r\nMenunggu pelaksanaan UAT', 'DOK SIT (P4SA)', 'Fajri', '2022-01-26', '2022-01-26', 'Medium Priority', 'Selesai', 'Sholahul Fajri', 'TSI', 'PNG'),
(34, 22, 'Dokumen FSD dan TSD', 'Server :\r\nServer Robotic      Mem 16 GB HDD 1TB,   OS Linux Hat/Centos\r\nAPP Server           Mem 32 GB HDD 1TB ,  OS Linux Hat/Centos\r\nDataBase Server  Mem 62 GB HDD 1TB,   OS Linux Hat/Centos\r\nServer Robotic      Mem 16 GB HDD 1TB,   OS Windows Server 2016/2019\r\nTIm ITI 100 %\r\n\r\nProgress Server Digiloand\r\nWeb Server\r\n-Web digiloan 70 %\r\nServer APP\r\n- engine Slik 80%\r\n-Engine Dedup 100%\r\n-Engine Dukcapil -\r\n-Engine Scoring \r\n-Engine Distribusi (Pipeline & Approval) Need Confirm\r\n Mobile Apps 100%  \r\nServer Database\r\n-load Big Data 100%\r\nBSB\r\n- Mapping data Calon Nasabah dan Preloadn                                         Done\r\n- Pembuatan Aplikasi Core Banking Untuk Kebutuhan Big Data             Done\r\n- Instalasi Aplikasi Payment Gateway (PG)                                              Done\r\n- Mapping Data Untuk Kebutuhan Tabel LNSPK                                      Done\r\n- Testing Pengiriman data Ke Tabel Preloands                                         Done', '1. Mobile MO Modif data Core 80%\r\n2. Mobile Approval   90 %\r\n3. Engine big data 100%\r\n', 'Andy Syahputra', '2021-11-13', '2022-05-31', 'Medium Priority', 'Dalam Proses', 'Ahmad Bastian', 'TSI', 'PNG'),
(35, 27, 'Proses SIT', 'SIT Dimulai 31/01/2021\r\nTgl 04/02/2021 Telah selesai dilaksanakan SIT dengan 2 Skenario Penyusunan Dokumen P4SA', 'Spool dapat Digenerate Optional bisa digenerate saat EOD ataupun SOD', 'Fajri', '2022-01-31', '2022-02-07', 'Low Priority', 'Selesai', 'Administrator', 'TSI', 'TSI'),
(36, 17, 'Pembuatan Aplikasi', 'aplikasi siskehat G2 dalam tahan Mapping objek terkait yang di gunakan  \r\n- Pembayaran siskehat g2\r\n- Mutasi pembayaran Haji di sikehat\r\n- tahap mapping onjek di core bangking', 'dalam proses', 'Andy Syahputra', '2022-02-06', '2022-03-11', 'High Priority', 'Dalam Proses', 'Ahmad Bastian', 'TSI', 'PNG'),
(37, 48, 'Proses UAT', 'Telah dilakukan SIT Tanggal 25 s.d 26 April 2022', 'SIT Selesai', 'Dayat', '2022-04-18', '2022-04-28', 'Medium Priority', 'Selesai', 'Admin Pengembangan', 'TSI', 'PNG'),
(38, 48, 'Dokumentasi SIT', 'Pengajuan Memo UAT pada Digisign Tgl 28-04-2022', 'Memo UAT ke PGK', 'Dayat', '2022-04-28', '2022-04-28', 'Medium Priority', 'Dalam Proses', 'Admin Pengembangan', 'TSI', 'PNG'),
(39, 13, 'Proses Migrasi', 'Persiapan Migrasi', 'Persiapan Migrasi', 'Hidayat', '2022-05-10', '2022-05-31', 'Medium Priority', 'Perencanaan', 'Admin Pengembangan', 'TSI', 'PNG'),
(40, 58, 'Proses SIT', '1.Tabel user mo dan sentra belum sesuai dengan production sekarang, diperlukan cleansing data \r\n2.Field Asuransi masih kosong, menyebabkan saat proses hitung untuk field rate asuransi jiwa(%), premi asuransi kosong\r\n3.Field Pelunasan Pinjaman Sebelumnya (Rp) masih belum sesuai\r\n4.Field Total bersih diterima debitur belum sesuai\r\n5.Belum bisa insert ke BV dikarenakan beberapa field masih salah', 'masih ada kendala', 'andi', '2022-07-13', '2022-07-13', 'Medium Priority', 'Dalam Proses', 'Ahmad Bastian', 'TSI', 'PNG'),
(41, 58, 'Proses SIT', '1. Tabel User masih belum sesuai, user yang digunakan masih menggunakan server dms yang lama\r\n2. Belum dapat dilakukan testing karena user mo yang terdaftar di core berbeda', 'masih terdapat kendala di disbusment', 'Andy Syahputra', '2022-07-14', '2022-07-14', 'Medium Priority', 'Dalam Proses', 'Ahmad Bastian', 'TSI', 'PNG'),
(42, 58, 'Proses SIT', 'Kelengkapan Dokument SIT \r\nUser manual\r\nPetujuk Teknis\r\nCapture SIT\r\nBerita Acara SIT\r\nPemrograman', 'Blm Selesai dari TIM DMS', 'Andy Syahputra', '2022-07-19', '2022-07-19', 'Medium Priority', 'Dalam Proses', 'Ahmad Bastian', 'TSI', 'PNG'),
(43, 56, 'Proses SIT', 'Mulai SIT Tanggal 26 Oktober 2022<br><br>\r\n\r\nPending Testing :<br>\r\n1. Tanggal 26 Oktober 2022 : Koneksi BSB - MPC Down, sehingga dialihkan untuk pekerjaan Aplikasi MOU PKS Database Pengadaan. <br>\r\n\r\n2. Tanggal 27 Oktober 2022 : dilanjukan proses SIT namun pukul 14.00 dipending karena mengikuti rapat operasional BI-Fast (dari pukul 14.00 s.d 16.30 sebagai notulis) <br>', '-', 'Hidayat', '2022-10-26', '2022-10-31', 'Medium Priority', 'Belum', 'Admin Pengembangan', 'TSI', 'PNG'),
(44, 68, 'Proses Migrasi', 'SIT dan UAT telah selesai dan dalam tahap persiapan migrasi', 'Aplikasi Go Live', 'Handika Saputra', '2022-06-01', '2022-09-29', 'High Priority', 'Selesai', 'Handika Syaputra', 'TSI', 'PNG'),
(45, 67, 'Proses UAT', 'SIT Telah Selesai Dilaksanakan dan siap dilanjutkan UAT', 'UAT', 'Handika Saputra', '2022-03-01', '2022-09-26', 'High Priority', 'Selesai', 'Handika Syaputra', 'TSI', 'PNG'),
(46, 72, 'Persiapan Server dan Network', 'Pada tanggal 21 November 2022, Di Grup Digital sdr. Rio dan Handika Diminta Untuk menghadiri rapat pembahasan host to host Pembayaran Mahasiswa UKMC pada tanggal 22 November 2022.', 'to be added', 'Handika Saputra', '2022-11-22', '2022-11-22', 'Medium Priority', 'Dalam Proses', 'Handika Syaputra', 'TSI', 'PNG'),
(47, 73, 'Dokumentasi SIT', 'SIT Telah selesai dilaksanakan dengan beberapa catatan yang masih dilakukan perbaikannya oleh tim mlpt dan akan di tes ulang kembali oleh BSB.', 'Dokumen SIT Selesai ( sekarang sedang dalam penyusunan )', 'Handika Saputra', '2022-11-14', '2022-11-25', 'High Priority', 'Dalam Proses', 'Handika Syaputra', 'TSI', 'PNG');

-- --------------------------------------------------------

--
-- Table structure for table `notulen`
--

CREATE TABLE `notulen` (
  `id` int(10) NOT NULL,
  `no_notulen` varchar(20) NOT NULL,
  `status_notulen` varchar(30) NOT NULL,
  `tanggal_notulen` date NOT NULL,
  `tanggal_terima` date NOT NULL,
  `asal_notulen` varchar(50) NOT NULL,
  `perihal` varchar(100) NOT NULL,
  `user` varchar(50) NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `bagian` varchar(50) NOT NULL,
  `file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id_pekerjaan` int(100) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `uraian` varchar(5000) NOT NULL,
  `docid` varchar(100) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `mulai` date NOT NULL,
  `target` date NOT NULL,
  `prioritas` varchar(50) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `bagian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pekerjaan`
--

INSERT INTO `pekerjaan` (`id_pekerjaan`, `judul`, `uraian`, `docid`, `jenis`, `mulai`, `target`, `prioritas`, `pic`, `status`, `user`, `divisi`, `bagian`) VALUES
(1, 'Aplikasi API Management (Open API)', 'Pengembangan Aplikasi Open API Bank Sumsel Babel\r\nSelesai dengan Catatan :', '-', 'New Request', '2022-01-01', '2022-12-31', 'High Priority', 'Team Counterpart', 'Selesai', 'Administrator', 'TSI', 'PNG'),
(2, 'Aplikasi Virtual Account (VA)', 'Pengembangan Aplikasi Virtual Account (VA)\r\nSelesai dengan Catatan : ', '-', 'New Request', '2022-01-01', '2022-12-01', 'High Priority', 'Team Counterpart', 'Selesai', 'Admin Pengembangan', 'TSI', 'PNG'),
(3, 'Aplikasi Customer On Boarding (COB)', 'Pengembangan Aplikasi Customer On Boarding (COB)\r\nSelesai dengan Catatan :', '-', 'New Request', '2022-01-01', '2022-05-01', 'High Priority', 'Team Counterpart', 'Selesai', 'Admin Pengembangan', 'TSI', 'PNG'),
(4, 'INHOUSE\r\nAplikasi Kasi Uji Dini FLPP', 'Aplikasi BV Pengecekan /flaging ulang pada  menu uji dini jika terjadi kesalahan input PK', 'DocID : OPMWKB, Memo : 2250/TSI/4.2/M/2021, 01-10-', 'Change Request', '0000-00-00', '0000-00-00', 'Medium Priority', 'Albert', 'Selesai', 'Umar Holik', 'TSI', 'PNG'),
(5, 'INHOUSE\r\nAplikasi Interface Pelaporan Slik (Penyesuaian Sandi)', 'Pembuatan Aplikasi Interface Pelaporan Slik (Penyesuaian Sandi Referensi dengan LBUT)', '-', 'Change Request', '2021-11-16', '2022-01-13', 'High Priority', 'Andy Syaputra', 'Selesai', 'Umar Holik', 'TSI', 'PNG'),
(6, 'Rekening Koran Kasda dan Laporan B9', 'Perbaikan Selisih antara Rekening Koran Kasda dan Laporan B9', '2635/TSI/4.2/M/2021, Tgl 11 November 2021 Change Request Perbaikan Selisih antara Rekening Koran Kas', 'Problem Report', '0000-00-00', '0000-00-00', 'Medium Priority', 'Albert', 'Selesai', 'Umar Holik', 'TSI', 'PNG'),
(7, 'Menu Maintenance Rekening PRK Syariah', '- Surat 525/SPG/5/B/2021 Tanggal 27 Oktober 2021\r\n- Meno 2673/TSi/2.3/M/2021 Tanggal 16 November 2021\r\n- Memo 2749/TSI/M/2021 tanggal 23 November 2021\r\n  Change Request Manu Maintenance Rekening PRK Syariah\r\n  ', '- BRD Main Rekening PRK Syariah Pada Menu BI Basel', 'Change Request', '2021-11-23', '2022-01-25', 'Low Priority', 'Fajri ', 'Selesai', 'Umar Holik', 'TSI', 'PNG'),
(9, 'Webservice Kemenag RI', 'Pembuatan Aplikasi Webservice untuk Kemenag RI', '-', 'New Request', '2021-06-03', '0000-00-00', 'Medium Priority', 'Andy', 'Selesai', 'Andy Syaputra', 'TSI', 'PNG'),
(10, 'INHOUSE\r\nPenambahan Setingan Penggunaan Pinpad pada Menu Akses User Level Cabang', 'Penambahan menu setting penggunaan Pinpad pada User', '-', 'Change Request', '2021-10-31', '2022-01-12', 'Medium Priority', 'Andy ', 'Selesai', 'Andy Syaputra', 'TSI', 'PNG'),
(11, 'Aplikasi Pembayaran Umum CIB', 'Pengembangan Aplikasi Pembayaran Umum Melalui Corporate Internet Banking', '-', 'New Request', '2022-01-01', '2022-01-05', 'Medium Priority', 'Handika', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(12, 'Aplikasi SISKUEDES Musi Banyuasin', 'Pengembangan Aplikasi Sistem Keuangan Desa Kabupaten Musi Banyuasin', '-', 'New Request', '2022-01-01', '2022-01-07', 'Medium Priority', 'Hidayat', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(13, 'Aplikasi SIPD Online', 'Pengembangan Aplikasi SIPD Online Bank Sumsel Babel', '-', 'New Request', '2022-01-01', '0000-00-00', 'Medium Priority', 'Hidayat', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(14, 'Aplikasi MPN G3 Channel Internet Banking', 'Pengembangan Aplikasi MPN G3 Melalui Channel Internet Banking\r\nAkan dilakukan Testing bersamaan dengan implementasi Aplikasi CTAZ tahun 2023, dikarenakan akan ada perubahan di proses create billing dan payment MPN G3', '-', 'Change Request', '2022-01-01', '2022-12-31', 'Medium Priority', 'Hidayat', 'Pending', 'M Hidayat Amin', 'TSI', 'PNG'),
(15, 'Aplikasi EDC Mini ATM Phase 2', 'Nomor : 257/TSI/4.1/M/2022\r\nTanggal : 28 Januari 2022\r\nPerihal : Support Pelaksanaan Re-UAT Mini ATM Fitur Pembayaran', '257/TSI/4.1/M/2022', 'New Request', '2022-01-28', '0000-11-30', 'Medium Priority', 'Hidayat', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(16, 'Support Testing Aplikasi 9 Pajak Lahat (Mitracomm)', 'Support Tim PGK untuk testing 9 Pajak menggunakan Switcher Mitracomm, dengan metode Kode Bayar.', '-', 'Change Request', '2022-01-01', '2022-07-01', 'Low Priority', 'Hidayat', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(17, 'Aplikasi SISKEHAT G2', 'Pengembangan Aplikasi Siskehat G2', '-', 'Change Request', '2022-01-11', '0000-00-00', 'Medium Priority', 'Andy Syaputra', 'Selesai', 'Admin Pengembangan', 'TSI', 'PNG'),
(18, 'Suku Bunga Floating Rate Pada Kredit Program KPR BP2BT dan KSG Komsumtif serta Amortisasi Asuransi', '-Memo 400/BKU/3.2/M/2021 Tanggal 21 Juli 2021\r\n-Memo 533/BKU/3.2/M/2021 Tanggal 09 Agustus 2021\r\n', '- Suku Bunga Bunga Floting Rate', 'Change Request', '2021-11-01', '2022-01-21', 'Medium Priority', 'Albert', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(20, 'Penambahan setting plan SIKP Syariah ', 'Plan SIKOP Syariah Proses pencarian berhasil dengan kondisi status Y dan penambahan validasi supervisor pada layar Akad SIKP Konvensional dan Syariah', '233 /TSI/4.2/M/2022 ', 'Change Request', '2022-01-26', '2022-07-31', 'Medium Priority', 'Albert', 'Selesai', 'Umar Holik', 'TSI', 'PNG'),
(21, 'Penambahan Draft Object Menu Rename EOD', '- 2852/TSI/4.2/M/2021, Penambahan Draft Object Menu Rename \r\n  EOD, Tanggal 06 Desember 2021\r\n- DocId : OREIJQ, Memo ke PGK : Konfirmasi Penambahan Draft \r\n  Object Menu Rename EOD, tanggal 24 Januari 2022', '2852/TSI/4.2/M/2021, DocId : CTUMOG', 'Change Request', '0000-00-00', '0000-00-00', 'Low Priority', 'Albert', 'Selesai', 'Umar Holik', 'TSI', 'PNG'),
(22, 'Project Digital Loan  ( Sentralisasi Kredit )\r\nDMS', '2830/TSI/4.2/M/2021 \r\nProject Pengembangan Digital Loan ', '2830/TSI/4.2/M/2021 ', 'New Request', '2021-12-02', '2022-06-30', 'Medium Priority', 'ahmad Bastian', 'Test Operasional', 'Ahmad Bastian', 'TSI', 'PNG'),
(23, 'Probllem CKPN Lebih Besar dari Baki Debet PSAK ', '1. Pelaksanaan Pengembangan dan IUT aplikasi untuk mengakomodir Change Request dari Problem Report Konversional dan Suariah\r\n   a Pembayran pokok Rekening Status Impair\r\n   b Pembayaran Bunga statuis Impair\r\n  c Pembayaran Pokok dan Bungan ( tidak bernilai Minus )\r\n2. Dokumen BRD dan Objek Aplikasi ', 'JNADHT   289/TSI/4.2/M/2021', 'Change Request', '2022-02-03', '2022-02-14', 'Medium Priority', 'Fajri ', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(24, 'PEncarian Nama Pada Menu Aplikasi FLPP dan Validasi Pencairan Kredit Konve dan Syariah Kondisi Calon', '1. Telah dilakukan Penambahan Validasi LACPK dan NACPK DIMANA Status Calon Y\r\n2. Status 10 Debitur Kontrok Baru dilakukan Perubahan Pencarian Nama hanya berdasarkan nama yang diiput Oleh user tanpa menlihat status dari debitur', 'FJEZAX   255/TSI/4.2/M/2021', 'Change Request', '2022-02-09', '2022-02-21', 'Medium Priority', 'Albert', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(26, 'Problem Report Transaksi Transfer BCA Digital', 'Nomor : 298/TSI/4.2/M/2022\r\nTanggal : 31 Januari 2022\r\nPerihal : Permintaan Pelaksanaan SIT Problem Report Transaksi Transfer BCA Digital', '298/TSI/4.2/M/2022', 'Problem Report', '2022-01-31', '0000-00-00', 'Medium Priority', 'Tim PASI', 'Selesai', 'Admin Pengembangan', 'TSI', 'PNG'),
(27, 'Problem Report Spool BRB4601 Nominal Jasa Giro Kosong dan Plan 30, 31 dan 32 tidak ada di Spool BRB4', 'Spool Jasa Giro BRB4601 Terkait pembebanan bunga akhir bulan', '2666/TSI/4.2/M/2021 16 Nov 2021 13:45', 'Problem Report', '2021-11-16', '2022-02-07', 'Low Priority', 'Fajri', 'Selesai', 'Administrator', 'TSI', 'PNG'),
(28, 'Problem Report Bugs Rekening Minus saat Pembuatan Rekening Secara counter By System', 'Problem Counter By System sbb\r\n1. Terdapat 2 yang sama dengan nama yang berbeda dengan nama yang berbeda\r\n2. Rekening yang bertanda minus disebabkan oleh user input kode plan dengan cara  \r\n     manual.', '003 /TSI/4.2/M/2022', 'Change Request', '2022-02-03', '2022-02-28', 'Medium Priority', 'Albert', 'Selesai', 'Username', 'TSI', 'PNG'),
(29, 'Penyampai Problem Pemeliharaan sistem Menu Uji dini Aplikasi FLPP', 'Memo 2232 Tangggal 30 September Penyampai problem pemeliharaan menu uji dini \r\nmemo 2369  tanggal       Oktober 2021 Konfimasi penyampaian problem pemeliharaab menu uji dini FLPP\r\n', '287/TSI/4.2/M/2022 Menu uji dini Aplikasi FLPP', 'Change Request', '2022-02-08', '2021-12-20', 'Medium Priority', 'Albert', 'Selesai', 'Username', 'TSI', 'PNG'),
(30, 'Project Pembayaran ZISWAF', 'Fitur Baru di Mobile Banking Bank Sumsel Babel untuk pembayaran Zakat, Infaq/Sedekah dan Wakaf Ke badan organisasi Penerima ZISWAF', '2440/TSI/4.2/M/2021', 'New Request', '2021-10-27', '2021-11-30', 'High Priority', 'Handika Saputra', 'Selesai', 'Handika Syaputra', 'TSI', 'PNG'),
(31, 'Transaksi Tanpa Kartu ( Cardless Withdrawal )', 'Fitur baru untuk setor dan tarik tunai pada channel Mobile Banking dan Mesin ATM Bank Sumsel Babel.', '224/TSI/4.2/M/2022', 'New Request', '2022-02-14', '2022-06-30', 'High Priority', 'Handika , Hidayat', 'Selesai', 'Handika Syaputra', 'TSI', 'PNG'),
(32, 'Problem Report Bugs Rekening Minus saat Pembuatan Rekening secara Counter By system', 'Rekening Minus saat Pembuatan Rekening secara Counter By system', '003 /TSI/4.2/M/2022', 'Problem Report', '2022-01-03', '2022-02-25', 'Medium Priority', 'Albert', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(33, 'Pengembangan Aplikasi Database Perjanjian Kerjasama dan MoU', 'Memo No 557/TSI/4.2/M/2021\r\nTanggal 07 Maret 2022\r\n\r\nDalam tahap UAT dan masih terdapat beberapa perbaikan, dan akan ditargetnya bulan 11 dapat di testing dengan User', 'AYAITK', 'New Request', '2022-03-07', '2022-11-30', 'Low Priority', 'Hidayat', 'UAT', 'Admin Pengembangan', 'TSI', 'PNG'),
(34, 'Aplikasi Simda Online Channel CIB', 'Memo No 521/TSI/4.2/M/2021\r\nTanggal 25 Pebruari 2022\r\n\r\nTelah dilakukan SIT tanggal 17 s.d 21 Oktober 2022 di Multipolar, dan masih ada perbaikan.\r\nDijadwalkan tanggal 26 Oktober 2022 untuk proses UAT di MPLT dengan pihak Pemda dan PGK.', 'XHSNGJ', 'New Request', '2022-03-01', '2022-11-30', 'High Priority', 'Hidayat', 'UAT', 'Admin Pengembangan', 'TSI', 'PNG'),
(35, 'Permintaan SIT Change Request\r\nPerubahan Pengisian Kode\r\nRisiko Nasabah Bank Vision', 'Perubahan Pengisian Kode Risiko Nasabah Bank Visiom ', '576/TSI/4.2/M/2022', 'Change Request', '2022-03-06', '2022-07-31', 'Medium Priority', 'albert', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(36, 'Pengembangan Aplikasi\r\nInterface Pelaporan Informasi\r\nKeuangan Divisi PKA', 'aplikasi interface pelaporan infomasi keuangan divisi PKA', '578/TSI/4.2/M/2021', 'New Request', '2022-03-06', '2021-10-31', 'Medium Priority', 'Albert', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(37, 'SIT Perbaiakan Pembuatan\r\nRekening Auto by System', 'Perbaikan Pembuatan Rekening Auto By system', '579/TSI/4.2/M/2021', 'Problem Report', '2022-03-06', '2022-03-31', 'Medium Priority', 'Albert', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(38, 'Problem Maintenance Rekening\r\nKelola dan Operasi untuk\r\nTransaksi Pengembalian Dana\r\ndan Tarif FLPP', 'Maintenance Rekening Kelola dan Operasi untuk transaksi Pengembalian dan tarif FLPP', '580/TSI/4.2/M/2022', 'Change Request', '2022-03-06', '2022-03-31', 'Medium Priority', 'Albert', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(41, 'Permintaan SIT Change Request Spool Office Channe', 'DocID\r\nAMIFVE\r\nNOMOR\r\n496/TSI/4.2/M/2022\r\nPERIHAL\r\nPermintaan SIT Change Request Spool Office Channeling Syariah\r\nTANGGAL\r\n23 Pebruari 2022', '.', 'Change Request', '0000-00-00', '0000-00-00', 'Medium Priority', 'Solahul Fajri', 'Selesai', 'Umar Holik', 'TSI', 'PNG'),
(42, 'Permintaan SIT Perbaikan VLINK CIF MB', 'DocID\r\nSJZXJG\r\nNOMOR\r\n2670/TSI/4.2/M/2021\r\nPERIHAL\r\nPermintaan SIT Perbaikan VLINK CIF MB\r\nTANGGAL\r\n16 November 2021', 'SJZXJG', 'Problem Report', '0000-11-30', '0000-00-00', 'Low Priority', '-', 'Koordinasi', 'Umar Holik', 'TSI', 'PNG'),
(43, 'Bugs Cetak PK KSG Efektif', 'DocID\r\nTHUXJB\r\nNOMOR\r\n649/TSI/4.2/M/2022\r\nPERIHAL\r\nBugs Cetak PK KSG Efektif\r\nTANGGAL\r\n14 Maret 2022', 'THUXJB', 'Problem Report', '0000-00-00', '0000-11-30', 'Low Priority', 'Albert  Ivando', 'Selesai', 'Umar Holik', 'TSI', 'PNG'),
(44, 'Gagal Registrasi pada Menu SIKASEP akibat Kesalahan Pemilihan antara Kode Bank Konvensional (120) da', 'DocID\r\nPFZEBO\r\nNOMOR\r\n682/TSI/4.2/M/2022\r\nPERIHAL\r\nGagal Registrasi pada Menu SIKASEP akibat Kesalahan Pemilihan antara Kode Bank Konvensional (120) dan Syariah (192)\r\nTANGGAL\r\n16 Maret 2022', 'PFZEBO', 'Change Request', '0000-00-00', '0000-00-00', 'Low Priority', 'Albert', 'Selesai', 'Umar Holik', 'TSI', 'PNG'),
(46, 'Tidak Terbebannya Bagi Hasil PRK dan Penyesuaian Program Inquiry Data Rekening PRK Kolek 3, 4 dan 5', 'DocID\r\nMIDHQI\r\nNOMOR\r\n753/TSI/4.2/M/2022\r\nPERIHAL\r\nTidak Terbebannya Bagi Hasil PRK dan Penyesuaian Program Inquiry Data Rekening PRK Kolek 3, 4 dan 5\r\nTANGGAL\r\n24 Maret 2022', ' MIDHQI', 'Problem Report', '2022-05-12', '2022-07-31', 'Medium Priority', 'Solahul Fajri', 'Selesai', 'Umar Holik', 'TSI', 'PNG'),
(47, 'Bugs Bagi Hasil Deposito Syariah Jatuh Tempo di Awal Bulan pada Awal Tahun Tidak Sesuai', 'DocID\r\nJRVZOH\r\nNOMOR\r\n754/TSI/4.2/M/2022\r\nPERIHAL\r\nBugs Bagi Hasil Deposito Syariah Jatuh Tempo di Awal Bulan pada Awal Tahun Tidak Sesuai', 'JRVZOH', 'Problem Report', '0000-00-00', '0000-00-00', 'Medium Priority', 'Solahul Fajri', 'Belum', 'Umar Holik', 'TSI', 'PNG'),
(48, 'System Integration Testing (SIT) Problem Report CMS Siskeudes Jam EOD di CIB Bank Sumsel Babel', 'DocID\r\nPBPVZG\r\nNOMOR\r\n845/TSI/4.2/M/2022\r\nPERIHAL\r\nPermintaan Pelaksanaan System Integration Testing (SIT) Problem Report CMS Siskeudes Jam EOD di CIB Bank Sumsel Babel\r\nTANGGAL\r\n05 April 2022', 'PBPVZG', 'Change Request', '2022-04-08', '2022-06-30', 'Medium Priority', 'Hidayat', 'Selesai', 'Umar Holik', 'TSI', 'PNG'),
(49, 'Change Request Cetak Laporan Account Officer Cabang dan Capem Pada User Pemimpin Cabang Konvensional', 'diperlukan perubahan aplikasi dalam melakuakn pencetakan aporan accont Officer.', '923/TSI/4.2/M/2022', 'Problem Report', '2022-04-11', '2022-07-31', 'Medium Priority', 'Fajri', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(50, 'Permasalahan Penjumlahan Angsuran SIKP Syariah dan Konvensional di Hari Berbeda', 'DocID\r\nOUDHXG\r\nNOMOR\r\n1007/TSI/4.2/M/2022\r\nPERIHAL\r\nPermasalahan Penjumlahan Angsuran SIKP Syariah dan Konvensional di Hari Berbeda\r\nTANGGAL\r\n25 April 2022', 'OUDHXG', 'Problem Report', '0000-00-00', '0000-00-00', 'Medium Priority', 'Albert', 'Selesai', 'Umar Holik', 'TSI', 'PNG'),
(51, 'Pembayaran PBB Kabupaten Musi Rawas', 'Penambahan Aplikasi Pembayaran PBB Kabupaten Musi Rawas', 'FXQQWI', 'Change Request', '2022-04-18', '2022-05-10', 'Medium Priority', 'Hidayat', 'Selesai', 'Admin Pengembangan', 'TSI', 'PNG'),
(52, 'Pembayaran 9 Pajak Daerah Kabupaten Oku Timur', 'Penambahan Pembayaran 9 Pajak Daerah Kabupaten Oku Timur melaui PT MBA', 'XXRXAO', 'Change Request', '2022-04-18', '2022-05-10', 'Medium Priority', 'Hidayat', 'Selesai', 'Admin Pengembangan', 'TSI', 'PNG'),
(53, 'CR Aplikasi Mahasiswa UIN Raden Fatah', 'Perubahan Message Aplikasi Dari ISO ke JSON\r\nMigrasi (TO)', '-', 'Change Request', '2022-05-01', '2022-07-07', 'High Priority', 'Tim Percepatan', 'Selesai', 'Admin Pengembangan', 'TSI', 'PNG'),
(54, 'SIT Perbaikan Pilihan Cetak Resi ATM EMV', 'Bugs Fitur Cetak Resi ATM EMV000100K.\r\n1. Tarik Tunai Cepat : Resi keluar sebelum menu pilihan resi.\r\n2. Tarik Tunai Lainnya : Resi keluar sebelum menu pilihan cetak resi.', 'IIDDTQ', 'Problem Report', '2022-05-10', '2022-08-10', 'Medium Priority', 'Hidayat, Handika', 'SIT', 'Admin Pengembangan', 'TSI', 'PNG'),
(55, 'Permintaan SIT Perbaikan Bug Resi Transaksi Pembayaran Telkom Channel Teller', 'Memo Nomor : 1154/TSI/4.2/M/2022\r\nTanggal 19 Mei 2022', 'EYMNNH', 'Problem Report', '2022-05-19', '2022-07-31', 'Medium Priority', 'Hidayat, Handika', 'Selesai', 'Admin Pengembangan', 'TSI', 'PNG'),
(56, 'Permintaan Pelaksanaan System Integration Test (SIT) Problem Report CMS Siskeudes di CIB Bank Sumsel', 'Memo Intern nomor : 1206/TSI/4.2/M/2022\r\nTanggal : 2 Juni 2022\r\n\r\nSIT Mulai Tanggal 26 Oktober 2022 (Koneksi BSB - MPC) Down', 'LPNIIJ', 'Problem Report', '2022-06-03', '2022-12-31', 'Medium Priority', 'Hidayat', 'SIT', 'Admin Pengembangan', 'TSI', 'PNG'),
(57, 'Aplikasi Non Aktif Transaksi Kartu Magnetic Stripe', 'Menindaklajuti Rapat pembahasan adanya indikasi vandalisme pada mesin ATM tanggal 6 Juni 2022', 'SMHZSW', 'Change Request', '2022-06-06', '2022-06-25', 'High Priority', 'Hidayat', 'Selesai', 'Admin Pengembangan', 'TSI', 'PNG'),
(58, 'Penyempurnan aplikasi digital Loand( BSBPRO)', 'Hasul UAT Operasioa aplikasi digiloand yang dilaksana 30 juli 2022, masih terdapat kendala sehingga pencairan kredit secara tersentralisasi tida dapat diproses samapi dengan disburmet,', '55/WG.SK/1/M/2022', 'Change Request', '2022-07-06', '2022-12-30', 'Medium Priority', 'ahmad bastian', 'UAT', 'Ahmad Bastian', 'TSI', 'PNG'),
(59, 'Aplikasi BI Fast Fase 1', 'Pengembangan Aplikasi BI-Fast Fase 1 (RIB dan Teller)\r\nLaunching 29 Agustus 2022', '-', 'New Request', '2022-07-01', '2022-08-30', 'High Priority', 'Hidayat', 'Selesai', 'Admin Pengembangan', 'TSI', 'PNG'),
(60, 'Pemintaan SIT Aplikasi PSAK73', 'Permintaan Pelaksanaan SIT Aplikasi PSAK 73', '1802/ TSI/4.1/M/2022', 'New Request', '2022-07-29', '2022-08-31', 'Medium Priority', 'Albert', 'SIT', 'Ahmad Bastian', 'TSI', 'PNG'),
(61, 'Sistim otomasi Penetapan akad Musyarakat  pembiaya denda akad Musyarakah', 'Permintaan SIT Otomatisasi Kolektibilitas Pembiayaan dengan Akad Musyarakah', '1839/TSI/4.2/M/2022', 'New Request', '2022-08-29', '2022-08-31', 'Medium Priority', 'Albert', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(62, 'Permintaan Pengisian Laporan Evaluasi Data Kependudukan', 'Permintaan Pengisian Laporan Evaluasi Data Kependudukan', '1836/TSI/4.2/M/2022', 'New Request', '2022-08-29', '2022-08-31', 'Medium Priority', 'Albert', 'Koordinasi', 'Ahmad Bastian', 'TSI', 'PNG'),
(63, 'Perubahan Spool DPRORP', 'Perubahan Spool DPRORP', ' ', 'Change Request', '2022-08-05', '2022-08-05', '', 'Albert Ivando', 'Selesai', 'Albert Ivando', 'TSI', 'PNG'),
(64, 'Penyampaian permintaan Perubahan Field Segmen F01 Pelaporan Slik Syariah', 'Perubahan field segmen F01 Syariah', 'HDHSCA', 'Change Request', '2022-07-25', '2022-08-02', 'Medium Priority', 'Andy', 'UAT', 'Andy Syaputra', 'TSI', 'PNG'),
(65, 'Pembutan Saldistadt loan 1 Bulan Menjelangan jatuh tempo', 'Pembutan Saldistadt loan 1 Bulan Menjelangan jatuh tempo', '1491/TSI/4.2/M/2022', 'Problem Report', '2022-08-01', '2021-08-31', 'Medium Priority', 'Albert', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(66, 'CR Perubahan Kode Risiko Nasabah Bank Vision', 'CR Perubahan Kode Risiko Nasabah Bank Vision', '923/TSI/4.2/M/2022', 'New Request', '2022-08-01', '2022-08-31', 'Medium Priority', 'Albert', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(67, 'Virtual Account PT. LOKO ( VA PGRI )', 'Virtual Account Pembayaran Tagihan Mahasiswa PGRI Melalui Channel IBFT, Bekerja sama dengan PT. LOKO', '-', 'New Request', '2022-08-01', '2022-09-30', 'High Priority', 'Handika Saputra', 'UAT', 'Handika Syaputra', 'TSI', 'PNG'),
(68, 'Virutal Account KAI ( Delivery Order )', 'Pembayaran Virtual Account PT. KAI untuk keperluan Delivery Order Melalui Channel Internet Banking Bank Sumsel Babel', '-', 'New Request', '2022-08-01', '2022-09-30', 'High Priority', 'Handika Saputra', 'UAT', 'Handika Syaputra', 'TSI', 'PNG'),
(69, 'SIT SAMSAT Mitracomm (Modern Channel)', 'Berdasarkan konfirmasi via WA tanggal 7-11-2011', 'Doc', 'New Request', '2022-11-07', '2022-11-11', 'High Priority', 'Hidayat', 'SIT', 'Admin Pengembangan', 'TSI', 'PNG'),
(70, 'Support Visa GTAQ BER Oktober 2022', 'BER 2022 dari Tim Percepatan', 'Doc', 'Change Request', '2022-10-01', '2023-10-31', 'Medium Priority', 'Hidayat', 'Pending', 'Admin Pengembangan', 'TSI', 'PNG'),
(71, 'Upgrade ATM Bersama', 'Tim Percepatan', 'Doc', 'Change Request', '2022-10-01', '2022-11-30', 'Medium Priority', 'Hidayat', 'Selesai', 'Admin Pengembangan', 'TSI', 'PNG'),
(72, 'Kerjasama BSB dengan UKMC (Universitas Katolik Musi Charitas) Palembang', 'Pembahasan mengenai host to host dan VA BSB untuk pembayaran mahasiswa UKMC menggunakan VA', 'Tim Digital', 'New Request', '2022-11-22', '2022-11-22', 'Medium Priority', 'Tim Digital / Handika Saputra', 'Koordinasi', 'Handika Syaputra', 'TSI', 'PNG'),
(73, 'Mobile Banking Phase 2 Iterasi 3', 'SIT fitur Mobile Banking Phase 2 Iterasi 3 yang Meliputi :\r\n1. Registrasi Online\r\n2. Transfer Terjadwal\r\n3. Inbox Riwayat Transaksi iOS\r\n4. Menu Favorit Pembayaran dan Pembelian yang Berulang (non-One time transaction)\r\n5. Fitur Filter Rekening Tujuan pada Transaksi Transfer Onus dan IBFT', '2878/TSI/4.2/M/2022', 'New Request', '2022-11-14', '2022-11-25', 'High Priority', 'Handika Saputra', 'SIT', 'Handika Syaputra', 'TSI', 'PNG'),
(74, 'VA V-TAX', 'Kerjasama pembayaran VA 9 Pajak + BPHTB MBA dengan Bank Sumsel Babel', 'Tim Digital', 'New Request', '2022-11-01', '2022-12-31', 'Medium Priority', 'Handika Saputra', 'Pembuatan Aplikasi', 'Handika Syaputra', 'TSI', 'PNG'),
(75, 'Aplikasi CTAS ( Core Tax Application System )', 'Project dari Dirjen Pajak, dalam tahap koordinasi dengan PGK', '656/BKI/2/M/2022', 'New Request', '2023-01-01', '2023-10-31', 'Medium Priority', 'Handika Saputra', 'Koordinasi', 'Handika Syaputra', 'TSI', 'PNG'),
(76, 'Verifikasi SNAP BI BSB', 'Proses Pengajuan Perizinan penggunaan Standar Nasional Open Api Pembayaran untuk Bank Sumsel Babel', 'Tim Digital', 'New Request', '2022-06-01', '2022-12-31', 'High Priority', 'Handika Saputra', 'Dalam Proses', 'Handika Syaputra', 'TSI', 'PNG'),
(77, 'Portal VA BSB', 'Aplikasi Management VA untuk Mitra dan BSB', 'Tim Digital', 'New Request', '2022-06-01', '2022-12-31', 'High Priority', 'Handika Saputra', 'SIT', 'Handika Syaputra', 'TSI', 'PNG');

-- --------------------------------------------------------

--
-- Table structure for table `perjanjian`
--

CREATE TABLE `perjanjian` (
  `id` int(100) NOT NULL,
  `nomor` varchar(100) NOT NULL,
  `uraian` varchar(5000) NOT NULL,
  `mulai` date NOT NULL,
  `target` date NOT NULL,
  `tanggal_terima` date NOT NULL,
  `prioritas` varchar(50) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `bagian` varchar(50) NOT NULL,
  `file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `level` enum('admin','admin1','user','user1') NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `bagian` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `foto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fullname`, `level`, `divisi`, `bagian`, `jenis_kelamin`, `foto`) VALUES
(1, 'admin', '81fccaf9f00a8441b77b18fa2c8010f4', 'Administrator', 'admin', 'TSI', 'TSI', 'Perempuan', 'admin.png'),
(2, 'user', 'a13e7d4df150d90e60853f87d5abe94b', 'Username', 'user', 'TSI', 'TSI', 'Laki Laki', 'user.png'),
(3, 'admin1', 'e00cf25ad42683b3df678c61f42c6bda', 'Administrator1', 'admin1', 'TSI', 'PNG', 'Perempuan', 'admin.png'),
(4, 'user1', '24c9e15e52afc47c225b757e7bee1f9d', 'Username1', 'user1', 'TSI', 'PNG', 'Laki Laki', 'user.png'),
(5, 'dayat', '9efef95a35ea9a35555db2d59d27c356', 'M Hidayat Amin', 'user1', 'TSI', 'PNG', 'Laki Laki', 'user.png'),
(6, 'bastian', '5aaea65c794379b4984c0ec3477973ff', 'Ahmad Bastian', 'user1', 'TSI', 'PNG', 'Laki Laki', 'user.png'),
(7, 'adminpng', '195e895473de8cefed8a556f50183398', 'Admin Pengembangan', 'admin1', 'TSI', 'PNG', 'Perempuan', 'admin.png'),
(8, 'holik', 'ba2d1f6e8caa02745ad41b4e20f2b0e9', 'Umar Holik', 'admin1', 'TSI', 'PNG', 'Laki Laki', 'user.png'),
(9, 'herri', '6dfd949129d1519bff0d6bdce3765b72', 'Herri Gustian Rozie', 'user1', 'TSI', 'PNG', 'Laki Laki', 'user.png'),
(10, 'andy', '5faf054ddd814cbfd32f0c6a93df0aa7', 'Andy Syaputra', 'user1', 'TSI', 'PNG', 'Laki Laki', 'user.png'),
(11, 'albert', '5fb5f1dfae4b423c8b9048b3e8979182', 'Albert Ivando', 'user1', 'TSI', 'PNG', 'Laki Laki', 'user.png'),
(12, 'dika', '61363819a22cc52946c627001b0819dd', 'Handika Syaputra', 'user1', 'TSI', 'PNG', 'Laki Laki', 'user.png'),
(13, 'fajri', 'a9a8c5cf1e42a8b3ca75d4cfea077318', 'Sholahul Fajri', 'user1', 'TSI', 'PNG', 'Laki Laki', 'user.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catatan`
--
ALTER TABLE `catatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_pekerjaan`
--
ALTER TABLE `detail_pekerjaan`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_pekerjaan` (`id_pekerjaan`);

--
-- Indexes for table `notulen`
--
ALTER TABLE `notulen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`);

--
-- Indexes for table `perjanjian`
--
ALTER TABLE `perjanjian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catatan`
--
ALTER TABLE `catatan`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail_pekerjaan`
--
ALTER TABLE `detail_pekerjaan`
  MODIFY `id_detail` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `notulen`
--
ALTER TABLE `notulen`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  MODIFY `id_pekerjaan` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `perjanjian`
--
ALTER TABLE `perjanjian`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_pekerjaan`
--
ALTER TABLE `detail_pekerjaan`
  ADD CONSTRAINT `detail_pekerjaan_ibfk_1` FOREIGN KEY (`id_pekerjaan`) REFERENCES `pekerjaan` (`id_pekerjaan`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `sias-tsi2023`
--
CREATE DATABASE IF NOT EXISTS `sias-tsi2023` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sias-tsi2023`;

-- --------------------------------------------------------

--
-- Table structure for table `catatan`
--

CREATE TABLE `catatan` (
  `id` int(100) NOT NULL,
  `perihal` varchar(1000) NOT NULL,
  `uraian` varchar(5000) NOT NULL,
  `target` date NOT NULL,
  `tanggal_terima` date NOT NULL,
  `prioritas` varchar(50) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `bagian` varchar(50) NOT NULL,
  `file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catatan`
--

INSERT INTO `catatan` (`id`, `perihal`, `uraian`, `target`, `tanggal_terima`, `prioritas`, `pic`, `status`, `user`, `divisi`, `bagian`, `file`) VALUES
(1, 'IST versi 16', ' hasil meeting dengan tim MLPT terkait patching IST Backup', '2023-02-28', '2023-02-28', 'Penting', 'hidayat', 'Dalam Proses', 'Ahmad Bastian', 'TSI', 'PNG', 'ist versoin 16.txt'),
(2, 'Aplikasi Mobile Banking', 'Pengembangan Aplikasi Mobile Banking', '2023-03-01', '2023-03-01', 'Biasa', 'hidayat', 'Dalam Proses', 'Ahmad Bastian', 'TSI', 'PNG', 'aplikasi Mobile Bangking.txt'),
(3, 'Aplikasi BSBLokak', 'Catatan Aplikasi BSBLokak', '2023-03-01', '2023-03-01', 'Biasa', 'Fajri', 'Dalam Proses', 'Ahmad Bastian', 'TSI', 'PNG', 'Catatan DMS.docx'),
(4, 'PDAM Belitung TIMUR Kerja sama pembayran host top host', 'PDAM Belitung Timur terkait kerjasama pembayaran host to host dengan Bank Sumsel Babel:\r\n\r\n1. PDAM Belitung timur saat ini telah memiliki sistem sendiri yang merupakan kerjasama dengan PDAM Padang Sumatera Barat dan berada di cloud.\r\n2. Untuk pembayaran billing PDAM, menggunakan aplikasi switching vendor yaitu CV. Ratu Jaya.\r\n3. Saat ini Untuk pembayaran telah dapat dilakukan di kantor pos, dimana kantor pos melakukan koneksi dengan CV. Ratu Jaya.\r\n4. Terkait kerjasama dengan Bank Sumsel, menunggu keputusan pihak PDAM, apakah melalui CV. Ratu Jaya atau Langsung ke sistem PDAM yang akan mereka develop sendiri.', '2023-04-10', '2023-03-29', 'Biasa', 'Andy Syahputra', 'Perencanaan', 'Ahmad Bastian', 'TSI', 'PNG', 'PDAM Belitung timur.txt'),
(5, 'Penyampaian Notula Rapat Ketidaksesuaian Parameter Discount Factor Pada Kredit Plan 88', '896/TSI/4.2/M/2023', '2023-04-06', '2023-04-06', 'Biasa', 'fajri', 'Belum', 'Ahmad Bastian', 'TSI', 'PNG', 'suratkeluar_33228_lampiran-notula-rapat-pdf.pdf'),
(6, 'KKPD Bank Papua ke Bank SUmsel Babel', 'KKPD', '2023-04-18', '2023-04-18', 'Biasa', 'DIKA', 'Dalam Proses', 'Ahmad Bastian', 'TSI', 'PNG', 'Bank papua telah melakukan pengembangan dan proses');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pekerjaan`
--

CREATE TABLE `detail_pekerjaan` (
  `id_detail` int(100) NOT NULL,
  `id_pekerjaan` int(100) NOT NULL,
  `tahapan` varchar(5000) NOT NULL,
  `input` varchar(5000) NOT NULL,
  `output` varchar(5000) NOT NULL,
  `pic` varchar(50) NOT NULL,
  `mulai` date NOT NULL,
  `target` date NOT NULL,
  `prioritas` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `bagian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_pekerjaan`
--

INSERT INTO `detail_pekerjaan` (`id_detail`, `id_pekerjaan`, `tahapan`, `input`, `output`, `pic`, `mulai`, `target`, `prioritas`, `status`, `user`, `divisi`, `bagian`) VALUES
(1, 1, 'Proses IUT', 'Testing Berdasarkan Script Visa Tgl 04 Januari 2023 via Gmeet Pukul 09-00 s.d 11.00', 'Masih diperlukan penyesuaian dan dilanjutkan kembali', 'Hidayat', '2022-01-04', '2023-01-16', 'Medium Priority', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(2, 1, 'Proses IUT', 'Testing Berdasarkan Script Visa Tgl 11 Januari 2023 via Gmeet Pukul 09-00 s.d 11.00', 'Masih diperlukan penyesuaian dan dilanjutkan kembali', 'Hidayat', '2023-01-11', '2023-01-20', 'Medium Priority', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(3, 1, 'Proses IUT', 'Testing Berdasarkan Script Visa Tgl 16 Januari 2023 via Gmeet Pukul 14-00 s.d 16.00', 'Melanjutkan Testing Online', 'Hidayat', '2023-01-18', '2023-01-31', 'Medium Priority', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(4, 19, 'Dokumentasi SIT', 'Pembuataan dokumen skenario SIT', 'Terdapat 17 Skenario SIT', 'Fajri', '2023-02-28', '2023-02-28', 'High Priority', 'Selesai', 'Sholahul Fajri', 'TSI', 'PNG'),
(5, 19, 'Proses SIT', 'Capture Skenario SIT', 'Capture 17 Skenario SIT', 'Fajri', '2023-02-28', '2023-03-03', 'Low Priority', 'Selesai', 'Sholahul Fajri', 'TSI', 'PNG'),
(6, 8, 'Dokumentasi SIT', 'Pembuatan Dokumen Skenario SIT', 'Terdapat 48 Skenario', 'Fajri', '2023-02-20', '2023-02-22', 'Low Priority', 'Selesai', 'Sholahul Fajri', 'TSI', 'PNG'),
(7, 8, 'Dokumentasi SIT', 'Capture Dokumen SIT', 'Capture 48 Skenario', 'Fajri', '2023-03-06', '2023-03-17', 'Medium Priority', 'Selesai', 'Sholahul Fajri', 'TSI', 'PNG'),
(8, 2, 'Proses UAT', 'UAT SIPD dengan Pemda MRE', 'UAT Tahap Pertama 16 Februari 2023', 'Hidayat', '2023-02-16', '2023-02-28', 'Medium Priority', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(9, 2, 'Dokumentasi UAT', 'UAT SIPD dengan Pemda MRE', 'UAT Tahap Dua 17 Februari 2023', 'Hidayat', '2023-02-17', '2023-02-28', 'Medium Priority', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(10, 2, 'Proses UAT', 'UAT SIPD dengan Pemda MRE', 'UAT Tahap Lanjutan 21 Februari 2023', 'Hidayat', '2023-02-21', '2023-02-28', 'Medium Priority', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(11, 4, 'Proses Migrasi', 'Migrasi', 'Migrasi Tanggal 08 Februari 2023', 'Hidayat', '2023-02-08', '2023-02-28', 'High Priority', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(12, 22, 'Pembuatan Aplikasi', 'Meeting Koordinasi Tangggal 28/02/2023', 'Akan disampaikan dokumentasi perubahan oleh MLPT besok pada tanggal 1 Maret 2023', 'Hidayat', '2023-02-28', '2023-02-28', 'High Priority', 'Selesai', 'Admin Pengembangan', 'TSI', 'PNG'),
(13, 23, 'Memo Permintaan Migrasi', 'Sudah Selesai di UAT dan SIT dan sedang proses permintaan Opini MER dan KPN untuk Persiapan Migrasi', 'Migrasi Berhasil dan Siap Test Operasional', 'handika', '2023-03-01', '2023-03-31', 'High Priority', 'Dalam Proses', 'Handika Syaputra', 'TSI', 'PNG'),
(14, 24, 'Pembuatan Aplikasi', 'Pihak SEVIMA sedang dalam proses pengembangan API berbasis SNAP untuk di hit ke BSB. apabila sudah done maka proses testing dan integrasi baru bisa dilakukan', 'Pengembangan di sisi SEVIMA selesai dan siap integrasi untuk SIT.', 'Handika', '2023-01-01', '2023-06-30', 'Medium Priority', 'Dalam Proses', 'Handika Syaputra', 'TSI', 'PNG'),
(15, 25, 'Dokumen Change Request', 'Sedang koordinasi dan diskusi mengenai Spesifikasi dan pengembangan', 'Spek yg disetujui', 'handika', '2023-02-28', '2024-12-31', 'Low Priority', 'Belum', 'Handika Syaputra', 'TSI', 'PNG'),
(16, 26, 'Pembuatan Aplikasi', 'Sedang Dalam Pengembangan', 'Program Siap untuk Testing', 'Andy, Handika', '2023-03-01', '2023-03-31', 'High Priority', 'Selesai', 'Handika Syaputra', 'TSI', 'PNG'),
(17, 27, 'Pembuatan Aplikasi', 'Klasifikasi sudah dibuat dan sudah muncul di dokumen, tapi ada bug pada saat upload dokumen pada library upload dokumen.', 'fixing bug', 'handika', '2023-02-27', '2023-03-03', 'High Priority', 'Dalam Proses', 'Handika Syaputra', 'TSI', 'PNG'),
(18, 28, 'Dokumen BRD', 'Sedang dalam Proses Perencanaan Pengembangan Aplikasi', 'Dokumen BRD dan FSD', 'Handika', '2023-02-01', '2023-08-31', 'Medium Priority', 'Dalam Proses', 'Handika Syaputra', 'TSI', 'PNG'),
(19, 29, 'Dokumen BRD', 'Sedang dalam Proses Perencanaan Pengembangan Aplikasi', 'Dokumen BRD dan FSD', 'Handika', '2023-02-01', '2023-08-31', 'Medium Priority', 'Perencanaan', 'Handika Syaputra', 'TSI', 'PNG'),
(20, 30, 'Dokumen Change Request', 'Sedang koordinasi untuk timeline dari mlpt', 'aplikasi bisa di tes', 'Handika', '2023-03-01', '2023-12-31', 'Medium Priority', 'Dalam Proses', 'Handika Syaputra', 'TSI', 'PNG'),
(22, 32, 'Sosialisasi', 'Support BSB ke UMP untuk Membangun API spek SNAp BI', 'SandBox BI OK dan siap develop', 'Handika', '2023-03-01', '2023-12-31', 'Medium Priority', 'Dalam Proses', 'Handika Syaputra', 'TSI', 'PNG'),
(23, 20, 'Sosialisasi', 'Rapat Internal terkait temuan Audit Bank Indonesia (BI) Tgl 28-02-2022', 'Membahas 45 poin temuan dari Bank Indonesia, untuk dipaparkan pada tanggal 1 Maret 2023 Pukul 08.00 WIB', 'Hidayat', '2023-02-28', '2023-02-28', 'High Priority', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(24, 22, 'Pembuatan Aplikasi', 'Telah disampaikan via email dari MLPT tanggal 1 Maret 2023 pukul 12.36 WIB', 'Telah diiterukan oleh Pembag Pengembangan ke Pemimpin Divisi TSI via email pukul 14.03 WIB\r\nSudah dibalas via email ke MLPT untuk memilih opsi 1 tanggal 24 Maret 2023 pukul 10.58 WIB', 'Hidayat', '2023-03-01', '2023-03-01', 'Medium Priority', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(25, 19, 'Proses SIT', 'Hasil SIT\r\n1.	Inquiry Web Menu sentra kredit tidak dapat membedakan data debitur topup dan new to bank\r\n2.    Tidak ada pembeda antara topup ksg asn aktif dan pensiun\r\n3.    Format penawaran SMS NTB tidak sesuai\r\n4.     Entryservice shut down, data belum keseluruhan diblast\r\n\r\nPermasalah SIT dan UAT di Tanggal 01 Maret 2023', ' 1. Akan di Perbaiki dari Sisi Tim DMS ', 'Fajri', '2023-03-02', '2023-03-07', 'Medium Priority', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(26, 34, 'Proses UAT', 'UAT dengan BPKP dan Pemda Palembang, Banyuasi, dan Musi Banyuasin', 'Telah selesai dilakukan UAT Pada tanggal 2 Maret 2023', 'Hidayat', '2023-03-02', '2023-03-02', 'Medium Priority', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(27, 19, 'Proses SIT', 'Menu sentra kredit tidak dapat membedakan data debitur topup dan new to \r\nTenor Jangka Waktu Pensiunan masih terdapat selisih \r\nAssignment Sentra Kredit -> di user Sentra  (jumat)\r\nSBDK di TOPUP dan NTB (jumat)\r\nData Pek\r\nTanggal Lahir Inquiry Status Aplikasi label (MM/DD/YYYY)  (jumat)\r\nJadwal angsuran tgl diubah tgl dari MM/DD/YYYY menjadi DD/MM/YYYY dan menghilangkan jam (jumat)\r\nJenis Asuransi saat ini di default ‘9’ saat masuk ke core (jumat)\r\nerjaan Masih kosong di PK NTB\r\nData Entry NTB yang harus mandatory\r\n\r\n', 'Tahapan SP3K-PK Memilih User PIC Sentra (Next CR)\r\nButton Download Jadwal Angsuran (Next CR\r\n', 'Fajri', '2023-03-03', '2023-03-03', 'Medium Priority', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(28, 34, 'Proses UAT', 'Lanjutan testing internal aplikasi FMIS Simda V4', 'Selesai', 'Hidayat', '2023-03-03', '2023-03-03', 'Medium Priority', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(29, 35, 'Test Operasional', 'Selesai Test Operasional, Tanggal 3 Maret 2023; PDAM, KAI, PBB, Hallo', 'Selesai', 'Hidayat', '2023-03-03', '2023-03-03', 'Medium Priority', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(30, 36, 'Sosialisasi', 'Koordinasi Persiapan Berangkat', '-', 'Hidayat', '2023-03-06', '2023-03-06', 'Medium Priority', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(31, 34, 'Proses UAT', 'Dokumentasi oleh tim PGK', 'Dokumentasi', 'Hidayat', '2023-03-03', '2023-03-31', 'Medium Priority', 'Dalam Proses', 'M Hidayat Amin', 'TSI', 'PNG'),
(32, 27, 'Proses UAT', 'sudah dilakukan SIT dan laporan SIT sudah di memokan per tanggal 7 maret 2023', 'laporan SIT done 7 maret 2023', 'Handika', '2023-03-01', '2023-03-07', 'High Priority', 'Selesai', 'Handika Syaputra', 'TSI', 'PNG'),
(33, 19, 'Dokumentasi Migrasi', 'Persiapan P4SA terhadap dokument BSBlokak', 'Persiapan P4SA terhadap dokument BSBlokak', 'fajri', '2023-03-08', '2023-03-10', 'Medium Priority', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(34, 26, 'Proses SIT', 'Program telah selesai dan siap untuk di SIT', 'SIT berhasil', 'Handika', '2023-03-13', '2023-03-24', 'High Priority', 'Selesai', 'Handika Syaputra', 'TSI', 'PNG'),
(35, 19, 'Dokumentasi SIT', 'Belum terdapat dokumentasi berita acara object dari Dari DMS', 'BA Object Migrasi', 'Fajri', '2023-03-10', '2023-03-10', 'Low Priority', 'Dalam Proses', 'Sholahul Fajri', 'TSI', 'PNG'),
(36, 41, 'Pembuatan Aplikasi', 'Perbaikan Object :\r\nNNPKMR01\r\nNNPKMB01\r\nNNPKMS01\r\nNNPKIN01\r\nNNPKMN01\r\nNNPKQW01\r\nNNPKMJ01\r\n', 'Perbaikan Object', 'Fajri', '2023-03-10', '2023-03-10', 'Medium Priority', 'Dalam Proses', 'Sholahul Fajri', 'TSI', 'PNG'),
(37, 41, 'Dokumentasi SIT', 'Dokumen P4SA', 'Dokumen P4SA', 'Fajri', '2023-03-10', '2023-03-10', 'Medium Priority', 'Dalam Proses', 'Sholahul Fajri', 'TSI', 'PNG'),
(38, 41, 'Memo Permintaan UAT', 'Pembuatan Memo UAT', 'Memo uat', 'Fajri', '2023-03-10', '2023-03-10', 'Low Priority', 'Dalam Proses', 'Sholahul Fajri', 'TSI', 'PNG'),
(39, 36, 'Dokumen FSD dan TSD', 'Penyususan FSD oleh Tim MSI', 'Proses Penyususan dokumentasi oleh Tim MSI', 'Hidayat', '2023-03-13', '2023-03-31', 'Medium Priority', 'Dalam Proses', 'M Hidayat Amin', 'TSI', 'PNG'),
(40, 36, 'Dokumen FSD dan TSD', 'Membuat konversi data recon Excel untuk Purchase dari Indomaret/Alfamat, menjadi .txt yang dapat dibaca oleh aplikasi e-purse.', 'Sedang dikoordinasikan dengan tim anabatic (Aris) mulai tanggal 13 Maret 2023', 'Hidayat', '2023-03-13', '2023-03-17', 'Medium Priority', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(41, 36, 'Persiapan Server dan Network', 'Persiapan Server Development Rec7', 'Email konfirmasi ke tim ITI untuk kesiapan server 13 Maret 2023', 'Hidayat', '2023-03-20', '2023-03-24', 'Medium Priority', 'Dalam Proses', 'M Hidayat Amin', 'TSI', 'PNG'),
(42, 43, 'Persiapan Server dan Network', 'Persiapan Envirotment Development', 'Servert SMS Banking Development 172.17.115.9', 'Hidayat', '2023-03-27', '2023-03-31', 'Medium Priority', 'Dalam Proses', 'M Hidayat Amin', 'TSI', 'PNG'),
(43, 43, 'Proses SIT', 'Proses Testing Online dengan Mitracomm / Tsel', 'Testing dibantu oleh Silvi (PGK)', 'Hidayat', '2023-03-28', '2023-03-31', 'Medium Priority', 'Dalam Proses', 'M Hidayat Amin', 'TSI', 'PNG'),
(44, 22, 'Pembuatan Aplikasi', 'Persiapan Objek Development', 'Persiapan Objek 21 s.d 27 Maret 2023', 'Hidayat', '2023-03-21', '2023-03-27', 'High Priority', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(45, 22, 'Pembuatan Aplikasi', 'Instalasi Objek SP 16 dan Test Run SP 16', 'Running aplikasi mulai tanggal 27 s.d 29 Maret 2023', 'Hidayat', '2023-03-27', '2023-03-29', 'High Priority', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(46, 22, 'Proses SIT', 'Regresi Sample Fitur di Mesin Development SP16', 'Testing Regresi mulai tanggal 30 Maret s.d 12 April 2023\r\nPerubahan timeline menjadi 17 April 2023', 'Hidayat', '2023-03-30', '2023-04-17', 'High Priority', 'Dalam Proses', 'M Hidayat Amin', 'TSI', 'PNG'),
(47, 22, 'Dokumentasi Migrasi', 'Persiapan Objek Fulll SP16 untuk mesin Production', 'Mulai tanggal 12 s.d 14 April 2023\r\nPerubahan timeline menjadi 26 April 2023', 'Hidayat', '2023-04-12', '2023-04-26', 'High Priority', 'Dalam Proses', 'M Hidayat Amin', 'TSI', 'PNG'),
(48, 22, 'Proses Migrasi', 'Migrasi dan Go Live SP16 ke Production', 'Mulai tanggal 14 s.d 17 April 2023\r\nPerubahan timeline menjadi 02 Mei 203', 'Hidayat', '2023-04-14', '2023-05-02', 'High Priority', 'Dalam Proses', 'M Hidayat Amin', 'TSI', 'PNG'),
(49, 39, 'Proses SIT', 'Proses SIT dan UAT dengan 42 Sek\r\nSkenario\r\n\r\nPembayaran angsuran pokok tepat waktu\r\nTunggakan pembayaran angsuran pokok sampai dengan 90 (sembilan puluh) hari\r\nTunggakan pembayaran angsuran pokok melampaui 90 (sembilan puluh) hari sampai dengan 120 (seratus dua puluh) hari\r\nTunggakan pembayaran angsuran pokok melampaui 120 (seratus dua puluh) hari sampai dengan 180 (seratus delapan puluh) hari\r\nTunggakan pembayaran angsuran pokok melampaui 180 (seratus delapan puluh) hari\r\nPembayaran angsuran pokok tepat waktu\r\nPembiayaan belum jatuh tempo dan RBH ≥ 80% PBH\r\nTunggakan pembayaran angsuran pokok sampai dengan 90 (sembilan puluh) hari\r\n\r\ntunggakan pelunasan pokok sampai dengan 30 (tiga puluh) hari setelah jatuh tempo\r\n50% < RBH/PBH < 80%\r\nTunggakan pembayaran angsuran pokok melampaui 90 (sembilan puluh) hari sampai dengan 120 (seratus dua puluh) hari\r\n\r\ntunggakan pelunasan pokok melampaui 30 (tiga puluh) hari sampai dengan 60 (enam puluh) hari setelah jatuh tempo\r\n50% < RBH/PBH < 80% dalam jangka waktu lebih dari 1 (satu) periode sampai dengan 6 (enam) periode pembayaran terakumulasi\r\nRBH ≤ 50% PBH sampai dengan 3 (tiga) periode pembayaran terakumulasi\r\nTunggakan pembayaran angsuran pokok melampaui 120 (seratus dua puluh) hari sampai dengan 180 (seratus delapan puluh) hari\r\n\r\nTunggakan pelunasan pokok melampaui 60 (enam puluh) hari sampai dengan 90 (sembilan puluh) hari setelah jatuh tempo\r\n50% < RBH/PBH < 80% dalam jangka waktu lebih dari 6 (enam) periode sampai dengan 9 (sembilan) periode pembayaran terakumulasi\r\nRBH ≤ 50% PBH dalam jangka waktu lebih dari 3 (tiga) periode sampai dengan 6 (enam) periode pembayaran terakumulasi\r\nTunggakan pembayaran angsuran pokok melampaui 180 (seratus delapan puluh) hari\r\n\r\nTunggakan pelunasan pokok melampaui 90 (sembilan puluh) hari setelah jatuh tempo\r\n50% < RBH/PBH < 80% dalam jangka waktu lebih dari 9 (sembilan) periode pembayaran terakumulasi\r\nRBH ≤ 50% PBH dalam jangka waktu lebih dari 6 (enam) periode pembayaran terakumulasi\r\nPembiayaan belum jatuh tempo dan RBH ≥ 80% PBH\r\nTunggakan pelunasan pokok sampai dengan 30 (tiga puluh) hari setelah jatuh tempo\r\n50% < RBH/PBH < 80%\r\nTunggakan pelunasan pokok melampaui 30 (tiga puluh) hari sampai dengan 60 (enam puluh) hari setelah jatuh tempo\r\n50% < RBH/PBH < 80% dalam jangka waktu lebih dari 1 (satu) periode sampai dengan 6 (enam) periode pembayaran terakumulasi\r\nRBH ≤ 50% PBH sampai dengan 3 (tiga) periode pembayaran terakumulasi\r\nTunggakan pelunasan pokok melampaui 60 (enam puluh) hari sampai dengan 90 (sembilan puluh) hari setelah jatuh tempo\r\n50% < RBH/PBH < 80% dalam jangka waktu lebih dari 6 (enam) periode sampai dengan 9 (sembilan) periode pembayaran terakumulasi\r\nRBH ≤ 50% PBH dalam jangka waktu lebih dari 3 (tiga) periode sampai dengan 6 (enam) periode pembayaran terakumulasi\r\nTunggakan pelunasan pokok melampaui 90 (sembilan puluh) hari setelah jatuh tempo\r\n50% < RBH/PBH < 80% dalam jangka waktu lebih dari 9 (sembilan) periode pembayaran terakumulasi\r\nRBH ≤ 50% PBH dalam jangka waktu lebih dari 6 (enam) periode pembayaran terakumulasi\r\n\r\nMelakukan impairment pada rekening yang memiliki tunggakan bagi hasil.\r\nMelakukan PSJT pada rekening yang memiliki tunggakan bagi hasil.\r\nRekening memiliki tunggakan pokok, dengan RBH>= 80% pada LPCOLE 3\r\nRekening telah melewati jatuh tempo + 30 hari, dan RBH<=50%\r\n\r\n\r\n\r\n\r\n\r\n\r\nenario \r\n', 'Hasil sesuai dengan SIT dan UAT', 'Albert', '2022-03-27', '2023-04-10', 'High Priority', 'Dalam Proses', 'Ahmad Bastian', 'TSI', 'PNG'),
(50, 39, 'Dokumentasi SIT', 'Pembuatan Dokumen Skenario SIT', 'Pembuatan Dokumen Skenario SIT', 'Albert', '2023-03-29', '2023-04-10', 'High Priority', 'Dalam Proses', 'Ahmad Bastian', 'TSI', 'PNG'),
(51, 8, 'Dokumentasi SIT', 'Pesiapan Dokument SIT P4SA MMO ', 'Pesiapan Dokument SIT P4SA MMO ', 'Fajri', '2023-04-01', '2023-04-10', 'Medium Priority', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(52, 39, 'Proses SIT', '-  Akad Murabahah, Saat Angsuran Jatuh tempo (Maturity Date) Saat autotransfer Masih Menyisahkan Outstanding Pokok \r\n-  Akad Mudharabah, , Saat Angsuran Jatuh tempo (Maturity Date) Saat autotransfer Masih Menyisahkan Outstanding Pokok, Margin Outstanding menjadi Minus sebesar Baki Debet.\r\n', 'Masih dilakukan SIT dan EOD ', 'Albert', '2023-04-11', '2023-04-12', 'Medium Priority', 'Dalam Proses', 'Ahmad Bastian', 'TSI', 'PNG'),
(53, 37, 'Pembuatan Aplikasi', 'Mapping data di SQL dari Sunfish ke aplikasi KPI', 'Mapping data data di SQL dari Sunfish ke aplikasi KPI', 'Andy Syaputra', '2023-03-02', '2023-05-31', 'Medium Priority', 'Dalam Proses', 'Ahmad Bastian', 'TSI', 'PNG'),
(54, 52, 'Dokumentasi SIT', 'Proses SIT Aplikasi di kantor MLPT Karawachi', 'Proses SIT dari tanggal 03 s.d 06 April 2023', 'Hidayat, Handika', '2023-04-03', '2023-04-06', 'High Priority', 'Selesai', 'Admin Pengembangan', 'TSI', 'PNG'),
(55, 52, 'Proses UAT', 'Proses UAT pada kantor MLPT Karawachi bersama tim OPR, PPM, ITO dan PGK', 'Proses UAT mulai tanggal 10 s.d 14 April 2023\r\nTim PNG : testing dengan rintis off us CPM/MPN\r\nTim ITO dan PGK : testing transaksi inhouse.\r\nTim PPM dan OPR : testing portal dan backoffice', 'Hidayat, Handika', '2023-04-10', '2023-04-30', 'High Priority', 'Dalam Proses', 'Admin Pengembangan', 'TSI', 'PNG'),
(56, 12, 'Dokumen BRD', 'cek dokument', 'selesai', 'fajri', '2023-04-28', '2023-04-28', 'Medium Priority', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(57, 12, 'Dokumen FSD dan TSD', 'Cek Dokument', 'selesai', 'fajri', '2023-04-28', '2023-04-28', 'Medium Priority', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(58, 12, 'Pembuatan Aplikasi', 'Proses Pembuatan Project', 'selesai', 'fajri', '2023-04-28', '2023-04-28', 'Medium Priority', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(59, 40, 'Pembuatan Aplikasi', 'Pihak UIN masih dalam pengembangan Aplikasi untuk bisa terintegrasi dengan bank sumsel babel', 'Aplikasi bisa di SIT', 'Andy, Handika', '0000-00-00', '0000-00-00', 'Medium Priority', 'Dalam Proses', 'Handika Syaputra', 'TSI', 'PNG'),
(60, 46, 'Proses SIT', 'Temuan SIT 26 & 28 April 2023 :\r\n1. va tipe open tampilan inquiry di ATM belum sesuai dan belum bisa di pay\r\n2. Provider list di ATM belum menggunakan trademark dan belum terurut by kode provider\r\n3. Di teller perlu di tambahkan provider list\r\n4. API belum standar dan perlu diarahkan ke tulip/vam\r\n5. API ke pihak ketiga belum bisa inquiry dan pay (VA KAI dll)\r\n6. Tipe open di teller perlu di tambah halaman konfirmasi seperti di atm\r\n7. Tampilan additional info di teller perlu di rapikan', 'Tidak ada catatan lagi', 'Andy, Handika', '2023-04-28', '2023-05-05', 'High Priority', 'Dalam Proses', 'Handika Syaputra', 'TSI', 'PNG');

-- --------------------------------------------------------

--
-- Table structure for table `notulen`
--

CREATE TABLE `notulen` (
  `id` int(10) NOT NULL,
  `no_notulen` varchar(20) NOT NULL,
  `status_notulen` varchar(30) NOT NULL,
  `tanggal_notulen` date NOT NULL,
  `tanggal_terima` date NOT NULL,
  `asal_notulen` varchar(50) NOT NULL,
  `perihal` varchar(100) NOT NULL,
  `user` varchar(50) NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `bagian` varchar(50) NOT NULL,
  `file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notulen`
--

INSERT INTO `notulen` (`id`, `no_notulen`, `status_notulen`, `tanggal_notulen`, `tanggal_terima`, `asal_notulen`, `perihal`, `user`, `divisi`, `bagian`, `file`) VALUES
(1, 'VA UIN', 'Tindak Lajuti', '2023-02-21', '2023-02-21', 'Hasil Meeting', 'Catatan Hasil Meeting BSB X UIN RF Palembang', 'Handika Syaputra', 'TSI', 'PNG', 'BSB-UIN.txt'),
(2, 'Vitual Account ( VA ', 'Monitor', '2023-02-22', '2023-02-22', 'Pengembangan ', 'Vitual Account ( VA ) KPPN', 'Ahmad Bastian', 'TSI', 'PNG', 'Virtual Account KPNN.docx'),
(3, 'Notula Rapat perihal', 'Monitor', '2023-04-13', '2023-04-13', 'IT Operasional', ' Perhitungan Bunga PRK Jatuh Tempo', 'Ahmad Bastian', 'TSI', 'PNG', 'suratkeluar_33520_MWVKNN.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id_pekerjaan` int(100) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `uraian` varchar(5000) NOT NULL,
  `docid` varchar(100) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `mulai` date NOT NULL,
  `target` date NOT NULL,
  `prioritas` varchar(50) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `bagian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pekerjaan`
--

INSERT INTO `pekerjaan` (`id_pekerjaan`, `judul`, `uraian`, `docid`, `jenis`, `mulai`, `target`, `prioritas`, `pic`, `status`, `user`, `divisi`, `bagian`) VALUES
(1, 'Contactless Visa', 'Implementasi Fitur Kartu Contactless Visa', '-', 'New Request', '2023-01-01', '2023-04-30', 'High Priority', 'Hidayat', 'Migrasi', 'M Hidayat Amin', 'TSI', 'PNG'),
(2, 'SIPD Versi 1.4.1', 'Implementasi Apliaksi SIPD Versi 1.4.1', '-', 'New Request', '2023-01-01', '2023-04-30', 'Medium Priority', 'Hidayat', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(3, 'ATM Bersama', 'Upgrage Versi Switching ATM Bersama', '-', 'Change Request', '2023-01-01', '2023-04-30', 'Medium Priority', 'Hidayat', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(4, 'Problem Port 10047', 'Bugs pada transaksi Gopay, Toped, Lion pada port 10047 Rintis.', '-', 'Problem Report', '2023-01-01', '2023-02-28', 'Medium Priority', 'Hidayat', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(5, 'Spool Gabungan BRBMPK1 dan BRREFPT  untuk datawarehaouse', 'Project Masuk Pada Tanggal 27 September \r\ntahap project 70 %\r\nmembutuhkan proses eod ', '2357/TSI/4.2/M/2022', 'Change Request', '2022-11-28', '2023-03-31', 'Low Priority', 'Albert', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(6, 'Penambahan Layar Baru dengan Field Tertentu untuk Validasi Otoritas Penyelia pada Transaksi Akad SIK', 'Penambahan Layar Baru dengan Field Tertentu untuk Validasi Otoritas Penyelia pada Transaksi Akad SIKP Konvensional dan Syariah', '2483/TSI/4.2/M/2022', 'Change Request', '2022-10-05', '2023-04-15', 'Low Priority', 'Albert', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(7, 'Pemintaan SIT dan UAT perubahan pengisian kode resiko Nasabah non Individu', 'Permintaan SIT dan UAT CR Perubahan Pengisian Kode Risiko Nasabah Non Individu', '2759/TSI/4.2/M/2022', 'Change Request', '2022-10-28', '2023-02-28', 'Medium Priority', 'Albert', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(8, 'Pemintaan SIT Cange request pembiayaan investasi terkait Mudharabah Muqayyaddah on balance sheer (MM', 'Permintaan SIT Change Request Pembiayaan Investasi Terikat Mudharabah Muqayyaddah On Balance Sheet (MMOB), Didahulukan CR Digiloan\r\n\r\nMemo Penyelesasain : 959/TSI/1.1/M/2023\r\nTanggal : 11-Apr-23', '2941/TSI/4.2/M/2022', 'Change Request', '2023-03-06', '2023-03-31', 'Medium Priority', 'Fajri', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(9, 'Problem Report Error EOD GL Terkait Data Transaksi dengan Field Kosong', 'Problem Report Error EOD GL Terkait Data Transaksi dengan Field Kosong', '3408/TSI/4.2/M/2022', 'Problem Report', '2022-12-26', '2023-04-30', 'Medium Priority', 'Albert', 'Pembuatan Aplikasi', 'Ahmad Bastian', 'TSI', 'PNG'),
(10, 'Permintaan SIT Change Request Spool Office Channeling Syariah', 'Permintaan SIT Change Request Spool Office Channeling Syariah Selesai Per Desember 2022, Request baru februari 2023', '496/TSI/4.2/M/2022', 'Change Request', '2023-04-03', '2023-04-07', 'Medium Priority', 'Fajri', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(11, 'Permintaan SIT Perbaikan Change Request Spool Office Channeling Syariah', 'Permintaan SIT Perbaikan Change Request Spool Office Channeling Syariah', '3509/TSI/4.2/M/2022', 'New Request', '2023-01-09', '2023-05-05', 'Medium Priority', 'Fajri ', 'Dalam Proses', 'Ahmad Bastian', 'TSI', 'PNG'),
(12, 'Perubahan Komparisi Perjanjian Kredit / Perjanjian Kerjasama', 'Perubahan Komparisi Perjanjian Kredit / Perjanjian Kerjasama', '1217/SHK/2/M/2022', 'Problem Report', '2022-11-30', '2023-01-31', 'Medium Priority', 'Fajri', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(13, 'Peralihan Sistem Integrasi Pembayaran Tagihan Air Bersih', 'Peralihan Sistem Integrasi Pembayaran Tagihan Air Bersih', '3013/TSI/4.2/M/2022', 'New Request', '2022-11-22', '2023-02-28', 'Medium Priority', 'Andy Syahputra', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(14, 'Permohonan Data Mapping Field Download Penarikan SLIK Konvensional Dan Syariah', 'Permohonan Data Mapping Field Download Penarikan SLIK Konvensional Dan Syariah', '201/PKA/1.1/M/2022', 'Problem Report', '2022-11-23', '2023-02-28', 'Medium Priority', 'Andy Syahputra', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(15, 'Penyampaian Permintaan CR Web dan Mobile Digiloan MO', 'Penyampaian Permintaan CR Web dan Mobile Digiloan MO\r\nSIT telah selesai dilakukan tim Pengembangan', '231/TSI/4.2/M/2023', 'Change Request', '2023-01-27', '2023-01-30', 'Medium Priority', 'Fajri', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(16, 'Safe Deposit Box (SDB)', 'Penyampaian BRD Terkait Permasalahan Safe Deposit Box (SDB)\r\nSetelah mempertimbangkan dengan seksama, kami tidak dapat melanjutkan proyek ini karena Soucer Aplikasi tidak terdapat dipengembangan (Secara Inhouse) .', '390/TSI/4.2/M/2023', 'Change Request', '2023-02-15', '2023-03-30', 'Medium Priority', 'Fajri', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(17, 'Laporan BRBMPK saat EOD GL', 'Problem Report Permasalahan QBatch Laporan BRBMPK saat EOD GL Membutuhkan Durasi yang Lama', '312/TSI/4.2/M/2023', 'Change Request', '2023-02-07', '2023-03-31', 'Medium Priority', 'Albert', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(18, 'Spool Laporan Kredit Per Sektor Ekonomi', 'Permintaan Change Request Spool Laporan Kredit Per Sektor Ekonomi', '406/TSI/4.2/M/2023', 'Change Request', '2023-02-16', '2023-05-12', 'Medium Priority', 'Fajri', 'Koordinasi', 'Ahmad Bastian', 'TSI', 'PNG'),
(19, 'Penyampaian BRD CR Digiloan', 'Penyampaian BRD CR Digiloan', '477/TSI/4.2/M/2023 tanggal 22 Peb 2023 17:51:00', 'Change Request', '2023-02-28', '2023-03-10', 'Medium Priority', 'Fajri', 'Selesai', 'Sholahul Fajri', 'TSI', 'PNG'),
(20, 'Pendampingan Audit Bank Indonesia', 'Penjelasan tentang aplikasi switching, mobile banking, internet banking, sms banking dan sntc.', '-', 'Problem Report', '2023-02-24', '2023-02-28', 'High Priority', 'Hidayat', 'Selesai', 'Admin Pengembangan', 'TSI', 'PNG'),
(21, 'Perbaikan Bugs BI-Fast', 'Telah dilakukan proses migrasi tanggal 14 Februari 2023', 'WTVUGY', 'Problem Report', '2023-02-01', '2023-02-28', 'Medium Priority', 'Hidayat', 'Selesai', 'Admin Pengembangan', 'TSI', 'PNG'),
(22, 'Patching IST 7.7 Versi 16', 'Konfirmasi terkait Patching IST Backup DRC Versi 16', '-', 'Change Request', '2023-02-28', '2023-04-30', 'High Priority', 'Hidayat', 'Koordinasi', 'Admin Pengembangan', 'TSI', 'PNG'),
(23, 'Portal Virtual Account Bank Sumsel Babel', 'Aplikasi Portal dan Back Office Management Virtual Account untuk Bank Sumsel Babel dan Mitra', 'PKS COB, VA dan OpenAPI', 'New Request', '2022-03-01', '2023-03-31', 'High Priority', 'Handika', 'Selesai', 'Handika Syaputra', 'TSI', 'PNG'),
(24, 'Virtual Account BSB X SEVIMA', 'Kerjasama Virtual Account BSB dan SEVIMA untuk Pembayaran UKT Mahasiswa Universitas Bangka Belitung', '211/TSI/4.2/M/2023', 'New Request', '2023-01-01', '2023-06-30', 'Medium Priority', 'Handika', 'Pembuatan Aplikasi', 'Handika Syaputra', 'TSI', 'PNG'),
(25, 'Virtual Account BSB X ICONNET', 'Pembayaran Tagihan ICONNET melalui VA BSB', 'Tim Digital', 'New Request', '2023-02-28', '2023-12-31', 'Low Priority', 'handika', 'Koordinasi', 'Handika Syaputra', 'TSI', 'PNG'),
(26, 'Virtual Account BSB X ESPAY', 'Pembayaran Virtual Account Aplikasi Ferizzy ( Pembelian Tiket Kapal )', '221/TSI/4.2/M/2023', 'New Request', '2023-03-01', '2023-03-31', 'High Priority', 'Andy, Handika', 'Selesai', 'Handika Syaputra', 'TSI', 'PNG'),
(27, 'Klasifikasi Dokumen BSB-DigiO', 'CR Pengklasifikasian Dokumen yang bersifat biasa dan rahasia pada Aplikasi BSB-DigiO, sesuai ISO terbaru.', '25/TSI/4.2/M/2023', 'Change Request', '2023-02-27', '2023-03-07', 'High Priority', 'Handika', 'Selesai', 'Handika Syaputra', 'TSI', 'PNG'),
(28, 'CTAS DJP ( Pembuatan Billing )', 'Integrasi Pembuatan Billing Pajak ke DJP melalui API', '656/BKI/2/M/2022', 'New Request', '2023-02-01', '2023-08-31', 'Medium Priority', 'Handika', 'Perencanaan', 'Handika Syaputra', 'TSI', 'PNG'),
(29, 'CTAS DJPb ( Payment MPN Gen3 )', 'API Pembyaran pajak melalui Bank Sumsel Babel dengan spek JSON', '656/BKI/2/M/2022', 'New Request', '2023-02-01', '2023-08-31', 'Medium Priority', 'Handika', 'Perencanaan', 'Handika Syaputra', 'TSI', 'PNG'),
(30, 'Portal Virtual Account Bank Sumsel Babel - 2.0', 'Portal VA BSB phase 2\r\n- multicurrency\r\n- jenjang user\r\n- callback advice parameterize per provider\r\n- export file mt940\r\n- field\" DB yg bisa di panggil ke template email', 'PKS COB, VA dan OpenAPI', 'New Request', '2023-03-01', '2023-12-31', 'Medium Priority', 'Handika', 'Koordinasi', 'Handika Syaputra', 'TSI', 'PNG'),
(32, 'Virtual Account BSB x UMP', 'VA Pembayaran Tagihan Mahasiswa UMP', 'Tim Digital', 'New Request', '2023-03-01', '2023-12-31', 'Medium Priority', 'Handika', 'Koordinasi', 'Handika Syaputra', 'TSI', 'PNG'),
(33, 'Virtual Account BSB X UKMC', 'VA Pembayaran Tagihan Mahasiswa UKMC ( Universitas Katolik Musi Charitas )', 'Tim Digital', 'New Request', '2023-03-01', '2023-12-31', 'Low Priority', 'Handika', 'Perencanaan', 'Handika Syaputra', 'TSI', 'PNG'),
(34, 'Aplikasi Simda CMS 4 (FMIS)', 'Aplikasi SIMDA CMS 4 (FMIS) Pencairan SP2D dan SPJ', '-', 'Change Request', '2023-03-01', '2023-03-31', 'Medium Priority', 'Hidayat', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(35, 'TO Bugs EDC Mini ATM', 'Test Operasional Bugs EDC Mini ATM\r\n1. PDAM\r\n2. KAI\r\n3. PBB P2\r\n4. Kartu Halo', '-', 'Problem Report', '2023-03-03', '2023-03-03', 'Medium Priority', 'Hidayat', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(36, 'Aplikasi Rec7 Modul QRIS, BSBCash dan Priority Settlement EDC', 'Pembahasan Rekonsiliasi Modul QRIS, BSBCash dan Priority Settlement EDC\r\nTanggal 7 s.d 10 Maret 2023 (Kantor Master System Jakarta Pusat)', '-', 'Change Request', '2023-03-07', '2023-06-30', 'Medium Priority', 'Hidayat', 'Dalam Proses', 'M Hidayat Amin', 'TSI', 'PNG'),
(37, 'Pengembangan Aplikasi Monitoring KPI', 'Tindaklanjut Pengembangan Aplikasi Monitoring KPI', '568/TSI/4.2/M/2023', 'New Request', '2023-03-07', '2023-05-31', 'Medium Priority', 'Andy Syahputra', 'Pembuatan Aplikasi', 'Ahmad Bastian', 'TSI', 'PNG'),
(38, 'Aplikasi Selisih Antara Rekening Koran Kasda dan Laporan B9', 'Penyesuaian Rollback Migrasi Aplikasi Selisih Antara Rekening Koran Kasda dan Laporan B9', '599/TSI/4.2/M/2023', 'Problem Report', '2023-03-08', '2023-04-30', 'Medium Priority', 'Albert', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(39, 'Kolektibilitas Pembiayaan Akad Bagi Hasil (Musyarakah &amp;Mudharabah)', 'Permintaan SIT Otomasi Kolektibilitas Pembiayaan Akad Bagi Hasil (Musyarakah &amp;Mudharabah)', '600/TSI/4.2/M/2023', 'New Request', '2023-03-08', '2023-05-01', 'Medium Priority', 'Albert', 'SIT', 'Ahmad Bastian', 'TSI', 'PNG'),
(40, 'Open API-VA Bank Sumsel Babel & UIN Raden Fatah Palembang', 'Registrasi dan End to End Testing Open API-VA Bank Sumsel Babel & UIN Raden Fatah Palembang', '610/TSI/4.2/M/2023', 'New Request', '2023-03-08', '2023-12-31', 'Medium Priority', 'Andy Syahputra, Handika', 'Dalam Proses', 'Ahmad Bastian', 'TSI', 'PNG'),
(41, 'Penyesuaian Catatan Hasil UAT Komparisi Perjanjian Kerjasama Akad Syariah', 'Perbaikan PK Syariah', '549/TSI/4.2/M/2023', 'Change Request', '2023-03-10', '2023-04-30', 'Medium Priority', 'Fajri', 'Selesai', 'Sholahul Fajri', 'TSI', 'PNG'),
(42, 'CKPN lebih besar dari Baki Debet PSAK pada Rekening PRK Impair 100%', 'CKPN lebih besar dari Baki Debet PSAK pada Rekening PRK Impair 100%', '691/TSI/4.2/M/2023', 'Problem Report', '2023-03-24', '2023-05-01', 'Medium Priority', 'albert', 'SIT', 'Ahmad Bastian', 'TSI', 'PNG'),
(43, 'Testing Prefix 83311', 'Testing transaksi perubahan nomor prefix 3311 menjadi 83311 dengan Mitracomm', '-', 'Change Request', '2023-03-27', '2023-03-31', 'Medium Priority', 'Hidayat', 'Selesai', 'M Hidayat Amin', 'TSI', 'PNG'),
(44, 'Pembuatan Aplikasi Voting RUPS', 'aplikasi Pembuatan Aplikasi Voting RUPS', '005/PANRUPS/2023', 'New Request', '2023-03-09', '2023-03-13', 'High Priority', 'Andy Syahputra', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(45, 'SIKP dengan versi 3.0.0 terkait Count Akad', 'Update Spek baru SIKP dengan versi 3.0.0 terkait Count Akad', '776 /TSI/4.2/M/2023', 'Change Request', '2023-03-28', '2023-04-30', 'Medium Priority', 'Albert', 'Koordinasi', 'Ahmad Bastian', 'TSI', 'PNG'),
(46, '(SIT) Channel Teller dan ATM via APIM VA on us Bank Sumsel Babel', 'Permintaan Pelaksanaan System Integration Testing (SIT) Channel Teller dan ATM via APIM VA on us Bank Sumsel Babel', '774/TSI/4.2/M/2023', 'New Request', '2023-03-28', '2023-12-31', 'Medium Priority', 'Andy Syahputra, Handika', 'SIT', 'Ahmad Bastian', 'TSI', 'PNG'),
(47, 'Problem Report Autodebet Pembayaran Tagihan PDAM/SP2J', 'Tindaklanjut Problem Report Autodebet Pembayaran Tagihan PDAM', '794/TSI/4.2/M/2023', 'Problem Report', '2023-03-29', '2023-04-16', 'Medium Priority', 'Andy Syahputra', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(48, 'Create pada program CALL EJKMT (Nilai Ekpektasi Bagi Hasil Syariah)', 'Penambahan Fitur Create pada program CALL EJKMT (Nilai Ekpektasi Bagi Hasil Syariah)', '827/TSI/4.2/M/2023', 'Change Request', '2023-04-03', '2023-05-19', 'Medium Priority', 'Fajri', 'Koordinasi', 'Ahmad Bastian', 'TSI', 'PNG'),
(49, 'Permintaan Change Request (CR) nilai provisi Debitur New to Bank dengan provisi 0%', 'New to Bank dengan provisi 0%', '848/TSI/4.2/M/2023', 'Change Request', '2023-04-03', '2023-04-03', 'Medium Priority', 'fajri ', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(50, 'Problem Penawaran Sentra Kredit Digiloan untuk nasabah New to Bank', 'Problem Penawaran Sentra Kredit Digiloan untuk nasabah New to Bank yang belum di hitung scoring dengan beneri ', '930/TSI/2.2/M/2023', 'Change Request', '2023-04-11', '2023-04-13', 'Medium Priority', 'Fajri ', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(51, 'Change Request Perubahan Komparasi Perjanjian Kredit/Akad Syariah/Perjanjian Kerjasama', 'Perubahan Komparasi Perjanjian Kredit/Akad Syariah/Perjanjian Kerjasama', '951/TSI/4.2/M/2023', 'Change Request', '2023-04-13', '2023-04-30', 'Medium Priority', 'Fajri ', 'Selesai', 'Ahmad Bastian', 'TSI', 'PNG'),
(52, 'Aplikasi Qris Dinamis dan Portal Merchant', 'Pengembangan Aplikasi Qris Dinamis, Qris CPM, Qris TTS dan Aplikasi Merhcant', 'SWADKM', 'Change Request', '2023-04-03', '2023-06-30', 'High Priority', 'Hidayat, Handika', 'UAT', 'Admin Pengembangan', 'TSI', 'PNG');

-- --------------------------------------------------------

--
-- Table structure for table `perjanjian`
--

CREATE TABLE `perjanjian` (
  `id` int(100) NOT NULL,
  `nomor` varchar(100) NOT NULL,
  `uraian` varchar(5000) NOT NULL,
  `mulai` date NOT NULL,
  `target` date NOT NULL,
  `tanggal_terima` date NOT NULL,
  `prioritas` varchar(50) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `bagian` varchar(50) NOT NULL,
  `file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `level` enum('admin','admin1','user','user1') NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `bagian` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `foto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fullname`, `level`, `divisi`, `bagian`, `jenis_kelamin`, `foto`) VALUES
(1, 'admin', '81fccaf9f00a8441b77b18fa2c8010f4', 'Administrator', 'admin', 'TSI', 'TSI', 'Perempuan', 'admin.png'),
(2, 'user', 'a13e7d4df150d90e60853f87d5abe94b', 'Username', 'user', 'TSI', 'TSI', 'Laki Laki', 'user.png'),
(3, 'admin1', 'e00cf25ad42683b3df678c61f42c6bda', 'Administrator1', 'admin1', 'TSI', 'PNG', 'Perempuan', 'admin.png'),
(4, 'user1', '24c9e15e52afc47c225b757e7bee1f9d', 'Username1', 'user1', 'TSI', 'PNG', 'Laki Laki', 'user.png'),
(5, 'dayat', '9efef95a35ea9a35555db2d59d27c356', 'M Hidayat Amin', 'user1', 'TSI', 'PNG', 'Laki Laki', 'user.png'),
(6, 'bastian', '5aaea65c794379b4984c0ec3477973ff', 'Ahmad Bastian', 'user1', 'TSI', 'PNG', 'Laki Laki', 'user.png'),
(7, 'adminpng', '195e895473de8cefed8a556f50183398', 'Admin Pengembangan', 'admin1', 'TSI', 'PNG', 'Perempuan', 'admin.png'),
(8, 'holik', 'ba2d1f6e8caa02745ad41b4e20f2b0e9', 'Umar Holik', 'admin1', 'TSI', 'PNG', 'Laki Laki', 'user.png'),
(9, 'herri', '51933b9b5cab3dccfca09430b41e4b41', 'Herri Gustian Rozie', 'user1', 'TSI', 'PNG', 'Laki Laki', 'user.png'),
(10, 'andy', '5faf054ddd814cbfd32f0c6a93df0aa7', 'Andy Syaputra', 'user1', 'TSI', 'PNG', 'Laki Laki', 'user.png'),
(11, 'albert', '5fb5f1dfae4b423c8b9048b3e8979182', 'Albert Ivando', 'user1', 'TSI', 'PNG', 'Laki Laki', 'user.png'),
(12, 'dika', '61363819a22cc52946c627001b0819dd', 'Handika Syaputra', 'user1', 'TSI', 'PNG', 'Laki Laki', 'user.png'),
(13, 'fajri', 'a9a8c5cf1e42a8b3ca75d4cfea077318', 'Sholahul Fajri', 'user1', 'TSI', 'PNG', 'Laki Laki', 'user.png'),
(14, 'dedy', '9c3ff44ab64290e88bf69b8f72d136cf', 'Dedy Yuspianto', 'admin1', 'TSI', 'PNG', 'Laki Laki', 'user.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catatan`
--
ALTER TABLE `catatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_pekerjaan`
--
ALTER TABLE `detail_pekerjaan`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_pekerjaan` (`id_pekerjaan`);

--
-- Indexes for table `notulen`
--
ALTER TABLE `notulen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`);

--
-- Indexes for table `perjanjian`
--
ALTER TABLE `perjanjian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catatan`
--
ALTER TABLE `catatan`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `detail_pekerjaan`
--
ALTER TABLE `detail_pekerjaan`
  MODIFY `id_detail` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `notulen`
--
ALTER TABLE `notulen`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  MODIFY `id_pekerjaan` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `perjanjian`
--
ALTER TABLE `perjanjian`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_pekerjaan`
--
ALTER TABLE `detail_pekerjaan`
  ADD CONSTRAINT `detail_pekerjaan_ibfk_1` FOREIGN KEY (`id_pekerjaan`) REFERENCES `pekerjaan` (`id_pekerjaan`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
