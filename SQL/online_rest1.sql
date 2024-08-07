-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2024 at 09:01 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_rest1`
--
CREATE DATABASE IF NOT EXISTS `online_rest` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `online_rest`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'admin@gmail.com', '', '2021-04-07 08:40:28');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(17, 5, 'Egg Benedict with Spinach & Patato', 'Poached egg served over sautéed spinach and crispy potatoes, topped with hollandaise sauce.', 17.50, '66a7c19932f88.jpg'),
(18, 5, 'Fish & Chips', 'Beer battered Halibut filets served with fries, garlic bread and choice of starter', 26.00, '66a7c3ca41c53.jpg'),
(19, 5, 'Coconut Shrimp', 'with Sweet Chili sauce', 17.00, '66a7c6cdaf1e1.jpg'),
(20, 5, 'Clubhouse Sandwich', 'Layers of turkey, bacon, lettuce, and tomato on toasted bread with mayo.', 18.00, '66a7c75798ac8.jpg'),
(21, 6, 'Butter Chicken', 'Boneless tandoori chicken cooked in butter, tomato sauce, and cream. Served with salad and nan or rice.', 18.99, '66a7cc3d4935b.png'),
(22, 6, 'Chicken Tikka', 'Nuggets of marinated chicken cooked in a clay oven. Served with spicy fries, salad, and nan or rice.', 17.99, '66a7cc6e62d44.png'),
(23, 6, 'Chana', 'Chickpeas in curry sauce. Served with salad and nan or rice.', 13.75, '66a7cc8ca81a4.png'),
(24, 6, 'Paneer Masala', 'Cottage cheese cooked in a thick spicy sauce with green pepper. Served with salad and nan or rice.', 14.99, '66a7ccb05ccf8.png'),
(25, 7, 'Americano pizza', 'Ezzo Pepperoni, San Marzano tomato sauce, Pecorino, wild Italian oregano, SCADDABUSH spice', 20.99, '66a7d448dcecb.jpg'),
(26, 7, 'Italian Burger', 'Ontario Angus ground beef, fresh mozzarella, arugula, bruschetta tomatoes, balsamic reduction, basil aioli, focaccia bun', 21.97, '66a7d46f0c82e.jpg'),
(27, 7, 'San Marzano Spaghetti', 'San Marzano tomato sauce, sun-dried tomatoes, basil oil, fresh basil.', 19.97, '66a7d49540a08.jpg'),
(28, 7, 'Italian Garden Greens', 'Carrots, radish, grape tomatoes, fennel, chives, lemon honey dressing', 10.67, '66a7d4b37ee5c.jpg'),
(29, 8, 'Chicken Fried Rice', '1090 Cals', 12.99, '66a7dd36bbbef.jpg'),
(30, 8, 'Cantonese Chow Mein', '970 Cals ; Shrimp, barbecued pork, chicken & vegetables over egg noodles', 18.99, '66a7dd833adb3.jpg'),
(31, 8, 'Beef with Broccoli', '450 Cals', 15.99, '66a7dda575d4f.jpg'),
(32, 8, 'General Tao Chicken', '?1260 Cals; Sweet & mildly spicy sauce', 16.99, '66a7ddcd0756b.jpg'),
(33, 9, 'Saag Paneer', 'Saag Paneer Lunch Combo - served with a side of naan', 13.99, '66a7dec5a010a.jpg'),
(34, 9, 'Matar Panner', 'Cottage cheese and peas cooked in a spiced tomato gravy.', 13.99, '66a7df0f14f55.jpg'),
(35, 9, 'Onion Bhajia (4 pieces) ', 'Crispy fritters made with onions, chickpea flour, and spices.', 2.99, '66a7df6f8e2ba.jpg'),
(36, 9, 'Chicken Tikka Masala', 'Paneer Makhani & Chicken Tikka Masala mixed', 12.49, '66a7dfd391bde.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(1, 1, 'closed', 'done', '2024-07-28 09:41:16'),
(2, 3, 'closed', 'done', '2024-07-28 09:48:23'),
(3, 5, 'closed', 'done', '2024-07-28 10:44:03'),
(4, 6, 'closed', 'done', '2024-07-29 18:39:28'),
(5, 7, 'closed', 'done', '2024-07-29 18:39:49'),
(6, 8, 'rejected', 'cancelled', '2024-07-29 18:40:09');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(5, 4, 'Canadiana Restaurant', 'mail@canadianarest.com', '416-239-1114', 'https://canadianarest.com/', '11am', '12am', '24hr-x7', 'Canadiana Restaurant & Bar 5230 Dundas St. W Six Points Plaza Toronto, ON M9B 1A8', '66a7bf26d91fa.jpg', '2024-07-29 16:11:18'),
(6, 1, 'Tandoori Time', 'mail@tandooritime.com', '+1 416-742-7272', 'https://www.tandooritime.com/', '11am', '11pm', '24hr-x7', '1727 Albion Rd, Etobicoke ON M9V 4J9', '66a7cbed3c760.jpg', '2024-07-29 17:05:49'),
(7, 2, 'Scaddabush Italian Kitchen & Bar Dixon Rd', 'mail@scaddabush.com', '+1 416-213-1162', 'https://scaddabush.com/', '11am', '10pm', '24hr-x7', '25 Carlson Ct, Etobicoke, ON M9W 6A2, Canada', '66a7d1267bdea.jpg', '2024-07-29 17:28:06'),
(8, 3, 'Mandarin', 'mail@mandarin', '+1 416-252-5000', 'www.mandarinrestaurant.com', '11am', '11pm', '24hr-x7', '1255 The Queensway, Etobicoke ON M8Z 1S1', '66a7d81536309.jpg', '2024-07-29 17:57:41'),
(9, 1, 'Feast of Dilli', 'mail@feastofdilli', '+1 647-348-4567', 'https://feastofdillietobicoke.ca/', '10am', '12am', 'Mon-Sat', '378 Browns Line, Etobicoke, ON M8W 3T7, Canada', '66a7d92829df8.jpg', '2024-07-29 18:02:16');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Indian', '2021-04-07 08:45:20'),
(2, 'Italian', '2021-04-07 08:45:23'),
(3, 'Chinese', '2021-04-07 08:45:25'),
(4, 'American', '2021-04-07 08:45:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(6, 'tester', 'test', 'a', 'test@gmail.com', '1234567890', 'cc03e747a6afbbcbf8be7668acfebee5', 'Canada ', 1, '2024-07-29 18:37:16');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(6, 6, 'Matar Panner', 2, 13.99, 'closed', '2024-07-29 18:39:28'),
(7, 6, 'Saag Paneer', 1, 13.99, 'closed', '2024-07-29 18:39:49'),
(8, 6, 'Egg Benedict with Spinach & Patato', 1, 17.50, 'rejected', '2024-07-29 18:40:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
