-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2021 at 03:51 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

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
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `artist_id` int(12) UNSIGNED NOT NULL,
  `artist_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `created_by` int(12) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` int(12) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`artist_id`, `artist_name`, `description`, `active`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'TREASURE', 'TREASURE BAND', 1, 1, '2021-06-26 17:00:01', NULL, '2021-06-26 17:00:01'),
(2, 'TWICE', 'TWICE BAND', 1, 1, '2021-06-26 17:00:01', NULL, '2021-06-26 17:00:01');

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
(30, 1, 5, 5, 1, 1, 1, '2021-07-08 06:31:14', NULL, '2021-07-08 06:28:09'),
(32, 1, 1, 7, 0, 1, 1, '2021-09-09 06:56:27', NULL, '2021-09-09 06:55:33');

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
  `artist_id` int(12) UNSIGNED DEFAULT NULL,
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

INSERT INTO `products` (`product_id`, `name`, `description`, `image_loc`, `product_type`, `artist_id`, `product_price`, `stock`, `active`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Treasure Chapter 3 (Black ver)', 'Korean Album', 'images/treasure_black.png', 1, 1, '350.00', 10, 1, 1, '2021-06-26 17:01:48', NULL, '2021-06-20 17:20:25'),
(2, 'TIME REVOLUTION THE FIRST ESSENCE 5X (150ML)', 'Double Moisturizing BOOSTING ESSENCE helps your skin experience faster skin changes due to the yeast fermentation.\r\nWrinkle improvement & brightening + Cicaenzyme 95% PRO FERMENT\r\n\r\nCICAENZYME FERMENTATIONS+PEARL REEF EXTRACTS+RICE EXTRACTS delivers moistre to skin and make skin texture smooth, making it bright and dewy.\r\n\r\n[How To Use]\r\nAfter washing the face, pour a generous amount onto a cotton pad and wipe gently across the face. then use your hands to gently absorb the remaining product into your skin.\r\n*TIP : Depending on skin condition, apply multiple layers.\r\n\r\n[Volume]\r\n150ml\r\nbut not too sweet.', 'images/TIME REVOLUTION THE FIRST ESSENCE 5X (150ML).png', 2, NULL, '1490.00', 10, 1, 1, '2021-06-26 14:17:22', NULL, '2021-06-26 14:17:22'),
(3, '1 Pack(4pcs) Jin Jjajang Ramen 540g Korean Ramen', 'Inclusions\r\n- Net Weight : 135g/ea x 4pcs\r\n\r\n- How to cook\r\n1. Boil 600 mL (about 3 cups of water). and Add noodles. Cook for 5 minutes, stirring occasionally.\r\n2. Remove from heat. Strain noodles and leave 7~8spoons of water.\r\n3. Add Black Bean Sauce. Mix well and serve.', 'images/jinjang.png', 3, NULL, '220.00', 10, 1, 1, '2021-06-26 14:18:57', NULL, '2021-06-26 14:18:57'),
(4, 'Jin Ramen Mild And Spicy Flavor 1box (40packs)', 'Product Description\r\nThis ramen flavor from Ottogi is very popular in South Korea and comes in both cup and packet forms. The wheat flour noodles are the classic Korean ramyun that are thicker and chewier than their regular instant ramen counterparts.The flavor of the broth itself was a mix of beef and kimchi flavors.\r\n\r\n* It is a fan pack of 40 bags in one box.\r\n* Choose between spicy, mild and mix', 'images/1.png', 3, NULL, '1050.00', 10, 1, 1, '2021-06-26 16:22:20', NULL, '2021-06-26 16:22:20'),
(5, 'Eyes Wide Open (Story)', 'Eyes Wide Open (Story)', 'images/story.jpg', 1, 2, '300.00', 10, 1, 1, '2021-06-26 17:01:18', NULL, '2021-06-26 17:01:18');

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
(1, 'Album', 'Kpop Albums', 1, 1, '2021-06-20 17:18:36', NULL, '2021-06-20 17:18:36'),
(2, 'Skin Care', 'Skin Care', 1, 1, '2021-06-26 14:12:59', NULL, '2021-06-26 14:12:59'),
(3, 'Korean Food', 'Korean Food', 1, 1, '2021-06-26 14:14:38', NULL, '2021-06-26 14:14:38');

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
(5, 'gandalang', '736351f339be6fafd453a5534e8a57a3', 'meryl', 'alvarez', 3, '09123123123', 'tandang sora panget', 'steam.merylalvarez@gmail.com', '2000-02-20', 1, 1, 1, '2021-06-20 15:50:06', 0, '2021-06-20 15:50:06'),
(6, 'genina', 'f05a225e14ff5e194a8eef0c6990cefb', 'ic', 'genina', 3, 'asd', 'asd', 'kyleadator963@gmail.com', '2021-07-17', 1, 1, 1, '2021-07-01 15:40:21', 0, '2021-07-01 15:40:21'),
(7, 'meryl', 'd03fa2cc8345241bc977aabe68daea5d', 'Kyle', 'Dator', 3, 'asd', 'asd', 'kyleadator963@gmail.com', '2021-07-06', 1, 1, 1, '2021-07-05 13:34:21', 0, '2021-07-05 13:34:21'),
(8, 'jelyn', '52c7915d4e0b6d93268b1f63bfd4578b', 'jelyn', 'cruz', 3, '123123123123', '123123123', 'kyleadator852@gmail.com', '2021-07-14', 1, 1, 1, '2021-07-08 08:44:35', 0, '2021-07-08 08:44:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`artist_id`);

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
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `artist_id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `cart_details_id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_types`
--
ALTER TABLE `product_types`
  MODIFY `product_type_id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
