-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2023 at 02:36 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suptech`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `phone`) VALUES
(1, 'Admin', 'admin@admin.com', '123', '0612345678');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cid` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cid`, `name`, `image`) VALUES
(1, 'Phones', 'phones.png'),
(2, 'Accessories', 'accessories.png'),
(3, 'Laptops', 'laptops.png'),
(4, 'TV', 'tvs.png'),
(5, 'Headphones', 'headphones.png');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `orderid` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `paymentType` varchar(100) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `orderid`, `status`, `paymentType`, `userId`, `date`) VALUES
(9, 'ORD-20231227112521', 'Order Confirmed', 'Cash on Delivery', 5, '2023-12-27 22:25:21'),
(10, 'ORD-20231227112959', 'Order Placed', 'Card Payment', 5, '2023-12-27 22:29:59'),
(11, 'ORD-20231228010833', 'Order Placed', 'Cash on Delivery', 5, '2023-12-28 12:08:33'),
(12, 'ORD-20231228021250', 'Order Placed', 'Cash on Delivery', 5, '2023-12-28 13:12:50'),
(13, 'ORD-20231228035856', 'Order Placed', 'Card Payment', 5, '2023-12-28 14:58:56'),
(14, 'ORD-20231228054050', 'Order Placed', 'Card Payment', 5, '2023-12-28 16:40:50');

-- --------------------------------------------------------

--
-- Table structure for table `ordered_product`
--

CREATE TABLE `ordered_product` (
  `oid` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordered_product`
--

INSERT INTO `ordered_product` (`oid`, `name`, `quantity`, `price`, `image`, `orderid`) VALUES
(8, 'ROG Strix Gaming Laptop', 1, '400000.0', 'ASUS ROG.jpg', 9),
(9, 'ROG Strix Gaming Laptop', 1, '400000.0', 'ASUS ROG.jpg', 10),
(10, 'camera', 3, '23.0', 'cameras.webp', 11),
(11, 'ROG Strix Gaming Laptop', 2, '400000.0', 'ASUS ROG.jpg', 12),
(12, 'ROG Strix Gaming Laptop', 1, '400000.0', 'ASUS ROG.jpg', 13),
(13, 'ASUS TUF Gaming A15', 2, '57592.0', 'asus_tuf.jpeg', 14),
(14, 'Samsung Galaxy S23 5G', 1, '66400.0', 'Samsung_Galaxy.jpg', 14);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `price` varchar(20) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `name`, `description`, `price`, `quantity`, `discount`, `image`, `cid`) VALUES
(1, 'SAMSUNG Galaxy F14 5G', 'The Samsung Galaxy F14 smartphone uses a segment-only 5nm processor that enables you with easy multitasking, gaming, and much more. It has a 6000 mAh battery that will last you for up to 2 days on a single charge.It has a large display of about 16.72 cm (6.5) full HD+ display that enables you with immersive viewing. The 12 GB of RAM with RAM Plus offers enough storage space to store all your data.', '18490.0', 9, 24, 'phone1.jpeg', 1),
(3, 'OnePlus Y1S Pro 138 cm  Ultra HD (4K) LED Smart Android TV', 'Enjoy rich, clear, and authentic audiovisual content in its true form with the brilliant OnePlus TV that understands you and strives to keep you entertained constantly. This OnePlus TV\'s Smart Manager offers a number of enhancements for a smart and durable TV experience. Thanks to the sophisticated Gamma Engine, which intelligently adjusts the image for crystal-clear content and maximises display quality, every scene comes to life.', '49999.0', 1, 18, 'tv1.jpeg', 2),
(8, 'Samsung Galaxy S23 5G', 'Brand	Samsung\r\nModel Name	Samsung Galaxy S23\r\nNetwork Service Provider	Unlocked for All Carriers\r\nOperating System	Android 13.0\r\nCellular Technology	5G', '79999.0', 9, 17, 'Samsung_Galaxy.jpg', 1),
(9, 'ASUS TUF Gaming A15', '15.6 inch Full HD, IPS, Anti-glare Display, Aspect Ratio: 16:9, Refresh Rate: 144 Hz, Viewing Angle: 85/85/85/85, Brightness: 250nits, Contrast Ratio: 1:1000, 45% NTSC, SRGB%: 62.5%, Adobe%: 47.34%, Adaptive-Sync\r\nLight Laptop without Optical Disk Drive\r\nPreloaded with MS Office', '71990.0', 9, 20, 'asus_tuf.jpeg', 3),
(12, 'boAt Airdopes 161 with 40 Hours Playback', 'The Airdopes 161 TWS earbuds offer immersive listening experience with 10mm drivers and Bluetooth v5.1 wireless technology. With IWP tech and ASAP Charge, they provide up to 180 minutes of playtime in just 10 minutes. With an IPX5 water-resistant build, they offer flexibility for gym sessions and easy command playback and voice assistant activation.', '2400.0', 26, 42, 'boat-airdopes.jpeg', 5),
(14, 'iPhone 15 Pro', 'Buy an iPhone 15 Pro for better performance', '378995.0', 75, 15, 'iphone-15.jpg', 1),
(15, 'iPhone 15 Pro MAX', 'Get $40 - $650 off iPhone 15 Pro or iPhone 15 Pro Max when you trade in an iPhone 7 or newer. 0% financing available. Buy now with free shipping.', '399999.0', 60, 14, 'iphone-15.jpg', 1),
(19, 'ROG Strix Gaming Laptop', 'ASUS ROG Strix G15 Gaming Laptop, 15.6â€ 300Hz 3ms IPS Type FHD Display, NVIDIA GeForce RTX 3050 Ti, AMD Ryzen 7 4800H, 16GB DDR4, 512GB PCIe SSD, RGB Keyboard, Windows 11, G513IE-PH74', '499999', 51, 20, 'ASUS ROG.jpg', 3),
(20, 'MacBook Pro 13″', 'Buy a MacBook Pro 13″ M2 256 Go SSD – Silver', '378995', 36, 15, 'MacBook Pro.jpg', 3),
(21, 'MacBook Pro 12\"', 'Buy a MacBook Pro 12″ M2 240 Go SSD – Silver', '378995', 36, 15, 'MacBook Pro.jpg', 3),
(22, 'LG TV', 'Buy an LG TV', '399999', 75, 10, 'LG TV.jpg', 4),
(23, 'SAMSUNG TV 43\" T5300 FHD Smart TV', 'Buy a SAMSUNG TV 43\" T5300 FHD Smart TV', '78995', 36, 9, 'Samsung TV.jpg', 4),
(24, 'Airdopes Alpha', 'true Wireless Earbuds with 35 Hours Playback, 13mm Drivers, ENx™ Tech, ASAP™ Charge, IWP™ Technology\r\n', '78995', 56, 7, 'Airpodes.jpg', 5),
(25, 'product test', 'test product', '99.0', 22, 90, 'iphone-15.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `registerdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `address` varchar(250) DEFAULT NULL,
  `pincode` varchar(255) NOT NULL,
  `city` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `name`, `email`, `password`, `phone`, `gender`, `registerdate`, `address`, `pincode`, `city`) VALUES
