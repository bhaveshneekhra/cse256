-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2018 at 01:04 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vote`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `c_id` varchar(12) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `section` int(11) NOT NULL,
  `vote` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`c_id`, `first_name`, `last_name`, `section`, `vote`) VALUES
('1', 'abc', 'xyz', 1, 1),
('2', 'pqr', 'bcd', 1, 0),
('3', 'mno', '123', 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` varchar(12) NOT NULL,
  `password` varchar(20) NOT NULL,
  `section` tinyint(4) NOT NULL,
  `voted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `password`, `section`, `voted`) VALUES
('2001A7PS015', '1234', 2, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
