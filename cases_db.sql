-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2020 at 05:14 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cases_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_people_cases`
--

CREATE TABLE `tbl_people_cases` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `case_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_people_cases`
--

INSERT INTO `tbl_people_cases` (`id`, `Name`, `case_type`) VALUES
(1, 'john', 'suspected_case'),
(3, 'mary', 'tested_positive'),
(4, 'munthu', 'quarantine'),
(5, 'mr z', 'quarantine'),
(6, 'ghuj', 'tested_positive'),
(7, 'kaya', 'quarantine'),
(8, 'amwene', 'suspected_case'),
(9, 'yoza', 'suspected_case'),
(10, 'jhkl', 'quarantine'),
(11, 'hkiuuu', 'quarantine'),
(12, 'huopppp', 'quarantine');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_people_cases`
--
ALTER TABLE `tbl_people_cases`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_people_cases`
--
ALTER TABLE `tbl_people_cases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
