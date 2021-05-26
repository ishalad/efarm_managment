-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 01, 2019 at 03:40 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farm_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `mono` double NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`, `name`, `gender`, `address`, `photo`, `dob`, `mono`) VALUES
('ishalad8@gmail.com', 'isha123', 'isha', 'female', 'bhestan', 'wiwek-main.jpg', '1998-11-04', 9898989898),
('prathu@gmail.com', 'prathu12345', 'prathu', 'female', 'dumas', 'krishna-main.jpg', '1997-10-20', 9978888999);

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

DROP TABLE IF EXISTS `advertisement`;
CREATE TABLE IF NOT EXISTS `advertisement` (
  `adv_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `detail` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `photo` varchar(50) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`adv_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`adv_id`, `title`, `detail`, `date`, `photo`, `company_name`, `link`, `price`) VALUES
(7, 'flipkart', 'GO  and Shop Now', '2019-12-31', 'ad_flipkart.jpg', 'flipkart', 'https://www.flipkart.com', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `animal_category`
--

DROP TABLE IF EXISTS `animal_category`;
CREATE TABLE IF NOT EXISTS `animal_category` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `category` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `animal_category`
--

INSERT INTO `animal_category` (`id`, `category`) VALUES
(19, 'cow');

-- --------------------------------------------------------

--
-- Table structure for table `animal_detail`
--

DROP TABLE IF EXISTS `animal_detail`;
CREATE TABLE IF NOT EXISTS `animal_detail` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `weight` int(11) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `seller_name` varchar(50) NOT NULL,
  `date_of_buy` date NOT NULL,
  `price_of_buy` int(11) NOT NULL,
  `price_of_sale` int(11) NOT NULL,
  PRIMARY KEY (`a_id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `animal_detail`
--

