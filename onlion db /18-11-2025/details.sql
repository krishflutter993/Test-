-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 18, 2025 at 06:06 AM
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
-- Database: `details`
--

-- --------------------------------------------------------

--
-- Table structure for table `krish_products`
--

CREATE TABLE `krish_products` (
  `id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `p_des` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `krish_products`
--

INSERT INTO `krish_products` (`id`, `p_name`, `p_price`, `p_des`) VALUES
(6, 'Samsung', '15000', '8GB RAM, 128GB Storage, 5000mAh battery'),
(7, 'iPhone 13', '48000', '128GB Storage, A15 Bionic Chip, 6.1-inch Display'),
(8, 'Realme Narzo 50', '14000', '4GB RAM, 64GB Storage, 5000mAh Battery'),
(9, 'Vivo Y21', '14000', '4GB RAM, 64GB Storage, 5000mAh Battery'),
(10, 'OPPO A57', '12000', '4GB RAM, 64GB Storage, 5000mAh Battery, 33W Fast Charging');

-- --------------------------------------------------------

--
-- Table structure for table `krish_user`
--

CREATE TABLE `krish_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` int(11) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `krish_user`
--

INSERT INTO `krish_user` (`id`, `name`, `email`, `mobile`, `password`) VALUES
(2, 'don', 'd@gmail.com', 1324465346, '12345'),
(4, 'd', 'do@gmail.com', 1324465346, '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `krish_products`
--
ALTER TABLE `krish_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `krish_user`
--
ALTER TABLE `krish_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `krish_products`
--
ALTER TABLE `krish_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `krish_user`
--
ALTER TABLE `krish_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
