-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2016 at 10:32 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `imran_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `app`
--

CREATE TABLE IF NOT EXISTS `app` (
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chrman`
--

CREATE TABLE IF NOT EXISTS `chrman` (
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chrman`
--

INSERT INTO `chrman` (`email`, `password`) VALUES
('owais', 'owais');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `First_name` varchar(255) NOT NULL,
  `Last_name` varchar(114) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`First_name`, `Last_name`, `Email`, `Password`) VALUES
('Abdullah', ' ', 'Abdullah', 'abdullah'),
('Chairman', ' ', 'Chairman', 'chairman'),
('Daud', ' ', 'Daud', 'daud'),
('Hamood', ' ', 'Hamood', 'hamood'),
('Sohail', '', 'Sohail', 'sohail'),
('Tawab', '', 'Tawab', 'tawab');

-- --------------------------------------------------------

--
-- Table structure for table `msg`
--

CREATE TABLE IF NOT EXISTS `msg` (
  `id` int(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `from_email` varchar(200) NOT NULL,
  `to_email` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msg`
--

INSERT INTO `msg` (`id`, `message`, `from_email`, `to_email`) VALUES
(2, 'Hi Every One', 'Chairman', 'Tawab'),
(3, 'Can You Come       ', 'Chairman', 'Tawab'),
(4, 'Hello\r\n                    ', 'Chairman', 'Tawab'),
(5, '\r\nHello Chairman saib                    ', 'Tawab', 'Chairman'),
(6, 'G waya kana', 'Chairman', 'Tawab'),
(7, 'dfdfdfdf', 'Chairman', 'Daud');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `orders` varchar(113) NOT NULL,
  `quan` varchar(11) NOT NULL,
  `location` varchar(113) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`orders`, `quan`, `location`) VALUES
('sadf', '32', 'asf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `msg`
--
ALTER TABLE `msg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `msg`
--
ALTER TABLE `msg`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
