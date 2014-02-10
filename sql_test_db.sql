-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.29-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2014-02-11 04:35:03
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping database structure for pizza_db_test
CREATE DATABASE IF NOT EXISTS `pizza_db_test` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `pizza_db_test`;


-- Dumping structure for table pizza_db_test.price
CREATE TABLE IF NOT EXISTS `price` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(230) NOT NULL,
  `price` varchar(200) NOT NULL,
  `store_name` varchar(200) DEFAULT NULL,
  `notes` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table pizza_db_test.price: ~0 rows (approximately)
/*!40000 ALTER TABLE `price` DISABLE KEYS */;
INSERT INTO `price` (`id`, `product_code`, `price`, `store_name`, `notes`) VALUES
	(1, 'DOMI234', '345.66', 'SEC - 44, Gurgaon', 'Great !!'),
	(2, 'DOMI234', '345.66', 'SEC - 44, Gurgaon', 'Great !!'),
	(3, 'DOMI234', '345.66', 'SEC - 44, Gurgaon', 'Great !!'),
	(4, 'DOMI234', '345.66', 'SEC - 44, Gurgaon', 'Great !!'),
	(5, 'DOMI234', '345.66', 'SEC - 44, Gurgaon', 'Great !!'),
	(6, 'DOMI234', '345.66', 'SEC - 44, Gurgaon', 'Great !!'),
	(7, 'DOMI234', '345.66', 'SEC - 44, Gurgaon', 'Great !!'),
	(8, 'DOMI234', '345.66', 'SEC - 44, Gurgaon', 'Great !!'),
	(9, 'DOMI234', '345.66', 'SEC - 44, Gurgaon', 'Great !!'),
	(10, 'DOMI234', '345.66', 'SEC - 44, Gurgaon', 'Great !!'),
	(11, 'DOMI234', '345.66', 'SEC - 44, Gurgaon', 'Great !!');
/*!40000 ALTER TABLE `price` ENABLE KEYS */;


-- Dumping structure for table pizza_db_test.product
CREATE TABLE IF NOT EXISTS `product` (
  `product_code` varchar(450) NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `product_description` varchar(450) NOT NULL,
  PRIMARY KEY (`product_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table pizza_db_test.product: ~0 rows (approximately)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`product_code`, `product_name`, `product_description`) VALUES
	('DOMI234', 'Dominos', 'Excellent !!'),
	('PIZZ101', 'PizzaHut', 'Good !!');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
