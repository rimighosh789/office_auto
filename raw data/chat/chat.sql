-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2016 at 07:53 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
  `id` bigint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `msg` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `name`, `msg`, `date`) VALUES
(1, 'Abbas Ahmad', 'aaaaaaa', '2016-05-27 15:19:45'),
(2, 'Aaa', 'ssssss', '2016-05-27 15:19:51'),
(3, 'dfsf', 'sdfaf', '2016-05-27 15:19:59'),
(4, 'Abbas Ahmad', 'sss', '2016-05-27 16:02:10'),
(5, 'sdfasf', 'dsfadfa', '2016-05-27 16:02:14'),
(6, 'dsafsaf', 'dsfaadsf', '2016-05-27 16:02:17');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
