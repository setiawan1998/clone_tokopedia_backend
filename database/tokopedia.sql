-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 24, 2019 at 08:00 PM
-- Server version: 5.7.26-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokopedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image` text NOT NULL,
  `location` varchar(255) NOT NULL,
  `seller_name` varchar(255) NOT NULL,
  `rating` int(11) NOT NULL,
  `promotion` enum('0','1','2') NOT NULL COMMENT '0=none, 1=cashback, 2=free delivery'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `location`, `seller_name`, `rating`, `promotion`) VALUES
(1, 'ASUS ZENFONE MX M2 3/32GB', 2000000, 'https://www.localstartupfest.id/wp-content/uploads/Asus-ZenFone-Max-Pro-M2-ZB631KL-hp-asus-terbaru.jpg', 'Jakarta Selatan', 'Setiawan Restu', 5, '0'),
(2, 'IPHONE XS 4/64GB', 20000000, 'https://ibox.co.id/media/catalog/product/cache/3/image/9df78eab33525d08d6e5fb8d27136e95/i/p/iphonexs-max-gold_3_1.png', 'Bogor Jawa Barat', 'Iphone Official', 5, '1'),
(3, 'OPPO f11 3/32GB', 1700000, 'https://i.gadgets360cdn.com/products/large/1551797712_635_oppo_f11_pro.jpg', 'Pekalongan', 'Restu Aji', 4, '2'),
(4, 'ASUS ZENFONE MX M1 2/32GB', 1600000, 'https://www.localstartupfest.id/wp-content/uploads/Asus-ZenFone-Max-Pro-M2-ZB631KL-hp-asus-terbaru.jpg', 'Jakarta Selatan', 'Setiawan Restu', 5, '0'),
(5, 'IPHONE XR 8/64GB', 25000000, 'https://ibox.co.id/media/catalog/product/cache/3/image/9df78eab33525d08d6e5fb8d27136e95/i/p/iphonexs-max-gold_3_1.png', 'Bogor Jawa Barat', 'Iphone Official', 5, '1'),
(6, 'OPPO f7 3/32GB', 1500000, 'https://i.gadgets360cdn.com/products/large/1551797712_635_oppo_f11_pro.jpg', 'Pekalongan', 'Restu Aji', 4, '2'),
(7, 'ASUS ZENFONE MX M2 4/64GB', 2500000, 'https://www.localstartupfest.id/wp-content/uploads/Asus-ZenFone-Max-Pro-M2-ZB631KL-hp-asus-terbaru.jpg', 'Jakarta Selatan', 'Setiawan Restu', 4, '0'),
(8, 'IPHONE XS 8/256GB', 30000000, 'https://ibox.co.id/media/catalog/product/cache/3/image/9df78eab33525d08d6e5fb8d27136e95/i/p/iphonexs-max-gold_3_1.png', 'Bogor Jawa Barat', 'Iphone Official', 5, '0'),
(9, 'OPPO f15 5/256GB', 2700000, 'https://i.gadgets360cdn.com/products/large/1551797712_635_oppo_f11_pro.jpg', 'Pekalongan', 'Restu Aji', 4, '0'),
(10, 'ASUS ZENFONE MX M1 2/32GB', 1600000, 'https://www.localstartupfest.id/wp-content/uploads/Asus-ZenFone-Max-Pro-M2-ZB631KL-hp-asus-terbaru.jpg', 'Jakarta Selatan', 'Rendy', 4, '1'),
(11, 'IPHONE XR 8/64GB', 25000000, 'https://ibox.co.id/media/catalog/product/cache/3/image/9df78eab33525d08d6e5fb8d27136e95/i/p/iphonexs-max-gold_3_1.png', 'Bogor Jawa Barat', 'Iphone Official', 5, '1'),
(12, 'OPPO f7 3/32GB', 1500000, 'https://i.gadgets360cdn.com/products/large/1551797712_635_oppo_f11_pro.jpg', 'Pekalongan', 'Restu Aji', 4, '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
