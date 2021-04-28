-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 01, 2020 at 09:07 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `patos`
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
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

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
(3, 'Birthdays', 'For Birthday', '2017-01-24 19:17:37', '30-01-2017 12:22:24 AM'),
(4, 'Wedding', 'For Wedding', '2017-01-24 19:19:32', ''),
(5, 'Annivesary', 'Anniversary Celebrations', '2017-01-24 19:19:54', ''),
(6, 'Party', 'Party Cakes', '2017-02-20 19:18:52', '');

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
(12, 1, '23', 1, '2020-08-31 16:46:56', 'COD', '1'),
(13, 1, '23', 2, '2020-08-31 16:54:54', 'Debit / Credit card', 'in Process'),
(14, 5, '24', 2, '2020-08-31 17:17:15', 'Internet Banking', 'Delivered'),
(15, 5, '24', 2, '2020-08-31 17:17:16', 'Internet Banking', 'in Process');

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
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36'),
(5, 7, 'Delivered', 'Receive you product at our shop tomorrow morning', '2020-08-30 20:53:19'),
(6, 14, 'in Process', 'dfghjkl;', '2020-08-31 18:51:24'),
(7, 15, 'in Process', 'Wait For Delivery', '2020-08-31 19:36:53'),
(8, 14, 'Delivered', 'Delivered', '2020-08-31 19:46:36'),
(9, 13, 'in Process', 'WE weill process your order soon', '2020-08-31 19:49:06');

-- --------------------------------------------------------

--
-- Table structure for table `pato_contactusinfo`
--

CREATE TABLE `pato_contactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pato_contactusinfo`
--

