-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 05, 2016 at 06:56 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nleveldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `category_link` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `unique` (`category_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_link`, `parent_id`, `sort_order`) VALUES
(1, 'Home', '', 0, 0),
(2, 'Tutorials', '#', 0, 1),
(3, 'Java', 'java', 2, 1),
(4, 'Liferay', 'liferay', 2, 1),
(5, 'Frameworks', '#', 0, 2),
(6, 'JSF', 'jsf', 5, 2),
(7, 'Struts', 'struts', 5, 2),
(8, 'Spring', 'spring', 5, 2),
(9, 'Hibernate', 'hibernate', 5, 2),
(10, 'Webservices', '#', 0, 3),
(11, 'REST', 'rest', 10, 3),
(12, 'SOAP', 'soap', 10, 3),
(13, 'Contact', 'contact', 0, 4),
(14, 'About', 'about', 0, 5),
(15, 'JSP', 'JSP', 3, 1),
(16, 'JEEE', 'JEEE', 15, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
