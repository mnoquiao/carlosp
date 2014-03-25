-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2014 at 08:18 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `carlos_pizza`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `CartId` int(10) NOT NULL AUTO_INCREMENT,
  `UserId` int(10) NOT NULL,
  `DateCreated` datetime NOT NULL,
  `CheckedOut` bit(1) NOT NULL,
  PRIMARY KEY (`CartId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`CartId`, `UserId`, `DateCreated`, `CheckedOut`) VALUES
(1, 0, '2014-03-25 06:43:33', b'0'),
(2, 0, '2014-03-25 06:45:08', b'0'),
(3, 0, '2014-03-25 06:45:13', b'0'),
(4, 0, '2014-03-25 06:46:40', b'0'),
(5, 0, '2014-03-25 06:47:00', b'0'),
(6, 0, '2014-03-25 06:47:16', b'0'),
(7, 0, '2014-03-25 09:09:04', b'0'),
(8, 0, '2014-03-25 09:16:58', b'0'),
(9, 0, '2014-03-25 09:35:25', b'0'),
(10, 0, '2014-03-25 12:26:36', b'0'),
(11, 0, '2014-03-25 12:33:21', b'0'),
(12, 0, '2014-03-25 12:34:29', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE IF NOT EXISTS `cart_items` (
  `CartItemId` int(10) NOT NULL AUTO_INCREMENT,
  `CartId` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `UnitPrice` decimal(12,2) NOT NULL,
  PRIMARY KEY (`CartItemId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`CartItemId`, `CartId`, `ProductId`, `Quantity`, `UnitPrice`) VALUES
(7, 9, 5, 1, '180.00'),
(26, 12, 19, 1, '300.00'),
(27, 12, 5, 1, '180.00'),
(28, 12, 13, 1, '180.00'),
(29, 12, 19, 1, '300.00'),
(30, 12, 5, 1, '180.00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `CategoryId` int(10) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `ImageId` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`CategoryId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CategoryId`, `CategoryName`, `Description`, `ImageId`) VALUES
(20, 'Beef', 'Different dishes using beef', 51),
(21, 'Chicken', 'Different dishes of chicken', 52),
(22, 'Desserts', 'Different kinds of deserts', 53),
(23, 'Noodles', 'Different kinds of noodles', 54),
(24, 'Seafoods', 'Different kinds of seafoods', 55),
(25, 'Pasta', 'Pasta dishes', 56),
(26, 'Pork', 'Different dishes of pork', 57),
(27, 'Soup', 'Soup dishes', 58),
(28, 'Vegetables', 'Vegetables dishes', 59);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `CustomerId` int(10) NOT NULL AUTO_INCREMENT,
  `UserId` int(10) NOT NULL,
  `FirstName` varchar(60) NOT NULL,
  `LastName` varchar(60) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(60) DEFAULT NULL,
  `PostalCode` varchar(10) DEFAULT NULL,
  `Country` varchar(80) DEFAULT NULL,
  `Birthdate` date NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `ImageId` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`CustomerId`,`UserId`),
  UNIQUE KEY `CustomerId` (`CustomerId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerId`, `UserId`, `FirstName`, `LastName`, `Address`, `City`, `PostalCode`, `Country`, `Birthdate`, `Phone`, `ImageId`) VALUES
