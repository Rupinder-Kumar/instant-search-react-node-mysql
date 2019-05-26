-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2019 at 06:50 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `myrect`
--

-- --------------------------------------------------------

--
-- Table structure for table `collegelist`
--

CREATE TABLE IF NOT EXISTS `collegelist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `college` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `collegelist`
--

INSERT INTO `collegelist` (`id`, `college`, `keyword`) VALUES
(1, 'Ludhiana College of Engg. and Technology', 'ludhiana,engineering,technology,degree'),
(2, 'Ludhiana Polytechnic College', 'ludhiana,polytechnic,diploma'),
(3, 'Ludhiana College of Management', 'ludhiana,management,degree'),
(4, 'Ludhiana Group of colleges', 'ludhiana,engineering,management,degree,polytechnic'),
(5, 'Chandigarh Group of colleges', 'chandigarh,degree,engineering,management'),
(6, 'Chandigarh college of Engg. and Technology', 'chandigarh,engineering,technology,degree'),
(7, 'Chandigarh Polytechnic College', 'chandigarh,polytechnic,diploma');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
