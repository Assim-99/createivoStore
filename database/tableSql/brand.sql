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
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', 'https://logo.clearbit.com/samsung.com', '2025-07-28 14:30:26', '2025-07-28 14:30:26'),
(2, 'Sony', 'https://logo.clearbit.com/sony.com', '2025-07-28 14:30:26', '2025-07-28 14:30:26'),
(3, 'LG', 'https://logo.clearbit.com/lg.com', '2025-07-28 14:30:26', '2025-07-28 14:30:26'),
(4, 'Nike', 'https://logo.clearbit.com/nike.com', '2025-07-28 14:30:26', '2025-07-28 14:30:26'),
(5, 'Adidas', 'https://logo.clearbit.com/adidas.com', '2025-07-28 14:30:26', '2025-07-28 14:30:26'),
(6, 'Levi\'s', 'https://logo.clearbit.com/levis.com', '2025-07-28 14:30:26', '2025-07-28 14:30:26'),
(7, 'Zara', 'https://logo.clearbit.com/zara.com', '2025-07-28 14:30:26', '2025-07-28 14:30:26'),
(8, 'H&M', 'https://logo.clearbit.com/hm.com', '2025-07-28 14:30:26', '2025-07-28 14:30:26'),
(9, 'Forever 21', 'https://logo.clearbit.com/forever21.com', '2025-07-28 14:30:26', '2025-07-28 14:30:26'),
(10, 'Bosch', 'https://logo.clearbit.com/bosch.com', '2025-07-28 14:30:26', '2025-07-28 14:30:26'),
(11, 'Philips', 'https://logo.clearbit.com/philips.com', '2025-07-28 14:30:26', '2025-07-28 14:30:26'),
(12, 'Panasonic', 'https://logo.clearbit.com/panasonic.com', '2025-07-28 14:30:26', '2025-07-28 14:30:26'),
(13, 'Apple', 'https://logo.clearbit.com/apple.com', '2025-07-28 14:30:26', '2025-07-28 14:30:26'),
(14, 'Xiaomi', 'https://logo.clearbit.com/mi.com', '2025-07-28 14:30:26', '2025-07-28 14:30:26'),
(15, 'OnePlus', 'https://logo.clearbit.com/oneplus.com', '2025-07-28 14:30:26', '2025-07-28 14:30:26'),
(16, 'Pampers', 'https://logo.clearbit.com/pampers.com', '2025-07-28 14:30:26', '2025-07-28 14:30:26'),
(17, 'Chicco', 'https://logo.clearbit.com/chicco.com', '2025-07-28 14:30:26', '2025-07-28 14:30:26'),
(18, 'Johnson\'s', 'https://logo.clearbit.com/johnsonsbaby.com', '2025-07-28 14:30:26', '2025-07-28 14:30:26'),
(19, 'L\'Oréal', 'https://logo.clearbit.com/loreal.com', '2025-07-28 14:30:26', '2025-07-28 14:30:26'),
(20, 'Nivea', 'https://logo.clearbit.com/nivea.com', '2025-07-28 14:30:26', '2025-07-28 14:30:26'),
(21, 'Maybelline', 'https://logo.clearbit.com/maybelline.com', '2025-07-28 14:30:26', '2025-07-28 14:30:26'),
(22, 'IKEA', 'https://logo.clearbit.com/ikea.com', '2025-07-28 14:30:26', '2025-07-28 14:30:26'),
(23, 'Ashley', 'https://logo.clearbit.com/ashleyfurniture.com', '2025-07-28 14:30:26', '2025-07-28 14:30:26'),
(24, 'Home Center', 'https://logo.clearbit.com/homecentre.com', '2025-07-28 14:30:26', '2025-07-28 14:30:26'),
(25, 'Decathlon', 'https://logo.clearbit.com/decathlon.com', '2025-07-28 14:30:26', '2025-07-28 14:30:26'),
(26, 'Puma', 'https://logo.clearbit.com/puma.com', '2025-07-28 14:30:26', '2025-07-28 14:30:26'),
(27, 'Under Armour', 'https://logo.clearbit.com/underarmour.com', '2025-07-28 14:30:26', '2025-07-28 14:30:26'),
(28, 'Fossil', 'https://logo.clearbit.com/fossil.com', '2025-07-28 14:30:26', '2025-07-28 14:30:26'),
(29, 'Casio', 'https://logo.clearbit.com/casio.com', '2025-07-28 14:30:26', '2025-07-28 14:30:26'),
(30, 'Rolex', 'https://logo.clearbit.com/rolex.com', '2025-07-28 14:30:26', '2025-07-28 14:30:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
