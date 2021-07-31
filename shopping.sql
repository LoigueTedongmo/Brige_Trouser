-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2021 at 06:00 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` text NOT NULL,
  `specs` text NOT NULL,
  `brand` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `status`, `specs`, `brand`, `price`, `created_at`, `updated_at`) VALUES
(2, 'Smart Television', 'in stock', 'Smart Tv,128GB internal storage', 'Hisense', '180,000 frs', '2021-03-17 11:16:17', '2021-07-30 15:57:14'),
(3, 'Palm Beach Chairman Black Plain', 'not in stock', '\r\nWool Performance Suit Separates. Black. 52% Wool 47% Poly 1% Lycra, 2 button, notch lapel, center vent, full lined.', ' \r\n\r\nWool Performance', ' 105,000 frs	', '2021-07-30 16:54:07', '2021-07-30 16:54:07'),
(4, 'PALM BEACH Khaki Poplin Suit Separate Jacket', '0', 'Palm Beach Bradley Khaki Poplin Suit Separate Jacket\r\n\r\n55% Combed Cotton, 45% Polyester\r\nImported\r\nDry Clean Only\r\nKhaki poplin 2 button notch lapel center vented coat\r\nLight weight poplin suit, perfect for summer, destination wedding, every day wear. Classic fit.', 'Poplin ', ' 200,000 frs	', '2021-07-30 16:54:07', '2021-07-30 16:54:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `updated_at`, `created_at`) VALUES
(10, 'tedongmo loigue', 'loigue.tedong@gmail.com', 'eaaa3c3cac2590533b55d5f5e3a7781f', '2021-07-30 14:27:20', '2021-07-30 14:27:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
