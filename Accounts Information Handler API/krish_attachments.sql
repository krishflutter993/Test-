-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 31, 2026 at 09:45 AM
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
-- Table structure for table `krish_attachments`
--

CREATE TABLE `krish_attachments` (
  `id` int(11) NOT NULL,
  `firebase_uid` varchar(255) NOT NULL,
  `item_id` varchar(255) NOT NULL,
  `original_name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(100) NOT NULL,
  `file_size` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `krish_attachments`
--

INSERT INTO `krish_attachments` (`id`, `firebase_uid`, `item_id`, `original_name`, `file_name`, `file_type`, `file_size`, `created_at`) VALUES
(1, 'abc123xyz', 'qwerty987', 'ChatGPT Image Jul 29, 2026, 10_29_04 AM.png', '6a6c4c0133fb3_1785482241.png', 'png', 1211571, '2026-07-31 07:17:21'),
(2, 'abc123xyz', 'qwerty987', 'ChatGPT Image Jul 29, 2026, 10_29_04 AM.png', '6a6c4c0a1ee92_1785482250.png', 'png', 1211571, '2026-07-31 07:17:30'),
(3, 'abc123xyz', 'qwerty987', 'ChatGPT Image Jul 29, 2026, 10_29_04 AM.png', '6a6c4c0b3ada9_1785482251.png', 'png', 1211571, '2026-07-31 07:17:31'),
(5, 'abc123xyz', 'qwerty987', 'ChatGPT Image Jul 29, 2026, 10_29_04 AM.png', '6a6c4c0ea5019_1785482254.png', 'png', 1211571, '2026-07-31 07:17:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `krish_attachments`
--
ALTER TABLE `krish_attachments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `krish_attachments`
--
ALTER TABLE `krish_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
