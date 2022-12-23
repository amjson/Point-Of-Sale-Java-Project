-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2022 at 04:08 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(20) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand`, `status`) VALUES
(1, 'Redmi ', 'Active'),
(2, 'Hp ', 'Active'),
(3, 'Skyworth', 'Active'),
(4, 'Iphone', 'Deactive'),
(5, 'Oppo', 'Deactive'),
(6, 'Lenovo', 'Deactive'),
(7, 'Huawei', 'Active'),
(8, 'Ulephone', 'Active'),
(9, 'LG', 'Active'),
(10, 'ps 5', 'Active'),
(11, 'pallete', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

CREATE TABLE `cashier` (
  `id` int(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cashier`
--

INSERT INTO `cashier` (`id`, `username`, `password`, `status`) VALUES
(1, 'joe', '123', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(20) NOT NULL,
  `category` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `status`) VALUES
(1, 'Mobile', 'Active'),
(2, 'Laptop', 'Active'),
(3, 'Television', 'Active'),
(4, 'ps', 'Active'),
(5, 'printer', 'Active'),
(7, 'furniture', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(20) NOT NULL,
  `product` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `cat_id` int(20) NOT NULL,
  `brand_id` int(20) NOT NULL,
  `cost_price` int(20) NOT NULL,
  `retail_price` int(20) NOT NULL,
  `qty` int(20) NOT NULL,
  `barcode` int(20) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product`, `description`, `cat_id`, `brand_id`, `cost_price`, `retail_price`, `qty`, `barcode`, `status`) VALUES
(14, 'hp probook', 'workstation', 1, 1, 22000, 20000, 5, 123, 'Active'),
(15, 'printer', 'printing machine', 5, 6, 18000, 15000, 8, 456, 'Deactive');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(20) NOT NULL,
  `date` varchar(255) NOT NULL,
  `cashier` varchar(255) NOT NULL,
  `subtotal` int(20) NOT NULL,
  `pay` int(20) NOT NULL,
  `balance` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date`, `cashier`, `subtotal`, `pay`, `balance`) VALUES
(1, '2022/12/22', 'joe', 20000, 50000, 30000);

-- --------------------------------------------------------

--
-- Table structure for table `sales_product`
--

CREATE TABLE `sales_product` (
  `id` int(20) NOT NULL,
  `sales_id` int(20) NOT NULL,
  `product_id` int(20) NOT NULL,
  `sell_price` int(20) NOT NULL,
  `qty` int(20) NOT NULL,
  `total` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_product`
--

INSERT INTO `sales_product` (`id`, `sales_id`, `product_id`, `sell_price`, `qty`, `total`) VALUES
(1, 3, 4532, 25000, 1, 25000),
(2, 3, 4532, 25000, 1, 25000),
(3, 3, 1245, 10500, 1, 10500),
(4, 4, 1245, 10500, 1, 10500),
(5, 4, 4532, 25000, 2, 50000),
(6, 5, 4532, 25000, 4, 100000),
(7, 5, 2356, 18000, 4, 72000),
(8, 6, 1245, 10500, 5, 52500),
(9, 6, 4532, 25000, 3, 75000),
(10, 7, 4532, 25000, 1, 25000),
(11, 7, 4532, 25000, 1, 25000),
(12, 7, 1245, 10500, 1, 10500),
(13, 8, 123, 34545, 2, 69090),
(14, 8, 456, 34567, 2, 69134),
(15, 9, 123, 34545, 2, 69090),
(16, 9, 456, 34567, 2, 69134),
(17, 10, 123, 34545, 1, 34545),
(18, 10, 456, 34567, 2, 69134),
(19, 11, 159, 56645, 20, 1132900),
(20, 11, 123, 34545, 2, 69090),
(21, 12, 123, 20000, 1, 20000),
(22, 13, 123, 20000, 1, 20000),
(23, 14, 456, 15000, 1, 15000),
(24, 15, 456, 15000, 1, 15000),
(25, 1, 123, 20000, 1, 20000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cashier`
--
ALTER TABLE `cashier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_product`
--
ALTER TABLE `sales_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cashier`
--
ALTER TABLE `cashier`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales_product`
--
ALTER TABLE `sales_product`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
