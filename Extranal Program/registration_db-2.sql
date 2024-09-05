-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 05, 2024 at 02:02 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(100) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Massage` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Massage`) VALUES
('Anjana deashan', 'Anjadeashan@gmail.com', 'trfd'),
('Anjana deashan', 'Anjadeashan@gmail.com', 'sdfghjk'),
('Anjana deashan', 'Anjadeashan@gmail.com', 'sdfghjk'),
('Anjana deashan', 'Anjadeashan@gmail.com', 'asdfghjnnjik,'),
('jgj', 'Anjadeashan@gmail.com', 'sdfghjk'),
('Anjana deashan', 'Anjadeashan@gmail.com', 'hghjk'),
('Anjana deashan', 'Anjadeashan@gmail.com', 'sxcfghj'),
('Anjana deashan', 'Anjadeashan@gmail.com', 'aaaaa'),
('Anjana deashan', 'Anjadeashan@gmail.com', 'bbbbb'),
('Anjana deashan', 'Anjadeashan@gmail.com', 'eee');

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `nic` varchar(12) NOT NULL,
  `dob` date NOT NULL,
  `surname` varchar(100) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `address` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `telephone` varchar(15) DEFAULT NULL,
  `exam_year` varchar(4) NOT NULL,
  `stream` varchar(50) NOT NULL,
  `index_no` varchar(20) NOT NULL,
  `zscore` varchar(10) NOT NULL,
  `subject1` varchar(100) DEFAULT NULL,
  `result1` varchar(2) DEFAULT NULL,
  `subject2` varchar(100) DEFAULT NULL,
  `result2` varchar(2) DEFAULT NULL,
  `subject3` varchar(100) DEFAULT NULL,
  `result3` varchar(2) DEFAULT NULL,
  `subject4` varchar(100) DEFAULT NULL,
  `result4` varchar(2) DEFAULT NULL,
  `subject5` varchar(100) DEFAULT NULL,
  `result5` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `name`, `nic`, `dob`, `surname`, `gender`, `address`, `email`, `mobile`, `telephone`, `exam_year`, `stream`, `index_no`, `zscore`, `subject1`, `result1`, `subject2`, `result2`, `subject3`, `result3`, `subject4`, `result4`, `subject5`, `result5`) VALUES
(2, 'dinuwan chamishka', '200031402561', '2025-10-23', 'poonHlge', 'Male', 'awissawella', 'chamishka@gmail.com', '0769963383', '0362239476', '2019', 'tech', '123123', '2.433', 'it', 'B', 'iq', 'B', 'sss', 'B', 'fg', 'B', 'sd', '78'),
(3, 'Anjana deashan kulasingha', '200220703538', '2002-07-25', 'Deashan Kulasingha', 'Male', 'Awisssawella', 'Anjanadeashan@gmail.com', '0755161130', '0362230475', '2022', 'comerce', '7195', '1.3204', 'Accounts', 'A', 'It', 'B', 'BS', 'C', 'english', 'F', 'comon test', '52'),
(4, 'hffdhfg', '543', '2024-09-03', 'kjhkjhku', 'Male', 'asdfasfsdf', 'asdas@gmail.com', '123123', '123123', '123', 'vvdv', '12312', '34', 'awe', 'A', 'qwe', 'B', 'qwe', 'B', 'ert', 'B', 'pdf', '23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
