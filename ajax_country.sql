-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2021 at 07:27 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ajax_country`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `s_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `s_id`, `name`, `status`) VALUES
(1, 1, 'Bhavnagar', 'inactive'),
(2, 1, 'Ahmadabad', 'inactive'),
(3, 1, 'Surat', 'inactive'),
(4, 1, 'Rajkot', 'inactive'),
(5, 2, 'Mumbai', 'inactive'),
(6, 2, 'Pune', 'inactive'),
(8, 3, 'Jaipur', 'inactive'),
(9, 3, 'Kota', 'inactive'),
(10, 3, 'Udaipur', 'inactive'),
(11, 4, 'Lakhnow', 'inactive'),
(12, 4, 'Noida', 'inactive'),
(13, 4, 'Gorakhpur', 'inactive'),
(14, 5, 'Chennai', 'inactive'),
(15, 5, 'Madurai', 'inactive'),
(16, 5, 'Vellore', 'inactive'),
(17, 6, 'Albany', 'inactive'),
(18, 6, 'Cayuga', 'inactive'),
(19, 7, 'Arcadia', 'inactive'),
(20, 7, 'Alhambra', 'inactive'),
(21, 8, 'San francisco', 'inactive'),
(22, 8, 'burbank', 'inactive'),
(23, 9, 'Vancouver', 'inactive'),
(24, 9, 'Richmond', 'inactive'),
(25, 10, 'Ontario', 'inactive'),
(26, 10, 'Markham', 'inactive'),
(27, 11, 'Winnipeg	', 'inactive'),
(28, 11, 'Thompson', 'inactive'),
(29, 12, 'Koza', 'inactive'),
(30, 12, 'Golbasi', 'inactive'),
(31, 13, 'duden selalesi', 'inactive'),
(32, 13, 'camkoy', 'inactive'),
(33, 14, 'akoren', 'inactive'),
(34, 14, 'kayi', 'inactive'),
(35, 15, 'henan', 'inactive'),
(36, 15, 'longhai', 'inactive'),
(37, 16, 'wuhan', 'inactive'),
(38, 16, 'shiyan', 'inactive'),
(39, 17, 'gansu	', 'inactive'),
(40, 17, 'shanghai', 'inactive'),
(41, 18, 'Geelong', 'inactive'),
(42, 18, 'Melton', 'inactive'),
(43, 19, 'Mount Gambier	', 'inactive'),
(44, 19, 'Whyalla	', 'inactive'),
(45, 20, 'Perth', 'inactive'),
(46, 20, 'Bunbury', 'inactive');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `status`) VALUES
(1, 'India', 'inactive'),
(2, 'USA', 'inactive'),
(3, 'Canada', 'inactive'),
(4, 'Turkey', 'inactive'),
(5, 'China', 'inactive'),
(6, 'Australia', 'inactive');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `c_id`, `name`, `status`) VALUES
(1, 1, 'Gujarat', 'inactive'),
(2, 1, 'Maharashtra', 'inactive'),
(3, 1, 'Rajsthan', 'inactive'),
(4, 1, 'Uttarpradesh', 'inactive'),
(5, 1, 'Tamilnadu', 'inactive'),
(6, 2, 'New York', 'inactive'),
(7, 2, 'Los Angeles', 'inactive'),
(8, 2, ' California', 'inactive'),
(9, 3, 'British Columbia', 'inactive'),
(10, 3, 'Torentu', 'inactive'),
(11, 3, 'Manitoba', 'inactive'),
(12, 4, 'Adana', 'inactive'),
(13, 4, 'Antalya', 'inactive'),
(14, 4, 'burdur', 'inactive'),
(15, 5, 'Zhengzhou', 'inactive'),
(16, 5, 'hubei', 'inactive'),
(17, 5, 'Lanzhou', 'inactive'),
(18, 6, 'Victoria', 'inactive'),
(19, 6, 'South Australia', 'inactive'),
(20, 6, 'Western Australia', 'inactive');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreign key` (`c_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `states` (`id`);

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `foreign key` FOREIGN KEY (`c_id`) REFERENCES `countries` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
