-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.29-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2014-02-11 04:34:23
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping database structure for pizza_db
CREATE DATABASE IF NOT EXISTS `pizza_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `pizza_db`;


-- Dumping structure for table pizza_db.price
CREATE TABLE IF NOT EXISTS `price` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(230) NOT NULL,
  `price` varchar(200) NOT NULL,
  `store_name` varchar(200) DEFAULT NULL,
  `notes` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

-- Dumping data for table pizza_db.price: ~35 rows (approximately)
/*!40000 ALTER TABLE `price` DISABLE KEYS */;
INSERT INTO `price` (`id`, `product_code`, `price`, `store_name`, `notes`) VALUES
	(5, 'PIZZ102', '234.0', 'Pizza Hutt Noida', 'Very good service and nice atmosphere '),
	(6, 'PIZZ102', '677.0', 'Girgaon Central', 'Nice experience !!!'),
	(7, 'PIZZ102', '456.0', 'Gurgaon East', 'Nice experience !!!'),
	(8, 'PIZZ102', '452.0', 'Gurgaon West', 'Nice experience !!!'),
	(9, 'PIZZ102', '238.0', 'Gurgaon Outer', 'Nice experience !!!'),
	(10, 'PIZZ106', '788.0', 'Noida Club', 'Nice experience !!!'),
	(11, 'PIZZ106', '434.0', 'Noida East', 'Nice experience !!!'),
	(12, 'PIZZ106', '453.0', 'Noida West', 'Nice experience !!!'),
	(13, 'PIZZ106', '898.0', 'Delhi East', 'Nice experience !!!'),
	(14, 'PIZZ106', '546.0', 'Delhi West', 'Nice experience !!!'),
	(15, 'PIZZ106', '432.0', 'Delhi Outer', 'Nice experience !!!'),
	(16, 'PIZZ178', '767.0', 'Delhi East', 'Nice experience !!!'),
	(17, 'PIZZ178', '878.0', 'Delhi Outer', 'Nice experience !!!'),
	(18, 'PIZZ178', '234.0', 'Delhi West', 'Nice experience !!!'),
	(19, 'PIZZ178', '678.0', 'Pune', 'Nice experience !!!'),
	(20, 'PIZZ178', '987.0', 'Delhi Inter', 'Nice experience !!!'),
	(21, 'pizz7898', '878.0', 'India Gate', 'Nice experience !!!'),
	(22, 'pizz7898', '875.0', 'Delhi East', 'Nice experience !!!'),
	(23, 'pizz7898', '213.0', 'Delhi West', 'Nice experience !!!'),
	(24, 'pizz7898', '1345.0', 'Delhi Inter', 'Nice experience !!!'),
	(25, 'pizz7898', '500.0', 'Outer NCR', 'Worst Ever'),
	(26, 'PIZZ102', '567.0', 'India Gate', 'Excellent !!!'),
	(27, 'PIZZ102', '234.0', 'Outer NCR', 'Good !!!'),
	(28, 'DOMI234', '345.66', 'SEC - 44, Gurgaon', 'Great !!'),
	(29, 'DOMI234', '345.66', 'SEC - 44, Gurgaon', 'Great !!'),
	(30, 'DOMI234', '345.66', 'SEC - 44, Gurgaon', 'Great !!'),
	(31, 'DOMI234', '345.66', 'SEC - 44, Gurgaon', 'Great !!'),
	(32, 'DOMI234', '345.66', 'SEC - 44, Gurgaon', 'Great !!'),
	(33, 'DOMI234', '345.66', 'SEC - 44, Gurgaon', 'Great !!'),
	(34, 'DOMI234', '345.66', 'SEC - 44, Gurgaon', 'Great !!'),
	(35, 'DOMI234', '345.66', 'SEC - 44, Gurgaon', 'Great !!'),
	(36, 'DOMI234', '345.66', 'SEC - 44, Gurgaon', 'Great !!'),
	(37, 'DOMI234', '345.66', 'SEC - 44, Gurgaon', 'Great !!'),
	(38, 'DOMI234', '345.66', 'SEC - 44, Gurgaon', 'Great !!'),
	(39, 'DOMI234', '345.66', 'SEC - 44, Gurgaon', 'Great !!');
/*!40000 ALTER TABLE `price` ENABLE KEYS */;


-- Dumping structure for table pizza_db.product
CREATE TABLE IF NOT EXISTS `product` (
  `product_code` varchar(450) NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `product_description` varchar(450) NOT NULL,
  PRIMARY KEY (`product_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table pizza_db.product: ~4 rows (approximately)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`product_code`, `product_name`, `product_description`) VALUES
	('PIZZ102', 'Pizza Hutt', 'Good in taste and healthy !!!'),
	('PIZZ106', 'Blue Pizza', 'Comes in blue color wrapper, attractive !!!'),
	('PIZZ178', 'Green Pizza', 'Contains green vegetables and more of juicy things !!!'),
	('pizz7898', 'Dominos', 'Tastes good, easy to digest.');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
