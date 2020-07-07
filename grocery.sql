-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2020 at 04:35 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL,
  `vendor_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`, `vendor_name`) VALUES
(12, 'Nestle', 'malbok@gmail.com'),
(13, 'Other', 'malbok@gmail.com'),
(14, 'kitchen', 'malbok@gmail.com'),
(15, 'household', 'malbok@gmail.com'),
(16, 'personal care', 'malbok@gmail.com'),
(17, 'bakery, eggs and meat', 'malbok@gmail.com'),
(18, 'snacks', 'malbok@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL,
  `vendor_name` text NOT NULL,
  `cat_name` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `vendor_name`, `cat_name`) VALUES
(15, 'water and beverages', 'malbok@gmail.com', 'water_and_beverages'),
(16, 'fruits and vegetables', 'malbok@gmail.com', 'fruits_and_vegetables'),
(17, 'staples', 'malbok@gmail.com', 'staples'),
(18, 'branded food', 'malbok@gmail.com', 'branded_food'),
(19, 'breakfast and cereal', 'malbok@gmail.com', 'breakfast_and_cereal'),
(20, 'snacks', 'malbok@gmail.com', 'snacks'),
(21, 'spices', 'malbok@gmail.com', 'spices'),
(22, 'sweets', 'malbok@gmail.com', 'sweets'),
(23, 'pickle and condiment', 'malbok@gmail.com', 'pickle_and_condiment'),
(24, 'instant food', 'malbok@gmail.com', 'instant_food'),
(25, 'dryfruit', 'malbok@gmail.com', 'dryfruit'),
(27, 'ayurvedic', 'malbok@gmail.com', 'ayurvedic'),
(28, 'babycare', 'malbok@gmail.com', 'babycare'),
(29, 'cosmetics', 'malbok@gmail.com', 'cosmetics'),
(30, 'deo and perfumes', 'malbok@gmail.com', 'deo_and_perfumes'),
(31, 'haircare', 'malbok@gmail.com', 'haircare'),
(32, 'oralcare', 'malbok@gmail.com', 'oralcare'),
(33, 'personal hygiene', 'malbok@gmail.com', 'personal_hygiene'),
(34, 'skincare', 'malbok@gmail.com', 'skincare'),
(35, 'fashion accessories', 'malbok@gmail.com', 'fashion_accessories'),
(36, 'grooming tools', 'malbok@gmail.com', 'grooming_tools'),
(37, 'shaving needs', 'malbok@gmail.com', 'shaving_needs'),
(38, 'sanitary needs', 'malbok@gmail.com', 'sanitary_needs'),
(39, 'noodles and pasta', 'malbok@gmail.com', 'noodles_and_pasta'),
(41, 'biscuit and cookies', 'malbok@gmail.com', 'biscuit_and_cookies'),
(42, 'sauces and ketchups', 'malbok@gmail.com', 'sauces_and_ketchups'),
(43, 'chocolates and candies', 'malbok@gmail.com', 'chocolates_and_candies'),
(44, 'frozen veggies', 'malbok@gmail.com', 'frozen_veggies'),
(45, 'snacks and namkeen', 'malbok@gmail.com', 'snacks_and_namkeen'),
(46, 'indian mithai', 'malbok@gmail.com', 'indian_mithai'),
(47, 'breads and buns', 'malbok@gmail.com', 'breads_and_buns'),
(48, 'dairy', 'malbok@gmail.com', 'dairy'),
(49, 'cakes and pastries', 'malbok@gmail.com', 'cakes_and_pastries'),
(50, 'rusk and khari', 'malbok@gmail.com', 'rusk_and_khari'),
(51, 'eggs', 'malbok@gmail.com', 'eggs'),
(52, 'poultry', 'malbok@gmail.com', 'poultry'),
(53, 'mutton and lamb', 'malbok@gmail.com', 'mutton_and_lamb'),
(54, 'fish and seafood', 'malbok@gmail.com', 'fish_and_seafood'),
(55, 'pork and others', 'malbok@gmail.com', 'pork_and_others'),
(56, 'icecream', 'malbok@gmail.com', 'icecream'),
(57, 'cleaning accessories', 'malbok@gmail.com', 'cleaning_accessories'),
(58, 'cookwear', 'malbok@gmail.com', 'cookwear'),
(59, 'detergents', 'malbok@gmail.com', 'detergents'),
(60, 'gardening', 'malbok@gmail.com', 'gardening'),
(61, 'kitchen and dining', 'malbok@gmail.com', 'kitchen_and_dining'),
(62, 'kitchenwear', 'malbok@gmail.com', 'kitchenwear'),
(63, 'petcare', 'malbok@gmail.com', 'petcare'),
(64, 'plasticwear', 'malbok@gmail.com', 'plasticwear'),
(65, 'pooja needs', 'malbok@gmail.com', 'pooja_needs'),
(66, 'safety accessories', 'malbok@gmail.com', 'safety_accessories'),
(67, 'festive decoratives', 'malbok@gmail.com', 'festive_decoratives'),
(68, 'toys and gifts', 'malbok@gmail.com', 'toys_and_gifts');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(6) UNSIGNED NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `pincode` varchar(30) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `email`, `street`, `city`, `pincode`, `password`, `phone`) VALUES
(1, 'naman', 'naman@gmail.com', 'D6', 'vit', '632014', '12345', '9876543210'),
(2, 'rushikesh', 'rushikesh@gmail.com', 'vit mens hostel', 'vellore', '632014', '12345', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `id` int(6) UNSIGNED NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `pincode` varchar(30) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`id`, `username`, `email`, `street`, `city`, `pincode`, `phone`) VALUES
(1, 'delivery_boy', 'delivery@gmail.com', 'vit', 'vellore', '632014', '1234567890'),
(2, 'delivery_boy_2', 'delivery1@gmail.com', 'vit mens hostel', 'vellore', '632014', '1221111122'),
(95, 'delivery_boy_3', 'something@gmail.com', 'some_street', 'some city', '632014', '0123456789'),
(96, 'del_4', 'del__4_4', 'vit', 'vellore', '632014', '0987667890');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(100) NOT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `product_price` int(100) DEFAULT NULL,
  `product_qty` int(100) DEFAULT NULL,
  `product_image` text,
  `vendor_name` text,
  `payment_id` text,
  `payment_status` text,
  `buyer_email` text,
  `buyer_phone` text,
  `buyer_name` text,
  `order_date` varchar(250) DEFAULT NULL,
  `delivery_status` text,
  `shipping_method` varchar(250) DEFAULT NULL,
  `buyer_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `product_title`, `product_price`, `product_qty`, `product_image`, `vendor_name`, `payment_id`, `payment_status`, `buyer_email`, `buyer_phone`, `buyer_name`, `order_date`, `delivery_status`, `shipping_method`, `buyer_address`) VALUES
(39, 'Ribbon (1 pc)', 15, 1, 'images/1560342521_of18.png', 'naman@gmail.com', 'COD666012840', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:26:33', 'delivery_boy_2', 'Express', 'D6, vit, 632014'),
(40, 'Clips (10 pc)', 20, 1, 'images/1560342587_of20.png', 'rushikesh@gmail.com', 'COD666012840', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:26:33', 'ND', 'Express', 'D6, vit, 632014'),
(41, 'Soya Chunks (1Kg)', 55, 1, 'images/1560280805_of3.png', 'naman@gmail.com', 'COD666012840', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:26:33', 'delivery_boy_2', 'Express', 'D6, vit, 632014'),
(42, 'Ribbon (1 pc)', 15, 1, 'images/1560342521_of18.png', 'naman@gmail.com', 'COD417530873', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:27:11', 'ND', 'Express', 'D6, vit, 632014'),
(43, 'Ribbon (1 pc)', 15, 1, 'images/1560342521_of18.png', 'naman@gmail.com', 'COD356572164', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:27:53', 'ND', 'Express', 'D6, vit, 632014'),
(44, 'Clips (10 pc)', 20, 1, 'images/1560342587_of20.png', 'rushikesh@gmail.com', 'COD356572164', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:27:53', 'ND', 'Express', 'D6, vit, 632014'),
(45, 'Soya Chunks (1Kg)', 55, 1, 'images/1560280805_of3.png', 'naman@gmail.com', 'COD356572164', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:27:53', 'ND', 'Express', 'D6, vit, 632014'),
(46, 'Sunflower Oil (5Kg)', 100, 1, 'images/1560280713_of1.png', 'rushikesh@gmail.com', 'COD356572164', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:27:53', 'ND', 'Express', 'D6, vit, 632014'),
(47, 'Kabuli Chana (1Kg)', 45, 1, 'images/1560280766_of2.png', 'rushikesh@gmail.com', 'COD356572164', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:27:53', 'ND', 'Express', 'D6, vit, 632014'),
(48, 'Ribbon (1 pc)', 15, 1, 'images/1560342521_of18.png', 'naman@gmail.com', 'COD782700800', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:28:15', 'ND', 'Express', 'D6, vit, 632014'),
(49, 'Clips (10 pc)', 20, 1, 'images/1560342587_of20.png', 'rushikesh@gmail.com', 'COD782700800', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:28:15', 'ND', 'Express', 'D6, vit, 632014'),
(50, 'Soya Chunks (1Kg)', 55, 1, 'images/1560280805_of3.png', 'naman@gmail.com', 'COD782700800', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:28:15', 'ND', 'Express', 'D6, vit, 632014'),
(51, 'Sunflower Oil (5Kg)', 100, 1, 'images/1560280713_of1.png', 'rushikesh@gmail.com', 'COD782700800', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:28:15', 'ND', 'Express', 'D6, vit, 632014'),
(52, 'Kabuli Chana (1Kg)', 45, 1, 'images/1560280766_of2.png', 'rushikesh@gmail.com', 'COD782700800', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:28:15', 'ND', 'Express', 'D6, vit, 632014'),
(53, 'Ribbon (1 pc)', 15, 1, 'images/1560342521_of18.png', 'naman@gmail.com', 'COD559407194', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:29:50', 'ND', 'Express', 'D6, vit, 632014'),
(54, 'Clips (10 pc)', 20, 1, 'images/1560342587_of20.png', 'rushikesh@gmail.com', 'COD559407194', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:29:50', 'ND', 'Express', 'D6, vit, 632014'),
(55, 'Soya Chunks (1Kg)', 55, 1, 'images/1560280805_of3.png', 'naman@gmail.com', 'COD559407194', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:29:50', 'ND', 'Express', 'D6, vit, 632014'),
(56, 'Sunflower Oil (5Kg)', 100, 1, 'images/1560280713_of1.png', 'rushikesh@gmail.com', 'COD559407194', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:29:50', 'ND', 'Express', 'D6, vit, 632014'),
(57, 'Kabuli Chana (1Kg)', 45, 1, 'images/1560280766_of2.png', 'rushikesh@gmail.com', 'COD559407194', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:29:50', 'ND', 'Express', 'D6, vit, 632014'),
(58, 'Ribbon (1 pc)', 15, 1, 'images/1560342521_of18.png', 'naman@gmail.com', 'COD482189040', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:35:11', 'ND', 'Normal', 'D6, vit, 632014'),
(59, 'Clips (10 pc)', 20, 1, 'images/1560342587_of20.png', 'rushikesh@gmail.com', 'COD482189040', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:35:11', 'ND', 'Normal', 'D6, vit, 632014'),
(60, 'Soya Chunks (1Kg)', 55, 1, 'images/1560280805_of3.png', 'naman@gmail.com', 'COD482189040', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:35:11', 'ND', 'Normal', 'D6, vit, 632014'),
(61, 'Sunflower Oil (5Kg)', 100, 1, 'images/1560280713_of1.png', 'rushikesh@gmail.com', 'COD482189040', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:35:11', 'ND', 'Normal', 'D6, vit, 632014'),
(62, 'Kabuli Chana (1Kg)', 45, 1, 'images/1560280766_of2.png', 'rushikesh@gmail.com', 'COD482189040', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:35:11', 'ND', 'Normal', 'D6, vit, 632014'),
(63, 'Ribbon (1 pc)', 15, 1, 'images/1560342521_of18.png', 'naman@gmail.com', 'COD446692805', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:35:41', 'delivery_boy', 'Normal', 'D6, vit, 632014'),
(64, 'Clips (10 pc)', 20, 1, 'images/1560342587_of20.png', 'rushikesh@gmail.com', 'COD446692805', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:35:41', 'ND', 'Normal', 'D6, vit, 632014'),
(65, 'Soya Chunks (1Kg)', 55, 1, 'images/1560280805_of3.png', 'naman@gmail.com', 'COD446692805', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:35:41', 'delivery_boy', 'Normal', 'D6, vit, 632014'),
(66, 'Sunflower Oil (5Kg)', 100, 1, 'images/1560280713_of1.png', 'rushikesh@gmail.com', 'COD446692805', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:35:41', 'ND', 'Normal', 'D6, vit, 632014'),
(67, 'Kabuli Chana (1Kg)', 45, 1, 'images/1560280766_of2.png', 'rushikesh@gmail.com', 'COD446692805', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:35:41', 'ND', 'Normal', 'D6, vit, 632014'),
(68, 'Ribbon (1 pc)', 15, 1, 'images/1560342521_of18.png', 'naman@gmail.com', 'COD888868634', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:35:50', 'ND', 'Normal', 'D6, vit, 632014'),
(69, 'Clips (10 pc)', 20, 1, 'images/1560342587_of20.png', 'rushikesh@gmail.com', 'COD888868634', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:35:50', 'ND', 'Normal', 'D6, vit, 632014'),
(70, 'Soya Chunks (1Kg)', 55, 1, 'images/1560280805_of3.png', 'naman@gmail.com', 'COD888868634', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:35:50', 'ND', 'Normal', 'D6, vit, 632014'),
(71, 'Sunflower Oil (5Kg)', 100, 1, 'images/1560280713_of1.png', 'rushikesh@gmail.com', 'COD888868634', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:35:50', 'ND', 'Normal', 'D6, vit, 632014'),
(72, 'Kabuli Chana (1Kg)', 45, 1, 'images/1560280766_of2.png', 'rushikesh@gmail.com', 'COD888868634', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 00:35:50', 'ND', 'Normal', 'D6, vit, 632014'),
(73, 'Sunflower Oil (5Kg)', 100, 2, 'images/1560280713_of1.png', 'rushikesh@gmail.com', 'COD255310664', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 16:07:13', 'ND', 'Normal', 'D6, vit, 632014'),
(74, 'Kabuli Chana (1Kg)', 45, 1, 'images/1560280766_of2.png', 'rushikesh@gmail.com', 'COD255310664', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 16:07:13', 'ND', 'Normal', 'D6, vit, 632014'),
(75, 'Soya Chunks (1Kg)', 55, 2, 'images/1560280805_of3.png', 'naman@gmail.com', 'COD255310664', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 16:07:13', 'ND', 'Normal', 'D6, vit, 632014'),
(76, 'Moong Dal (200g)', 20, 6, 'images/1560272048_of.png', 'naman@gmail.com', 'COD255310664', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 16:07:13', 'ND', 'Normal', 'D6, vit, 632014'),
(77, 'Sunflower Oil (5Kg)', 100, 2, 'images/1560280713_of1.png', 'rushikesh@gmail.com', 'COD755341673', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 16:07:40', 'ND', 'Normal', 'D6, vit, 632014'),
(78, 'Kabuli Chana (1Kg)', 45, 1, 'images/1560280766_of2.png', 'rushikesh@gmail.com', 'COD755341673', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 16:07:40', 'ND', 'Normal', 'D6, vit, 632014'),
(79, 'Soya Chunks (1Kg)', 55, 2, 'images/1560280805_of3.png', 'naman@gmail.com', 'COD755341673', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 16:07:40', 'ND', 'Normal', 'D6, vit, 632014'),
(80, 'Moong Dal (200g)', 20, 6, 'images/1560272048_of.png', 'naman@gmail.com', 'COD755341673', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 16:07:40', 'ND', 'Normal', 'D6, vit, 632014'),
(81, 'Banana (6 pcs)', 20, 1, 'images/1560323604_of8.png', 'rushikesh@gmail.com', 'COD216796402', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 17:04:50', 'ND', 'Normal', 'D6, vit, 632014'),
(82, 'Onion (1 kg)', 20, 1, 'images/1560323639_of9.png', 'rushikesh@gmail.com', 'COD216796402', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 17:04:50', 'ND', 'Normal', 'D6, vit, 632014'),
(83, 'Banana (6 pcs)', 20, 1, 'images/1560323604_of8.png', 'rushikesh@gmail.com', 'COD606436363', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 17:05:11', 'ND', 'Normal', 'D6, vit, 632014'),
(84, 'Onion (1 kg)', 20, 1, 'images/1560323639_of9.png', 'rushikesh@gmail.com', 'COD606436363', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 17:05:11', 'ND', 'Normal', 'D6, vit, 632014'),
(85, 'Banana (6 pcs)', 20, 1, 'images/1560323604_of8.png', 'rushikesh@gmail.com', 'COD230721421', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 17:05:36', 'ND', 'Normal', 'D6, vit, 632014'),
(86, 'Onion (1 kg)', 20, 1, 'images/1560323639_of9.png', 'rushikesh@gmail.com', 'COD230721421', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 17:05:36', 'ND', 'Normal', 'D6, vit, 632014'),
(87, 'Banana (6 pcs)', 20, 1, 'images/1560323604_of8.png', 'rushikesh@gmail.com', 'COD423147360', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 17:10:15', 'ND', 'Normal', 'D6, vit, 632014'),
(88, 'Onion (1 kg)', 20, 1, 'images/1560323639_of9.png', 'rushikesh@gmail.com', 'COD423147360', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 17:10:15', 'ND', 'Normal', 'D6, vit, 632014'),
(89, 'Soya Chunks (1Kg)', 55, 1, 'images/1560280805_of3.png', 'naman@gmail.com', 'COD423147360', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 17:10:15', 'ND', 'Normal', 'D6, vit, 632014'),
(90, 'Banana (6 pcs)', 20, 1, 'images/1560323604_of8.png', 'rushikesh@gmail.com', 'COD709745386', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 17:10:45', 'ND', 'Normal', 'D6, vit, 632014'),
(91, 'Onion (1 kg)', 20, 1, 'images/1560323639_of9.png', 'rushikesh@gmail.com', 'COD709745386', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 17:10:45', 'ND', 'Normal', 'D6, vit, 632014'),
(92, 'Soya Chunks (1Kg)', 55, 1, 'images/1560280805_of3.png', 'naman@gmail.com', 'COD709745386', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 17:10:45', 'ND', 'Normal', 'D6, vit, 632014'),
(93, 'Banana (6 pcs)', 20, 1, 'images/1560323604_of8.png', 'rushikesh@gmail.com', 'COD597491686', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 17:11:16', 'ND', 'Normal', 'D6, vit, 632014'),
(94, 'Onion (1 kg)', 20, 1, 'images/1560323639_of9.png', 'rushikesh@gmail.com', 'COD597491686', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 17:11:16', 'ND', 'Normal', 'D6, vit, 632014'),
(95, 'Soya Chunks (1Kg)', 55, 1, 'images/1560280805_of3.png', 'naman@gmail.com', 'COD597491686', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '16/10/2019 17:11:16', 'ND', 'Normal', 'D6, vit, 632014'),
(96, 'Moong Dal (200g)', 20, 1, 'images/1560272048_of.png', 'naman@gmail.com', 'COD207417999', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '26/10/2019 17:00:31', 'ND', 'Normal', 'D6, vit, 632014'),
(97, 'Soya Chunks (1Kg)', 55, 1, 'images/1560280805_of3.png', 'naman@gmail.com', 'COD207417999', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '26/10/2019 17:00:31', 'ND', 'Normal', 'D6, vit, 632014'),
(98, 'Kabuli Chana (1Kg)', 45, 1, 'images/1560280766_of2.png', 'rushikesh@gmail.com', 'COD207417999', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '26/10/2019 17:00:31', 'ND', 'Normal', 'D6, vit, 632014'),
(99, 'Moong Dal (200g)', 20, 1, 'images/1560272048_of.png', 'naman@gmail.com', 'COD169330963', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '26/10/2019 17:01:01', 'ND', 'Normal', 'D6, vit, 632014'),
(100, 'Soya Chunks (1Kg)', 55, 1, 'images/1560280805_of3.png', 'naman@gmail.com', 'COD169330963', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '26/10/2019 17:01:01', 'ND', 'Normal', 'D6, vit, 632014'),
(101, 'Kabuli Chana (1Kg)', 45, 1, 'images/1560280766_of2.png', 'rushikesh@gmail.com', 'COD169330963', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '26/10/2019 17:01:01', 'ND', 'Normal', 'D6, vit, 632014'),
(102, 'Soya Chunks (1Kg)', 55, 1, 'images/1560280805_of3.png', 'naman@gmail.com', 'COD479803579', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '26/10/2019 17:09:47', 'ND', 'Normal', 'D6, vit, 632014'),
(103, 'Kabuli Chana (1Kg)', 45, 1, 'images/1560280766_of2.png', 'rushikesh@gmail.com', 'COD479803579', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '26/10/2019 17:09:47', 'ND', 'Normal', 'D6, vit, 632014'),
(104, 'Hair Gel (250 g)', 60, 1, 'images/1560342839_of23.png', 'naman@gmail.com', 'COD479803579', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '26/10/2019 17:09:47', 'ND', 'Normal', 'D6, vit, 632014'),
(105, 'Clips (10 pc)', 1, 1, 'images/1560342587_of20.png', 'rushikesh@gmail.com', 'COD811836800', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '30/10/2019 21:49:44', 'ND', 'Normal', 'D6, vit, 632014'),
(106, 'Clips (10 pc)', 1, 1, 'images/1560342587_of20.png', 'rushikesh@gmail.com', 'COD313204251', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '30/10/2019 21:51:03', 'ND', 'Normal', 'D6, vit, 632014'),
(107, 'Clips (10 pc)', 1, 1, 'images/1560342587_of20.png', 'rushikesh@gmail.com', 'COD145723148', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '30/10/2019 21:51:55', 'ND', 'Normal', 'D6, vit, 632014'),
(108, 'Soya Chunks (1Kg)', 55, 1, 'images/1560280805_of3.png', 'naman@gmail.com', 'COD844250804', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '04/11/2019 16:44:09', 'ND', 'Normal', 'D6, vit, 632014'),
(109, 'Moong Dal (200g)', 20, 1, 'images/1560272048_of.png', 'naman@gmail.com', 'COD755320938', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '05/11/2019 11:48:49', 'ND', 'Normal', 'D6, vit, 632014'),
(110, 'Soya Chunks (1Kg)', 55, 1, 'images/1560280805_of3.png', 'naman@gmail.com', 'COD755320938', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '05/11/2019 11:48:49', 'ND', 'Normal', 'D6, vit, 632014'),
(111, 'Moong Dal (200g)', 20, 1, 'images/1560272048_of.png', 'naman@gmail.com', 'COD157081789', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '05/11/2019 16:23:36', 'ND', 'Normal', 'D6, vit, 632014'),
(112, 'Soya Chunks (1Kg)', 55, 2, 'images/1560280805_of3.png', 'naman@gmail.com', 'COD157081789', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '05/11/2019 16:23:36', 'ND', 'Normal', 'D6, vit, 632014'),
(113, 'Kabuli Chana (1Kg)', 45, 1, 'images/1560280766_of2.png', 'rushikesh@gmail.com', 'COD157081789', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '05/11/2019 16:23:36', 'ND', 'Normal', 'D6, vit, 632014'),
(114, 'Moong Dal (200g)', 20, 1, 'images/1560272048_of.png', 'naman@gmail.com', 'COD303479815', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '05/11/2019 16:24:28', 'ND', 'Normal', 'D6, vit, 632014'),
(115, 'Soya Chunks (1Kg)', 55, 2, 'images/1560280805_of3.png', 'naman@gmail.com', 'COD303479815', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '05/11/2019 16:24:28', 'ND', 'Normal', 'D6, vit, 632014'),
(116, 'Kabuli Chana (1Kg)', 45, 1, 'images/1560280766_of2.png', 'rushikesh@gmail.com', 'COD303479815', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '05/11/2019 16:24:28', 'ND', 'Normal', 'D6, vit, 632014'),
(117, 'Moong Dal (200g)', 20, 2, 'images/1560272048_of.png', 'naman@gmail.com', 'COD572694292', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '06/11/2019 01:24:07', 'ND', 'Normal', 'D6, vit, 632014'),
(118, 'Soya Chunks (1Kg)', 55, 3, 'images/1560280805_of3.png', 'naman@gmail.com', 'COD572694292', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '06/11/2019 01:24:07', 'ND', 'Normal', 'D6, vit, 632014'),
(119, 'Kabuli Chana (1Kg)', 45, 2, 'images/1560280766_of2.png', 'rushikesh@gmail.com', 'COD572694292', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '06/11/2019 01:24:07', 'ND', 'Normal', 'D6, vit, 632014'),
(120, 'Moong Dal (200g)', 20, 2, 'images/1560272048_of.png', 'naman@gmail.com', 'COD324273138', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '06/11/2019 01:28:50', 'ND', 'Normal', 'D6, vit, 632014'),
(121, 'Soya Chunks (1Kg)', 55, 3, 'images/1560280805_of3.png', 'naman@gmail.com', 'COD324273138', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '06/11/2019 01:28:50', 'ND', 'Normal', 'D6, vit, 632014'),
(122, 'Kabuli Chana (1Kg)', 45, 2, 'images/1560280766_of2.png', 'rushikesh@gmail.com', 'COD324273138', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '06/11/2019 01:28:50', 'ND', 'Normal', 'D6, vit, 632014'),
(123, 'Moong Dal (200g)', 20, 2, 'images/1560272048_of.png', 'naman@gmail.com', 'COD646914660', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '06/11/2019 01:30:26', 'ND', 'Normal', 'D6, vit, 632014'),
(124, 'Moong Dal (200g)', 20, 2, 'images/1560272048_of.png', 'naman@gmail.com', 'COD260593419', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '06/11/2019 01:32:26', 'ND', 'Normal', 'D6, vit, 632014'),
(125, 'Moong Dal (200g)', 20, 2, 'images/1560272048_of.png', 'naman@gmail.com', 'COD768078202', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '06/11/2019 01:33:18', 'ND', 'Normal', 'D6, vit, 632014'),
(126, 'Soya Chunks (1Kg)', 55, 3, 'images/1560280805_of3.png', 'naman@gmail.com', 'COD768078202', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '06/11/2019 01:33:18', 'ND', 'Normal', 'D6, vit, 632014'),
(127, 'Kabuli Chana (1Kg)', 45, 2, 'images/1560280766_of2.png', 'rushikesh@gmail.com', 'COD768078202', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '06/11/2019 01:33:18', 'ND', 'Normal', 'D6, vit, 632014'),
(128, 'Moong Dal (200g)', 20, 1, 'images/1560272048_of.png', 'naman@gmail.com', 'COD143432052', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '08/11/2019 03:44:47', 'ND', 'Normal', 'D6, vit, 632014'),
(129, 'Soya Chunks (1Kg)', 55, 2, 'images/1560280805_of3.png', 'naman@gmail.com', 'COD143432052', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '08/11/2019 03:44:47', 'ND', 'Normal', 'D6, vit, 632014'),
(130, 'Kabuli Chana (1Kg)', 45, 3, 'images/1560280766_of2.png', 'rushikesh@gmail.com', 'COD143432052', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '08/11/2019 03:44:47', 'ND', 'Normal', 'D6, vit, 632014'),
(131, 'Moong Dal (200g)', 20, 1, 'images/1560272048_of.png', 'naman@gmail.com', 'COD251988632', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '08/11/2019 03:46:59', 'ND', 'Normal', 'D6, vit, 632014'),
(132, 'Soya Chunks (1Kg)', 55, 2, 'images/1560280805_of3.png', 'naman@gmail.com', 'COD251988632', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '08/11/2019 03:46:59', 'ND', 'Normal', 'D6, vit, 632014'),
(133, 'Kabuli Chana (1Kg)', 45, 3, 'images/1560280766_of2.png', 'rushikesh@gmail.com', 'COD251988632', 'Cod', 'naman@gmail.com', '9876543210', 'naman', '08/11/2019 03:46:59', 'ND', 'Normal', 'D6, vit, 632014');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text,
  `vendor_name` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `vendor_name`) VALUES
(2, 17, 14, 'Moong Dal (200g)', 20, 5, 'Fresh and healthy Moong Dal', '1560272048_of.png', 'naman@gmail.com'),
(4, 17, 14, 'Kabuli Chana (1Kg)', 45, 5, 'Kabuli Chana', '1560280766_of2.png', 'rushikesh@gmail.com'),
(5, 17, 14, 'Soya Chunks (1Kg)', 55, 20, 'Soya Chunks', '1560280805_of3.png', 'naman@gmail.com'),
(6, 20, 18, 'Lays (100g)', 20, 20, 'Tasty Spicy Lays', '1560321892_of4.png', 'naman@gmail.com'),
(7, 20, 18, 'Kurkure (100g)', 20, 10, 'Tasty, Spicy and Salty Snack', '1560321938_of5.png', 'naman@gmail.com'),
(8, 20, 18, 'Popcorn (250 g)', 30, 10, 'Tasty Popcorns', '1560322049_of6.png', 'rushikesh@gmail.com'),
(9, 20, 14, 'Nuts (250 g)', 45, 50, 'Health Nuts', '1560322089_of7.png', 'rushikesh@gmail.com'),
(10, 19, 14, 'Honey (500 g)', 90, 10, 'Fresh, Healthy and Tasty Honey', '1560323321_of12.png', 'naman@gmail.com'),
(11, 19, 18, 'Chocos (250 g)', 55, 10, 'Chocolaty Chocos', '1560323379_of13.png', 'naman@gmail.com'),
(12, 19, 14, 'Oats (1 kg)', 50, 10, 'Healthy Oats', '1560323484_of14.png', 'naman@gmail.com'),
(13, 47, 17, 'Bread (500 g)', 25, 20, 'Brown Bread', '1560323526_of15.png', 'naman@gmail.com'),
(14, 16, 14, 'Banana (6 pcs)', 20, 60, 'Tasty Bananas', '1560323604_of8.png', 'rushikesh@gmail.com'),
(15, 16, 14, 'Onion (1 kg)', 20, 20, 'Fresh Onion', '1560323639_of9.png', 'rushikesh@gmail.com'),
(16, 16, 14, 'Bitter Gourd (1 kg)', 15, 10, 'Bitter Gourd', '1560323684_of10.png', 'rushikesh@gmail.com'),
(17, 16, 14, 'Apples (1 kg)', 100, 20, 'Tasty Red Apples', '1560323747_of11.png', 'rushikesh@gmail.com'),
(18, 34, 16, 'Moisturiser (500 g)', 99, 10, 'Moisturize your skin', '1560342395_of16.png', 'naman@gmail.com'),
(19, 67, 15, 'Ribbon (1 pc)', 15, 20, 'Ribbon Your Gifts', '1560342521_of18.png', 'naman@gmail.com'),
(20, 57, 15, 'Clips (10 pc)', 1, 10, 'Clips for your Clothes', '1560342587_of20.png', 'rushikesh@gmail.com'),
(21, 31, 16, 'Conditioner (200 g)', 55, 20, 'Hair conditioner', '1560342648_of21.png', 'naman@gmail.com'),
(22, 38, 15, 'Cleaner (500 g)', 70, 20, 'Bathroom Cleaner', '1560342712_of22.png', 'naman@gmail.com'),
(24, 31, 16, 'Hair Gel (250 g)', 60, 25, 'Good hair everyday', '1560342839_of23.png', 'naman@gmail.com'),
(25, 16, 14, 'Grapes (200 g)', 50, 100, 'Fresh and Tasty Green Grapes', '1560342973_of19.png', 'rushikesh@gmail.com'),
(26, 16, 14, 'Lady Finger (250 g)', 20, 20, 'Fresh Lady Fingers for your meal', '1560343032_of17.png', 'rushikesh@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(6) UNSIGNED NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `pincode` varchar(30) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `ifsc` text,
  `pan_card` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `username`, `email`, `street`, `city`, `pincode`, `password`, `phone`, `ifsc`, `pan_card`) VALUES
(5, 'naman', 'naman@gmail.com', 'vit', 'vellore', '632014', '12345', '9876543210', NULL, NULL),
(7, 'Username', 'admin@gmail.com', 'Shivajinagar', 'vellore', '632014', '12345', '8149992015', NULL, NULL),
(8, 'malbok', 'malbok@gmail.com', 'SJT', 'vellore', '632014', '12345', '1223451334', NULL, NULL),
(9, 'rushikesh', 'rushikesh@gmail.com', 'vit mens hostel', 'vellore', '632014', '12345', '1234567890', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`product_cat`),
  ADD KEY `fk_product_brand` (`product_brand`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`product_brand`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
