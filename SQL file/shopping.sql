-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2022 at 02:01 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2022-04-24 16:21:18', '24-04-2022 03:25:30 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Electronics', 'Electronic Products', '2022-04-24 19:19:32', ''),
(2, 'Air Conditioner', 'Air Conditioner', '2022-04-25 04:33:31', NULL),
(3, 'Oven', 'Oven', '2022-04-25 04:33:56', NULL),
(4, 'Refrigerator', 'Refrigerator', '2022-04-23 19:18:52', ''),
(5, 'Television', 'Television', '2022-04-24 19:19:54', ''),
(6, 'Washing Machine', 'Washing Machine', '2022-04-25 04:34:21', NULL),
(10, 'Mobile', 'phone', '2022-04-25 11:47:16', NULL),
(11, 'Tab', 'Tablet', '2022-04-25 11:52:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(12, 6, '15', 1, '2022-04-24 14:49:24', 'COD', NULL),
(13, 1, '42', 1, '2022-04-25 08:20:29', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(6, 6, 'Delivered', 'good', '2022-04-24 10:32:33');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(5, 20, 4, 0, 0, 'est', 'dsg', 'd', '2020-07-01 09:52:50'),
(6, 3, 2, 0, 0, 'test', 'test', 'good', '2020-07-01 10:31:03');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(22, 2, 10, 'LG 1.1', 'LG', 30000, 31000, 'Cover a Store room', '1.1.1.1.jpg', '1.1.1.jpg', '1.1.jpg', 500, 'In Stock', '2022-04-25 05:35:29', NULL),
(23, 2, 10, 'SAMSUNG 1.2', 'SAMSUNG', 30000, 32000, 'Cover a Store room<br>', '1.2.jpg', '1.2.1.jpg', '1.2.2.jpg', 500, 'In Stock', '2022-04-25 05:37:26', NULL),
(24, 2, 10, 'LG 1.3', 'LG', 25000, 26000, 'Cover a Store room<br>', '1.3.jpg', '1.3.1.JPG', '1.3.2.JPG', 500, 'In Stock', '2022-04-25 05:39:01', NULL),
(25, 2, 10, 'LG 1.4', 'LG', 45000, 48000, 'Cover a Store room<br>', '1.4.jpg', '1.4.2.JPG', '1.4.1.JPG', 500, 'In Stock', '2022-04-25 05:40:37', NULL),
(26, 2, 10, 'SAMSUNG 1.5', 'SAMSUNG', 15000, 20000, 'Cover a Small room<br>', '1.5.jpg', '1.5.jpg', '1.5.jpg', 500, 'Out of Stock', '2022-04-25 05:42:59', NULL),
(27, 3, 8, 'LG eco', 'LG', 25000, 26000, '<ul style=\"margin-bottom: 0px; margin-left: 0px; list-style: none; color: rgb(51, 51, 51); font-family: &quot;LG Smart SemiBold&quot;, sans-serif; font-size: 14px;\"><li style=\"margin: 0rem 0px 1rem; padding: 0px 0px 0px 18px; list-style: none; border-bottom: 0px; position: relative; color: rgb(0, 0, 0); font-size: 16px;\">Ceramic Enamel Cavity</li><li style=\"margin: 0rem 0px 1rem; padding: 0px 0px 0px 18px; list-style: none; border-bottom: 0px; position: relative; color: rgb(0, 0, 0); font-size: 16px;\">Various Cooking Mode</li><li style=\"margin: 0rem 0px 1rem; padding: 0px 0px 0px 18px; list-style: none; border-bottom: 0px; position: relative; color: rgb(0, 0, 0); font-size: 16px;\">Sensor Cook</li></ul>', '2.1.jpg', '2.1.jpg', '2.1.jpg', 500, 'In Stock', '2022-04-25 05:52:17', NULL),
(28, 3, 8, 'LG 2.2', 'LG', 25000, 26000, '<ul class=\"feature-list\" style=\"box-sizing: border-box; font-family: &quot;LG Smart&quot;, &quot;Segoe UI&quot;, &quot;Microsoft Sans Serif&quot;, sans-serif; margin-bottom: 0px; margin-left: 0px; list-style: none; font-size: 14px; line-height: 20px; color: rgb(51, 51, 51); font-weight: 600;\"><li style=\"box-sizing: border-box; margin: 8px 0px 0px; padding: 0px 0px 0px 9px; list-style: none; position: relative;\">All In One Convection Oven</li><li style=\"box-sizing: border-box; margin: 5px 0px 0px; padding: 0px 0px 0px 9px; list-style: none; position: relative;\">Ghee in 12 minutes*</li></ul>', '2.2.jpg', '2.2.1.JPG', '2.2.2.JPG', 500, 'In Stock', '2022-04-25 06:41:46', NULL),
(29, 3, 8, 'LG 2.3', 'LG', 30000, 32000, '<div class=\"relation-area\" style=\"box-sizing: border-box; font-family: &quot;LG Smart&quot;, &quot;Segoe UI&quot;, &quot;Microsoft Sans Serif&quot;, sans-serif; border-top: 1px solid rgb(228, 228, 228); padding: 17px 0px 0px; margin: 20px 0px 0px;\"><ul class=\"feature-list\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; list-style: none; font-size: 14px; line-height: 20px; color: rgb(51, 51, 51); font-weight: 600;\"><li style=\"box-sizing: border-box; margin: 5px 0px 0px; padding: 0px 0px 0px 9px; list-style: none; position: relative;\">Ghee in 12 minutes*</li><li style=\"box-sizing: border-box; margin: 5px 0px 0px; padding: 0px 0px 0px 9px; list-style: none; position: relative;\">Diet Fry</li><li style=\"box-sizing: border-box; margin: 5px 0px 0px; padding: 0px 0px 0px 9px; list-style: none; position: relative;\">360° Motorised Rotisserie</li><li style=\"box-sizing: border-box; margin: 5px 0px 0px; padding: 0px 0px 0px 9px; list-style: none; position: relative;\">Pasteurized Milk</li></ul></div>', '2.3.jpg', '2.2.2.2.2.jpg', '2.2.2.2.jpg', 500, 'In Stock', '2022-04-25 06:47:52', NULL),
(30, 3, 8, 'SAMSUNG 2.4', 'SAMSUNG', 30000, 31000, '<ul class=\"feature-list\" style=\"box-sizing: border-box; font-family: &quot;LG Smart&quot;, &quot;Segoe UI&quot;, &quot;Microsoft Sans Serif&quot;, sans-serif; margin-bottom: 0px; margin-left: 0px; list-style: none; font-size: 14px; line-height: 20px; color: rgb(51, 51, 51); font-weight: 600;\"><li style=\"box-sizing: border-box; margin: 5px 0px 0px; padding: 0px 0px 0px 9px; list-style: none; position: relative;\">Ghee in 12 minutes*</li><li style=\"box-sizing: border-box; margin: 5px 0px 0px; padding: 0px 0px 0px 9px; list-style: none; position: relative;\">Roti Basket<span style=\"box-sizing: border-box; position: relative; font-size: 10.5px; line-height: 0; vertical-align: baseline; top: -0.5em;\">*</span></li><li style=\"box-sizing: border-box; margin: 5px 0px 0px; padding: 0px 0px 0px 9px; list-style: none; position: relative;\">Pasteurized Milk</li></ul>', '2.4.jpg', '2.2.1.JPG', '2.4.jpg', 500, 'In Stock', '2022-04-25 06:49:45', NULL),
(31, 3, 8, 'LG 2.5', 'LG', 25000, 26000, '<ul class=\"feature-list\" style=\"box-sizing: border-box; font-family: &quot;LG Smart&quot;, &quot;Segoe UI&quot;, &quot;Microsoft Sans Serif&quot;, sans-serif; margin-bottom: 0px; margin-left: 0px; list-style: none; font-size: 14px; line-height: 20px; color: rgb(51, 51, 51); font-weight: 600;\"><li style=\"box-sizing: border-box; margin: 5px 0px 0px; padding: 0px 0px 0px 9px; list-style: none; position: relative;\">360° Motorised Rotisserie</li><li style=\"box-sizing: border-box; margin: 5px 0px 0px; padding: 0px 0px 0px 9px; list-style: none; position: relative;\">Pasteurized Milk</li></ul>', '2.5.jpg', '2.5.jpg', '2.2.2.JPG', 500, 'Out of Stock', '2022-04-25 06:51:07', NULL),
(32, 4, 7, 'LG 3.1', 'LG', 58000, 60000, '<ul style=\"margin-top: 0rem; margin-bottom: 2.5rem; margin-left: 0px; box-sizing: border-box; list-style: none; color: rgb(0, 0, 0); font-family: SamsungOne-400, arial, sans-serif;\"><ul style=\"margin-top: 0rem; margin-left: 0px; box-sizing: border-box; list-style: none;\"><li style=\"margin: 0rem 0px 1rem; padding: 0px; box-sizing: border-box;\">Triple Cooling</li><li style=\"margin: 0rem 0px 1rem; padding: 0px; box-sizing: border-box;\">Flex Zone</li></ul></ul><ul style=\"margin-top: 0rem; margin-bottom: 2.5rem; margin-left: 0px; box-sizing: border-box; list-style: none; color: rgb(0, 0, 0); font-family: SamsungOne-400, arial, sans-serif;\"><li style=\"margin: 0rem 0px 1rem; padding: 0px; box-sizing: border-box;\">Digital Inverter Technology</li></ul>', '3.1.jpg', '3.1.jpg', '3.1.jpg', 500, 'In Stock', '2022-04-25 06:58:10', NULL),
(33, 4, 7, 'LG freezer ', 'LG', 45000, 48000, '<ul style=\"box-sizing: border-box; border-width: 0px; border-style: solid; border-color: rgba(231,231,231,var(--tw-border-opacity)); border-image: initial; --tw-border-opacity:1; --tw-shadow:0 0 transparent; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(88,86,214,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; margin-bottom: 0px; margin-left: 0px; list-style: initial; color: rgb(35, 31, 32); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; outline: none !important;\"><li style=\"box-sizing: border-box; border-width: 0px; border-style: solid; border-color: rgba(231,231,231,var(--tw-border-opacity)); border-image: initial; --tw-border-opacity:1; --tw-shadow:0 0 transparent; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(88,86,214,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; outline: none !important; margin: 0.2rem 0px 0.2rem 1.2rem;\"><span style=\"box-sizing: border-box; border-width: 0px; border-style: solid; border-color: rgba(231,231,231,var(--tw-border-opacity)); border-image: initial; --tw-border-opacity:1; --tw-shadow:0 0 transparent; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(88,86,214,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; outline: none !important; font-size: 11pt; color: rgb(0, 0, 0);\">Gross Capacity: 141&nbsp;Liters</span></li><li style=\"box-sizing: border-box; border-width: 0px; border-style: solid; border-color: rgba(231,231,231,var(--tw-border-opacity)); border-image: initial; --tw-border-opacity:1; --tw-shadow:0 0 transparent; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(88,86,214,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; outline: none !important; margin: 0.2rem 0px 0.2rem 1.2rem;\"><span style=\"box-sizing: border-box; border-width: 0px; border-style: solid; border-color: rgba(231,231,231,var(--tw-border-opacity)); border-image: initial; --tw-border-opacity:1; --tw-shadow:0 0 transparent; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(88,86,214,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; outline: none !important; font-size: 11pt; color: rgb(0, 0, 0);\">Heavy duty chest freezer&nbsp;</span></li><li style=\"box-sizing: border-box; border-width: 0px; border-style: solid; border-color: rgba(231,231,231,var(--tw-border-opacity)); border-image: initial; --tw-border-opacity:1; --tw-shadow:0 0 transparent; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(88,86,214,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; outline: none !important; margin: 0.2rem 0px 0.2rem 1.2rem;\"><span style=\"box-sizing: border-box; border-width: 0px; border-style: solid; border-color: rgba(231,231,231,var(--tw-border-opacity)); border-image: initial; --tw-border-opacity:1; --tw-shadow:0 0 transparent; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(88,86,214,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; outline: none !important; font-size: 11pt; color: rgb(0, 0, 0);\">Made in Italy</span></li><li style=\"box-sizing: border-box; border-width: 0px; border-style: solid; border-color: rgba(231,231,231,var(--tw-border-opacity)); border-image: initial; --tw-border-opacity:1; --tw-shadow:0 0 transparent; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(88,86,214,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; outline: none !important; margin: 0.2rem 0px 0.2rem 1.2rem;\">45 hours power cut suppor</li></ul>', '3.2.jpg', '3.2.jpg', '3.2.jpg', 500, 'In Stock', '2022-04-25 07:02:37', NULL),
(34, 4, 7, 'LG 3.3', 'LG', 64000, 65000, '<span style=\"color: rgb(0, 0, 0); font-family: SamsungOne-400, arial, sans-serif;\">Twin Cooling Plus™ Convertible freezer and fridge Power Freezing and Cooling</span><br>', '3.3.jpg', '3.3.jpg', '2.2.1.JPG', 500, 'Out of Stock', '2022-04-25 07:04:25', NULL),
(35, 4, 7, 'Haier 3.4', 'Haier', 5000, 52000, '<span style=\"color: rgb(0, 0, 0); font-family: SamsungOne-400, arial, sans-serif;\">Twin Cooling Plus™ Convertible freezer and fridge Power Freezing and Cooling</span><br>', '3.4.jpg', '3.4.jpg', '2.2.1.JPG', 500, 'In Stock', '2022-04-25 07:06:12', NULL),
(36, 5, 1, 'LG OLED', 'LG', 115000, 120000, '<span style=\"color: rgb(107, 107, 107); font-family: &quot;LG Smart Regular&quot;, sans-serif; font-size: 14px; background-color: rgb(245, 245, 245);\">• OLED TVs: LG OLED TVs feature over 8 million pixels that turn on and off independently to deliver perfect black, over a billion rich colors and infinite contrast for a viewing experience like no other.</span><br style=\"box-sizing: border-box; color: rgb(107, 107, 107); font-family: &quot;LG Smart Regular&quot;, sans-serif; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(107, 107, 107); font-family: &quot;LG Smart Regular&quot;, sans-serif; font-size: 14px; background-color: rgb(245, 245, 245);\">• NanoCell Smart TVs: By raising the bar on picture quality and delivering 4K movies, sports and games, plus the latest smart technology, they offer a simple way to elevate your favorite entertainment.</span><br style=\"box-sizing: border-box; color: rgb(107, 107, 107); font-family: &quot;LG Smart Regular&quot;, sans-serif; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"color: rgb(107, 107, 107); font-family: &quot;LG Smart Regular&quot;, sans-serif; font-size: 14px; background-color: rgb(245, 245, 245);\">• 4K TVs: Featuring HDR for a cinematic experience, our 4K TVs deliver rich, vivid pictures – so you can see your favorite sports, movies and more as they were intended.</span><br style=\"box-sizing: border-box; color: rgb(107, 107, 107); font-family: &quot;LG Smart Regular&quot;, sans-serif; font-size: 14px; background-color: rgb(245, 245, 245);\"><br>', '4.1.jpg', '4.1.jpg', '4.1.jpg', 500, 'In Stock', '2022-04-25 07:09:44', NULL),
(37, 6, 12, 'LG eco machine', 'LG', 135000, 140000, '<ul class=\"dot-list\" role=\"list\" style=\"margin-top: 0rem; margin-bottom: 2.5rem; margin-left: 0px; box-sizing: border-box; list-style: none; color: rgb(0, 0, 0); font-family: SamsungOne-400, arial, sans-serif;\"><li class=\"dot-list__item\" role=\"listitem\" style=\"margin: 0rem 0px 1rem; padding: 0px; box-sizing: border-box;\"><span class=\"usp-text\" style=\"margin: 0px; padding: 0px; box-sizing: border-box;\">AI Control</span></li><li class=\"dot-list__item\" role=\"listitem\" style=\"margin: 0rem 0px 1rem; padding: 0px; box-sizing: border-box;\"><span class=\"usp-text\" style=\"margin: 0px; padding: 0px; box-sizing: border-box;\">Quick Drive</span></li></ul>', '5.2.jpg', '5.3.jpg', '2.2.1.JPG', 500, 'In Stock', '2022-04-25 07:30:39', NULL),
(38, 6, 12, 'BWM eco', 'BWM', 144000, 145000, '<ul class=\"dot-list\" role=\"list\" style=\"margin-top: 0rem; margin-bottom: 2.5rem; margin-left: 0px; box-sizing: border-box; list-style: none; color: rgb(0, 0, 0); font-family: SamsungOne-400, arial, sans-serif;\"><li class=\"dot-list__item\" role=\"listitem\" style=\"margin: 0rem 0px 1rem; padding: 0px; box-sizing: border-box;\"><span class=\"usp-text\" style=\"margin: 0px; padding: 0px; box-sizing: border-box;\">AI Control</span></li><li class=\"dot-list__item\" role=\"listitem\" style=\"margin: 0rem 0px 1rem; padding: 0px; box-sizing: border-box;\"><span class=\"usp-text\" style=\"margin: 0px; padding: 0px; box-sizing: border-box;\">Quick Drive</span></li></ul>', '5.1.jpg', '5.1.jpg', '5.1.jpg', 500, 'In Stock', '2022-04-25 07:32:17', NULL),
(39, 6, 12, 'LG eco new', 'LG', 144000, 145000, '<ul class=\"dot-list\" role=\"list\" style=\"margin-top: 0rem; margin-bottom: 2.5rem; margin-left: 0px; box-sizing: border-box; list-style: none; color: rgb(0, 0, 0); font-family: SamsungOne-400, arial, sans-serif;\"><li class=\"dot-list__item\" role=\"listitem\" style=\"margin: 0rem 0px 1rem; padding: 0px; box-sizing: border-box;\"><span class=\"usp-text\" style=\"margin: 0px; padding: 0px; box-sizing: border-box;\">AI Control</span></li><li class=\"dot-list__item\" role=\"listitem\" style=\"margin: 0rem 0px 1rem; padding: 0px; box-sizing: border-box;\"><span class=\"usp-text\" style=\"margin: 0px; padding: 0px; box-sizing: border-box;\">Quick Drive</span></li></ul>', '5.4.jpg', '5.5.jpg', '2.2.1.JPG', 500, 'In Stock', '2022-04-25 07:33:48', NULL),
(40, 5, 1, 'LG UHD', 'LG', 110000, 115000, '<span style=\"box-sizing: border-box; color: rgb(107, 107, 107); font-family: &quot;LG Smart Regular&quot;, sans-serif; font-size: 14px; background-color: rgb(245, 245, 245);\">• NanoCell Smart TVs: By raising the bar on picture quality and delivering 4K movies, sports and games, plus the latest smart technology, they offer a simple way to elevate your favorite entertainment.</span><br style=\"box-sizing: border-box; color: rgb(107, 107, 107); font-family: &quot;LG Smart Regular&quot;, sans-serif; font-size: 14px; background-color: rgb(245, 245, 245);\"><span style=\"box-sizing: border-box; color: rgb(107, 107, 107); font-family: &quot;LG Smart Regular&quot;, sans-serif; font-size: 14px; background-color: rgb(245, 245, 245);\">• 4K TVs: Featuring HDR for a cinematic experience, our 4K TVs deliver rich, vivid pictures – so you can see your favorite sports, movies and more as they were intended.</span><br style=\"box-sizing: border-box; color: rgb(107, 107, 107); font-family: &quot;LG Smart Regular&quot;, sans-serif; font-size: 14px; background-color: rgb(245, 245, 245);\">', '4.4.jpg', '4.4.jpg', '2.2.2.JPG', 500, 'In Stock', '2022-04-25 07:36:54', NULL),
(41, 5, 1, 'LG NanoCell', 'LG', 135000, 140000, '<span style=\"box-sizing: border-box; color: rgb(107, 107, 107); font-family: &quot;LG Smart Regular&quot;, sans-serif; font-size: 14px; background-color: rgb(245, 245, 245);\">• NanoCell Smart TVs: By raising the bar on picture quality and delivering 4K movies, sports and games, plus the latest smart technology, they offer a simple way to elevate your favorite entertainment.</span><br style=\"box-sizing: border-box; color: rgb(107, 107, 107); font-family: &quot;LG Smart Regular&quot;, sans-serif; font-size: 14px; background-color: rgb(245, 245, 245);\"><br style=\"box-sizing: border-box; color: rgb(107, 107, 107); font-family: &quot;LG Smart Regular&quot;, sans-serif; font-size: 14px; background-color: rgb(245, 245, 245);\">', '4.2.jpg', '4.3.jpg', '2.2.1.JPG', 500, 'In Stock', '2022-04-25 07:38:05', NULL),
(42, 1, 4, 'iphone-11', 'Apple', 60000, 62000, '<p style=\"margin-bottom: 0px; padding: 0px 0px 4px; box-sizing: content-box; pointer-events: auto; letter-spacing: -0.01em; font-size: 12px; font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.33337; color: rgb(110, 110, 115); background-color: rgb(245, 245, 247);\">Available space is less and varies due to many factors. A standard configuration uses approximately 12GB to 17GB of space, including iOS 15 with its latest features and Apple apps that can be deleted. Apple apps that can be deleted use about 4.5GB of space, and you can download them back from the App Store. Storage capacity subject to change based on software version, settings, and iPhone model.</p><p style=\"margin-bottom: 0px; padding: 0px 0px 4px; box-sizing: content-box; pointer-events: auto; letter-spacing: -0.01em; font-size: 12px; font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.33337; color: rgb(110, 110, 115); background-color: rgb(245, 245, 247);\">iPhone 11 is splash, water and dust resistant and was tested under controlled laboratory conditions with a rating of IP68 under IEC standard 60529 (maximum depth of 2 meters up to 30 minutes). Splash, water and dust resistance are not permanent conditions and resistance might decrease as a result of normal wear. Do not attempt to charge a wet iPhone; refer to the user guide for cleaning and drying instructions. Liquid damage not covered under warranty.</p>', 'iphone-11.gif', 'iphone-11.gif', 'iphone-11.gif', 500, 'In Stock', '2022-04-25 07:43:14', NULL),
(43, 1, 6, 'Macbook-air', 'Apple', 95000, 99000, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: &quot;Trebuchet MS&quot;, sans-serif; font-size: 15px;\"><li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 10px; display: block;\">MPN: MGN63</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 10px; display: block;\">Model: Apple MacBook Air 13\" Space Gray with Apple M1 Chip</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 10px; display: block;\">Apple M1 chip with 8-core CPU and 7-core GPU</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 10px; display: block;\">8GB RAM</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 10px; display: block;\">256GB SSD</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 10px; display: block;\">13.3-inch 2560x1600 LED-backlit Retina Display</li></ul>', 'macbook-air.gif', 'macbook-air.png', 'macbook-air.gif', 500, 'In Stock', '2022-04-25 07:46:33', NULL),
(44, 1, 4, 'iphone-13', 'Apple', 60000, 65000, 'ccc', 'iphone-13.gif', 'iphone-13.gif', 'iphone-13-mini.png', 500, 'In Stock', '2022-04-25 11:57:29', NULL),
(45, 10, 13, 'iphone-12', 'Apple', 60000, 65000, 'ccc', 'iphone-12.gif', 'iphone-12.gif', 'iphone-12.gif', 500, 'In Stock', '2022-04-25 12:00:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 5, 'Led Television', '2017-01-26 16:24:52', '25-04-2022 10:22:11 AM'),
(4, 1, 'Mobiles', '2017-01-30 16:55:48', '25-04-2022 10:21:45 AM'),
(5, 1, 'Mobile Accessories', '2017-02-04 04:12:40', '25-04-2022 10:22:01 AM'),
(6, 1, 'Laptops', '2017-02-04 04:13:00', '25-04-2022 10:23:26 AM'),
(7, 4, 'Fridge', '2017-02-04 04:13:27', '25-04-2022 10:23:11 AM'),
(8, 3, 'cooking accessories', '2017-02-04 04:13:54', '25-04-2022 10:24:18 AM'),
(10, 2, 'Cooler', '2017-02-04 04:37:02', '25-04-2022 10:25:13 AM'),
(12, 6, 'clothing accessories', '2017-03-10 20:12:59', '25-04-2022 10:27:51 AM'),
(13, 10, 'phone', '2022-04-25 11:48:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(31, 'r@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-24 14:45:52', '24-04-2022 08:22:39 PM', 1),
(32, 'r@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-25 08:19:11', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(7, 'Taskin', 'taskin@gmail.com', 0173777825, '0832ad88833570771645d20638c6bd50', '25/l', 'Dhaka', 'Mirpur', 1122, NULL, NULL, NULL, NULL, '2022-04-24 14:45:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2022-11-27 18:53:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
