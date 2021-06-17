-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2021 at 10:45 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstName` varchar(125) NOT NULL,
  `lastName` varchar(125) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `confirmCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstName`, `lastName`, `email`, `mobile`, `address`, `password`, `type`, `confirmCode`) VALUES
(5, 'Admin1', 'Admin1', 'admin1@gmail.com', '1234567890', 'admin1-address', 'e00cf25ad42683b3df678c61f42c6bda', 'admin', '233821'),
(6, 'Admin2', 'Admin2', 'admin2@gmail.com', '1234567890', 'admin2-address', 'c84258e9c39059a89ab77d846ddab909', 'admin', '202249'),
(7, 'Staff1', 'Staff1', 'staff1@gmail.com', '1234567890', 'staff-address', '4d7d719ac0cf3d78ea8a94701913fe47', 'staff', '277732'),
(8, 'Staff2', 'Staff2', 'staff2@gmail.com', '1234567890', 'staff2-address', '8bc01711b8163ec3f2aa0688d12cdf3b', 'staff', '238519');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `uid`, `pid`, `quantity`) VALUES
(1, 0, 107, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `oplace` text NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `dstatus` varchar(10) NOT NULL DEFAULT 'no',
  `odate` date NOT NULL,
  `ddate` date NOT NULL,
  `delivery` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `uid`, `pid`, `quantity`, `oplace`, `mobile`, `dstatus`, `odate`, `ddate`, `delivery`) VALUES
(92, 48, 97, 1, 'user1-address', '1234567890', 'no', '2021-06-14', '0000-00-00', 'Standard Delivery'),
(93, 48, 98, 1, 'user1-address', '1234567890', 'no', '2021-06-14', '0000-00-00', 'Standard Delivery'),
(94, 48, 100, 1, 'user1-address', '1234567890', 'no', '2021-06-14', '0000-00-00', 'Standard Delivery'),
(95, 48, 83, 3, 'user1-address', '1234567890', 'Yes', '2021-06-14', '2021-06-10', 'Standard Delivery'),
(98, 48, 97, 1, 'user1-address', '1234567890', 'no', '2021-06-16', '0000-00-00', 'Express Delivery +100 Rupees u'),
(99, 48, 107, 9, 'user1-address', '1234567890', 'no', '2021-06-17', '0000-00-00', 'Express Delivery +100php upon '),
(100, 48, 107, 9, 'user1-address', '1234567890', 'no', '2021-06-17', '0000-00-00', 'Express Delivery +100php upon '),
(101, 48, 106, 6, 'user1-address', '1234567890', 'no', '2021-06-17', '0000-00-00', 'Express Delivery +100 Rupees u'),
(102, 48, 106, 6, 'user1-address', '1234567890', 'no', '2021-06-17', '0000-00-00', 'Express Delivery +100 Rupees u'),
(103, 48, 88, 4, 'user1-address', '1234567890', 'no', '2021-06-17', '0000-00-00', 'Standard Delivery'),
(104, 48, 91, 6, 'user1-address', '1234567890', 'no', '2021-06-17', '0000-00-00', 'Express Delivery +100php upon '),
(105, 48, 97, 4, 'user1-address', '1234567890', 'no', '2021-06-17', '0000-00-00', 'Express Delivery +100php upon '),
(106, 48, 99, 1, 'user1-address', '1234567890', 'no', '2021-06-17', '0000-00-00', 'Express Delivery +100php upon '),
(107, 48, 107, 1, 'user1-address', '1234567890', 'no', '2021-06-17', '0000-00-00', 'Express Delivery +100php upon ');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pName` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `piece` int(11) NOT NULL,
  `description` text NOT NULL,
  `available` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `pCode` varchar(20) NOT NULL,
  `picture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pName`, `price`, `piece`, `description`, `available`, `category`, `type`, `item`, `pCode`, `picture`) VALUES
