-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2021 at 07:14 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sojikshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `cart_details_id` int(12) UNSIGNED NOT NULL,
  `user_id` int(12) NOT NULL,
  `product_id` int(12) NOT NULL,
  `quantity` int(12) NOT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL,
  `created_by` int(12) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` int(12) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart_details`
--

INSERT INTO `cart_details` (`cart_details_id`, `user_id`, `product_id`, `quantity`, `paid`, `active`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(13, 1, 1, 10, 1, 1, 1, '2021-06-22 16:59:00', NULL, '2021-06-22 16:42:59'),
(14, 1, 1, 1, 0, 1, 1, '2021-06-22 17:15:06', NULL, '2021-06-22 17:15:06'),
(15, 1, 1, 1, 0, 1, 1, '2021-06-22 18:22:07', NULL, '2021-06-22 18:22:07');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(12) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image_loc` text NOT NULL,
  `product_type` int(12) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `stock` int(12) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_by` int(12) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` int(12) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `description`, `image_loc`, `product_type`, `product_price`, `stock`, `active`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Treasure Chapter 3 (Black ver)', 'Korean Album', 'https://scontent.fmnl8-2.fna.fbcdn.net/v/t1.15752-9/203336460_973363953521905_2698180366079349229_n.png?_nc_cat=104&ccb=1-3&_nc_sid=ae9488&_nc_eui2=AeFCes0gAdn59-DInJOHzrshY4OYjYkrbG9jg5iNiStsbyCQUwo-QuCiyc4p5hy1uUJnkZZCcJYRR3rHwXnLvE97&_nc_ohc=8hFXvH7ru1UAX8c18Mh&tn=teNezYRoc3eXio8I&_nc_ht=scontent.fmnl8-2.fna&oh=1278b950810982992bd2ec252f99541a&oe=60D3663E', 1, '350.00', 10, 1, 1, '2021-06-22 17:14:17', NULL, '2021-06-20 17:20:25');

-- --------------------------------------------------------

--
-- Table structure for table `product_types`
--

CREATE TABLE `product_types` (
  `product_type_id` int(12) UNSIGNED NOT NULL,
  `product_type` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `created_by` int(12) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` int(12) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_types`
--

INSERT INTO `product_types` (`product_type_id`, `product_type`, `description`, `active`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Album', 'Kpop Albums', 1, 1, '2021-06-20 17:18:36', NULL, '2021-06-20 17:18:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(12) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `user_role` int(2) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `agreed_to_terms_and_condition` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_by` int(12) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` int(12) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `first_name`, `last_name`, `user_role`, `mobile`, `address`, `email`, `birthday`, `agreed_to_terms_and_condition`, `active`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'popopo', 'asdasd', 'asasasa', 'sasas', 3, '9052524214', 'sdadasdas', 'sasasa@ewqeqweqw.com', '2021-06-17', 0, 1, 1, '2021-06-19 16:00:00', 0, '2021-06-20 15:40:12'),
(2, 'yesyesyes', '5f4dcc3b5aa765d61d8327deb882cf99', 'meryl', 'alvarez', 3, '09123123123', 'tandang sora', 'steam.merylalvarez@gmail.com', '2021-06-11', 1, 1, 1, '2021-06-20 16:45:41', 0, '2021-06-20 15:42:15'),
(3, 'nononono', '4f354d9c5df2efe5ffd4ff3351382a3e', 'meryl', 'alvarez', 3, '09123123123123', 'tandang sora', 'steam.merylalvarez@gmail.com', '2021-07-01', 1, 1, 1, '2021-06-20 15:43:31', 0, '2021-06-20 15:43:31'),
(4, 'algren', 'f5bb0c8de146c67b44babbf4e6584cc0', 'kyle', 'dator', 3, '09275184515', '9 batasan hills q.c', 'kyleadator@gmail.com', '1999-10-19', 1, 1, 1, '2021-06-20 15:46:50', 0, '2021-06-20 15:46:50'),
(5, 'gandalang', '736351f339be6fafd453a5534e8a57a3', 'meryl', 'alvarez', 3, '09123123123', 'tandang sora panget', 'steam.merylalvarez@gmail.com', '2000-02-20', 1, 1, 1, '2021-06-20 15:50:06', 0, '2021-06-20 15:50:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`cart_details_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`product_type_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `cart_details_id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_types`
--
ALTER TABLE `product_types`
  MODIFY `product_type_id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