INSERT INTO `animal_detail` (`a_id`, `id`, `name`, `weight`, `gender`, `photo`, `color`, `age`, `seller_name`, `date_of_buy`, `price_of_buy`, `price_of_sale`) VALUES
(1, 19, 'aaa', 89, 'male', 'Screenshot (1).png', 'hlksd', 89, 'hkj', '2018-01-21', 7, 89),
(2, 19, 'asdf', 12, 'male', 'Screenshot (1).png', 'white', 10, 'sdf', '2018-02-06', 20, 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `cart_list`
--

DROP TABLE IF EXISTS `cart_list`;
CREATE TABLE IF NOT EXISTS `cart_list` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `tamt` int(11) NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart_list`
--

INSERT INTO `cart_list` (`cart_id`, `p_id`, `email`, `date`, `qty`, `price`, `tamt`) VALUES
(1, 3, 'isha@gmail.com', '2019-05-03', 1, 20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE IF NOT EXISTS `event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(50) NOT NULL,
  `image1` varchar(100) NOT NULL,
  `image2` varchar(100) NOT NULL,
  `reg_date` date NOT NULL,
  `discription` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `win_price` int(11) NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `event_id` (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_name`, `image1`, `image2`, `reg_date`, `discription`, `price`, `win_price`) VALUES
(3, 'pigeon race', 'pigeon-race-1.jpg', 'pigeon-race-2.jpg', '2018-03-10', 'this is bla bla bla and more bla.', 10, 1000),
(4, 'cock fight', 'cock-fight-1.jpg', 'cock-fight-2.jpg', '2018-03-11', 'In this event bla bla bla.....', 50, 500),
(5, 'derby', 'derby-1.jpg', 'derby-2.jpg', '2018-03-11', 'thisis bla bla bla', 1000, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `event_registration`
--

DROP TABLE IF EXISTS `event_registration`;
CREATE TABLE IF NOT EXISTS `event_registration` (
  `EVENT_ID` int(11) DEFAULT NULL,
  `EMAIL` varchar(40) DEFAULT NULL,
  `NAME` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_registration`
--

INSERT INTO `event_registration` (`EVENT_ID`, `EMAIL`, `NAME`) VALUES
(5, 'sehulpatel7372.sp@gmail.com', 'aaa'),
(3, 'sehulpatel7372.sp@gmail.com', 'aaa'),
(3, 'sehulpatel7372.sp@gmail.com', 'aaa'),
(3, 'sehulpatel7372.sp@gmail.com', 'aaa'),
(3, 'sehulpatel7372.sp@gmail.com', 'aaa'),
(3, 'sehulpatel7372.sp@gmail.com', 'aaa'),
(3, 'sehulpatel7372.sp@gmail.com', 'aaa'),
(3, 'sehulpatel7372.sp@gmail.com', 'aaa'),
(3, 'sehulpatel7372.sp@gmail.com', 'aaa'),
(5, 'isha@gmail.com', 'hiral tollawla'),
(5, 'isha@gmail.com', 'hiral tollawla'),
(5, 'isha@gmail.com', 'hiral tollawla');

-- --------------------------------------------------------

--
-- Table structure for table `farmer_detail`
--

DROP TABLE IF EXISTS `farmer_detail`;
CREATE TABLE IF NOT EXISTS `farmer_detail` (
  `f_id` varchar(50) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `farm_name` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `mobile` double NOT NULL,
  `farm_logo` varchar(50) NOT NULL,
  `farmer_photo` varchar(50) NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmer_detail`
--

INSERT INTO `farmer_detail` (`f_id`, `f_name`, `farm_name`, `gender`, `dob`, `address`, `city`, `mobile`, `farm_logo`, `farmer_photo`) VALUES
('biu@gmail.com', 'asdf', 'asdf', 'male', '2018-02-17', 'asdf', 'vadodara', 9898988787, 'Screenshot (16).png', 'Screenshot (16).png'),
('jannat007@gmail.com', 'HVHNV', 'YRUYF', 'male', '2018-03-08', 'HFGHCGH @#$$$ ', 'surat', 5545345413, 'ginger.png', 'green_capsicum.png');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `message` varchar(500) NOT NULL,
  `rating` float NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fid`, `email`, `name`, `message`, `rating`) VALUES
(11, 'asdfasdf@gmail.com', 'wadf', 'uyfi', 5),
(10, 'rajpatel148@gmail.com', 'raj', 'love it', 4.5),
(9, 'rahulpatel7874@gmail.com', 'rahul', 'i love it', 5),
(12, 'hiraltollawala@gmail.com', 'drtyjhasdfgh', 'wsdf', 3.5);

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

DROP TABLE IF EXISTS `mail`;
CREATE TABLE IF NOT EXISTS `mail` (
  `mail_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`mail_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mail`
--

INSERT INTO `mail` (`mail_id`, `subject`, `message`, `date`) VALUES
(1, 'project', 'project ready che', '2019-04-04'),
(2, 'asdf', 'asfdfasdf', '2019-04-05'),
(3, 'hi', 'this is bla bla bla\r\n', '2019-04-10'),
(4, 'hi', 'hihihi', '2019-04-10'),
(5, 'asdf', 'asdfasdf hi hi hi ', '2019-04-10'),
(6, 'oin', 'oib', '2019-04-10'),
(7, 'oin', 'oib', '2019-04-10'),
(8, 'hi', 'hi this is me', '2019-04-10'),
(9, 'summer offer ', 'Excursive Offer :\r\nSpecial discount on summer fruits.\r\nBuy 50 K.G  Mango and get 5 K.G. Free.\r\nwww.eFarmORG@gmial.com\r\nValid till : April,2019.\r\nT&C Apply.', '2019-04-13'),
(10, 'hi', 'ohih', '2019-04-19'),
(11, 'hi', 'hi', '2019-04-19'),
(12, 'mo', 'mo', '2019-04-19'),
(13, 'mo', 'mo', '2019-04-19'),
(14, 'hihi', 'hihohi', '2018-03-18'),
(15, 'hihi', 'hihohi', '2018-03-18'),
(16, 'aaa', 'aaa', '2018-03-18'),
(17, 'aaa', 'aaa', '2018-03-18'),
(18, 'aaa', 'aaa', '2018-03-18'),
(19, 'aaa', 'aaa', '2018-03-18'),
(20, 'aaa', 'aaa', '2018-03-18'),
(21, 'aaa', 'aaa', '2018-03-18'),
(22, 'aaa', 'aaa', '2018-03-18'),
(23, 'aaa', 'aaa', '2018-03-18'),
(24, 'aaa', 'aaa', '2018-03-18'),
(25, 'aaa', 'aaa', '2018-03-18'),
(26, 'aaa', 'aaa', '2018-03-18'),
(27, 'aaa', 'aaa', '2018-03-18'),
(28, 'aaa', 'aaa', '2018-03-18'),
(29, 'aaa', 'aaa', '2018-03-18'),
(30, 'for appintment', 'your application accepted\r\n', '2018-03-18'),
(31, 'for appintment', 'your application accepted\r\n', '2018-03-18'),
(32, 'for appintment', 'your application accepted\r\n', '2018-03-18'),
(33, 'for appintment', 'your application accepted\r\n', '2018-03-18'),
(34, 'for appintment', 'your application accepted\r\n', '2018-03-18'),
(35, 'for appintment', 'your application accepted\r\n', '2018-03-18'),
(36, 'for appintment', 'your application accepted\r\n', '2018-03-18'),
(37, 'for appintment', 'Thank for Appintment', '2018-03-18'),
(38, 'for appintment', 'thank for appointment', '2018-03-18');

-- --------------------------------------------------------

--
-- Table structure for table `month_list`
--

DROP TABLE IF EXISTS `month_list`;
CREATE TABLE IF NOT EXISTS `month_list` (
  `p_id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `tamt` int(11) NOT NULL,
  KEY `p_id` (`p_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `month_list`
--

INSERT INTO `month_list` (`p_id`, `email`, `date`, `qty`, `price`, `tamt`) VALUES
(3, 'sehulpatel7372.sp@gmail.com', '2019-04-16', 30, 20, 40),
(4, 'sehulpatel7372.sp@gmail.com', '2019-04-16', 11, 40, 240),
(4, 'asdf@gmail.com', '2019-04-20', 1, 40, 40);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
CREATE TABLE IF NOT EXISTS `notification` (
  `n_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(40) NOT NULL,
  `status` varchar(20) NOT NULL,
  `ename` varchar(30) NOT NULL,
  PRIMARY KEY (`n_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`n_id`, `email`, `status`, `ename`) VALUES
(1, 'hiraltollawala@gmail.com', 'read', 'hiral tollawla'),
(2, 'asdf@gmail.com', 'read', 'ASDF'),
(3, 'rahulpatel7874@gmail.com', 'read', 'rahul');

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

DROP TABLE IF EXISTS `offer`;
CREATE TABLE IF NOT EXISTS `offer` (
  `o_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `o_detail` varchar(50) NOT NULL,
  `o_name` varchar(50) NOT NULL,
  `rate` float NOT NULL,
  PRIMARY KEY (`o_id`),
  KEY `p_id` (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offer`
--

INSERT INTO `offer` (`o_id`, `p_id`, `date`, `o_detail`, `o_name`, `rate`) VALUES
(1, 8, '2019-12-31', 'This offer end soon go fast and keep shopping :)', 'summertime', 10);

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

DROP TABLE IF EXISTS `order_list`;
CREATE TABLE IF NOT EXISTS `order_list` (
  `order_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `p_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`order_id`, `email`, `p_id`, `date`, `qty`, `price`, `total_amount`, `payment_type`, `status`) VALUES
(1, 'aaa@gmail.com', 10, '2019-04-03', 4, 100, 400, 'cash', 'pending'),
(2, 'aaa@gmail.com', 3, '2019-04-03', 1, 20, 20, 'card', 'pending'),
(2, 'aaa@gmail.com', 7, '2019-04-03', 4, 100, 400, 'other', 'pending'),
(2, 'aaa@gmail.com', 7, '2019-04-03', 11, 100, 1100, 'other', 'pending'),
(2, 'aaa@gmail.com', 3, '2019-04-03', 20, 20, 400, 'cash', 'pending'),
(2, 'sehulpatel7372.sp@gmail.com', 9, '2019-04-08', 50, 500, 10000, 'cash', 'pending'),
(2, 'sehulpatel7372.sp@gmail.com', 3, '2019-04-08', 7, 20, 40, 'cash', 'pending'),
(2, 'sehulpatel7372.sp@gmail.com', 4, '2019-04-08', 12, 40, 480, 'cash', 'pending'),
(2, 'sehulpatel7372.sp@gmail.com', 7, '2019-04-09', 3, 100, 300, 'cash', 'pending'),
(2, 'jannat007@gmail.com', 5, '2019-04-09', 5, 5, 25, 'cash', 'pending'),
(2, 'jannat007@gmail.com', 11, '2019-04-09', 5, 30, 150, 'cash', 'pending'),
(2, 'jannat007@gmail.com', 6, '2019-04-09', 8, 30, 240, 'cash', 'pending'),
(3, 'jannat007@gmail.com', 10, '2019-04-09', 5, 100, 500, 'cash', 'pending'),
(4, 'sehulpatel7372.sp@gmail.com', 3, '2019-04-10', 1, 20, 20, 'cash', 'pending'),
(5, 'sehulpatel7372.sp@gmail.com', 7, '2019-04-10', 10, 100, 1000, 'cash', 'pending'),
(6, 'sehulpatel7372.sp@gmail.com', 7, '2019-04-10', 5, 100, 500, 'cash', 'pending'),
(7, 'sehulpatel7372.sp@gmail.com', 5, '2019-04-10', 5, 5, 5, 'cash', 'pending'),
(8, 'sehulpatel7372.sp@gmail.com', 4, '2019-04-10', 6, 40, 240, 'cash', 'pending'),
(8, 'sehulpatel7372.sp@gmail.com', 3, '2019-04-10', 5, 20, 100, 'cash', 'pending'),
(9, 'sehulpatel7372.sp@gmail.com', 3, '2019-04-10', 10, 20, 200, 'cash', 'pending'),
(10, 'sehulpatel7372.sp@gmail.com', 14, '2019-04-11', 10, 10, 100, 'cash', 'pending'),
(11, 'sehulpatel7372.sp@gmail.com', 4, '2019-04-12', 9, 40, 40, 'cash', 'pending'),
(11, 'sehulpatel7372.sp@gmail.com', 16, '2019-04-12', 5, 250, 1250, 'cash', 'pending'),
(12, 'rahulpatel7874@gmail.com', 3, '2019-04-12', 10, 20, 200, 'cash', 'pending'),
(12, 'rahulpatel7874@gmail.com', 16, '2019-04-12', 5, 250, 1250, 'cash', 'pending'),
(13, 'rahulpatel7874@gmail.com', 14, '2019-04-12', 5, 10, 50, 'cash', 'pending'),
(13, 'rahulpatel7874@gmail.com', 16, '2019-04-12', 3, 250, 750, 'cash', 'pending'),
(13, 'rahulpatel7874@gmail.com', 5, '2019-04-12', 10, 5, 50, 'cash', 'pending'),
(14, 'rahulpatel7874@gmail.com', 9, '2019-04-12', 1, 50, 50, 'cash', 'pending'),
(15, 'rahulpatel7874@gmail.com', 3, '2019-04-12', 1, 20, 20, 'cash', 'pending'),
(16, 'rahulpatel7874@gmail.com', 14, '2019-04-12', 5, 10, 50, 'cash', 'pending'),
(16, 'rahulpatel7874@gmail.com', 16, '2019-04-12', 3, 250, 750, 'cash', 'pending'),
(16, 'rahulpatel7874@gmail.com', 5, '2019-04-12', 10, 5, 50, 'cash', 'pending'),
(17, 'rahulpatel7874@gmail.com', 14, '2019-04-13', 5, 10, 50, 'cash', 'pending'),
(17, 'rahulpatel7874@gmail.com', 16, '2019-04-13', 3, 250, 750, 'cash', 'pending'),
(17, 'rahulpatel7874@gmail.com', 5, '2019-04-13', 10, 5, 50, 'cash', 'pending'),
(18, 'rahulpatel7874@gmail.com', 14, '2019-04-13', 5, 10, 50, 'cash', 'pending'),
(18, 'rahulpatel7874@gmail.com', 16, '2019-04-13', 3, 250, 750, 'cash', 'pending'),
(18, 'rahulpatel7874@gmail.com', 5, '2019-04-13', 10, 5, 50, 'cash', 'pending'),
(19, 'sehulpatel7372.sp@gmail.com', 14, '2019-04-14', 5, 10, 50, 'cash', 'pending'),
(19, 'sehulpatel7372.sp@gmail.com', 16, '2019-04-14', 3, 250, 750, 'cash', 'pending'),
(19, 'sehulpatel7372.sp@gmail.com', 5, '2019-04-14', 10, 5, 50, 'cash', 'pending'),
(19, 'sehulpatel7372.sp@gmail.com', 4, '2019-04-14', 1, 40, 40, 'cash', 'pending'),
(19, 'sehulpatel7372.sp@gmail.com', 22, '2019-04-14', 1, 10, 10, 'cash', 'pending'),
(20, 'sehulpatel7372.sp@gmail.com', 26, '2019-04-14', 5, 70, 350, 'cash', 'pending'),
(20, 'sehulpatel7372.sp@gmail.com', 31, '2019-04-14', 10, 50, 500, 'cash', 'pending'),
(21, 'sehulpatel7372.sp@gmail.com', 3, '2019-04-16', 29, 20, 20, 'card', 'pending'),
(21, 'sehulpatel7372.sp@gmail.com', 4, '2019-04-16', 11, 40, 240, 'card', 'pending'),
(22, 'sehulpatel7372.sp@gmail.com', 29, '2019-04-17', 1, 100, 100, 'cash', 'pending'),
(22, 'sehulpatel7372.sp@gmail.com', 6, '2019-04-17', 5, 30, 150, 'cash', 'pending'),
(23, 'sehulpatel7372.sp@gmail.com', 31, '2019-04-18', 2, 50, 50, 'cash', 'pending'),
(23, 'sehulpatel7372.sp@gmail.com', 18, '2019-04-18', 250, 10, 500, 'cash', 'pending'),
(24, 'sehulpatel7372.sp@gmail.com', 15, '2019-04-18', 10, 100, 1000, 'cash', 'pending'),
(25, 'asdf@gmail.com', 3, '2019-04-20', 1, 20, 20, 'cash', 'pending'),
(26, 'asdf@gmail.com', 28, '2019-04-20', 15, 5, 75, 'cash', 'pending'),
(26, 'asdf@gmail.com', 7, '2019-04-20', 7, 100, 700, 'cash', 'pending'),
(27, 'isha@gmail.com', 3, '2019-04-20', 5, 20, 100, 'cash', 'pending'),
(27, 'isha@gmail.com', 4, '2019-04-20', 5, 40, 200, 'cash', 'pending'),
(27, 'isha@gmail.com', 9, '2019-04-20', 6, 50, 300, 'cash', 'pending'),
(28, 'isha@gmail.com', 3, '2019-04-20', 8, 20, 160, 'cash', 'pending'),
(29, 'isha@gmail.com', 4, '2019-05-01', 20, 40, 800, 'cash', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
CREATE TABLE IF NOT EXISTS `product_category` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(50) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`p_id`, `p_name`) VALUES
(8, 'fruit'),
(9, 'flower'),
(10, 'meat'),
(11, 'vegetable'),
(12, 'grains');

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

DROP TABLE IF EXISTS `product_detail`;
CREATE TABLE IF NOT EXISTS `product_detail` (
  `pd_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `quntity` int(11) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `mfd_date` date NOT NULL,
  PRIMARY KEY (`pd_id`),
  KEY `p_id` (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_detail`
--

INSERT INTO `product_detail` (`pd_id`, `p_id`, `name`, `type`, `quntity`, `photo`, `price`, `mfd_date`) VALUES
(3, 8, 'apple', 'quntity', 85, 'apple.png', 20, '2018-02-22'),
(4, 11, 'potato', 'kg', 975, 'potato.png', 40, '2018-02-23'),
(6, 11, 'carrot', 'kg', 500, 'carrot.png', 30, '2018-02-23'),
(7, 10, 'chicken', 'kg', 493, 'chicken_meat.png', 100, '2018-02-23'),
(9, 12, 'soybean', 'kg', 494, 'soybean.png', 50, '2018-02-23'),
(14, 8, 'cherry', 'kg', 100, 'cherry.png', 10, '2018-03-09'),
(15, 8, 'kiwi', 'quntity', 90, 'kiwi.png', 100, '2019-12-31'),
(16, 10, 'fish meat', 'kg', 100, 'fish_meat.png', 250, '2019-12-31'),
(17, 8, 'apricot', 'kg', 500, 'apricot.png', 20, '2019-12-31'),
(18, 12, 'barley', 'kg', 860, 'barley.png', 10, '2019-12-31'),
(19, 11, 'beet', 'kg', 200, 'beet_root.png', 40, '2019-12-31'),
(20, 11, 'bitter', 'kg', 300, 'bitter_gourd.png', 30, '2019-12-31'),
(21, 8, 'black grapes', 'kg', 500, 'black_grapes.png', 60, '2019-12-31'),
(22, 9, 'dahlia', 'quntity', 100, 'dahlia-2567091_960_720.png', 10, '2019-12-31'),
(23, 9, 'jasmine', 'quntity', 500, 'jasmine.png', 10, '2019-12-31'),
(24, 10, 'goat meat', 'kg', 100, 'goat_meat.png', 350, '2019-12-31'),
(25, 12, 'red bean', 'kg', 500, 'red_bean.png', 35, '2019-12-31'),
(26, 10, 'shrimp meat', 'quntity', 100, 'shrimp_meat.png', 70, '2019-12-31'),
(27, 9, 'white daisy', 'quntity', 500, 'white_daisy.png', 10, '2019-12-31'),
(28, 9, 'marigold', 'quntity', 285, 'marigold.png', 5, '2019-12-31'),
(29, 12, 'brown rice', 'kg', 10000, 'brown_rice.png', 100, '2019-12-31'),
(30, 10, 'pig meat', 'kg', 100, 'pig_meat.png', 400, '2019-12-31'),
(31, 8, 'mengo', 'kg', 0, 'mango.png', 50, '2019-12-31'),
(32, 11, 'garlic', 'kg', 1000, 'garlic.png', 40, '2019-12-31'),
(33, 11, 'green chilli', 'kg', 5000, 'green_chilli.png', 25, '2019-12-31'),
(34, 11, 'green capsicum', 'kg', 400, 'green_capsicum.png', 60, '2019-12-31'),
(35, 11, 'lady finger', 'kg', 1000, 'ladys_finger.png', 35, '2019-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `user_bank_detail`
--

DROP TABLE IF EXISTS `user_bank_detail`;
CREATE TABLE IF NOT EXISTS `user_bank_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `bank_name` varchar(50) NOT NULL,
  `card_type` varchar(50) NOT NULL,
  `name_on_card` varchar(50) NOT NULL,
  `card_number` int(11) NOT NULL,
  `expire_month` int(11) NOT NULL,
  `expire_year` int(11) NOT NULL,
  `cvv_number` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_registration`
--

DROP TABLE IF EXISTS `user_registration`;
CREATE TABLE IF NOT EXISTS `user_registration` (
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(50) NOT NULL,
  `mobile` double NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_registration`
--

INSERT INTO `user_registration` (`email`, `password`, `name`, `gender`, `dob`, `address`, `mobile`, `city`, `pincode`) VALUES
('isha@gmail.com', 'isha123', 'hiral tollawla', 'female', '2012-12-12', 'f 103 ashirwad enclave althan', 9909234936, 'surat', 395017),
('sehulpatel7372.sp@gmail.com', 'aaa', 'aaa', 'male', '2018-02-04', 'asdf', 9887766554, 'surat', 989898),
('maxpatel7874@gmail.com', '7874210543', 'girish', 'male', '2018-03-09', 'adajan', 7878787878, 'surat', 323232),
('asdf@gmail.com', 'asdf', 'ASDF', 'male', '2018-03-11', 'sadf', 9898989898, 'surat', 989898),
('rahulpatel7874@gmail.com', 'rahul12345', 'rahul', 'male', '1996-12-31', 'c-97 balaji krupa, palanpur jakatnaka, rander road', 9865154631, 'surat', 395005);

-- --------------------------------------------------------

--
-- Table structure for table `visitor_detail`
--

DROP TABLE IF EXISTS `visitor_detail`;
CREATE TABLE IF NOT EXISTS `visitor_detail` (
  `visit_id` int(11) NOT NULL AUTO_INCREMENT,
  `head_name` varchar(200) NOT NULL,
  `purpose` varchar(500) NOT NULL,
  `reg_date` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile_no` double NOT NULL,
  `city` varchar(50) NOT NULL,
  PRIMARY KEY (`visit_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wish_list`
--

DROP TABLE IF EXISTS `wish_list`;
CREATE TABLE IF NOT EXISTS `wish_list` (
  `wish_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `p_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`wish_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wish_list`
--

INSERT INTO `wish_list` (`wish_id`, `email`, `p_id`, `date`, `qty`, `price`) VALUES
(16, 'sehulpatel7372.sp@gmail.com', 6, '2019-04-19', 51, 30),
(14, 'sehulpatel7372.sp@gmail.com', 3, '2019-04-09', 1, 20),
(12, 'aaa@gmail.com', 4, '2019-03-30', 3, 40),
(11, 'aaa@gmail.com', 7, '2019-03-30', 4, 100),
(17, 'asdf@gmail.com', 3, '2019-04-20', 2, 20),
(18, 'asdf@gmail.com', 4, '2019-04-20', 1, 40),
(19, 'isha@gmail.com', 3, '2019-04-20', 1, 20),
(20, 'isha@gmail.com', 4, '2019-04-20', 1, 40),
(21, 'isha@gmail.com', 9, '2019-04-20', 1, 50);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `animal_detail`
--
ALTER TABLE `animal_detail`
  ADD CONSTRAINT `animal_detail_ibfk_1` FOREIGN KEY (`id`) REFERENCES `animal_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `offer`
--
ALTER TABLE `offer`
  ADD CONSTRAINT `offer_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `product_category` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD CONSTRAINT `product_detail_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `product_category` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
