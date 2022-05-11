-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2022 at 03:22 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wed_t1`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` varchar(10) NOT NULL,
  `country_name` varchar(50) NOT NULL,
  `region_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`, `region_id`) VALUES
('AR', 'Argentina', 2),
('AU', 'Austrilia', 3),
('BE', 'Belguim', 1),
('BR', 'Brazil', 2);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` int(10) NOT NULL,
  `department_name` varchar(50) NOT NULL,
  `manager_id` int(10) NOT NULL,
  `location_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `department_name`, `manager_id`, `location_id`) VALUES
(10, 'marketing', 200, 1000),
(20, 'it', 201, 1100),
(30, 'hr', 113, 1200),
(40, 'ceo', 204, 1300);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `department_id` int(10) NOT NULL,
  `job_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `first_name`, `last_name`, `department_id`, `job_id`) VALUES
(100, 'ibrahim', 'tameme', 10, 'cheif'),
(101, 'sara', 'kteifan', 20, 'cheif2'),
(102, 'hadi', 'al-saden', 30, 'cheif3'),
(103, 'potato', 'chips', 40, 'cheif4');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `location_id` int(10) NOT NULL,
  `street_address` varchar(100) NOT NULL,
  `postal_code` int(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state_province` varchar(50) NOT NULL,
  `country_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`location_id`, `street_address`, `postal_code`, `city`, `state_province`, `country_id`) VALUES
(1000, 'efvcdfs', 324, 'amman', 'wferw', 'AR'),
(1100, 'dfsv yhnnn', 352, 'amman', 'wewvcv', 'AU'),
(1200, 'wbwbfwb', 2422, 'aaqa', 'qweds', 'BE'),
(1300, 'SDCZVZ', 342, 'QFDD', 'SFDSF', 'BR');

-- --------------------------------------------------------

--
-- Table structure for table `to_add_primary`
--

CREATE TABLE `to_add_primary` (
  `one` int(10) NOT NULL,
  `two` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`location_id`),
  ADD UNIQUE KEY `location_id` (`location_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