(5, 'Yassir Lassiry', 'yassir@yassir.com', '123', '0617234999', 'Male', '2023-12-27 21:26:38', 'Hay nassim im 351 appt 8', '20190', 'Casablanca'),
(7, 'Yassir Lassiry', 'lassiryyassir@gmail.com', '123', '123456789', 'Male', '2023-12-28 12:10:12', 'Hay nassim im 351 appt 8', '20190', 'Casablanca'),
(8, 'test', 'test@test.com', '123', '1234', 'Male', '2023-12-28 14:02:45', 'Hay nassim im 351 appt 8', '20190', 'Azilal');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `idwishlist` int(11) NOT NULL,
  `iduser` int(11) DEFAULT NULL,
  `idproduct` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid_idx` (`uid`),
  ADD KEY `pid_idx` (`pid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId_idx` (`userId`);

--
-- Indexes for table `ordered_product`
--
ALTER TABLE `ordered_product`
  ADD PRIMARY KEY (`oid`),
  ADD KEY `orderid_idx` (`orderid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `cid_idx` (`cid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `phone_UNIQUE` (`phone`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`idwishlist`),
  ADD KEY `idproduct_idx` (`idproduct`),
  ADD KEY `iduser_idx` (`iduser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ordered_product`
--
ALTER TABLE `ordered_product`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `idwishlist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `pid` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`),
  ADD CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `user` (`userid`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `user` (`userid`);

--
-- Constraints for table `ordered_product`
--
ALTER TABLE `ordered_product`
  ADD CONSTRAINT `orderid` FOREIGN KEY (`orderid`) REFERENCES `order` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `cid` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `idproduct` FOREIGN KEY (`idproduct`) REFERENCES `product` (`pid`),
  ADD CONSTRAINT `iduser` FOREIGN KEY (`iduser`) REFERENCES `user` (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
