-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2019 at 07:01 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `w1698415`
--

-- --------------------------------------------------------

--
-- Table structure for table `w1698415_company`
--

CREATE TABLE `w1698415_company` (
  `w1698415_compCode` int(11) NOT NULL,
  `w1698415_compName` varchar(20) DEFAULT NULL,
  `w1698415_compDescrip` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `w1698415_company`
--

INSERT INTO `w1698415_company` (`w1698415_compCode`, `w1698415_compName`, `w1698415_compDescrip`) VALUES
(10, 'Company 01', 'First compay of Database of Da'),
(20, 'Company 01', 'First compay of Database of Da'),
(30, 'Company 01', 'First compay of Database of Da'),
(40, 'Company 01', 'First compay of Database of Da');

-- --------------------------------------------------------

--
-- Table structure for table `w1698415_employee`
--

CREATE TABLE `w1698415_employee` (
  `w1698415_empId` int(11) NOT NULL,
  `w1698415_empFullName` varchar(20) DEFAULT NULL,
  `w1698415_empposition` varchar(30) DEFAULT NULL,
  `w1698415_empEmail` varchar(20) DEFAULT NULL,
  `w1698415_compCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `w1698415_employee`
--

INSERT INTO `w1698415_employee` (`w1698415_empId`, `w1698415_empFullName`, `w1698415_empposition`, `w1698415_empEmail`, `w1698415_compCode`) VALUES
(12, 'Jenn Smith', 'Java Programmer', 'jp@gmail.com', 20),
(208, 'Mike Bryan', 'Project Manager', 'mb@gmail.com', 40),
(211, 'Jenn Smith', 'Java Programmer', 'fgh@gmail.com', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `w1698415_company`
--
ALTER TABLE `w1698415_company`
  ADD PRIMARY KEY (`w1698415_compCode`);

--
-- Indexes for table `w1698415_employee`
--
ALTER TABLE `w1698415_employee`
  ADD PRIMARY KEY (`w1698415_empId`),
  ADD KEY `FK_CK_1` (`w1698415_compCode`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `w1698415_employee`
--
ALTER TABLE `w1698415_employee`
  ADD CONSTRAINT `FK_CK_1` FOREIGN KEY (`w1698415_compCode`) REFERENCES `w1698415_company` (`w1698415_compCode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