(1, 39, 'Mark Anthony', 'Noquiao', '1911-a laon laan rd. corner kundiman sts. sampaloc, manila', 'Manila', NULL, NULL, '1988-05-22', '09199855281', NULL),
(2, 1312, 'Jasmine', 'Bedico', '205 McArthur High-way, Karuhatan, Valenzuela City', NULL, NULL, NULL, '1980-04-12', '09282117669', NULL),
(3, 1319, 'Julianito', 'Noquiao', '99 Paradise Village, Brgy. Tonsuya, Malabon City', NULL, NULL, NULL, '1960-02-24', '7097786', NULL),
(4, 1491, 'maryrose gallo', 'biscoro', 'valenzuela', NULL, NULL, NULL, '2014-03-07', '(1234) 567-8910', NULL),
(5, 1494, 'Annaliza', 'Masaya', 'Las Pi&ntilde;as', NULL, NULL, NULL, '1111-11-11', '(1111) 111-1111', NULL),
(6, 1534, 'ma. cristina o.', 'noquiao', '99 paradise village, brgy. tonsuya, malabon city', NULL, NULL, NULL, '1961-10-05', '+639199855281', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `ImageId` int(10) NOT NULL AUTO_INCREMENT,
  `ImageName` varchar(100) NOT NULL,
  `ImageFileName` varchar(100) NOT NULL,
  `FileSize` bigint(20) NOT NULL,
  PRIMARY KEY (`ImageId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=76 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`ImageId`, `ImageName`, `ImageFileName`, `FileSize`) VALUES
(42, '10150061_648574761862889_2035293542_n.jpg', '1395623042532f8482040621.16585740.jpg', 29199),
(43, '10149346_648574681862897_1803026967_n.jpg', '1395626405532f91a50e9ab3.72699588.jpg', 19154),
(44, '10149346_648574681862897_1803026967_n.jpg', '1395626468532f91e465f2f4.02585095.jpg', 19154),
(45, '1903598_648574685196230_1655797122_n.jpg', '1395626512532f92103da346.75082627.jpg', 14869),
(46, '1662337_10151928867996695_1463784710_n.jpg', '13956682555330351f7e3ab1.51430303.jpg', 60634),
(47, '412242_2530071190303_1504758610_o.jpg', '13956682865330353e636371.40843630.jpg', 151893),
(48, '1234834_603247513051130_1780583513_n.jpg', '1395668699533036dbf07f71.85829977.jpg', 19318),
(49, '1234834_603247513051130_1780583513_n.jpg', '13956687475330370b87bca1.71289449.jpg', 19318),
(50, '376986_281393695236515_1553737314_n.jpg', '139566904953303839763080.21225536.jpg', 83552),
(51, 'beef.jpg', '139567167053304276ea27a9.50321630.jpg', 170986),
(52, 'chicken.jpg', '139567168953304289e41db7.51475130.jpg', 29199),
(53, '10153536_648574765196222_49978525_n.jpg', '1395671723533042ab449583.00216656.jpg', 49689),
(54, '10149346_648574681862897_1803026967_n.jpg', '1395671749533042c5348142.30739571.jpg', 19154),
(55, 'seafood.jpg', '139567189553304357c27715.46696894.jpg', 114588),
(56, 'pasta dishes.jpg', '139567194553304389178489.45622888.jpg', 40207),
(57, '1903598_648574685196230_1655797122_n.jpg', '1395672039533043e7ce1637.43520604.jpg', 14869),
(58, 'soap.jpg', '1395672101533044252676a6.35383350.jpg', 57251),
(59, 'Peppered_Vegetable_Medley2.jpg', '13956721945330448210f8f2.92194316.jpg', 34893),
(60, 'baked-macaroni.jpg', '13956724615330458d3453a7.62053680.jpg', 534884),
(61, 'Fettuccine Carbonara - Mom and Tinas Bakery Cafe.jpg', '139567318653304862262b70.24458804.jpg', 90629),
(62, 'C&#039;shicken, Roasted Red Pepper and Feta Lasagna 500.jpg', '13956734715330497f8776a1.15632370.jpg', 46375),
(63, 'pasta.jpg', '1395673552533049d0ceafe2.80787246.jpg', 310692),
(64, 'Tuna and Caper Tomato Pasta 500.jpg', '139567361053304a0a727017.37587568.jpg', 47638),
(65, 'chicken-cordon-bleu.jpg', '139567381253304ad45d1ed0.95408854.jpg', 279563),
(66, '12-pcs-2.jpg', '1395675579533051bbcdc1e2.65929492.jpg', 1762282),
(67, 'Alitas-de-pollo-de-horno-de-Hong-Kong.jpg', '13956756605330520ca012d7.15274578.jpg', 20446),
(68, 'bangus-ala-pobre-sp.jpg', '139567574453305260dc7826.25816876.jpg', 143044),
(69, 'CrabCakes01.jpg', '1395675850533052ca7b6110.54276410.jpg', 379526),
(70, 'rellenong-pusit.jpg', '13956759345330531e6ddb79.85026066.jpg', 574183),
(71, '123.jpg', '139567602353305377eb17c4.88435010.jpg', 294392),
(72, 'Pancit-Guisado-Bilao.jpg', '1395676069533053a5d944d8.33733087.jpg', 502165),
(73, '5887978_f496.jpg', '1395676107533053cb465c07.65094371.jpg', 72325),
(74, 'asado.jpg', '13956761985330542626e711.95420707.jpg', 75803),
(75, 'spicy-pork_plate.jpg', '13956762555330545f041074.95416973.jpg', 314606);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `OrderId` int(10) NOT NULL AUTO_INCREMENT,
  `CustomerId` int(10) NOT NULL,
  `OrderDate` datetime NOT NULL,
  `DeliveredDate` datetime DEFAULT NULL,
  `CustomerName` varchar(120) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(60) NOT NULL,
  `PostalCode` varchar(10) NOT NULL,
  `Country` varchar(80) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `IsPaid` bit(1) NOT NULL,
  `PaymentMethod` varchar(20) NOT NULL,
  PRIMARY KEY (`OrderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE IF NOT EXISTS `order_details` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `OrderId` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `UnitPrice` decimal(12,2) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Discount` double DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `ProductId` int(10) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(100) NOT NULL,
  `Description` text,
  `ShortDescription` varchar(100) DEFAULT NULL,
  `CategoryId` int(10) NOT NULL,
  `QuantityPerUnit` int(5) NOT NULL,
  `UnitPrice` decimal(12,2) NOT NULL,
  `UnitsInStock` smallint(6) DEFAULT NULL,
  `UnitsOnOrder` smallint(6) DEFAULT NULL,
  `ReorderLevel` smallint(6) DEFAULT NULL,
  `Discontinued` bit(1) NOT NULL,
  `ImageId` int(10) DEFAULT NULL,
  PRIMARY KEY (`ProductId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductId`, `ProductName`, `Description`, `ShortDescription`, `CategoryId`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`, `ImageId`) VALUES
(5, 'Baked Macaroni', 'Baked macaroni is a pasta dish which is made out of macaroni, tomato based sauce and minced meat. It looks similar to Macaroni and Cheese straight out of the oven but the resemblance stops there as this dish is not cheese based but is flavoured with meat and tomatoes. Another popular pasta dish in the Philippines after spaghetti, though it looks like another Italian pasta dish this recipe is more on the sweet side as pasta dishes in the Philippines are adjusted for the Filipino palate which is a mixture of savoury sweet and spicy sauce.', 'Baked macaroni is a pasta dish which is made out of macaroni, tomato based sauce and minced meat.', 25, 1, '180.00', 100, NULL, 20, b'0', 60),
(6, 'Carbonara Fettuccine', 'Carbonara Fettuccine', 'Carbonara Fettuccine', 25, 1, '180.00', 100, NULL, 20, b'0', 61),
(7, 'Lasagna', 'With all of the cold weather that we have been having, I have been craving some comfort food and one of my favourite comfort foods is lasagna.', 'Lasagna', 25, 1, '150.00', 100, NULL, 20, b'0', 62),
(8, 'Spaghetti with Two Sauces', 'Spaghetti with Two Sauces', 'Spaghetti with Two Sauces', 25, 1, '130.00', 200, NULL, 20, b'0', 63),
(9, 'Tuna Chili Spaghetti', 'Tuna Chili Spaghetti', 'Tuna Chili Spaghetti', 25, 1, '134.00', 2, NULL, 20, b'0', 64),
(10, 'Chicken Cordon Bleu', 'Chicken Cordon Bleu', 'Chicken Cordon Bleu', 21, 1, '250.00', 250, NULL, 10, b'0', 65),
(11, 'Fried Chicken', 'Fried Chicken', 'Fried Chicken', 21, 1, '130.00', 30, NULL, 10, b'0', 66),
(12, 'Hong Kong  Chicken', 'Hong Kong  Chicken', 'Hong Kong  Chicken', 21, 1, '180.00', 120, NULL, 20, b'0', 67),
(13, 'Grilled Bangus Belly', 'Grilled Bangus Belly', 'Grilled Bangus Belly', 24, 1, '180.00', 500, NULL, 20, b'0', 68),
(14, 'Crab Cake', 'Crab Cake', 'Crab Cake', 24, 1, '300.00', 500, NULL, 2, b'0', 69),
(15, 'Rellenong Pusit', 'Rellenong Pusit', 'Rellenong Pusit', 24, 1, '140.00', 200, NULL, 3, b'0', 70),
(16, 'Chinese Pancit Canton', 'Chinese Pancit Canton', 'Chinese Pancit Canton', 23, 1, '250.00', 300, NULL, 5, b'0', 71),
(17, 'Pancit Guisado', 'Pancit Guisado', 'Pancit Guisado', 23, 1, '300.00', 500, NULL, 2, b'0', 72),
(18, 'Pancit Sotanghon', 'Pancit Sotanghon', 'Pancit Sotanghon', 23, 1, '300.00', 500, NULL, 1, b'0', 73),
(19, 'Pork Asado', 'Pork Asado', 'Pork Asado', 26, 1, '300.00', 20, NULL, 10, b'0', 74),
(20, 'Pork Barbecue', 'Pork Barbecue', 'Pork Barbecue', 26, 1, '500.00', 350, NULL, 1, b'0', 75);

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE IF NOT EXISTS `reservations` (
  `ReservationId` int(10) NOT NULL AUTO_INCREMENT,
  `UserId` int(10) NOT NULL,
  `ReserveTo` varchar(120) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `ReservationDate` date NOT NULL,
  `ReservationTime` time NOT NULL,
  `Message` text NOT NULL,
  `Granted` bit(1) NOT NULL,
  PRIMARY KEY (`ReservationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `reservation_queue`
--

CREATE TABLE IF NOT EXISTS `reservation_queue` (
  `QueueId` int(10) NOT NULL AUTO_INCREMENT,
  `ReservationId` int(11) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`QueueId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `RoleId` int(10) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`RoleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`RoleId`, `Name`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `UserId` int(10) NOT NULL AUTO_INCREMENT,
  `Email` varchar(100) DEFAULT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` char(100) DEFAULT NULL,
  `Activation` varchar(200) DEFAULT NULL,
  `UserActive` bit(1) NOT NULL,
  `DateCreated` date DEFAULT NULL,
  PRIMARY KEY (`UserId`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `UserName` (`UserName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3214 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `Email`, `UserName`, `Password`, `Activation`, `UserActive`, `DateCreated`) VALUES
(1, 'admin@carlospizza.com', 'admin', '$2y$10$yD2Yknn/9Tvcs6BPiVab9uMScEI2j9MND8kUQc4Mazg4qu9URseuG', NULL, b'1', '2014-03-23'),
(39, 'mnoquiao@gmail.com', 'mnoquiao', '$2y$10$tvjM6ZyTWtkSvC7MNhZSSuv8V7CUNeptYHprXIuyXEt6mFB2M6smm', '2d2cf5210204c7f244d446158c625ac48c81534e', b'0', '2014-03-23'),
(1312, 'jasminebedico0412@yahoo.com', 'jbedico', '$2y$10$wh/9FC9prxMJNxEFa5oB2O/KEajlsx9ULtLofLKrtkEl886WJ3OmO', 'a902bb4d506e1446bfee5ceac4b2d0b57025c65b', b'1', '2014-03-24'),
(1319, 'juanito@gmail.com', 'juanito', '$2y$10$GH36pRGu4V/svhIfD5bCOONHvtmk.KshVIb9ZeyE.J9.8a6ROPdAu', 'ca02769baaea1b2030c516cf6ef64452007b56c7', b'1', '2014-03-24'),
(1491, 'maryrose@roses.com', 'maryrose', '$2y$10$O6l9w0KT87HKQ7A8VKcHg.tL9ogs.wArKz/gZzKbziFVFjEw7y2se', 'a61d180eae30da6f03fda713164f072349da9851', b'1', '2014-03-24'),
(1494, 'annaliza_111@gmail.com', 'annaliza100', '$2y$10$KHZasOlimML79SRlGNYPs.xt4dAygIcOtU/w0BTeeoVG/LOurbgiC', '370d87e1b2661f2b13534de6382912f2a6ee4fa9', b'1', '2014-03-24'),
(1534, 'cristinanoquiao@gmail.com', 'mcristina', '$2y$10$pKqUkBpktZCh16rOIngXVu3X6Y675zU7S/QmiXiruoUZgkte5mVei', '50c94137c200c3cb1d0361e99bcd9a20b425700f', b'1', '2014-03-24');

-- --------------------------------------------------------

--
-- Table structure for table `users_in_roles`
--

CREATE TABLE IF NOT EXISTS `users_in_roles` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `UserId` int(10) NOT NULL,
  `RoleId` int(10) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UserId` (`UserId`),
  KEY `RoleId` (`RoleId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1681 ;

--
-- Dumping data for table `users_in_roles`
--

INSERT INTO `users_in_roles` (`Id`, `UserId`, `RoleId`) VALUES
(1, 1, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_in_roles`
--
ALTER TABLE `users_in_roles`
  ADD CONSTRAINT `users_in_roles_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`),
  ADD CONSTRAINT `users_in_roles_ibfk_2` FOREIGN KEY (`RoleId`) REFERENCES `roles` (`RoleId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