INSERT INTO `pato_contactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, '345-00100, Nairobi', 'info@tutsydelights.com', '0710238621');

-- --------------------------------------------------------

--
-- Table structure for table `pato_contactusquery`
--

CREATE TABLE `pato_contactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pato_contactusquery`
--

INSERT INTO `pato_contactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Patrick Risa', 'patrickrisa17@gmail.com', '0710238621', 'Can I get a cake for the weekend', '2020-02-11 18:00:30', 1),
(2, 'frank', 'frankwanjohi22222@gmail.com', '0748829366', 'Buda nataka keki', '2020-02-12 18:32:41', 1),
(3, 'ARISHOM RISA', 'patrickrisa17@gmail.com', '0710238621', 'Can I book a cake for the coming weekend, weeding cake 2KG ', '2020-02-13 13:18:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pato_employees`
--

CREATE TABLE `pato_employees` (
  `national_id` varchar(10) NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `birth_place` varchar(30) NOT NULL,
  `birth_date` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `telephone` varchar(10) NOT NULL,
  `department` varchar(15) NOT NULL,
  `status` varchar(15) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pato_employees`
--

INSERT INTO `pato_employees` (`national_id`, `employee_name`, `birth_place`, `birth_date`, `address`, `telephone`, `department`, `status`, `username`, `password`) VALUES
('20150008', 'Syahrul Rakhim', 'Padang', '1990-06-09', 'Cikarang Barat - Bekasi', '0856747646', 'Supervisor', 'Outsourcing', 'syahrul', '95ffb7a15f02c6c'),
('20150008', 'Syahrul Rakhim', 'Padang', '1990-06-09', 'Cikarang Barat - Bekasi', '0856747646', 'Supervisor', 'Outsourcing', 'syahrul', '95ffb7a15f02c6c'),
('2030/234', 'Patrick Risa', 'Nairobi', '1997-01-30', '34567', '0710238621', 'Manager', 'Kontrak', 'risa', '735c9c3675eaba1'),
('2030/235', 'larisay', 'Nakuru', '1997-01-30', '32224\r\n34567', '0710238621', 'Operator', 'Kontrak', 'admin', '7ca20b848d47710');

-- --------------------------------------------------------

--
-- Table structure for table `pato_pages`
--

CREATE TABLE `pato_pages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pato_pages`
--

INSERT INTO `pato_pages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'aboutus', 'aboutus', 'aboutus');

-- --------------------------------------------------------

--
-- Table structure for table `pato_subscribers`
--

CREATE TABLE `pato_subscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pato_subscribers`
--

INSERT INTO `pato_subscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(2, 'frankwanjos20@gmail.com', '2020-02-12 18:31:20'),
(3, 'kakagudaniel@gmail.com', '2020-02-15 06:00:36');

-- --------------------------------------------------------

--
-- Table structure for table `pato_testimonial`
--

CREATE TABLE `pato_testimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pato_testimonial`
--

INSERT INTO `pato_testimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'patrickrisa17@gmail.com', 'This is the best bakery ever', '2020-02-11 08:51:12', 1),
(2, 'frankwanjos20@gmail.com', 'men this is the best of the best ', '2020-02-12 18:35:42', 1),
(3, 'emmahwangari64@gmail.com', 'emmmma', '2020-02-14 12:16:49', 1),
(4, 'kakagudaniel@gmail.com', 'the cake was not sweet', '2020-02-15 06:01:49', 1),
(5, 'kakagudaniel@gmail.com', 'the cake was not sweet', '2020-02-15 06:02:42', NULL);

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
(23, 3, 13, 'Boys Birthday  Cake', 'Pato Bakers', 1500, 2000, 'This Cake is for boys having Birthdays\r\nweighs 1.5 Kg\r\nBrown Color', 'good.png', 'unnamed.jpg', '8f3daef6e15cd92a3b7439fb4089a465 (1).jpg', 200, 'In Stock', '2020-08-31 15:44:45', NULL),
(24, 4, 15, 'Premium Wedding Cake', 'Pato Bakers', 2500, 3000, 'Wedding \r\nWeighs 3Kg\r\nBrown', '60195Photo_Apr_25_8_30_36_PM.jpg', 'Screenshot at 2020-08-30 21-38-31.png', 'testimonial.jpg', 300, 'In Stock', '2020-08-31 15:54:27', NULL),
(25, 6, 16, 'Party Cake', 'Pato', 1800, 2000, 'Weighs 2KG\r\nBrown In Color\r\n', 'good.png', 'Screenshot at 2020-08-30 21-38-31.png', 'Screenshot at 2020-08-30 21-41-39.png', 200, 'In Stock', '2020-09-01 10:42:41', NULL),
(26, 5, 15, 'Annivessary Cake', 'Pato', 2700, 3000, 'Weight 5Kgs\r\nColor Brown\r\nCustomized', 'image.jpeg', 'Real red velvet cake is not chocolate cake with food coloring.png', 'Pineapple Upside Down Cake Recipe.jpg', 300, 'In Stock', '2020-09-01 11:12:48', NULL),
(27, 3, 13, 'Birthday Cake', 'One Neo', 1200, 1500, 'Weighs 2Kgs\r\nBrown in Color\r\nCustomized name', 'image.jpeg', 'Best-Birthday-Cake-with-milk-chocolate-buttercream-SQUARE.jpg', 'black-forest-cake-thumb.jpg', 200, 'In Stock', '2020-09-01 16:06:28', NULL);

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
(13, 3, 'Customized name', '2020-08-31 15:31:04', '01-09-2020 01:53:23 PM'),
(14, 3, 'No Name', '2020-08-31 15:32:43', NULL),
(15, 5, 'Premium Quality', '2020-08-31 15:33:26', NULL),
(16, 4, 'Normal Quality', '2020-08-31 15:33:39', NULL),
(17, 5, 'Large', '2020-08-31 15:34:11', NULL),
(18, 5, 'Medium', '2020-08-31 15:34:21', NULL),
(19, 6, 'Large', '2020-08-31 15:34:33', NULL),
(20, 6, 'Medium', '2020-08-31 15:34:49', NULL);

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
(26, 'mrjapeng@gmail.com', 0x3132372e302e302e3100000000000000, '2020-08-29 02:36:58', NULL, 1),
(27, 'mrjapeng@gmail.com', 0x3132372e302e302e3100000000000000, '2020-08-30 20:31:13', NULL, 1),
(28, 'mrjapeng@gmail.com', 0x3132372e302e302e3100000000000000, '2020-08-30 20:31:16', '01-09-2020 01:04:23 AM', 1),
(29, 'cyberosama@gmail.com', 0x3132372e302e302e3100000000000000, '2020-08-30 21:01:20', '31-08-2020 10:44:05 PM', 1),
(30, 'cyberosama@gmail.com', 0x3132372e302e302e3100000000000000, '2020-08-31 17:15:02', '31-08-2020 11:16:13 PM', 1),
(31, 'cyberosama@gmail.com', 0x3132372e302e302e3100000000000000, '2020-08-31 17:47:06', NULL, 1),
(32, 'cyberosama@gmail.com', 0x3132372e302e302e3100000000000000, '2020-08-31 19:34:47', '02-09-2020 12:15:08 AM', 1),
(33, 'mrjapeng@gmail.com', 0x3132372e302e302e3100000000000000, '2020-09-01 18:47:24', NULL, 1);

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
(1, 'Odhiambo Atieno', 'odhiambothomas09@gmail.com', 797049288, 'e807f1fcf82d132f9bb018ca6738a19f', 'Murang\'a', 'Kenya', 'Murang\'a', 110001, 'Kiharu', 'Kenya', 'Nairobi', 110092, '2017-02-04 19:30:50', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2018-04-29 09:30:32', ''),
(4, 'Peter Tosh', 'mrjapeng@gmail.com', 797049288, 'e807f1fcf82d132f9bb018ca6738a19f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-29 02:08:04', NULL),
(5, 'Awino Lawi', 'cyberosama@gmail.com', 700207417, 'e807f1fcf82d132f9bb018ca6738a19f', NULL, NULL, NULL, NULL, '383838 deLHI', 'kENYA', 'MUT', 388333, '2020-08-30 21:00:00', NULL);

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
(1, 1, 0, '2017-02-27 18:53:17'),
(2, 1, 23, '2020-08-31 16:25:49'),
(3, 5, 23, '2020-08-31 17:32:10');

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
-- Indexes for table `pato_contactusinfo`
--
ALTER TABLE `pato_contactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pato_contactusquery`
--
ALTER TABLE `pato_contactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pato_pages`
--
ALTER TABLE `pato_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pato_subscribers`
--
ALTER TABLE `pato_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pato_testimonial`
--
ALTER TABLE `pato_testimonial`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pato_contactusinfo`
--
ALTER TABLE `pato_contactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pato_contactusquery`
--
ALTER TABLE `pato_contactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pato_pages`
--
ALTER TABLE `pato_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pato_subscribers`
--
ALTER TABLE `pato_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pato_testimonial`
--
ALTER TABLE `pato_testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
