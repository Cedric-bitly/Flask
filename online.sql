-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2026 at 10:06 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_id` int(50) NOT NULL,
  `emp_name` text NOT NULL,
  `hire_date` date NOT NULL,
  `salary` int(50) NOT NULL,
  `dept_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_name`, `hire_date`, `salary`, `dept_id`) VALUES
(1, 'John Smith', '2023-01-15', 65000, 1),
(2, 'Sarah Johnson', '2023-02-01', 72000, 2),
(3, 'Michael Brown', '2023-03-10', 58000, 1),
(4, 'Emily Davis', '2022-11-20', 68000, 3),
(5, 'David Wilson', '2023-04-05', 75000, 2),
(6, 'Jessica Martinez', '2022-09-12', 61000, 1),
(7, 'James Anderson', '2023-05-18', 70000, 2),
(8, 'Jennifer Taylor', '2022-08-25', 64000, 3),
(9, 'Robert Thomas', '2023-06-03', 59000, 1),
(10, 'Linda Jackson', '2022-10-14', 73000, 2),
(11, 'William White', '2023-07-22', 66000, 3),
(12, 'Mary Harris', '2022-12-08', 62000, 3),
(13, 'Richard Clark', '2023-08-11', 69000, 1),
(14, 'Patricia Lewis', '2022-07-30', 71000, 2),
(15, 'Christopher Lee', '2023-09-15', 60000, 1),
(16, 'Barbara Walker', '2022-06-19', 67000, 3),
(17, 'Daniel Hall', '2023-10-02', 74000, 1),
(18, 'Nancy Allen', '2022-05-27', 63000, 2),
(19, 'Matthew Young', '2023-11-12', 58000, 1),
(20, 'Karen King', '2022-04-16', 72000, 3),
(21, 'Joseph Wright', '2023-12-20', 65000, 1),
(22, 'Lisa Scott', '2022-03-09', 69000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `novels`
--

CREATE TABLE `novels` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `publicationyear` year(4) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `novels`
--

INSERT INTO `novels` (`id`, `name`, `author`, `publisher`, `publicationyear`, `price`, `stock`, `photo`) VALUES
(1, 'Twilight', 'Stephanie Meyer', 'Little Brown and Company', '2005', 1350.00, 7, 'T1.jpg'),
(2, 'Hunger Games', 'Suzanne Collins', 'Scholastic press', '2008', 1200.00, 8, 'H1.jpg'),
(3, 'Harry Potter', 'J.K. Rowling', 'Bloomsbury', '1997', 1410.00, 9, 'H2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `smartphones`
--

CREATE TABLE `smartphones` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `storage` varchar(50) NOT NULL,
  `ram` varchar(50) NOT NULL,
  `battery` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `smartphones`
--

INSERT INTO `smartphones` (`id`, `name`, `brand`, `model`, `storage`, `ram`, `battery`, `price`, `stock`, `photo`) VALUES
(1, 'Samsung S25 ultra', 'Samsung', 'Ultra', '256GB', '12', '7100Amh', 171000.00, 45, 's1.jpg'),
(2, 'Infinix Hot 60i', 'Infinix', 'Pro', '256GB', '12', '5160Amh', 16800.00, 60, 'smartphone.jpg'),
(3, 'Infinix Hot 60i', 'Infinix', 'Pro', '256GB', '12', '5160Amh', 16800.00, 60, 'smartphone.jpg'),
(4, 'Reddmi Note15 Pro', 'Xiaomi', 'Pro', '256GB', '12', '6260Amh', 17399.00, 100, 'R1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `novels`
--
ALTER TABLE `novels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartphones`
--
ALTER TABLE `smartphones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `novels`
--
ALTER TABLE `novels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `smartphones`
--
ALTER TABLE `smartphones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
