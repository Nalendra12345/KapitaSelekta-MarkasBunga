-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2022 at 11:41 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `markas_bunga`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Markas Bunga ', '@markasbunga', 'f15d52934b55060d5fc41ac6ed494a92', '+6285774236397', 'markas@bunga.com', 'Jakarta'),
(2, 'markas bunga rangkaian', 'adminonly', '38a96428d1bf40a309868f8f9dd323ee', '081328732245', 'markas@bunga.com', 'Jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL,
  `category_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`, `category_image`) VALUES
(26, 'BUNGA MEJA', 'produk1665205935.jpg'),
(27, 'BUKET BUNGA', 'produk1665206047.jpg'),
(28, 'BUNGA PAPAN', 'produk1665206724.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `data_created`) VALUES
(41, 26, 'BUNGA MEJA (BM-01)', 200000, '', 'produk1665205962.jpg', 1, '2022-10-08 05:12:42'),
(42, 27, 'BUKET BUNGA CALLA LILY ', 400000, '', 'produk1665206077.jpg', 1, '2022-10-08 05:14:37'),
(43, 26, 'BUNGA MEJA (BM-02)', 850000, '', 'produk1665206180.jpg', 1, '2022-10-08 05:16:20'),
(44, 26, 'BUKET BUNGA (BM-03)', 300000, '', 'produk1665206218.jpg', 1, '2022-10-08 05:16:58'),
(45, 27, 'BUKET BUNGA TULIP', 850000, '', 'produk1665206260.jpg', 1, '2022-10-08 05:17:40'),
(46, 27, 'BUKET BUNGA KRISAN', 300000, '', 'produk1665206298.jpg', 1, '2022-10-08 05:18:18'),
(47, 27, 'BUKET BUNGA TULIP ', 850000, '', 'produk1665206346.jpg', 1, '2022-10-08 05:19:06'),
(48, 26, 'BUKET BUNGA (BM-04)', 850000, '', 'produk1665206385.jpg', 1, '2022-10-08 05:19:45'),
(49, 26, 'BUNGA MEJA (BM-05)', 700000, '', 'produk1665206428.jpg', 1, '2022-10-08 05:20:28'),
(50, 28, 'BUNGA PAPAN (BP-01)', 750000, '', 'produk1665206775.jpg', 1, '2022-10-08 05:26:15'),
(51, 28, 'BUNGA PAPAN (BP-02)', 450000, '', 'produk1665206823.jpg', 1, '2022-10-08 05:27:03'),
(52, 28, 'BUNGA PAPAN (BP-03)', 450000, '', 'produk1665206855.jpg', 1, '2022-10-08 05:27:35'),
(53, 28, 'BUNGA PAPAN (BP-04)', 450000, '', 'produk1665206927.jpg', 1, '2022-10-08 05:28:47'),
(54, 28, 'BUNGA PAPAN (BP-05)', 450000, '', 'produk1665206974.jpg', 1, '2022-10-08 05:29:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
