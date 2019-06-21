-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 23, 2017 at 03:56 PM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `villas9k_hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `mls_banned`
--

CREATE TABLE IF NOT EXISTS `mls_banned` (
  `userid` int(11) NOT NULL,
  `until` int(11) NOT NULL,
  `by` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mls_banned`
--


-- --------------------------------------------------------

--
-- Table structure for table `mls_groups`
--

CREATE TABLE IF NOT EXISTS `mls_groups` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `color` varchar(50) NOT NULL,
  `canban` int(11) NOT NULL,
  `canhideavt` int(11) NOT NULL,
  `canedit` int(11) NOT NULL,
  PRIMARY KEY (`groupid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

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

CREATE TABLE IF NOT EXISTS `mls_privacy` (
  `userid` int(11) NOT NULL,
  `email` int(11) NOT NULL,
  UNIQUE KEY `userid` (`userid`)
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
(9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mls_settings`
--

CREATE TABLE IF NOT EXISTS `mls_settings` (
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
('Patient Management Information System', 'http://localhost/Hospital/', 'nor.reply@gmail.com', 10, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mls_users`
--

CREATE TABLE IF NOT EXISTS `mls_users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
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
  `regtime` int(11) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `mls_users`
--

INSERT INTO `mls_users` (`userid`, `username`, `display_name`, `password`, `email`, `key`, `validated`, `groupid`, `lastactive`, `showavt`, `banned`, `regtime`) VALUES
(1, 'admin', 'Admin', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'admin@gmail.com', '', '1', 4, 1511237275, 1, 0, 1498129716),
(2, 'Doctor', 'Doctor', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'doc@doctor.com', '', '1', 5, 1511386259, 1, 0, 1498131537),
(3, 'Nurse', 'Nurse', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'nurse@nurse.com', '', '1', 3, 1511451032, 1, 0, 1498131610),
(4, 'Patient', 'Patient ', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'patient@patient.com', '', '1', 2, 1511365403, 1, 0, 1498133175),
(5, 'emma', 'oceng', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'ocengemmanuelagech60@gmail.com', '', '1', 3, 1511230959, 1, 0, 1511200237),
(6, 'Opio', 'Andrew', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'OpioAndrewagec@gmail.com', '', '1', 5, 1511258728, 1, 0, 1511236992),
(7, 'adongo', 'Prissy ', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'adongopatricaprossy@gmail.com', '', '1', 2, 1511258313, 1, 0, 1511255260),
(8, 'lipy', 'Lipson', '2fdae122c27c4dbe22c28c2ebd82d480baf69527', 'bu@gmail.com', '', '1', 2, 1511255451, 1, 0, 1511255451),
(9, 'john', 'peter', '1742c2c284ba20f08e4694a9a57072f144904973', 'johnpeter@gmail.com', '', '1', 2, 1511452510, 1, 0, 1511452510);