(83, 'Magic Sarap 4packs', 185, 4, '8g set of 4', 100, '', '', 'seasoning', 'qq', '1539232659.PNG'),
(84, 'Coke Mismo 300ml set of 24 pcs', 290, 24, '300 ml 24pcs', 100, '', '', 'drink', 'qwe', '1539403731.PNG'),
(85, 'Sprite Mismo 250ml 24pcs', 300, 24, '250ml 24pcs', 100, '', '', 'drink', 'qwer', '1539403840.PNG'),
(86, 'Kopiko Blanca Cream 30g set of 2', 160, 2, '30g set of 2packs', 100, '', '', 'drink', 'qwrt', '1539404335.jpg'),
(88, 'Coke 1.5L  5bottles', 290, 5, 'coke 1.5L 5B', 100, '', 'clothing', 'drink', 'mnb', '1539405194.jpg'),
(90, 'Wilkins 330ml    30bottles', 238, 30, '330ml /   30 bottles', 100, '', '', 'drink', 'ads', '1539405937.jpg'),
(91, 'Graham Crackers 200g 4set', 165, 4, '200g/4sets', 100, '', 'other', 'snack', 'asdaa', '1539447093.PNG'),
(92, 'MagicCreamsChoco 308g 5set', 320, 5, '308g/set of 5/11 packs', 100, '', 'other', 'snack', 'adf', '1539447263.PNG'),
(93, 'Nissin Butter 10gx12 3sets', 100, 3, '10g /     12packs      /3sets', 100, '', '', 'snack', 'gfhjgj', '1539447833.PNG'),
(94, 'Otap Bacolod sp 200g', 180, 1, '200g', 100, '', '', 'snack', 'lkfjd', '1539447955.PNG'),
(95, 'Presto Creams PeanutB 10packs/3sets', 190, 3, '10packs/3sets', 100, '', '', 'snack', 'lk', '1539448126.PNG'),
(96, 'gummy colas  4sets', 100, 4, 'gummy 4s', 100, '', '', 'sweet', 'po', '1539448238.PNG'),
(97, 'kitkat 4s', 110, 4, 'kitkat bars', 100, '', '', 'sweet', 'n', '1539448317.PNG'),
(98, 'Mr. mais sweet corn candy 106g 4s', 100, 4, '106g /4sets', 100, '', '', 'sweet', 'b', '1539448500.PNG'),
(99, 'Palmolive silky  12ml+conditioner 10ml/24s', 200, 24, 'shampoo12ml+conditioner10ml', 100, '', 'other', 'shampoo', 'r', '1539448680.PNG'),
(100, 'Palmolive shampoo aroma-vitality 13.5ml 48s', 270, 48, '13.5ml/48sets', 100, '', '', 'shampoo', 'v', '1539448775.PNG'),
(101, 'Palmolive shampoo antiDandruff 13.5ml 48s', 270, 100, '13.5ml/48sets', 100, '', '', 'shampoo', 'e', '1539448866.PNG'),
(102, 'joy dishwashing liquid 255ml 3sets', 400, 3, '255ml 3sets', 100, '', '', 'soap', 'a', '1539660576.PNG'),
(103, 'dove bar soap 3sets 100g', 220, 3, '3sets 100g', 100, '', '', 'soap', 'nl', '1539660980.PNG'),
(104, 'Bioderm soap 7sets 135g', 300, 7, '7sets 135g', 100, '', '', 'soap', 'ewr', '1539661097.PNG'),
(105, 'Saffola Oodles, 184g Pouch', 70, 1, '  Ring Noodles, Yummy Masala Flavour, No Maida, Whole Grain Oats', 100, '', '', 'noodles', 'saffola-oats1', '1623855201.jpg'),
(106, 'Maggi 2-Minute Instant Noodles - Masala, 420g', 60, 1, '420g Pack', 250, '', '', 'noodles', 'maggie1', '1623855422.jpg'),
(107, 'Cup Noodles Mazedaar Masala, 70g', 45, 1, 'Full Meal Pack', 250, '', '', 'noodles', 'cup-noodle1', '1623855607.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(120) NOT NULL,
  `password` varchar(100) NOT NULL,
  `confirmCode` varchar(10) NOT NULL,
  `activation` varchar(10) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstName`, `lastName`, `email`, `mobile`, `address`, `password`, `confirmCode`, `activation`) VALUES
(48, 'User1', 'User1', 'user1@gmail.com', '1234567890', 'user1-address', '24c9e15e52afc47c225b757e7bee1f9d', '0', 'yes'),
(49, 'User2', 'User2', 'user2@gmail.com', '1234567890', 'user2-address', '7e58d63b60197ceb55a1c487989a3720', '0', 'yes'),
(50, 'User3', 'User3', 'user3@gmail.com', '1234567890', 'user3-address', '92877af70a45fd6a2ed7fe81e1236b78', '0', 'yes'),
(51, 'User4', 'User4', 'user4@gmail.com', '1234567890', 'user4-address', '3f02ebe3d7929b091e3d8ccfde2f3bc6', '227377', 'no');

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
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
