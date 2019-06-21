-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 15, 2017 at 08:45 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `mls_banned`
--

CREATE TABLE `mls_banned` (
  `userid` int(11) NOT NULL,
  `until` int(11) NOT NULL,
  `by` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mls_groups`
--

CREATE TABLE `mls_groups` (
  `groupid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `color` varchar(50) NOT NULL,
  `canban` int(11) NOT NULL,
  `canhideavt` int(11) NOT NULL,
  `canedit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mls_groups`
--

INSERT INTO `mls_groups` (`groupid`, `name`, `type`, `priority`, `color`, `canban`, `canhideavt`, `canedit`) VALUES
(1, 'Guest', 0, 1, '', 0, 0, 0),
(2, 'Member', 1, 1, '#08c', 0, 0, 0),
(3, 'Moderator', 2, 1, 'green', 1, 1, 0),
(4, 'Administrator', 3, 1, '#F0A02D', 1, 1, 1),
(5, 'Doctor', 5, 1, 'Blue', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mls_privacy`
--

CREATE TABLE `mls_privacy` (
  `userid` int(11) NOT NULL,
  `email` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mls_privacy`
--

INSERT INTO `mls_privacy` (`userid`, `email`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 1),
(17, 0),
(18, 0),
(19, 0),
(20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mls_settings`
--

CREATE TABLE `mls_settings` (
  `site_name` varchar(255) NOT NULL DEFAULT 'Demo Site',
  `url` varchar(300) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `max_ban_period` int(11) NOT NULL DEFAULT '10',
  `register` int(11) NOT NULL DEFAULT '1',
  `email_validation` int(11) NOT NULL DEFAULT '0',
  `captcha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mls_settings`
--

INSERT INTO `mls_settings` (`site_name`, `url`, `admin_email`, `max_ban_period`, `register`, `email_validation`, `captcha`) VALUES
('HEALTH CARE SYSTEM', 'http://localhost/hospital', 'nor.reply@gmail.com', 10, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mls_users`
--

CREATE TABLE `mls_users` (
  `userid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `key` varchar(50) NOT NULL,
  `validated` varchar(100) NOT NULL,
  `groupid` int(11) NOT NULL DEFAULT '2',
  `lastactive` int(11) NOT NULL,
  `showavt` int(11) NOT NULL DEFAULT '1',
  `banned` int(11) NOT NULL,
  `regtime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mls_users`
--

INSERT INTO `mls_users` (`userid`, `username`, `display_name`, `password`, `email`, `key`, `validated`, `groupid`, `lastactive`, `showavt`, `banned`, `regtime`) VALUES
(1, 'admin', 'Admin', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'admin@gmail.com', '', '1', 4, 1501750620, 1, 0, 1498129716),
(2, 'Doctor', 'Doctor', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'doc@doctor.com', '', '1', 5, 1501686942, 1, 0, 1498131537),
(3, 'Nurse', 'Nurse', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'nurse@nurse.com', '', '1', 3, 1498136975, 1, 0, 1498131610),
(4, 'Patient', 'Twinamasiko Brian', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'patient@patient.com', '', '1', 2, 1501516208, 1, 0, 1498133175),
(5, 'patient2', 'Nakiyimba Rose', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'admin@patient.com', '', '1', 2, 1501340200, 1, 0, 1501340200),
(6, 'patient3', 'Nasanga Deborah', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Nasanga@gmail.com', '', '1', 2, 1501354670, 1, 0, 1501354670),
(7, 'patient4', 'Okello Owen', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Owen@com.com', '', '1', 2, 1501354808, 1, 0, 1501354808),
(8, 'patient6', 'Mulimi Sandra', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'mulimi@yahoo.com', '', '1', 2, 1501355169, 1, 0, 1501354857),
(9, 'patient7', 'Opio Ojegere Obed', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'ooo@gmail.com', '', '1', 2, 1501355242, 1, 0, 1501355242),
(10, 'patient8', 'Simuleba Liseba', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'simu@simu.simu', '', '1', 2, 1501355334, 1, 0, 1501355334),
(11, 'patient9', 'Leba Sileba', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'sileba@leba.com', '', '1', 2, 1501355441, 1, 0, 1501355441),
(12, 'patient10', 'Kabaga Party', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'kabaga@party.you', '', '1', 2, 1501355877, 1, 0, 1501355512),
(13, 'nurse2', 'Rose Kulaba', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'nurse@rose.com', '', '1', 3, 1501515863, 1, 0, 1501356074),
(14, 'nurse3', 'Turyasingura Levi ', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'levi@levi.com', '', '1', 3, 1501356578, 1, 0, 1501356145),
(15, 'peter', 'peter', '4b8373d016f277527198385ba72fda0feb5da015', 'peter@peter.com', '', '1', 5, 1501685436, 1, 0, 1501676024),
(16, 'sarah', 'sarah guest', 'ad7fddf845081b82799d19bcfee7070497059e2c', 'sarah@kawa.org', '', '1', 1, 1501683817, 1, 0, 1501680654),
(17, 'moses', 'moses', '76c580f0e3e4c9061b71a0636aee421ebf678b6e', 'moses@gmail.com', '', '1', 2, 1501681524, 1, 0, 1501680825),
(18, 'mikan', 'mikan', '891307f2888254e7fc1e468762f10e5d480fe9a7', 'mikan@gmail.com', '', '1', 2, 1501682886, 1, 0, 1501682562),
(19, 'doctor23', 'doctor1', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'peter@perter.doc', '', '1', 5, 1501685615, 1, 0, 1501685615),
(20, 'anthony', 'anthony', '6e1a438cfe5a6c9e2165665f8c2258849ccc43f0', 'anthony@juristech.net', '', '1', 2, 1501750656, 1, 0, 1501750656);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mls_banned`
--
ALTER TABLE `mls_banned`
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `mls_groups`
--
ALTER TABLE `mls_groups`
  ADD PRIMARY KEY (`groupid`);

--
-- Indexes for table `mls_privacy`
--
ALTER TABLE `mls_privacy`
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `mls_users`
--
ALTER TABLE `mls_users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mls_groups`
--
ALTER TABLE `mls_groups`
  MODIFY `groupid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `mls_users`
--
ALTER TABLE `mls_users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
