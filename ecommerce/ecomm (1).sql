-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2021 at 02:22 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(5, 'Meat and Fish', ''),
(6, 'Baby Care', ''),
(7, 'Fruits and Vegetables', ''),
(8, 'Ornaments', ''),
(9, 'Groceries', ''),
(10, 'beverage', ''),
(11, 'cosmetics', ''),
(12, 'health product', '');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pmode` varchar(50) NOT NULL,
  `products` varchar(255) NOT NULL,
  `amount_paid` varchar(100) NOT NULL,
  `user_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `pmode`, `products`, `amount_paid`, `user_id`) VALUES
(14, 'Md. Akbar Hossain', 'smakbor33@gmail.com', '01713240671', 'ggdsfg', 'cod', '30(1), 31(1)', '33', '24');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(30, 5, 'chicken', '<p>Farm (per kg)</p>\r\n', 'chicken', 200, 'chicken.jpg', '2021-03-11', 1),
(31, 5, 'Shrimp', '<p>Fresh srimp ( per kg )</p>\r\n', 'shrimp', 500, 'shrimp.jpg', '2021-03-10', 4),
(32, 6, 'baby milk powder', '<p>Babycare, Lactogen, Cerelac ( 400 gm )</p>\r\n', 'baby-milk-powder', 650, 'baby-milk-powder.png', '2021-03-03', 1),
(33, 7, 'Mango', '<p>Fresh amropali ( per kg )</p>\r\n', 'mango', 90, 'mango_1612787514.jpg', '2021-03-03', 1),
(34, 7, 'Litchi', '<p>Fresh ( 100 pc )</p>\r\n', 'litchi', 250, 'litchi.jpg', '2021-02-24', 2),
(35, 7, 'Malta', '<p>Fresh (per kg)</p>\r\n', 'malta', 150, '', '0000-00-00', 0),
(36, 9, 'Oil', '<p>Soyabean oil ( 5lt )</p>\r\n', 'oil', 500, '', '0000-00-00', 0),
(37, 7, 'potato ', '', 'potato', 10, '', '0000-00-00', 0),
(38, 12, 'medicine', '', 'medicine', 10, '', '0000-00-00', 0),
(39, 10, 'milk', '', 'milk', 100, '', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'SNNA', 'Projects', '', '', 'supershop.jpg', 1, '', '', '2018-05-01'),
(9, 'nawrinzaman58@gmail.com', '$2y$10$gwEZyrBdQy5k8aFSB9rgBOK/Zne0i94TX0.7tp1b6Uo49yASyWYGW', 0, 'Nawrin', 'Zaman', 'Dhaka', '01718841875', 'zaman@.jpg', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2018-05-09'),
(12, 'Shammi@gmail.com', '$2y$10$ge6grOjsqDKNeUEvnXsXruKnpM5fdh.5fR9cxqS8R67muWvYQZWxW', 0, 'Shammi', 'Shammi', 'Dhaka', '01712147864', 'Shammi@.jpg', 1, '', '', '2018-07-09'),
(15, 'najifamusgan@gmail.com', '$2y$10$JFuatUqnqOxBVCrFOyM3I./AiYCFCaYRVREdVys5t9FAZufYrwaNe', 0, 'Najifa', 'Musgan', 'Dhaka', '01567366895', '', 1, '', '', '2021-02-08'),
(17, 'anianoya@gmail.com', '$2y$10$rVzxD1qQmXuB1.kCN5EIveUbDCetHI2mIRlKnvKN7Av8lj4Dj.iPu', 0, 'Ani', 'Anoya', '', '', '', 1, 'iYMskLSE3al7', '', '2021-03-03'),
(18, 'najifamusga1n@gmail.com', '$2y$10$c/OI2gDFK49Pou3oaZYnAu/o1aWBHrI1t9fjMx5iuRkpacn/qRQGK', 0, 'Najifa', 'Musgan', '', '', '', 0, 'G1lAkuW3H4XI', '', '2021-03-03'),
(19, 'najifamusga1n1@gmail.com', '$2y$10$dM6V1UaVVjHm0fQN7/f5/OhJInalOKrZv33TPWbsgz6Anrg/2ZAja', 0, 'Najifa', 'Musgan', '', '', '', 0, '4RWyVuBZDxg3', '', '2021-03-03'),
(20, 'nusratjahananka@gmail.com', '$2y$10$ntTn02mQiUSh34JB9wYC3.bKwoQKAl1dsPiLE7bZQk3qYqkO0id3K', 0, 'nusrat', 'jahan', '', '', '', 0, 'ehFqSNgjZT8Q', '', '2021-03-03'),
(24, 'smakbor33@gmail.com', '$2y$10$39dWKMOB9K6xnxILQ/NwRuTAn8pRWdj/VEUhZlrJoSX4yLFJrfsHy', 0, 'Akbar ', 'Hossain', '', '', '', 1, 'Mh9VxTDdzj6N', '', '2021-03-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
