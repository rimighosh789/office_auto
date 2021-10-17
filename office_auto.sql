-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2018 at 06:42 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `office_auto`
--

-- --------------------------------------------------------

--
-- Table structure for table `app`
--

CREATE TABLE `app` (
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` bigint(8) NOT NULL,
  `name` varchar(250) NOT NULL,
  `msg` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `name`, `msg`, `date`) VALUES
(111, 'Manager', 'Who is not coming tomorrow for the workshop at the plaza?', '2018-12-03 09:32:06'),
(114, 'Designer', 'I cant come sir. ', '2018-12-03 09:51:32'),
(115, 'datauser', 'I am coming', '2018-12-03 17:37:24');

-- --------------------------------------------------------

--
-- Table structure for table `chrman`
--

CREATE TABLE `chrman` (
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

CREATE TABLE `login` (
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
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `message_id` bigint(8) NOT NULL,
  `sender` varchar(250) NOT NULL,
  `reciver` varchar(250) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`message_id`, `sender`, `reciver`, `message`, `time`) VALUES
(9, 'Shoaib', 'Shoaib', 'mmm', '2016-05-31 12:40:53'),
(12, 'abbas', 'Haroon', 'hlo', '2016-05-31 13:44:52'),
(16, 'abbas', 'zia', 'aaaaa', '2016-05-31 14:01:55'),
(17, 'abbas', 'Chairman', 'sssssss', '2016-05-31 14:02:54'),
(20, 'abbas', 'Haroon', 'dfffddfdhghgdhd', '2016-06-01 11:58:56'),
(22, 'zia', 'Haroon', 'hhhhhhhhhhhhhhhhhhhhhhhh', '2016-06-01 12:01:25'),
(25, 'abbas', '<br /><b>Notice</b>:  Undefined index: id in <b>C:xampphtdocsimran_webadd_time_table.php</b> on line <b>49</b><br />', '', '2016-06-01 12:33:58'),
(26, 'abbas', '<br /><b>Notice</b>:  Undefined index: id in <b>C:xampphtdocsimran_webadd_time_table.php</b> on line <b>49</b><br />', '', '2016-06-01 12:34:21'),
(28, 'abbas', 'daud', 'Come to my office', '2018-12-03 09:17:19'),
(29, 'daud', 'abbas', 'Okay coming sir', '2018-12-03 09:18:00'),
(30, 'Manager', 'Boss', 'The project 1 is ready', '2018-12-03 09:41:14');

-- --------------------------------------------------------

--
-- Table structure for table `msg`
--

CREATE TABLE `msg` (
  `id` int(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `from_email` varchar(200) NOT NULL,
  `to_email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msg`
--

INSERT INTO `msg` (`id`, `message`, `from_email`, `to_email`) VALUES
(2, 'Hi Every One', 'Chairman', 'Tawab'),
(3, 'Can You Come       ', 'Chairman', 'Tawab'),
(4, 'Hello\r\n                    ', 'Chairman', 'Tawab'),
(5, '\r\nHello Chairman saib                    ', 'Tawab', 'Chairman'),
(6, 'G waya kana', 'Chairman', 'Tawab'),
(7, 'dfdfdfdf', 'Chairman', 'Daud'),
(8, '\r\n                    zzz', '<br /><b>Notice</b>:  Undefined index: Email in <b>C:xampphtdocsimran_webwelcome.php</b> on line <b>25</b><br />', 'Chairman'),
(9, 'xx\r\n                    ', '<br /><b>Notice</b>:  Undefined index: Email in <b>C:xampphtdocsimran_webwelcome.php</b> on line <b>25</b><br />', 'Abdullah');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `orders` varchar(113) NOT NULL,
  `quan` varchar(11) NOT NULL,
  `location` varchar(113) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`orders`, `quan`, `location`) VALUES
('sadf', '32', 'asf');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `time_table_id` bigint(8) NOT NULL,
  `t_t_name` varchar(250) NOT NULL,
  `teacher` varchar(255) NOT NULL,
  `day` date NOT NULL,
  `time` varchar(250) NOT NULL,
  `class` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`time_table_id`, `t_t_name`, `teacher`, `day`, `time`, `class`) VALUES
(6, '', 'abbas', '2018-12-03', '14:00', 'Meeting'),
(7, '', 'daud', '2018-12-05', '01:00', 'New Class'),
(8, '', 'daud', '2018-12-05', '01:00', 'jj'),
(9, '', 'datauser', '2018-12-05', '14:01', 'Lab 1'),
(10, '', 'datauser', '2018-12-06', '01:00', 'New class ');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `user_id` bigint(8) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `user_name`, `user_password`) VALUES
(1, 'Boss', 'abc'),
(3, 'Manager', 'abc'),
(4, 'Designer', 'abc'),
(7, 'Internee', 'abc'),
(8, 'Ceo', 'abc'),
(11, 'datauser', 'abc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `msg`
--
ALTER TABLE `msg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`time_table_id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` bigint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` bigint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `msg`
--
ALTER TABLE `msg`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `time_table_id` bigint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `user_id` bigint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
