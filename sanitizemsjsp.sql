-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2022 at 09:04 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sanitizemsjsp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(5) NOT NULL,
  `ServiceID` int(10) DEFAULT NULL,
  `RequestID` int(10) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `DateofSanitization` date DEFAULT NULL,
  `TimeofSanitization` time DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `State` varchar(200) DEFAULT NULL,
  `City` varchar(200) DEFAULT NULL,
  `Message` varchar(250) DEFAULT NULL,
  `RequestDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `ServiceID`, `RequestID`, `Name`, `Email`, `DateofSanitization`, `TimeofSanitization`, `Address`, `MobileNumber`, `State`, `City`, `Message`, `RequestDate`, `Remark`, `Status`, `UpdationDate`) VALUES
(3, 3, 40819796, 'Rahul Sinha', 'rahul@gmail.com', '2022-02-22', '18:00:00', 'Ujjain', 7896541230, 'Madhya Pradesh', 'Ujjain', 'I want to sanitize my car', '2022-02-22 12:19:43', 'your request has been completed', 'Request has been Completed', '2022-02-23 07:41:31'),
(4, 4, 85156355, 'abc', 'abc@gmail.com', '2022-02-24', '10:00:00', 'abcd', 1234567890, 'abd', 'abcd', 'adjasdjs', '2022-02-23 09:37:52', 'your request has been rejected', 'Request has been rejected', '2022-02-23 19:40:44'),
(5, 3, 47843473, 'Mohit Yadav', 'mohit123@gmail.com', '2022-02-27', '17:20:00', '230 C Sector Indrapuri', 9200136383, 'MP', 'Bhopal', 'I nee service on time', '2022-02-23 19:47:19', 'On the way', 'Team On The Way', '2022-02-23 19:56:29');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(5) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `Price` decimal(10,0) DEFAULT NULL,
  `ServiceDetail` varchar(500) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `ServiceName`, `Price`, `ServiceDetail`, `CreationDate`, `image`) VALUES
(3, 'Car Sanitization', '2500', 'If you want to sanitize car then contact me', '2022-02-22 07:29:04', '3.jpg'),
(4, 'Office Sanitization', '3500', 'Contact me if you want to sanitize the office', '2022-02-22 07:29:55', '4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tracking`
--

CREATE TABLE `tracking` (
  `id` int(5) NOT NULL,
  `RequestID` int(10) DEFAULT NULL,
  `Remark` varchar(350) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tracking`
--

INSERT INTO `tracking` (`id`, `RequestID`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, 85156355, 'your request on the way', 'Team On The Way', '2022-02-23 09:49:22'),
(2, 85156355, 'Request in process', 'Request is inprocess', '2022-02-23 10:15:21'),
(3, 85156355, 'your request has been rejected', 'Request has been rejected', '2022-02-23 19:40:44'),
(4, 47843473, 'On the way', 'Team On The Way', '2022-02-23 19:56:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracking`
--
ALTER TABLE `tracking`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tracking`
--
ALTER TABLE `tracking`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
