-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2018 at 07:53 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college_lab`
--

-- --------------------------------------------------------

--
-- Table structure for table `emp_details`
--

CREATE TABLE `emp_details` (
  `EMP_ID` int(11) NOT NULL,
  `EMPLOYEE_ID` varchar(50) DEFAULT NULL,
  `GENDER` varchar(50) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `DATE_CREATED` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `DATE_UPDATED` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lab_details`
--

CREATE TABLE `lab_details` (
  `LAB_ID` int(11) NOT NULL,
  `LAB_NAME` varchar(200) DEFAULT NULL,
  `DEPARTMENT` varchar(200) DEFAULT NULL,
  `LAB_ROOM_NO` varchar(200) DEFAULT NULL,
  `CAPCITY` int(11) DEFAULT NULL,
  `STATUS_ID` varchar(20) DEFAULT NULL,
  `DATE_CREATED` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `DATE_UPDATED` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_details`
--

INSERT INTO `lab_details` (`LAB_ID`, `LAB_NAME`, `DEPARTMENT`, `LAB_ROOM_NO`, `CAPCITY`, `STATUS_ID`, `DATE_CREATED`, `DATE_UPDATED`) VALUES
(1, 'Computer Lab - 1 ', 'EEE', 'A-102', 60, '2', '2018-03-07 04:32:50', '2018-03-09 04:32:02'),
(2, 'Computer Lab - 2', 'CSE', 'A-103', 60, '2', '2018-03-07 04:33:19', '2018-03-07 04:33:27');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `PROFILE_ID` int(11) NOT NULL,
  `FULL_NAME` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `MOBILE` varchar(40) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `DATE_CREATED` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `DATE_UPDATED` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`PROFILE_ID`, `FULL_NAME`, `EMAIL`, `MOBILE`, `USER_ID`, `DATE_CREATED`, `DATE_UPDATED`) VALUES
(1, 'Phanindra', 'phani@test.com', '9876543210', 2, '2018-03-08 21:27:32', '2018-03-08 21:27:32');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `ROLE_ID` int(11) NOT NULL,
  `ROLE_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`ROLE_ID`, `ROLE_NAME`) VALUES
(1, 'Admin'),
(2, 'Faculty'),
(3, 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `STATUS_ID` int(11) NOT NULL,
  `STATUS` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`STATUS_ID`, `STATUS`) VALUES
(1, 'Available'),
(2, 'Booked'),
(3, 'Running'),
(4, 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `stud_details`
--

CREATE TABLE `stud_details` (
  `STUD_ID` int(11) NOT NULL,
  `HALL_TICKET` varchar(50) DEFAULT NULL,
  `BRANCH` varchar(50) DEFAULT NULL,
  `PRESENTYEAR` varchar(50) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `DATE_CREATED` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `DATE_UPDATED` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stud_details`
--

INSERT INTO `stud_details` (`STUD_ID`, `HALL_TICKET`, `BRANCH`, `PRESENTYEAR`, `USER_ID`, `DATE_CREATED`, `DATE_UPDATED`) VALUES
(1, '0a21a065', 'CSE', '2016', 2, '2018-03-08 21:27:32', '2018-03-08 21:27:32');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--
-- Error reading structure for table college_lab.time_table: #1932 - Table 'college_lab.time_table' doesn't exist in engine
-- Error reading data for table college_lab.time_table: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `college_lab`.`time_table`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `USER_ID` int(11) NOT NULL,
  `USERNAME` varchar(100) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `ROLE_ID` int(11) DEFAULT NULL,
  `DATE_CREATED` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `DATE_UPDATED` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`USER_ID`, `USERNAME`, `PASSWORD`, `ROLE_ID`, `DATE_CREATED`, `DATE_UPDATED`) VALUES
(1, 'lab_admin@test.com', '123456789', 1, '2018-03-08 21:24:43', '2018-03-08 21:24:43'),
(2, 'phani@test.com', '123456', 3, '2018-03-08 21:27:32', '2018-03-08 21:27:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emp_details`
--
ALTER TABLE `emp_details`
  ADD PRIMARY KEY (`EMP_ID`);

--
-- Indexes for table `lab_details`
--
ALTER TABLE `lab_details`
  ADD PRIMARY KEY (`LAB_ID`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`PROFILE_ID`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`ROLE_ID`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`STATUS_ID`);

--
-- Indexes for table `stud_details`
--
ALTER TABLE `stud_details`
  ADD PRIMARY KEY (`STUD_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`USER_ID`),
  ADD UNIQUE KEY `Index 2` (`USERNAME`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emp_details`
--
ALTER TABLE `emp_details`
  MODIFY `EMP_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lab_details`
--
ALTER TABLE `lab_details`
  MODIFY `LAB_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `PROFILE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `ROLE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `STATUS_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stud_details`
--
ALTER TABLE `stud_details`
  MODIFY `STUD_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
