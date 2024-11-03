-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2024 at 07:26 AM
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
-- Database: `project_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `review` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`id`, `username`, `product_name`, `review`, `created_at`) VALUES
(1, 'Harry', 'Long Sleeve Shirt', 'great fit', '2024-10-31 05:18:44'),
(2, 'Harry', 'Slim Fit Shirt', 'good quality ', '2024-10-31 05:18:44'),
(3, 'Harry', 'Google Pixel 8 Pro', 'strong processor', '2024-10-31 05:18:44'),
(4, 'Harry', 'Long Sleeve Shirt', 'great fit', '2024-10-31 05:22:31'),
(5, 'Harry', 'Slim Fit Shirt', 'good quality ', '2024-10-31 05:22:31'),
(6, 'Harry', 'Google Pixel 8 Pro', 'strong processor', '2024-10-31 05:22:31'),
(7, 'Harry', 'Long Sleeve Shirt', 'great fit', '2024-10-31 05:23:04'),
(8, 'Harry', 'Slim Fit Shirt', 'good quality ', '2024-10-31 05:23:04'),
(9, 'Harry', 'Google Pixel 8 Pro', 'strong processor', '2024-10-31 05:23:04'),
(10, 'Harry', 'Long Sleeve Shirt', 'fdf', '2024-10-31 05:24:19'),
(11, 'Harry', 'Slim Fit Shirt', 'hy', '2024-10-31 05:24:19'),
(12, 'Harry', 'Google Pixel 8 Pro', 'jukyuk', '2024-10-31 05:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Karan', 'karansatpute34@gmail.com', 'karan@123'),
(2, 'Varun', 'varun65@gmail.com', 'varun@123'),
(3, 'Rashmi', 'rashmiadlak23@gmail.com', 'rashmi@123'),
(4, 'Harry', 'harry55@gmail.com', 'harry@123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
