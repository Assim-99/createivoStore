-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2025 at 09:41 AM
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
-- Database: `createivostore`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `manager` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `manager`, `created_at`, `updated_at`) VALUES
(2, 'Electronics', 5, '2025-07-28 14:39:13', '2025-07-28 14:39:13'),
(3, 'Men\'s Clothing', 5, '2025-07-28 14:39:13', '2025-07-28 14:39:13'),
(4, 'Women\'s Clothing', 5, '2025-07-28 14:39:13', '2025-07-28 14:39:13'),
(5, 'Home Appliances', 5, '2025-07-28 14:39:13', '2025-07-28 14:39:13'),
(6, 'Mobiles & Tablets', 5, '2025-07-28 14:39:13', '2025-07-28 14:39:13'),
(7, 'Baby Products', 5, '2025-07-28 14:39:13', '2025-07-28 14:39:13'),
(8, 'Beauty & Personal Care', 5, '2025-07-28 14:39:13', '2025-07-28 14:39:13'),
(9, 'Furniture', 5, '2025-07-28 14:39:13', '2025-07-28 14:39:13'),
(10, 'Sports Equipment', 5, '2025-07-28 14:39:13', '2025-07-28 14:39:13'),
(11, 'Watches & Accessories', 5, '2025-07-28 14:39:13', '2025-07-28 14:39:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_manager_foreign` (`manager`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_manager_foreign` FOREIGN KEY (`manager`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
