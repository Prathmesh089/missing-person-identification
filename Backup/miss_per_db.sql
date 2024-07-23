-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2023 at 08:38 AM
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
-- Database: `miss_per_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `findlog`
--

CREATE TABLE `findlog` (
  `name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `typee` varchar(100) NOT NULL,
  `datee` varchar(100) NOT NULL,
  `timee` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `miss_per_tbl`
--

CREATE TABLE `miss_per_tbl` (
  `m_sr_no` int(3) NOT NULL,
  `m_id` varchar(7) NOT NULL,
  `m_name` varchar(30) NOT NULL,
  `m_gen` varchar(7) NOT NULL,
  `m_col` varchar(10) NOT NULL,
  `m_age` varchar(3) NOT NULL,
  `m_loc` varchar(100) NOT NULL,
  `m_date` varchar(10) NOT NULL,
  `m_time` varchar(10) NOT NULL,
  `m_ret` varchar(100) NOT NULL,
  `mr_name` varchar(30) NOT NULL,
  `mr_cot` varchar(10) NOT NULL,
  `ps_id` varchar(7) NOT NULL,
  `m_state` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `miss_per_tbl`
--

INSERT INTO `miss_per_tbl` (`m_sr_no`, `m_id`, `m_name`, `m_gen`, `m_col`, `m_age`, `m_loc`, `m_date`, `m_time`, `m_ret`, `mr_name`, `mr_cot`, `ps_id`, `m_state`) VALUES
(1, '9999', 'Prathm', 'male', 'black', '41', 'shirpur', '10101002', '20202002', 'Shirpur', 'Dhiraj', '987654321', '2222', 'Pending'),
(2, '8888', 'Dhiraj', 'male', 'black', '67', 'shirpur', '10101002', '20202002', 'Shirpur', 'Dhiraj', '987654321', '2222', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `pol_sta_tbl`
--

CREATE TABLE `pol_sta_tbl` (
  `id` int(2) NOT NULL,
  `ps_id` varchar(6) NOT NULL,
  `ps_name` varchar(30) NOT NULL,
  `ps_cont` varchar(10) NOT NULL,
  `ps_email` varchar(30) NOT NULL,
  `ps_city` varchar(20) NOT NULL,
  `ps_loc` varchar(100) NOT NULL,
  `ps_pin` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pol_sta_tbl`
--

INSERT INTO `pol_sta_tbl` (`id`, `ps_id`, `ps_name`, `ps_cont`, `ps_email`, `ps_city`, `ps_loc`, `ps_pin`) VALUES
(1, '1111', 'maharaja', '123456778', 'prathm@gmail.com', 'shirpur', 'nimzari naka', 424101),
(2, '2222', 'mithuwada', '456456122', 'dhiraj@gmail.com', 'chalisgaon', 'chalisgaon', 425555),
(4, '3333', 'marathwada', '8456123795', 'raj@gmail.com', 'rampur', 'shirpur', 404040);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `miss_per_tbl`
--
ALTER TABLE `miss_per_tbl`
  ADD PRIMARY KEY (`m_sr_no`);

--
-- Indexes for table `pol_sta_tbl`
--
ALTER TABLE `pol_sta_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `miss_per_tbl`
--
ALTER TABLE `miss_per_tbl`
  MODIFY `m_sr_no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pol_sta_tbl`
--
ALTER TABLE `pol_sta_tbl`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
