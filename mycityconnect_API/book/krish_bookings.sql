-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 18, 2026 at 09:10 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mycityconnect`
--

-- --------------------------------------------------------

--
-- Table structure for table `krish_bookings`
--

CREATE TABLE `krish_bookings` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `booking_date` date NOT NULL,
  `booking_time` varchar(50) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `status` enum('Pending','Confirmed','Completed','Cancelled') DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `krish_bookings`
--

INSERT INTO `krish_bookings` (`id`, `service_id`, `service_name`, `customer_name`, `phone`, `email`, `address`, `booking_date`, `booking_time`, `notes`, `status`, `created_at`) VALUES
(2, 1, 'Electrician', 'nnbbb', '9876543210', 'krishna@gmail.com', 'Ahmedabad', '2026-06-20', '10:30 AM', 'Urgent Work', 'Pending', '2026-06-18 06:33:02'),
(4, 1, 'Electrician', 'nnbbb', '9876543210', 'krishna@gmail.com', 'Ahmedabad', '2026-06-20', '10:30 AM', 'Urgent Work', 'Pending', '2026-06-18 06:33:03'),
(5, 1, 'Electrician', 'nnbbb', '9876543210', 'krishna@gmail.com', 'Ahmedabad', '2026-06-20', '10:30 AM', 'Urgent Work', 'Pending', '2026-06-18 06:33:04'),
(6, 1, 'Electrician', 'nnbbb', '9876543210', 'krishna@gmail.com', 'Ahmedabad', '2026-06-20', '10:30 AM', 'Urgent Work', 'Pending', '2026-06-18 06:33:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `krish_bookings`
--
ALTER TABLE `krish_bookings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `krish_bookings`
--
ALTER TABLE `krish_bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
