-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2016 at 06:40 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_pavfresh`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(1, 2, 'admin', 'admin', 'abc', 'address', 'address', 'address', '0123', 223, 3676, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate`
--

CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_activity`
--

CREATE TABLE `oc_affiliate_activity` (
  `affiliate_activity_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_login`
--

CREATE TABLE `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_transaction`
--

CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `session_name` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed'),
(1, 2, 'Description'),
(2, 2, 'No. of Cores'),
(4, 2, 'test 1'),
(5, 2, 'test 2'),
(6, 2, 'test 3'),
(7, 2, 'test 4'),
(8, 2, 'test 5'),
(9, 2, 'test 6'),
(10, 2, 'test 7'),
(11, 2, 'test 8'),
(3, 2, 'Clockspeed');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(3, 2, 'Memory'),
(4, 2, 'Technical'),
(5, 2, 'Motherboard'),
(6, 2, 'Processor');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1),
(12, 'Banner category', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(79, 7, 1, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(87, 6, 1, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(146, 8, 1, 'iPhone 6', '#', 'catalog/demo/brand/logo5.png', 10),
(145, 8, 1, 'iPhone 6', '#', 'catalog/demo/brand/logo4.png', 9),
(144, 8, 1, 'iPhone 6', '#', 'catalog/demo/brand/logo3.png', 8),
(143, 8, 1, 'iPhone 6', '#', 'catalog/demo/brand/logo2.png', 7),
(142, 8, 1, 'iPhone 6', '#', 'catalog/demo/brand/logo1.png', 6),
(141, 8, 1, 'iPhone 6', '#', 'catalog/demo/brand/logo6.png', 5),
(140, 8, 1, 'iPhone 6', '#', 'catalog/demo/brand/logo5.png', 4),
(80, 7, 1, 'iPhone 6', '#', 'catalog/demo/banners/MacBookAir.jpg', 0),
(139, 8, 1, 'iPhone 6', '#', 'catalog/demo/brand/logo4.png', 3),
(138, 8, 1, 'iPhone 6', '#', 'catalog/demo/brand/logo3.png', 2),
(137, 8, 1, 'iPhone 6', '#', 'catalog/demo/brand/logo2.png', 1),
(136, 8, 1, 'iPhone 6', '#', 'catalog/demo/brand/logo1.png', 0),
(148, 12, 1, 'iPhone 6', '#', 'catalog/demo/banners/bn1.jpg', 0),
(147, 8, 1, 'iPhone 6', '#', 'catalog/demo/brand/logo6.png', 11);

-- --------------------------------------------------------

--
-- Table structure for table `oc_cart`
--

CREATE TABLE `oc_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(25, 'catalog/demo/product/category.jpg', 0, 1, 1, 3, 1, '2009-01-31 01:04:25', '2016-05-24 11:50:48'),
(27, 'catalog/demo/product/category.jpg', 20, 0, 0, 2, 1, '2009-01-31 01:55:34', '2010-08-22 06:32:15'),
(20, 'catalog/demo/product/category.jpg', 34, 1, 1, 1, 1, '2009-01-05 21:49:43', '2016-05-23 16:29:39'),
(24, 'catalog/demo/product/category.jpg', 0, 1, 1, 5, 1, '2009-01-20 02:36:26', '2016-05-23 16:31:43'),
(18, 'catalog/demo/product/category.jpg', 34, 1, 0, 2, 1, '2009-01-05 21:49:15', '2016-05-23 16:29:18'),
(17, 'catalog/demo/product/category.jpg', 34, 1, 1, 4, 1, '2009-01-03 21:08:57', '2016-05-23 16:28:18'),
(28, 'catalog/demo/product/category.jpg', 25, 0, 0, 1, 1, '2009-02-02 13:11:12', '2016-05-02 13:56:28'),
(29, 'catalog/demo/product/category.jpg', 25, 0, 0, 1, 1, '2009-02-02 13:11:37', '2016-05-02 13:55:58'),
(30, 'catalog/demo/product/category.jpg', 25, 0, 0, 1, 1, '2009-02-02 13:11:59', '2016-05-02 13:56:12'),
(31, 'catalog/demo/product/category.jpg', 25, 0, 0, 1, 1, '2009-02-03 14:17:24', '2016-05-02 13:55:44'),
(32, 'catalog/demo/product/category.jpg', 25, 0, 0, 1, 1, '2009-02-03 14:17:34', '2016-05-02 13:56:44'),
(33, 'catalog/demo/product/category.jpg', 0, 1, 1, 6, 1, '2009-02-03 14:17:55', '2016-05-13 15:02:28'),
(34, 'catalog/demo/product/category.jpg', 0, 1, 4, 7, 1, '2009-02-03 14:18:11', '2016-07-23 10:32:00'),
(35, 'catalog/demo/product/category.jpg', 28, 0, 0, 0, 1, '2010-09-17 10:06:48', '2016-04-04 14:19:52'),
(36, 'catalog/demo/product/category.jpg', 28, 0, 0, 0, 1, '2010-09-17 10:07:13', '2016-04-04 14:20:09'),
(37, 'catalog/demo/product/category.jpg', 34, 0, 0, 0, 1, '2010-09-18 14:03:39', '2011-04-22 01:55:08'),
(39, 'catalog/demo/product/category.jpg', 34, 0, 0, 0, 1, '2010-09-18 14:04:17', '2011-04-22 01:55:20'),
(40, 'catalog/demo/product/category.jpg', 34, 0, 0, 0, 1, '2010-09-18 14:05:36', '2010-09-18 14:05:36'),
(41, 'catalog/demo/product/category.jpg', 34, 0, 0, 0, 1, '2010-09-18 14:05:49', '2011-04-22 01:55:30'),
(42, 'catalog/demo/product/category.jpg', 34, 0, 0, 0, 1, '2010-09-18 14:06:34', '2010-11-07 20:31:04'),
(43, 'catalog/demo/product/category.jpg', 34, 0, 0, 0, 1, '2010-09-18 14:06:49', '2011-04-22 01:55:40'),
(44, 'catalog/demo/product/category.jpg', 34, 0, 0, 0, 1, '2010-09-21 15:39:21', '2010-11-07 20:30:55'),
(46, 'catalog/demo/product/category.jpg', 34, 0, 0, 0, 1, '2010-09-24 18:29:31', '2016-05-23 16:27:36'),
(47, 'catalog/demo/product/category.jpg', 34, 0, 0, 0, 1, '2010-11-07 11:13:16', '2010-11-07 11:13:16'),
(48, 'catalog/demo/product/category.jpg', 34, 0, 0, 0, 1, '2010-11-07 11:13:33', '2010-11-07 11:13:33'),
(49, 'catalog/demo/product/category.jpg', 34, 0, 0, 0, 1, '2010-11-07 11:14:04', '2010-11-07 11:14:04'),
(50, 'catalog/demo/product/category.jpg', 34, 0, 0, 0, 1, '2010-11-07 11:14:23', '2011-04-22 01:16:01'),
(51, 'catalog/demo/product/category.jpg', 34, 0, 0, 0, 1, '2010-11-07 11:14:38', '2011-04-22 01:16:13'),
(52, 'catalog/demo/product/category.jpg', 34, 0, 0, 0, 1, '2010-11-07 11:16:09', '2011-04-22 01:54:57'),
(53, 'catalog/demo/product/category.jpg', 34, 0, 0, 0, 1, '2010-11-07 11:28:53', '2011-04-22 01:14:36'),
(54, 'catalog/demo/product/category.jpg', 34, 0, 0, 0, 1, '2010-11-07 11:29:16', '2011-04-22 01:16:50'),
(55, 'catalog/demo/product/category.jpg', 34, 0, 0, 0, 1, '2010-11-08 10:31:32', '2010-11-08 10:31:32'),
(56, 'catalog/demo/product/category.jpg', 34, 0, 0, 0, 1, '2010-11-08 10:31:50', '2011-04-22 01:16:37'),
(57, 'catalog/demo/product/category.jpg', 34, 1, 1, 3, 1, '2011-04-26 08:53:16', '2016-05-23 16:27:05'),
(58, 'catalog/demo/product/category.jpg', 52, 0, 0, 0, 1, '2011-05-08 13:44:16', '2011-05-08 13:44:16'),
(90, '', 33, 0, 1, 0, 1, '2016-05-13 16:10:53', '2016-05-13 16:10:53'),
(91, '', 33, 0, 1, 0, 1, '2016-05-13 16:11:24', '2016-05-13 16:11:24'),
(92, '', 33, 0, 1, 0, 1, '2016-05-13 16:11:53', '2016-05-13 16:11:53'),
(93, '', 33, 0, 1, 0, 1, '2016-05-13 16:12:15', '2016-05-13 16:12:15'),
(94, '', 33, 0, 1, 0, 1, '2016-05-13 16:12:51', '2016-05-13 16:12:51'),
(95, '', 33, 0, 1, 0, 1, '2016-05-13 16:13:17', '2016-05-13 16:13:17'),
(96, '', 33, 0, 1, 0, 1, '2016-05-13 16:17:27', '2016-05-13 16:17:27'),
(97, '', 24, 0, 1, 0, 1, '2016-05-23 16:32:41', '2016-05-23 16:32:41'),
(98, '', 24, 0, 1, 0, 1, '2016-05-23 16:33:13', '2016-05-23 16:33:13'),
(99, '', 24, 0, 1, 0, 1, '2016-05-23 16:33:39', '2016-05-23 16:33:39'),
(100, '', 24, 0, 1, 0, 1, '2016-05-23 16:34:14', '2016-05-23 16:34:14'),
(101, '', 24, 0, 1, 0, 1, '2016-05-23 16:34:38', '2016-05-23 16:34:38'),
(102, '', 24, 0, 1, 0, 1, '2016-05-23 16:35:05', '2016-05-23 16:35:05');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(57, 2, 'Desks', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Desks', '', ''),
(28, 1, 'Party', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Party', '', ''),
(29, 1, 'Everyday Fashion', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Everyday Fashion', '', ''),
(25, 1, 'Fashion', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Fashion', '', ''),
(35, 2, 'Lime Pullover', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Lime Pullover', '', ''),
(36, 2, 'Cherry Dress', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Cherry Dress', '', ''),
(34, 1, 'Furniture', '&lt;p&gt;With the ability to print, copy and scan photos and documents using a single device, you''ll be able to complete office tasks with ease. Plus, print directly from your smartphone or tablet using Apple® AirPrint and HP ePrint.&lt;/p&gt;', 'Furniture', '', ''),
(34, 2, 'Furniture', '&lt;p&gt;With the ability to print, copy and scan photos and documents using a single device, you''ll be able to complete office tasks with ease. Plus, print directly from your smartphone or tablet using Apple® AirPrint and HP ePrint.&lt;/p&gt;', 'Furniture', '', ''),
(46, 2, 'Bookcases', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Bookcases', '', ''),
(18, 2, 'TV stands', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'TV stands', '', ''),
(25, 2, 'Fashion', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Fashion', '', ''),
(28, 2, 'Party', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Party', '', ''),
(33, 1, 'Electronics', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Electronics', '', ''),
(24, 2, 'Health &amp; Beauty', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Health &amp; Beauty', '', ''),
(17, 2, 'Accent chairs', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Accent chairs', '', ''),
(30, 2, 'Divided', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Divided', '', ''),
(32, 1, 'Modern Classics', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Modern Classics', '', ''),
(31, 1, 'Accessories', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Accessories', '', ''),
(20, 2, 'Barstools', '&lt;div&gt;&lt;/div&gt;', 'Barstools', 'Example of category description', ''),
(20, 1, 'Barstools', '&lt;div&gt;&lt;/div&gt;', 'Barstools', 'Example of category description', ''),
(18, 1, 'TV stands', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'TV stands', '', ''),
(57, 1, 'Desks', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Desks', '', ''),
(33, 2, 'Electronics', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Electronics', '', ''),
(17, 1, 'Accent chairs', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Accent chairs', '', ''),
(24, 1, 'Health &amp; Beauty', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Health &amp; Beauty', '', ''),
(29, 2, 'Everyday Fashion', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Everyday Fashion', '', ''),
(32, 2, 'Modern Classics', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Modern Classics', '', ''),
(31, 2, 'Accessories', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Accessories', '', ''),
(30, 1, 'Divided', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Divided', '', ''),
(35, 1, 'Lime Pullover', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Lime Pullover', '', ''),
(36, 1, 'Cherry Dress', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Cherry Dress', '', ''),
(91, 1, 'Components', '', 'Components', '', ''),
(90, 2, 'Laptop', '', 'Laptop', '', ''),
(90, 1, 'Laptop', '', 'Laptop', '', ''),
(91, 2, 'Components', '', 'Components', '', ''),
(92, 2, 'Macs', '', 'Macs', '', ''),
(92, 1, 'Macs', '', 'Macs', '', ''),
(93, 2, 'Software', '', 'Software', '', ''),
(93, 1, 'Software', '', 'Software', '', ''),
(94, 2, 'Scanners', '', 'Scanners', '', ''),
(94, 1, 'Scanners', '', 'Scanners', '', ''),
(95, 2, 'Mp3 player', '', 'Mp3 player', '', ''),
(95, 1, 'Mp3 player', '', 'Mp3 player', '', ''),
(96, 2, 'Monitor', '', 'Monitor', '', ''),
(96, 1, 'Monitor', '', 'Monitor', '', ''),
(46, 1, 'Bookcases', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Bookcases', '', ''),
(97, 2, 'Skincare', '', 'Skincare', '', ''),
(97, 1, 'Skincare', '', 'Skincare', '', ''),
(98, 2, 'Hair Care', '', 'Hair Care', '', ''),
(98, 1, 'Hair Care', '', 'Hair Care', '', ''),
(99, 2, 'Make Up', '', 'Make Up', '', ''),
(99, 1, 'Make Up', '', 'Make Up', '', ''),
(100, 2, 'Bath &amp; Shower', '', 'Bath &amp; Shower', '', ''),
(100, 1, 'Bath &amp; Shower', '', 'Bath &amp; Shower', '', ''),
(101, 2, 'Nail Care', '', 'Nail Care', '', ''),
(101, 1, 'Nail Care', '', 'Nail Care', '', ''),
(102, 2, 'Shaving', '', 'Shaving', '', ''),
(102, 1, 'Shaving', '', 'Shaving', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_filter`
--

INSERT INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES
(24, 1),
(24, 3),
(24, 9),
(24, 10),
(24, 11),
(24, 12),
(24, 13),
(24, 15),
(24, 16),
(24, 17),
(24, 19),
(24, 20),
(24, 21),
(24, 22),
(24, 23),
(24, 24),
(24, 25),
(25, 1),
(25, 3),
(25, 5),
(25, 6),
(25, 9),
(25, 10),
(25, 11),
(25, 12),
(25, 13),
(25, 16),
(25, 17),
(25, 19),
(25, 20),
(25, 21),
(25, 22),
(25, 23),
(25, 24),
(25, 25),
(34, 1),
(34, 2),
(34, 3),
(34, 4),
(34, 5),
(34, 6),
(34, 8),
(34, 9),
(34, 10),
(34, 13),
(34, 14),
(34, 15),
(34, 16),
(34, 19),
(34, 20),
(34, 22),
(34, 23),
(34, 24),
(34, 25),
(46, 1),
(46, 2),
(46, 3),
(46, 4),
(46, 5),
(46, 7),
(46, 9),
(46, 10),
(46, 11),
(46, 12),
(46, 13),
(46, 14),
(46, 15),
(46, 16),
(46, 17),
(46, 18),
(46, 19),
(46, 20),
(46, 21),
(46, 22),
(46, 23),
(46, 24),
(46, 25);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(25, 25, 0),
(28, 28, 1),
(28, 25, 0),
(35, 35, 2),
(35, 25, 0),
(35, 28, 1),
(36, 36, 2),
(36, 25, 0),
(36, 28, 1),
(29, 29, 1),
(29, 25, 0),
(30, 30, 1),
(30, 25, 0),
(31, 31, 1),
(31, 25, 0),
(32, 32, 1),
(32, 25, 0),
(20, 20, 1),
(27, 27, 2),
(27, 20, 1),
(24, 24, 0),
(18, 18, 1),
(46, 34, 0),
(17, 17, 1),
(33, 33, 0),
(34, 34, 0),
(37, 37, 1),
(37, 34, 0),
(39, 39, 1),
(39, 34, 0),
(40, 40, 1),
(40, 34, 0),
(41, 41, 1),
(41, 34, 0),
(42, 42, 1),
(42, 34, 0),
(43, 43, 1),
(43, 34, 0),
(44, 44, 1),
(44, 34, 0),
(47, 47, 1),
(47, 34, 0),
(48, 48, 1),
(48, 34, 0),
(49, 49, 1),
(49, 34, 0),
(50, 50, 1),
(50, 34, 0),
(51, 51, 1),
(51, 34, 0),
(52, 52, 1),
(52, 34, 0),
(58, 58, 2),
(58, 52, 1),
(58, 34, 0),
(53, 53, 1),
(53, 34, 0),
(54, 54, 1),
(54, 34, 0),
(55, 55, 1),
(55, 34, 0),
(56, 56, 1),
(56, 34, 0),
(57, 34, 0),
(90, 90, 1),
(90, 33, 0),
(91, 91, 1),
(91, 33, 0),
(92, 92, 1),
(92, 33, 0),
(93, 93, 1),
(93, 33, 0),
(94, 94, 1),
(94, 33, 0),
(95, 95, 1),
(95, 33, 0),
(96, 96, 1),
(96, 33, 0),
(57, 57, 1),
(46, 46, 1),
(17, 34, 0),
(18, 34, 0),
(20, 34, 0),
(27, 34, 0),
(97, 97, 1),
(97, 24, 0),
(98, 98, 1),
(98, 24, 0),
(99, 99, 1),
(99, 24, 0),
(100, 100, 1),
(100, 24, 0),
(101, 101, 1),
(101, 24, 0),
(102, 102, 1),
(102, 24, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(20, 0, 0),
(35, 0, 0),
(34, 0, 0),
(36, 0, 0),
(30, 0, 0),
(18, 0, 0),
(46, 0, 0),
(25, 0, 0),
(29, 0, 0),
(28, 0, 0),
(31, 0, 0),
(32, 0, 0),
(33, 0, 0),
(24, 0, 0),
(17, 0, 0),
(57, 0, 0),
(90, 0, 0),
(91, 0, 0),
(92, 0, 0),
(93, 0, 0),
(94, 0, 0),
(95, 0, 0),
(96, 0, 0),
(97, 0, 0),
(98, 0, 0),
(99, 0, 0),
(100, 0, 0),
(101, 0, 0),
(102, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(17, 0),
(18, 0),
(20, 0),
(24, 0),
(25, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(37, 0),
(39, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0),
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 0),
(102, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D''Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'South Korea', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People''s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.76419997, 1, '2016-08-08 06:17:50'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2016-08-08 06:33:21'),
(3, 'Euro', 'EUR', '', '€', '2', 0.90060002, 1, '2016-08-08 06:17:50');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_search`
--

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `date_added`) VALUES
(1, 'voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 0, '0000-00-00 00:00:00'),
(2, 'pp_login', 'catalog/controller/account/logout/after', 'extension/module/pp_login/logout', 1, '2016-08-06 10:21:40'),
(3, 'amazon_login', 'catalog/controller/account/logout/after', 'extension/module/amazon_login/logout', 1, '2016-08-06 10:21:40'),
(4, 'amazon_pay', 'catalog/controller/account/logout/after', 'extension/module/amazon_pay/logout', 1, '2016-08-06 10:21:47');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(37, 'module', 'pavbloglatest'),
(36, 'module', 'pavblog'),
(35, 'module', 'special'),
(34, 'module', 'pavsliderlayer'),
(33, 'module', 'pavhomebuilder'),
(32, 'module', 'pavblogcomment'),
(31, 'module', 'pavblogcategory'),
(30, 'module', 'pavmegamenu'),
(29, 'module', 'themecontrol'),
(28, 'dashboard', 'chart'),
(27, 'dashboard', 'customer'),
(26, 'dashboard', 'map'),
(25, 'dashboard', 'online'),
(24, 'dashboard', 'order'),
(23, 'dashboard', 'recent'),
(22, 'dashboard', 'sale'),
(21, 'dashboard', 'activity'),
(20, 'theme', 'theme_default'),
(19, 'module', 'slideshow'),
(17, 'payment', 'free_checkout'),
(16, 'total', 'voucher'),
(15, 'total', 'reward'),
(14, 'module', 'account'),
(13, 'module', 'category'),
(12, 'total', 'coupon'),
(11, 'total', 'low_order_fee'),
(10, 'total', 'handling'),
(9, 'shipping', 'flat'),
(8, 'total', 'credit'),
(5, 'total', 'total'),
(4, 'total', 'tax'),
(3, 'total', 'sub_total'),
(2, 'total', 'shipping'),
(1, 'payment', 'cod'),
(38, 'module', 'pavdeals'),
(39, 'module', 'pavnewsletter'),
(41, 'module', 'filter'),
(42, 'captcha', 'basic_captcha'),
(40, 'captcha', 'google_captcha'),
(46, 'module', 'banner'),
(47, 'module', 'pavverticalmenu');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter`
--

INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES
(3, 1, 2),
(2, 1, 1),
(1, 1, 0),
(6, 2, 3),
(5, 2, 2),
(4, 2, 1),
(7, 1, 3),
(8, 1, 4),
(9, 1, 5),
(10, 2, 0),
(11, 2, 4),
(12, 2, 5),
(13, 3, 0),
(14, 3, 1),
(15, 3, 2),
(16, 3, 3),
(17, 3, 4),
(18, 3, 5),
(25, 4, 6),
(24, 4, 5),
(23, 4, 4),
(22, 4, 3),
(21, 4, 2),
(20, 4, 1),
(19, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_description`
--

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `filter_group_id`, `name`) VALUES
(3, 1, 1, 'Green'),
(3, 2, 1, 'Green'),
(2, 1, 1, 'Blue'),
(2, 2, 1, 'Blue'),
(6, 1, 2, 'l'),
(6, 2, 2, 'l'),
(5, 1, 2, 'm'),
(5, 2, 2, 'm'),
(4, 1, 2, 's'),
(4, 2, 2, 's'),
(1, 1, 1, 'Red'),
(1, 2, 1, 'Red'),
(7, 1, 1, 'White'),
(7, 2, 1, 'White'),
(8, 1, 1, 'Black'),
(8, 2, 1, 'Black'),
(9, 1, 1, 'Gray'),
(10, 1, 2, 'xs'),
(10, 2, 2, 'xs'),
(11, 1, 2, 'xl'),
(11, 2, 2, 'xl'),
(12, 1, 2, 'xxl'),
(12, 2, 2, 'xxl'),
(13, 2, 3, 'Accessories'),
(13, 1, 3, 'Accessories'),
(14, 2, 3, 'Bags'),
(14, 1, 3, 'Bags'),
(15, 2, 3, 'Dresses'),
(15, 1, 3, 'Dresses'),
(16, 2, 3, 'Hair Accessories'),
(16, 1, 3, 'Hair Accessories'),
(17, 2, 3, 'Jewellery'),
(17, 1, 3, 'Jewellery'),
(18, 2, 3, 'Shoes'),
(18, 1, 3, 'Shoes'),
(23, 1, 4, 'Head over Heels by Dune'),
(23, 2, 4, 'Head over Heels by Dune'),
(22, 1, 4, 'Glamorous'),
(22, 2, 4, 'Glamorous'),
(21, 1, 4, 'FROM ST XAVIER'),
(21, 2, 4, 'FROM ST XAVIER'),
(20, 1, 4, 'Frock and Frill'),
(20, 2, 4, 'Frock and Frill'),
(19, 1, 4, 'French Connection'),
(19, 2, 4, 'French Connection'),
(9, 2, 1, 'Gray'),
(24, 2, 4, 'Jarlo'),
(24, 1, 4, 'Jarlo'),
(25, 2, 4, 'Johnny Loves Rosie'),
(25, 1, 4, 'Johnny Loves Rosie');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_group`
--

INSERT INTO `oc_filter_group` (`filter_group_id`, `sort_order`) VALUES
(1, 2),
(2, 3),
(3, 0),
(4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_group_description`
--

INSERT INTO `oc_filter_group_description` (`filter_group_id`, `language_id`, `name`) VALUES
(1, 2, 'Color'),
(2, 2, 'Size'),
(1, 1, 'Color'),
(2, 1, 'Size'),
(3, 2, 'Products type'),
(3, 1, 'Products type'),
(4, 2, 'Brand'),
(4, 1, 'Brand');

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25'),
(4, 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 1, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', ''),
(4, 2, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 2, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 2, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 2, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en-gb', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1),
(2, 'Arabic', 'arabi', 'ar_SA.UTF-8', '', '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(12, 'Compare'),
(11, 'Information'),
(10, 'Affiliate'),
(9, 'Sitemap'),
(8, 'Contact'),
(7, 'Checkout'),
(6, 'Account'),
(5, 'Manufacturer'),
(4, 'Default'),
(3, 'Category'),
(2, 'Product'),
(1, 'Home'),
(13, 'Search'),
(14, 'Pav Blog');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(138, 13, 'category', 'column_left', 0),
(1028, 3, 'special.35', 'column_left', 4),
(136, 5, 'category', 'column_left', 0),
(575, 14, 'pavblogcategory.44', 'column_right', 1),
(576, 14, 'pavblogcomment.45', 'column_right', 2),
(68, 6, 'account', 'column_right', 1),
(69, 10, 'affiliate', 'column_right', 1),
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(1027, 3, 'filter', 'column_left', 3),
(1031, 1, 'pavhomebuilder.33', 'content_top', 0),
(1003, 2, 'special.35', 'column_right', 1),
(1002, 2, 'category', 'column_right', 0),
(1026, 3, 'banner.80', 'column_left', 2),
(1025, 3, 'category', 'column_left', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(32, 9, 0, 'information/sitemap'),
(31, 8, 0, 'information/contact'),
(23, 7, 0, 'checkout/%'),
(24, 11, 0, 'information/information'),
(529, 2, 0, 'product/product'),
(554, 1, 0, 'common/home'),
(551, 3, 0, 'product/category'),
(17, 10, 0, 'affiliate/%'),
(38, 6, 0, 'account/%'),
(34, 4, 0, ''),
(109, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(110, 13, 0, 'product/search'),
(321, 14, 0, 'pavblog/%');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(1, 2, 'Centimeter', 'cm'),
(2, 2, 'Millimeter', 'mm'),
(3, 2, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_megamenu`
--

CREATE TABLE `oc_megamenu` (
  `megamenu_id` int(11) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_group` smallint(6) NOT NULL DEFAULT '2',
  `width` varchar(255) DEFAULT NULL,
  `submenu_width` varchar(255) DEFAULT NULL,
  `colum_width` varchar(255) DEFAULT NULL,
  `submenu_colum_width` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `colums` varchar(255) DEFAULT '1',
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL DEFAULT '2',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `type_submenu` varchar(10) NOT NULL DEFAULT '1',
  `level_depth` smallint(6) NOT NULL DEFAULT '0',
  `published` smallint(6) NOT NULL DEFAULT '1',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `position` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `show_sub` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `privacy` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `position_type` varchar(25) DEFAULT 'top',
  `menu_class` varchar(25) DEFAULT NULL,
  `description` text,
  `content_text` text,
  `submenu_content` text,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `widget_id` int(11) DEFAULT '0',
  `badges` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_megamenu`
--

INSERT INTO `oc_megamenu` (`megamenu_id`, `image`, `parent_id`, `is_group`, `width`, `submenu_width`, `colum_width`, `submenu_colum_width`, `item`, `colums`, `type`, `is_content`, `show_title`, `type_submenu`, `level_depth`, `published`, `store_id`, `position`, `show_sub`, `url`, `target`, `privacy`, `position_type`, `menu_class`, `description`, `content_text`, `submenu_content`, `level`, `left`, `right`, `widget_id`, `badges`) VALUES
(117, 'catalog/demo/module/icon-mega3.png', 1, 0, NULL, NULL, NULL, '', '34', '1', 'category', 0, 1, 'menu', 0, 1, 0, 2, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1, ''),
(120, 'catalog/demo/module/icon-mega2.png', 1, 0, NULL, NULL, NULL, '', '33', '1', 'category', 0, 1, 'menu', 0, 1, 0, 3, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1, ''),
(126, '', 131, 0, NULL, NULL, NULL, '', '28', '1', 'category', 0, 1, 'menu', 0, 1, 0, 2, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1, ''),
(127, '', 120, 0, NULL, NULL, NULL, '', '29', '1', 'category', 0, 1, 'menu', 0, 1, 0, 1, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1, ''),
(128, '', 126, 0, NULL, NULL, NULL, '', '30', '1', 'category', 0, 1, 'menu', 0, 1, 0, 1, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1, ''),
(129, '', 120, 0, NULL, NULL, NULL, '', '32', '1', 'category', 0, 1, 'menu', 0, 1, 0, 2, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1, ''),
(130, '', 120, 0, NULL, NULL, NULL, '', '31', '1', 'category', 0, 1, 'menu', 0, 1, 0, 5, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1, ''),
(131, '', 120, 0, NULL, NULL, NULL, NULL, '35', '1', 'category', 2, 1, 'menu', 0, 1, 0, 4, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(132, '', 126, 0, NULL, NULL, NULL, NULL, '36', '1', 'category', 2, 1, 'menu', 0, 1, 0, 2, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(133, 'catalog/demo/module/icon-mega4.png', 1, 0, NULL, NULL, NULL, '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 4, 0, '?route=pavblog/blogs', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 5, ''),
(134, 'catalog/demo/module/icon-mega5.png', 1, 0, NULL, NULL, NULL, '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 5, 0, '?route=pavdeals/deals', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 5, ''),
(135, 'catalog/demo/module/icon-mega6.png', 1, 0, NULL, NULL, NULL, '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 6, 0, '?route=information/contact', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 5, ''),
(141, 'catalog/demo/module/icon-mega1.png', 1, 0, NULL, NULL, NULL, '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 1, 0, '?route=common/home', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 5, ''),
(144, '', 131, 0, NULL, NULL, NULL, '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 3, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 5, ''),
(145, '', 131, 0, NULL, NULL, NULL, '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 1, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 5, ''),
(146, '', 120, 0, NULL, NULL, NULL, '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 3, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 5, ''),
(147, '', 1, 0, NULL, NULL, NULL, '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 99, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_megamenu_description`
--

CREATE TABLE `oc_megamenu_description` (
  `megamenu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_megamenu_description`
--

INSERT INTO `oc_megamenu_description` (`megamenu_id`, `language_id`, `title`, `description`) VALUES
(141, 2, 'Home', ''),
(117, 2, 'Categories', ''),
(120, 1, 'Electronics', ''),
(120, 2, 'Electronics', ''),
(126, 1, 'Party', ''),
(126, 2, 'Party', ''),
(127, 1, 'Everyday Fashion', ''),
(127, 2, 'Everyday Fashion', ''),
(128, 1, 'Divided', ''),
(128, 2, 'Divided', ''),
(129, 1, 'Modern Classics', ''),
(129, 2, 'Modern Classics', ''),
(130, 1, 'Accessories', ''),
(130, 2, 'Accessories', ''),
(131, 1, 'Lime Pullover', ''),
(131, 2, 'Lime Pullover', ''),
(132, 1, 'Cherry Dress', ''),
(132, 2, 'Cherry Dress', ''),
(141, 1, 'Home', ''),
(133, 2, 'Blogs', ''),
(134, 2, 'Deals', ''),
(135, 2, 'Contact', ''),
(117, 1, 'Categories', ''),
(147, 1, '', ''),
(133, 1, 'Blogs', ''),
(134, 1, 'Deals', ''),
(135, 1, 'Contact', ''),
(147, 2, '', ''),
(144, 2, 'Cold Pressed Juices', ''),
(144, 1, 'Cold Pressed Juices', ''),
(145, 2, 'Cold Pressed Cleanses', ''),
(145, 1, 'Cold Pressed Cleanses', ''),
(146, 2, 'Dessert Menu', ''),
(146, 1, 'Dessert Menu', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_megamenu_widgets`
--

CREATE TABLE `oc_megamenu_widgets` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `type` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_megamenu_widgets`
--

INSERT INTO `oc_megamenu_widgets` (`id`, `name`, `type`, `params`, `store_id`) VALUES
(5, 'Manufactures', 'banner', 'a:4:{s:8:"group_id";s:1:"8";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:5:"limit";s:2:"12";}', 0),
(3, 'Products Latest', 'product_list', 'a:4:{s:9:"list_type";s:6:"newest";s:5:"limit";s:1:"6";s:11:"image_width";s:3:"120";s:12:"image_height";s:3:"120";}', 0),
(4, 'Products In Cat 20', 'product_category', 'a:4:{s:11:"category_id";s:2:"20";s:5:"limit";s:1:"6";s:11:"image_width";s:3:"120";s:12:"image_height";s:3:"120";}', 0),
(2, 'Demo HTML Sample', 'html', 'a:1:{s:4:"html";a:1:{i:1;s:275:"Dorem ipsum dolor sit amet consectetur adipiscing elit congue sit amet erat roin tincidunt vehicula lorem in adipiscing urna iaculis vel. Dorem ipsum dolor sit amet consectetur adipiscing elit congue sit amet erat roin tincidunt vehicula lorem in adipiscing urna iaculis vel.";}}', 0),
(1, 'Video Opencart Installation', 'video_code', 'a:1:{s:10:"video_code";s:168:"&lt;iframe width=&quot;300&quot; height=&quot;315&quot; src=&quot;//www.youtube.com/embed/cUhPA5qIxDQ&quot; frameborder=&quot;0&quot; allowfullscreen&gt;&lt;/iframe&gt;";}', 0),
(6, 'PavoThemes Feed', 'feed', 'a:1:{s:8:"feed_url";s:55:"http://www.pavothemes.com/opencart-themes.feed?type=rss";}', 0),
(7, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"7";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:22:"paper &amp; Stationery";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:22:"paper &amp; Stationery";s:14:"widget_title_2";s:22:"paper &amp; Stationery";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:1:"5";}', 0),
(8, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"8";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:12:"organisation";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:12:"organisation";s:14:"widget_title_2";s:12:"organisation";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"34";s:5:"limit";s:1:"5";}', 0),
(9, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"9";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:8:"Printing";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:8:"Printing";s:14:"widget_title_2";s:8:"Printing";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"18";s:5:"limit";s:1:"5";}', 0),
(10, '', 'html', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:4:"html";s:11:"widget_name";s:10:"Demo Html ";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:10:"Demo Html ";s:14:"widget_title_2";s:10:"Demo Html ";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:271:"&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet laboriosam provident&lt;/p&gt; &lt;p&gt;MAKES UP PHOTOSHOP&lt;/p&gt;&lt;p&gt;Voluptates, consectetur soluta laborum maiores alias autem velit deserunt quas quis repellendus beatae veniam&lt;/p&gt;";s:13:"htmlcontent_2";s:271:"&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet laboriosam provident&lt;/p&gt; &lt;p&gt;MAKES UP PHOTOSHOP&lt;/p&gt;&lt;p&gt;Voluptates, consectetur soluta laborum maiores alias autem velit deserunt quas quis repellendus beatae veniam&lt;/p&gt;";}', 0),
(11, '', 'product_list', 'a:14:{s:4:"wkey";s:2:"11";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:15:"Product Special";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:15:"Product Special";s:14:"widget_title_2";s:15:"Product Special";s:12:"addition_cls";s:7:"sidebar";s:5:"limit";s:1:"3";s:12:"itemsperpage";s:1:"3";s:4:"cols";s:1:"1";s:5:"width";s:2:"80";s:6:"height";s:2:"96";s:9:"list_type";s:7:"special";s:14:"choose_product";s:0:"";}', 0),
(12, '', 'image', 'a:16:{s:4:"wkey";s:1:"0";s:5:"wtype";s:5:"image";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:9:"imagefile";s:32:"catalog/demo/banners/bn-menu.jpg";s:4:"size";s:4:"full";s:9:"animation";s:1:"1";s:9:"alignment";s:6:"center";s:7:"ispopup";s:1:"0";s:4:"link";s:0:"";s:13:"description_1";s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";s:13:"description_2";s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";s:8:"show_des";s:1:"0";}', 0),
(13, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:10:"What''s new";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:10:"What''s new";s:14:"widget_title_2";s:10:"What''s new";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:1:"5";}', 0),
(14, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:19:"trends &amp; events";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:19:"trends &amp; events";s:14:"widget_title_2";s:19:"trends &amp; events";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"34";s:5:"limit";s:1:"5";}', 0),
(15, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:9:"Must have";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:9:"Must have";s:14:"widget_title_2";s:9:"Must have";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"18";s:5:"limit";s:1:"5";}', 0),
(16, '', 'image', 'a:16:{s:4:"wkey";s:2:"16";s:5:"wtype";s:5:"image";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"0";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:9:"imagefile";s:32:"catalog/demo/banners/bn-menu.jpg";s:4:"size";s:4:"full";s:9:"animation";s:1:"1";s:9:"alignment";s:6:"center";s:7:"ispopup";s:1:"0";s:4:"link";s:0:"";s:13:"description_1";s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";s:13:"description_2";s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";s:8:"show_des";s:1:"0";}', 0),
(17, '', 'sub_categories', 'a:9:{s:4:"wkey";s:2:"17";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:8:"Bindings";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:8:"Bindings";s:14:"widget_title_2";s:8:"Bindings";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"34";s:5:"limit";s:1:"5";}', 0),
(18, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:11:"Accessories";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Accessories";s:14:"widget_title_2";s:11:"Accessories";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:1:"5";}', 0),
(19, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:9:"Clothings";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:9:"Clothings";s:14:"widget_title_2";s:9:"Clothings";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"18";s:5:"limit";s:1:"5";}', 0),
(24, '', 'image', 'a:16:{s:4:"wkey";s:1:"0";s:5:"wtype";s:5:"image";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"0";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:9:"imagefile";s:33:"catalog/demo/banners/bn2-menu.jpg";s:4:"size";s:4:"full";s:9:"animation";s:1:"1";s:9:"alignment";s:6:"center";s:7:"ispopup";s:1:"0";s:4:"link";s:0:"";s:13:"description_1";s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";s:13:"description_2";s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";s:8:"show_des";s:1:"0";}', 0),
(23, '', 'image', 'a:16:{s:4:"wkey";s:1:"0";s:5:"wtype";s:5:"image";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"0";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:9:"imagefile";s:33:"catalog/demo/banners/bn1-menu.jpg";s:4:"size";s:4:"full";s:9:"animation";s:1:"1";s:9:"alignment";s:6:"center";s:7:"ispopup";s:1:"0";s:4:"link";s:0:"";s:13:"description_1";s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";s:13:"description_2";s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";s:8:"show_des";s:1:"0";}', 0),
(25, '', 'categories_list', 'a:8:{s:4:"wkey";s:2:"25";s:5:"wtype";s:15:"categories_list";s:11:"widget_name";s:10:"Categories";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:10:"Categories";s:14:"widget_title_2";s:10:"Categories";s:12:"addition_cls";s:0:"";s:6:"catids";s:14:"20,18,25,57,17";}', 0),
(27, '', 'bloglatest', 'a:11:{s:4:"wkey";s:2:"27";s:5:"wtype";s:10:"bloglatest";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"0";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:3:"nbr";s:1:"3";s:5:"width";s:3:"210";s:6:"height";s:3:"120";s:4:"cols";s:1:"3";}', 0),
(28, '', 'bloglatest', 'a:11:{s:4:"wkey";s:2:"28";s:5:"wtype";s:10:"bloglatest";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"0";s:14:"widget_title_2";s:0:"";s:14:"widget_title_1";s:0:"";s:12:"addition_cls";s:0:"";s:12:"itemsperpage";s:1:"3";s:5:"width";s:3:"210";s:6:"height";s:3:"120";s:4:"cols";s:1:"3";}', 0),
(29, '', 'image', 'a:16:{s:4:"wkey";s:1:"0";s:5:"wtype";s:5:"image";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"0";s:14:"widget_title_2";s:0:"";s:14:"widget_title_1";s:0:"";s:12:"addition_cls";s:0:"";s:9:"imagefile";s:40:"catalog/demo/banners/bn-product-left.jpg";s:4:"size";s:0:"";s:9:"animation";s:1:"4";s:9:"alignment";s:4:"left";s:7:"ispopup";s:1:"1";s:4:"link";s:0:"";s:13:"description_2";s:0:"";s:13:"description_1";s:0:"";s:8:"show_des";s:1:"1";}', 0),
(32, '', 'categories_list', 'a:12:{s:4:"wkey";s:2:"32";s:5:"wtype";s:15:"categories_list";s:11:"widget_name";s:10:"Categories";s:10:"show_title";s:1:"1";s:14:"widget_title_2";s:10:"Categories";s:14:"widget_title_1";s:10:"Categories";s:12:"addition_cls";s:0:"";s:6:"catids";s:20:"46,20,18,25,57,17,24";s:10:"banner_img";s:0:"";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:4:"link";s:1:"#";}', 0),
(39, '', 'html', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:4:"html";s:11:"widget_name";s:8:"About us";s:10:"show_title";s:1:"1";s:14:"widget_title_2";s:8:"About us";s:14:"widget_title_1";s:8:"About us";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_2";s:379:"&lt;p&gt;Proin gravida nibh Velit auctor bibendum auctor. Nisi elituat ipsum odio sit Amet nibh ulpate Cursus a sit amet mauris. Proin gravida nibh Velit auctor bibendum auctor. Nisi elituat ipsum odio sit Amet nibh ulpate Cursus a sit amet mauris. Proin gravida nibh Velit auctor bibendum auctor. Nisi elituat ipsum odio sit Amet nibh ulpate Cursus a sit amet mauris. &lt;/p&gt;";s:13:"htmlcontent_1";s:379:"&lt;p&gt;Proin gravida nibh Velit auctor bibendum auctor. Nisi elituat ipsum odio sit Amet nibh ulpate Cursus a sit amet mauris. Proin gravida nibh Velit auctor bibendum auctor. Nisi elituat ipsum odio sit Amet nibh ulpate Cursus a sit amet mauris. Proin gravida nibh Velit auctor bibendum auctor. Nisi elituat ipsum odio sit Amet nibh ulpate Cursus a sit amet mauris. &lt;/p&gt;";}', 0),
(38, '', 'image', 'a:16:{s:4:"wkey";s:2:"38";s:5:"wtype";s:5:"image";s:11:"widget_name";s:12:"Banner image";s:10:"show_title";s:1:"1";s:14:"widget_title_2";s:12:"Banner image";s:14:"widget_title_1";s:12:"Banner image";s:12:"addition_cls";s:0:"";s:9:"imagefile";s:29:"catalog/demo/banners/bn11.jpg";s:4:"size";s:0:"";s:9:"animation";s:1:"1";s:9:"alignment";s:6:"center";s:7:"ispopup";s:1:"0";s:4:"link";s:1:"#";s:13:"description_2";s:0:"";s:13:"description_1";s:0:"";s:8:"show_des";s:1:"0";}', 0),
(36, '', 'image', 'a:16:{s:4:"wkey";s:2:"36";s:5:"wtype";s:5:"image";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"0";s:14:"widget_title_2";s:0:"";s:14:"widget_title_1";s:0:"";s:12:"addition_cls";s:0:"";s:9:"imagefile";s:33:"catalog/demo/banners/bn-menu1.jpg";s:4:"size";s:4:"full";s:9:"animation";s:1:"1";s:9:"alignment";s:6:"center";s:7:"ispopup";s:1:"0";s:4:"link";s:0:"";s:13:"description_2";s:0:"";s:13:"description_1";s:0:"";s:8:"show_des";s:1:"0";}', 0),
(37, '', 'image', 'a:16:{s:4:"wkey";s:1:"0";s:5:"wtype";s:5:"image";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"0";s:14:"widget_title_2";s:0:"";s:14:"widget_title_1";s:0:"";s:12:"addition_cls";s:0:"";s:9:"imagefile";s:33:"catalog/demo/banners/bn-menu2.jpg";s:4:"size";s:4:"full";s:9:"animation";s:1:"1";s:9:"alignment";s:6:"center";s:7:"ispopup";s:1:"0";s:4:"link";s:0:"";s:13:"description_2";s:0:"";s:13:"description_1";s:0:"";s:8:"show_des";s:1:"0";}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_menu`
--

CREATE TABLE `oc_menu` (
  `menu_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `type` varchar(6) NOT NULL,
  `link` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_menu_description`
--

CREATE TABLE `oc_menu_description` (
  `menu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_menu_module`
--

CREATE TABLE `oc_menu_module` (
  `menu_module_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(52, 'Newsletter', 'pavnewsletter', '{"displaymode":"default","name":"Newsletter","status":"1","description":{"2":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\tGet 15% off your next order. Be the first to learn about promotions special events, new arrivals and more\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","1":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\tGet 15% off your next order. Be the first to learn about promotions special events, new arrivals and more\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t"},"social":{"2":"&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;","1":"&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;"}}'),
(43, 'Slide Home 1', 'pavsliderlayer', '{"name":"Slide Home 1","status":"1","group_id":"4","pavsliderlayer_module":[]}'),
(44, 'Category Blog', 'pavblogcategory', '{"name":"Category Blog","category_id":"1","status":"1","type":"default"}'),
(45, 'Latest comment Blog', 'pavblogcomment', '{"name":"Latest comment Blog","limit":"5","status":"1"}'),
(35, 'Special Category', 'special', '{"name":"Special Category","limit":"4","width":"500","height":"500","status":"1"}'),
(33, 'Home 1', 'pavhomebuilder', 'a:5:{s:6:"status";s:1:"1";s:4:"name";s:6:"Home 1";s:5:"class";s:0:"";s:6:"layout";s:4873:"[{"cls":"","bgcolor":"","bgimage":"","fullwidth":"1","parallax":"0","sfxcls":null,"padding":"","margin":"","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Pav Layers Sliders > Slide Home 1","module":"pavsliderlayer.43","type":"module"}],"rows":[]}]},{"cls":"style-v1","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"img","module":"image.etOnpd","type":"image"}],"rows":[]},{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":8,"mdcol":8,"smcol":8,"xscol":12,"widgets":[{"name":"fresh fruit","module":"interactive_banner.Vs2dtP","type":"interactive_banner"}],"rows":[]}]},{"cls":"margin-style","bgcolor":"","bgimage":"","fullwidth":"1","parallax":"0","sfxcls":null,"padding":"","margin":"","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"New arrivals","module":"product_tabs.NQ9lTA","type":"product_tabs"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":8,"mdcol":8,"smcol":8,"xscol":12,"widgets":[{"name":"img","module":"image.wo6WR6","type":"image"}],"rows":[]},{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"img","module":"gallery.cFNb8K","type":"gallery"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Deals of today","module":"freshfooddeals.XuuWNT","type":"freshfooddeals"}],"rows":[]}]},{"cls":"no-space-row margin-bottom-115","bgcolor":"","bgimage":"","fullwidth":"1","parallax":"0","sfxcls":null,"padding":"","margin":"","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"blog","module":"bloglatest.FUpTaf","type":"bloglatest"}],"rows":[]}]},{"cls":"","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Popular","module":"product_list.znHwrE","type":"product_list"}],"rows":[]}]},{"cls":"hidden-xs parallax","bgcolor":"","bgimage":"catalog/demo/module/parallax1.jpg","fullwidth":"1","parallax":"0","sfxcls":null,"padding":"","margin":"90px 0","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"custom support","module":"html.7Eo68s","type":"html"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"Support 24/7","module":"icon_box.yU3h5p","type":"icon_box"}],"rows":[]},{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"Returns & Exchanges","module":"icon_box.aHfqRn","type":"icon_box"}],"rows":[]},{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"Shipping service","module":"icon_box.5ZSL1q","type":"icon_box"}],"rows":[]}]}]";s:9:"module_id";s:2:"33";}'),
(64, 'Home 2', 'pavhomebuilder', 'a:5:{s:6:"status";s:1:"1";s:4:"name";s:6:"Home 2";s:5:"class";s:0:"";s:6:"layout";s:4165:"[{"cls":"","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Pav Layers Sliders > Slide Home 2","module":"pavsliderlayer.72","type":"module"}],"rows":[]}]},{"cls":"","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"30px 0 0","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":6,"mdcol":6,"smcol":6,"xscol":12,"widgets":[{"name":"img","module":"image.cqdmE9","type":"image"}],"rows":[]},{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":3,"mdcol":3,"smcol":3,"xscol":12,"widgets":[{"name":"img","module":"image.YXFHxd","type":"image"}],"rows":[]},{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":3,"mdcol":3,"smcol":3,"xscol":12,"widgets":[{"name":"img","module":"image.8N3WB4","type":"image"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Deals of today","module":"freshfooddeals.aSc3Tl","type":"freshfooddeals"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":8,"mdcol":8,"smcol":8,"xscol":12,"widgets":[{"name":"img","module":"image.j9Xa7F","type":"image"}],"rows":[]},{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"img","module":"image.NmTMDI","type":"image"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Product Latest","module":"product_list.sqby8Z","type":"product_list"}],"rows":[]}]},{"cls":"hidden-xs","bgcolor":"","bgimage":"","fullwidth":"1","parallax":"0","sfxcls":null,"padding":"","margin":"","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"custom support","module":"html.HI1Bj1","type":"html"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"Support 24/7","module":"icon_box.2Uk0Ji","type":"icon_box"}],"rows":[]},{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"Returns & Exchanges","module":"icon_box.FzE1od","type":"icon_box"}],"rows":[]},{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"Shipping service","module":"icon_box.EYq5UJ","type":"icon_box"}],"rows":[]}]}]";s:9:"module_id";s:2:"64";}'),
(65, 'Home 3', 'pavhomebuilder', 'a:5:{s:6:"status";s:1:"1";s:4:"name";s:6:"Home 3";s:5:"class";s:5:"home3";s:6:"layout";s:4461:"[{"cls":"border-style","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"0 0 80px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"hidden-xs","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":3,"mdcol":3,"smcol":12,"xscol":12,"widgets":[{"name":"Pav Vertical MegaMenu > Vertical  home","module":"pavverticalmenu.83","type":"module"}],"rows":[]},{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":9,"mdcol":9,"smcol":12,"xscol":12,"widgets":[{"name":"Pav Layers Sliders > Slide Home 3","module":"pavsliderlayer.71","type":"module"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"Support 24/7","module":"icon_box.770fak","type":"icon_box"}],"rows":[]},{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"Returns & Exchanges","module":"icon_box.7zEG0Y","type":"icon_box"}],"rows":[]},{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"Shipping service","module":"icon_box.9EDOSB","type":"icon_box"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":3,"mdcol":3,"smcol":3,"xscol":12,"widgets":[{"name":"img","module":"image.P9UkBp","type":"image"}],"rows":[]},{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":6,"mdcol":6,"smcol":6,"xscol":12,"widgets":[{"name":"img","module":"image.5EUkku","type":"image"}],"rows":[]},{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":3,"mdcol":3,"smcol":3,"xscol":12,"widgets":[{"name":"img","module":"image.RaW9Gw","type":"image"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Feature products","module":"product_list.CNK7Wl","type":"product_list"}],"rows":[]}]},{"cls":"hidden-xs","bgcolor":"","bgimage":"","fullwidth":"1","parallax":"0","sfxcls":null,"padding":"","margin":"","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"custom support","module":"html.eMLpQB","type":"html"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"On Sale","module":"product_list.7mwGTW","type":"product_list"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"img","module":"image.tNFUtE","type":"image"}],"rows":[]},{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":8,"mdcol":8,"smcol":8,"xscol":12,"widgets":[{"name":"img","module":"image.tmUlmh","type":"image"}],"rows":[]}]}]";s:9:"module_id";s:2:"65";}'),
(71, 'Slide Home 3', 'pavsliderlayer', '{"name":"Slide Home 3","status":"1","group_id":"10","pavsliderlayer_module":[]}'),
(72, 'Slide Home 2', 'pavsliderlayer', '{"name":"Slide Home 2","status":"1","group_id":"9","pavsliderlayer_module":[]}'),
(80, 'Banner category', 'banner', '{"name":"Banner category","banner_id":"12","width":"270","height":"270","status":"1"}'),
(83, 'Vertical  home', 'pavverticalmenu', '{"status":"1","name":"Vertical  home"}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(1, 2, 'Radio'),
(2, 2, 'Checkbox'),
(4, 2, 'Text'),
(6, 2, 'Textarea'),
(8, 2, 'Date'),
(7, 2, 'File'),
(5, 2, 'Select'),
(9, 2, 'Time'),
(10, 2, 'Date &amp; Time'),
(12, 2, 'Delivery Date'),
(11, 2, 'Size');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(43, 2, 1, 'Large'),
(32, 2, 1, 'Small'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 2, 1, 'Medium'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(48, 2, 11, 'Large'),
(47, 2, 11, 'Medium'),
(46, 2, 11, 'Small');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, 0, 'INV-2013-00', 0, 'Your Store', 'http://localhost/oc/Dropbox/lexus_kitchen_special/', 0, 1, 'demo', 'demo', 'demo@gmail.com', '12456458', '', '[]', 'demo', 'demo', '', 'hfjdgfjdhsfj', '', 'dhfdjfhj', '0000', 'United States', 223, 'Alabama', 3613, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Cash On Delivery', 'cod', 'demo', 'demo', '', 'hfjdgfjdhsfj', '', 'dhfdjfhj', '0000', 'United States', 223, 'Alabama', 3613, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', '', '85.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', 'vi-VN,vi;q=0.8,fr-FR;q=0.6,fr;q=0.4,en-US;q=0.2,en;q=0.2', '2016-03-28 16:09:22', '2016-03-28 16:09:24'),
(2, 0, 'INV-2013-00', 0, 'Your Store', 'http://localhost/oc/Dropbox/pav_beat/', 0, 1, 'demo', 'demo', 'demo@gmail.com', '121545445454', '', '[]', 'demo', 'demo', '', 'hjghdfj hjhgj', '', 'hfjdghjg', '0000', 'United States', 223, 'Alabama', 3613, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Cash On Delivery', 'cod', 'demo', 'demo', '', 'hjghdfj hjhgj', '', 'hfjdghjg', '0000', 'United States', 223, 'Alabama', 3613, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', '', '1205.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36', 'vi-VN,vi;q=0.8,fr-FR;q=0.6,fr;q=0.4,en-US;q=0.2,en;q=0.2', '2016-04-11 10:46:49', '2016-04-11 10:46:50');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_custom_field`
--

CREATE TABLE `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 1, 1, 0, '', '2016-03-28 16:09:24'),
(2, 2, 1, 0, '', '2016-04-11 10:46:50');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(1, 2, 4, 225, 0, 'Delivery Date', '2011-04-22', 'date');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, 32, 'DecoBros 3-Tier Counter', 'Product 5', 1, '80.0000', '80.0000', '0.0000', 0),
(2, 2, 36, 'KD Organizers - 6-Slot Bamboo Drawer ', 'Product 9', 1, '100.0000', '100.0000', '0.0000', 0),
(3, 2, 46, 'Seville Classics Expandable Kitchen Counter', 'Product 13', 1, '1000.0000', '1000.0000', '0.0000', 0),
(4, 2, 47, 'Sorbus® Foldable Storage Cube Basket Bin', 'Product 10', 1, '100.0000', '100.0000', '0.0000', 300);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(2, 2, 'Processing'),
(3, 2, 'Shipped'),
(7, 2, 'Canceled'),
(5, 2, 'Complete'),
(8, 2, 'Denied'),
(9, 2, 'Canceled Reversal'),
(10, 2, 'Failed'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback'),
(1, 2, 'Pending'),
(16, 2, 'Voided'),
(15, 2, 'Processed'),
(14, 2, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(1, 1, 'sub_total', 'Sub-Total', '80.0000', 1),
(2, 1, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(3, 1, 'total', 'Total', '85.0000', 9),
(4, 2, 'sub_total', 'Sub-Total', '1200.0000', 1),
(5, 2, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(6, 2, 'total', 'Total', '1205.0000', 9);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_blog`
--

CREATE TABLE `oc_pavblog_blog` (
  `blog_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `date_modified` date NOT NULL,
  `video_code` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `tags` varchar(255) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavblog_blog`
--

INSERT INTO `oc_pavblog_blog` (`blog_id`, `category_id`, `position`, `created`, `status`, `user_id`, `hits`, `image`, `meta_keyword`, `meta_description`, `meta_title`, `date_modified`, `video_code`, `params`, `tags`, `featured`, `keyword`) VALUES
(7, 21, 1, '2013-03-09', 1, 1, 63, 'catalog/demo/blog/blog1.jpg', '', '', '', '2016-07-13', '', '', 'joomla, prestashop, magento', 1, ''),
(9, 21, 2, '2013-03-09', 1, 1, 85, 'catalog/demo/blog/blog2.jpg', '', '', '', '2015-12-15', '', '', 'prestashop, magento', 0, ''),
(10, 21, 3, '2013-03-09', 1, 1, 270, 'catalog/demo/blog/blog3.jpg', 'test test', '', 'Custom SEO Titlte', '2016-07-13', '', '', 'prestashop', 0, ''),
(11, 21, 4, '2013-03-11', 1, 1, 138, 'catalog/demo/blog/blog3.jpg', '', '', '', '2016-07-13', '', '', 'opencart', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_blog_description`
--

CREATE TABLE `oc_pavblog_blog_description` (
  `blog_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavblog_blog_description`
--

INSERT INTO `oc_pavblog_blog_description` (`blog_id`, `language_id`, `title`, `description`, `content`) VALUES
(9, 1, 'Commodo laoreet semper tincidunt lorem ', '&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue&lt;/p&gt;\r\n', '&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),
(9, 2, 'Commodo laoreet semper tincidunt lorem ', '&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In \r\nCurabitur magna. Euismod euismod Suspendisse tortor ante adipiscing \r\nrisus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum \r\nconsequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique\r\n auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna \r\ntortor metus fringilla interdum mauris tempor congue&lt;/p&gt;\r\n', '&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In \r\nCurabitur magna. Euismod euismod Suspendisse tortor ante adipiscing \r\nrisus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum \r\nconsequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique\r\n auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna \r\ntortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue\r\n eget dapibus congue tincidunt senectus nibh risus Phasellus tristique \r\njusto. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent \r\nmauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus\r\n nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis \r\nvitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit \r\nipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus \r\nligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam \r\nVivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium \r\neros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id \r\nauctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum\r\n faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum \r\nornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit \r\nVestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac \r\nsed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum\r\n auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit \r\nVestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),
(7, 2, 'Ac tincidunt Suspendisse malesuada', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus \r\nVestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit \r\nsemper scelerisque convallis. Sed quisque cum velit&lt;/p&gt;\r\n', '&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In \r\nCurabitur magna. Euismod euismod Suspendisse tortor ante adipiscing \r\nrisus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum \r\nconsequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique\r\n auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna \r\ntortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue\r\n eget dapibus congue tincidunt senectus nibh risus Phasellus tristique \r\njusto. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent \r\nmauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus\r\n nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis \r\nvitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit \r\nipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus \r\nligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam \r\nVivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium \r\neros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id \r\nauctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum\r\n faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum \r\nornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit \r\nVestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac \r\nsed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum\r\n auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit \r\nVestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),
(7, 1, 'Ac tincidunt Suspendisse malesuada', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis. Sed quisque cum velit&lt;/p&gt;\r\n', '&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),
(11, 2, 'Donec tellus Nulla lorem Nullam elit id ut', '&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue\r\n eget dapibus congue tincidunt senectus nibh risus Phasellus tristique \r\njusto. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent \r\nmauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus\r\n nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis \r\nvitae.&lt;/p&gt;\r\n', '&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In \r\nCurabitur magna. Euismod euismod Suspendisse tortor ante adipiscing \r\nrisus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum \r\nconsequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique\r\n auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna \r\ntortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue\r\n eget dapibus congue tincidunt senectus nibh risus Phasellus tristique \r\njusto. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent \r\nmauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus\r\n nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis \r\nvitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit \r\nipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus \r\nligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam \r\nVivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium \r\neros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id \r\nauctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum\r\n faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum \r\nornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit \r\nVestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac \r\nsed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum\r\n auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit \r\nVestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),
(11, 1, 'Donec tellus Nulla lorem Nullam elit id ut', '&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n', '&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),
(10, 2, 'Neque porro quisquam est, qui dolorem ipsum', '&lt;p&gt;&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem \r\naccusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab\r\n illo inventore veritatis et quasi architecto beatae vitae dicta sunt \r\nexplicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut \r\nodit aut fugit, sed quia consequuntur magni dolores eos qui ratione \r\nvoluptatem sequi nesciunt.&lt;/p&gt;\r\n', '&lt;p&gt;Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, \r\nconsectetur, adipisci velit, sed quia non numquam eius modi tempora \r\nincidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim \r\nad minima veniam, quis nostrum exercitationem ullam corporis suscipit \r\nlaboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel \r\neum iure reprehenderit qui in ea voluptate velit esse quam nihil \r\nmolestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas \r\nnulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor \r\nsit amet, consectetur, adipisci velit, sed quia non numquam eius modi \r\ntempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. \r\nUt enim ad minima veniam, quis nostrum exercitationem ullam corporis \r\nsuscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis \r\nautem vel eum iure reprehenderit qui in ea voluptate velit esse quam \r\nnihil molestiae consequatur, vel illum qui dolorem eum fugiat quo \r\nvoluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum \r\nquia dolor sit amet, consectetur, adipisci velit, sed quia non numquam \r\neius modi tempora incidunt ut labore et dolore magnam aliquam quaerat \r\nvoluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam \r\ncorporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?\r\n Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse \r\nquam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo \r\nvoluptas nulla pariatur?&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(10, 1, 'Neque porro quisquam est, qui dolorem ipsum', '&lt;p&gt;&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.&lt;/p&gt;\r\n', 'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_category`
--

CREATE TABLE `oc_pavblog_category` (
  `category_id` int(11) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_group` smallint(6) NOT NULL DEFAULT '2',
  `width` varchar(255) DEFAULT NULL,
  `submenu_width` varchar(255) DEFAULT NULL,
  `colum_width` varchar(255) DEFAULT NULL,
  `submenu_colum_width` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `colums` varchar(255) DEFAULT '1',
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL DEFAULT '2',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `meta_keyword` varchar(255) NOT NULL DEFAULT '1',
  `level_depth` smallint(6) NOT NULL DEFAULT '0',
  `published` smallint(6) NOT NULL DEFAULT '1',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `position` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `show_sub` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `privacy` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `position_type` varchar(25) DEFAULT 'top',
  `menu_class` varchar(25) DEFAULT NULL,
  `description` text,
  `meta_description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavblog_category`
--

INSERT INTO `oc_pavblog_category` (`category_id`, `image`, `parent_id`, `is_group`, `width`, `submenu_width`, `colum_width`, `submenu_colum_width`, `item`, `colums`, `type`, `is_content`, `show_title`, `meta_keyword`, `level_depth`, `published`, `store_id`, `position`, `show_sub`, `url`, `target`, `privacy`, `position_type`, `menu_class`, `description`, `meta_description`, `meta_title`, `level`, `left`, `right`, `keyword`) VALUES
(1, '', 0, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 0, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, -5, 34, 47, ''),
(20, 'data/pavblog/pav-c3.jpg', 22, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 3, 0, NULL, NULL, 0, 'top', 'test test', NULL, NULL, NULL, 0, 0, 0, ''),
(21, 'data/pavblog/pav-c1.jpg', 22, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 1, 0, NULL, NULL, 0, 'top', '', NULL, NULL, NULL, 0, 0, 0, ''),
(22, 'data/demo/canon_eos_5d_1.jpg', 1, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 1, 0, NULL, NULL, 0, 'top', '', NULL, NULL, NULL, 0, 0, 0, ''),
(23, 'data/pavblog/pav-c2.jpg', 22, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 2, 0, NULL, NULL, 0, 'top', '', NULL, NULL, NULL, 0, 0, 0, ''),
(24, 'data/logo.png', 1, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 2, 0, NULL, NULL, 0, 'top', '', NULL, NULL, NULL, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_category_description`
--

CREATE TABLE `oc_pavblog_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavblog_category_description`
--

INSERT INTO `oc_pavblog_category_description` (`category_id`, `language_id`, `title`, `description`) VALUES
(20, 1, 'Demo Category 1-2', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n'),
(23, 1, 'Demo Category 1-2-2', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis&lt;/p&gt;\r\n'),
(22, 1, 'Demo Category 1', '&lt;p&gt;Enter your Category 1 Description Here&lt;/p&gt;\r\n'),
(24, 1, 'Demo Category 2', '&lt;p&gt;Description Here&lt;/p&gt;\r\n'),
(21, 1, 'Demo Category 1 2-1', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis&lt;/p&gt;\r\n'),
(1, 1, 'ROOT', 'Menu Root'),
(22, 2, 'Demo Category 1', '&lt;p&gt;Enter your Category 1 Description Here&lt;/p&gt;\r\n'),
(21, 2, 'Demo Category 1 2-1', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus \r\nVestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit \r\nsemper scelerisque convallis&lt;/p&gt;\r\n'),
(23, 2, 'Demo Category 1-2-2', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus \r\nVestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit \r\nsemper scelerisque convallis&lt;/p&gt;\r\n'),
(20, 2, 'Demo Category 1-2', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus \r\nVestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit \r\nsemper scelerisque convallis&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n'),
(24, 2, 'Demo Category 2', '&lt;p&gt;Description Here&lt;/p&gt;\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_comment`
--

CREATE TABLE `oc_pavblog_comment` (
  `comment_id` int(11) UNSIGNED NOT NULL,
  `blog_id` int(11) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavblog_comment`
--

INSERT INTO `oc_pavblog_comment` (`comment_id`, `blog_id`, `comment`, `status`, `created`, `user`, `email`) VALUES
(6, 10, 'Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag', 1, '2013-03-12 14:23:09', 'ha cong tien', 'hatuhn@gmail.com'),
(7, 10, 'Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag', 1, '2013-03-12 14:25:19', 'ha cong tien', 'hatuhn@gmail.com'),
(8, 10, 'Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag', 1, '2013-03-12 14:30:17', 'Test Test ', 'ngoisao@aa.com');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_draft`
--

CREATE TABLE `oc_pavnewsletter_draft` (
  `draft_id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT '0',
  `to` varchar(200) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `message` text,
  `customer_group_id` int(11) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `affiliate` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_email`
--

CREATE TABLE `oc_pavnewsletter_email` (
  `email_id` int(11) NOT NULL,
  `template_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `attach` varchar(200) DEFAULT NULL,
  `message` text,
  `customer_group_id` int(11) DEFAULT NULL,
  `affiliate` varchar(255) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `defined` varchar(255) DEFAULT NULL,
  `special` varchar(255) DEFAULT NULL,
  `latest` varchar(255) DEFAULT NULL,
  `popular` varchar(255) DEFAULT NULL,
  `defined_categories` varchar(255) DEFAULT NULL,
  `categories` varchar(255) DEFAULT NULL,
  `defined_products` varchar(255) DEFAULT NULL,
  `defined_products_more` varchar(255) DEFAULT NULL,
  `only_selected_language` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `to` varchar(200) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_history`
--

CREATE TABLE `oc_pavnewsletter_history` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `public_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `to` varchar(255) NOT NULL,
  `subject` text,
  `message` text,
  `date_added` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_subscribe`
--

CREATE TABLE `oc_pavnewsletter_subscribe` (
  `subscribe_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT '0',
  `store_id` int(11) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `action` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavnewsletter_subscribe`
--

INSERT INTO `oc_pavnewsletter_subscribe` (`subscribe_id`, `customer_id`, `store_id`, `email`, `action`) VALUES
(1, 0, 0, 'ggg@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_template`
--

CREATE TABLE `oc_pavnewsletter_template` (
  `template_id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `hits` tinyint(4) DEFAULT '0',
  `template_file` varchar(200) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `date_added` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_template_description`
--

CREATE TABLE `oc_pavnewsletter_template_description` (
  `template_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `template_message` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavoslidergroups`
--

CREATE TABLE `oc_pavoslidergroups` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `params` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavoslidergroups`
--

INSERT INTO `oc_pavoslidergroups` (`id`, `title`, `params`) VALUES
(4, 'Slide Home 1', 'a:28:{s:5:"title";s:12:"Slide Home 1";s:5:"delay";s:4:"9000";s:9:"fullwidth";s:0:"";s:5:"width";s:4:"1920";s:6:"height";s:3:"630";s:12:"touch_mobile";s:1:"1";s:13:"stop_on_hover";s:1:"1";s:12:"shuffle_mode";s:1:"0";s:14:"image_cropping";s:1:"0";s:11:"shadow_type";s:1:"0";s:14:"show_time_line";s:1:"1";s:18:"time_line_position";s:3:"top";s:16:"background_color";s:0:"";s:6:"margin";s:5:"0 0 0";s:7:"padding";s:1:"0";s:16:"background_image";s:1:"0";s:14:"background_url";s:0:"";s:14:"navigator_type";s:4:"none";s:16:"navigator_arrows";s:16:"verticalcentered";s:16:"navigation_style";s:5:"round";s:17:"offset_horizontal";s:2:"20";s:15:"offset_vertical";s:2:"20";s:14:"show_navigator";s:1:"1";s:20:"hide_navigator_after";s:3:"200";s:15:"thumbnail_width";s:3:"100";s:16:"thumbnail_height";s:2:"50";s:16:"thumbnail_amount";s:1:"5";s:17:"hide_screen_width";s:0:"";}'),
(9, 'Slide Home 2', 'a:28:{s:5:"title";s:12:"Slide Home 2";s:5:"delay";s:4:"9000";s:9:"fullwidth";s:0:"";s:5:"width";s:4:"1170";s:6:"height";s:3:"630";s:12:"touch_mobile";s:1:"1";s:13:"stop_on_hover";s:1:"1";s:12:"shuffle_mode";s:1:"0";s:14:"image_cropping";s:1:"0";s:11:"shadow_type";s:1:"0";s:14:"show_time_line";s:1:"0";s:18:"time_line_position";s:3:"top";s:16:"background_color";s:0:"";s:6:"margin";s:0:"";s:7:"padding";s:0:"";s:16:"background_image";s:1:"1";s:14:"background_url";s:0:"";s:14:"navigator_type";s:6:"bullet";s:16:"navigator_arrows";s:4:"none";s:16:"navigation_style";s:5:"round";s:17:"offset_horizontal";s:1:"0";s:15:"offset_vertical";s:2:"20";s:14:"show_navigator";s:1:"0";s:20:"hide_navigator_after";s:3:"200";s:15:"thumbnail_width";s:3:"100";s:16:"thumbnail_height";s:2:"50";s:16:"thumbnail_amount";s:1:"5";s:17:"hide_screen_width";s:0:"";}'),
(10, 'Slide Home 3', 'a:28:{s:5:"title";s:12:"Slide Home 3";s:5:"delay";s:4:"9000";s:9:"fullwidth";s:0:"";s:5:"width";s:3:"870";s:6:"height";s:3:"530";s:12:"touch_mobile";s:1:"1";s:13:"stop_on_hover";s:1:"1";s:12:"shuffle_mode";s:1:"0";s:14:"image_cropping";s:1:"0";s:11:"shadow_type";s:1:"0";s:14:"show_time_line";s:1:"0";s:18:"time_line_position";s:3:"top";s:16:"background_color";s:0:"";s:6:"margin";s:0:"";s:7:"padding";s:0:"";s:16:"background_image";s:1:"0";s:14:"background_url";s:0:"";s:14:"navigator_type";s:6:"bullet";s:16:"navigator_arrows";s:4:"none";s:16:"navigation_style";s:5:"round";s:17:"offset_horizontal";s:1:"0";s:15:"offset_vertical";s:2:"20";s:14:"show_navigator";s:1:"0";s:20:"hide_navigator_after";s:3:"200";s:15:"thumbnail_width";s:3:"100";s:16:"thumbnail_height";s:2:"50";s:16:"thumbnail_amount";s:1:"5";s:17:"hide_screen_width";s:0:"";}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavosliderlayers`
--

CREATE TABLE `oc_pavosliderlayers` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `params` text NOT NULL,
  `layersparams` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `language_id` int(11) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavosliderlayers`
--

INSERT INTO `oc_pavosliderlayers` (`id`, `title`, `parent_id`, `group_id`, `params`, `layersparams`, `image`, `status`, `position`, `language_id`) VALUES
(115, 'slide1', 0, 9, 'a:18:{s:2:"id";s:3:"115";s:15:"slider_group_id";s:1:"9";s:12:"slider_title";s:6:"slide1";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:3:"115";s:12:"slider_image";s:30:"catalog/demo/slider/slide4.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:3:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:32:"catalog/demo/slider/bg-slide.png";s:10:"layer_type";s:5:"image";s:11:"layer_class";s:0:"";s:13:"layer_caption";s:17:"Your Image Here 3";s:15:"layer_animation";s:3:"lft";s:12:"layer_easing";s:11:"easeOutSine";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"70";s:10:"layer_left";s:2:"70";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"ltt";s:15:"layer_endeasing";s:11:"easeInQuint";s:10:"time_start";s:3:"800";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:14:"text-170 white";s:13:"layer_caption";s:5:"fresh";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:13:"easeInOutQuad";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"100";s:10:"layer_left";s:3:"300";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"ltl";s:15:"layer_endeasing";s:11:"easeInQuint";s:10:"time_start";s:4:"1175";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:14:"text-170 white";s:13:"layer_caption";s:5:"Fruit";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:13:"easeInOutQuad";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"250";s:10:"layer_left";s:3:"300";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:12:"easeOutQuart";s:10:"time_start";s:4:"1527";}}}', 'catalog/demo/slider/slide4.jpg', 1, 1, 1),
(154, 'slide2', 0, 9, 'a:18:{s:2:"id";s:3:"154";s:15:"slider_group_id";s:1:"9";s:12:"slider_title";s:6:"slide2";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:3:"154";s:12:"slider_image";s:30:"catalog/demo/slider/slide5.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:2:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:14:"text-170 white";s:13:"layer_caption";s:5:"Green";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:13:"easeInOutQuad";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"100";s:10:"layer_left";s:3:"300";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"ltl";s:15:"layer_endeasing";s:11:"easeInQuint";s:10:"time_start";s:3:"800";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:14:"text-170 white";s:13:"layer_caption";s:5:"Beans";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:13:"easeInOutQuad";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"250";s:10:"layer_left";s:3:"300";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:12:"easeOutQuart";s:10:"time_start";s:4:"1600";}}}', 'catalog/demo/slider/slide5.jpg', 1, 1, 1),
(89, 'slide 1', 0, 4, 'a:18:{s:2:"id";s:2:"89";s:15:"slider_group_id";s:1:"4";s:12:"slider_title";s:7:"slide 1";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:2:"89";s:12:"slider_image";s:30:"catalog/demo/slider/slide1.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:2:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:14:"text-150 white";s:13:"layer_caption";s:10:"Fresh Food";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:13:"easeInOutQuad";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"100";s:10:"layer_left";s:3:"506";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1000";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:34:"catalog/demo/slider/text-slide.png";s:10:"layer_type";s:5:"image";s:11:"layer_class";s:0:"";s:13:"layer_caption";s:17:"Your Image Here 4";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:13:"easeInOutSine";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"320";s:10:"layer_left";s:3:"837";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:11:"easeOutExpo";s:10:"time_start";s:4:"1600";}}}', 'catalog/demo/slider/slide1.jpg', 1, 1, 1),
(149, 'slide 2', 0, 4, 'a:18:{s:2:"id";s:3:"149";s:15:"slider_group_id";s:1:"4";s:12:"slider_title";s:7:"slide 2";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:3:"149";s:12:"slider_image";s:30:"catalog/demo/slider/slide2.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:2:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:14:"text-150 white";s:13:"layer_caption";s:10:"Fresh Food";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:13:"easeInOutQuad";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"100";s:10:"layer_left";s:3:"506";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1000";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:34:"catalog/demo/slider/text-slide.png";s:10:"layer_type";s:5:"image";s:11:"layer_class";s:0:"";s:13:"layer_caption";s:17:"Your Image Here 4";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:13:"easeInOutSine";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"320";s:10:"layer_left";s:3:"837";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:11:"easeOutExpo";s:10:"time_start";s:4:"1600";}}}', 'catalog/demo/slider/slide2.jpg', 1, 1, 1),
(150, 'slide 3', 0, 4, 'a:18:{s:2:"id";s:3:"150";s:15:"slider_group_id";s:1:"4";s:12:"slider_title";s:7:"slide 3";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:3:"150";s:12:"slider_image";s:30:"catalog/demo/slider/slide3.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:2:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:14:"text-150 white";s:13:"layer_caption";s:10:"Fresh Food";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:13:"easeInOutQuad";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"100";s:10:"layer_left";s:3:"506";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1000";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:34:"catalog/demo/slider/text-slide.png";s:10:"layer_type";s:5:"image";s:11:"layer_class";s:0:"";s:13:"layer_caption";s:17:"Your Image Here 4";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:13:"easeInOutSine";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"320";s:10:"layer_left";s:3:"837";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:11:"easeOutExpo";s:10:"time_start";s:4:"1600";}}}', 'catalog/demo/slider/slide3.jpg', 1, 1, 1),
(124, 'slide1', 0, 10, 'a:18:{s:2:"id";s:3:"124";s:15:"slider_group_id";s:2:"10";s:12:"slider_title";s:6:"slide1";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:3:"124";s:12:"slider_image";s:30:"catalog/demo/slider/slide5.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:2:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:14:"text-170 white";s:13:"layer_caption";s:5:"fresh";s:15:"layer_animation";s:3:"lft";s:12:"layer_easing";s:13:"easeInOutQuad";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"70";s:10:"layer_left";s:3:"192";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"ltt";s:15:"layer_endeasing";s:12:"easeOutQuart";s:10:"time_start";s:3:"800";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:14:"text-170 white";s:13:"layer_caption";s:5:"Beans";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:13:"easeInOutQuad";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"210";s:10:"layer_left";s:3:"200";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:10:"easeInExpo";s:10:"time_start";s:4:"1600";}}}', 'catalog/demo/slider/slide5.jpg', 1, 1, 1),
(157, 'slide2', 0, 10, 'a:18:{s:2:"id";s:3:"157";s:15:"slider_group_id";s:2:"10";s:12:"slider_title";s:6:"slide2";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:3:"157";s:12:"slider_image";s:30:"catalog/demo/slider/slide7.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:2:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:14:"text-170 white";s:13:"layer_caption";s:5:"fresh";s:15:"layer_animation";s:3:"lft";s:12:"layer_easing";s:13:"easeInOutQuad";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"70";s:10:"layer_left";s:3:"192";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"ltt";s:15:"layer_endeasing";s:12:"easeOutQuart";s:10:"time_start";s:3:"800";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:14:"text-170 white";s:13:"layer_caption";s:5:"Fruit";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:13:"easeInOutQuad";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"210";s:10:"layer_left";s:3:"200";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:10:"easeInExpo";s:10:"time_start";s:4:"1600";}}}', 'catalog/demo/slider/slide7.jpg', 1, 1, 1),
(158, 'slide1', 0, 10, 'a:18:{s:2:"id";s:3:"124";s:15:"slider_group_id";s:2:"10";s:12:"slider_title";s:6:"slide1";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:3:"124";s:12:"slider_image";s:30:"catalog/demo/slider/slide5.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:2:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:14:"text-170 white";s:13:"layer_caption";s:5:"fresh";s:15:"layer_animation";s:3:"lft";s:12:"layer_easing";s:13:"easeInOutQuad";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"70";s:10:"layer_left";s:3:"192";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"ltt";s:15:"layer_endeasing";s:12:"easeOutQuart";s:10:"time_start";s:3:"800";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:14:"text-170 white";s:13:"layer_caption";s:5:"Beans";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:13:"easeInOutQuad";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"210";s:10:"layer_left";s:3:"200";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:10:"easeInExpo";s:10:"time_start";s:4:"1600";}}}', 'catalog/demo/slider/slide5.jpg', 1, 1, 2),
(159, 'slide2', 0, 10, 'a:18:{s:2:"id";s:3:"157";s:15:"slider_group_id";s:2:"10";s:12:"slider_title";s:6:"slide2";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:3:"157";s:12:"slider_image";s:30:"catalog/demo/slider/slide7.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:2:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:14:"text-170 white";s:13:"layer_caption";s:5:"fresh";s:15:"layer_animation";s:3:"lft";s:12:"layer_easing";s:13:"easeInOutQuad";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"70";s:10:"layer_left";s:3:"192";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"ltt";s:15:"layer_endeasing";s:12:"easeOutQuart";s:10:"time_start";s:3:"800";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:14:"text-170 white";s:13:"layer_caption";s:5:"Fruit";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:13:"easeInOutQuad";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"210";s:10:"layer_left";s:3:"200";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:10:"easeInExpo";s:10:"time_start";s:4:"1600";}}}', 'catalog/demo/slider/slide7.jpg', 1, 1, 2),
(155, 'slide1', 0, 9, 'a:18:{s:2:"id";s:3:"115";s:15:"slider_group_id";s:1:"9";s:12:"slider_title";s:6:"slide1";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:3:"115";s:12:"slider_image";s:30:"catalog/demo/slider/slide4.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:3:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:32:"catalog/demo/slider/bg-slide.png";s:10:"layer_type";s:5:"image";s:11:"layer_class";s:0:"";s:13:"layer_caption";s:17:"Your Image Here 3";s:15:"layer_animation";s:3:"lft";s:12:"layer_easing";s:11:"easeOutSine";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"70";s:10:"layer_left";s:2:"70";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"ltt";s:15:"layer_endeasing";s:11:"easeInQuint";s:10:"time_start";s:3:"800";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:14:"text-170 white";s:13:"layer_caption";s:5:"fresh";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:13:"easeInOutQuad";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"100";s:10:"layer_left";s:3:"300";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"ltl";s:15:"layer_endeasing";s:11:"easeInQuint";s:10:"time_start";s:4:"1175";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:14:"text-170 white";s:13:"layer_caption";s:5:"Fruit";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:13:"easeInOutQuad";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"250";s:10:"layer_left";s:3:"300";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:12:"easeOutQuart";s:10:"time_start";s:4:"1527";}}}', 'catalog/demo/slider/slide4.jpg', 1, 1, 2),
(156, 'slide2', 0, 9, 'a:18:{s:2:"id";s:3:"154";s:15:"slider_group_id";s:1:"9";s:12:"slider_title";s:6:"slide2";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:3:"154";s:12:"slider_image";s:30:"catalog/demo/slider/slide5.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:2:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:14:"text-170 white";s:13:"layer_caption";s:5:"Green";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:13:"easeInOutQuad";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"100";s:10:"layer_left";s:3:"300";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"ltl";s:15:"layer_endeasing";s:11:"easeInQuint";s:10:"time_start";s:3:"800";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:14:"text-170 white";s:13:"layer_caption";s:5:"Beans";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:13:"easeInOutQuad";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"250";s:10:"layer_left";s:3:"300";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:12:"easeOutQuart";s:10:"time_start";s:4:"1600";}}}', 'catalog/demo/slider/slide5.jpg', 1, 1, 2),
(153, 'slide 3', 0, 4, 'a:18:{s:2:"id";s:3:"150";s:15:"slider_group_id";s:1:"4";s:12:"slider_title";s:7:"slide 3";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:3:"150";s:12:"slider_image";s:30:"catalog/demo/slider/slide3.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:2:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:14:"text-150 white";s:13:"layer_caption";s:10:"Fresh Food";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:13:"easeInOutQuad";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"100";s:10:"layer_left";s:3:"506";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1000";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:34:"catalog/demo/slider/text-slide.png";s:10:"layer_type";s:5:"image";s:11:"layer_class";s:0:"";s:13:"layer_caption";s:17:"Your Image Here 4";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:13:"easeInOutSine";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"320";s:10:"layer_left";s:3:"837";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:11:"easeOutExpo";s:10:"time_start";s:4:"1600";}}}', 'catalog/demo/slider/slide3.jpg', 1, 1, 2),
(151, 'slide 1', 0, 4, 'a:18:{s:2:"id";s:2:"89";s:15:"slider_group_id";s:1:"4";s:12:"slider_title";s:7:"slide 1";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:2:"89";s:12:"slider_image";s:30:"catalog/demo/slider/slide1.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:2:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:14:"text-150 white";s:13:"layer_caption";s:10:"Fresh Food";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:13:"easeInOutQuad";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"100";s:10:"layer_left";s:3:"506";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1000";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:34:"catalog/demo/slider/text-slide.png";s:10:"layer_type";s:5:"image";s:11:"layer_class";s:0:"";s:13:"layer_caption";s:17:"Your Image Here 4";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:13:"easeInOutSine";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"320";s:10:"layer_left";s:3:"837";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:11:"easeOutExpo";s:10:"time_start";s:4:"1600";}}}', 'catalog/demo/slider/slide1.jpg', 1, 1, 2),
(152, 'slide 2', 0, 4, 'a:18:{s:2:"id";s:3:"149";s:15:"slider_group_id";s:1:"4";s:12:"slider_title";s:7:"slide 2";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:3:"149";s:12:"slider_image";s:30:"catalog/demo/slider/slide2.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:2:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:14:"text-150 white";s:13:"layer_caption";s:10:"Fresh Food";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:13:"easeInOutQuad";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"100";s:10:"layer_left";s:3:"506";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1000";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:34:"catalog/demo/slider/text-slide.png";s:10:"layer_type";s:5:"image";s:11:"layer_class";s:0:"";s:13:"layer_caption";s:17:"Your Image Here 4";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:13:"easeInOutSine";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"320";s:10:"layer_left";s:3:"837";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:11:"easeOutExpo";s:10:"time_start";s:4:"1600";}}}', 'catalog/demo/slider/slide2.jpg', 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavwidget`
--

CREATE TABLE `oc_pavwidget` (
  `pavwidget_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  `module_id` int(11) NOT NULL,
  `key` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavwidget`
--

INSERT INTO `oc_pavwidget` (`pavwidget_id`, `name`, `code`, `setting`, `module_id`, `key`) VALUES
(8092, 'content', 'product_tab_list.8Siy1C', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjkxMDUyNzMyOTY0NzMyNjkiO3M6NjoibW9kdWxlIjtzOjIzOiJwcm9kdWN0X3RhYl9saXN0LjhTaXkxQyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjM6InByb2R1Y3RfdGFiX2xpc3QuOFNpeTFDIjtzOjU6Ind0eXBlIjtzOjE2OiJwcm9kdWN0X3RhYl9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiQXBwbGlhbmNlcyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMDoiQXBwbGlhbmNlcyI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTA6IkFwcGxpYW5jZXMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGlua3MiO2E6NTp7aTowO3M6MjoiMjgiO2k6MTtzOjI6IjI5IjtpOjI7czoyOiIzMCI7aTozO3M6MjoiMzEiO2k6NDtzOjI6IjMyIjt9czo1OiJsaW1pdCI7czoxOiI4IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo0OiJjb2xzIjtzOjE6IjQiO3M6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjUwMCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjU1MCI7fQ==', 39, 0),
(8239, 'content', 'product_tab_list_banner_left.KSz', 'YToyMDp7czo0OiJyYW5kIjtzOjE5OiIwLjAxNzc3NDU2NDg0MTkyNTE5IjtzOjY6Im1vZHVsZSI7czozNToicHJvZHVjdF90YWJfbGlzdF9iYW5uZXJfbGVmdC5LU3pLZTMiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjM1OiJwcm9kdWN0X3RhYl9saXN0X2Jhbm5lcl9sZWZ0LktTektlMyI7czo1OiJ3dHlwZSI7czoyODoicHJvZHVjdF90YWJfbGlzdF9iYW5uZXJfbGVmdCI7czoxMToid2lkZ2V0X25hbWUiO3M6NDoiZGVtbyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjQ6ImRlbW8iO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGlua3MiO2E6Mjp7aTowO3M6MjoiNTciO2k6MTtzOjI6IjI1Ijt9czo1OiJsaW1pdCI7czoxOiI4IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo0OiJjb2xzIjtzOjE6IjQiO3M6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjQwMCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjQwMCI7czoxMDoiYmFubmVyX2ltZyI7czozNjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYm4tY2F0ZWdvcnkuanBnIjtzOjc6ImJfd2lkdGgiO3M6MzoiMjAwIjtzOjg6ImJfaGVpZ2h0IjtzOjM6IjIwMCI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 36, 0),
(8238, 'content', 'product_tab_list_banner_left.fbs', 'YToyMDp7czo0OiJyYW5kIjtzOjE5OiIwLjI4Mzc1OTEyNjM4NTQyNjY2IjtzOjY6Im1vZHVsZSI7czozNToicHJvZHVjdF90YWJfbGlzdF9iYW5uZXJfbGVmdC5mYnN0bHAiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjM1OiJwcm9kdWN0X3RhYl9saXN0X2Jhbm5lcl9sZWZ0LmZic3RscCI7czo1OiJ3dHlwZSI7czoyODoicHJvZHVjdF90YWJfbGlzdF9iYW5uZXJfbGVmdCI7czoxMToid2lkZ2V0X25hbWUiO3M6NDoiZGVtbyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjQ6ImRlbW8iO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGlua3MiO2E6Mjp7aTowO3M6MjoiMTciO2k6MTtzOjI6IjE4Ijt9czo1OiJsaW1pdCI7czoxOiI4IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo0OiJjb2xzIjtzOjE6IjQiO3M6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjQwMCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjQwMCI7czoxMDoiYmFubmVyX2ltZyI7czozNjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYm4tY2F0ZWdvcnkuanBnIjtzOjc6ImJfd2lkdGgiO3M6MzoiMjAwIjtzOjg6ImJfaGVpZ2h0IjtzOjM6IjIwMCI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 36, 0),
(8067, 'content', 'product_tab_list.4AKXod', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjM2MjAxMDcyMTE5NjU5NzUiO3M6NjoibW9kdWxlIjtzOjIzOiJwcm9kdWN0X3RhYl9saXN0LjRBS1hvZCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjM6InByb2R1Y3RfdGFiX2xpc3QuNEFLWG9kIjtzOjU6Ind0eXBlIjtzOjE2OiJwcm9kdWN0X3RhYl9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo3OiJjb29raW5nIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE4OiJDb29raW5nICZhbXA7IEZvb2QiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE4OiJDb29raW5nICZhbXA7IEZvb2QiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGlua3MiO2E6Mzp7aTowO3M6MjoiMTgiO2k6MTtzOjI6IjQ1IjtpOjI7czoyOiI0NiI7fXM6NToibGltaXQiO3M6MToiNiI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjMiO3M6NDoiY29scyI7czoxOiIzIjtzOjExOiJpbWFnZV93aWR0aCI7czozOiI1MDAiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiI1NTAiO30=', 47, 0),
(4652, 'content', 'product_list.35Qlno', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjg3MDY0NzY5NzE4NzY1MDIiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuMzVRbG5vIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LjM1UWxubyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNjoiRmVhdHVyZSBQcm9kdWN0cyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNjoiRmVhdHVyZSBQcm9kdWN0cyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTY6IkZlYXR1cmUgUHJvZHVjdHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MToiOCI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjgiO3M6NDoiY29scyI7czoxOiI0IjtzOjU6IndpZHRoIjtzOjM6IjYwMCI7czo2OiJoZWlnaHQiO3M6MzoiNTMzIjtzOjk6Imxpc3RfdHlwZSI7czo4OiJmZWF0dXJlZCI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjtzOjc6InByb2R1Y3QiO2E6ODp7aTowO3M6MjoiMzYiO2k6MTtzOjI6IjI4IjtpOjI7czoyOiIyOSI7aTozO3M6MjoiNTAiO2k6NDtzOjI6IjM1IjtpOjU7czoyOiI1MSI7aTo2O3M6MjoiNDQiO2k6NztzOjI6IjQ1Ijt9fQ==', 37, 0),
(8237, 'content', 'product_tab_banner2.IjoACj', 'YToyMDp7czo0OiJyYW5kIjtzOjE4OiIwLjg5OTQzMDE1MjI2MzQ2NzMiO3M6NjoibW9kdWxlIjtzOjI2OiJwcm9kdWN0X3RhYl9iYW5uZXIyLklqb0FDaiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjY6InByb2R1Y3RfdGFiX2Jhbm5lcjIuSWpvQUNqIjtzOjU6Ind0eXBlIjtzOjE5OiJwcm9kdWN0X3RhYl9iYW5uZXIyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNjoiQ2FiaW5ldCBIYXJkd2FyZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNjoiQ2FiaW5ldCBIYXJkd2FyZSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTY6IkNhYmluZXQgSGFyZHdhcmUiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGlua3MiO2E6Mzp7aTowO3M6MjoiNjIiO2k6MTtzOjI6IjI2IjtpOjI7czoyOiIyMCI7fXM6NToibGltaXQiO3M6MToiOSI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjMiO3M6NDoiY29scyI7czoxOiIzIjtzOjExOiJpbWFnZV93aWR0aCI7czozOiI1MDAiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiI1NTAiO3M6MTA6ImJhbm5lcl9pbWciO3M6Mzc6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuLXRhYi1sZWZ0Mi5qcGciO3M6NzoiYl93aWR0aCI7czozOiIyOTQiO3M6ODoiYl9oZWlnaHQiO3M6MzoiNDMwIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 36, 0),
(8236, 'content', 'product_tab_banner2.AWaUB2', 'YToyMDp7czo0OiJyYW5kIjtzOjE5OiIwLjA0MjcxNjc5MzI2NzI2ODc0IjtzOjY6Im1vZHVsZSI7czoyNjoicHJvZHVjdF90YWJfYmFubmVyMi5BV2FVQjIiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI2OiJwcm9kdWN0X3RhYl9iYW5uZXIyLkFXYVVCMiI7czo1OiJ3dHlwZSI7czoxOToicHJvZHVjdF90YWJfYmFubmVyMiI7czoxMToid2lkZ2V0X25hbWUiO3M6MTA6IkFwcGxpYW5jZXMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTA6IkFwcGxpYW5jZXMiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEwOiJBcHBsaWFuY2VzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjU6ImxpbmtzIjthOjU6e2k6MDtzOjI6IjI4IjtpOjE7czoyOiIyOSI7aToyO3M6MjoiMzAiO2k6MztzOjI6IjMxIjtpOjQ7czoyOiIzMiI7fXM6NToibGltaXQiO3M6MToiOSI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjMiO3M6NDoiY29scyI7czoxOiIzIjtzOjExOiJpbWFnZV93aWR0aCI7czozOiI1MDAiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiI1NTAiO3M6MTA6ImJhbm5lcl9pbWciO3M6MzY6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuLXRhYi1sZWZ0LmpwZyI7czo3OiJiX3dpZHRoIjtzOjM6IjI5NCI7czo4OiJiX2hlaWdodCI7czozOiI0MzAiO3M6NDoibGluayI7czoxOiIjIjt9', 36, 0),
(4563, 'content', 'product_list_home3.Bmxd2m', 'YToyMTp7czo0OiJyYW5kIjtzOjE4OiIwLjYxMTEzODExNjk2OTczMDQiO3M6NjoibW9kdWxlIjtzOjI1OiJwcm9kdWN0X2xpc3RfaG9tZTMuQm14ZDJtIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToicHJvZHVjdF9saXN0X2hvbWUzLkJteGQybSI7czo1OiJ3dHlwZSI7czoxODoicHJvZHVjdF9saXN0X2hvbWUzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiTmV3IEFycml2YWxzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MToiNiI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjMiO3M6NDoiY29scyI7czoxOiIzIjtzOjU6IndpZHRoIjtzOjM6IjUwMCI7czo2OiJoZWlnaHQiO3M6MzoiNjAwIjtzOjk6Imxpc3RfdHlwZSI7czo2OiJsYXRlc3QiO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7czo4OiJwb3NfdHlwZSI7czoxOiIxIjtzOjEwOiJiYW5uZXJfaW1nIjtzOjMzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIxMy5qcGciO3M6NzoiYl93aWR0aCI7czozOiIzMjAiO3M6ODoiYl9oZWlnaHQiO3M6MzoiMzI1Ijt9', 42, 0),
(4654, 'content', 'product_list.kmp6to', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjc5MTczNDk5NjYxMjExNTIiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3Qua21wNnRvIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LmttcDZ0byI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiTmV3IEFycml2YWxzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo3OiJzaWRlYmFyIjtzOjU6ImxpbWl0IjtzOjE6IjYiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czoyOiI4MCI7czo2OiJoZWlnaHQiO3M6MjoiNzEiO3M6OToibGlzdF90eXBlIjtzOjY6ImxhdGVzdCI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 37, 0),
(4655, 'content', 'product_list.lx6P1g', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjI0NDc2OTA4MzM1OTE4OTU3IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0Lmx4NlAxZyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5seDZQMWciO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTI6IkJlc3Qgc2VsbGVycyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMjoiQmVzdCBzZWxsZXJzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMjoiQmVzdCBzZWxsZXJzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6Nzoic2lkZWJhciI7czo1OiJsaW1pdCI7czoxOiI2IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo0OiJjb2xzIjtzOjE6IjEiO3M6NToid2lkdGgiO3M6MjoiODAiO3M6NjoiaGVpZ2h0IjtzOjI6IjcxIjtzOjk6Imxpc3RfdHlwZSI7czoxMDoiYmVzdHNlbGxlciI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 37, 0),
(8231, 'content', 'product_list.CDZzjh', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjUwODM1NjM1NDkxMzc5MDQiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuQ0RaempoIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LkNEWnpqaCI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiTmV3IEFycml2YWxzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo3OiJzaWRlYmFyIjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czoyOiI4MCI7czo2OiJoZWlnaHQiO3M6MjoiNzEiO3M6OToibGlzdF90eXBlIjtzOjY6ImxhdGVzdCI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjtzOjc6InByb2R1Y3QiO2E6MTp7aTowO3M6MjoiNDIiO319', 36, 0),
(8232, 'content', 'product_list.ET5ZRU', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjI2NTE1MDg5NjI5MjI2MjYzIjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LkVUNVpSVSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5FVDVaUlUiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTI6IkJlc3QgU2VsbGVycyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMjoiQmVzdCBTZWxsZXJzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMjoiQmVzdCBTZWxsZXJzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTI6InBhbmVsLWNlbnRlciI7czo1OiJsaW1pdCI7czoxOiI4IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiOCI7czo0OiJjb2xzIjtzOjE6IjQiO3M6NToid2lkdGgiO3M6MzoiNjAwIjtzOjY6ImhlaWdodCI7czozOiI1MzMiO3M6OToibGlzdF90eXBlIjtzOjEwOiJiZXN0c2VsbGVyIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 36, 0),
(8233, 'content', 'product_list.yCyASo', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjUzNDQyMTYyMjIyNzAxNzYiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QueUN5QVNvIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LnlDeUFTbyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo3OiJTcGVjaWFsIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjc6IlNwZWNpYWwiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjc6IlNwZWNpYWwiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyMToic2lkZWJhciBib3JkZXIteWVsbG93IjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czoyOiI4MCI7czo2OiJoZWlnaHQiO3M6MjoiNzEiO3M6OToibGlzdF90eXBlIjtzOjc6InNwZWNpYWwiO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7fQ==', 36, 0),
(8234, 'content', 'product_tabs.iYgsHt', 'YToyODp7czo0OiJyYW5kIjtzOjE5OiIwLjExODc5NDU5NjMyMDEzNjY3IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF90YWJzLmlZZ3NIdCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfdGFicy5pWWdzSHQiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfdGFicyI7czoxMToid2lkZ2V0X25hbWUiO3M6MDoiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6NjoiY29sdW1uIjtzOjE6IjQiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjExOiJpY29uX25ld2VzdCI7czowOiIiO3M6MTM6ImVuYWJsZV9uZXdlc3QiO3M6MToiMSI7czoxMzoiaWNvbl9mZWF0dXJlZCI7czowOiIiO3M6MTA6InByb2R1Y3RfaWQiO3M6MDoiIjtzOjE1OiJlbmFibGVfZmVhdHVyZWQiO3M6MToiMCI7czoxNToiaWNvbl9iZXN0c2VsbGVyIjtzOjA6IiI7czoxNzoiZW5hYmxlX2Jlc3RzZWxsZXIiO3M6MToiMSI7czoxMjoiaWNvbl9zcGVjaWFsIjtzOjA6IiI7czoxNDoiZW5hYmxlX3NwZWNpYWwiO3M6MToiMSI7czoxNDoiaWNvbl9tb3N0dmlld3MiO3M6MDoiIjtzOjE2OiJlbmFibGVfbW9zdHZpZXdzIjtzOjE6IjEiO3M6OToidGFic3N0eWxlIjtzOjY6InRhYi12MSI7czoxMToiaW1hZ2Vfd2lkdGgiO3M6MzoiNTAwIjtzOjEyOiJpbWFnZV9oZWlnaHQiO3M6MzoiNTUwIjtzOjk6ImF1dG9fcGxheSI7czo0OiIzMDAwIjt9', 36, 0),
(4656, 'content', 'product_list.uXnDpb', 'YToxNzp7czo0OiJyYW5kIjtzOjIwOiIwLjAyNTkyNDQzMjczMDA4MTYwNCI7czo2OiJtb2R1bGUiO3M6MTk6InByb2R1Y3RfbGlzdC51WG5EcGIiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE5OiJwcm9kdWN0X2xpc3QudVhuRHBiIjtzOjU6Ind0eXBlIjtzOjEyOiJwcm9kdWN0X2xpc3QiO3M6MTE6IndpZGdldF9uYW1lIjtzOjg6IlNhbGUgb2ZmIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjg6IlNhbGUgb2ZmIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czo4OiJTYWxlIG9mZiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjIxOiJzaWRlYmFyIGJvcmRlci15ZWxsb3ciO3M6NToibGltaXQiO3M6MToiNiI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjQiO3M6NDoiY29scyI7czoxOiIxIjtzOjU6IndpZHRoIjtzOjI6IjgwIjtzOjY6ImhlaWdodCI7czoyOiI3MSI7czo5OiJsaXN0X3R5cGUiO3M6Nzoic3BlY2lhbCI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 37, 0),
(8219, 'content', 'image.D4TPCe', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjczNTgxOTk2NDE3NTc4MDEiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5ENFRQQ2UiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5ENFRQQ2UiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMTAuanBnIjtzOjQ6InNpemUiO3M6NDoiZnVsbCI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjE6IiMiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjt9', 36, 0),
(8220, 'content', 'image.Hhdfi0', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjkxOTUxODkzMDI4NjU4NDUiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5IaGRmaTAiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5IaGRmaTAiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMTUuanBnIjtzOjQ6InNpemUiO3M6NDoiZnVsbCI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjE6IiMiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjt9', 36, 0),
(8221, 'content', 'image.Jn1FlI', 'YToxOTp7czo0OiJyYW5kIjtzOjE3OiIwLjYxMzczNTc3NTA5NDQ5NSI7czo2OiJtb2R1bGUiO3M6MTI6ImltYWdlLkpuMUZsSSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTI6ImltYWdlLkpuMUZsSSI7czo1OiJ3dHlwZSI7czo1OiJpbWFnZSI7czoxMToid2lkZ2V0X25hbWUiO3M6MDoiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czoyOToiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYm4xNC5qcGciO3M6NDoic2l6ZSI7czo0OiJmdWxsIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIwIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjAiO30=', 36, 0),
(8222, 'content', 'image.lUTtCY', 'YToxOTp7czo0OiJyYW5kIjtzOjE3OiIwLjU5OTU3ODk3NDE4OTIzNyI7czo2OiJtb2R1bGUiO3M6MTI6ImltYWdlLmxVVHRDWSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTI6ImltYWdlLmxVVHRDWSI7czo1OiJ3dHlwZSI7czo1OiJpbWFnZSI7czoxMToid2lkZ2V0X25hbWUiO3M6MDoiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czoyOToiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYm4xOC5qcGciO3M6NDoic2l6ZSI7czo0OiJmdWxsIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIwIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjAiO30=', 36, 0),
(4651, 'content', 'interactive_banner.XojwT6', 'YToyMzp7czo0OiJyYW5kIjtzOjE4OiIwLjUzNDUwNjY2MzkzMzA0NjIiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuWG9qd1Q2IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLlhvandUNiI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNToiQ2VyYW1pY3MgQ29sbGFiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE1OiJDZXJhbWljcyBDb2xsYWIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE1OiJDZXJhbWljcyBDb2xsYWIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTE6InN1Yl90aXRsZV8xIjtzOjA6IiI7czoxMToic3ViX3RpdGxlXzIiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMTUuanBnIjtzOjU6IndpZHRoIjtzOjM6IjM3MCI7czo2OiJoZWlnaHQiO3M6MzoiMzIwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjEwNDoiJmx0O2RpdiZndDtXZSBzb3VyY2UgdW5pcXVlLCBsaW1pdGVkIGVkaXRpb24gYW5kIGRlc2lnbmVyIG1hZGUgcHJvZHVjdCBmcm9tIGFyb3VuZCB0aGUgZ2xvYmUmbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MTA0OiImbHQ7ZGl2Jmd0O1dlIHNvdXJjZSB1bmlxdWUsIGxpbWl0ZWQgZWRpdGlvbiBhbmQgZGVzaWduZXIgbWFkZSBwcm9kdWN0IGZyb20gYXJvdW5kIHRoZSBnbG9iZSZsdDsvZGl2Jmd0OyI7czoxMToidGl0bGVsaW5rXzEiO3M6MTE6Ik1vcmUgZGV0YWlsIjtzOjExOiJ0aXRsZWxpbmtfMiI7czoxMToiTW9yZSBkZXRhaWwiO3M6OToibWFza19saW5rIjtzOjE6IiMiO3M6MTE6ImJhbm5lcl90eXBlIjtzOjI6InYyIjtzOjExOiJlZmZlY3RfdHlwZSI7czo5OiJlZmZlY3QtdjEiO3M6ODoicG9zaXRpb24iO3M6NjoiY2VudGVyIjt9', 37, 0),
(4650, 'content', 'interactive_banner.nuJOwQ', 'YToyMzp7czo0OiJyYW5kIjtzOjE4OiIwLjkzMzY4NTg4NDY1OTY1OTEiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIubnVKT3dRIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLm51Sk93USI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozNDoiVGhlIFNraWxsIG9mIFRoaXMgV29vZGVuIFN0cnVjdHVyZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozNDoiVGhlIFNraWxsIG9mIFRoaXMgV29vZGVuIFN0cnVjdHVyZSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MzQ6IlRoZSBTa2lsbCBvZiBUaGlzIFdvb2RlbiBTdHJ1Y3R1cmUiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTE6InN1Yl90aXRsZV8xIjtzOjA6IiI7czoxMToic3ViX3RpdGxlXzIiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMTAuanBnIjtzOjU6IndpZHRoIjtzOjM6IjM3MCI7czo2OiJoZWlnaHQiO3M6MzoiMzIwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjEwNToiJmx0O2RpdiZndDtXZSBzb3VyY2UgdW5pcXVlLCBsaW1pdGVkIGVkaXRpb24gYW5kIGRlc2lnbmVyIG1hZGUgcHJvZHVjdCBmcm9tIGFyb3VuZCB0aGUgZ2xvYmUuJmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjEwNToiJmx0O2RpdiZndDtXZSBzb3VyY2UgdW5pcXVlLCBsaW1pdGVkIGVkaXRpb24gYW5kIGRlc2lnbmVyIG1hZGUgcHJvZHVjdCBmcm9tIGFyb3VuZCB0aGUgZ2xvYmUuJmx0Oy9kaXYmZ3Q7IjtzOjExOiJ0aXRsZWxpbmtfMSI7czoxMToiTW9yZSBkZXRhaWwiO3M6MTE6InRpdGxlbGlua18yIjtzOjExOiJNb3JlIGRldGFpbCI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjEiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12MSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 37, 0),
(4647, 'content', 'image.JX16EK', 'YToxNjp7czo0OiJyYW5kIjtzOjE5OiIwLjQ5OTE4NzcwNTY0NTQ3MTU1IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuSlgxNkVLIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuSlgxNkVLIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJpbWciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MzoiaW1nIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTI6ImFkZGl0aW9uX2NscyI7czo5OiJlZmZlY3QtdjQiO3M6OToiaW1hZ2VmaWxlIjtzOjMyOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIxLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 37, 0),
(4645, 'content', 'image.eOjh0h', 'YToxNjp7czo0OiJyYW5kIjtzOjE5OiIwLjEyMzU1NzgxMDQ2NzcxMDY0IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuZU9qaDBoIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuZU9qaDBoIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJpbWciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MzoiaW1nIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTI6ImFkZGl0aW9uX2NscyI7czo5OiJlZmZlY3QtdjQiO3M6OToiaW1hZ2VmaWxlIjtzOjMzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIxNy5qcGciO3M6NDoic2l6ZSI7czo4OiIxMTcweDIwMCI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 37, 0),
(4646, 'content', 'image.HrYNgL', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjU4NzU2NTU3NDQyNjU0NjciO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5IcllOZ0wiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5IcllOZ0wiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjEzLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 37, 0),
(4649, 'content', 'interactive_banner.inGmAN', 'YToyMzp7czo0OiJyYW5kIjtzOjE4OiIwLjY0MzEyMjYzMjMwMjYyNDkiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuaW5HbUFOIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLmluR21BTiI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNDoicGFzdGVsIEJsYW5rZXQiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTQ6InBhc3RlbCBCbGFua2V0IjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNDoicGFzdGVsIEJsYW5rZXQiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTE6InN1Yl90aXRsZV8xIjtzOjA6IiI7czoxMToic3ViX3RpdGxlXzIiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMTYuanBnIjtzOjU6IndpZHRoIjtzOjQ6IjExNzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjIwMCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czoyOToiJmx0O3AmZ3Q7Jmx0O2JyJmd0OyZsdDsvcCZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6Mjk6IiZsdDtwJmd0OyZsdDticiZndDsmbHQ7L3AmZ3Q7IjtzOjExOiJ0aXRsZWxpbmtfMSI7czo4OiJTSE9QIE5PVyI7czoxMToidGl0bGVsaW5rXzIiO3M6ODoiU0hPUCBOT1ciO3M6OToibWFza19saW5rIjtzOjE6IiMiO3M6MTE6ImJhbm5lcl90eXBlIjtzOjI6InYzIjtzOjExOiJlZmZlY3RfdHlwZSI7czo5OiJlZmZlY3QtdjUiO3M6ODoicG9zaXRpb24iO3M6NjoiY2VudGVyIjt9', 37, 0),
(4648, 'content', 'interactive_banner.6JDvNd', 'YToyMzp7czo0OiJyYW5kIjtzOjE4OiIwLjIzMjA3NzQ2OTI1ODA1NzYiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuNkpEdk5kIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLjZKRHZOZCI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyMToiR2VvbWV0cmljIERlY29yYXRpb25zIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjIxOiJHZW9tZXRyaWMgRGVjb3JhdGlvbnMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjIxOiJHZW9tZXRyaWMgRGVjb3JhdGlvbnMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTE6InN1Yl90aXRsZV8xIjtzOjA6IiI7czoxMToic3ViX3RpdGxlXzIiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMTQuanBnIjtzOjU6IndpZHRoIjtzOjM6IjM3MCI7czo2OiJoZWlnaHQiO3M6MzoiMzIwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjEwNToiJmx0O2RpdiZndDtXZSBzb3VyY2UgdW5pcXVlLCBsaW1pdGVkIGVkaXRpb24gYW5kIGRlc2lnbmVyIG1hZGUgcHJvZHVjdCBmcm9tIGFyb3VuZCB0aGUgZ2xvYmUuJmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjEwNToiJmx0O2RpdiZndDtXZSBzb3VyY2UgdW5pcXVlLCBsaW1pdGVkIGVkaXRpb24gYW5kIGRlc2lnbmVyIG1hZGUgcHJvZHVjdCBmcm9tIGFyb3VuZCB0aGUgZ2xvYmUuJmx0Oy9kaXYmZ3Q7IjtzOjExOiJ0aXRsZWxpbmtfMSI7czoxMToiTW9yZSBkZXRhaWwiO3M6MTE6InRpdGxlbGlua18yIjtzOjExOiJNb3JlIGRldGFpbCI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjIiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12MSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 37, 0),
(4641, 'content', 'icon_box.7xmZqn', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjkwNjEzNTY5MTM3MjMxMDIiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC43eG1acW4iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC43eG1acW4iO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjEwOiJHdWFyYW50ZWUgIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEwOiJHdWFyYW50ZWUgIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMDoiR3VhcmFudGVlICI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12MS5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo4NjoiJmx0O2RpdiZndDtBbGwgaXRlbXMgZ3VhcmFudGVlZCBpbiBzdG9jayBpbiBzaXplcyBzaG93biwgb3IgeW91IHJlY2VpdmUgYSAmbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6ODY6IiZsdDtkaXYmZ3Q7QWxsIGl0ZW1zIGd1YXJhbnRlZWQgaW4gc3RvY2sgaW4gc2l6ZXMgc2hvd24sIG9yIHlvdSByZWNlaXZlIGEgJmx0Oy9kaXYmZ3Q7IjtzOjE0OiJpY29uX2JveF9zdHlsZSI7czoxNDoiZmVhdHVyZS1ib3gtdjEiO3M6MTA6InRleHRfYWxpZ24iO3M6MTY6ImZlYXR1cmUtYm94LWxlZnQiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 37, 0),
(4644, 'content', 'image.d4MbY6', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjMzNTg5NTYzNDQ2NDQ4NjgiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5kNE1iWTYiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5kNE1iWTYiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjEyLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 37, 0),
(4643, 'content', 'icon_box.sByv4o', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjUwMTc1NjM4ODYxODk3ODYiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5zQnl2NG8iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5zQnl2NG8iO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE0OiJDdXN0b21lciBDYXJlICI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNDoiQ3VzdG9tZXIgQ2FyZSAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE0OiJDdXN0b21lciBDYXJlICI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12My5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo5MDoiJmx0O2RpdiZndDtBIGNsZWFyYW5jZSBwcmljZSBpcyBjb25zaWRlcmVkIDQwJSBvciBtb3JlIG9mZiB0aGUgb3JpZ2luYWwgcHJpY2UuJmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjkwOiImbHQ7ZGl2Jmd0O0EgY2xlYXJhbmNlIHByaWNlIGlzIGNvbnNpZGVyZWQgNDAlIG9yIG1vcmUgb2ZmIHRoZSBvcmlnaW5hbCBwcmljZS4mbHQ7L2RpdiZndDsiO3M6MTQ6Imljb25fYm94X3N0eWxlIjtzOjE0OiJmZWF0dXJlLWJveC12MSI7czoxMDoidGV4dF9hbGlnbiI7czoxNjoiZmVhdHVyZS1ib3gtbGVmdCI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=', 37, 0),
(4559, 'content', 'product_list.8S9IXs', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjEzMzU5NzUyNzg1Njk0NjkiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuOFM5SVhzIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LjhTOUlYcyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiQmVzdCBTZWxsZXJzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJCZXN0IFNlbGxlcnMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJCZXN0IFNlbGxlcnMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MToiOCI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjgiO3M6NDoiY29scyI7czoxOiI0IjtzOjU6IndpZHRoIjtzOjM6IjYwMCI7czo2OiJoZWlnaHQiO3M6MzoiNTMzIjtzOjk6Imxpc3RfdHlwZSI7czoxMDoiYmVzdHNlbGxlciI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 42, 0),
(4560, 'content', 'product_list.HEHZ9A', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjQ5OTAwMTg4MDUwODQxOTc2IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LkhFSFo5QSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5IRUhaOUEiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTY6IlBvcHVsYXIgcHJvZHVjdHMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTY6IlBvcHVsYXIgcHJvZHVjdHMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE2OiJQb3B1bGFyIHByb2R1Y3RzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6Nzoic2lkZWJhciI7czo1OiJsaW1pdCI7czoyOiIxMiI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjYiO3M6NDoiY29scyI7czoxOiI2IjtzOjU6IndpZHRoIjtzOjI6IjgwIjtzOjY6ImhlaWdodCI7czoyOiI5NiI7czo5OiJsaXN0X3R5cGUiO3M6NzoicG9wdWxhciI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 42, 0),
(4561, 'content', 'product_list.IVhb5T', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjgwMDQzNDA3NzYxNTc0NDYiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuSVZoYjVUIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LklWaGI1VCI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo5OiJUb3BSYXRpbmciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6OToiVG9wUmF0aW5nIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czo5OiJUb3BSYXRpbmciO3M6MTI6ImFkZGl0aW9uX2NscyI7czo3OiJzaWRlYmFyIjtzOjU6ImxpbWl0IjtzOjE6IjYiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjQ6ImNvbHMiO3M6MToiMyI7czo1OiJ3aWR0aCI7czoyOiI4MCI7czo2OiJoZWlnaHQiO3M6MjoiOTYiO3M6OToibGlzdF90eXBlIjtzOjk6InRvcHJhdGluZyI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 42, 0),
(4562, 'content', 'product_list.m15Kkj', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjIyMTIwNzE4MDQ3Mzg1MDY4IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0Lm0xNUtraiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5tMTVLa2oiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTU6IlNwZWNpYWwgUHJvZHVjdCI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNToiU3BlY2lhbCBQcm9kdWN0IjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNToiU3BlY2lhbCBQcm9kdWN0IjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiI2MDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjUzMyI7czo5OiJsaXN0X3R5cGUiO3M6Nzoic3BlY2lhbCI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 42, 0),
(4551, 'content', 'image.AdBMgr', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjQ3MDQ5MTQwNTU3OTk3NDUiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5BZEJNZ3IiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5BZEJNZ3IiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjE4OiJlZmZlY3QtdjQgc3BhY2UtNjAiO3M6OToiaW1hZ2VmaWxlIjtzOjMzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIxMi5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjEiO3M6NDoibGluayI7czoxOiIjIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjI5OiImbHQ7cCZndDsmbHQ7YnImZ3Q7Jmx0Oy9wJmd0OyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czoyOToiJmx0O3AmZ3Q7Jmx0O2JyJmd0OyZsdDsvcCZndDsiO3M6ODoic2hvd19kZXMiO3M6MToiMSI7fQ==', 42, 0),
(4552, 'content', 'image.f1cWgm', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjk5MjY2MjcyNjE3NDM0MjciO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5mMWNXZ20iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5mMWNXZ20iO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjMyLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 42, 0),
(4553, 'content', 'image.IhUiUp', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjIwOTMzMDA0NTYwNTYxMjMiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5JaFVpVXAiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5JaFVpVXAiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjMxLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 42, 0),
(8091, 'content', 'product_tabs.VMIg1t', 'YToyODp7czo0OiJyYW5kIjtzOjE3OiIwLjY4NDAyOTYxMDAyOTEyNyI7czo2OiJtb2R1bGUiO3M6MTk6InByb2R1Y3RfdGFicy5WTUlnMXQiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE5OiJwcm9kdWN0X3RhYnMuVk1JZzF0IjtzOjU6Ind0eXBlIjtzOjEyOiJwcm9kdWN0X3RhYnMiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo1OiJsaW1pdCI7czoxOiI4IjtzOjY6ImNvbHVtbiI7czoxOiI0IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czoxMToiaWNvbl9uZXdlc3QiO3M6MDoiIjtzOjEzOiJlbmFibGVfbmV3ZXN0IjtzOjE6IjEiO3M6MTM6Imljb25fZmVhdHVyZWQiO3M6MDoiIjtzOjEwOiJwcm9kdWN0X2lkIjtzOjExOiI0Miw0NCw0Nyw0OCI7czoxNToiZW5hYmxlX2ZlYXR1cmVkIjtzOjE6IjEiO3M6MTU6Imljb25fYmVzdHNlbGxlciI7czowOiIiO3M6MTc6ImVuYWJsZV9iZXN0c2VsbGVyIjtzOjE6IjEiO3M6MTI6Imljb25fc3BlY2lhbCI7czowOiIiO3M6MTQ6ImVuYWJsZV9zcGVjaWFsIjtzOjE6IjEiO3M6MTQ6Imljb25fbW9zdHZpZXdzIjtzOjA6IiI7czoxNjoiZW5hYmxlX21vc3R2aWV3cyI7czoxOiIxIjtzOjk6InRhYnNzdHlsZSI7czo2OiJ0YWItdjEiO3M6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjUwMCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjU1MCI7czo5OiJhdXRvX3BsYXkiO3M6NDoiMzAwMCI7fQ==', 39, 0),
(8084, 'content', 'interactive_banner.qKkdut', 'YToyMzp7czo0OiJyYW5kIjtzOjE5OiIwLjA2NjM4MDc0NDM5NjM1MTIyIjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLnFLa2R1dCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci5xS2tkdXQiO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6NDA6IkNsYXNzaWMgeWFybnMgZm9yIGtuaXR0aW5nICZhbXA7IGNyb2NoZXQiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6NDA6IkNsYXNzaWMgeWFybnMgZm9yIGtuaXR0aW5nICZhbXA7IGNyb2NoZXQiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjQwOiJDbGFzc2ljIHlhcm5zIGZvciBrbml0dGluZyAmYW1wOyBjcm9jaGV0IjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjExOiJzdWJfdGl0bGVfMSI7czowOiIiO3M6MTE6InN1Yl90aXRsZV8yIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjExLmpwZyI7czo1OiJ3aWR0aCI7czozOiIzNzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjMyMCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czoxMTc6IiZsdDtkaXYmZ3Q7V29vbCBZYXJucyAgY2FycmllcyBhIHdpZGUgcmFuZ2Ugb2Ygd29vbCB5YXJuLiBTYXZlIHVwIHRvIDI1JSB3aXRoIG91ciB5YXJuIGFuZCBib29rIGRpc2NvdW50ISZsdDsvZGl2Jmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czoxMTc6IiZsdDtkaXYmZ3Q7V29vbCBZYXJucyAgY2FycmllcyBhIHdpZGUgcmFuZ2Ugb2Ygd29vbCB5YXJuLiBTYXZlIHVwIHRvIDI1JSB3aXRoIG91ciB5YXJuIGFuZCBib29rIGRpc2NvdW50ISZsdDsvZGl2Jmd0OyI7czoxMToidGl0bGVsaW5rXzEiO3M6MTE6Ik1vcmUgZGV0YWlsIjtzOjExOiJ0aXRsZWxpbmtfMiI7czowOiIiO3M6OToibWFza19saW5rIjtzOjE6IiMiO3M6MTE6ImJhbm5lcl90eXBlIjtzOjI6InY1IjtzOjExOiJlZmZlY3RfdHlwZSI7czo5OiJlZmZlY3QtdjEiO3M6ODoicG9zaXRpb24iO3M6NjoiY2VudGVyIjt9', 39, 0),
(8085, 'content', 'interactive_banner.W0wmB0', 'YToyMzp7czo0OiJyYW5kIjtzOjE4OiIwLjY1MDQzNjY0MjM2NzMyMzgiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuVzB3bUIwIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLlcwd21CMCI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxOToiTmF0dXJhbCBXb29sIEZpYmVycyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxOToiTmF0dXJhbCBXb29sIEZpYmVycyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTk6Ik5hdHVyYWwgV29vbCBGaWJlcnMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTE6InN1Yl90aXRsZV8xIjtzOjA6IiI7czoxMToic3ViX3RpdGxlXzIiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMTAuanBnIjtzOjU6IndpZHRoIjtzOjM6IjM3MCI7czo2OiJoZWlnaHQiO3M6MzoiMzIwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjExNzoiJmx0O2RpdiZndDtXb29sIFlhcm5zICBjYXJyaWVzIGEgd2lkZSByYW5nZSBvZiB3b29sIHlhcm4uIFNhdmUgdXAgdG8gMjUlIHdpdGggb3VyIHlhcm4gYW5kIGJvb2sgZGlzY291bnQhJmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjExNzoiJmx0O2RpdiZndDtXb29sIFlhcm5zICBjYXJyaWVzIGEgd2lkZSByYW5nZSBvZiB3b29sIHlhcm4uIFNhdmUgdXAgdG8gMjUlIHdpdGggb3VyIHlhcm4gYW5kIGJvb2sgZGlzY291bnQhJmx0Oy9kaXYmZ3Q7IjtzOjExOiJ0aXRsZWxpbmtfMSI7czoxMToiTW9yZSBkZXRhaWwiO3M6MTE6InRpdGxlbGlua18yIjtzOjA6IiI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjQiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12MSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 39, 0),
(8086, 'content', 'manufacture.J61fgV', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjI1MTg3MDU0NTM5MjI5OTYiO3M6NjoibW9kdWxlIjtzOjE4OiJtYW51ZmFjdHVyZS5KNjFmZ1YiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE4OiJtYW51ZmFjdHVyZS5KNjFmZ1YiO3M6NToid3R5cGUiO3M6MTE6Im1hbnVmYWN0dXJlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NjoidGFyZ2V0IjtzOjE6IjgiO3M6NToibGltaXQiO3M6MjoiMTIiO3M6NzoiY29sdW1ucyI7czoxOiI2IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNiI7czo1OiJ3aWR0aCI7czozOiIxODAiO3M6NjoiaGVpZ2h0IjtzOjI6IjgwIjt9', 39, 0),
(8087, 'content', 'product_deal.NiAxww', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjg1OTQxMjg5NTM3MDk2NTMiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2RlYWwuTmlBeHd3IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9kZWFsLk5pQXh3dyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9kZWFsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo5OiJPdXIgRGVhbHMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6OToiT3VyIERlYWxzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czo5OiJPdXIgRGVhbHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTA6InN0YXJ0X2RhdGUiO3M6MTA6IjIwMTAtMDItMDkiO3M6ODoiZW5kX2RhdGUiO3M6MTA6IjIwMTktMTAtMjQiO3M6NToibGltaXQiO3M6MToiOCI7czo0OiJjb2xzIjtzOjE6IjQiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjk6ImltZ193aWR0aCI7czozOiI2MDAiO3M6MTA6ImltZ19oZWlnaHQiO3M6MzoiNTMzIjtzOjEyOiJjYXRlZ29yeV9pZHMiO2E6MTk6e2k6MDtzOjI6IjM1IjtpOjE7czoyOiIzNiI7aToyO3M6MjoiMzgiO2k6MztzOjI6IjQ1IjtpOjQ7czoyOiI0NiI7aTo1O3M6MjoiMjAiO2k6NjtzOjI6IjI2IjtpOjc7czoyOiIyOCI7aTo4O3M6MjoiMjkiO2k6OTtzOjI6IjMwIjtpOjEwO3M6MjoiMzEiO2k6MTE7czoyOiIzMiI7aToxMjtzOjI6IjE4IjtpOjEzO3M6MjoiMjciO2k6MTQ7czoyOiIyNSI7aToxNTtzOjI6IjU3IjtpOjE2O3M6MjoiMTciO2k6MTc7czoyOiIyNCI7aToxODtzOjI6IjMzIjt9fQ==', 39, 0),
(8088, 'content', 'product_deal.pZRfzs', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjcwMjM2NjU3OTUyMzcxNjYiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2RlYWwucFpSZnpzIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9kZWFsLnBaUmZ6cyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9kZWFsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMToiVG9kYXkgZGVhbHMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTM6IlRvZGF5J3MgZGVhbHMiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEzOiJUb2RheSdzIGRlYWxzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjEwOiJzdGFydF9kYXRlIjtzOjEwOiIyMDE0LTAzLTA5IjtzOjg6ImVuZF9kYXRlIjtzOjEwOiIyMDIwLTAzLTA3IjtzOjU6ImxpbWl0IjtzOjE6IjIiO3M6NDoiY29scyI7czoxOiIxIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiMSI7czo5OiJpbWdfd2lkdGgiO3M6MzoiNTAwIjtzOjEwOiJpbWdfaGVpZ2h0IjtzOjM6IjU1MCI7czoxMjoiY2F0ZWdvcnlfaWRzIjthOjE2OntpOjA7czoyOiI0NiI7aToxO3M6MjoiNjIiO2k6MjtzOjI6IjIwIjtpOjM7czoyOiIyNiI7aTo0O3M6MjoiMjgiO2k6NTtzOjI6IjI5IjtpOjY7czoyOiIzMCI7aTo3O3M6MjoiMzEiO2k6ODtzOjI6IjMyIjtpOjk7czoyOiIxOCI7aToxMDtzOjI6IjI1IjtpOjExO3M6MjoiNTciO2k6MTI7czoyOiIxNyI7aToxMztzOjI6IjI0IjtpOjE0O3M6MjoiMzMiO2k6MTU7czoyOiIzNCI7fX0=', 39, 0),
(8089, 'content', 'product_list.7yO8EP', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjMwMzk5MTI1NjIzNTQ4OTYiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuN3lPOEVQIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0Ljd5TzhFUCI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo4OiJUb3AgcmF0ZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czo4OiJUb3AgcmF0ZSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6ODoiVG9wIHJhdGUiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo3OiJzaWRlYmFyIjtzOjU6ImxpbWl0IjtzOjE6IjMiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czozOiI1MDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjU1MCI7czo5OiJsaXN0X3R5cGUiO3M6OToidG9wcmF0aW5nIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 39, 0),
(8090, 'content', 'product_list.yc1Zfn', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjU1Mzg5MjkxMzEzMTY5NTYiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QueWMxWmZuIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LnljMVpmbiI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNjoiRmVhdHVyZSBwcm9kdWN0cyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNjoiRmVhdHVyZSBwcm9kdWN0cyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTY6IkZlYXR1cmUgcHJvZHVjdHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MToiOCI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjgiO3M6NDoiY29scyI7czoxOiI0IjtzOjU6IndpZHRoIjtzOjM6IjYwMCI7czo2OiJoZWlnaHQiO3M6MzoiNTMzIjtzOjk6Imxpc3RfdHlwZSI7czo3OiJwb3B1bGFyIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 39, 0),
(4556, 'content', 'image.Rzntb0', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjYwOTcyOTc5MDEwNzU5NDkiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5Sem50YjAiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5Sem50YjAiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEwOiJlZmZlY3QtdjEwIjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMzQuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 42, 0),
(4554, 'content', 'image.lLZE1u', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjQyNzY5ODY5Mzc4NjYwMjEiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5sTFpFMXUiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5sTFpFMXUiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjI4LmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 42, 0),
(4555, 'content', 'image.mGFxD7', 'YToxNjp7czo0OiJyYW5kIjtzOjE5OiIwLjA1MjYzODAxNjc2ODIwNDc5IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UubUdGeEQ3IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UubUdGeEQ3IjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJpbWciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MzoiaW1nIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTI6ImFkZGl0aW9uX2NscyI7czo5OiJlZmZlY3QtdjQiO3M6OToiaW1hZ2VmaWxlIjtzOjMzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIyOS5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjEiO3M6NDoibGluayI7czoxOiIjIjt9', 42, 0),
(4537, 'content', 'product_list.q0Co3B', 'YToxNzp7czo0OiJyYW5kIjtzOjE2OiIwLjI2NjA2MTYzNzM4MjUxIjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LnEwQ28zQiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5xMENvM0IiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTI6IkJlc3QgU2VsbGVycyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMjoiQmVzdCBTZWxsZXJzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMjoiQmVzdCBTZWxsZXJzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI4IjtzOjQ6ImNvbHMiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiI2MDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjUzMyI7czo5OiJsaXN0X3R5cGUiO3M6MTA6ImJlc3RzZWxsZXIiO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7fQ==', 41, 0),
(4538, 'content', 'product_list.SlnCxg', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjU5MzYzMTc5NDg3NDEwOTQiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuU2xuQ3hnIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LlNsbkN4ZyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNjoiUG9wdWxhciBQcm9kdWN0cyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNjoiUG9wdWxhciBQcm9kdWN0cyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTY6IlBvcHVsYXIgUHJvZHVjdHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MToiOCI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjQiO3M6NDoiY29scyI7czoxOiI0IjtzOjU6IndpZHRoIjtzOjM6IjYwMCI7czo2OiJoZWlnaHQiO3M6MzoiNTMzIjtzOjk6Imxpc3RfdHlwZSI7czo3OiJwb3B1bGFyIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 41, 0),
(4564, 'content', 'product_list_home3.uiwhtC', 'YToyMTp7czo0OiJyYW5kIjtzOjE4OiIwLjgyOTY2MzkyNjQ1MDE4MDYiO3M6NjoibW9kdWxlIjtzOjI1OiJwcm9kdWN0X2xpc3RfaG9tZTMudWl3aHRDIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToicHJvZHVjdF9saXN0X2hvbWUzLnVpd2h0QyI7czo1OiJ3dHlwZSI7czoxODoicHJvZHVjdF9saXN0X2hvbWUzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMToiQmVzdCBTZWxsZXIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTE6IkJlc3QgU2VsbGVyIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMToiQmVzdCBTZWxsZXIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MToiOSI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjMiO3M6NDoiY29scyI7czoxOiIzIjtzOjU6IndpZHRoIjtzOjM6IjUwMCI7czo2OiJoZWlnaHQiO3M6MzoiNjAwIjtzOjk6Imxpc3RfdHlwZSI7czoxMDoiYmVzdHNlbGxlciI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjtzOjg6InBvc190eXBlIjtzOjE6IjAiO3M6MTA6ImJhbm5lcl9pbWciO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjE0LmpwZyI7czo3OiJiX3dpZHRoIjtzOjM6IjMyMCI7czo4OiJiX2hlaWdodCI7czozOiIzMjUiO30=', 42, 0),
(4558, 'content', 'product_deal.sqQXa1', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjgzMjU0NTAyNDM3NjM4MzkiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2RlYWwuc3FRWGExIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9kZWFsLnNxUVhhMSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9kZWFsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMToiVG9kYXkgRGVhbHMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTE6IlRvZGF5IERlYWxzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMToiVG9kYXkgRGVhbHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyNDoicHJvZHVjdGRlYWxzLXYxIHNwYWNlLTYwIjtzOjEwOiJzdGFydF9kYXRlIjtzOjEwOiIyMDA5LTAyLTAyIjtzOjg6ImVuZF9kYXRlIjtzOjEwOiIyMDE3LTA2LTA2IjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6NDoiY29scyI7czoxOiI0IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo5OiJpbWdfd2lkdGgiO3M6MzoiNTAwIjtzOjEwOiJpbWdfaGVpZ2h0IjtzOjM6IjYwMCI7czoxMjoiY2F0ZWdvcnlfaWRzIjthOjM3OntpOjA7czoyOiIzNSI7aToxO3M6MjoiMzYiO2k6MjtzOjI6IjM3IjtpOjM7czoyOiIzOCI7aTo0O3M6MjoiMzkiO2k6NTtzOjI6IjQwIjtpOjY7czoyOiI0MSI7aTo3O3M6MjoiNDIiO2k6ODtzOjI6IjQzIjtpOjk7czoyOiI0NCI7aToxMDtzOjI6IjQ1IjtpOjExO3M6MjoiNDYiO2k6MTI7czoyOiI0NyI7aToxMztzOjI6IjQ4IjtpOjE0O3M6MjoiNDkiO2k6MTU7czoyOiI1MCI7aToxNjtzOjI6IjUxIjtpOjE3O3M6MjoiNTIiO2k6MTg7czoyOiI1MyI7aToxOTtzOjI6IjU0IjtpOjIwO3M6MjoiNTUiO2k6MjE7czoyOiI1NiI7aToyMjtzOjI6IjU4IjtpOjIzO3M6MjoiMjAiO2k6MjQ7czoyOiIyNiI7aToyNTtzOjI6IjI4IjtpOjI2O3M6MjoiMjkiO2k6Mjc7czoyOiIzMCI7aToyODtzOjI6IjMxIjtpOjI5O3M6MjoiMzIiO2k6MzA7czoyOiIxOCI7aTozMTtzOjI6IjI3IjtpOjMyO3M6MjoiMjUiO2k6MzM7czoyOiI1NyI7aTozNDtzOjI6IjE3IjtpOjM1O3M6MjoiMjQiO2k6MzY7czoyOiIzMyI7fX0=', 42, 0),
(4557, 'content', 'image.ZssEUM', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjc4MTI0OTg4NDA0OTkyNDMiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5ac3NFVU0iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5ac3NFVU0iO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjMwLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 42, 0),
(4533, 'content', 'image.i6xgcC', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjYwNTM2NDQ1NzY1NjIxNzkiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5pNnhnY0MiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5pNnhnY0MiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjI2LmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 41, 0),
(4534, 'content', 'image.laA8AJ', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjA3MTUzMzYzMTY1OTQ0MDYiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5sYUE4QUoiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5sYUE4QUoiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjIzLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 41, 0),
(4535, 'content', 'image.PD9WQh', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjg2NjEyNDUwMzgzOTUwOTIiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5QRDlXUWgiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5QRDlXUWgiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEwOiJlZmZlY3QtdjEwIjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMjcuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 41, 0),
(4536, 'content', 'image.W90h2u', 'YToxNjp7czo0OiJyYW5kIjtzOjIwOiIwLjAxMzQzNTE3OTc1OTY1NjI0NiI7czo2OiJtb2R1bGUiO3M6MTI6ImltYWdlLlc5MGgydSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTI6ImltYWdlLlc5MGgydSI7czo1OiJ3dHlwZSI7czo1OiJpbWFnZSI7czoxMToid2lkZ2V0X25hbWUiO3M6MzoiaW1nIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjM6ImltZyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MzoiaW1nIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6OToiZWZmZWN0LXY0IjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMjAuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 41, 0);
INSERT INTO `oc_pavwidget` (`pavwidget_id`, `name`, `code`, `setting`, `module_id`, `key`) VALUES
(4530, 'content', 'image.2zKx2a', 'YToxNjp7czo0OiJyYW5kIjtzOjE3OiIwLjgyODc3OTY4ODYwODk3NSI7czo2OiJtb2R1bGUiO3M6MTI6ImltYWdlLjJ6S3gyYSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTI6ImltYWdlLjJ6S3gyYSI7czo1OiJ3dHlwZSI7czo1OiJpbWFnZSI7czoxMToid2lkZ2V0X25hbWUiO3M6MzoiaW1nIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjM6ImltZyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MzoiaW1nIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6OToiZWZmZWN0LXY0IjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMjIuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 41, 0),
(4531, 'content', 'image.E1M8lP', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjUxNDMwMjM3NTA3Mzg1OTEiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5FMU04bFAiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5FMU04bFAiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjI0LmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 41, 0),
(4529, 'content', 'html.WR6CLr', 'YToxMjp7czo0OiJyYW5kIjtzOjE4OiIwLjMwODM0NTQ4NTk5MDY3NzEiO3M6NjoibW9kdWxlIjtzOjExOiJodG1sLldSNkNMciI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTE6Imh0bWwuV1I2Q0xyIjtzOjU6Ind0eXBlIjtzOjQ6Imh0bWwiO3M6MTE6IndpZGdldF9uYW1lIjtzOjI0OiJUZWFwb3QgLSBBa2loaXJvIE5pa2FpZG8iO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MjQ6IlRlYXBvdCAtIEFraWhpcm8gTmlrYWlkbyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MjQ6IlRlYXBvdCAtIEFraWhpcm8gTmlrYWlkbyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czoxOTA6IiZsdDtkaXYmZ3Q7QSBiZWF1dGlmdWwgdGVhcG90IGhhbmRtYWRlIGJ5IEFraWhpcm8gTmlrYWlkbyBhdCBoaXMgc3R1ZGlvIGluIE1hc2hpa28sIEphcGFuLiBBcyBwYXJ0IG9mIGhpcyAnTWlzdCcgY29sbGVjdGlvbiB0aGlzIHRlYXBvdCBmZWF0dXJlcyBhIHVuaXF1ZSBnbGF6ZSB0aGF0J3MgcXVpdGUgd2lzcHkmbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MTkwOiImbHQ7ZGl2Jmd0O0EgYmVhdXRpZnVsIHRlYXBvdCBoYW5kbWFkZSBieSBBa2loaXJvIE5pa2FpZG8gYXQgaGlzIHN0dWRpbyBpbiBNYXNoaWtvLCBKYXBhbi4gQXMgcGFydCBvZiBoaXMgJ01pc3QnIGNvbGxlY3Rpb24gdGhpcyB0ZWFwb3QgZmVhdHVyZXMgYSB1bmlxdWUgZ2xhemUgdGhhdCdzIHF1aXRlIHdpc3B5Jmx0Oy9kaXYmZ3Q7Ijt9', 41, 0),
(4528, 'content', 'html.PKfliD', 'YToxMjp7czo0OiJyYW5kIjtzOjE4OiIwLjc2ODcxNTEyMjAxNDk0NzYiO3M6NjoibW9kdWxlIjtzOjExOiJodG1sLlBLZmxpRCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTE6Imh0bWwuUEtmbGlEIjtzOjU6Ind0eXBlIjtzOjQ6Imh0bWwiO3M6MTE6IndpZGdldF9uYW1lIjtzOjk6IkhhbmQgTWFkZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czo5OiJIYW5kIE1hZGUiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjk6IkhhbmQgTWFkZSI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czoxNjI6IiZsdDtwJmd0O0EgY2VyYW1pYyBpcyBhbiBpbm9yZ2FuaWMsIG5vbm1ldGFsbGljIHNvbGlkIG1hdGVyaWFsIGNvbXByaXNpbmcgbWV0YWwsIG5vbm1ldGFsIG9yIG1ldGFsbG9pZCBhdG9tcyBwcmltYXJpbHkgaGVsZCBpbiBpb25pYyBhbmQgY292YWxlbnQgYm9uZHMuJmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czoxNjI6IiZsdDtwJmd0O0EgY2VyYW1pYyBpcyBhbiBpbm9yZ2FuaWMsIG5vbm1ldGFsbGljIHNvbGlkIG1hdGVyaWFsIGNvbXByaXNpbmcgbWV0YWwsIG5vbm1ldGFsIG9yIG1ldGFsbG9pZCBhdG9tcyBwcmltYXJpbHkgaGVsZCBpbiBpb25pYyBhbmQgY292YWxlbnQgYm9uZHMuJmx0Oy9wJmd0OyI7fQ==', 41, 0),
(4532, 'content', 'image.hYey2N', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjM5NjY4MjE0MDAwMDY1MTQiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5oWWV5Mk4iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5oWWV5Mk4iO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjIxLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 41, 0),
(4543, 'content', 'icon_box.0TXe2c', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjkyMzUyMjMzODA5MDM5NzIiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC4wVFhlMmMiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC4wVFhlMmMiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE2OiIyNC83IEhlbHAgQ2VudGVyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE2OiIyNC83IEhlbHAgQ2VudGVyIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNjoiMjQvNyBIZWxwIENlbnRlciI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12My5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo3OToiJmx0O3AmZ3Q7Um91bmQtdGhlLWNsb2NrIGFzc2lzdGFuY2UgZm9yIGEgc21vb3RoIHNob3BwaW5nIGV4cGVyaWVuY2UuJmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo3OToiJmx0O3AmZ3Q7Um91bmQtdGhlLWNsb2NrIGFzc2lzdGFuY2UgZm9yIGEgc21vb3RoIHNob3BwaW5nIGV4cGVyaWVuY2UuJmx0Oy9wJmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYxIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 42, 0),
(4544, 'content', 'icon_box.Axkdek', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjE5Nzg5MDYyMzEzNDcyOTk0IjtzOjY6Im1vZHVsZSI7czoxNToiaWNvbl9ib3guQXhrZGVrIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNToiaWNvbl9ib3guQXhrZGVrIjtzOjU6Ind0eXBlIjtzOjg6Imljb25fYm94IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyNDoiS25pdHRpbmcgV29vbCAmYW1wOyBZYXJuIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjI0OiJLbml0dGluZyBXb29sICZhbXA7IFlhcm4iO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjI0OiJLbml0dGluZyBXb29sICZhbXA7IFlhcm4iO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxODoic3BhY2UtbWFyZ2luLWwtNDAgIjtzOjg6Imljb25maWxlIjtzOjMyOiJjYXRhbG9nL2RlbW8vbW9kdWxlL21pY29uLXYxLnBuZyI7czo5OiJpY29uY2xhc3MiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjkwOiImbHQ7ZGl2Jmd0O0NsYXNzaWMgeWFybnMgZm9yIGtuaXR0aW5nICZhbXA7IGNyb2NoZXQgaW4gYSBzZWxlY3Rpb24gb2YgbmF0dXJhbCAmbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6OTA6IiZsdDtkaXYmZ3Q7Q2xhc3NpYyB5YXJucyBmb3Iga25pdHRpbmcgJmFtcDsgY3JvY2hldCBpbiBhIHNlbGVjdGlvbiBvZiBuYXR1cmFsICZsdDsvZGl2Jmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYyIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 42, 0),
(4545, 'content', 'icon_box.dWKtaH', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjYyNzYzMzQ5NDQ1NzYzODciO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5kV0t0YUgiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5kV0t0YUgiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjEyOiJWLkkuUCBtZW1iZXIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6IlYuSS5QIG1lbWJlciI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTI6IlYuSS5QIG1lbWJlciI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12NC5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo3MjoiJmx0O3AmZ3Q7U2ltcGx5IGFkZCB0aGUgaXRlbSB0byB5b3VyIHNob3BwaW5nIGJhZyBhbmQgcHJvY2VlZC4mbHQ7L3AmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjcyOiImbHQ7cCZndDtTaW1wbHkgYWRkIHRoZSBpdGVtIHRvIHlvdXIgc2hvcHBpbmcgYmFnIGFuZCBwcm9jZWVkLiZsdDsvcCZndDsiO3M6MTQ6Imljb25fYm94X3N0eWxlIjtzOjE0OiJmZWF0dXJlLWJveC12MSI7czoxMDoidGV4dF9hbGlnbiI7czoxNjoiZmVhdHVyZS1ib3gtbGVmdCI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=', 42, 0),
(4546, 'content', 'icon_box.E0GR2C', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjU3NDgzMjE3OTI4ODQwMDEiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5FMEdSMkMiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5FMEdSMkMiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE0OiJQZXJmZWN0IENob2ljZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNDoiUGVyZmVjdCBDaG9pY2UiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE0OiJQZXJmZWN0IENob2ljZSI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjE4OiJzcGFjZS1tYXJnaW4tci00MCAiO3M6ODoiaWNvbmZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9tb2R1bGUvbWljb24tdjMucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6ODM6IiZsdDtkaXYmZ3Q7QmxhY2sgU2hlZXAgV29vbHMgYXJlIG9uZSBvZiB0aGUgVUsncyB0b3AgcmV0YWlsZXJzIG9mIHlhcm4uJmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjgzOiImbHQ7ZGl2Jmd0O0JsYWNrIFNoZWVwIFdvb2xzIGFyZSBvbmUgb2YgdGhlIFVLJ3MgdG9wIHJldGFpbGVycyBvZiB5YXJuLiZsdDsvZGl2Jmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYyIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 42, 0),
(4547, 'content', 'icon_box.mWVY76', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjQ0NjMzNzc5MDE1NzUxODMiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5tV1ZZNzYiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5tV1ZZNzYiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE0OiIxMDAlIFdvb2wgWWFybiI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNDoiMTAwJSBXb29sIFlhcm4iO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE0OiIxMDAlIFdvb2wgWWFybiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12Mi5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo4MjoiJmx0O2RpdiZndDtXb29sIGlzIGFuIHVucGFyYWxsZWxlZCBjaG9pY2UgZm9yIGtuaXR0ZXJzIGFuZCBjcm9jaGV0ZXJzLiZsdDsvZGl2Jmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo4MjoiJmx0O2RpdiZndDtXb29sIGlzIGFuIHVucGFyYWxsZWxlZCBjaG9pY2UgZm9yIGtuaXR0ZXJzIGFuZCBjcm9jaGV0ZXJzLiZsdDsvZGl2Jmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYyIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 42, 0),
(4548, 'content', 'icon_box.TptTDz', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjIzMTY4ODM5MDc3ODQ3NzM2IjtzOjY6Im1vZHVsZSI7czoxNToiaWNvbl9ib3guVHB0VER6IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNToiaWNvbl9ib3guVHB0VER6IjtzOjU6Ind0eXBlIjtzOjg6Imljb25fYm94IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxODoiV29ybGR3aWRlIERlbGl2ZXJ5IjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE4OiJXb3JsZHdpZGUgRGVsaXZlcnkiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE4OiJXb3JsZHdpZGUgRGVsaXZlcnkiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6ODoiaWNvbmZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9tb2R1bGUvbWljb24tdjIucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6OTA6IiZsdDtwJmd0O1dpdGggc2l0ZXMgaW4gNSBsYW5ndWFnZXMsIHdlIHNoaXAgdG8gb3ZlciAyMDAgY291bnRyaWVzICZhbXA7IHJlZ2lvbnMuJmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo5MDoiJmx0O3AmZ3Q7V2l0aCBzaXRlcyBpbiA1IGxhbmd1YWdlcywgd2Ugc2hpcCB0byBvdmVyIDIwMCBjb3VudHJpZXMgJmFtcDsgcmVnaW9ucy4mbHQ7L3AmZ3Q7IjtzOjE0OiJpY29uX2JveF9zdHlsZSI7czoxNDoiZmVhdHVyZS1ib3gtdjEiO3M6MTA6InRleHRfYWxpZ24iO3M6MTY6ImZlYXR1cmUtYm94LWxlZnQiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 42, 0),
(4549, 'content', 'image.0QqtqB', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjc2NzE1MTQ1NDU1MzAwMTciO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS4wUXF0cUIiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS4wUXF0cUIiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjMzLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 42, 0),
(4550, 'content', 'image.6rFvAA', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjU2MzcwMDA5MzAzNTc5MjkiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS42ckZ2QUEiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS42ckZ2QUEiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjI1LmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 42, 0),
(4541, 'content', 'html.6R0d7U', 'YToxMjp7czo0OiJyYW5kIjtzOjE4OiIwLjQ4NTM5MTE3OTU4NTk0NTgiO3M6NjoibW9kdWxlIjtzOjExOiJodG1sLjZSMGQ3VSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTE6Imh0bWwuNlIwZDdVIjtzOjU6Ind0eXBlIjtzOjQ6Imh0bWwiO3M6MTE6IndpZGdldF9uYW1lIjtzOjIzOiJXaW50ZXIgSGF0IFNjYXJmIENvdXBsZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoyMzoiV2ludGVyIEhhdCBTY2FyZiBDb3VwbGUiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjIzOiJXaW50ZXIgSGF0IFNjYXJmIENvdXBsZSI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czoxOTc6IiZsdDtkaXYmZ3Q7V2hhdCB0byBkbyB3aXRoIGFsbCB0aGUgc2NhcnZlcyB5b3UgaGF2ZSB0dW1ibGVkIHRvZ2V0aGVyIGluIGEgZHJhd2VyIG9yIGJhc2tldCxJZiB5b3UgYXJlIG9uZSBvZiB0aG9zZSB3aG8gY2FuIG5vdCAgYmUgYXNrZWQsIHRvIG5lYXRseSBmb2xkIGV2ZXJ5IGl0ZW0gYW5kIHNlY3VyZSB0aGVtIGZyb20gJmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjE5NzoiJmx0O2RpdiZndDtXaGF0IHRvIGRvIHdpdGggYWxsIHRoZSBzY2FydmVzIHlvdSBoYXZlIHR1bWJsZWQgdG9nZXRoZXIgaW4gYSBkcmF3ZXIgb3IgYmFza2V0LElmIHlvdSBhcmUgb25lIG9mIHRob3NlIHdobyBjYW4gbm90ICBiZSBhc2tlZCwgdG8gbmVhdGx5IGZvbGQgZXZlcnkgaXRlbSBhbmQgc2VjdXJlIHRoZW0gZnJvbSAmbHQ7L2RpdiZndDsiO30=', 42, 0),
(4542, 'content', 'icon_box.0ApLAK', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjk1MzA5MTczNDY4MTQyODYiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC4wQXBMQUsiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC4wQXBMQUsiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjEyOiJTYWZlIFBheW1lbnQiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6IlNhZmUgUGF5bWVudCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTI6IlNhZmUgUGF5bWVudCI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjU6ImZpcnN0IjtzOjg6Imljb25maWxlIjtzOjMyOiJjYXRhbG9nL2RlbW8vbW9kdWxlL21pY29uLXYxLnBuZyI7czo5OiJpY29uY2xhc3MiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjc5OiImbHQ7cCZndDtQYXkgd2l0aCB0aGUgd29ybGRzIG1vc3QgcG9wdWxhciBhbmQgc2VjdXJlIHBheW1lbnQgbWV0aG9kcy4mbHQ7L3AmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjc5OiImbHQ7cCZndDtQYXkgd2l0aCB0aGUgd29ybGRzIG1vc3QgcG9wdWxhciBhbmQgc2VjdXJlIHBheW1lbnQgbWV0aG9kcy4mbHQ7L3AmZ3Q7IjtzOjE0OiJpY29uX2JveF9zdHlsZSI7czoxNDoiZmVhdHVyZS1ib3gtdjEiO3M6MTA6InRleHRfYWxpZ24iO3M6MTY6ImZlYXR1cmUtYm94LWxlZnQiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 42, 0),
(4539, 'content', 'bloglatest.k5LmEn', 'YToxNDp7czo0OiJyYW5kIjtzOjE3OiIwLjczNzE2MTg5NzAwNDMyNSI7czo2OiJtb2R1bGUiO3M6MTc6ImJsb2dsYXRlc3QuazVMbUVuIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNzoiYmxvZ2xhdGVzdC5rNUxtRW4iO3M6NToid3R5cGUiO3M6MTA6ImJsb2dsYXRlc3QiO3M6MTE6IndpZGdldF9uYW1lIjtzOjExOiJMYXRlc3QgYmxvZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMToiTGF0ZXN0IGJsb2ciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjExOiJMYXRlc3QgYmxvZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEzOiJub25lLXJlYWRtb3JlIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiMyI7czo1OiJ3aWR0aCI7czozOiIyMDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjEzNSI7czo0OiJjb2xzIjtzOjE6IjMiO30=', 42, 0),
(4540, 'content', 'featured_category.OSYS7K', 'YToxNDp7czo0OiJyYW5kIjtzOjE4OiIwLjg0ODgwNjgxMDgxMjE3NzEiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5PU1lTN0siO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5PU1lTN0siO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMzoiY29sbGVjdGlvbiAwMSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMzoiY29sbGVjdGlvbiAwMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTM6ImNvbGxlY3Rpb24gMDEiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTk6ImNhdGVnb3JpZXNfZmVhdHVyZWQiO2E6Mzp7aTowO2E6Mjp7czo1OiJpbWFnZSI7czozMjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyNC5qcGciO3M6MjoiaWQiO3M6MjoiMjUiO31pOjE7YToyOntzOjU6ImltYWdlIjtzOjMyOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIzLmpwZyI7czoyOiJpZCI7czoyOiIzNCI7fWk6MjthOjI6e3M6NToiaW1hZ2UiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjYuanBnIjtzOjI6ImlkIjtzOjI6IjM0Ijt9fXM6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjMyMCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjE2MCI7czo0OiJjb2xzIjtzOjE6IjMiO30=', 42, 0),
(4653, 'content', 'product_list.HGlsc2', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjMxMzMzNTM5OTA4MDQ2MzE1IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LkhHbHNjMiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5IR2xzYzIiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTE6IkJlc3QgU2VsbGVyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjExOiJCZXN0IFNlbGxlciI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTE6IkJlc3QgU2VsbGVyIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTI6InBhbmVsLWNlbnRlciI7czo1OiJsaW1pdCI7czoxOiI4IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo0OiJjb2xzIjtzOjE6IjQiO3M6NToid2lkdGgiO3M6MzoiNjAwIjtzOjY6ImhlaWdodCI7czozOiI1MzMiO3M6OToibGlzdF90eXBlIjtzOjEwOiJiZXN0c2VsbGVyIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 37, 0),
(4642, 'content', 'icon_box.BehSiR', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjM1NDc0MzA2NzM3MTI4MzI1IjtzOjY6Im1vZHVsZSI7czoxNToiaWNvbl9ib3guQmVoU2lSIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNToiaWNvbl9ib3guQmVoU2lSIjtzOjU6Ind0eXBlIjtzOjg6Imljb25fYm94IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyMzoiU2hpcHBpbmcgJmFtcDsgUmV0dXJucyAiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MjM6IlNoaXBwaW5nICZhbXA7IFJldHVybnMgIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoyMzoiU2hpcHBpbmcgJmFtcDsgUmV0dXJucyAiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6ODoiaWNvbmZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9tb2R1bGUvbWljb24tdjIucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6ODg6IiZsdDtkaXYmZ3Q7RnJlZSByZXR1cm4gc2hpcHBpbmcgd2l0aCBwcmVwYWlkIG1haWxlciBmb3IgYWxsIGRvbWVzdGljIG9yZGVycy4mbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6ODg6IiZsdDtkaXYmZ3Q7RnJlZSByZXR1cm4gc2hpcHBpbmcgd2l0aCBwcmVwYWlkIG1haWxlciBmb3IgYWxsIGRvbWVzdGljIG9yZGVycy4mbHQ7L2RpdiZndDsiO3M6MTQ6Imljb25fYm94X3N0eWxlIjtzOjE0OiJmZWF0dXJlLWJveC12MSI7czoxMDoidGV4dF9hbGlnbiI7czoxNjoiZmVhdHVyZS1ib3gtbGVmdCI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=', 37, 0),
(16133, 'content', 'product_tablist_bn2.8i8ZoQ', 'YToyMTp7czo0OiJyYW5kIjtzOjIxOiIwLjAwMTQ3NjA4NTI2MjMyODM0MTYiO3M6NjoibW9kdWxlIjtzOjI2OiJwcm9kdWN0X3RhYmxpc3RfYm4yLjhpOFpvUSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjY6InByb2R1Y3RfdGFibGlzdF9ibjIuOGk4Wm9RIjtzOjU6Ind0eXBlIjtzOjE5OiJwcm9kdWN0X3RhYmxpc3RfYm4yIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiT3VyIFByb2R1Y3RzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJPdXIgUHJvZHVjdHMiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJPdXIgUHJvZHVjdHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGlua3MiO2E6NTp7aTowO3M6MjoiMjAiO2k6MTtzOjI6IjE4IjtpOjI7czoyOiIyNSI7aTozO3M6MjoiNTciO2k6NDtzOjI6IjE3Ijt9czo1OiJsaW1pdCI7czoyOiIxMiI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjYiO3M6NDoiY29scyI7czoxOiIzIjtzOjExOiJpbWFnZV93aWR0aCI7czozOiI1MDAiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiI1MDAiO3M6MTA6ImJhbm5lcl9pbWciO3M6Mjg6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuNS5qcGciO3M6NzoiYl93aWR0aCI7czozOiIyMDAiO3M6ODoiYl9oZWlnaHQiO3M6MzoiMjAwIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=', 65, 0),
(16132, 'content', 'product_list_banner.yrpNNd', 'YToyMzp7czo0OiJyYW5kIjtzOjE4OiIwLjgwNzQ5NTc4ODk0OTE2OTQiO3M6NjoibW9kdWxlIjtzOjI2OiJwcm9kdWN0X2xpc3RfYmFubmVyLnlycE5OZCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjY6InByb2R1Y3RfbGlzdF9iYW5uZXIueXJwTk5kIjtzOjU6Ind0eXBlIjtzOjE5OiJwcm9kdWN0X2xpc3RfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNjoiRkVBVFVSRUQgUFJPRFVDVCI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNjoiRkVBVFVSRUQgUFJPRFVDVCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTY6IkZFQVRVUkVEIFBST0RVQ1QiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToic3ViX3RpdGxlIjtzOjQzOiJCcm93c2UgcXVhIHRoZSBmb2xsb3dpbmcgcHJvZHVjdCBuZXcgdGhlIHdlIjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6MTA6ImJhbm5lcl9pbWciO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuLWxlZnQyLmpwZyI7czo3OiJiX3dpZHRoIjtzOjM6IjYzNSI7czo4OiJiX2hlaWdodCI7czozOiI2OTciO3M6NDoibGluayI7czoxOiIjIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo0OiJjb2xzIjtzOjE6IjQiO3M6NToid2lkdGgiO3M6MzoiNDgwIjtzOjY6ImhlaWdodCI7czozOiI2MTciO3M6OToibGlzdF90eXBlIjtzOjg6ImZlYXR1cmVkIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO3M6NzoicHJvZHVjdCI7YTo0OntpOjA7czoyOiIyOCI7aToxO3M6MjoiMzMiO2k6MjtzOjI6IjI5IjtpOjM7czoyOiIzMCI7fX0=', 65, 0),
(16129, 'content', 'product_list.7mwGTW', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjM2MzE1NjMxOTEwNDE1NjEzIjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0Ljdtd0dUVyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC43bXdHVFciO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6NzoiT24gU2FsZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czo3OiJPbiBTYWxlIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czo3OiJPbiBTYWxlIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTk6InByb2R1Y3QtdjEgcGFuZWwtdjEiO3M6NToibGltaXQiO3M6MjoiMTIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI2IjtzOjQ6ImNvbHMiO3M6MToiMyI7czo1OiJ3aWR0aCI7czozOiIxMDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjEwMCI7czo5OiJsaXN0X3R5cGUiO3M6Nzoic3BlY2lhbCI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 65, 0),
(16130, 'content', 'product_list.CNK7Wl', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjcxMjY2OTQ4NTYxODUwNTMiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuQ05LN1dsIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LkNOSzdXbCI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNjoiRmVhdHVyZSBwcm9kdWN0cyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMjoiTmV3IHByb2R1Y3RzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNjoiRmVhdHVyZSBwcm9kdWN0cyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjE3OiJwYW5lbC12MSBtYXJnaW4tMCI7czo1OiJsaW1pdCI7czoyOiIxNiI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjgiO3M6NDoiY29scyI7czoxOiI0IjtzOjU6IndpZHRoIjtzOjM6IjUwMCI7czo2OiJoZWlnaHQiO3M6MzoiNTAwIjtzOjk6Imxpc3RfdHlwZSI7czo2OiJsYXRlc3QiO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7fQ==', 65, 0),
(16131, 'content', 'product_list_banner.lyS9L6', 'YToyMjp7czo0OiJyYW5kIjtzOjE4OiIwLjMwNTYzMDQzNzg1NzkyNDkiO3M6NjoibW9kdWxlIjtzOjI2OiJwcm9kdWN0X2xpc3RfYmFubmVyLmx5UzlMNiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjY6InByb2R1Y3RfbGlzdF9iYW5uZXIubHlTOUw2IjtzOjU6Ind0eXBlIjtzOjE5OiJwcm9kdWN0X2xpc3RfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiTmV3IGFycml2YWxzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJOZXcgYXJyaXZhbHMiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJOZXcgYXJyaXZhbHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToic3ViX3RpdGxlIjtzOjQzOiJCcm93c2UgcXVhIHRoZSBmb2xsb3dpbmcgcHJvZHVjdCBuZXcgdGhlIHdlIjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6MTA6ImJhbm5lcl9pbWciO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuLWxlZnQuanBnIjtzOjc6ImJfd2lkdGgiO3M6MzoiNjM1IjtzOjg6ImJfaGVpZ2h0IjtzOjM6IjY5NyI7czo0OiJsaW5rIjtzOjE6IiMiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiI0ODAiO3M6NjoiaGVpZ2h0IjtzOjM6IjYxNyI7czo5OiJsaXN0X3R5cGUiO3M6NzoicG9wdWxhciI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 65, 0),
(15748, 'content', 'image.NmTMDI', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjgwNzIwMDAwOTc0NzQ4ODEiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5ObVRNREkiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5ObVRNREkiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMTMuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjEiO30=', 64, 0),
(15749, 'content', 'image.YXFHxd', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjU2ODczODI0Mjg4Mjg2NjYiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5ZWEZIeGQiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5ZWEZIeGQiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMTAuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8yIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMSI7czowOiIiO3M6ODoic2hvd19kZXMiO3M6MToiMSI7fQ==', 64, 0),
(8229, 'content', 'product_list.303smT', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjM3ODgwMDA5MzMxODQ2NjU0IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LjMwM3NtVCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC4zMDNzbVQiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6NzoiU3BlY2lhbCI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czo3OiJTcGVjaWFsIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czo3OiJTcGVjaWFsIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjU6ImxpbWl0IjtzOjE6IjQiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czozOiI1MDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjU1MCI7czo5OiJsaXN0X3R5cGUiO3M6Nzoic3BlY2lhbCI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 36, 0),
(8235, 'content', 'product_tab_banner1.0Es8rg', 'YToyMDp7czo0OiJyYW5kIjtzOjE5OiIwLjI5MjAwNDk2NzA0Njk4Njg2IjtzOjY6Im1vZHVsZSI7czoyNjoicHJvZHVjdF90YWJfYmFubmVyMS4wRXM4cmciO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI2OiJwcm9kdWN0X3RhYl9iYW5uZXIxLjBFczhyZyI7czo1OiJ3dHlwZSI7czoxOToicHJvZHVjdF90YWJfYmFubmVyMSI7czoxMToid2lkZ2V0X25hbWUiO3M6NzoiQ29va2luZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxODoiQ29va2luZyAmYW1wOyBGb29kIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxODoiQ29va2luZyAmYW1wOyBGb29kIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjU6ImxpbmtzIjthOjM6e2k6MDtzOjI6IjQ1IjtpOjE7czoyOiI0NiI7aToyO3M6MjoiMTgiO31zOjU6ImxpbWl0IjtzOjE6IjkiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjQ6ImNvbHMiO3M6MToiMyI7czoxMToiaW1hZ2Vfd2lkdGgiO3M6MzoiNTAwIjtzOjEyOiJpbWFnZV9oZWlnaHQiO3M6MzoiNTUwIjtzOjEwOiJiYW5uZXJfaW1nIjtzOjM3OiJjYXRhbG9nL2RlbW8vYmFubmVycy9ibi10YWItcmlnaHQuanBnIjtzOjc6ImJfd2lkdGgiO3M6MzoiMjk0IjtzOjg6ImJfaGVpZ2h0IjtzOjM6IjQzMCI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 36, 0),
(8230, 'content', 'product_list.AN82bq', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjg4NjYzMzUxMzE5NTE2NjgiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuQU44MmJxIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LkFOODJicSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiVG9wIFJhdGluZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMDoiVG9wIFJhdGluZyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTA6IlRvcCBSYXRpbmciO3M6MTI6ImFkZGl0aW9uX2NscyI7czo3OiJzaWRlYmFyIjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czoyOiI4MCI7czo2OiJoZWlnaHQiO3M6MjoiNzEiO3M6OToibGlzdF90eXBlIjtzOjk6InRvcHJhdGluZyI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 36, 0),
(8228, 'content', 'product_deal.59aeuj', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjUwNDMwNDMyNDc1ODM3MDEiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2RlYWwuNTlhZXVqIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9kZWFsLjU5YWV1aiI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9kZWFsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo5OiJIb3QgZGVhbHMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6OToiSG90IGRlYWxzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czo5OiJIb3QgZGVhbHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTA6InN0YXJ0X2RhdGUiO3M6MTA6IjIwMTQtMDMtMTciO3M6ODoiZW5kX2RhdGUiO3M6MTA6IjIwMjAtMDMtMTciO3M6NToibGltaXQiO3M6MToiNiI7czo0OiJjb2xzIjtzOjE6IjMiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjk6ImltZ193aWR0aCI7czozOiI1MDAiO3M6MTA6ImltZ19oZWlnaHQiO3M6MzoiNTUwIjtzOjEyOiJjYXRlZ29yeV9pZHMiO2E6MjA6e2k6MDtzOjI6IjM1IjtpOjE7czoyOiIzNiI7aToyO3M6MjoiMzgiO2k6MztzOjI6IjQ1IjtpOjQ7czoyOiI0NiI7aTo1O3M6MjoiNjIiO2k6NjtzOjI6IjIwIjtpOjc7czoyOiIyNiI7aTo4O3M6MjoiMjgiO2k6OTtzOjI6IjI5IjtpOjEwO3M6MjoiMzAiO2k6MTE7czoyOiIzMSI7aToxMjtzOjI6IjMyIjtpOjEzO3M6MjoiMTgiO2k6MTQ7czoyOiIyNSI7aToxNTtzOjI6IjU3IjtpOjE2O3M6MjoiMTciO2k6MTc7czoyOiIyNCI7aToxODtzOjI6IjMzIjtpOjE5O3M6MjoiMzQiO319', 36, 0),
(13510, 'content', 'listproduct_home1.0YKUfY', 'YToyMDp7czo0OiJyYW5kIjtzOjE4OiIwLjUyNTc1NzkxNTk0NTIyNDYiO3M6NjoibW9kdWxlIjtzOjI0OiJsaXN0cHJvZHVjdF9ob21lMS4wWUtVZlkiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJsaXN0cHJvZHVjdF9ob21lMS4wWUtVZlkiO3M6NToid3R5cGUiO3M6MTc6Imxpc3Rwcm9kdWN0X2hvbWUxIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNjoiU21hbGwgQXBwbGlhbmNlcyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNjoiU21hbGwgQXBwbGlhbmNlcyI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTY6IlNtYWxsIEFwcGxpYW5jZXMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMzoicGFuZWwtc3VjY2VzcyI7czo1OiJsaW1pdCI7czoxOiI4IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo0OiJjb2xzIjtzOjE6IjQiO3M6NToid2lkdGgiO3M6MzoiNTAwIjtzOjY6ImhlaWdodCI7czozOiI0NDUiO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7czo3OiJwcm9kdWN0IjthOjY6e2k6MDtzOjI6IjQwIjtpOjE7czoyOiIzMiI7aToyO3M6MjoiNDciO2k6MztzOjI6IjUwIjtpOjQ7czoyOiI0MSI7aTo1O3M6MjoiNDUiO31zOjEwOiJiYW5uZXJfaW1nIjtzOjI5OiJjYXRhbG9nL2RlbW8vYmFubmVycy9ibjMzLmpwZyI7czo3OiJiX3dpZHRoIjtzOjM6IjI3MCI7czo4OiJiX2hlaWdodCI7czozOiIzMTgiO30=', 75, 0),
(15740, 'content', 'freshfooddeals.aSc3Tl', 'YToyMTp7czo0OiJyYW5kIjtzOjE5OiIwLjA0NzMxODc5ODYwNzc4MzMyIjtzOjY6Im1vZHVsZSI7czoyMToiZnJlc2hmb29kZGVhbHMuYVNjM1RsIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyMToiZnJlc2hmb29kZGVhbHMuYVNjM1RsIjtzOjU6Ind0eXBlIjtzOjE0OiJmcmVzaGZvb2RkZWFscyI7czoxMToid2lkZ2V0X25hbWUiO3M6MTQ6IkRlYWxzIG9mIHRvZGF5IjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE0OiJEZWFscyBvZiB0b2RheSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTQ6IkRlYWxzIG9mIHRvZGF5IjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6ODoicGFuZWwtdjIiO3M6NToibGlua3MiO2E6NDp7aTowO3M6MjoiMzUiO2k6MTtzOjI6IjkyIjtpOjI7czoyOiI5NyI7aTozO3M6MjoiOTUiO31zOjU6InN0YXJ0IjtzOjEwOiIyMDExLTA3LTIxIjtzOjM6ImVuZCI7czoxMDoiMjAxOS0xMS0yMSI7czoxMDoiY2F0ZWdvcmllcyI7YToyOTp7aTowO3M6MjoiMzUiO2k6MTtzOjI6IjM2IjtpOjI7czoyOiI0NiI7aTozO3M6MjoiOTAiO2k6NDtzOjI6IjkxIjtpOjU7czoyOiI5MiI7aTo2O3M6MjoiOTMiO2k6NztzOjI6Ijk0IjtpOjg7czoyOiI5NSI7aTo5O3M6MjoiOTYiO2k6MTA7czoyOiI5NyI7aToxMTtzOjI6Ijk4IjtpOjEyO3M6MjoiOTkiO2k6MTM7czozOiIxMDAiO2k6MTQ7czozOiIxMDEiO2k6MTU7czozOiIxMDIiO2k6MTY7czoyOiIyMCI7aToxNztzOjI6IjI4IjtpOjE4O3M6MjoiMjkiO2k6MTk7czoyOiIzMCI7aToyMDtzOjI6IjMxIjtpOjIxO3M6MjoiMzIiO2k6MjI7czoyOiIxOCI7aToyMztzOjI6IjI1IjtpOjI0O3M6MjoiNTciO2k6MjU7czoyOiIxNyI7aToyNjtzOjI6IjI0IjtpOjI3O3M6MjoiMzMiO2k6Mjg7czoyOiIzNCI7fXM6Njoic29ydGJ5IjtzOjg6Im5hbWUgQVNDIjtzOjU6ImxpbWl0IjtzOjE6IjUiO3M6NToiaXRlbXMiO3M6MToiNCI7czo0OiJjb2xzIjtzOjE6IjIiO3M6NToid2lkdGgiO3M6MzoiMTAwIjtzOjY6ImhlaWdodCI7czozOiIxMDAiO3M6NjoibGF5b3V0IjtzOjg6ImxheW91dF8yIjt9', 64, 0),
(13511, 'content', 'listproduct_home1.BniV6k', 'YToyMTp7czo0OiJyYW5kIjtzOjE4OiIwLjg3MDYzNzUwNDExMTg1MDYiO3M6NjoibW9kdWxlIjtzOjI0OiJsaXN0cHJvZHVjdF9ob21lMS5CbmlWNmsiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJsaXN0cHJvZHVjdF9ob21lMS5CbmlWNmsiO3M6NToid3R5cGUiO3M6MTc6Imxpc3Rwcm9kdWN0X2hvbWUxIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyMDoiV2FzaGVycyAmYW1wOyBEcnllcnMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MjA6Ildhc2hlcnMgJmFtcDsgRHJ5ZXJzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoyMDoiV2FzaGVycyAmYW1wOyBEcnllcnMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMzoicGFuZWwtd2FybmluZyI7czo1OiJsaW5rcyI7YTo2OntpOjA7czoyOiI5MSI7aToxO3M6MjoiOTMiO2k6MjtzOjI6Ijk2IjtpOjM7czoyOiIyOSI7aTo0O3M6MjoiOTkiO2k6NTtzOjI6IjIwIjt9czo1OiJsaW1pdCI7czoxOiI4IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo0OiJjb2xzIjtzOjE6IjQiO3M6NToid2lkdGgiO3M6MzoiNTAwIjtzOjY6ImhlaWdodCI7czozOiI0NDUiO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7czo3OiJwcm9kdWN0IjthOjc6e2k6MDtzOjI6IjQzIjtpOjE7czoyOiIzNCI7aToyO3M6MjoiMzYiO2k6MztzOjI6IjQ3IjtpOjQ7czoyOiIzNSI7aTo1O3M6MjoiMzMiO2k6NjtzOjI6IjUxIjt9czoxMDoiYmFubmVyX2ltZyI7czoyOToiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYm4zMS5qcGciO3M6NzoiYl93aWR0aCI7czozOiIyNzAiO3M6ODoiYl9oZWlnaHQiO3M6MzoiMzE4Ijt9', 75, 0),
(16109, 'content', 'image.pUpdi9', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjY1MDk0OTUyODYxMTgzNTMiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5wVXBkaTkiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5wVXBkaTkiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjguanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 33, 0),
(16110, 'content', 'image.rQm21Q', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjc1MDg4NzgyMzMyNzEwMDIiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5yUW0yMVEiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5yUW0yMVEiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjcuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 33, 0),
(16118, 'content', 'product_list.znHwrE', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjYwMjU1ODE1NDU0NDg5NDMiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3Quem5Id3JFIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LnpuSHdyRSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo3OiJQb3B1bGFyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjc6IlBvcHVsYXIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjc6IlBvcHVsYXIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxNzoicGFuZWwtdjEgbWFyZ2luLTAiO3M6NToibGltaXQiO3M6MjoiMTYiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI4IjtzOjQ6ImNvbHMiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiIyNzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjI3MCI7czo5OiJsaXN0X3R5cGUiO3M6NzoicG9wdWxhciI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 33, 0),
(16119, 'content', 'product_tabs.NQ9lTA', 'YToyOTp7czo0OiJyYW5kIjtzOjE5OiIwLjE0NDg0Mjk0NDA4ODYxMjc2IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF90YWJzLk5ROWxUQSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfdGFicy5OUTlsVEEiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfdGFicyI7czoxMToid2lkZ2V0X25hbWUiO3M6MTI6Ik5ldyBhcnJpdmFscyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMjoiTmV3IGFycml2YWxzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMjoiTmV3IGFycml2YWxzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MjU6InBhbmVsLXYxIG1hcmdpbi1ib3R0b20tNDAiO3M6OToic3ViX3RpdGxlIjtzOjI6ImFiIjtzOjU6ImxpbWl0IjtzOjI6IjEyIjtzOjY6ImNvbHVtbiI7czoxOiI2IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNiI7czoxMToiaWNvbl9uZXdlc3QiO3M6MDoiIjtzOjEzOiJlbmFibGVfbmV3ZXN0IjtzOjE6IjEiO3M6MTM6Imljb25fZmVhdHVyZWQiO3M6MDoiIjtzOjEwOiJwcm9kdWN0X2lkIjtzOjA6IiI7czoxNToiZW5hYmxlX2ZlYXR1cmVkIjtzOjE6IjAiO3M6MTU6Imljb25fYmVzdHNlbGxlciI7czowOiIiO3M6MTc6ImVuYWJsZV9iZXN0c2VsbGVyIjtzOjE6IjAiO3M6MTI6Imljb25fc3BlY2lhbCI7czowOiIiO3M6MTQ6ImVuYWJsZV9zcGVjaWFsIjtzOjE6IjEiO3M6MTQ6Imljb25fbW9zdHZpZXdzIjtzOjA6IiI7czoxNjoiZW5hYmxlX21vc3R2aWV3cyI7czoxOiIxIjtzOjk6InRhYnNzdHlsZSI7czo2OiJ0YWItdjEiO3M6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjI3MCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjI3MCI7czo5OiJhdXRvX3BsYXkiO3M6NDoiMzAwMCI7fQ==', 33, 0),
(16117, 'content', 'product_list.SAHlNn', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjc2ODIxODEwNzI4ODcwMzMiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuU0FIbE5uIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LlNBSGxObiI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiQmVzdCBTZWxsZXJzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJCZXN0IFNlbGxlcnMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMjoicGFuZWwtY2VudGVyIjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiI2MDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjUzMyI7czo5OiJsaXN0X3R5cGUiO3M6ODoiZmVhdHVyZWQiO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7czo3OiJwcm9kdWN0IjthOjU6e2k6MDtzOjI6IjQyIjtpOjE7czoyOiIzMCI7aToyO3M6MjoiNDciO2k6MztzOjI6IjI4IjtpOjQ7czoyOiI0MSI7fX0=', 33, 0),
(16116, 'content', 'product_list.drZcjK', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjI2MTg4NzgzMTg0NjI1MjEiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuZHJaY2pLIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LmRyWmNqSyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNToiTGF0ZXN0IFByb2R1Y3RzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE1OiJMYXRlc3QgUHJvZHVjdHMiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE2OiJGZWF0dXJlIFByb2R1Y3RzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTI6InBhbmVsLWNlbnRlciI7czo1OiJsaW1pdCI7czoxOiI4IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiOCI7czo0OiJjb2xzIjtzOjE6IjQiO3M6NToid2lkdGgiO3M6MzoiNjAwIjtzOjY6ImhlaWdodCI7czozOiI1MzMiO3M6OToibGlzdF90eXBlIjtzOjg6ImZlYXR1cmVkIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO3M6NzoicHJvZHVjdCI7YTo1OntpOjA7czoyOiIzMCI7aToxO3M6MjoiNDIiO2k6MjtzOjI6IjQ3IjtpOjM7czoyOiIyOCI7aTo0O3M6MjoiNDEiO319', 33, 0),
(16114, 'content', 'image.zW2brk', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjkzODMwNjcwMjkwMjI4OTUiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS56VzJicmsiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS56VzJicmsiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjMuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 33, 0),
(16115, 'content', 'interactive_banner.Vs2dtP', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjQ4MzI5MzM4MzcxMTEyMzIiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuVnMyZHRQIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLlZzMmR0UCI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMToiZnJlc2ggZnJ1aXQiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMToiZnJlc2ggZnJ1aXQiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjI4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9ibjMuanBnIjtzOjU6IndpZHRoIjtzOjM6Ijc3MCI7czo2OiJoZWlnaHQiO3M6MzoiMzcwIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjE1NDoiJmx0O2RpdiBjbGFzcz0mcXVvdDt0eHQxJnF1b3Q7Jmd0Ow0KICAgIGJhbmFuYQ0KJmx0Oy9kaXYmZ3Q7DQombHQ7ZGl2IGNsYXNzPSZxdW90O3R4dDImcXVvdDsmZ3Q7DQogICAgVGhlIFdvcmxkJ3MgSGVhbHRoaWVzdCAmbHQ7YnImZ3Q7Rm9vZHMNCiZsdDsvZGl2Jmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czoxNTQ6IiZsdDtkaXYgY2xhc3M9JnF1b3Q7dHh0MSZxdW90OyZndDsNCiAgICBiYW5hbmENCiZsdDsvZGl2Jmd0Ow0KJmx0O2RpdiBjbGFzcz0mcXVvdDt0eHQyJnF1b3Q7Jmd0Ow0KICAgIFRoZSBXb3JsZCdzIEhlYWx0aGllc3QgJmx0O2JyJmd0O0Zvb2RzDQombHQ7L2RpdiZndDsiO3M6MTE6InRleHRfbGlua18yIjtzOjg6InNob3cgbm93IjtzOjExOiJ0ZXh0X2xpbmtfMSI7czo4OiJzaG93IG5vdyI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7fQ==', 33, 0),
(16112, 'content', 'image.WIa9ho', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjE0NDQxNjE1ODIzODEzNjgiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5XSWE5aG8iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5XSWE5aG8iO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjUuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 33, 0),
(16113, 'content', 'image.wo6WR6', 'YToxOTp7czo0OiJyYW5kIjtzOjE5OiIwLjEwNzgxMzg3Njg4NDEwNDI2IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2Uud282V1I2IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2Uud282V1I2IjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJpbWciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MzoiaW1nIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjI4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9ibjQuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjEiO30=', 33, 0),
(16111, 'content', 'image.t6fkta', 'YToxNjp7czo0OiJyYW5kIjtzOjE5OiIwLjI5MTMxMjQ0MzU5MDAzOTk0IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UudDZma3RhIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UudDZma3RhIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJpbWciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MzoiaW1nIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTI6ImFkZGl0aW9uX2NscyI7czo5OiJlZmZlY3QtdjQiO3M6OToiaW1hZ2VmaWxlIjtzOjMyOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXI2LmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 33, 0),
(16107, 'content', 'image.8AgYjI', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjkwODU3MDU1NzE4NjAyNjgiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS44QWdZakkiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS44QWdZakkiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjQuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 33, 0),
(16108, 'content', 'image.etOnpd', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjU3NTA2NTY0NDcyNzUyMTIiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5ldE9ucGQiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5ldE9ucGQiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjg6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMi5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjEiO3M6NDoibGluayI7czoxOiIjIjtzOjEzOiJkZXNjcmlwdGlvbl8yIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMSI7czowOiIiO3M6ODoic2hvd19kZXMiO3M6MToiMCI7fQ==', 33, 0),
(8224, 'content', 'image.wth81Y', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjU3NzcxMjU2NTQwMDgzMDYiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS53dGg4MVkiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS53dGg4MVkiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMTYuanBnIjtzOjQ6InNpemUiO3M6NDoiZnVsbCI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjE6IiMiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjt9', 36, 0),
(8225, 'content', 'interactive_banner.7sywgK', 'YToyMzp7czo0OiJyYW5kIjtzOjE5OiIwLjE0MTU0OTAwOTk0MzQwMTkyIjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLjdzeXdnSyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci43c3l3Z0siO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6MTQ6IkludGVyaW9ycyBTaG93IjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE0OiJJbnRlcmlvcnMgU2hvdyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTQ6IkludGVyaW9ycyBTaG93IjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjExOiJzdWJfdGl0bGVfMSI7czowOiIiO3M6MTE6InN1Yl90aXRsZV8yIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjkuanBnIjtzOjU6IndpZHRoIjtzOjM6IjM3MCI7czo2OiJoZWlnaHQiO3M6MzoiMzIwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjE3NDoiJmx0O2RpdiZndDtDb25zdHJ1Y3RlZCBmcm9tIHdvb2RlbiBwb2xlcyBvZiB0aGUgc2FtZSBkaWFtZXRlciwgdGhlIGNvYXQgc3RhbmQgaGFzIGEgbmVhdCBsb29rIGluIGFkZGl0aW9uIHRvIGFuIGV4cGFuc2l2ZSBpbXByZXNzaW9uIHJlbWluaXNjZW50IG9mIGZvcmVzdCB0cmVlcy4gJmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjE3NDoiJmx0O2RpdiZndDtDb25zdHJ1Y3RlZCBmcm9tIHdvb2RlbiBwb2xlcyBvZiB0aGUgc2FtZSBkaWFtZXRlciwgdGhlIGNvYXQgc3RhbmQgaGFzIGEgbmVhdCBsb29rIGluIGFkZGl0aW9uIHRvIGFuIGV4cGFuc2l2ZSBpbXByZXNzaW9uIHJlbWluaXNjZW50IG9mIGZvcmVzdCB0cmVlcy4gJmx0Oy9kaXYmZ3Q7IjtzOjExOiJ0aXRsZWxpbmtfMSI7czoxMToiTW9yZSBkZXRhaWwiO3M6MTE6InRpdGxlbGlua18yIjtzOjA6IiI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjEiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12MSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 36, 0),
(8226, 'content', 'interactive_banner.lRB2a4', 'YToyMzp7czo0OiJyYW5kIjtzOjE5OiIwLjI0MzEyMjU5MDY5NTU4MTE4IjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLmxSQjJhNCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci5sUkIyYTQiO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6MzQ6IlRoZSBTa2lsbCBvZiBUaGlzIFdvb2RlbiBTdHJ1Y3R1cmUiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MzQ6IlRoZSBTa2lsbCBvZiBUaGlzIFdvb2RlbiBTdHJ1Y3R1cmUiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM0OiJUaGUgU2tpbGwgb2YgVGhpcyBXb29kZW4gU3RydWN0dXJlIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjExOiJzdWJfdGl0bGVfMSI7czo0OiJodWh1IjtzOjExOiJzdWJfdGl0bGVfMiI7czo0OiJodWh1IjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMTEuanBnIjtzOjU6IndpZHRoIjtzOjM6IjM3MCI7czo2OiJoZWlnaHQiO3M6MzoiMzIwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjE3NDoiJmx0O2RpdiZndDtDb25zdHJ1Y3RlZCBmcm9tIHdvb2RlbiBwb2xlcyBvZiB0aGUgc2FtZSBkaWFtZXRlciwgdGhlIGNvYXQgc3RhbmQgaGFzIGEgbmVhdCBsb29rIGluIGFkZGl0aW9uIHRvIGFuIGV4cGFuc2l2ZSBpbXByZXNzaW9uIHJlbWluaXNjZW50IG9mIGZvcmVzdCB0cmVlcy4gJmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjE3NDoiJmx0O2RpdiZndDtDb25zdHJ1Y3RlZCBmcm9tIHdvb2RlbiBwb2xlcyBvZiB0aGUgc2FtZSBkaWFtZXRlciwgdGhlIGNvYXQgc3RhbmQgaGFzIGEgbmVhdCBsb29rIGluIGFkZGl0aW9uIHRvIGFuIGV4cGFuc2l2ZSBpbXByZXNzaW9uIHJlbWluaXNjZW50IG9mIGZvcmVzdCB0cmVlcy4gJmx0Oy9kaXYmZ3Q7IjtzOjExOiJ0aXRsZWxpbmtfMSI7czoxMToiTW9yZSBkZXRhaWwiO3M6MTE6InRpdGxlbGlua18yIjtzOjExOiJNb3JlIGRldGFpbCI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjEiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12MSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 36, 0),
(8227, 'content', 'interactive_banner.OOYEDE', 'YToyMzp7czo0OiJyYW5kIjtzOjE5OiIwLjE3NTM3NTY0NDQ1OTUzMTU4IjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLk9PWUVERSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci5PT1lFREUiO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6MTc6Ikdvb2QgRGVzaWduIEF3YXJkIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE3OiJHb29kIERlc2lnbiBBd2FyZCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjExOiJzdWJfdGl0bGVfMSI7czo0OiJodWh1IjtzOjExOiJzdWJfdGl0bGVfMiI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjMzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIxMC5qcGciO3M6NToid2lkdGgiO3M6MzoiMzcwIjtzOjY6ImhlaWdodCI7czozOiIzMjAiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MTc0OiImbHQ7ZGl2Jmd0O0NvbnN0cnVjdGVkIGZyb20gd29vZGVuIHBvbGVzIG9mIHRoZSBzYW1lIGRpYW1ldGVyLCB0aGUgY29hdCBzdGFuZCBoYXMgYSBuZWF0IGxvb2sgaW4gYWRkaXRpb24gdG8gYW4gZXhwYW5zaXZlIGltcHJlc3Npb24gcmVtaW5pc2NlbnQgb2YgZm9yZXN0IHRyZWVzLiAmbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MTc0OiImbHQ7ZGl2Jmd0O0NvbnN0cnVjdGVkIGZyb20gd29vZGVuIHBvbGVzIG9mIHRoZSBzYW1lIGRpYW1ldGVyLCB0aGUgY29hdCBzdGFuZCBoYXMgYSBuZWF0IGxvb2sgaW4gYWRkaXRpb24gdG8gYW4gZXhwYW5zaXZlIGltcHJlc3Npb24gcmVtaW5pc2NlbnQgb2YgZm9yZXN0IHRyZWVzLiAmbHQ7L2RpdiZndDsiO3M6MTE6InRpdGxlbGlua18xIjtzOjExOiJNb3JlIGRldGFpbCI7czoxMToidGl0bGVsaW5rXzIiO3M6MTE6Ik1vcmUgZGV0YWlsIjtzOjk6Im1hc2tfbGluayI7czoxOiIjIjtzOjExOiJiYW5uZXJfdHlwZSI7czoyOiJ2MSI7czoxMToiZWZmZWN0X3R5cGUiO3M6OToiZWZmZWN0LXYxIjtzOjg6InBvc2l0aW9uIjtzOjY6ImNlbnRlciI7fQ==', 36, 0),
(8223, 'content', 'image.rct7eq', 'YToxOTp7czo0OiJyYW5kIjtzOjE5OiIwLjMyNzk2MDczNTU0OTk0MTY1IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UucmN0N2VxIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UucmN0N2VxIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjI5OiJjYXRhbG9nL2RlbW8vYmFubmVycy9ibjExLmpwZyI7czo0OiJzaXplIjtzOjQ6ImZ1bGwiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjAiO3M6NDoibGluayI7czoxOiIjIjtzOjEzOiJkZXNjcmlwdGlvbl8yIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMSI7czowOiIiO3M6ODoic2hvd19kZXMiO3M6MToiMCI7fQ==', 36, 0),
(8217, 'content', 'image.ckpNxJ', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjg3Nzg4NTA3Nzk2ODYxMDkiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5ja3BOeEoiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5ja3BOeEoiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMTcuanBnIjtzOjQ6InNpemUiO3M6NDoiZnVsbCI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjE6IiMiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjt9', 36, 0);
INSERT INTO `oc_pavwidget` (`pavwidget_id`, `name`, `code`, `setting`, `module_id`, `key`) VALUES
(8218, 'content', 'image.CvBSRY', 'YToxOTp7czo0OiJyYW5kIjtzOjE5OiIwLjM4NjY4MjIxNDYzNDA1NDA2IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuQ3ZCU1JZIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuQ3ZCU1JZIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjI4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9ibjkuanBnIjtzOjQ6InNpemUiO3M6NDoiZnVsbCI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjE6IiMiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjt9', 36, 0),
(8213, 'content', 'featured_category.yOGdLd', 'YToxNDp7czo0OiJyYW5kIjtzOjE4OiIwLjU1NzgyNzI3ODAzNTAzNzUiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS55T0dkTGQiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS55T0dkTGQiO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNzoiRmVhdHVyZWQgQ2F0ZWdvcnkiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTc6IkZlYXR1cmVkIENhdGVnb3J5IjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNzoiRmVhdHVyZWQgQ2F0ZWdvcnkiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTk6ImNhdGVnb3JpZXNfZmVhdHVyZWQiO2E6Njp7aTowO2E6Mjp7czo1OiJpbWFnZSI7czozODoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvZmVhdHVyZWQvaW1nMS5qcGciO3M6MjoiaWQiO3M6MjoiMTgiO31pOjE7YToyOntzOjU6ImltYWdlIjtzOjM4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9mZWF0dXJlZC9pbWcyLmpwZyI7czoyOiJpZCI7czoyOiIyNSI7fWk6MjthOjI6e3M6NToiaW1hZ2UiO3M6Mzg6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2ZlYXR1cmVkL2ltZzMuanBnIjtzOjI6ImlkIjtzOjI6IjI0Ijt9aTozO2E6Mjp7czo1OiJpbWFnZSI7czozODoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvZmVhdHVyZWQvaW1nNC5qcGciO3M6MjoiaWQiO3M6MjoiMjAiO31pOjQ7YToyOntzOjU6ImltYWdlIjtzOjM4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9mZWF0dXJlZC9pbWc1LmpwZyI7czoyOiJpZCI7czoyOiIzMyI7fWk6NTthOjI6e3M6NToiaW1hZ2UiO3M6Mzg6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2ZlYXR1cmVkL2ltZzYuanBnIjtzOjI6ImlkIjtzOjI6IjM0Ijt9fXM6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjEzMCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjE0MyI7czo0OiJjb2xzIjtzOjE6IjYiO30=', 36, 0),
(8216, 'content', 'icon_box.XxROnG', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjU3MzI0MjY4MjE5MDc5MzMiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5YeFJPbkciO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5YeFJPbkciO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjk6Ikd1YXJhbnRlZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czo5OiJHdWFyYW50ZWUiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjk6Ikd1YXJhbnRlZSI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12MS5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo4NjoiJmx0O2RpdiZndDtBbGwgaXRlbXMgZ3VhcmFudGVlZCBpbiBzdG9jayBpbiBzaXplcyBzaG93biwgb3IgeW91IHJlY2VpdmUgYSAmbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6ODY6IiZsdDtkaXYmZ3Q7QWxsIGl0ZW1zIGd1YXJhbnRlZWQgaW4gc3RvY2sgaW4gc2l6ZXMgc2hvd24sIG9yIHlvdSByZWNlaXZlIGEgJmx0Oy9kaXYmZ3Q7IjtzOjE0OiJpY29uX2JveF9zdHlsZSI7czoxNDoiZmVhdHVyZS1ib3gtdjIiO3M6MTA6InRleHRfYWxpZ24iO3M6MTY6ImZlYXR1cmUtYm94LWxlZnQiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 36, 0),
(8215, 'content', 'icon_box.XUdjal', 'YToxNzp7czo0OiJyYW5kIjtzOjIwOiIwLjAxMTg2MzE1MDM3NDA4NjU4NCI7czo2OiJtb2R1bGUiO3M6MTU6Imljb25fYm94LlhVZGphbCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTU6Imljb25fYm94LlhVZGphbCI7czo1OiJ3dHlwZSI7czo4OiJpY29uX2JveCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTM6IkN1c3RvbWVyIENhcmUiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTM6IkN1c3RvbWVyIENhcmUiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEzOiJDdXN0b21lciBDYXJlIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjg6Imljb25maWxlIjtzOjMyOiJjYXRhbG9nL2RlbW8vbW9kdWxlL21pY29uLXYzLnBuZyI7czo5OiJpY29uY2xhc3MiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjkwOiImbHQ7ZGl2Jmd0O0EgY2xlYXJhbmNlIHByaWNlIGlzIGNvbnNpZGVyZWQgNDAlIG9yIG1vcmUgb2ZmIHRoZSBvcmlnaW5hbCBwcmljZS4mbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6OTA6IiZsdDtkaXYmZ3Q7QSBjbGVhcmFuY2UgcHJpY2UgaXMgY29uc2lkZXJlZCA0MCUgb3IgbW9yZSBvZmYgdGhlIG9yaWdpbmFsIHByaWNlLiZsdDsvZGl2Jmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYyIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 36, 0),
(8214, 'content', 'icon_box.e0DIeh', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjk1NDk3MzQ1MDAxOTUzMTkiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5lMERJZWgiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5lMERJZWgiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjIyOiJTaGlwcGluZyAmYW1wOyBSZXR1cm5zIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjIyOiJTaGlwcGluZyAmYW1wOyBSZXR1cm5zIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoyMjoiU2hpcHBpbmcgJmFtcDsgUmV0dXJucyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12Mi5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo4ODoiJmx0O2RpdiZndDtGcmVlIHJldHVybiBzaGlwcGluZyB3aXRoIHByZXBhaWQgbWFpbGVyIGZvciBhbGwgZG9tZXN0aWMgb3JkZXJzLiZsdDsvZGl2Jmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo4ODoiJmx0O2RpdiZndDtGcmVlIHJldHVybiBzaGlwcGluZyB3aXRoIHByZXBhaWQgbWFpbGVyIGZvciBhbGwgZG9tZXN0aWMgb3JkZXJzLiZsdDsvZGl2Jmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYyIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 36, 0),
(8052, 'content', 'bloglatest.A6rkOY', 'YToxNDp7czo0OiJyYW5kIjtzOjE4OiIwLjY1OTEzMjU2MTg1ODI3MTUiO3M6NjoibW9kdWxlIjtzOjE3OiJibG9nbGF0ZXN0LkE2cmtPWSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTc6ImJsb2dsYXRlc3QuQTZya09ZIjtzOjU6Ind0eXBlIjtzOjEwOiJibG9nbGF0ZXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiUmVjZW50IGJsb2dzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJSZWNlbnQgYmxvZ3MiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJSZWNlbnQgYmxvZ3MiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIxIjtzOjU6IndpZHRoIjtzOjM6Ijg3MCI7czo2OiJoZWlnaHQiO3M6MzoiNDk5IjtzOjQ6ImNvbHMiO3M6MToiMSI7fQ==', 47, 0),
(8053, 'content', 'image.1sbzOD', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjYwMzA0MDIzNjgwOTk5NjciO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS4xc2J6T0QiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS4xc2J6T0QiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMTguanBnIjtzOjQ6InNpemUiO3M6NjoiODcweDg5IjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIwIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjAiO30=', 47, 0),
(8054, 'content', 'image.9jEOcs', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjQyODkxMzQyMDE0NTc5MDUiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS45akVPY3MiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS45akVPY3MiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMTkuanBnIjtzOjQ6InNpemUiO3M6NDoiZnVsbCI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjE6IiMiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjt9', 47, 0),
(8066, 'content', 'product_tab_layout.QKnytV', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjcxMDE4OTk5MTIzNzIzMTYiO3M6NjoibW9kdWxlIjtzOjI1OiJwcm9kdWN0X3RhYl9sYXlvdXQuUUtueXRWIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToicHJvZHVjdF90YWJfbGF5b3V0LlFLbnl0ViI7czo1OiJ3dHlwZSI7czoxODoicHJvZHVjdF90YWJfbGF5b3V0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo0OiJkZW1vIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6NDoiZGVtbyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo1OiJsaW5rcyI7YTo0OntpOjA7czoyOiIyMCI7aToxO3M6MjoiMjUiO2k6MjtzOjI6IjU3IjtpOjM7czoyOiIxNyI7fXM6NToibGltaXQiO3M6MToiOCI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjQiO3M6NDoiY29scyI7czoxOiI0IjtzOjExOiJpbWFnZV93aWR0aCI7czozOiI0MDAiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiI0MDAiO30=', 47, 0),
(8065, 'content', 'product_tabs.Ot2gkC', 'YToyODp7czo0OiJyYW5kIjtzOjE4OiIwLjc3NTA4ODA5MjI2MDk3ODkiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X3RhYnMuT3QyZ2tDIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF90YWJzLk90MmdrQyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF90YWJzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MToiNiI7czo2OiJjb2x1bW4iO3M6MToiMyI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjMiO3M6MTE6Imljb25fbmV3ZXN0IjtzOjA6IiI7czoxMzoiZW5hYmxlX25ld2VzdCI7czoxOiIxIjtzOjEzOiJpY29uX2ZlYXR1cmVkIjtzOjA6IiI7czoxMDoicHJvZHVjdF9pZCI7czoxMToiNDIsNDQsNDcsNDgiO3M6MTU6ImVuYWJsZV9mZWF0dXJlZCI7czoxOiIxIjtzOjE1OiJpY29uX2Jlc3RzZWxsZXIiO3M6MDoiIjtzOjE3OiJlbmFibGVfYmVzdHNlbGxlciI7czoxOiIxIjtzOjEyOiJpY29uX3NwZWNpYWwiO3M6MDoiIjtzOjE0OiJlbmFibGVfc3BlY2lhbCI7czoxOiIxIjtzOjE0OiJpY29uX21vc3R2aWV3cyI7czowOiIiO3M6MTY6ImVuYWJsZV9tb3N0dmlld3MiO3M6MToiMSI7czo5OiJ0YWJzc3R5bGUiO3M6NjoidGFiLXYxIjtzOjExOiJpbWFnZV93aWR0aCI7czozOiI1MDAiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiI1NTAiO3M6OToiYXV0b19wbGF5IjtzOjQ6IjMwMDAiO30=', 47, 0),
(8064, 'content', 'product_list2.PDJgnc', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjYxMzQxMjcwODcwNzM3OTUiO3M6NjoibW9kdWxlIjtzOjIwOiJwcm9kdWN0X2xpc3QyLlBESmduYyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjA6InByb2R1Y3RfbGlzdDIuUERKZ25jIjtzOjU6Ind0eXBlIjtzOjEzOiJwcm9kdWN0X2xpc3QyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNToicHJvZHVjdCBwb3B1bGFyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE1OiJwcm9kdWN0IHBvcHVsYXIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE1OiJwcm9kdWN0IHBvcHVsYXIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MToiNiI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjMiO3M6NDoiY29scyI7czoxOiIzIjtzOjU6IndpZHRoIjtzOjM6IjUwMCI7czo2OiJoZWlnaHQiO3M6MzoiNTUwIjtzOjk6Imxpc3RfdHlwZSI7czo3OiJwb3B1bGFyIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 47, 0),
(8063, 'content', 'product_list2.7bJgz2', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjEyOTk0NjI1ODYyNzU0MDYiO3M6NjoibW9kdWxlIjtzOjIwOiJwcm9kdWN0X2xpc3QyLjdiSmd6MiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjA6InByb2R1Y3RfbGlzdDIuN2JKZ3oyIjtzOjU6Ind0eXBlIjtzOjEzOiJwcm9kdWN0X2xpc3QyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNjoiUHJvZHVjdCBGZWF0dXJlZCI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNjoiUHJvZHVjdCBGZWF0dXJlZCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTY6IlByb2R1Y3QgRmVhdHVyZWQiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MToiNiI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjMiO3M6NDoiY29scyI7czoxOiIzIjtzOjU6IndpZHRoIjtzOjM6IjUwMCI7czo2OiJoZWlnaHQiO3M6MzoiNTUwIjtzOjk6Imxpc3RfdHlwZSI7czo4OiJmZWF0dXJlZCI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjtzOjc6InByb2R1Y3QiO2E6Njp7aTowO3M6MjoiMzYiO2k6MTtzOjI6IjQyIjtpOjI7czoyOiI0NCI7aTozO3M6MjoiNTEiO2k6NDtzOjI6IjQ2IjtpOjU7czoyOiIzNCI7fX0=', 47, 0),
(8062, 'content', 'product_list.jhdWfR', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjgzOTkyNTM4MTE5OTAxMjgiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuamhkV2ZSIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LmpoZFdmUiI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo2OiJMYXRlc3QiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6NjoiTGF0ZXN0IjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czo2OiJMYXRlc3QiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo3OiJzaWRlYmFyIjtzOjU6ImxpbWl0IjtzOjE6IjciO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI3IjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czozOiI1MDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjU1MCI7czo5OiJsaXN0X3R5cGUiO3M6NjoibGF0ZXN0IjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 47, 0),
(8061, 'content', 'product_deal.AC0Jv5', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjU3Nzc5NTg4MjMyNDg2NDYiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2RlYWwuQUMwSnY1IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9kZWFsLkFDMEp2NSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9kZWFsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo1OiJEZWFscyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czo1OiJEZWFscyI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6NToiRGVhbHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTA6InN0YXJ0X2RhdGUiO3M6MTA6IjIwMTQtMDMtMTgiO3M6ODoiZW5kX2RhdGUiO3M6MTA6IjIwMjAtMDMtMTgiO3M6NToibGltaXQiO3M6MToiMiI7czo0OiJjb2xzIjtzOjE6IjEiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIxIjtzOjk6ImltZ193aWR0aCI7czozOiI1MDAiO3M6MTA6ImltZ19oZWlnaHQiO3M6MzoiNTUwIjtzOjEyOiJjYXRlZ29yeV9pZHMiO2E6MjA6e2k6MDtzOjI6IjM1IjtpOjE7czoyOiIzNiI7aToyO3M6MjoiMzgiO2k6MztzOjI6IjQ1IjtpOjQ7czoyOiI0NiI7aTo1O3M6MjoiNjIiO2k6NjtzOjI6IjIwIjtpOjc7czoyOiIyNiI7aTo4O3M6MjoiMjgiO2k6OTtzOjI6IjI5IjtpOjEwO3M6MjoiMzAiO2k6MTE7czoyOiIzMSI7aToxMjtzOjI6IjMyIjtpOjEzO3M6MjoiMTgiO2k6MTQ7czoyOiIyNSI7aToxNTtzOjI6IjU3IjtpOjE2O3M6MjoiMTciO2k6MTc7czoyOiIyNCI7aToxODtzOjI6IjMzIjtpOjE5O3M6MjoiMzQiO319', 47, 0),
(8060, 'content', 'image.ZMX7g6', 'YToxOTp7czo0OiJyYW5kIjtzOjE3OiIwLjQ0ODg2MjgwMjI0Mjg0NiI7czo2OiJtb2R1bGUiO3M6MTI6ImltYWdlLlpNWDdnNiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTI6ImltYWdlLlpNWDdnNiI7czo1OiJ3dHlwZSI7czo1OiJpbWFnZSI7czoxMToid2lkZ2V0X25hbWUiO3M6MDoiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czoyOToiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYm4yMi5qcGciO3M6NDoic2l6ZSI7czo0OiJmdWxsIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIwIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjAiO30=', 47, 0),
(8058, 'content', 'image.IgYzWu', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjI4MDg0ODA2NDMxNzI2MzMiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5JZ1l6V3UiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5JZ1l6V3UiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjE5OiJoaWRkZW4tc20gaGlkZGVuLXhzIjtzOjk6ImltYWdlZmlsZSI7czozNjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYm4tY2F0ZWdvcnkuanBnIjtzOjQ6InNpemUiO3M6NDoiZnVsbCI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjE6IiMiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjt9', 47, 0),
(8059, 'content', 'image.vbmHsS', 'YToxOTp7czo0OiJyYW5kIjtzOjE5OiIwLjA2NTUyNzI5MTUwNzY1MTkxIjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UudmJtSHNTIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UudmJtSHNTIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjI5OiJjYXRhbG9nL2RlbW8vYmFubmVycy9ibjIwLmpwZyI7czo0OiJzaXplIjtzOjQ6ImZ1bGwiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjAiO3M6NDoibGluayI7czoxOiIjIjtzOjEzOiJkZXNjcmlwdGlvbl8yIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMSI7czowOiIiO3M6ODoic2hvd19kZXMiO3M6MToiMCI7fQ==', 47, 0),
(8057, 'content', 'image.HzcTtT', 'YToxOTp7czo0OiJyYW5kIjtzOjIwOiIwLjAwNTA3ODQ1MTgwMTk1NTc2MyI7czo2OiJtb2R1bGUiO3M6MTI6ImltYWdlLkh6Y1R0VCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTI6ImltYWdlLkh6Y1R0VCI7czo1OiJ3dHlwZSI7czo1OiJpbWFnZSI7czoxMToid2lkZ2V0X25hbWUiO3M6MDoiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTk6ImhpZGRlbi1zbSBoaWRkZW4teHMiO3M6OToiaW1hZ2VmaWxlIjtzOjI4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9ibjcuanBnIjtzOjQ6InNpemUiO3M6NDoiZnVsbCI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjE6IiMiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjt9', 47, 0),
(8056, 'content', 'image.fr3Aas', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjMzNjEyNTM1ODIwODEzMTQiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5mcjNBYXMiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5mcjNBYXMiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMjEuanBnIjtzOjQ6InNpemUiO3M6NDoiZnVsbCI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjE6IiMiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjt9', 47, 0),
(8055, 'content', 'image.DBtO5j', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjQ0MzI0NjQ0ODk2MDQ0ODQiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5EQnRPNWoiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5EQnRPNWoiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMTEuanBnIjtzOjQ6InNpemUiO3M6NDoiZnVsbCI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjE6IiMiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjt9', 47, 0),
(8075, 'content', 'icon_box.YLULgF', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjc1NjM4NDE4MTM2NzEyMTMiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5ZTFVMZ0YiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5ZTFVMZ0YiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE0OiJQZXJmZWN0IENob2ljZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNDoiUGVyZmVjdCBDaG9pY2UiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE0OiJQZXJmZWN0IENob2ljZSI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12My5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo3OToiJmx0O3AmZ3Q7Um91bmQtdGhlLWNsb2NrIGFzc2lzdGFuY2UgZm9yIGEgc21vb3RoIHNob3BwaW5nIGV4cGVyaWVuY2UuJmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo3OToiJmx0O3AmZ3Q7Um91bmQtdGhlLWNsb2NrIGFzc2lzdGFuY2UgZm9yIGEgc21vb3RoIHNob3BwaW5nIGV4cGVyaWVuY2UuJmx0Oy9wJmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYyIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 39, 0),
(8076, 'content', 'image.FOLB4N', 'YToxOTp7czo0OiJyYW5kIjtzOjE5OiIwLjQ4MDg3MTU0MjA4MDgyODA1IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuRk9MQjROIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuRk9MQjROIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjI4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9ibjkuanBnIjtzOjQ6InNpemUiO3M6NDoiZnVsbCI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjE6IiMiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjt9', 39, 0),
(8077, 'content', 'image.gPyL7q', 'YToxOTp7czo0OiJyYW5kIjtzOjE5OiIwLjQxNTcyOTExMTA1MjgyNDczIjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuZ1B5TDdxIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuZ1B5TDdxIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjI5OiJjYXRhbG9nL2RlbW8vYmFubmVycy9ibjE0LmpwZyI7czo0OiJzaXplIjtzOjQ6ImZ1bGwiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjAiO3M6NDoibGluayI7czoxOiIjIjtzOjEzOiJkZXNjcmlwdGlvbl8yIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMSI7czowOiIiO3M6ODoic2hvd19kZXMiO3M6MToiMCI7fQ==', 39, 0),
(8078, 'content', 'image.h1i9zR', 'YToxOTp7czo0OiJyYW5kIjtzOjE5OiIwLjA4MDMyNjMwOTMzODA2MzczIjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuaDFpOXpSIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuaDFpOXpSIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjI5OiJjYXRhbG9nL2RlbW8vYmFubmVycy9ibjE1LmpwZyI7czo0OiJzaXplIjtzOjQ6ImZ1bGwiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjAiO3M6NDoibGluayI7czoxOiIjIjtzOjEzOiJkZXNjcmlwdGlvbl8yIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMSI7czowOiIiO3M6ODoic2hvd19kZXMiO3M6MToiMCI7fQ==', 39, 0),
(8079, 'content', 'image.kO6doG', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjU5MjgxNzUxMzY4NDg1MjIiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5rTzZkb0ciO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5rTzZkb0ciO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjY6InN0eWxlMSI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9tb2R1bGUvYmctdjEucG5nIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 39, 0),
(8080, 'content', 'image.MbFe26', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjk2MTgzNjExODQwOTMxODMiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5NYkZlMjYiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5NYkZlMjYiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMTcuanBnIjtzOjQ6InNpemUiO3M6NDoiZnVsbCI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjE6IiMiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjt9', 39, 0),
(8081, 'content', 'image.qCFwWb', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjQ0NTAyMzE0NTExOTE5MzciO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5xQ0Z3V2IiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5xQ0Z3V2IiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjg6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuOC5qcGciO3M6NDoic2l6ZSI7czo0OiJmdWxsIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIwIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjAiO30=', 39, 0),
(8082, 'content', 'image.VuweT9', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjkwNDM1ODM0MDQzOTY2NDciO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5WdXdlVDkiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5WdXdlVDkiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMTAuanBnIjtzOjQ6InNpemUiO3M6NDoiZnVsbCI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjE6IiMiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjt9', 39, 0),
(8083, 'content', 'interactive_banner.dcXvmm', 'YToyMzp7czo0OiJyYW5kIjtzOjE4OiIwLjkwMzU0OTMyMTAwMDQ2NjQiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuZGNYdm1tIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLmRjWHZtbSI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxODoiV29vbCBLbml0dGluZyBZYXJuIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE4OiJXb29sIEtuaXR0aW5nIFlhcm4iO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE4OiJXb29sIEtuaXR0aW5nIFlhcm4iO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTE6InN1Yl90aXRsZV8xIjtzOjA6IiI7czoxMToic3ViX3RpdGxlXzIiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyOS5qcGciO3M6NToid2lkdGgiO3M6MzoiMzcwIjtzOjY6ImhlaWdodCI7czozOiIzMjAiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MTE3OiImbHQ7ZGl2Jmd0O1dvb2wgWWFybnMgIGNhcnJpZXMgYSB3aWRlIHJhbmdlIG9mIHdvb2wgeWFybi4gU2F2ZSB1cCB0byAyNSUgd2l0aCBvdXIgeWFybiBhbmQgYm9vayBkaXNjb3VudCEmbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MTE3OiImbHQ7ZGl2Jmd0O1dvb2wgWWFybnMgIGNhcnJpZXMgYSB3aWRlIHJhbmdlIG9mIHdvb2wgeWFybi4gU2F2ZSB1cCB0byAyNSUgd2l0aCBvdXIgeWFybiBhbmQgYm9vayBkaXNjb3VudCEmbHQ7L2RpdiZndDsiO3M6MTE6InRpdGxlbGlua18xIjtzOjExOiJNb3JlIGRldGFpbCI7czoxMToidGl0bGVsaW5rXzIiO3M6MDoiIjtzOjk6Im1hc2tfbGluayI7czoxOiIjIjtzOjExOiJiYW5uZXJfdHlwZSI7czoyOiJ2NCI7czoxMToiZWZmZWN0X3R5cGUiO3M6OToiZWZmZWN0LXYxIjtzOjg6InBvc2l0aW9uIjtzOjY6ImNlbnRlciI7fQ==', 39, 0),
(8074, 'content', 'icon_box.I2h5OG', 'YToxNTp7czo0OiJyYW5kIjtzOjE4OiIwLjk0NDk0NDE4MDkzNzMyNjciO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5JMmg1T0ciO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5JMmg1T0ciO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE2OiIyNC83IEhlbHAgQ2VudGVyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE2OiIyNC83IEhlbHAgQ2VudGVyIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNjoiMjQvNyBIZWxwIENlbnRlciI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czowOiIiO3M6OToiaWNvbmNsYXNzIjtzOjIxOiJ6bWRpIHptZGktaGVhZHNldC1taWMiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6NjA6IlJvdW5kLXRoZS1jbG9jayBhc3Npc3RhbmNlIGZvciBhIHNtb290aCBzaG9wcGluZyBleHBlcmllbmNlLiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo2MDoiUm91bmQtdGhlLWNsb2NrIGFzc2lzdGFuY2UgZm9yIGEgc21vb3RoIHNob3BwaW5nIGV4cGVyaWVuY2UuIjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjEwOiJiZy1wcmltYXJ5Ijt9', 39, 0),
(8072, 'content', 'icon_box.9s3XPr', 'YToxNTp7czo0OiJyYW5kIjtzOjE4OiIwLjU0NjI0NzI2NTM3ODk1NTIiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC45czNYUHIiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC45czNYUHIiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE4OiJXb3JsZHdpZGUgRGVsaXZlcnkiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTg6Ildvcmxkd2lkZSBEZWxpdmVyeSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTg6Ildvcmxkd2lkZSBEZWxpdmVyeSI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czowOiIiO3M6OToiaWNvbmNsYXNzIjtzOjE5OiJ6bWRpIHptZGktZ2xvYmUtYWx0IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjc1OiJXaXRoIHNpdGVzIGluIDUgbGFuZ3VhZ2VzLCB3ZSBzaGlwIHRvIG92ZXIgMjAwIGNvdW50cmllcyAmYW1wO2FtcDsgcmVnaW9ucy4iO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6NzU6IldpdGggc2l0ZXMgaW4gNSBsYW5ndWFnZXMsIHdlIHNoaXAgdG8gb3ZlciAyMDAgY291bnRyaWVzICZhbXA7YW1wOyByZWdpb25zLiI7czoxMDoiYmFja2dyb3VuZCI7czo5OiJiZy1vcmFuZ2UiO30=', 39, 0),
(8073, 'content', 'icon_box.FiwopW', 'YToxNTp7czo0OiJyYW5kIjtzOjE5OiIwLjE4MDM1MTkwMDQxNzMyODYzIjtzOjY6Im1vZHVsZSI7czoxNToiaWNvbl9ib3guRml3b3BXIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNToiaWNvbl9ib3guRml3b3BXIjtzOjU6Ind0eXBlIjtzOjg6Imljb25fYm94IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiU2FmZSBQYXltZW50IjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJTYWZlIFBheW1lbnQiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJTYWZlIFBheW1lbnQiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6ODoiaWNvbmZpbGUiO3M6MDoiIjtzOjk6Imljb25jbGFzcyI7czoyMjoiem1kaSB6bWRpLWxvY2stb3V0bGluZSI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo2MzoiUGF5IHdpdGggdGhlIHdvcmxk4oCZcyBtb3N0IHBvcHVsYXIgYW5kIHNlY3VyZSBwYXltZW50IG1ldGhvZHMuIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjYzOiJQYXkgd2l0aCB0aGUgd29ybGTigJlzIG1vc3QgcG9wdWxhciBhbmQgc2VjdXJlIHBheW1lbnQgbWV0aG9kcy4iO3M6MTA6ImJhY2tncm91bmQiO3M6MTA6ImJnLXByaW1hcnkiO30=', 39, 0),
(8068, 'content', 'bloglatest.5LBNxd', 'YToxNDp7czo0OiJyYW5kIjtzOjE3OiIwLjQ3MzM1MjYwODU5NDkyOCI7czo2OiJtb2R1bGUiO3M6MTc6ImJsb2dsYXRlc3QuNUxCTnhkIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNzoiYmxvZ2xhdGVzdC41TEJOeGQiO3M6NToid3R5cGUiO3M6MTA6ImJsb2dsYXRlc3QiO3M6MTE6IndpZGdldF9uYW1lIjtzOjEyOiJMYXRlc3QgYmxvZ3MiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTI6IkxhdGVzdCBibG9ncyI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6IkxhdGVzdCBibG9ncyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjIwOiJibG9nLXYyIG5vLXNwYWNlLXJvdyI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjMiO3M6NToid2lkdGgiO3M6MzoiODcwIjtzOjY6ImhlaWdodCI7czozOiI0OTkiO3M6NDoiY29scyI7czoxOiIzIjt9', 39, 0),
(8069, 'content', 'featured_category.uccgsf', 'YToxNDp7czo0OiJyYW5kIjtzOjE4OiIwLjU4MDQ2NjYzODkyMzEyODgiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS51Y2Nnc2YiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS51Y2Nnc2YiO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyNDoiRmVhdHVyZWQgUmVjb21tZW5kYXRpb25zIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjI0OiJGZWF0dXJlZCBSZWNvbW1lbmRhdGlvbnMiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjI0OiJGZWF0dXJlZCBSZWNvbW1lbmRhdGlvbnMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTk6ImNhdGVnb3JpZXNfZmVhdHVyZWQiO2E6Njp7aTowO2E6Mjp7czo1OiJpbWFnZSI7czozODoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvZmVhdHVyZWQvaW1nMS5qcGciO3M6MjoiaWQiO3M6MjoiMjAiO31pOjE7YToyOntzOjU6ImltYWdlIjtzOjM4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9mZWF0dXJlZC9pbWcyLmpwZyI7czoyOiJpZCI7czoyOiIyNSI7fWk6MjthOjI6e3M6NToiaW1hZ2UiO3M6Mzg6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2ZlYXR1cmVkL2ltZzMuanBnIjtzOjI6ImlkIjtzOjI6IjE4Ijt9aTozO2E6Mjp7czo1OiJpbWFnZSI7czozODoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvZmVhdHVyZWQvaW1nNC5qcGciO3M6MjoiaWQiO3M6MjoiMzMiO31pOjQ7YToyOntzOjU6ImltYWdlIjtzOjM4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9mZWF0dXJlZC9pbWc1LmpwZyI7czoyOiJpZCI7czoyOiIxNyI7fWk6NTthOjI6e3M6NToiaW1hZ2UiO3M6Mzg6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2ZlYXR1cmVkL2ltZzYuanBnIjtzOjI6ImlkIjtzOjI6IjI0Ijt9fXM6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjEzMCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjE0MyI7czo0OiJjb2xzIjtzOjE6IjYiO30=', 39, 0),
(8070, 'content', 'icon_box.8vako2', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjgzNDU0MTc5NzQ3MDc2NzYiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC44dmFrbzIiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC44dmFrbzIiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjEyOiJTYWZlIFBheW1lbnQiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6IlNhZmUgUGF5bWVudCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTI6IlNhZmUgUGF5bWVudCI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12MS5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo3OToiJmx0O3AmZ3Q7UGF5IHdpdGggdGhlIHdvcmxkcyBtb3N0IHBvcHVsYXIgYW5kIHNlY3VyZSBwYXltZW50IG1ldGhvZHMuJmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo3OToiJmx0O3AmZ3Q7UGF5IHdpdGggdGhlIHdvcmxkcyBtb3N0IHBvcHVsYXIgYW5kIHNlY3VyZSBwYXltZW50IG1ldGhvZHMuJmx0Oy9wJmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYyIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 39, 0),
(8071, 'content', 'icon_box.8wJ50j', 'YToxNzp7czo0OiJyYW5kIjtzOjE3OiIwLjY3MTMzNjc5MjYzMDU1NCI7czo2OiJtb2R1bGUiO3M6MTU6Imljb25fYm94Ljh3SjUwaiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTU6Imljb25fYm94Ljh3SjUwaiI7czo1OiJ3dHlwZSI7czo4OiJpY29uX2JveCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTg6Ildvcmxkd2lkZSBEZWxpdmVyeSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxODoiV29ybGR3aWRlIERlbGl2ZXJ5IjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxODoiV29ybGR3aWRlIERlbGl2ZXJ5IjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjg6Imljb25maWxlIjtzOjMyOiJjYXRhbG9nL2RlbW8vbW9kdWxlL21pY29uLXYyLnBuZyI7czo5OiJpY29uY2xhc3MiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjkwOiImbHQ7cCZndDtXaXRoIHNpdGVzIGluIDUgbGFuZ3VhZ2VzLCB3ZSBzaGlwIHRvIG92ZXIgMjAwIGNvdW50cmllcyAmYW1wOyByZWdpb25zLiZsdDsvcCZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6OTA6IiZsdDtwJmd0O1dpdGggc2l0ZXMgaW4gNSBsYW5ndWFnZXMsIHdlIHNoaXAgdG8gb3ZlciAyMDAgY291bnRyaWVzICZhbXA7IHJlZ2lvbnMuJmx0Oy9wJmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYyIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 39, 0),
(15750, 'content', 'product_list.sqby8Z', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjk2OTI2NTkxNjkwMTMzNDEiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3Quc3FieThaIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LnNxYnk4WiI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNDoiUHJvZHVjdCBMYXRlc3QiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTQ6IlByb2R1Y3QgTGF0ZXN0IjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNDoiUHJvZHVjdCBMYXRlc3QiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxNzoicGFuZWwtdjIgbWFyZ2luLTAiO3M6NToibGltaXQiO3M6MjoiMTYiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI4IjtzOjQ6ImNvbHMiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiI1MDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjUwMCI7czo5OiJsaXN0X3R5cGUiO3M6NjoibGF0ZXN0IjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 64, 0),
(15742, 'content', 'icon_box.2Uk0Ji', 'YToxNTp7czo0OiJyYW5kIjtzOjE4OiIwLjY4MTQxMTgxMjQ1OTU4NjUiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC4yVWswSmkiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC4yVWswSmkiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjEyOiJTdXBwb3J0IDI0LzciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTI6IlN1cHBvcnQgMjQvNyI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6IlN1cHBvcnQgMjQvNyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL21vZHVsZS9pY29uLWJveDEucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MTY1OiImbHQ7aDUmZ3Q7d2Ugc3VwcG9ydCAyNC83Jmx0Oy9oNSZndDsNCiZsdDtkaXYgY2xhc3M9JnF1b3Q7ZGVzY3JpcHRpb24mcXVvdDsmZ3Q7MjQtNyBzZXJ2aWNlIGlzIHNlcnZpY2UgdGhhdCBpcyBhdmFpbGFibGUgYW55IHRpbWUgYW5kLCB1c3VhbGx5LCBldmVyeSBkYXkmbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MTY1OiImbHQ7aDUmZ3Q7d2Ugc3VwcG9ydCAyNC83Jmx0Oy9oNSZndDsNCiZsdDtkaXYgY2xhc3M9JnF1b3Q7ZGVzY3JpcHRpb24mcXVvdDsmZ3Q7MjQtNyBzZXJ2aWNlIGlzIHNlcnZpY2UgdGhhdCBpcyBhdmFpbGFibGUgYW55IHRpbWUgYW5kLCB1c3VhbGx5LCBldmVyeSBkYXkmbHQ7L2RpdiZndDsiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 64, 0),
(15743, 'content', 'icon_box.EYq5UJ', 'YToxNTp7czo0OiJyYW5kIjtzOjE4OiIwLjgwNTY0NjYyODQ4NDY4NTQiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5FWXE1VUoiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5FWXE1VUoiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE2OiJTaGlwcGluZyBzZXJ2aWNlIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE2OiJTaGlwcGluZyBzZXJ2aWNlIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNjoiU2hpcHBpbmcgc2VydmljZSI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL21vZHVsZS9pY29uLWJveDMucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MTcyOiImbHQ7aDUmZ3Q7RXhwcmVzcyBTaGlwcGluZyZsdDsvaDUmZ3Q7DQombHQ7ZGl2IGNsYXNzPSZxdW90O2Rlc2NyaXB0aW9uJnF1b3Q7Jmd0O05lZWQgeW91ciBwYXJjZWwgdG8gYXJyaXZlIHRvbW9ycm93PyBTaW1wbGUgYW5kIGNvc3QtZWZmZWN0aXZlIG5leHQgYnVzaW5lc3MgZGF5Jmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8xIjtzOjE3MjoiJmx0O2g1Jmd0O0V4cHJlc3MgU2hpcHBpbmcmbHQ7L2g1Jmd0Ow0KJmx0O2RpdiBjbGFzcz0mcXVvdDtkZXNjcmlwdGlvbiZxdW90OyZndDtOZWVkIHlvdXIgcGFyY2VsIHRvIGFycml2ZSB0b21vcnJvdz8gU2ltcGxlIGFuZCBjb3N0LWVmZmVjdGl2ZSBuZXh0IGJ1c2luZXNzIGRheSZsdDsvZGl2Jmd0OyI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=', 64, 0),
(15744, 'content', 'icon_box.FzE1od', 'YToxNTp7czo0OiJyYW5kIjtzOjE3OiIwLjMzOTkxMzkyODMxNTg0MSI7czo2OiJtb2R1bGUiO3M6MTU6Imljb25fYm94LkZ6RTFvZCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTU6Imljb25fYm94LkZ6RTFvZCI7czo1OiJ3dHlwZSI7czo4OiJpY29uX2JveCI7czoxMToid2lkZ2V0X25hbWUiO3M6MjM6IlJldHVybnMgJmFtcDsgRXhjaGFuZ2VzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjIzOiJSZXR1cm5zICZhbXA7IEV4Y2hhbmdlcyI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MjM6IlJldHVybnMgJmFtcDsgRXhjaGFuZ2VzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjg6Imljb25maWxlIjtzOjMzOiJjYXRhbG9nL2RlbW8vbW9kdWxlL2ljb24tYm94Mi5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czoxODM6IiZsdDtoNSZndDtGcmVlIFJldHVybnMmbHQ7L2g1Jmd0Ow0KJmx0O2RpdiBjbGFzcz0mcXVvdDtkZXNjcmlwdGlvbiZxdW90OyZndDtHZXQgYSBGUkVFIHJldHVybiBzaGlwcGluZyBsYWJlbCBhbmQgYSBCT05VUyAkNSBjcmVkaXQgeW91IGNhbiB1c2UgdG93YXJkIGZpbmRpbmcgc29tZXRoaW5nIC4uLiZsdDsvZGl2Jmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czoxODM6IiZsdDtoNSZndDtGcmVlIFJldHVybnMmbHQ7L2g1Jmd0Ow0KJmx0O2RpdiBjbGFzcz0mcXVvdDtkZXNjcmlwdGlvbiZxdW90OyZndDtHZXQgYSBGUkVFIHJldHVybiBzaGlwcGluZyBsYWJlbCBhbmQgYSBCT05VUyAkNSBjcmVkaXQgeW91IGNhbiB1c2UgdG93YXJkIGZpbmRpbmcgc29tZXRoaW5nIC4uLiZsdDsvZGl2Jmd0OyI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=', 64, 0),
(15745, 'content', 'image.8N3WB4', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjc5OTc3NDU4NTA1NjYzMjkiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS44TjNXQjQiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS44TjNXQjQiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMTEuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjEiO30=', 64, 0),
(16128, 'content', 'image.tNFUtE', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjYzNTUxMzM2MjExNzA1MzkiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS50TkZVdEUiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS50TkZVdEUiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMTMuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjEiO30=', 65, 0),
(16126, 'content', 'image.RaW9Gw', 'YToxOTp7czo0OiJyYW5kIjtzOjE5OiIwLjQ5NTM0MjE3OTU4MDI0NTczIjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuUmFXOUd3IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuUmFXOUd3IjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJpbWciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MzoiaW1nIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjI5OiJjYXRhbG9nL2RlbW8vYmFubmVycy9ibjE0LmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIxIjt9', 65, 0),
(16127, 'content', 'image.tmUlmh', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjM0NzkwOTIxMjYxNjk3MTciO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS50bVVsbWgiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS50bVVsbWgiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMTIuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjEiO30=', 65, 0),
(16125, 'content', 'image.P9UkBp', 'YToxOTp7czo0OiJyYW5kIjtzOjIwOiIwLjAyNDg0NDk0NDQ5MTExMjA3NSI7czo2OiJtb2R1bGUiO3M6MTI6ImltYWdlLlA5VWtCcCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTI6ImltYWdlLlA5VWtCcCI7czo1OiJ3dHlwZSI7czo1OiJpbWFnZSI7czoxMToid2lkZ2V0X25hbWUiO3M6MzoiaW1nIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MzoiaW1nIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czoyOToiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYm4xMS5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjAiO3M6NDoibGluayI7czoxOiIjIjtzOjEzOiJkZXNjcmlwdGlvbl8yIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMSI7czowOiIiO3M6ODoic2hvd19kZXMiO3M6MToiMCI7fQ==', 65, 0),
(16124, 'content', 'image.5EUkku', 'YToxOTp7czo0OiJyYW5kIjtzOjE5OiIwLjIxODg5NjU3NzI3MjI3MzYzIjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuNUVVa2t1IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuNUVVa2t1IjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJpbWciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MzoiaW1nIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjI4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9ibjkuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIwIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjAiO30=', 65, 0),
(9398, 'content', 'call_to_action.sxFUCo', 'YToyMzp7czo0OiJyYW5kIjtzOjE4OiIwLjMxODcxNDk0NTAwNDMyNDUiO3M6NjoibW9kdWxlIjtzOjIxOiJjYWxsX3RvX2FjdGlvbi5zeEZVQ28iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjIxOiJjYWxsX3RvX2FjdGlvbi5zeEZVQ28iO3M6NToid3R5cGUiO3M6MTQ6ImNhbGxfdG9fYWN0aW9uIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyNDoiSW5zcGlyYXRvbiBmcm9tIGNrbmlnaHR6IjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjI0OiJJbnNwaXJhdG9uIGZyb20gY2tuaWdodHoiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjI0OiJJbnNwaXJhdG9uIGZyb20gY2tuaWdodHoiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6ODoiaWNvbmZpbGUiO3M6MDoiIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MTQxOiJEaXNjb3ZlciB0aGUgYmVzdCBjb2xsZWN0aW9uIGZvciBhdXR1bW4gb2YgU3R5bGlzdCBDa25pZ2h0eiBBcnQuIFdpdGggc28gY2hhcm1pbmcsIG1vZGVybiBhbmQgcGFzc2lvbmF0ZSwgeW91IGNlcnRhaW5seSBsb3ZlIHRoaXMgY29sbGVjdGlvbi4iO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MTQxOiJEaXNjb3ZlciB0aGUgYmVzdCBjb2xsZWN0aW9uIGZvciBhdXR1bW4gb2YgU3R5bGlzdCBDa25pZ2h0eiBBcnQuIFdpdGggc28gY2hhcm1pbmcsIG1vZGVybiBhbmQgcGFzc2lvbmF0ZSwgeW91IGNlcnRhaW5seSBsb3ZlIHRoaXMgY29sbGVjdGlvbi4iO3M6MTM6InRleHRfbGlua18xXzIiO3M6MjA6ImV4cGxvcmUgb3VyIHByb2R1Y3RzIjtzOjEzOiJ0ZXh0X2xpbmtfMV8xIjtzOjIwOiJleHBsb3JlIG91ciBwcm9kdWN0cyI7czo4OiJsaW5rXzFfMiI7czoxOiIjIjtzOjg6ImxpbmtfMV8xIjtzOjE6IiMiO3M6MTM6InRleHRfbGlua18yXzIiO3M6MDoiIjtzOjEzOiJ0ZXh0X2xpbmtfMl8xIjtzOjA6IiI7czo4OiJsaW5rXzJfMiI7czowOiIiO3M6ODoibGlua18yXzEiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7fQ==', 66, 0),
(9399, 'content', 'image.8bnpbb', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjg1ODk4MDE2MjE1NDY2MjkiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS44Ym5wYmIiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS44Ym5wYmIiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMTEuanBnIjtzOjQ6InNpemUiO3M6NDoiZnVsbCI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjE6IiMiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjt9', 66, 0),
(9400, 'content', 'image.K53s9Q', 'YToxOTp7czo0OiJyYW5kIjtzOjE3OiIwLjgxNzE5MTE2NzgxODI5OSI7czo2OiJtb2R1bGUiO3M6MTI6ImltYWdlLks1M3M5USI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTI6ImltYWdlLks1M3M5USI7czo1OiJ3dHlwZSI7czo1OiJpbWFnZSI7czoxMToid2lkZ2V0X25hbWUiO3M6MDoiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czoyOToiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYm4xMy5qcGciO3M6NDoic2l6ZSI7czo0OiJmdWxsIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIwIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjAiO30=', 66, 0),
(9401, 'content', 'image.nKWaId', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjk1MzYxMjIyMDY5NTUyNDQiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5uS1dhSWQiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5uS1dhSWQiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMTQuanBnIjtzOjQ6InNpemUiO3M6NDoiZnVsbCI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjE6IiMiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjt9', 66, 0),
(9402, 'content', 'image.vKE0PF', 'YToxOTp7czo0OiJyYW5kIjtzOjE5OiIwLjI3MjkxMTExNjg2MzE5NjEzIjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UudktFMFBGIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UudktFMFBGIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjI5OiJjYXRhbG9nL2RlbW8vYmFubmVycy9ibjEyLmpwZyI7czo0OiJzaXplIjtzOjQ6ImZ1bGwiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjAiO3M6NDoibGluayI7czoxOiIjIjtzOjEzOiJkZXNjcmlwdGlvbl8yIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMSI7czowOiIiO3M6ODoic2hvd19kZXMiO3M6MToiMCI7fQ==', 66, 0),
(9403, 'content', 'manufacture.w4O7Zt', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjUzNTQ3NDAwNzQzNzY5MzgiO3M6NjoibW9kdWxlIjtzOjE4OiJtYW51ZmFjdHVyZS53NE83WnQiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE4OiJtYW51ZmFjdHVyZS53NE83WnQiO3M6NToid3R5cGUiO3M6MTE6Im1hbnVmYWN0dXJlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo0OiJsb2dvIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjY6InRhcmdldCI7czoxOiI4IjtzOjU6ImxpbWl0IjtzOjI6IjEyIjtzOjc6ImNvbHVtbnMiO3M6MToiNiI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjYiO3M6NToid2lkdGgiO3M6MzoiMTcwIjtzOjY6ImhlaWdodCI7czozOiIxMDAiO30=', 66, 0),
(9404, 'content', 'product_tabs.m4zu0i', 'YToyOTp7czo0OiJyYW5kIjtzOjE5OiIwLjQ1NTk0MjE2MDY4MzA2MjI2IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF90YWJzLm00enUwaSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfdGFicy5tNHp1MGkiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfdGFicyI7czoxMToid2lkZ2V0X25hbWUiO3M6MTM6IkV4cGxvcmUgSXRlbXMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTM6IkV4cGxvcmUgSXRlbXMiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEzOiJFeHBsb3JlIEl0ZW1zIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6InN1Yl90aXRsZSI7czowOiIiO3M6NToibGltaXQiO3M6MjoiMTYiO3M6NjoiY29sdW1uIjtzOjE6IjQiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI4IjtzOjExOiJpY29uX25ld2VzdCI7czowOiIiO3M6MTM6ImVuYWJsZV9uZXdlc3QiO3M6MToiMSI7czoxMzoiaWNvbl9mZWF0dXJlZCI7czowOiIiO3M6MTA6InByb2R1Y3RfaWQiO3M6MDoiIjtzOjE1OiJlbmFibGVfZmVhdHVyZWQiO3M6MToiMCI7czoxNToiaWNvbl9iZXN0c2VsbGVyIjtzOjA6IiI7czoxNzoiZW5hYmxlX2Jlc3RzZWxsZXIiO3M6MToiMSI7czoxMjoiaWNvbl9zcGVjaWFsIjtzOjA6IiI7czoxNDoiZW5hYmxlX3NwZWNpYWwiO3M6MToiMSI7czoxNDoiaWNvbl9tb3N0dmlld3MiO3M6MDoiIjtzOjE2OiJlbmFibGVfbW9zdHZpZXdzIjtzOjE6IjEiO3M6OToidGFic3N0eWxlIjtzOjY6InRhYi12MSI7czoxMToiaW1hZ2Vfd2lkdGgiO3M6MzoiNDgwIjtzOjEyOiJpbWFnZV9oZWlnaHQiO3M6MzoiNjE3IjtzOjk6ImF1dG9fcGxheSI7czo0OiIzMDAwIjt9', 66, 0),
(9397, 'content', 'bloglatest.nIBHw5', 'YToxNTp7czo0OiJyYW5kIjtzOjE4OiIwLjc1MTg0MDI3MjExODY3MjEiO3M6NjoibW9kdWxlIjtzOjE3OiJibG9nbGF0ZXN0Lm5JQkh3NSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTc6ImJsb2dsYXRlc3QubklCSHc1IjtzOjU6Ind0eXBlIjtzOjEwOiJibG9nbGF0ZXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMzoiZnJvbSB0aGUgYmxvZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMzoiZnJvbSB0aGUgYmxvZyI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTM6ImZyb20gdGhlIGJsb2ciO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToic3ViX3RpdGxlIjtzOjQzOiJCcm93c2UgcXVhIHRoZSBmb2xsb3dpbmcgcHJvZHVjdCBuZXcgdGhlIHdlIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiMyI7czo1OiJ3aWR0aCI7czozOiI4NzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjYzOCI7czo0OiJjb2xzIjtzOjE6IjMiO30=', 66, 0),
(9750, 'content', 'product_list.WZx7As', 'YToxODp7czo0OiJyYW5kIjtzOjE5OiIwLjQzMDI0ODI2NTAxNDI5ODQ3IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LldaeDdBcyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5XWng3QXMiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6ODoiVG9wIHJhdGUiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6ODoiVG9wIHJhdGUiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjg6IlRvcCByYXRlIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6Nzoic3BlY2lhbCI7czo5OiJzdWJfdGl0bGUiO3M6MDoiIjtzOjU6ImxpbWl0IjtzOjE6IjMiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czozOiI0ODAiO3M6NjoiaGVpZ2h0IjtzOjM6IjYxNyI7czo5OiJsaXN0X3R5cGUiO3M6OToidG9wcmF0aW5nIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 67, 0);
INSERT INTO `oc_pavwidget` (`pavwidget_id`, `name`, `code`, `setting`, `module_id`, `key`) VALUES
(9749, 'content', 'product_list.WBX5Jl', 'YToxODp7czo0OiJyYW5kIjtzOjE5OiIwLjA5NDI2MTI0NDczMDgzOTA4IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LldCWDVKbCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5XQlg1SmwiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6NzoiUG9wdWxhciI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czo3OiJQb3B1bGFyIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czo3OiJQb3B1bGFyIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6Nzoic3BlY2lhbCI7czo5OiJzdWJfdGl0bGUiO3M6MDoiIjtzOjU6ImxpbWl0IjtzOjE6IjMiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czozOiI0ODAiO3M6NjoiaGVpZ2h0IjtzOjM6IjYxNyI7czo5OiJsaXN0X3R5cGUiO3M6NzoicG9wdWxhciI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 67, 0),
(9747, 'content', 'product_list.31eZoN', 'YToxODp7czo0OiJyYW5kIjtzOjE3OiIwLjg2OTE0MTU5ODI0MzM0MyI7czo2OiJtb2R1bGUiO3M6MTk6InByb2R1Y3RfbGlzdC4zMWVab04iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE5OiJwcm9kdWN0X2xpc3QuMzFlWm9OIjtzOjU6Ind0eXBlIjtzOjEyOiJwcm9kdWN0X2xpc3QiO3M6MTE6IndpZGdldF9uYW1lIjtzOjg6IlNhbGUgb2ZmIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjg6IlNhbGUgb2ZmIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czo4OiJTYWxlIG9mZiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjc6InNwZWNpYWwiO3M6OToic3ViX3RpdGxlIjtzOjA6IiI7czo1OiJsaW1pdCI7czoxOiIzIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiMyI7czo0OiJjb2xzIjtzOjE6IjEiO3M6NToid2lkdGgiO3M6MzoiNDgwIjtzOjY6ImhlaWdodCI7czozOiI2MTciO3M6OToibGlzdF90eXBlIjtzOjc6InNwZWNpYWwiO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7fQ==', 67, 0),
(9748, 'content', 'product_list.a9JrMC', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjUwNTM4NTAyNDg5Mzc2NjQiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuYTlKck1DIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LmE5SnJNQyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiQmVzdHNlbGxlciI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMDoiQmVzdHNlbGxlciI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTA6IkJlc3RzZWxsZXIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToic3ViX3RpdGxlIjtzOjQzOiJCcm93c2UgcXVhIHRoZSBmb2xsb3dpbmcgcHJvZHVjdCBuZXcgdGhlIHdlIjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiI0ODAiO3M6NjoiaGVpZ2h0IjtzOjM6IjYxNyI7czo5OiJsaXN0X3R5cGUiO3M6MTA6ImJlc3RzZWxsZXIiO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7fQ==', 67, 0),
(9743, 'content', 'image.OA6xjM', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjE4Mjk1NTI1MTIwMTU5MTUiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5PQTZ4ak0iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5PQTZ4ak0iO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMTUuanBnIjtzOjQ6InNpemUiO3M6NDoiZnVsbCI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjE6IiMiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjt9', 67, 0),
(9744, 'content', 'image.Qc0wgX', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjQ0MTI0MzY1MjE3NjAwNDYiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5RYzB3Z1giO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5RYzB3Z1giO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMTYuanBnIjtzOjQ6InNpemUiO3M6NDoiZnVsbCI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjE6IiMiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjt9', 67, 0),
(9745, 'content', 'image.u1bPcX', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjcxODc3NjM5OTgzMjA3MzgiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS51MWJQY1giO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS51MWJQY1giO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMTkuanBnIjtzOjQ6InNpemUiO3M6NDoiZnVsbCI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjt9', 67, 0),
(9746, 'content', 'manufacture.zQ2xXq', 'YToxNjp7czo0OiJyYW5kIjtzOjE3OiIwLjc5MDUxOTMyMzg0MzE3NiI7czo2OiJtb2R1bGUiO3M6MTg6Im1hbnVmYWN0dXJlLnpRMnhYcSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTg6Im1hbnVmYWN0dXJlLnpRMnhYcSI7czo1OiJ3dHlwZSI7czoxMToibWFudWZhY3R1cmUiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo2OiJ0YXJnZXQiO3M6MToiOCI7czo1OiJsaW1pdCI7czoxOiI2IjtzOjc6ImNvbHVtbnMiO3M6MToiNiI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjYiO3M6NToid2lkdGgiO3M6MzoiMTcwIjtzOjY6ImhlaWdodCI7czozOiIxMDAiO30=', 67, 0),
(9737, 'content', 'icon_box.4wW0qQ', 'YToxNTp7czo0OiJyYW5kIjtzOjE4OiIwLjk0NjcyNTM5MjE0NDUxOTMiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC40d1cwcVEiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC40d1cwcVEiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjEyOiJzYWZlIHBheW1lbnQiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTI6InNhZmUgcGF5bWVudCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6InNhZmUgcGF5bWVudCI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czowOiIiO3M6OToiaWNvbmNsYXNzIjtzOjEzOiJmYSBmYS1yZWN5Y2xlIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjYwOiJQYXkgd2l0aCB0aGUgd29ybGRzIG1vc3QgcG9wdWxhciBhbmQgc2VjdXJlIHBheW1lbnQgbWV0aG9kcy4iO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6NjA6IlBheSB3aXRoIHRoZSB3b3JsZHMgbW9zdCBwb3B1bGFyIGFuZCBzZWN1cmUgcGF5bWVudCBtZXRob2RzLiI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=', 67, 0),
(9738, 'content', 'icon_box.Goc50T', 'YToxNTp7czo0OiJyYW5kIjtzOjE5OiIwLjE3MDEwNTE2MjI0Njk1MDk0IjtzOjY6Im1vZHVsZSI7czoxNToiaWNvbl9ib3guR29jNTBUIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNToiaWNvbl9ib3guR29jNTBUIjtzOjU6Ind0eXBlIjtzOjg6Imljb25fYm94IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxODoid29ybGR3aWRlIGRlbGl2ZXJ5IjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE4OiJ3b3JsZHdpZGUgZGVsaXZlcnkiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE4OiJ3b3JsZHdpZGUgZGVsaXZlcnkiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6ODoiaWNvbmZpbGUiO3M6MDoiIjtzOjk6Imljb25jbGFzcyI7czoxMToiZmEgZmEtdHJ1Y2siO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6NzQ6IldpdGggc2l0ZXMgaW4gNSBsYW5ndWFnZXMsIHdlIHNoaXAgdG8gb3ZlciAyMDAgY291bnRyaWVzICZhbXA7YW1wOyByZWdpb25zIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjc0OiJXaXRoIHNpdGVzIGluIDUgbGFuZ3VhZ2VzLCB3ZSBzaGlwIHRvIG92ZXIgMjAwIGNvdW50cmllcyAmYW1wO2FtcDsgcmVnaW9ucyI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=', 67, 0),
(9739, 'content', 'icon_box.XpnB8G', 'YToxNTp7czo0OiJyYW5kIjtzOjE4OiIwLjkzMzI2MDg0NzczMTM5NDgiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5YcG5COEciO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5YcG5COEciO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE2OiIyNC83IGhlbHAgY2VudGVyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE2OiIyNC83IGhlbHAgY2VudGVyIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNjoiMjQvNyBoZWxwIGNlbnRlciI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czowOiIiO3M6OToiaWNvbmNsYXNzIjtzOjE0OiJmYSBmYS1idWxsaG9ybiI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo1OToiUm91bmQtdGhlLWNsb2NrIGFzc2lzdGFuY2UgZm9yIGEgYW1vb3RoIHNob3BwaW5nIGV4cGVyaWVuY2UiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6NTk6IlJvdW5kLXRoZS1jbG9jayBhc3Npc3RhbmNlIGZvciBhIGFtb290aCBzaG9wcGluZyBleHBlcmllbmNlIjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 67, 0),
(9742, 'content', 'image.ku90iH', 'YToxOTp7czo0OiJyYW5kIjtzOjE5OiIwLjE2NDA0ODE1MDQwOTY3MjQ3IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2Uua3U5MGlIIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2Uua3U5MGlIIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjI5OiJjYXRhbG9nL2RlbW8vYmFubmVycy9ibjE3LmpwZyI7czo0OiJzaXplIjtzOjQ6ImZ1bGwiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjAiO3M6NDoibGluayI7czoxOiIjIjtzOjEzOiJkZXNjcmlwdGlvbl8yIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMSI7czowOiIiO3M6ODoic2hvd19kZXMiO3M6MToiMCI7fQ==', 67, 0),
(9740, 'content', 'icon_box.Z4AZhB', 'YToxNTp7czo0OiJyYW5kIjtzOjE5OiIwLjE0MTg5Mjc4Nzk1NjYwNDU0IjtzOjY6Im1vZHVsZSI7czoxNToiaWNvbl9ib3guWjRBWmhCIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNToiaWNvbl9ib3guWjRBWmhCIjtzOjU6Ind0eXBlIjtzOjg6Imljb25fYm94IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNToiRGFpbHkgcHJvbW90aW9uIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE1OiJEYWlseSBwcm9tb3Rpb24iO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE1OiJEYWlseSBwcm9tb3Rpb24iO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6ODoiaWNvbmZpbGUiO3M6MDoiIjtzOjk6Imljb25jbGFzcyI7czoyMDoiZmEgZmEtZ3JhZHVhdGlvbi1jYXAiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6NTI6IkdldCBhIG5ldyBncmVhdCBib251cyBldmVyeSBkYXkuIENoZWNrIG91dCB0aGUgY29nZW4iO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6NTI6IkdldCBhIG5ldyBncmVhdCBib251cyBldmVyeSBkYXkuIENoZWNrIG91dCB0aGUgY29nZW4iO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 67, 0),
(9741, 'content', 'image.9ICbBt', 'YToxOTp7czo0OiJyYW5kIjtzOjE3OiIwLjIzODc4ODUwMjE4NjU3NyI7czo2OiJtb2R1bGUiO3M6MTI6ImltYWdlLjlJQ2JCdCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTI6ImltYWdlLjlJQ2JCdCI7czo1OiJ3dHlwZSI7czo1OiJpbWFnZSI7czoxMToid2lkZ2V0X25hbWUiO3M6MDoiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czoyOToiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYm4xOC5qcGciO3M6NDoic2l6ZSI7czo0OiJmdWxsIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIwIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjAiO30=', 67, 0),
(9770, 'content', 'product_tabs.PCCCGS', 'YToyOTp7czo0OiJyYW5kIjtzOjE4OiIwLjQxOTgxMTkzODk5MDA3MTIiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X3RhYnMuUENDQ0dTIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF90YWJzLlBDQ0NHUyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF90YWJzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMzoiRXhwbG9yZSBJdGVtcyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMzoiRXhwbG9yZSBJdGVtcyI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTM6IkV4cGxvcmUgSXRlbXMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo3OiJzcGVjaWFsIjtzOjk6InN1Yl90aXRsZSI7czowOiIiO3M6NToibGltaXQiO3M6MToiMyI7czo2OiJjb2x1bW4iO3M6MToiMyI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjMiO3M6MTE6Imljb25fbmV3ZXN0IjtzOjA6IiI7czoxMzoiZW5hYmxlX25ld2VzdCI7czoxOiIxIjtzOjEzOiJpY29uX2ZlYXR1cmVkIjtzOjA6IiI7czoxMDoicHJvZHVjdF9pZCI7czowOiIiO3M6MTU6ImVuYWJsZV9mZWF0dXJlZCI7czoxOiIwIjtzOjE1OiJpY29uX2Jlc3RzZWxsZXIiO3M6MDoiIjtzOjE3OiJlbmFibGVfYmVzdHNlbGxlciI7czoxOiIxIjtzOjEyOiJpY29uX3NwZWNpYWwiO3M6MDoiIjtzOjE0OiJlbmFibGVfc3BlY2lhbCI7czoxOiIxIjtzOjE0OiJpY29uX21vc3R2aWV3cyI7czowOiIiO3M6MTY6ImVuYWJsZV9tb3N0dmlld3MiO3M6MToiMSI7czo5OiJ0YWJzc3R5bGUiO3M6NjoidGFiLXYxIjtzOjExOiJpbWFnZV93aWR0aCI7czozOiI0ODAiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiI2MTciO3M6OToiYXV0b19wbGF5IjtzOjQ6IjMwMDAiO30=', 68, 0),
(9768, 'content', 'product_deal_v2.b9BGxu', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjUwMzc5MjY1MTY1ODAwODkiO3M6NjoibW9kdWxlIjtzOjIyOiJwcm9kdWN0X2RlYWxfdjIuYjlCR3h1IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyMjoicHJvZHVjdF9kZWFsX3YyLmI5Qkd4dSI7czo1OiJ3dHlwZSI7czoxNToicHJvZHVjdF9kZWFsX3YyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMToiVG9kYXkgZGVhbHMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTM6IlRvZGF5J3MgZGVhbHMiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEzOiJUb2RheSdzIGRlYWxzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6Nzoic3BlY2lhbCI7czo5OiJzdWJfdGl0bGUiO3M6MDoiIjtzOjEwOiJzdGFydF9kYXRlIjtzOjEwOiIyMDE0LTA0LTExIjtzOjg6ImVuZF9kYXRlIjtzOjEwOiIyMDIwLTA0LTExIjtzOjU6ImxpbWl0IjtzOjE6IjEiO3M6NDoiY29scyI7czoxOiIxIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiMSI7czo5OiJpbWdfd2lkdGgiO3M6MzoiNDgwIjtzOjEwOiJpbWdfaGVpZ2h0IjtzOjM6IjYxNyI7czoxMjoiY2F0ZWdvcnlfaWRzIjthOjE2OntpOjA7czoyOiIzNSI7aToxO3M6MjoiMzYiO2k6MjtzOjI6IjQ2IjtpOjM7czoyOiIyMCI7aTo0O3M6MjoiMjgiO2k6NTtzOjI6IjI5IjtpOjY7czoyOiIzMCI7aTo3O3M6MjoiMzEiO2k6ODtzOjI6IjMyIjtpOjk7czoyOiIxOCI7aToxMDtzOjI6IjI1IjtpOjExO3M6MjoiNTciO2k6MTI7czoyOiIxNyI7aToxMztzOjI6IjI0IjtpOjE0O3M6MjoiMzMiO2k6MTU7czoyOiIzNCI7fX0=', 68, 0),
(9769, 'content', 'product_list.2qXbYg', 'YToxODp7czo0OiJyYW5kIjtzOjE5OiIwLjIwMzQyODc1NzQxOTg0NDEyIjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LjJxWGJZZyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC4ycVhiWWciO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTA6IkJlc3RzZWxsZXIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTA6IkJlc3RzZWxsZXIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEwOiJCZXN0c2VsbGVyIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6NToiY2xhc3MiO3M6OToic3ViX3RpdGxlIjtzOjA6IiI7czo1OiJsaW1pdCI7czoxOiIzIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiMyI7czo0OiJjb2xzIjtzOjE6IjEiO3M6NToid2lkdGgiO3M6MzoiNDgwIjtzOjY6ImhlaWdodCI7czozOiI2MTciO3M6OToibGlzdF90eXBlIjtzOjEwOiJiZXN0c2VsbGVyIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 68, 0),
(9767, 'content', 'manufacture.FPXmZF', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjU4NzQwMDY5NDY3OTE4OTQiO3M6NjoibW9kdWxlIjtzOjE4OiJtYW51ZmFjdHVyZS5GUFhtWkYiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE4OiJtYW51ZmFjdHVyZS5GUFhtWkYiO3M6NToid3R5cGUiO3M6MTE6Im1hbnVmYWN0dXJlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NjoidGFyZ2V0IjtzOjE6IjgiO3M6NToibGltaXQiO3M6MToiNiI7czo3OiJjb2x1bW5zIjtzOjE6IjYiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI2IjtzOjU6IndpZHRoIjtzOjM6IjE3MCI7czo2OiJoZWlnaHQiO3M6MzoiMTAwIjt9', 68, 0),
(9761, 'content', 'categories_list.VBYEjQ', 'YToxNTp7czo0OiJyYW5kIjtzOjE4OiIwLjQzNDA5ODg4OTgxNjQ3MDgiO3M6NjoibW9kdWxlIjtzOjIyOiJjYXRlZ29yaWVzX2xpc3QuVkJZRWpRIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyMjoiY2F0ZWdvcmllc19saXN0LlZCWUVqUSI7czo1OiJ3dHlwZSI7czoxNToiY2F0ZWdvcmllc19saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiQ2F0ZWdvcmllcyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMDoiQ2F0ZWdvcmllcyI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTA6IkNhdGVnb3JpZXMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NjoiY2F0aWRzIjtzOjI2OiI0NiwyMCwxOCw1NywyNSwxNywyNCwzMywzNCI7czoxMDoiYmFubmVyX2ltZyI7czowOiIiO3M6NToid2lkdGgiO3M6MzoiMjAwIjtzOjY6ImhlaWdodCI7czozOiIyMDAiO3M6NDoibGluayI7czoxOiIjIjt9', 68, 0),
(9762, 'content', 'image.4P8pOU', 'YToxOTp7czo0OiJyYW5kIjtzOjE5OiIwLjE5MTEzODAxNjQ2MTUzMTcyIjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuNFA4cE9VIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuNFA4cE9VIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjI5OiJjYXRhbG9nL2RlbW8vYmFubmVycy9ibjIyLmpwZyI7czo0OiJzaXplIjtzOjQ6ImZ1bGwiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjAiO3M6NDoibGluayI7czoxOiIjIjtzOjEzOiJkZXNjcmlwdGlvbl8yIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMSI7czowOiIiO3M6ODoic2hvd19kZXMiO3M6MToiMCI7fQ==', 68, 0),
(9763, 'content', 'image.HOnyhV', 'YToxOTp7czo0OiJyYW5kIjtzOjE5OiIwLjM3MTA2NjgxNjM3NTcyOTM2IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuSE9ueWhWIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuSE9ueWhWIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxOToiaGlkZGVuLXNtIGhpZGRlbi14cyI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMjAuanBnIjtzOjQ6InNpemUiO3M6NDoiZnVsbCI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjE6IiMiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjt9', 68, 0),
(9764, 'content', 'image.JwJyDF', 'YToxOTp7czo0OiJyYW5kIjtzOjE5OiIwLjA4NTIxNDM1ODI2MTQ5MzA0IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuSndKeURGIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuSndKeURGIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxOToiaGlkZGVuLXNtIGhpZGRlbi14cyI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMjQuanBnIjtzOjQ6InNpemUiO3M6NDoiZnVsbCI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjE6IiMiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjt9', 68, 0),
(9766, 'content', 'image.ZvTYxT', 'YToxOTp7czo0OiJyYW5kIjtzOjE5OiIwLjI0MjQ0ODgzMTA1NDI1ODA3IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuWnZUWXhUIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuWnZUWXhUIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjI5OiJjYXRhbG9nL2RlbW8vYmFubmVycy9ibjIzLmpwZyI7czo0OiJzaXplIjtzOjQ6ImZ1bGwiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjAiO3M6NDoibGluayI7czoxOiIjIjtzOjEzOiJkZXNjcmlwdGlvbl8yIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMSI7czowOiIiO3M6ODoic2hvd19kZXMiO3M6MToiMCI7fQ==', 68, 0),
(9765, 'content', 'image.OdjwzG', 'YToxOTp7czo0OiJyYW5kIjtzOjE5OiIwLjM2MTI0NjkyMTUzNDU2Mjg0IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuT2Rqd3pHIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuT2Rqd3pHIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjI5OiJjYXRhbG9nL2RlbW8vYmFubmVycy9ibjIxLmpwZyI7czo0OiJzaXplIjtzOjQ6ImZ1bGwiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjAiO3M6NDoibGluayI7czoxOiIjIjtzOjEzOiJkZXNjcmlwdGlvbl8yIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMSI7czowOiIiO3M6ODoic2hvd19kZXMiO3M6MToiMCI7fQ==', 68, 0),
(16105, 'content', 'icon_box.Rx6k0K', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjExNzAxMTYxNzY5ODk2Njg0IjtzOjY6Im1vZHVsZSI7czoxNToiaWNvbl9ib3guUng2azBLIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNToiaWNvbl9ib3guUng2azBLIjtzOjU6Ind0eXBlIjtzOjg6Imljb25fYm94IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiU3RyZWV0IHN0eWxlIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJTdHJlZXQgc3R5bGUiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJTdHJlZXQgc3R5bGUiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6ODoiaWNvbmZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9tb2R1bGUvbWljb24tdjMucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6OTE6IiZsdDtkaXYmZ3Q7QSBjcmFmdCB0aGF0IHByaW1hcmlseSB1c2VzIGNpcmN1bGFyIGp1bXAgcmluZ3MgdG8gY29tZSB0b2dldGhlciBtYXkmbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6OTE6IiZsdDtkaXYmZ3Q7QSBjcmFmdCB0aGF0IHByaW1hcmlseSB1c2VzIGNpcmN1bGFyIGp1bXAgcmluZ3MgdG8gY29tZSB0b2dldGhlciBtYXkmbHQ7L2RpdiZndDsiO3M6MTQ6Imljb25fYm94X3N0eWxlIjtzOjE0OiJmZWF0dXJlLWJveC12MSI7czoxMDoidGV4dF9hbGlnbiI7czoxNjoiZmVhdHVyZS1ib3gtbGVmdCI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=', 33, 0),
(16103, 'content', 'icon_box.b0jWlu', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjU1OTY5MDA4MTY0NjkyODciO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5iMGpXbHUiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5iMGpXbHUiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE3OiJHZW9tZXRyaWMgSmV3ZWxyeSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNzoiR2VvbWV0cmljIEpld2VscnkiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE3OiJHZW9tZXRyaWMgSmV3ZWxyeSI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12MS5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo4ODoiJmx0O2RpdiZndDt3ZSBoYXZlIG5vdGljZWQgYSBodWdlIHRyZW5kIGluIGdlb21ldHJpYyBqZXdlbHJ5IGZvciB0aGlzIGZhbGwuICZsdDsvZGl2Jmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo4ODoiJmx0O2RpdiZndDt3ZSBoYXZlIG5vdGljZWQgYSBodWdlIHRyZW5kIGluIGdlb21ldHJpYyBqZXdlbHJ5IGZvciB0aGlzIGZhbGwuICZsdDsvZGl2Jmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYxIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 33, 0),
(16097, 'content', 'bloglatest.FUpTaf', 'YToxNDp7czo0OiJyYW5kIjtzOjE4OiIwLjI2MDQ3MjIxNTUxMTk1OTQiO3M6NjoibW9kdWxlIjtzOjE3OiJibG9nbGF0ZXN0LkZVcFRhZiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTc6ImJsb2dsYXRlc3QuRlVwVGFmIjtzOjU6Ind0eXBlIjtzOjEwOiJibG9nbGF0ZXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo0OiJibG9nIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjQ6ImJsb2ciO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjQ6ImJsb2ciO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjU6IndpZHRoIjtzOjM6IjY0MCI7czo2OiJoZWlnaHQiO3M6MzoiNTAwIjtzOjQ6ImNvbHMiO3M6MToiMyI7fQ==', 33, 0),
(16098, 'content', 'freshfooddeals.XuuWNT', 'YToyMTp7czo0OiJyYW5kIjtzOjE5OiIwLjA1MjY3OTU2NDU1MTgxMjMzIjtzOjY6Im1vZHVsZSI7czoyMToiZnJlc2hmb29kZGVhbHMuWHV1V05UIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyMToiZnJlc2hmb29kZGVhbHMuWHV1V05UIjtzOjU6Ind0eXBlIjtzOjE0OiJmcmVzaGZvb2RkZWFscyI7czoxMToid2lkZ2V0X25hbWUiO3M6MTQ6IkRlYWxzIG9mIHRvZGF5IjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE0OiJEZWFscyBvZiB0b2RheSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTQ6IkRlYWxzIG9mIHRvZGF5IjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6ODoicGFuZWwtdjEiO3M6NToibGlua3MiO2E6NTp7aTowO3M6MjoiNDYiO2k6MTtzOjI6Ijk2IjtpOjI7czoyOiI5OSI7aTozO3M6MjoiOTUiO2k6NDtzOjM6IjEwMCI7fXM6NToic3RhcnQiO3M6MTA6IjIwMTQtMDItMDUiO3M6MzoiZW5kIjtzOjEwOiIyMDE1LTExLTExIjtzOjEwOiJjYXRlZ29yaWVzIjthOjI5OntpOjA7czoyOiIzNSI7aToxO3M6MjoiMzYiO2k6MjtzOjI6IjQ2IjtpOjM7czoyOiI5MCI7aTo0O3M6MjoiOTEiO2k6NTtzOjI6IjkyIjtpOjY7czoyOiI5MyI7aTo3O3M6MjoiOTQiO2k6ODtzOjI6Ijk1IjtpOjk7czoyOiI5NiI7aToxMDtzOjI6Ijk3IjtpOjExO3M6MjoiOTgiO2k6MTI7czoyOiI5OSI7aToxMztzOjM6IjEwMCI7aToxNDtzOjM6IjEwMSI7aToxNTtzOjM6IjEwMiI7aToxNjtzOjI6IjIwIjtpOjE3O3M6MjoiMjgiO2k6MTg7czoyOiIyOSI7aToxOTtzOjI6IjMwIjtpOjIwO3M6MjoiMzEiO2k6MjE7czoyOiIzMiI7aToyMjtzOjI6IjE4IjtpOjIzO3M6MjoiMjUiO2k6MjQ7czoyOiI1NyI7aToyNTtzOjI6IjE3IjtpOjI2O3M6MjoiMjQiO2k6Mjc7czoyOiIzMyI7aToyODtzOjI6IjM0Ijt9czo2OiJzb3J0YnkiO3M6ODoibmFtZSBBU0MiO3M6NToibGltaXQiO3M6MToiNyI7czo1OiJpdGVtcyI7czoxOiIzIjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czozOiIxMDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjEwMCI7czo2OiJsYXlvdXQiO3M6ODoibGF5b3V0XzEiO30=', 33, 0),
(16099, 'content', 'gallery.cFNb8K', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjIyNTcxOTM4MTc4MjMyODEiO3M6NjoibW9kdWxlIjtzOjE0OiJnYWxsZXJ5LmNGTmI4SyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTQ6ImdhbGxlcnkuY0ZOYjhLIjtzOjU6Ind0eXBlIjtzOjc6ImdhbGxlcnkiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO2E6NDp7aTowO3M6Mjg6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuNS5qcGciO2k6MTtzOjI4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9ibjYuanBnIjtpOjI7czoyODoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYm44LmpwZyI7aTozO3M6Mjg6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuNy5qcGciO31zOjQ6InNpemUiO3M6NzoiMzcweDM3MCI7czo2OiJjb2x1bW4iO3M6MToiMSI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjEiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjEiO3M6NDoibGluayI7czoxOiIjIjt9', 33, 0),
(16100, 'content', 'html.7Eo68s', 'YToxMjp7czo0OiJyYW5kIjtzOjE3OiIwLjg5MzEzNzk5NjczMDUwNyI7czo2OiJtb2R1bGUiO3M6MTE6Imh0bWwuN0VvNjhzIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMToiaHRtbC43RW82OHMiO3M6NToid3R5cGUiO3M6NDoiaHRtbCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTQ6ImN1c3RvbSBzdXBwb3J0IjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE0OiJjdXN0b20gc3VwcG9ydCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTQ6ImN1c3RvbSBzdXBwb3J0IjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjg3NToiJmx0O2RpdiBjbGFzcz0mcXVvdDtib3gtc3VwcG9ydCB0ZXh0LWNlbnRlciZxdW90OyZndDsNCiAgICAmbHQ7ZGl2IGNsYXNzPSZxdW90O2lubmVyJnF1b3Q7Jmd0Ow0KICAgICAgICAmbHQ7ZGl2IGNsYXNzPSZxdW90O2dyZWVuIHRleHQtdXBwZXJjYXNlJnF1b3Q7IHN0eWxlPSZxdW90O2ZvbnQtd2VpZ2h0OmJvbGQ7JnF1b3Q7Jmd0Ow0KICAgICAgICAgICAgSG90bGluZSA6DQogICAgICAgICZsdDsvZGl2Jmd0Ow0KICAgICAgICAmbHQ7ZGl2IGNsYXNzPSZxdW90O3Bob25lJnF1b3Q7IHN0eWxlPSZxdW90O2ZvbnQtc2l6ZTo0OHB4O2NvbG9yOiNmZmY7Zm9udC1mYW1pbHk6RGVsaXVzIFVuaWNhc2U7JnF1b3Q7Jmd0OygrMDEpLSAxMjMgNzg5IDQ1NiZsdDsvZGl2Jmd0Ow0KICAgICAgICAmbHQ7ZGl2IGNsYXNzPSZxdW90O2Rlc2NyaXB0aW9uJnF1b3Q7IHN0eWxlPSZxdW90O2ZvbnQtc2l6ZToxNHB4O2NvbG9yOnJnYmEoMjU1LDI1NSwyNTUsMC41Nyk7bWF4LXdpZHRoOjQyMHB4O2Rpc3BsYXk6aW5saW5lLWJsb2NrJnF1b3Q7Jmd0Ow0KICAgICAgICAgICAgVHJhaW5zIHdvbWVuIHRvIHdvcmsgaW4gcHJvZmVzc2lvbmFsIGtpdGNoZW5zLCBwcm92aWRlcyBoZWFsdGh5IG1lYWxzIGZvciBjaGlsZGNhcmUgY2VudGVycywgYW5kIHVzZXMgZm9vZCAuLi4NCiAgICAgICAgJmx0Oy9kaXYmZ3Q7DQogICAgICAgICZsdDtkaXYgY2xhc3M9JnF1b3Q7cGFkZGluZy10b3AtMjAmcXVvdDsmZ3Q7Jmx0O2kgc3R5bGU9JnF1b3Q7Zm9udC1zaXplOjI0cHg7Y29sb3I6I2ZmZjsmcXVvdDsgY2xhc3M9JnF1b3Q7ZmEgZmEtd2hhdHNhcHAmcXVvdDsmZ3Q7Jmx0Oy9pJmd0OyZsdDsvZGl2Jmd0Ow0KICAgICZsdDsvZGl2Jmd0OyAgDQombHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6ODc1OiImbHQ7ZGl2IGNsYXNzPSZxdW90O2JveC1zdXBwb3J0IHRleHQtY2VudGVyJnF1b3Q7Jmd0Ow0KICAgICZsdDtkaXYgY2xhc3M9JnF1b3Q7aW5uZXImcXVvdDsmZ3Q7DQogICAgICAgICZsdDtkaXYgY2xhc3M9JnF1b3Q7Z3JlZW4gdGV4dC11cHBlcmNhc2UmcXVvdDsgc3R5bGU9JnF1b3Q7Zm9udC13ZWlnaHQ6Ym9sZDsmcXVvdDsmZ3Q7DQogICAgICAgICAgICBIb3RsaW5lIDoNCiAgICAgICAgJmx0Oy9kaXYmZ3Q7DQogICAgICAgICZsdDtkaXYgY2xhc3M9JnF1b3Q7cGhvbmUmcXVvdDsgc3R5bGU9JnF1b3Q7Zm9udC1zaXplOjQ4cHg7Y29sb3I6I2ZmZjtmb250LWZhbWlseTpEZWxpdXMgVW5pY2FzZTsmcXVvdDsmZ3Q7KCswMSktIDEyMyA3ODkgNDU2Jmx0Oy9kaXYmZ3Q7DQogICAgICAgICZsdDtkaXYgY2xhc3M9JnF1b3Q7ZGVzY3JpcHRpb24mcXVvdDsgc3R5bGU9JnF1b3Q7Zm9udC1zaXplOjE0cHg7Y29sb3I6cmdiYSgyNTUsMjU1LDI1NSwwLjU3KTttYXgtd2lkdGg6NDIwcHg7ZGlzcGxheTppbmxpbmUtYmxvY2smcXVvdDsmZ3Q7DQogICAgICAgICAgICBUcmFpbnMgd29tZW4gdG8gd29yayBpbiBwcm9mZXNzaW9uYWwga2l0Y2hlbnMsIHByb3ZpZGVzIGhlYWx0aHkgbWVhbHMgZm9yIGNoaWxkY2FyZSBjZW50ZXJzLCBhbmQgdXNlcyBmb29kIC4uLg0KICAgICAgICAmbHQ7L2RpdiZndDsNCiAgICAgICAgJmx0O2RpdiBjbGFzcz0mcXVvdDtwYWRkaW5nLXRvcC0yMCZxdW90OyZndDsmbHQ7aSBzdHlsZT0mcXVvdDtmb250LXNpemU6MjRweDtjb2xvcjojZmZmOyZxdW90OyBjbGFzcz0mcXVvdDtmYSBmYS13aGF0c2FwcCZxdW90OyZndDsmbHQ7L2kmZ3Q7Jmx0Oy9kaXYmZ3Q7DQogICAgJmx0Oy9kaXYmZ3Q7ICANCiZsdDsvZGl2Jmd0OyI7fQ==', 33, 0),
(16123, 'content', 'icon_box.9EDOSB', 'YToxNTp7czo0OiJyYW5kIjtzOjE5OiIwLjE0MjA4MzE3NzAyMjA2NDYzIjtzOjY6Im1vZHVsZSI7czoxNToiaWNvbl9ib3guOUVET1NCIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNToiaWNvbl9ib3guOUVET1NCIjtzOjU6Ind0eXBlIjtzOjg6Imljb25fYm94IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNjoiU2hpcHBpbmcgc2VydmljZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNjoiU2hpcHBpbmcgc2VydmljZSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTY6IlNoaXBwaW5nIHNlcnZpY2UiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6ODoiaWNvbmZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9tb2R1bGUvaWNvbi1ib3gzLnBuZyI7czo5OiJpY29uY2xhc3MiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjE3MjoiJmx0O2g1Jmd0O0V4cHJlc3MgU2hpcHBpbmcmbHQ7L2g1Jmd0Ow0KJmx0O2RpdiBjbGFzcz0mcXVvdDtkZXNjcmlwdGlvbiZxdW90OyZndDtOZWVkIHlvdXIgcGFyY2VsIHRvIGFycml2ZSB0b21vcnJvdz8gU2ltcGxlIGFuZCBjb3N0LWVmZmVjdGl2ZSBuZXh0IGJ1c2luZXNzIGRheSZsdDsvZGl2Jmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czoxNzI6IiZsdDtoNSZndDtFeHByZXNzIFNoaXBwaW5nJmx0Oy9oNSZndDsNCiZsdDtkaXYgY2xhc3M9JnF1b3Q7ZGVzY3JpcHRpb24mcXVvdDsmZ3Q7TmVlZCB5b3VyIHBhcmNlbCB0byBhcnJpdmUgdG9tb3Jyb3c/IFNpbXBsZSBhbmQgY29zdC1lZmZlY3RpdmUgbmV4dCBidXNpbmVzcyBkYXkmbHQ7L2RpdiZndDsiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 65, 0),
(13514, 'content', 'product_deal.SQ5qz9', 'YToxODp7czo0OiJyYW5kIjtzOjE5OiIwLjA1Mzc5NzI3MDU2MTY5OTQ3IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9kZWFsLlNRNXF6OSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfZGVhbC5TUTVxejkiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfZGVhbCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTE6IlRvZGF5IERlYWxzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjExOiJUb2RheSBEZWFscyI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTE6IlRvZGF5IERlYWxzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjEwOiJzdGFydF9kYXRlIjtzOjEwOiIyMDEwLTExLTI1IjtzOjg6ImVuZF9kYXRlIjtzOjEwOiIyMDIwLTExLTA0IjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6NDoiY29scyI7czoxOiI0IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo5OiJpbWdfd2lkdGgiO3M6MzoiNTAwIjtzOjEwOiJpbWdfaGVpZ2h0IjtzOjM6IjQ0NSI7czoxMjoiY2F0ZWdvcnlfaWRzIjthOjI4OntpOjA7czoyOiIzNiI7aToxO3M6MjoiNDYiO2k6MjtzOjI6IjkwIjtpOjM7czoyOiI5MSI7aTo0O3M6MjoiOTIiO2k6NTtzOjI6IjkzIjtpOjY7czoyOiI5NCI7aTo3O3M6MjoiOTUiO2k6ODtzOjI6Ijk2IjtpOjk7czoyOiI5NyI7aToxMDtzOjI6Ijk4IjtpOjExO3M6MjoiOTkiO2k6MTI7czozOiIxMDAiO2k6MTM7czozOiIxMDEiO2k6MTQ7czozOiIxMDIiO2k6MTU7czoyOiIyMCI7aToxNjtzOjI6IjI4IjtpOjE3O3M6MjoiMjkiO2k6MTg7czoyOiIzMCI7aToxOTtzOjI6IjMxIjtpOjIwO3M6MjoiMzIiO2k6MjE7czoyOiIxOCI7aToyMjtzOjI6IjI1IjtpOjIzO3M6MjoiNTciO2k6MjQ7czoyOiIxNyI7aToyNTtzOjI6IjI0IjtpOjI2O3M6MjoiMzMiO2k6Mjc7czoyOiIzNCI7fX0=', 75, 0),
(16122, 'content', 'icon_box.7zEG0Y', 'YToxNTp7czo0OiJyYW5kIjtzOjE4OiIwLjg1Nzc2NzQ3MDA4MTc3ODYiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC43ekVHMFkiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC43ekVHMFkiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjIzOiJSZXR1cm5zICZhbXA7IEV4Y2hhbmdlcyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoyMzoiUmV0dXJucyAmYW1wOyBFeGNoYW5nZXMiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjIzOiJSZXR1cm5zICZhbXA7IEV4Y2hhbmdlcyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL21vZHVsZS9pY29uLWJveDIucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MTgzOiImbHQ7aDUmZ3Q7RnJlZSBSZXR1cm5zJmx0Oy9oNSZndDsNCiZsdDtkaXYgY2xhc3M9JnF1b3Q7ZGVzY3JpcHRpb24mcXVvdDsmZ3Q7R2V0IGEgRlJFRSByZXR1cm4gc2hpcHBpbmcgbGFiZWwgYW5kIGEgQk9OVVMgJDUgY3JlZGl0IHlvdSBjYW4gdXNlIHRvd2FyZCBmaW5kaW5nIHNvbWV0aGluZyAuLi4mbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MTgzOiImbHQ7aDUmZ3Q7RnJlZSBSZXR1cm5zJmx0Oy9oNSZndDsNCiZsdDtkaXYgY2xhc3M9JnF1b3Q7ZGVzY3JpcHRpb24mcXVvdDsmZ3Q7R2V0IGEgRlJFRSByZXR1cm4gc2hpcHBpbmcgbGFiZWwgYW5kIGEgQk9OVVMgJDUgY3JlZGl0IHlvdSBjYW4gdXNlIHRvd2FyZCBmaW5kaW5nIHNvbWV0aGluZyAuLi4mbHQ7L2RpdiZndDsiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 65, 0),
(15747, 'content', 'image.j9Xa7F', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjI3OTk2OTUxMDM3MTk5MzkiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5qOVhhN0YiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5qOVhhN0YiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMTIuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjEiO30=', 64, 0),
(16106, 'content', 'icon_box.yU3h5p', 'YToxNTp7czo0OiJyYW5kIjtzOjE4OiIwLjc4NDc1MDc1NjMwNzA1NTciO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC55VTNoNXAiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC55VTNoNXAiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjEyOiJTdXBwb3J0IDI0LzciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTI6IlN1cHBvcnQgMjQvNyI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6IlN1cHBvcnQgMjQvNyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL21vZHVsZS9pY29uLWJveDEucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MTY1OiImbHQ7aDUmZ3Q7d2Ugc3VwcG9ydCAyNC83Jmx0Oy9oNSZndDsNCiZsdDtkaXYgY2xhc3M9JnF1b3Q7ZGVzY3JpcHRpb24mcXVvdDsmZ3Q7MjQtNyBzZXJ2aWNlIGlzIHNlcnZpY2UgdGhhdCBpcyBhdmFpbGFibGUgYW55IHRpbWUgYW5kLCB1c3VhbGx5LCBldmVyeSBkYXkmbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MTY1OiImbHQ7aDUmZ3Q7d2Ugc3VwcG9ydCAyNC83Jmx0Oy9oNSZndDsNCiZsdDtkaXYgY2xhc3M9JnF1b3Q7ZGVzY3JpcHRpb24mcXVvdDsmZ3Q7MjQtNyBzZXJ2aWNlIGlzIHNlcnZpY2UgdGhhdCBpcyBhdmFpbGFibGUgYW55IHRpbWUgYW5kLCB1c3VhbGx5LCBldmVyeSBkYXkmbHQ7L2RpdiZndDsiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 33, 0),
(16101, 'content', 'icon_box.5ZSL1q', 'YToxNTp7czo0OiJyYW5kIjtzOjE4OiIwLjIzODEzNDU5MzgxNTUxODYiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC41WlNMMXEiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC41WlNMMXEiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE2OiJTaGlwcGluZyBzZXJ2aWNlIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE2OiJTaGlwcGluZyBzZXJ2aWNlIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNjoiU2hpcHBpbmcgc2VydmljZSI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL21vZHVsZS9pY29uLWJveDMucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MTcyOiImbHQ7aDUmZ3Q7RXhwcmVzcyBTaGlwcGluZyZsdDsvaDUmZ3Q7DQombHQ7ZGl2IGNsYXNzPSZxdW90O2Rlc2NyaXB0aW9uJnF1b3Q7Jmd0O05lZWQgeW91ciBwYXJjZWwgdG8gYXJyaXZlIHRvbW9ycm93PyBTaW1wbGUgYW5kIGNvc3QtZWZmZWN0aXZlIG5leHQgYnVzaW5lc3MgZGF5Jmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8xIjtzOjE3MjoiJmx0O2g1Jmd0O0V4cHJlc3MgU2hpcHBpbmcmbHQ7L2g1Jmd0Ow0KJmx0O2RpdiBjbGFzcz0mcXVvdDtkZXNjcmlwdGlvbiZxdW90OyZndDtOZWVkIHlvdXIgcGFyY2VsIHRvIGFycml2ZSB0b21vcnJvdz8gU2ltcGxlIGFuZCBjb3N0LWVmZmVjdGl2ZSBuZXh0IGJ1c2luZXNzIGRheSZsdDsvZGl2Jmd0OyI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=', 33, 0),
(16102, 'content', 'icon_box.aHfqRn', 'YToxNTp7czo0OiJyYW5kIjtzOjE4OiIwLjYwMTIyMjk1MjE5Njc2MjEiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5hSGZxUm4iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5hSGZxUm4iO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjIzOiJSZXR1cm5zICZhbXA7IEV4Y2hhbmdlcyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoyMzoiUmV0dXJucyAmYW1wOyBFeGNoYW5nZXMiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjIzOiJSZXR1cm5zICZhbXA7IEV4Y2hhbmdlcyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL21vZHVsZS9pY29uLWJveDIucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MTg1OiINCiZsdDtoNSZndDtGcmVlIFJldHVybnMmbHQ7L2g1Jmd0Ow0KJmx0O2RpdiBjbGFzcz0mcXVvdDtkZXNjcmlwdGlvbiZxdW90OyZndDtHZXQgYSBGUkVFIHJldHVybiBzaGlwcGluZyBsYWJlbCBhbmQgYSBCT05VUyAkNSBjcmVkaXQgeW91IGNhbiB1c2UgdG93YXJkIGZpbmRpbmcgc29tZXRoaW5nIC4uLiZsdDsvZGl2Jmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czoxODU6Ig0KJmx0O2g1Jmd0O0ZyZWUgUmV0dXJucyZsdDsvaDUmZ3Q7DQombHQ7ZGl2IGNsYXNzPSZxdW90O2Rlc2NyaXB0aW9uJnF1b3Q7Jmd0O0dldCBhIEZSRUUgcmV0dXJuIHNoaXBwaW5nIGxhYmVsIGFuZCBhIEJPTlVTICQ1IGNyZWRpdCB5b3UgY2FuIHVzZSB0b3dhcmQgZmluZGluZyBzb21ldGhpbmcgLi4uJmx0Oy9kaXYmZ3Q7IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 33, 0),
(13512, 'content', 'listproduct_home1.HbdKeG', 'YToyMTp7czo0OiJyYW5kIjtzOjE5OiIwLjE2ODQ2NDY1MDM0NTczNjQzIjtzOjY6Im1vZHVsZSI7czoyNDoibGlzdHByb2R1Y3RfaG9tZTEuSGJkS2VHIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNDoibGlzdHByb2R1Y3RfaG9tZTEuSGJkS2VHIjtzOjU6Ind0eXBlIjtzOjE3OiJsaXN0cHJvZHVjdF9ob21lMSI7czoxMToid2lkZ2V0X25hbWUiO3M6NzoiVmFjdXVtcyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czo3OiJWYWN1dW1zIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czo3OiJWYWN1dW1zIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTI6InBhbmVsLWRhbmdlciI7czo1OiJsaW5rcyI7YTo1OntpOjA7czoyOiI5NCI7aToxO3M6MjoiOTgiO2k6MjtzOjM6IjEwMCI7aTozO3M6MjoiMjAiO2k6NDtzOjI6IjI1Ijt9czo1OiJsaW1pdCI7czoxOiI4IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo0OiJjb2xzIjtzOjE6IjQiO3M6NToid2lkdGgiO3M6MzoiNTAwIjtzOjY6ImhlaWdodCI7czozOiI0NDUiO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7czo3OiJwcm9kdWN0IjthOjc6e2k6MDtzOjI6IjQ2IjtpOjE7czoyOiIyOSI7aToyO3M6MjoiMzAiO2k6MztzOjI6IjQ0IjtpOjQ7czoyOiIzMyI7aTo1O3M6MjoiNDgiO2k6NjtzOjI6IjMxIjt9czoxMDoiYmFubmVyX2ltZyI7czoyOToiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYm4zMi5qcGciO3M6NzoiYl93aWR0aCI7czozOiIyNzAiO3M6ODoiYl9oZWlnaHQiO3M6MzoiMzE4Ijt9', 75, 0),
(16121, 'content', 'icon_box.770fak', 'YToxNTp7czo0OiJyYW5kIjtzOjE4OiIwLjcwMzg5MDk1NzYwMzY1MDEiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC43NzBmYWsiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC43NzBmYWsiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjEyOiJTdXBwb3J0IDI0LzciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTI6IlN1cHBvcnQgMjQvNyI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6IlN1cHBvcnQgMjQvNyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL21vZHVsZS9pY29uLWJveDEucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MTY1OiImbHQ7aDUmZ3Q7d2Ugc3VwcG9ydCAyNC83Jmx0Oy9oNSZndDsNCiZsdDtkaXYgY2xhc3M9JnF1b3Q7ZGVzY3JpcHRpb24mcXVvdDsmZ3Q7MjQtNyBzZXJ2aWNlIGlzIHNlcnZpY2UgdGhhdCBpcyBhdmFpbGFibGUgYW55IHRpbWUgYW5kLCB1c3VhbGx5LCBldmVyeSBkYXkmbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MTY1OiImbHQ7aDUmZ3Q7d2Ugc3VwcG9ydCAyNC83Jmx0Oy9oNSZndDsNCiZsdDtkaXYgY2xhc3M9JnF1b3Q7ZGVzY3JpcHRpb24mcXVvdDsmZ3Q7MjQtNyBzZXJ2aWNlIGlzIHNlcnZpY2UgdGhhdCBpcyBhdmFpbGFibGUgYW55IHRpbWUgYW5kLCB1c3VhbGx5LCBldmVyeSBkYXkmbHQ7L2RpdiZndDsiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 65, 0),
(16120, 'content', 'html.eMLpQB', 'YToxMjp7czo0OiJyYW5kIjtzOjE5OiIwLjQyOTQxMzQ3ODI5MDE1NjY0IjtzOjY6Im1vZHVsZSI7czoxMToiaHRtbC5lTUxwUUIiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjExOiJodG1sLmVNTHBRQiI7czo1OiJ3dHlwZSI7czo0OiJodG1sIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNDoiY3VzdG9tIHN1cHBvcnQiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTQ6ImN1c3RvbSBzdXBwb3J0IjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNDoiY3VzdG9tIHN1cHBvcnQiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6ODQxOiImbHQ7ZGl2IGNsYXNzPSZxdW90O2JveC1zdXBwb3J0IHRleHQtY2VudGVyIGJnLXYyJnF1b3Q7Jmd0Ow0KICAmbHQ7ZGl2IGNsYXNzPSZxdW90O2lubmVyJnF1b3Q7Jmd0Ow0KICAgICZsdDtkaXYgY2xhc3M9JnF1b3Q7Z3JlZW4gdGV4dC11cHBlcmNhc2UmcXVvdDsgc3R5bGU9JnF1b3Q7Zm9udC13ZWlnaHQ6Ym9sZDsmcXVvdDsmZ3Q7DQogICAgICBIb3RsaW5lIDoNCiAgICAmbHQ7L2RpdiZndDsNCiAgICAmbHQ7ZGl2IGNsYXNzPSZxdW90O3Bob25lJnF1b3Q7IHN0eWxlPSZxdW90O2ZvbnQtc2l6ZTo0OHB4O2NvbG9yOiNmZmY7Zm9udC1mYW1pbHk6RGVsaXVzIFVuaWNhc2U7JnF1b3Q7Jmd0OygrMDEpLSAxMjMgNzg5IDQ1NiZsdDsvZGl2Jmd0Ow0KICAgICZsdDtkaXYgY2xhc3M9JnF1b3Q7ZGVzY3JpcHRpb24mcXVvdDsgc3R5bGU9JnF1b3Q7Zm9udC1zaXplOjE0cHg7Y29sb3I6cmdiYSgyNTUsMjU1LDI1NSwwLjU3KTttYXgtd2lkdGg6NDIwcHg7ZGlzcGxheTppbmxpbmUtYmxvY2smcXVvdDsmZ3Q7DQogICAgICBUcmFpbnMgd29tZW4gdG8gd29yayBpbiBwcm9mZXNzaW9uYWwga2l0Y2hlbnMsIHByb3ZpZGVzIGhlYWx0aHkgbWVhbHMgZm9yIGNoaWxkY2FyZSBjZW50ZXJzLCBhbmQgdXNlcyBmb29kIC4uLg0KICAgICZsdDsvZGl2Jmd0Ow0KICAgICZsdDtkaXYgY2xhc3M9JnF1b3Q7cGFkZGluZy10b3AtMjAmcXVvdDsmZ3Q7Jmx0O2kgc3R5bGU9JnF1b3Q7Zm9udC1zaXplOjI0cHg7Y29sb3I6I2ZmZjsmcXVvdDsgY2xhc3M9JnF1b3Q7ZmEgZmEtd2hhdHNhcHAmcXVvdDsmZ3Q7Jmx0Oy9pJmd0OyZsdDsvZGl2Jmd0Ow0KICAmbHQ7L2RpdiZndDsgIA0KJmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8xIjtzOjg0MToiJmx0O2RpdiBjbGFzcz0mcXVvdDtib3gtc3VwcG9ydCB0ZXh0LWNlbnRlciBiZy12MiZxdW90OyZndDsNCiAgJmx0O2RpdiBjbGFzcz0mcXVvdDtpbm5lciZxdW90OyZndDsNCiAgICAmbHQ7ZGl2IGNsYXNzPSZxdW90O2dyZWVuIHRleHQtdXBwZXJjYXNlJnF1b3Q7IHN0eWxlPSZxdW90O2ZvbnQtd2VpZ2h0OmJvbGQ7JnF1b3Q7Jmd0Ow0KICAgICAgSG90bGluZSA6DQogICAgJmx0Oy9kaXYmZ3Q7DQogICAgJmx0O2RpdiBjbGFzcz0mcXVvdDtwaG9uZSZxdW90OyBzdHlsZT0mcXVvdDtmb250LXNpemU6NDhweDtjb2xvcjojZmZmO2ZvbnQtZmFtaWx5OkRlbGl1cyBVbmljYXNlOyZxdW90OyZndDsoKzAxKS0gMTIzIDc4OSA0NTYmbHQ7L2RpdiZndDsNCiAgICAmbHQ7ZGl2IGNsYXNzPSZxdW90O2Rlc2NyaXB0aW9uJnF1b3Q7IHN0eWxlPSZxdW90O2ZvbnQtc2l6ZToxNHB4O2NvbG9yOnJnYmEoMjU1LDI1NSwyNTUsMC41Nyk7bWF4LXdpZHRoOjQyMHB4O2Rpc3BsYXk6aW5saW5lLWJsb2NrJnF1b3Q7Jmd0Ow0KICAgICAgVHJhaW5zIHdvbWVuIHRvIHdvcmsgaW4gcHJvZmVzc2lvbmFsIGtpdGNoZW5zLCBwcm92aWRlcyBoZWFsdGh5IG1lYWxzIGZvciBjaGlsZGNhcmUgY2VudGVycywgYW5kIHVzZXMgZm9vZCAuLi4NCiAgICAmbHQ7L2RpdiZndDsNCiAgICAmbHQ7ZGl2IGNsYXNzPSZxdW90O3BhZGRpbmctdG9wLTIwJnF1b3Q7Jmd0OyZsdDtpIHN0eWxlPSZxdW90O2ZvbnQtc2l6ZToyNHB4O2NvbG9yOiNmZmY7JnF1b3Q7IGNsYXNzPSZxdW90O2ZhIGZhLXdoYXRzYXBwJnF1b3Q7Jmd0OyZsdDsvaSZndDsmbHQ7L2RpdiZndDsNCiAgJmx0Oy9kaXYmZ3Q7ICANCiZsdDsvZGl2Jmd0OyI7fQ==', 65, 0),
(13513, 'content', 'listproduct_home1.hBqAak', 'YToyMTp7czo0OiJyYW5kIjtzOjE5OiIwLjEwMjU3MDAyODY2NTY4Mzk5IjtzOjY6Im1vZHVsZSI7czoyNDoibGlzdHByb2R1Y3RfaG9tZTEuaEJxQWFrIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNDoibGlzdHByb2R1Y3RfaG9tZTEuaEJxQWFrIjtzOjU6Ind0eXBlIjtzOjE3OiJsaXN0cHJvZHVjdF9ob21lMSI7czoxMToid2lkZ2V0X25hbWUiO3M6MTg6IktpdGNoZW4gQXBwbGlhbmNlcyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxODoiS2l0Y2hlbiBBcHBsaWFuY2VzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxODoiS2l0Y2hlbiBBcHBsaWFuY2VzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjU6ImxpbmtzIjthOjY6e2k6MDtzOjI6IjM2IjtpOjE7czoyOiI5MSI7aToyO3M6MjoiOTIiO2k6MztzOjI6Ijk0IjtpOjQ7czoyOiI5OCI7aTo1O3M6MjoiOTciO31zOjU6ImxpbWl0IjtzOjE6IjgiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiI1MDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjQ0NSI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjtzOjc6InByb2R1Y3QiO2E6Nzp7aTowO3M6MjoiMjgiO2k6MTtzOjI6IjQyIjtpOjI7czoyOiI0MyI7aTozO3M6MjoiMzQiO2k6NDtzOjI6IjM2IjtpOjU7czoyOiI0NiI7aTo2O3M6MjoiMjkiO31zOjEwOiJiYW5uZXJfaW1nIjtzOjI5OiJjYXRhbG9nL2RlbW8vYmFubmVycy9ibjMwLmpwZyI7czo3OiJiX3dpZHRoIjtzOjM6IjI3MCI7czo4OiJiX2hlaWdodCI7czozOiIzMTgiO30=', 75, 0),
(13509, 'content', 'image.UgQ6o1', 'YToxOTp7czo0OiJyYW5kIjtzOjE5OiIwLjMzMjM4MTg0ODEyMjU2NTY2IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuVWdRNm8xIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuVWdRNm8xIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJpbWciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MzoiaW1nIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjI5OiJjYXRhbG9nL2RlbW8vYmFubmVycy9ibjI4LmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIxIjt9', 75, 0),
(13508, 'content', 'image.uglWL5', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjg1MzY3OTk1NzYzOTY2MDQiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS51Z2xXTDUiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS51Z2xXTDUiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMjYuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjEiO30=', 75, 0),
(13507, 'content', 'image.oT9Zrf', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjY5MDQyNzQyNDc2Njk1OTIiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5vVDlacmYiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5vVDlacmYiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMzUuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjEiO30=', 75, 0),
(13504, 'content', 'image.4iviZ4', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjY3NTMwMjA0MzI5ODE0NDMiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS40aXZpWjQiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS40aXZpWjQiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMjcuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjEiO30=', 75, 0),
(13506, 'content', 'image.kDrlqr', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjUyNzUzMDY0NDY2ODEwNjEiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5rRHJscXIiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5rRHJscXIiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMzQuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjEiO30=', 75, 0),
(13505, 'content', 'image.EicHi5', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjQzNzIzNjIyNzkwMzcxNDUiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5FaWNIaTUiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5FaWNIaTUiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMjkuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjEiO30=', 75, 0),
(13503, 'content', 'featured_category.Cac6oU', 'YToxNDp7czo0OiJyYW5kIjtzOjE5OiIwLjQzNDg0NTg1NjM2OTQyMjg2IjtzOjY6Im1vZHVsZSI7czoyNDoiZmVhdHVyZWRfY2F0ZWdvcnkuQ2FjNm9VIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNDoiZmVhdHVyZWRfY2F0ZWdvcnkuQ2FjNm9VIjtzOjU6Ind0eXBlIjtzOjE3OiJmZWF0dXJlZF9jYXRlZ29yeSI7czoxMToid2lkZ2V0X25hbWUiO3M6MTg6IlBvcHVsYXIgQ2F0ZWdvcmllcyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxODoiUG9wdWxhciBDYXRlZ29yaWVzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxODoiUG9wdWxhciBDYXRlZ29yaWVzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjE5OiJjYXRlZ29yaWVzX2ZlYXR1cmVkIjthOjY6e2k6MDthOjI6e3M6NToiaW1hZ2UiO3M6Mzc6ImNhdGFsb2cvZGVtby9tb2R1bGUvY2F0ZS1wcm9kdWN0MS5qcGciO3M6MjoiaWQiO3M6MjoiMzYiO31pOjE7YToyOntzOjU6ImltYWdlIjtzOjM3OiJjYXRhbG9nL2RlbW8vbW9kdWxlL2NhdGUtcHJvZHVjdDIuanBnIjtzOjI6ImlkIjtzOjI6IjkyIjt9aToyO2E6Mjp7czo1OiJpbWFnZSI7czozNzoiY2F0YWxvZy9kZW1vL21vZHVsZS9jYXRlLXByb2R1Y3QzLmpwZyI7czoyOiJpZCI7czoyOiI5NSI7fWk6MzthOjI6e3M6NToiaW1hZ2UiO3M6Mzc6ImNhdGFsb2cvZGVtby9tb2R1bGUvY2F0ZS1wcm9kdWN0NC5qcGciO3M6MjoiaWQiO3M6MzoiMTAyIjt9aTo0O2E6Mjp7czo1OiJpbWFnZSI7czozNzoiY2F0YWxvZy9kZW1vL21vZHVsZS9jYXRlLXByb2R1Y3Q1LmpwZyI7czoyOiJpZCI7czoyOiIyMCI7fWk6NTthOjI6e3M6NToiaW1hZ2UiO3M6Mzc6ImNhdGFsb2cvZGVtby9tb2R1bGUvY2F0ZS1wcm9kdWN0Ni5qcGciO3M6MjoiaWQiO3M6MjoiMjAiO319czoxMToiaW1hZ2Vfd2lkdGgiO3M6MzoiMjAwIjtzOjEyOiJpbWFnZV9oZWlnaHQiO3M6MzoiMTUwIjtzOjQ6ImNvbHMiO3M6MToiMyI7fQ==', 75, 0),
(13526, 'content', 'product_list.VMoj77', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjI1Mjk0NTI1MDAxNDIxODQiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuVk1vajc3IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LlZNb2o3NyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiTmV3IEFycml2YWxzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMjoicGFuZWwtZGFuZ2VyIjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czoyOiI5MCI7czo2OiJoZWlnaHQiO3M6MjoiODAiO3M6OToibGlzdF90eXBlIjtzOjc6InNwZWNpYWwiO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7fQ==', 76, 0),
(13527, 'content', 'product_list.YyFasg', 'YToxODp7czo0OiJyYW5kIjtzOjE5OiIwLjIzNzEwODk0ODg1NTkzNzkyIjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0Lll5RmFzZyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5ZeUZhc2ciO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTY6IkZlYXR1cmUgcHJvZHVjdHMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTY6IkZlYXR1cmUgcHJvZHVjdHMiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE2OiJGZWF0dXJlIHByb2R1Y3RzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjU6ImxpbWl0IjtzOjI6IjE2IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiOCI7czo0OiJjb2xzIjtzOjE6IjQiO3M6NToid2lkdGgiO3M6MzoiNTAwIjtzOjY6ImhlaWdodCI7czozOiI0NDUiO3M6OToibGlzdF90eXBlIjtzOjg6ImZlYXR1cmVkIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO3M6NzoicHJvZHVjdCI7YTo5OntpOjA7czoyOiIyOCI7aToxO3M6MjoiNDIiO2k6MjtzOjI6IjM0IjtpOjM7czoyOiIzNiI7aTo0O3M6MjoiMzAiO2k6NTtzOjI6IjQ0IjtpOjY7czoyOiI0NSI7aTo3O3M6MjoiNDMiO2k6ODtzOjI6IjQxIjt9fQ==', 76, 0),
(13525, 'content', 'product_list.S6kNxi', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjYxOTg1ODkyOTE3MzM0NDgiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuUzZrTnhpIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LlM2a054aSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo4OiJUb3AgUmF0ZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czo4OiJUb3AgUmF0ZSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6ODoiVG9wIFJhdGUiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMzoicGFuZWwtd2FybmluZyI7czo1OiJsaW1pdCI7czoxOiI4IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo0OiJjb2xzIjtzOjE6IjEiO3M6NToid2lkdGgiO3M6MjoiOTAiO3M6NjoiaGVpZ2h0IjtzOjI6IjgwIjtzOjk6Imxpc3RfdHlwZSI7czo5OiJ0b3ByYXRpbmciO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7fQ==', 76, 0);
INSERT INTO `oc_pavwidget` (`pavwidget_id`, `name`, `code`, `setting`, `module_id`, `key`) VALUES
(13524, 'content', 'product_list.jk7jUs', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjA3MDgxMzAzNzY2ODYyODU2IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LmprN2pVcyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5qazdqVXMiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTI6IkJlc3QgU2VsbGVycyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMjoiQmVzdCBTZWxsZXJzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMjoiQmVzdCBTZWxsZXJzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czoyOiI5MCI7czo2OiJoZWlnaHQiO3M6MjoiODAiO3M6OToibGlzdF90eXBlIjtzOjEwOiJiZXN0c2VsbGVyIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 76, 0),
(13521, 'content', 'image.Qawuyz', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjM4ODAyNTA4NDI5NjYzODYiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5RYXd1eXoiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5RYXd1eXoiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMzguanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjEiO30=', 76, 0),
(13522, 'content', 'image.vMIQjj', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjg5MDQ4MjAxODM2NzU2NDQiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS52TUlRamoiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS52TUlRamoiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMzcuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjEiO30=', 76, 0),
(13523, 'content', 'product_deal.gCrh8w', 'YToxODp7czo0OiJyYW5kIjtzOjE5OiIwLjQ5NDgwNDEyOTE5MDQ3NTY3IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9kZWFsLmdDcmg4dyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfZGVhbC5nQ3JoOHciO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfZGVhbCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTE6IlRvZGF5IERlYWxzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjExOiJUb2RheSBEZWFscyI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTE6IlRvZGF5IERlYWxzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjEwOiJzdGFydF9kYXRlIjtzOjEwOiIyMDEwLTA2LTIzIjtzOjg6ImVuZF9kYXRlIjtzOjEwOiIyMDE5LTA1LTIzIjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6NDoiY29scyI7czoxOiI0IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo5OiJpbWdfd2lkdGgiO3M6MzoiNTAwIjtzOjEwOiJpbWdfaGVpZ2h0IjtzOjM6IjQ0NSI7czoxMjoiY2F0ZWdvcnlfaWRzIjthOjI5OntpOjA7czoyOiIzNSI7aToxO3M6MjoiMzYiO2k6MjtzOjI6IjQ2IjtpOjM7czoyOiI5MCI7aTo0O3M6MjoiOTEiO2k6NTtzOjI6IjkyIjtpOjY7czoyOiI5MyI7aTo3O3M6MjoiOTQiO2k6ODtzOjI6Ijk1IjtpOjk7czoyOiI5NiI7aToxMDtzOjI6Ijk3IjtpOjExO3M6MjoiOTgiO2k6MTI7czoyOiI5OSI7aToxMztzOjM6IjEwMCI7aToxNDtzOjM6IjEwMSI7aToxNTtzOjM6IjEwMiI7aToxNjtzOjI6IjIwIjtpOjE3O3M6MjoiMjgiO2k6MTg7czoyOiIyOSI7aToxOTtzOjI6IjMwIjtpOjIwO3M6MjoiMzEiO2k6MjE7czoyOiIzMiI7aToyMjtzOjI6IjE4IjtpOjIzO3M6MjoiMjUiO2k6MjQ7czoyOiI1NyI7aToyNTtzOjI6IjE3IjtpOjI2O3M6MjoiMjQiO2k6Mjc7czoyOiIzMyI7aToyODtzOjI6IjM0Ijt9fQ==', 76, 0),
(13519, 'content', 'featured_category_home5.VmfGx7', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjg2NzU2NTM5NDg0ODkzODgiO3M6NjoibW9kdWxlIjtzOjMwOiJmZWF0dXJlZF9jYXRlZ29yeV9ob21lNS5WbWZHeDciO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjMwOiJmZWF0dXJlZF9jYXRlZ29yeV9ob21lNS5WbWZHeDciO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo1OiJjYXRlMiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czo1OiJjYXRlMiI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6NToiY2F0ZTIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo2OiJhYWFhYWEiO3M6MTk6ImNhdGVnb3JpZXNfZmVhdHVyZWQiO2E6Mjp7czo1OiJpbWFnZSI7czozNzoiY2F0YWxvZy9kZW1vL21vZHVsZS9jYXRlLXByb2R1Y3QyLmpwZyI7czoyOiJpZCI7czoyOiI5MSI7fXM6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjM3MCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjI4NSI7fQ==', 76, 0),
(13520, 'content', 'image.GONlZw', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjM4Njk0Mjg3MjYzMTcxMjciO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5HT05sWnciO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5HT05sWnciO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuMzYuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjEiO30=', 76, 0),
(13518, 'content', 'featured_category_home5.UfbT4C', 'YToxMzp7czo0OiJyYW5kIjtzOjE5OiIwLjAyMzk0MjA2Mzc2OTk5Mjc1IjtzOjY6Im1vZHVsZSI7czozMDoiZmVhdHVyZWRfY2F0ZWdvcnlfaG9tZTUuVWZiVDRDIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czozMDoiZmVhdHVyZWRfY2F0ZWdvcnlfaG9tZTUuVWZiVDRDIjtzOjU6Ind0eXBlIjtzOjIzOiJmZWF0dXJlZF9jYXRlZ29yeV9ob21lNSI7czoxMToid2lkZ2V0X25hbWUiO3M6NDoiY2F0ZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czo0OiJjYXRlIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czo0OiJjYXRlIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjE5OiJjYXRlZ29yaWVzX2ZlYXR1cmVkIjthOjI6e3M6NToiaW1hZ2UiO3M6Mzc6ImNhdGFsb2cvZGVtby9tb2R1bGUvY2F0ZS1wcm9kdWN0NC5qcGciO3M6MjoiaWQiO3M6MzoiMTAxIjt9czoxMToiaW1hZ2Vfd2lkdGgiO3M6MzoiMzcwIjtzOjEyOiJpbWFnZV9oZWlnaHQiO3M6MzoiMjAwIjt9', 76, 0),
(13515, 'content', 'featured_category_home5.31YQoa', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjg0MzM2MTc0ODU3Mzg2ODMiO3M6NjoibW9kdWxlIjtzOjMwOiJmZWF0dXJlZF9jYXRlZ29yeV9ob21lNS4zMVlRb2EiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjMwOiJmZWF0dXJlZF9jYXRlZ29yeV9ob21lNS4zMVlRb2EiO3M6NToid3R5cGUiO3M6MjM6ImZlYXR1cmVkX2NhdGVnb3J5X2hvbWU1IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo0OiJjYXRlIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjQ6ImNhdGUiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjQ6ImNhdGUiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTk6ImNhdGVnb3JpZXNfZmVhdHVyZWQiO2E6Mjp7czo1OiJpbWFnZSI7czozNzoiY2F0YWxvZy9kZW1vL21vZHVsZS9jYXRlLXByb2R1Y3Q1LmpwZyI7czoyOiJpZCI7czozOiIxMDAiO31zOjExOiJpbWFnZV93aWR0aCI7czozOiIzNzAiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiIyODUiO30=', 76, 0),
(13516, 'content', 'featured_category_home5.h3TXhA', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjYyNjY4MTc0Mzk0NTA2MDIiO3M6NjoibW9kdWxlIjtzOjMwOiJmZWF0dXJlZF9jYXRlZ29yeV9ob21lNS5oM1RYaEEiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjMwOiJmZWF0dXJlZF9jYXRlZ29yeV9ob21lNS5oM1RYaEEiO3M6NToid3R5cGUiO3M6MjM6ImZlYXR1cmVkX2NhdGVnb3J5X2hvbWU1IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo0OiJjYXRlIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjQ6ImNhdGUiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjQ6ImNhdGUiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTk6ImNhdGVnb3JpZXNfZmVhdHVyZWQiO2E6Mjp7czo1OiJpbWFnZSI7czozNzoiY2F0YWxvZy9kZW1vL21vZHVsZS9jYXRlLXByb2R1Y3QzLmpwZyI7czoyOiJpZCI7czoyOiI5NCI7fXM6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjM3MCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjIwMCI7fQ==', 76, 0),
(13517, 'content', 'featured_category_home5.MQjBy2', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjY4MTY4ODAxNjk0NTIyMjMiO3M6NjoibW9kdWxlIjtzOjMwOiJmZWF0dXJlZF9jYXRlZ29yeV9ob21lNS5NUWpCeTIiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjMwOiJmZWF0dXJlZF9jYXRlZ29yeV9ob21lNS5NUWpCeTIiO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo1OiJjYXRlMSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czo1OiJjYXRlMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6NToiY2F0ZTEiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTk6ImNhdGVnb3JpZXNfZmVhdHVyZWQiO2E6Mjp7czo1OiJpbWFnZSI7czozNzoiY2F0YWxvZy9kZW1vL21vZHVsZS9jYXRlLXByb2R1Y3QxLmpwZyI7czoyOiJpZCI7czoyOiI5MCI7fXM6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjM3MCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjUxNSI7fQ==', 76, 0),
(13776, 'content', 'product_list.xJbcsU', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjQzNDE4OTE5NjU2NDMxMjEiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QueEpiY3NVIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LnhKYmNzVSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo2OiJMYXRlc3QiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6NjoiTGF0ZXN0IjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czo2OiJMYXRlc3QiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MjoiMTQiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI1IjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czoyOiI5MCI7czo2OiJoZWlnaHQiO3M6MjoiODAiO3M6OToibGlzdF90eXBlIjtzOjY6ImxhdGVzdCI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 77, 0),
(13775, 'content', 'product_list.cS7zTM', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjEzOTI1Mzk5Mjg2NTIwMDU3IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LmNTN3pUTSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5jUzd6VE0iO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6OToiVG9wUmF0aW5nIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjk6IlRvcFJhdGluZyI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6OToiVG9wUmF0aW5nIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjU6ImxpbWl0IjtzOjI6IjE0IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNSI7czo0OiJjb2xzIjtzOjE6IjEiO3M6NToid2lkdGgiO3M6MjoiOTAiO3M6NjoiaGVpZ2h0IjtzOjI6IjgwIjtzOjk6Imxpc3RfdHlwZSI7czo5OiJ0b3ByYXRpbmciO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7fQ==', 77, 0),
(13774, 'content', 'product_list.1mARZe', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjk3MDkxNzc5ODU1NDgwMjUiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuMW1BUlplIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LjFtQVJaZSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNToiUHJvZHVjdCBTcGVjaWFsIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE1OiJQcm9kdWN0IFNwZWNpYWwiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE1OiJQcm9kdWN0IFNwZWNpYWwiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MToiOCI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjQiO3M6NDoiY29scyI7czoxOiI0IjtzOjU6IndpZHRoIjtzOjM6IjUwMCI7czo2OiJoZWlnaHQiO3M6MzoiNDQ1IjtzOjk6Imxpc3RfdHlwZSI7czo3OiJzcGVjaWFsIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 77, 0),
(13773, 'content', 'product_list.135b4L', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjY0MDk1MjE2MDgzMzgwMjEiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuMTM1YjRMIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LjEzNWI0TCI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNToiUHJvZHVjdCBQb3B1bGFyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE1OiJQcm9kdWN0IFBvcHVsYXIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE1OiJQcm9kdWN0IFBvcHVsYXIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MToiOCI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjQiO3M6NDoiY29scyI7czoxOiI0IjtzOjU6IndpZHRoIjtzOjM6IjUwMCI7czo2OiJoZWlnaHQiO3M6MzoiNDQ1IjtzOjk6Imxpc3RfdHlwZSI7czo3OiJwb3B1bGFyIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 77, 0),
(13772, 'content', 'product_deal.n6i7VC', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjcwMTE4NDEzNDQzMzQ3ODIiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2RlYWwubjZpN1ZDIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9kZWFsLm42aTdWQyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9kZWFsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMToiVG9kYXkgRGVhbHMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTE6IlRvZGF5IERlYWxzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMToiVG9kYXkgRGVhbHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTA6InN0YXJ0X2RhdGUiO3M6MTA6IjIwMTAtMTItMDMiO3M6ODoiZW5kX2RhdGUiO3M6MTA6IjIwMTktMTEtMjkiO3M6NToibGltaXQiO3M6MToiOCI7czo0OiJjb2xzIjtzOjE6IjMiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI4IjtzOjk6ImltZ193aWR0aCI7czozOiI1MDAiO3M6MTA6ImltZ19oZWlnaHQiO3M6MzoiNDQ1IjtzOjEyOiJjYXRlZ29yeV9pZHMiO2E6Mjk6e2k6MDtzOjI6IjM1IjtpOjE7czoyOiIzNiI7aToyO3M6MjoiNDYiO2k6MztzOjI6IjkwIjtpOjQ7czoyOiI5MSI7aTo1O3M6MjoiOTIiO2k6NjtzOjI6IjkzIjtpOjc7czoyOiI5NCI7aTo4O3M6MjoiOTUiO2k6OTtzOjI6Ijk2IjtpOjEwO3M6MjoiOTciO2k6MTE7czoyOiI5OCI7aToxMjtzOjI6Ijk5IjtpOjEzO3M6MzoiMTAwIjtpOjE0O3M6MzoiMTAxIjtpOjE1O3M6MzoiMTAyIjtpOjE2O3M6MjoiMjAiO2k6MTc7czoyOiIyOCI7aToxODtzOjI6IjI5IjtpOjE5O3M6MjoiMzAiO2k6MjA7czoyOiIzMSI7aToyMTtzOjI6IjMyIjtpOjIyO3M6MjoiMTgiO2k6MjM7czoyOiIyNSI7aToyNDtzOjI6IjU3IjtpOjI1O3M6MjoiMTciO2k6MjY7czoyOiIyNCI7aToyNztzOjI6IjMzIjtpOjI4O3M6MjoiMzQiO319', 77, 0),
(13771, 'content', 'listproduct_home6.2uTLZr', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjE4NjQ0ODIyNDY3MzE2NjEzIjtzOjY6Im1vZHVsZSI7czoyNDoibGlzdHByb2R1Y3RfaG9tZTYuMnVUTFpyIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNDoibGlzdHByb2R1Y3RfaG9tZTYuMnVUTFpyIjtzOjU6Ind0eXBlIjtzOjE3OiJsaXN0cHJvZHVjdF9ob21lNiI7czoxMToid2lkZ2V0X25hbWUiO3M6MTI6Ik5ldyBBcnJpdmFscyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMjoiTmV3IEFycml2YWxzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMjoiTmV3IEFycml2YWxzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiMiI7czo1OiJ3aWR0aCI7czozOiI1MDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjQ0NSI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjtzOjc6InByb2R1Y3QiO2E6Nzp7aTowO3M6MjoiMjgiO2k6MTtzOjI6IjQyIjtpOjI7czoyOiIzNCI7aTozO3M6MjoiMzYiO2k6NDtzOjI6IjQzIjtpOjU7czoyOiIzMCI7aTo2O3M6MjoiNDQiO319', 77, 0),
(13770, 'content', 'image.rSbukK', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjc4NzU4MTM1MzMxMjQ4NTgiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5yU2J1a0siO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5yU2J1a0siO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuNDIuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjEiO30=', 77, 0),
(13769, 'content', 'image.QqOqgT', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjU1ODMzNzg2OTY1MzM2OTgiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5RcU9xZ1QiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5RcU9xZ1QiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuNDUuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjEiO30=', 77, 0),
(13768, 'content', 'image.MsathR', 'YToxOTp7czo0OiJyYW5kIjtzOjIwOiIwLjAyOTMzMzk2NTgyMTUzMzkxNCI7czo2OiJtb2R1bGUiO3M6MTI6ImltYWdlLk1zYXRoUiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTI6ImltYWdlLk1zYXRoUiI7czo1OiJ3dHlwZSI7czo1OiJpbWFnZSI7czoxMToid2lkZ2V0X25hbWUiO3M6MzoiaW1nIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MzoiaW1nIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czoyOToiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYm40My5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjEiO3M6NDoibGluayI7czoxOiIjIjtzOjEzOiJkZXNjcmlwdGlvbl8yIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMSI7czowOiIiO3M6ODoic2hvd19kZXMiO3M6MToiMSI7fQ==', 77, 0),
(13767, 'content', 'image.JDOnNy', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjk0NjUyOTc5NDIyOTM0NTEiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5KRE9uTnkiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5KRE9uTnkiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuNDAuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjEiO30=', 77, 0),
(13766, 'content', 'image.Gk9sJT', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjQ1NjQ1MzcxODc0MDE4ODciO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5HazlzSlQiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5HazlzSlQiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2JuNDQuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjEiO30=', 77, 0),
(13765, 'content', 'image.fZJk7t', 'YToxOTp7czo0OiJyYW5kIjtzOjE5OiIwLjM2OTI3MjM0OTUzODg1MDI0IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuZlpKazd0IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuZlpKazd0IjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJpbWciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MzoiaW1nIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjI5OiJjYXRhbG9nL2RlbW8vYmFubmVycy9ibjQxLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIxIjt9', 77, 0),
(16104, 'content', 'icon_box.pVLulh', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjk0Nzc4NzA4MDQ2NDczODciO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5wVkx1bGgiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5wVkx1bGgiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE0OiJDb250ZXN0IHdpbm5lciI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNDoiQ29udGVzdCB3aW5uZXIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE0OiJDb250ZXN0IHdpbm5lciI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12Mi5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo4NjoiJmx0O2RpdiZndDtUcmlhbmdsZXMsIGNoZXZyb25zLCBkaWFtb25kcyAtIHlvdSBuYW1lIGl0LCBqZXdlbHJ5IGlzIGdldHRpbmcmbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6ODY6IiZsdDtkaXYmZ3Q7VHJpYW5nbGVzLCBjaGV2cm9ucywgZGlhbW9uZHMgLSB5b3UgbmFtZSBpdCwgamV3ZWxyeSBpcyBnZXR0aW5nJmx0Oy9kaXYmZ3Q7IjtzOjE0OiJpY29uX2JveF9zdHlsZSI7czoxNDoiZmVhdHVyZS1ib3gtdjEiO3M6MTA6InRleHRfYWxpZ24iO3M6MTY6ImZlYXR1cmUtYm94LWxlZnQiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 33, 0),
(15741, 'content', 'html.HI1Bj1', 'YToxMjp7czo0OiJyYW5kIjtzOjE4OiIwLjcxNzEzNTQwMjU2NDYxNDUiO3M6NjoibW9kdWxlIjtzOjExOiJodG1sLkhJMUJqMSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTE6Imh0bWwuSEkxQmoxIjtzOjU6Ind0eXBlIjtzOjQ6Imh0bWwiO3M6MTE6IndpZGdldF9uYW1lIjtzOjE0OiJjdXN0b20gc3VwcG9ydCI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNDoiY3VzdG9tIHN1cHBvcnQiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE0OiJjdXN0b20gc3VwcG9ydCI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo4NDE6IiZsdDtkaXYgY2xhc3M9JnF1b3Q7Ym94LXN1cHBvcnQgdGV4dC1jZW50ZXIgYmctdjImcXVvdDsmZ3Q7DQogICZsdDtkaXYgY2xhc3M9JnF1b3Q7aW5uZXImcXVvdDsmZ3Q7DQogICAgJmx0O2RpdiBjbGFzcz0mcXVvdDtncmVlbiB0ZXh0LXVwcGVyY2FzZSZxdW90OyBzdHlsZT0mcXVvdDtmb250LXdlaWdodDpib2xkOyZxdW90OyZndDsNCiAgICAgIEhvdGxpbmUgOg0KICAgICZsdDsvZGl2Jmd0Ow0KICAgICZsdDtkaXYgY2xhc3M9JnF1b3Q7cGhvbmUmcXVvdDsgc3R5bGU9JnF1b3Q7Zm9udC1zaXplOjQ4cHg7Y29sb3I6I2ZmZjtmb250LWZhbWlseTpEZWxpdXMgVW5pY2FzZTsmcXVvdDsmZ3Q7KCswMSktIDEyMyA3ODkgNDU2Jmx0Oy9kaXYmZ3Q7DQogICAgJmx0O2RpdiBjbGFzcz0mcXVvdDtkZXNjcmlwdGlvbiZxdW90OyBzdHlsZT0mcXVvdDtmb250LXNpemU6MTRweDtjb2xvcjpyZ2JhKDI1NSwyNTUsMjU1LDAuNTcpO21heC13aWR0aDo0MjBweDtkaXNwbGF5OmlubGluZS1ibG9jayZxdW90OyZndDsNCiAgICAgIFRyYWlucyB3b21lbiB0byB3b3JrIGluIHByb2Zlc3Npb25hbCBraXRjaGVucywgcHJvdmlkZXMgaGVhbHRoeSBtZWFscyBmb3IgY2hpbGRjYXJlIGNlbnRlcnMsIGFuZCB1c2VzIGZvb2QgLi4uDQogICAgJmx0Oy9kaXYmZ3Q7DQogICAgJmx0O2RpdiBjbGFzcz0mcXVvdDtwYWRkaW5nLXRvcC0yMCZxdW90OyZndDsmbHQ7aSBzdHlsZT0mcXVvdDtmb250LXNpemU6MjRweDtjb2xvcjojZmZmOyZxdW90OyBjbGFzcz0mcXVvdDtmYSBmYS13aGF0c2FwcCZxdW90OyZndDsmbHQ7L2kmZ3Q7Jmx0Oy9kaXYmZ3Q7DQogICZsdDsvZGl2Jmd0OyAgDQombHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6ODQxOiImbHQ7ZGl2IGNsYXNzPSZxdW90O2JveC1zdXBwb3J0IHRleHQtY2VudGVyIGJnLXYyJnF1b3Q7Jmd0Ow0KICAmbHQ7ZGl2IGNsYXNzPSZxdW90O2lubmVyJnF1b3Q7Jmd0Ow0KICAgICZsdDtkaXYgY2xhc3M9JnF1b3Q7Z3JlZW4gdGV4dC11cHBlcmNhc2UmcXVvdDsgc3R5bGU9JnF1b3Q7Zm9udC13ZWlnaHQ6Ym9sZDsmcXVvdDsmZ3Q7DQogICAgICBIb3RsaW5lIDoNCiAgICAmbHQ7L2RpdiZndDsNCiAgICAmbHQ7ZGl2IGNsYXNzPSZxdW90O3Bob25lJnF1b3Q7IHN0eWxlPSZxdW90O2ZvbnQtc2l6ZTo0OHB4O2NvbG9yOiNmZmY7Zm9udC1mYW1pbHk6RGVsaXVzIFVuaWNhc2U7JnF1b3Q7Jmd0OygrMDEpLSAxMjMgNzg5IDQ1NiZsdDsvZGl2Jmd0Ow0KICAgICZsdDtkaXYgY2xhc3M9JnF1b3Q7ZGVzY3JpcHRpb24mcXVvdDsgc3R5bGU9JnF1b3Q7Zm9udC1zaXplOjE0cHg7Y29sb3I6cmdiYSgyNTUsMjU1LDI1NSwwLjU3KTttYXgtd2lkdGg6NDIwcHg7ZGlzcGxheTppbmxpbmUtYmxvY2smcXVvdDsmZ3Q7DQogICAgICBUcmFpbnMgd29tZW4gdG8gd29yayBpbiBwcm9mZXNzaW9uYWwga2l0Y2hlbnMsIHByb3ZpZGVzIGhlYWx0aHkgbWVhbHMgZm9yIGNoaWxkY2FyZSBjZW50ZXJzLCBhbmQgdXNlcyBmb29kIC4uLg0KICAgICZsdDsvZGl2Jmd0Ow0KICAgICZsdDtkaXYgY2xhc3M9JnF1b3Q7cGFkZGluZy10b3AtMjAmcXVvdDsmZ3Q7Jmx0O2kgc3R5bGU9JnF1b3Q7Zm9udC1zaXplOjI0cHg7Y29sb3I6I2ZmZjsmcXVvdDsgY2xhc3M9JnF1b3Q7ZmEgZmEtd2hhdHNhcHAmcXVvdDsmZ3Q7Jmx0Oy9pJmd0OyZsdDsvZGl2Jmd0Ow0KICAmbHQ7L2RpdiZndDsgIA0KJmx0Oy9kaXYmZ3Q7Ijt9', 64, 0),
(15746, 'content', 'image.cqdmE9', 'YToxOTp7czo0OiJyYW5kIjtzOjE5OiIwLjE5OTYzNzI2MTYxOTg3NTk0IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuY3FkbUU5IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuY3FkbUU5IjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJpbWciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MzoiaW1nIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjI4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9ibjkuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIwIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjAiO30=', 64, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(45, 'Product 18', '', '', '', '', '', '', '', 998, 5, 'catalog/demo/product/product15.jpg', 8, 1, '2000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 2, '2009-02-03 21:08:17', '2016-05-25 16:12:27'),
(44, 'Product 17', '', '', '', '', '', '', '', 999, 5, 'catalog/demo/product/product14.jpg', 8, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:00', '2016-05-25 16:03:04'),
(43, 'Product 16', '', '', '', '', '', '', '', 929, 5, 'catalog/demo/product/product13.jpg', 8, 0, '500.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 2, '2009-02-03 21:07:49', '2016-06-21 09:18:03'),
(42, 'Product 15', '', '', '', '', '', '', '', 990, 5, 'catalog/demo/product/product12.jpg', 8, 1, '100.0000', 400, 9, '2009-02-04', '12.50000000', 1, '1.00000000', '2.00000000', '3.00000000', 1, 1, 2, 0, 1, 10, '2009-02-03 21:07:37', '2016-05-25 16:01:57'),
(41, 'Product 14', '', '', '', '', '', '', '', 975, 5, 'catalog/demo/product/product11.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 21:07:26', '2016-05-25 16:10:29'),
(40, 'product 11', '', '', '', '', '', '', '', 969, 5, 'catalog/demo/product/product10.jpg', 8, 1, '101.0000', 0, 9, '2009-02-03', '10.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 36, '2009-02-03 21:07:12', '2016-05-25 16:04:20'),
(36, 'Product 9', '', '', '', '', '', '', '', 989, 6, 'catalog/demo/product/product9.jpg', 8, 0, '100.0000', 100, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 18:09:19', '2016-05-25 16:14:14'),
(35, 'Product 8', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/product/product8.jpg', 0, 0, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 2, '2009-02-03 18:08:31', '2016-05-25 16:13:16'),
(34, 'Product 7', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/product/product7.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 31, '2009-02-03 18:07:54', '2016-05-25 16:14:58'),
(33, 'Product 6', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/product/product6.jpg', 0, 1, '200.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 1, '2009-02-03 17:08:31', '2016-05-25 16:06:15'),
(32, 'Product 5', '', '', '', '', '', '', '', 998, 6, 'catalog/demo/product/product5.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 17:07:26', '2016-05-25 16:16:23'),
(31, 'Product 4', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/product/product4.jpg', 0, 1, '80.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 0, '2009-02-03 17:00:10', '2016-07-18 17:13:57'),
(30, 'Product 3', '', '', '', '', '', '', '', 6, 6, 'catalog/demo/product/product3.jpg', 9, 1, '100.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 7, '2009-02-03 16:59:00', '2016-05-25 16:03:48'),
(29, 'Product 2', '', '', '', '', '', '', '', 998, 6, 'catalog/demo/product/product2.jpg', 6, 1, '279.9900', 0, 9, '2009-02-03', '133.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 0, '2009-02-03 16:42:17', '2016-05-25 16:00:09'),
(28, 'Product 1', '', '', '', '', '', '', '', 938, 7, 'catalog/demo/product/product1.jpg', 5, 1, '100.0000', 200, 9, '2009-02-03', '146.40000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 6, '2009-02-03 16:06:50', '2016-06-21 09:21:45'),
(46, 'Product 13', '', '', '', '', '', '', '', 998, 5, 'catalog/demo/product/product16.jpg', 10, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:29', '2016-05-25 16:07:06'),
(47, 'Product 10', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/product/product17.jpg', 7, 1, '100.0000', 400, 9, '2009-02-03', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 1, '2009-02-03 21:08:40', '2016-05-25 16:05:13'),
(48, 'product 12', 'test 1', '', '', '', '', '', 'test 2', 995, 5, 'catalog/demo/product/product18.jpg', 8, 1, '100.0000', 0, 9, '2009-02-08', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 5, '2009-02-08 17:21:51', '2016-07-18 16:37:08'),
(50, 'product 19', '', '', '', '', '', '', '', 99, 6, 'catalog/demo/product/product19.jpg', 0, 1, '500.0000', 0, 9, '2015-11-26', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 11, '2015-11-26 11:09:46', '2016-05-25 16:02:40'),
(51, 'Product 20', '', '', '', '', '', '', '', 50, 6, 'catalog/demo/product/product20.jpg', 0, 1, '250.0000', 0, 10, '2015-11-26', '2.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2015-11-26 11:11:15', '2016-07-18 11:25:34');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(43, 2, 2, '1'),
(47, 4, 1, '16GB'),
(42, 3, 2, '100mhz'),
(47, 2, 2, '4'),
(42, 3, 1, '100mhz'),
(43, 4, 2, '8gb'),
(47, 2, 1, '4'),
(43, 2, 1, '1'),
(47, 4, 2, '16GB'),
(43, 4, 1, '8gb');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(31, 2, 'HP Stream &amp; Pavilion mini', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Designed to hold tapes up to 1,500 Inches long.&lt;/li&gt;&lt;li&gt; For Tape Width: 1/2 and 3/4 Inches&lt;/li&gt;&lt;li&gt; 1&quot; Core Desk Tape Dispenser.&lt;/li&gt;&lt;li&gt; For tapes 1/2&quot; and 3/4&quot; wide up to 1500&quot; long.&lt;/li&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Extra Core (MMMC15CORE), sold separately.&lt;/li&gt;&lt;li&gt; Sold by the EA&lt;/li&gt;&lt;/ul&gt;', 'Bom denim', 'HP Stream &amp; Pavilion mini', '', ''),
(50, 2, 'Rescue-remedy-20ml-spray', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Designed to hold tapes up to 1,500 Inches long.&lt;/li&gt;&lt;li&gt; For Tape Width: 1/2 and 3/4 Inches&lt;/li&gt;&lt;li&gt; 1&quot; Core Desk Tape Dispenser.&lt;/li&gt;&lt;li&gt; For tapes 1/2&quot; and 3/4&quot; wide up to 1500&quot; long.&lt;/li&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Extra Core (MMMC15CORE), sold separately.&lt;/li&gt;&lt;li&gt; Sold by the EA&lt;/li&gt;&lt;/ul&gt;', 'FlooringTile', 'Rescue-remedy-20ml-spray', '', ''),
(45, 1, 'PB2 Powdered Peanut Butter', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Designed to hold tapes up to 1,500 Inches long.&lt;/li&gt;&lt;li&gt; For Tape Width: 1/2 and 3/4 Inches&lt;/li&gt;&lt;li&gt; 1&quot; Core Desk Tape Dispenser.&lt;/li&gt;&lt;li&gt; For tapes 1/2&quot; and 3/4&quot; wide up to 1500&quot; long.&lt;/li&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Extra Core (MMMC15CORE), sold separately.&lt;/li&gt;&lt;li&gt; Sold by the EA&lt;/li&gt;&lt;/ul&gt;', 'Heels', 'PB2 Powdered Peanut Butter', '', ''),
(28, 1, 'Asus - 15.6 Laptop ', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Designed to hold tapes up to 1,500 Inches long.&lt;/li&gt;&lt;li&gt; For Tape Width: 1/2 and 3/4 Inches&lt;/li&gt;&lt;li&gt; 1&quot; Core Desk Tape Dispenser.&lt;/li&gt;&lt;li&gt; For tapes 1/2&quot; and 3/4&quot; wide up to 1500&quot; long.&lt;/li&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Extra Core (MMMC15CORE), sold separately.&lt;/li&gt;&lt;li&gt; Sold by the EA&lt;/li&gt;&lt;/ul&gt;', 'sandal', 'Asus - 15.6 Laptop ', '', ''),
(29, 1, 'Mpow Grip Magic 360', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Stapler has 20 sheet stapling capacity; opens for tacking&lt;/li&gt;&lt;li&gt; Specialized inner rail provides long term stapling integrity; metal construction ensures durability&lt;/li&gt;&lt;li&gt; Locking latch secures staple position; Limited lifetime warranty&lt;/li&gt;&lt;/ul&gt; ', 'Refrigerators', 'Mpow Grip Magic 360', '', ''),
(30, 2, 'Dell Inspiron 20 3059 19 5', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Designed to hold tapes up to 1,500 Inches long.&lt;/li&gt;&lt;li&gt; For Tape Width: 1/2 and 3/4 Inches&lt;/li&gt;&lt;li&gt; 1&quot; Core Desk Tape Dispenser.&lt;/li&gt;&lt;li&gt; For tapes 1/2&quot; and 3/4&quot; wide up to 1500&quot; long.&lt;/li&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Extra Core (MMMC15CORE), sold separately.&lt;/li&gt;&lt;li&gt; Sold by the EA&lt;/li&gt;&lt;/ul&gt;', 'KitchenFaucets', 'Dell Inspiron 20 3059 19 5', '', ''),
(30, 1, 'Dell Inspiron 20 3059 19 5', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Designed to hold tapes up to 1,500 Inches long.&lt;/li&gt;&lt;li&gt; For Tape Width: 1/2 and 3/4 Inches&lt;/li&gt;&lt;li&gt; 1&quot; Core Desk Tape Dispenser.&lt;/li&gt;&lt;li&gt; For tapes 1/2&quot; and 3/4&quot; wide up to 1500&quot; long.&lt;/li&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Extra Core (MMMC15CORE), sold separately.&lt;/li&gt;&lt;li&gt; Sold by the EA&lt;/li&gt;&lt;/ul&gt;', 'KitchenFaucets', 'Dell Inspiron 20 3059 19 5', '', ''),
(32, 1, 'Ulefone Paris - Outras marcas', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Stapler has 20 sheet stapling capacity; opens for tacking&lt;/li&gt;&lt;li&gt; Specialized inner rail provides long term stapling integrity; metal construction ensures durability&lt;/li&gt;&lt;li&gt; Locking latch secures staple position; Limited lifetime warranty&lt;/li&gt;&lt;/ul&gt; ', '', 'Ulefone Paris - Outras marcas', '', ''),
(42, 2, 'Bar - Electra', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;\r\n\r\n&lt;li&gt; Stapler has 20 sheet stapling capacity; opens for tacking&lt;/li&gt;\r\n\r\n&lt;li&gt; Specialized inner rail provides long term stapling integrity; metal construction ensures durability&lt;/li&gt;\r\n\r\n&lt;li&gt; Locking latch secures staple position; Limited lifetime warranty&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n ', 'LightingCeiling', 'Bar - Electra', '', ''),
(47, 1, 'Eye Cream for Wrinkles Dark', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Designed to hold tapes up to 1,500 Inches long.&lt;/li&gt;&lt;li&gt; For Tape Width: 1/2 and 3/4 Inches&lt;/li&gt;&lt;li&gt; 1&quot; Core Desk Tape Dispenser.&lt;/li&gt;&lt;li&gt; For tapes 1/2&quot; and 3/4&quot; wide up to 1500&quot; long.&lt;/li&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Extra Core (MMMC15CORE), sold separately.&lt;/li&gt;&lt;li&gt; Sold by the EA&lt;/li&gt;&lt;/ul&gt;', 'red', 'Eye Cream for Wrinkles Dark', '', ''),
(35, 1, 'F&amp;F Blossom Print Prom Dress', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Designed to hold tapes up to 1,500 Inches long.&lt;/li&gt;&lt;li&gt; For Tape Width: 1/2 and 3/4 Inches&lt;/li&gt;&lt;li&gt; 1&quot; Core Desk Tape Dispenser.&lt;/li&gt;&lt;li&gt; For tapes 1/2&quot; and 3/4&quot; wide up to 1500&quot; long.&lt;/li&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Extra Core (MMMC15CORE), sold separately.&lt;/li&gt;&lt;li&gt; Sold by the EA&lt;/li&gt;&lt;/ul&gt;', '', 'F&amp;F Blossom Print Prom Dress', '', ''),
(31, 1, 'HP Stream &amp; Pavilion mini', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Designed to hold tapes up to 1,500 Inches long.&lt;/li&gt;&lt;li&gt; For Tape Width: 1/2 and 3/4 Inches&lt;/li&gt;&lt;li&gt; 1&quot; Core Desk Tape Dispenser.&lt;/li&gt;&lt;li&gt; For tapes 1/2&quot; and 3/4&quot; wide up to 1500&quot; long.&lt;/li&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Extra Core (MMMC15CORE), sold separately.&lt;/li&gt;&lt;li&gt; Sold by the EA&lt;/li&gt;&lt;/ul&gt;', 'Bom denim', 'HP Stream &amp; Pavilion mini', '', ''),
(44, 2, 'Deodorant – Lavanila', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Stapler has 20 sheet stapling capacity; opens for tacking&lt;/li&gt;&lt;li&gt; Specialized inner rail provides long term stapling integrity; metal construction ensures durability&lt;/li&gt;&lt;li&gt; Locking latch secures staple position; Limited lifetime warranty&lt;/li&gt;&lt;/ul&gt;', 'KitchenSinks', 'Deodorant – Lavanila', '', ''),
(44, 1, 'Deodorant – Lavanila', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Stapler has 20 sheet stapling capacity; opens for tacking&lt;/li&gt;&lt;li&gt; Specialized inner rail provides long term stapling integrity; metal construction ensures durability&lt;/li&gt;&lt;li&gt; Locking latch secures staple position; Limited lifetime warranty&lt;/li&gt;&lt;/ul&gt;', 'KitchenSinks', 'Deodorant – Lavanila', '', ''),
(43, 2, 'Chairs pink for home', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Designed to hold tapes up to 1,500 Inches long.&lt;/li&gt;&lt;li&gt; For Tape Width: 1/2 and 3/4 Inches&lt;/li&gt;&lt;li&gt; 1&quot; Core Desk Tape Dispenser.&lt;/li&gt;&lt;li&gt; For tapes 1/2&quot; and 3/4&quot; wide up to 1500&quot; long.&lt;/li&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Extra Core (MMMC15CORE), sold separately.&lt;/li&gt;&lt;li&gt; Sold by the EA&lt;/li&gt;&lt;/ul&gt;', '', 'Chairs pink for home', '', ''),
(43, 1, 'Chairs pink for home', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Designed to hold tapes up to 1,500 Inches long.&lt;/li&gt;&lt;li&gt; For Tape Width: 1/2 and 3/4 Inches&lt;/li&gt;&lt;li&gt; 1&quot; Core Desk Tape Dispenser.&lt;/li&gt;&lt;li&gt; For tapes 1/2&quot; and 3/4&quot; wide up to 1500&quot; long.&lt;/li&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Extra Core (MMMC15CORE), sold separately.&lt;/li&gt;&lt;li&gt; Sold by the EA&lt;/li&gt;&lt;/ul&gt;', '', 'Chairs pink for home', '', ''),
(46, 1, 'Morpheme Kohinoor Gold Plus', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Designed to hold tapes up to 1,500 Inches long.&lt;/li&gt;&lt;li&gt; For Tape Width: 1/2 and 3/4 Inches&lt;/li&gt;&lt;li&gt; 1&quot; Core Desk Tape Dispenser.&lt;/li&gt;&lt;li&gt; For tapes 1/2&quot; and 3/4&quot; wide up to 1500&quot; long.&lt;/li&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Extra Core (MMMC15CORE), sold separately.&lt;/li&gt;&lt;li&gt; Sold by the EA&lt;/li&gt;&lt;/ul&gt;', 'Dishes', 'Morpheme Kohinoor Gold Plus', '', ''),
(33, 2, 'F&amp;F Lace Shift Dress', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Designed to hold tapes up to 1,500 Inches long.&lt;/li&gt;&lt;li&gt; For Tape Width: 1/2 and 3/4 Inches&lt;/li&gt;&lt;li&gt; 1&quot; Core Desk Tape Dispenser.&lt;/li&gt;&lt;li&gt; For tapes 1/2&quot; and 3/4&quot; wide up to 1500&quot; long.&lt;/li&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Extra Core (MMMC15CORE), sold separately.&lt;/li&gt;&lt;li&gt; Sold by the EA&lt;/li&gt;&lt;/ul&gt;', '', 'F&amp;F Lace Shift Dress', '', ''),
(33, 1, 'F&amp;F Lace Shift Dress', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Designed to hold tapes up to 1,500 Inches long.&lt;/li&gt;&lt;li&gt; For Tape Width: 1/2 and 3/4 Inches&lt;/li&gt;&lt;li&gt; 1&quot; Core Desk Tape Dispenser.&lt;/li&gt;&lt;li&gt; For tapes 1/2&quot; and 3/4&quot; wide up to 1500&quot; long.&lt;/li&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Extra Core (MMMC15CORE), sold separately.&lt;/li&gt;&lt;li&gt; Sold by the EA&lt;/li&gt;&lt;/ul&gt;', '', 'F&amp;F Lace Shift Dress', '', ''),
(34, 2, 'Cutie Floral Lace Shift Dress', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 't-shirt', 'Cutie Floral Lace Shift Dress', '', ''),
(34, 1, 'Cutie Floral Lace Shift Dress', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 't-shirt', 'Cutie Floral Lace Shift Dress', '', ''),
(47, 2, 'Eye Cream for Wrinkles Dark', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Designed to hold tapes up to 1,500 Inches long.&lt;/li&gt;&lt;li&gt; For Tape Width: 1/2 and 3/4 Inches&lt;/li&gt;&lt;li&gt; 1&quot; Core Desk Tape Dispenser.&lt;/li&gt;&lt;li&gt; For tapes 1/2&quot; and 3/4&quot; wide up to 1500&quot; long.&lt;/li&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Extra Core (MMMC15CORE), sold separately.&lt;/li&gt;&lt;li&gt; Sold by the EA&lt;/li&gt;&lt;/ul&gt;', 'red', 'Eye Cream for Wrinkles Dark', '', ''),
(40, 1, 'Una table 2_resize', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Designed to hold tapes up to 1,500 Inches long.&lt;/li&gt;&lt;li&gt; For Tape Width: 1/2 and 3/4 Inches&lt;/li&gt;&lt;li&gt; 1&quot; Core Desk Tape Dispenser.&lt;/li&gt;&lt;li&gt; For tapes 1/2&quot; and 3/4&quot; wide up to 1500&quot; long.&lt;/li&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Extra Core (MMMC15CORE), sold separately.&lt;/li&gt;&lt;li&gt; Sold by the EA&lt;/li&gt;&lt;/ul&gt;', '', 'Una table 2_resize', '', ''),
(40, 2, 'Una table 2_resize', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Designed to hold tapes up to 1,500 Inches long.&lt;/li&gt;&lt;li&gt; For Tape Width: 1/2 and 3/4 Inches&lt;/li&gt;&lt;li&gt; 1&quot; Core Desk Tape Dispenser.&lt;/li&gt;&lt;li&gt; For tapes 1/2&quot; and 3/4&quot; wide up to 1500&quot; long.&lt;/li&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Extra Core (MMMC15CORE), sold separately.&lt;/li&gt;&lt;li&gt; Sold by the EA&lt;/li&gt;&lt;/ul&gt;', '', 'Una table 2_resize', '', ''),
(46, 2, 'Morpheme Kohinoor Gold Plus', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Designed to hold tapes up to 1,500 Inches long.&lt;/li&gt;&lt;li&gt; For Tape Width: 1/2 and 3/4 Inches&lt;/li&gt;&lt;li&gt; 1&quot; Core Desk Tape Dispenser.&lt;/li&gt;&lt;li&gt; For tapes 1/2&quot; and 3/4&quot; wide up to 1500&quot; long.&lt;/li&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Extra Core (MMMC15CORE), sold separately.&lt;/li&gt;&lt;li&gt; Sold by the EA&lt;/li&gt;&lt;/ul&gt;', 'Dishes', 'Morpheme Kohinoor Gold Plus', '', ''),
(41, 1, 'Orlo chair 01', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Designed to hold tapes up to 1,500 Inches long.&lt;/li&gt;&lt;li&gt; For Tape Width: 1/2 and 3/4 Inches&lt;/li&gt;&lt;li&gt; 1&quot; Core Desk Tape Dispenser.&lt;/li&gt;&lt;li&gt; For tapes 1/2&quot; and 3/4&quot; wide up to 1500&quot; long.&lt;/li&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Extra Core (MMMC15CORE), sold separately.&lt;/li&gt;&lt;li&gt; Sold by the EA&lt;/li&gt;&lt;/ul&gt;', '', 'Orlo chair 01', '', ''),
(41, 2, 'Orlo chair 01', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Designed to hold tapes up to 1,500 Inches long.&lt;/li&gt;&lt;li&gt; For Tape Width: 1/2 and 3/4 Inches&lt;/li&gt;&lt;li&gt; 1&quot; Core Desk Tape Dispenser.&lt;/li&gt;&lt;li&gt; For tapes 1/2&quot; and 3/4&quot; wide up to 1500&quot; long.&lt;/li&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Extra Core (MMMC15CORE), sold separately.&lt;/li&gt;&lt;li&gt; Sold by the EA&lt;/li&gt;&lt;/ul&gt;', '', 'Orlo chair 01', '', ''),
(51, 1, 'F&amp;F Signature Floral Jacquard Double', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Designed to hold tapes up to 1,500 Inches long.&lt;/li&gt;&lt;li&gt; For Tape Width: 1/2 and 3/4 Inches&lt;/li&gt;&lt;li&gt; 1&quot; Core Desk Tape Dispenser.&lt;/li&gt;&lt;li&gt; For tapes 1/2&quot; and 3/4&quot; wide up to 1500&quot; long.&lt;/li&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Extra Core (MMMC15CORE), sold separately.&lt;/li&gt;&lt;li&gt; Sold by the EA&lt;/li&gt;&lt;/ul&gt;', '', 'F&amp;F Signature Floral Jacquard Double', '', ''),
(51, 2, 'F&amp;F Signature Floral Jacquard Double', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Designed to hold tapes up to 1,500 Inches long.&lt;/li&gt;&lt;li&gt; For Tape Width: 1/2 and 3/4 Inches&lt;/li&gt;&lt;li&gt; 1&quot; Core Desk Tape Dispenser.&lt;/li&gt;&lt;li&gt; For tapes 1/2&quot; and 3/4&quot; wide up to 1500&quot; long.&lt;/li&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Extra Core (MMMC15CORE), sold separately.&lt;/li&gt;&lt;li&gt; Sold by the EA&lt;/li&gt;&lt;/ul&gt;', '', 'F&amp;F Signature Floral Jacquard Double', '', ''),
(29, 2, 'Mpow Grip Magic 360', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Stapler has 20 sheet stapling capacity; opens for tacking&lt;/li&gt;&lt;li&gt; Specialized inner rail provides long term stapling integrity; metal construction ensures durability&lt;/li&gt;&lt;li&gt; Locking latch secures staple position; Limited lifetime warranty&lt;/li&gt;&lt;/ul&gt; ', 'Refrigerators', 'Mpow Grip Magic 360', '', ''),
(36, 2, 'Cutie Textured Halterneck Dress', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Designed to hold tapes up to 1,500 Inches long.&lt;/li&gt;&lt;li&gt; For Tape Width: 1/2 and 3/4 Inches&lt;/li&gt;&lt;li&gt; 1&quot; Core Desk Tape Dispenser.&lt;/li&gt;&lt;li&gt; For tapes 1/2&quot; and 3/4&quot; wide up to 1500&quot; long.&lt;/li&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Extra Core (MMMC15CORE), sold separately.&lt;/li&gt;&lt;li&gt; Sold by the EA&lt;/li&gt;&lt;/ul&gt;', 'Suspenders', 'Cutie Textured Halterneck Dress', '', ''),
(36, 1, 'Cutie Textured Halterneck Dress', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Designed to hold tapes up to 1,500 Inches long.&lt;/li&gt;&lt;li&gt; For Tape Width: 1/2 and 3/4 Inches&lt;/li&gt;&lt;li&gt; 1&quot; Core Desk Tape Dispenser.&lt;/li&gt;&lt;li&gt; For tapes 1/2&quot; and 3/4&quot; wide up to 1500&quot; long.&lt;/li&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Extra Core (MMMC15CORE), sold separately.&lt;/li&gt;&lt;li&gt; Sold by the EA&lt;/li&gt;&lt;/ul&gt;', 'Suspenders', 'Cutie Textured Halterneck Dress', '', ''),
(32, 2, 'Ulefone Paris - Outras marcas', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Stapler has 20 sheet stapling capacity; opens for tacking&lt;/li&gt;&lt;li&gt; Specialized inner rail provides long term stapling integrity; metal construction ensures durability&lt;/li&gt;&lt;li&gt; Locking latch secures staple position; Limited lifetime warranty&lt;/li&gt;&lt;/ul&gt; ', '', 'Ulefone Paris - Outras marcas', '', ''),
(48, 2, 'Gojeeva Sconce Wall Lamp', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Stapler has 20 sheet stapling capacity; opens for tacking&lt;/li&gt;&lt;li&gt; Specialized inner rail provides long term stapling integrity; metal construction ensures durability&lt;/li&gt;&lt;li&gt; Locking latch secures staple position; Limited lifetime warranty&lt;/li&gt;&lt;/ul&gt; ', '', 'Gojeeva Sconce Wall Lamp', '', ''),
(35, 2, 'F&amp;F Blossom Print Prom Dress', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Designed to hold tapes up to 1,500 Inches long.&lt;/li&gt;&lt;li&gt; For Tape Width: 1/2 and 3/4 Inches&lt;/li&gt;&lt;li&gt; 1&quot; Core Desk Tape Dispenser.&lt;/li&gt;&lt;li&gt; For tapes 1/2&quot; and 3/4&quot; wide up to 1500&quot; long.&lt;/li&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Extra Core (MMMC15CORE), sold separately.&lt;/li&gt;&lt;li&gt; Sold by the EA&lt;/li&gt;&lt;/ul&gt;', '', 'F&amp;F Blossom Print Prom Dress', '', ''),
(42, 1, 'Bar - Electra', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Stapler has 20 sheet stapling capacity; opens for tacking&lt;/li&gt;&lt;li&gt; Specialized inner rail provides long term stapling integrity; metal construction ensures durability&lt;/li&gt;&lt;li&gt; Locking latch secures staple position; Limited lifetime warranty&lt;/li&gt;&lt;/ul&gt; ', 'LightingCeiling', 'Bar - Electra', '', ''),
(28, 2, 'Asus - 15.6 Laptop ', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Designed to hold tapes up to 1,500 Inches long.&lt;/li&gt;&lt;li&gt; For Tape Width: 1/2 and 3/4 Inches&lt;/li&gt;&lt;li&gt; 1&quot; Core Desk Tape Dispenser.&lt;/li&gt;&lt;li&gt; For tapes 1/2&quot; and 3/4&quot; wide up to 1500&quot; long.&lt;/li&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Extra Core (MMMC15CORE), sold separately.&lt;/li&gt;&lt;li&gt; Sold by the EA&lt;/li&gt;&lt;/ul&gt;', 'sandal', 'Asus - 15.6 Laptop ', '', ''),
(45, 2, 'PB2 Powdered Peanut Butter', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Designed to hold tapes up to 1,500 Inches long.&lt;/li&gt;&lt;li&gt; For Tape Width: 1/2 and 3/4 Inches&lt;/li&gt;&lt;li&gt; 1&quot; Core Desk Tape Dispenser.&lt;/li&gt;&lt;li&gt; For tapes 1/2&quot; and 3/4&quot; wide up to 1500&quot; long.&lt;/li&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Extra Core (MMMC15CORE), sold separately.&lt;/li&gt;&lt;li&gt; Sold by the EA&lt;/li&gt;&lt;/ul&gt;', 'Heels', 'PB2 Powdered Peanut Butter', '', ''),
(50, 1, 'Rescue-remedy-20ml-spray', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Designed to hold tapes up to 1,500 Inches long.&lt;/li&gt;&lt;li&gt; For Tape Width: 1/2 and 3/4 Inches&lt;/li&gt;&lt;li&gt; 1&quot; Core Desk Tape Dispenser.&lt;/li&gt;&lt;li&gt; For tapes 1/2&quot; and 3/4&quot; wide up to 1500&quot; long.&lt;/li&gt;&lt;li&gt; Weighted, nonskid base for one-hand dispensing.&lt;/li&gt;&lt;li&gt; Extra Core (MMMC15CORE), sold separately.&lt;/li&gt;&lt;li&gt; Sold by the EA&lt;/li&gt;&lt;/ul&gt;', 'FlooringTile', 'Rescue-remedy-20ml-spray', '', ''),
(48, 1, 'Gojeeva Sconce Wall Lamp', '&lt;p&gt;	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot;a-vertical a-spacing-none&quot;&gt;&lt;li&gt; Stapler has 20 sheet stapling capacity; opens for tacking&lt;/li&gt;&lt;li&gt; Specialized inner rail provides long term stapling integrity; metal construction ensures durability&lt;/li&gt;&lt;li&gt; Locking latch secures staple position; Limited lifetime warranty&lt;/li&gt;&lt;/ul&gt; ', '', 'Gojeeva Sconce Wall Lamp', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(470, 42, 1, 30, 1, '66.0000', '0000-00-00', '0000-00-00'),
(469, 42, 1, 20, 1, '77.0000', '0000-00-00', '0000-00-00'),
(468, 42, 1, 10, 1, '88.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(3455, 43, 'catalog/demo/product/product12.jpg', 2),
(3447, 32, 'catalog/demo/product/product3.jpg', 3),
(3446, 32, 'catalog/demo/product/product4.jpg', 2),
(3442, 34, 'catalog/demo/product/product9.jpg', 2),
(3438, 36, 'catalog/demo/product/product8.jpg', 2),
(3397, 40, 'catalog/demo/product/product10.jpg', 4),
(3421, 41, 'catalog/demo/product/product13.jpg', 0),
(3464, 28, 'catalog/demo/product/product5.jpg', 0),
(3401, 47, 'catalog/demo/product/product19.jpg', 3),
(3392, 30, 'catalog/demo/product/product1.jpg', 0),
(3396, 40, 'catalog/demo/product/product11.jpg', 3),
(3472, 48, 'catalog/demo/product/product10.jpg', 3),
(3383, 44, 'catalog/demo/product/product16.jpg', 2),
(3454, 43, 'catalog/demo/product/product11.jpg', 1),
(3445, 32, 'catalog/demo/product/product1.jpg', 1),
(3444, 32, 'catalog/demo/product/product2.jpg', 0),
(3441, 34, 'catalog/demo/product/product20.jpg', 1),
(3440, 34, 'catalog/demo/product/product6.jpg', 0),
(3437, 36, 'catalog/demo/product/product6.jpg', 1),
(3436, 36, 'catalog/demo/product/product20.jpg', 0),
(3395, 40, 'catalog/demo/product/product18.jpg', 2),
(3463, 28, 'catalog/demo/product/product4.jpg', 0),
(3391, 30, 'catalog/demo/product/product2.jpg', 0),
(3384, 44, 'catalog/demo/product/product14.jpg', 3),
(3476, 31, 'catalog/demo/product/product1.jpg', 2),
(3367, 29, 'catalog/demo/product/product5.jpg', 3),
(3403, 33, 'catalog/demo/product/product7.jpg', 1),
(3380, 50, 'catalog/demo/product/product16.jpg', 3),
(3409, 46, 'catalog/demo/product/product17.jpg', 0),
(3408, 46, 'catalog/demo/product/product19.jpg', 0),
(3379, 50, 'catalog/demo/product/product17.jpg', 2),
(3375, 42, 'catalog/demo/product/product11.jpg', 3),
(3374, 42, 'catalog/demo/product/product18.jpg', 2),
(3402, 33, 'catalog/demo/product/product20.jpg', 0),
(3433, 35, 'catalog/demo/product/product7.jpg', 1),
(3432, 35, 'catalog/demo/product/product6.jpg', 0),
(3400, 47, 'catalog/demo/product/product16.jpg', 2),
(3468, 51, 'catalog/demo/product/product9.jpg', 3),
(3407, 46, 'catalog/demo/product/product15.jpg', 0),
(3406, 46, 'catalog/demo/product/product14.jpg', 0),
(3366, 29, 'catalog/demo/product/product4.jpg', 2),
(3420, 41, 'catalog/demo/product/product10.jpg', 0),
(3429, 45, 'catalog/demo/product/product16.jpg', 1),
(3428, 45, 'catalog/demo/product/product14.jpg', 0),
(3471, 48, 'catalog/demo/product/product13.jpg', 2),
(3365, 29, 'catalog/demo/product/product1.jpg', 1),
(3364, 29, 'catalog/demo/product/product3.jpg', 0),
(3390, 30, 'catalog/demo/product/product5.jpg', 0),
(3389, 30, 'catalog/demo/product/product4.jpg', 0),
(3467, 51, 'catalog/demo/product/product8.jpg', 2),
(3466, 51, 'catalog/demo/product/product7.jpg', 1),
(3465, 51, 'catalog/demo/product/product6.jpg', 0),
(3376, 42, 'catalog/demo/product/product12.jpg', 4),
(3373, 42, 'catalog/demo/product/product13.jpg', 1),
(3372, 42, 'catalog/demo/product/product10.jpg', 0),
(3378, 50, 'catalog/demo/product/product14.jpg', 1),
(3377, 50, 'catalog/demo/product/product15.jpg', 0),
(3382, 44, 'catalog/demo/product/product15.jpg', 1),
(3381, 44, 'catalog/demo/product/product17.jpg', 0),
(3462, 28, 'catalog/demo/product/product2.jpg', 0),
(3461, 28, 'catalog/demo/product/product3.jpg', 0),
(3394, 40, 'catalog/demo/product/product12.jpg', 1),
(3393, 40, 'catalog/demo/product/product13.jpg', 0),
(3399, 47, 'catalog/demo/product/product15.jpg', 1),
(3398, 47, 'catalog/demo/product/product14.jpg', 0),
(3404, 33, 'catalog/demo/product/product8.jpg', 2),
(3405, 33, 'catalog/demo/product/product9.jpg', 3),
(3470, 48, 'catalog/demo/product/product12.jpg', 1),
(3469, 48, 'catalog/demo/product/product11.jpg', 0),
(3422, 41, 'catalog/demo/product/product12.jpg', 0),
(3423, 41, 'catalog/demo/product/product18.jpg', 0),
(3475, 31, 'catalog/demo/product/product5.jpg', 1),
(3474, 31, 'catalog/demo/product/product3.jpg', 0),
(3430, 45, 'catalog/demo/product/product17.jpg', 2),
(3431, 45, 'catalog/demo/product/product19.jpg', 3),
(3434, 35, 'catalog/demo/product/product20.jpg', 2),
(3435, 35, 'catalog/demo/product/product9.jpg', 3),
(3439, 36, 'catalog/demo/product/product7.jpg', 3),
(3443, 34, 'catalog/demo/product/product8.jpg', 3),
(3448, 32, 'catalog/demo/product/product5.jpg', 4),
(3453, 43, 'catalog/demo/product/product10.jpg', 0),
(3456, 43, 'catalog/demo/product/product18.jpg', 3),
(3473, 48, 'catalog/demo/product/product18.jpg', 4),
(3477, 31, 'catalog/demo/product/product2.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(224, 35, 11, '', 1),
(225, 47, 12, '2011-04-22', 1),
(220, 42, 10, '2011-02-20 22:25', 1),
(226, 30, 5, '', 1),
(222, 42, 7, '', 1),
(221, 42, 9, '22:25', 1),
(223, 42, 2, '', 1),
(217, 42, 5, '', 1),
(209, 42, 6, '', 1),
(218, 42, 1, '', 1),
(208, 42, 4, 'test', 1),
(219, 42, 8, '2011-02-20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(11, 223, 42, 2, 45, 3998, 1, '40.0000', '+', 0, '+', '40.00000000', '+'),
(8, 223, 42, 2, 23, 48, 1, '10.0000', '+', 0, '+', '10.00000000', '+'),
(1, 217, 42, 5, 41, 100, 0, '1.0000', '+', 0, '+', '1.00000000', '+'),
(9, 223, 42, 2, 24, 194, 1, '20.0000', '+', 0, '+', '20.00000000', '+'),
(15, 226, 30, 5, 39, 2, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(16, 226, 30, 5, 40, 5, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(4, 217, 42, 5, 39, 92, 1, '4.0000', '+', 0, '+', '4.00000000', '+'),
(2, 217, 42, 5, 42, 200, 1, '2.0000', '+', 0, '+', '2.00000000', '+'),
(3, 217, 42, 5, 40, 300, 0, '3.0000', '+', 0, '+', '3.00000000', '+'),
(13, 224, 35, 11, 47, 10, 1, '10.0000', '+', 0, '+', '0.00000000', '+'),
(6, 218, 42, 1, 31, 146, 1, '20.0000', '+', 2, '-', '20.00000000', '+'),
(5, 218, 42, 1, 32, 96, 1, '10.0000', '+', 1, '+', '10.00000000', '+'),
(14, 224, 35, 11, 48, 15, 1, '15.0000', '+', 0, '+', '0.00000000', '+'),
(7, 218, 42, 1, 43, 300, 1, '30.0000', '+', 3, '+', '30.00000000', '+'),
(10, 223, 42, 2, 44, 2696, 1, '30.0000', '+', 0, '+', '30.00000000', '+'),
(12, 224, 35, 11, 46, 0, 1, '5.0000', '+', 0, '+', '0.00000000', '+');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(28, 29),
(28, 30),
(28, 31),
(28, 42),
(28, 44),
(28, 47),
(28, 48),
(29, 28),
(29, 30),
(29, 41),
(29, 44),
(30, 28),
(30, 29),
(30, 30),
(30, 41),
(30, 42),
(30, 47),
(30, 48),
(31, 28),
(31, 34),
(31, 41),
(31, 47),
(31, 48),
(31, 51),
(34, 31),
(34, 41),
(34, 47),
(40, 42),
(41, 29),
(41, 30),
(41, 31),
(41, 34),
(41, 42),
(42, 28),
(42, 30),
(42, 40),
(42, 41),
(44, 28),
(44, 29),
(44, 47),
(44, 51),
(47, 28),
(47, 30),
(47, 31),
(47, 34),
(47, 44),
(48, 28),
(48, 30),
(48, 31),
(48, 51),
(51, 31),
(51, 44),
(51, 48);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(609, 42, 1, 100),
(613, 47, 1, 300),
(618, 28, 1, 400),
(616, 43, 1, 600),
(612, 30, 1, 200),
(610, 44, 1, 700),
(614, 45, 1, 800),
(521, 49, 1, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(483, 42, 1, 1, '90.0000', '2014-03-16', '2020-03-16'),
(485, 30, 1, 2, '90.0000', '2014-03-16', '2020-03-16'),
(484, 30, 1, 1, '80.0000', '2014-03-16', '2020-03-16'),
(487, 32, 1, 1, '80.0000', '2014-03-17', '2020-03-17'),
(486, 33, 1, 1, '180.0000', '2014-04-05', '2020-04-05'),
(488, 43, 1, 0, '20.0000', '2010-06-23', '2019-08-01'),
(490, 28, 1, 0, '15.0000', '2014-06-10', '2018-10-30'),
(491, 51, 1, 0, '20.0000', '2010-06-29', '2019-11-19'),
(492, 48, 1, 0, '15.0000', '2010-07-29', '2019-11-29'),
(493, 31, 1, 0, '15.0000', '2010-02-24', '2019-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(28, 90),
(28, 91),
(28, 92),
(28, 93),
(28, 94),
(28, 95),
(28, 96),
(29, 33),
(29, 90),
(29, 91),
(29, 92),
(29, 93),
(29, 94),
(29, 95),
(29, 96),
(30, 33),
(30, 90),
(30, 91),
(30, 92),
(30, 93),
(30, 94),
(30, 95),
(30, 96),
(31, 33),
(31, 90),
(31, 91),
(31, 92),
(31, 93),
(31, 94),
(31, 95),
(31, 96),
(32, 90),
(32, 91),
(32, 92),
(32, 93),
(32, 94),
(32, 95),
(32, 96),
(33, 25),
(33, 28),
(33, 29),
(33, 30),
(33, 31),
(33, 32),
(33, 35),
(33, 36),
(34, 25),
(34, 28),
(34, 29),
(34, 30),
(34, 31),
(34, 32),
(35, 25),
(35, 28),
(35, 29),
(35, 30),
(35, 31),
(35, 32),
(36, 25),
(36, 28),
(36, 29),
(36, 30),
(36, 32),
(40, 17),
(40, 18),
(40, 20),
(40, 34),
(40, 46),
(40, 57),
(41, 17),
(41, 18),
(41, 20),
(41, 34),
(41, 46),
(41, 57),
(42, 17),
(42, 18),
(42, 20),
(42, 34),
(42, 46),
(42, 57),
(43, 17),
(43, 18),
(43, 20),
(43, 34),
(43, 46),
(43, 57),
(44, 24),
(44, 97),
(44, 98),
(44, 99),
(44, 100),
(44, 101),
(44, 102),
(45, 24),
(45, 97),
(45, 98),
(45, 99),
(45, 100),
(45, 101),
(45, 102),
(46, 24),
(46, 97),
(46, 98),
(46, 99),
(46, 101),
(46, 102),
(47, 28),
(47, 29),
(47, 31),
(47, 32),
(47, 97),
(48, 17),
(48, 18),
(48, 20),
(48, 34),
(48, 46),
(48, 57),
(50, 24),
(50, 97),
(50, 98),
(50, 99),
(50, 100),
(50, 101),
(50, 102),
(51, 25),
(51, 28),
(51, 29),
(51, 30),
(51, 31),
(51, 32);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(42, 0, 0),
(30, 0, 0),
(47, 0, 0),
(41, 0, 0),
(28, 0, 0),
(36, 0, 0),
(29, 0, 0),
(31, 0, 0),
(32, 0, 0),
(33, 0, 0),
(34, 0, 0),
(35, 0, 0),
(40, 0, 0),
(48, 0, 0),
(46, 0, 0),
(43, 0, 0),
(44, 0, 0),
(45, 0, 0),
(50, 0, 0),
(51, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(50, 0),
(51, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_review`
--

INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(1, 28, 0, 'demo', 'product good', 4, 1, '2016-03-18 08:47:29', '0000-00-00 00:00:00'),
(2, 29, 0, 'demo', 'Arcteryx Men''s Tantalus Jacket', 3, 1, '2016-03-18 08:47:46', '0000-00-00 00:00:00'),
(3, 30, 0, 'demo', 'dream', 5, 1, '2016-03-18 08:48:07', '0000-00-00 00:00:00'),
(4, 50, 0, 'demo', 'dream catcher', 3, 1, '2016-03-18 08:48:41', '0000-00-00 00:00:00'),
(5, 48, 0, 'demo', 'Flow Fuse-GT Snowboard Bindings', 5, 1, '2016-03-18 08:49:47', '0000-00-00 00:00:00'),
(6, 31, 0, 'demo', 'fooshee blue', 5, 1, '2016-03-18 08:50:05', '0000-00-00 00:00:00'),
(7, 32, 0, 'demo', 'fury grind', 4, 1, '2016-03-18 08:50:21', '0000-00-00 00:00:00'),
(8, 33, 0, 'demo', 'harley classic', 1, 1, '2016-03-18 08:50:44', '0000-00-00 00:00:00'),
(9, 34, 0, 'demo', 'harley remedy', 3, 1, '2016-03-18 08:51:00', '0000-00-00 00:00:00'),
(10, 35, 0, 'demo', 'hyperlite relapse wakeboard with webb boots', 2, 1, '2016-03-18 08:51:28', '0000-00-00 00:00:00'),
(11, 36, 0, 'demo', 'liquid force helmets', 3, 1, '2016-03-18 08:51:43', '0000-00-00 00:00:00'),
(12, 40, 0, 'demo', '	Mustard Conditions', 5, 1, '2016-03-18 08:52:01', '0000-00-00 00:00:00'),
(13, 41, 0, 'demo', '	Nikita Sideway Sista', 3, 1, '2016-03-18 08:52:18', '0000-00-00 00:00:00'),
(14, 42, 0, 'demo', 'smith io gog whitebranching', 4, 1, '2016-03-18 08:52:38', '0000-00-00 00:00:00'),
(15, 43, 0, 'demo', '	smith io vagabond', 5, 1, '2016-03-18 08:54:07', '0000-00-00 00:00:00'),
(16, 44, 0, 'demo', 'smith scope vagabond', 5, 1, '2016-03-18 08:55:00', '0000-00-00 00:00:00'),
(17, 45, 0, 'demo', 'technine split-t snbrd bind rasta', 3, 1, '2016-03-18 08:56:02', '0000-00-00 00:00:00'),
(18, 46, 0, 'demo', '	The North Face Vortex Triclimate Ski', 1, 1, '2016-03-18 08:56:29', '0000-00-00 00:00:00'),
(19, 51, 0, 'demo', '	Union Charger Snowboard Bindings - Men''s', 4, 1, '2016-03-18 08:56:45', '0000-00-00 00:00:00'),
(20, 47, 0, 'demo', 'w-omega grind', 5, 1, '2016-03-18 08:59:20', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(0, 0, 'shipping', 'shipping_sort_order', '3', 0),
(0, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(0, 0, 'sub_total', 'sub_total_status', '1', 0),
(0, 0, 'tax', 'tax_status', '1', 0),
(0, 0, 'total', 'total_sort_order', '9', 0),
(0, 0, 'total', 'total_status', '1', 0),
(0, 0, 'tax', 'tax_sort_order', '5', 0),
(0, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(0, 0, 'cod', 'cod_sort_order', '5', 0),
(0, 0, 'cod', 'cod_total', '0.01', 0),
(0, 0, 'cod', 'cod_order_status_id', '1', 0),
(0, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(0, 0, 'cod', 'cod_status', '1', 0),
(0, 0, 'shipping', 'shipping_status', '1', 0),
(0, 0, 'shipping', 'shipping_estimator', '1', 0),
(0, 0, 'coupon', 'coupon_sort_order', '4', 0),
(0, 0, 'coupon', 'coupon_status', '1', 0),
(0, 0, 'flat', 'flat_sort_order', '1', 0),
(0, 0, 'flat', 'flat_status', '1', 0),
(0, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(0, 0, 'flat', 'flat_tax_class_id', '9', 0),
(0, 0, 'flat', 'flat_cost', '5.00', 0),
(0, 0, 'credit', 'credit_sort_order', '7', 0),
(0, 0, 'credit', 'credit_status', '1', 0),
(0, 0, 'reward', 'reward_sort_order', '2', 0),
(0, 0, 'reward', 'reward_status', '1', 0),
(0, 0, 'category', 'category_status', '1', 0),
(0, 0, 'account', 'account_status', '1', 0),
(0, 0, 'affiliate', 'affiliate_status', '1', 0),
(0, 0, 'config', 'config_language', 'en-gb', 0),
(0, 0, 'config', 'config_admin_language', 'en-gb', 0),
(0, 0, 'config', 'config_currency', 'USD', 0),
(0, 0, 'config', 'config_currency_auto', '1', 0),
(0, 0, 'config', 'config_length_class_id', '1', 0),
(0, 0, 'config', 'config_weight_class_id', '1', 0),
(0, 0, 'config', 'config_product_count', '1', 0),
(0, 0, 'config', 'config_limit_admin', '9', 0),
(0, 0, 'config', 'config_review_status', '1', 0),
(0, 0, 'config', 'config_review_guest', '1', 0),
(0, 0, 'config', 'config_review_mail', '0', 0),
(0, 0, 'config', 'config_voucher_min', '1', 0),
(0, 0, 'config', 'config_voucher_max', '1000', 0),
(0, 0, 'config', 'config_tax', '1', 0),
(0, 0, 'config', 'config_tax_default', 'shipping', 0),
(0, 0, 'config', 'config_tax_customer', 'shipping', 0),
(0, 0, 'config', 'config_customer_online', '0', 0),
(0, 0, 'config', 'config_customer_group_id', '1', 0),
(0, 0, 'config', 'config_customer_group_display', '["1"]', 1),
(0, 0, 'config', 'config_customer_price', '0', 0),
(0, 0, 'config', 'config_login_attempts', '5', 0),
(0, 0, 'config', 'config_account_id', '3', 0),
(0, 0, 'voucher', 'voucher_sort_order', '8', 0),
(0, 0, 'voucher', 'voucher_status', '1', 0),
(0, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(0, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(0, 0, 'config', 'config_file_max_size', '300000', 0),
(0, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(0, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(0, 0, 'config', 'config_error_display', '1', 0),
(0, 0, 'config', 'config_error_log', '1', 0),
(0, 0, 'config', 'config_error_filename', 'error.log', 0),
(0, 0, 'pavmegamenu_params', 'pavmegamenu_params', '[{"submenu":"0","id":141,"align":"aligned-left","group":0,"cols":1,"rows":[]},{"id":117,"group":0,"cols":1,"subwidth":1170,"submenu":1,"align":"aligned-fullwidth","rows":[{"cols":[{"widgets":"wid-32","colwidth":3},{"widgets":"wid-39","colwidth":5},{"widgets":"wid-38","colwidth":4}]}]},{"id":120,"group":0,"cols":1,"submenu":1,"align":"aligned-left","rows":[{"cols":[{"type":"menu","colwidth":12}]}]},{"id":131,"group":0,"cols":1,"submenu":1,"align":"aligned-left","rows":[{"cols":[{"type":"menu","colwidth":12}]}]},{"id":126,"group":0,"cols":1,"submenu":1,"align":"aligned-left","rows":[{"cols":[{"type":"menu","colwidth":12}]}]}]', 0),
(0, 0, 'config', 'config_compression', '0', 0),
(0, 0, 'config', 'config_secure', '0', 0),
(0, 0, 'config', 'config_password', '1', 0),
(0, 0, 'config', 'config_shared', '0', 0),
(0, 0, 'config', 'config_encryption', 'LIfA6yVSabpN1g4GSGB2Y83IiPbn7Vv5pNa6wCwqFQCKCfXXFtCAF84LiEF1HgHuJHfFGetpcucS2eqb4DfdC2DUCWoUrvsEqwVRPphZAm3YgIMeoCCVEp9Sm1iptkRPCgLT7udnRqkAdCQ2sSJnfV2XPR9F3YnlPIkQQoHQst69eZ0q0BuF6iLtsncke5bN3qpc9CPCU6JPKlR1Xo6oKbwKld3bhLVDaaGuVTVOPJgXkgdTLdPVcNP3aj6bStQnagKco5iOHj1xH40CHTkQ3h5Pcj3c7h9gysibGpKyhxxurGml1ARDtVJ5YZO92b5kttfaeIjsSgARw1aeONsWHJYZ424I57ZIqfLjsCHlVH9fezHq00oxQd6V16V67EGBJyKoMhEBPmFlRIzQd4AD9XEFkYmMUcQZ7ywqqqHuRlRvHgTq1Xyymzc6nbzcTORzFtYWRWTUV6uszZXouhLq5tTTpW4AENKF2zhuYsr9ujhgIu4odnbQSrTWQXmkHUtKMdtlz46uUcUAlhxXGJsAxA1HvJRhZoJkbWhBEGg6Lsam2a0D3ILOuzR9FmAHUhGLaPlFvBC7OTsHxuaI8l8W5Oqo3MXKWQwDZVplpGQpr7pzH9vKaJderQ2MqsyM2o6tKv27C6bTBwE8j5ct4TkaVEbMcWhHfR5LfAWygowi10d7AUOnVIi38gBo4N6keWsFaWTZ6o4hQm5hTir8QRYQ70mdBkgzEjgdR7epOGCDjBuVYVnpo2cEsIXyaqLB3Jr7RuELqubFfV9ZIssp2IqZEkbFHnrryheNAEkKMU8pj2QAOogThMLCyghoTaqTX29DpEEwdI7Qvy2o0eJpwvAiOOAQoCRMKYszIxk9hVCpuhgJkxmRWtWUbTKv0VX08sfwh63Qh6LmiflvtnZAVCZWQ7FTbJUmrSHJ9vswiPFGQJgM30ZOmnbs2WteTz7Wl1ZbZv1ln2qSeGE2XQqSxFYy9skWcv7RgZbBJlfWsnHbmLiOY4m9QWIdpIQXWY5xsE1t', 0),
(0, 0, 'filter', 'filter_status', '1', 0),
(0, 0, 'google_captcha', 'google_captcha_secret', '6LcTyAYTAAAAAFh2-uDzQ_2N-npBtZS1oZbXe31z', 0),
(0, 0, 'pavblog', 'pavblog', '{"general_lwidth":"640","general_lheight":"500","general_swidth":"640","general_sheight":"500","general_xwidth":"640","general_xheight":"500","rss_limit_item":"12","keyword_listing_blogs_page":"blogs","children_columns":"3","general_cwidth":"640","general_cheight":"500","cat_limit_leading_blog":"1","cat_limit_secondary_blog":"5","cat_leading_image_type":"l","cat_secondary_image_type":"s","cat_columns_leading_blog":"1","cat_columns_secondary_blogs":"2","cat_show_title":"1","cat_show_description":"1","cat_show_readmore":"1","cat_show_image":"1","cat_show_author":"1","cat_show_category":"1","cat_show_created":"1","cat_show_hits":"1","cat_show_comment_counter":"1","blog_image_type":"l","blog_show_title":"1","blog_show_image":"1","blog_show_author":"1","blog_show_category":"1","blog_show_created":"1","blog_show_comment_counter":"1","blog_show_hits":"1","blog_show_comment_form":"1","comment_engine":"local","diquis_account":"pavothemes","facebook_appid":"100858303516","comment_limit":"10","facebook_width":"600","auto_publish_comment":"0","enable_recaptcha":"1"}', 1),
(0, 0, 'pavdeals', 'pavdeals_config', '{"order_status_id":"5","saleoff_icon":"http:\\/\\/localhost\\/oc\\/Dropbox\\/lexus_kitchen\\/image\\/cache\\/data\\/saleoff-150x150.png","today_deal":"10","time_end":"","enable_available":"1","enable_pass":"1","icon_width":"100","icon_height":"100","limit":"10","cols":"4","width":"500","height":"445"}', 1),
(0, 0, 'basic_captcha', 'basic_captcha_status', '1', 0),
(0, 0, 'theme_default', 'theme_default_image_location_height', '120', 0),
(0, 0, 'theme_default', 'theme_default_image_location_width', '120', 0),
(0, 0, 'theme_default', 'theme_default_image_cart_height', '120', 0),
(0, 0, 'theme_default', 'theme_default_image_cart_width', '120', 0),
(0, 0, 'theme_default', 'theme_default_image_product_width', '502', 0),
(0, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(0, 0, 'config', 'config_seo_url', '0', 0),
(0, 0, 'theme_default', 'theme_default_image_wishlist_height', '90', 0),
(0, 0, 'theme_default', 'theme_default_image_wishlist_width', '90', 0),
(0, 0, 'theme_default', 'theme_default_image_product_height', '502', 0),
(0, 0, 'theme_default', 'theme_default_image_additional_width', '502', 0),
(0, 0, 'theme_default', 'theme_default_image_additional_height', '502', 0),
(0, 0, 'theme_default', 'theme_default_image_related_width', '502', 0),
(0, 0, 'theme_default', 'theme_default_image_related_height', '502', 0),
(0, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(0, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(0, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(0, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(0, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(0, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(0, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(0, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(0, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(0, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(0, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(0, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(0, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(0, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(0, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(0, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(0, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(0, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(0, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(0, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(0, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(0, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(0, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(0, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(0, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(0, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(0, 0, 'google_captcha', 'google_captcha_key', '6LcTyAYTAAAAAD3hKJNuJVIZbRjJRo33MbF4qF7n', 0),
(0, 0, 'config', 'config_maintenance', '0', 0),
(0, 0, 'config', 'config_mail_alert', '', 0),
(0, 0, 'config', 'config_mail_smtp_port', '25', 0),
(0, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(0, 0, 'config', 'config_mail_smtp_password', '', 0),
(0, 0, 'config', 'config_mail_smtp_username', '', 0),
(0, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(0, 0, 'config', 'config_mail_parameter', '', 0),
(0, 0, 'config', 'config_mail_protocol', 'mail', 0),
(0, 0, 'config', 'config_ftp_status', '0', 0),
(0, 0, 'config', 'config_ftp_root', '', 0),
(0, 0, 'theme_default', 'theme_default_image_popup_height', '502', 0),
(0, 0, 'theme_default', 'theme_default_image_popup_width', '502', 0),
(0, 0, 'config', 'config_ftp_username', '', 0),
(0, 0, 'theme_default', 'theme_default_image_thumb_height', '502', 0),
(0, 0, 'theme_default', 'theme_default_image_thumb_width', '502', 0),
(0, 0, 'theme_default', 'theme_default_image_category_height', '270', 0),
(0, 0, 'themecontrol', 'themecontrol', '{"layout_id":"1","position":"1","cateogry_display_mode":"grid","listing_products_columns":"0","listing_products_columns_small":"2","listing_products_columns_minismall":"1","category_pzoom":"1","product_enablezoom":"1","product_zoomgallery":"slider","product_zoommode":"basic","product_zoomlenssize":"150","product_zoomeasing":"1","product_zoomlensshape":"basic","product_related_column":"0","enable_product_customtab":"1","product_customtab_name":{"1":"demo en","2":""},"product_customtab_content":{"1":"&lt;p&gt;demo en&lt;\\/p&gt;","2":""},"location_address":"79-99 Beaver Street, New York, NY 10005, USA","location_latitude":"40.705423","location_longitude":"-74.008616","contact_customhtml":{"1":"Interested in working together? Fill out the Project Inquiry form below with some information about your project. Please allow a couple of business days for me to respond","2":""},"skin":"","theme_width":"auto","enable_custom_copyright":"1","copyright":" &amp;copy; Fresh.com 2017 All rights reserved","enable_offsidebars":"1","enable_paneltool":"1","home_container_full":"1","logo_type":"logo-theme","offcanvas":"megamenu","header_layout":"header","quickview":"1","widget-logo":{"1":"&lt;div class=&quot;logo-footer&quot;&gt;&lt;img class=&quot;&quot; src=&quot;image\\/catalog\\/logo_theme.png&quot; alt=&quot;logo&quot;&gt;&lt;\\/div&gt;\\r\\n&lt;div class=&quot;content-html&quot;&gt;\\r\\n    They key is to have every key, the key to open every door. How business? Boomin. Bless up. Life is what you make it, so let make it. Another one.\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;row&quot;&gt;\\r\\n    &lt;div class=&quot;col-lg-5 col-md-5 col-sm-5 col-xs-12&quot;&gt;\\r\\n        &lt;address&gt;\\r\\n            &lt;strong&gt;Store locator&lt;\\/strong&gt;&lt;br&gt;              \\r\\n            PO Box 1230, Georgetown,&lt;br&gt;\\r\\n            Grand Cayman, CAYMAN &lt;br&gt;\\r\\n            ISLANDS - UK&lt;br&gt;\\r\\n        &lt;\\/address&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col-lg-5 col-md-5 col-sm-5 col-xs-12&quot;&gt;\\r\\n        &lt;address&gt;\\r\\n            &lt;strong&gt;Email&lt;\\/strong&gt;&lt;br&gt; \\r\\n            &lt;a href=&quot;mailto:#&quot;&gt;contact-email@domain.com&lt;\\/a&gt;\\r\\n            &lt;a href=&quot;mailto:#&quot;&gt;info-email@domain.com&lt;\\/a&gt;\\r\\n        &lt;\\/address&gt;\\r\\n    &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;","2":"&lt;div class=&quot;logo-footer&quot;&gt;&lt;img class=&quot;&quot; src=&quot;image\\/catalog\\/logo_theme.png&quot; alt=&quot;logo&quot;&gt;&lt;\\/div&gt;\\r\\n                    &lt;div class=&quot;content-html&quot;&gt;\\r\\n                        They key is to have every key, the key to open every door. How business? Boomin. Bless up. Life is what you make it, so let make it. Another one.\\r\\n                    &lt;\\/div&gt;\\r\\n                    &lt;div class=&quot;row&quot;&gt;\\r\\n                        &lt;div class=&quot;col-lg-5 col-md-5 col-sm-5 col-xs-12&quot;&gt;\\r\\n                            &lt;address&gt;\\r\\n                                &lt;strong&gt;Store locator&lt;\\/strong&gt;&lt;br&gt;              \\r\\n                                PO Box 1230, Georgetown,&lt;br&gt;\\r\\n                                Grand Cayman, CAYMAN &lt;br&gt;\\r\\n                                ISLANDS - UK&lt;br&gt;\\r\\n                            &lt;\\/address&gt;\\r\\n                        &lt;\\/div&gt;\\r\\n                        &lt;div class=&quot;col-lg-5 col-md-5 col-sm-5 col-xs-12&quot;&gt;\\r\\n                            &lt;address&gt;\\r\\n                                &lt;strong&gt;Email&lt;\\/strong&gt;&lt;br&gt; \\r\\n                                &lt;a href=&quot;mailto:#&quot;&gt;contact-email@domain.com&lt;\\/a&gt;\\r\\n                                &lt;a href=&quot;mailto:#&quot;&gt;info-email@domain.com&lt;\\/a&gt;\\r\\n                            &lt;\\/address&gt;\\r\\n                        &lt;\\/div&gt;\\r\\n                    &lt;\\/div&gt;"},"widget-social":{"1":"&lt;div class=&quot;panel&quot;&gt;\\r\\n                        &lt;div class=&quot;panel-heading&quot;&gt;\\r\\n                        &lt;h5 class=&quot;panel-title&quot;&gt; Social &lt;\\/h5&gt;\\r\\n                        &lt;\\/div&gt;                    \\r\\n                        &lt;ul class=&quot;list-inline social margin-top-20&quot;&gt;\\r\\n                            &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;icons fa fa-facebook&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n                            &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;icons fa fa-twitter&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n                            &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;icons fa fa-google-plus&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n                            &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;icons fa fa-instagram&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n                            &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;icons fa fa-share&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n                            &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;icons fa fa-pinterest&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n                            &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;icons fa fa-vimeo-square&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n                            &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;icons fa fa-youtube&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n                        &lt;\\/ul&gt; \\r\\n                    &lt;\\/div&gt;","2":"&lt;div class=&quot;panel&quot;&gt;\\r\\n                        &lt;div class=&quot;panel-heading&quot;&gt;\\r\\n                        &lt;h5 class=&quot;panel-title&quot;&gt; Social &lt;\\/h5&gt;\\r\\n                        &lt;\\/div&gt;                    \\r\\n                        &lt;ul class=&quot;list-inline social margin-top-20&quot;&gt;\\r\\n                            &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;icons fa fa-facebook&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n                            &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;icons fa fa-twitter&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n                            &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;icons fa fa-google-plus&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n                            &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;icons fa fa-instagram&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n                            &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;icons fa fa-share&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n                            &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;icons fa fa-pinterest&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n                            &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;icons fa fa-vimeo-square&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n                            &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;icons fa fa-youtube&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n                        &lt;\\/ul&gt; \\r\\n                    &lt;\\/div&gt;"},"module_paypal":{"1":"&lt;img class=&quot;img-responsive&quot; alt=&quot;payment&quot; src=&quot;image\\/catalog\\/payment.png&quot;&gt;","2":"&lt;img class=&quot;img-responsive&quot; alt=&quot;payment&quot; src=&quot;image\\/catalog\\/payment.png&quot;&gt;"},"enable_customfont":"0","type_fonts1":"standard","normal_fonts1":"inherit","google_url1":"","google_family1":"","fontsize1":"inherit","type_fonts2":"standard","normal_fonts2":"inherit","google_url2":"","google_family2":"","fontsize2":"inherit","type_fonts3":"standard","normal_fonts3":"inherit","google_url3":"","google_family3":"","fontsize3":"inherit","type_fonts4":"standard","normal_fonts4":"Verdana, Geneva, sans-serif","google_url4":"","google_family4":"","body_selector4":"","block_showcase":"","block_promotion":"","block_footer_top":"","block_footer_center":"","block_footer_bottom":"","enable_compress_css":"","exclude_css_files":"bootstrap.css","customize_theme":"","custom_css":"","custom_javascript":""}', 1),
(0, 0, 'pavverticalmenu_params', 'params', '[{"submenu":1,"subwidth":650,"id":49,"group":0,"cols":1,"rows":[{"cols":[{"widgets":"wid-17|wid-21","colwidth":4},{"widgets":"wid-22","colwidth":4},{"widgets":"wid-23","colwidth":4}]}]},{"id":48,"group":0,"cols":1,"submenu":1,"rows":[{"cols":[{"type":"menu","colwidth":12}]}]},{"id":62,"group":0,"cols":1,"submenu":1,"rows":[{"cols":[{"type":"menu","colwidth":12}]}]}]', 0),
(0, 0, 'config', 'config_ftp_password', '', 0),
(0, 0, 'config', 'config_ftp_port', '21', 0),
(0, 0, 'config', 'config_ftp_hostname', 'localhost', 0),
(0, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(0, 0, 'config', 'config_logo', 'catalog/logo.png', 0),
(0, 0, 'config', 'config_captcha_page', '["register","guest","review","return","contact"]', 1),
(0, 0, 'config', 'config_captcha', 'google_captcha', 0),
(0, 0, 'config', 'config_return_status_id', '2', 0),
(0, 0, 'config', 'config_return_id', '0', 0),
(0, 0, 'config', 'config_affiliate_mail', '0', 0),
(0, 0, 'config', 'config_affiliate_commission', '5', 0),
(0, 0, 'config', 'config_affiliate_id', '4', 0),
(0, 0, 'config', 'config_affiliate_auto', '0', 0),
(0, 0, 'config', 'config_affiliate_approval', '0', 0),
(0, 0, 'config', 'config_stock_checkout', '0', 0),
(0, 0, 'google_captcha', 'google_captcha_status', '1', 0),
(0, 0, 'config', 'config_stock_warning', '0', 0),
(0, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(0, 0, 'theme_default', 'theme_default_image_category_width', '870', 0),
(0, 0, 'theme_default', 'theme_default_product_limit', '9', 0),
(0, 0, 'theme_default', 'theme_default_status', '1', 0),
(0, 0, 'theme_default', 'theme_default_directory', 'pav_fresh', 0),
(0, 0, 'config', 'config_cart_weight', '1', 0),
(0, 0, 'config', 'config_checkout_guest', '1', 0),
(0, 0, 'config', 'config_checkout_id', '5', 0),
(0, 0, 'config', 'config_order_status_id', '1', 0),
(0, 0, 'config', 'config_processing_status', '["5","1","2","12","3"]', 1),
(0, 0, 'config', 'config_complete_status', '["5","3"]', 1),
(0, 0, 'config', 'config_fraud_status_id', '7', 0),
(0, 0, 'config', 'config_order_mail', '0', 0),
(0, 0, 'config', 'config_api_id', '4', 0),
(0, 0, 'config', 'config_stock_display', '0', 0),
(0, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
(0, 0, 'config', 'config_account_mail', '0', 0),
(0, 0, 'config', 'config_zone_id', '3563', 0),
(0, 0, 'config', 'config_country_id', '222', 0),
(0, 0, 'config', 'config_comment', '', 0),
(0, 0, 'config', 'config_open', '', 0),
(0, 0, 'config', 'config_image', '', 0),
(0, 0, 'config', 'config_fax', '', 0),
(0, 0, 'config', 'config_telephone', '(+01) 234 000 5678', 0),
(0, 0, 'config', 'config_email', 'email@domain.com', 0),
(0, 0, 'config', 'config_geocode', '', 0),
(0, 0, 'config', 'config_address', 'Address 1', 0),
(0, 0, 'config', 'config_owner', 'Your Name', 0),
(0, 0, 'config', 'config_name', 'Your Store', 0),
(0, 0, 'config', 'config_layout_id', '4', 0),
(0, 0, 'config', 'config_theme', 'theme_default', 0),
(0, 0, 'config', 'config_meta_keyword', '', 0),
(0, 0, 'config', 'config_meta_description', 'My Store', 0),
(0, 0, 'config', 'config_meta_title', 'Your Store', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2-3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_theme`
--

CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_translation`
--

CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_url_alias`
--

CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(1121, 'product_id=48', 'ipod-classic'),
(1056, 'category_id=20', 'desktops'),
(835, 'category_id=27', 'mac'),
(730, 'manufacturer_id=8', 'apple'),
(772, 'information_id=4', 'about_us'),
(1096, 'product_id=42', 'test'),
(1126, 'category_id=34', 'mp3-players'),
(962, 'category_id=36', 'test2'),
(1055, 'category_id=18', 'laptop-notebook'),
(1053, 'category_id=46', 'macs'),
(1085, 'category_id=25', 'component'),
(1007, 'category_id=29', 'mouse'),
(1009, 'category_id=28', 'monitor'),
(961, 'category_id=35', 'test1'),
(1008, 'category_id=30', 'printer'),
(1006, 'category_id=31', 'scanner'),
(1010, 'category_id=32', 'web-camera'),
(1052, 'category_id=57', 'tablet'),
(1054, 'category_id=17', 'software'),
(1057, 'category_id=24', 'smartphone'),
(1041, 'category_id=33', 'camera'),
(790, 'category_id=43', 'test11'),
(791, 'category_id=44', 'test12'),
(792, 'category_id=47', 'test15'),
(793, 'category_id=48', 'test16'),
(794, 'category_id=49', 'test17'),
(795, 'category_id=50', 'test18'),
(796, 'category_id=51', 'test19'),
(797, 'category_id=52', 'test20'),
(798, 'category_id=58', 'test25'),
(799, 'category_id=53', 'test21'),
(800, 'category_id=54', 'test22'),
(801, 'category_id=55', 'test23'),
(802, 'category_id=56', 'test24'),
(804, 'category_id=37', 'test5'),
(805, 'category_id=39', 'test6'),
(806, 'category_id=40', 'test7'),
(807, 'category_id=41', 'test8'),
(808, 'category_id=42', 'test9'),
(1099, 'product_id=30', 'canon-eos-5d'),
(1101, 'product_id=47', 'hp-lp3065'),
(1116, 'product_id=28', 'htc-touch-hd'),
(1114, 'product_id=43', 'macbook'),
(1097, 'product_id=44', 'macbook-air'),
(1108, 'product_id=45', 'macbook-pro'),
(1122, 'product_id=31', 'nikon-d300'),
(1095, 'product_id=29', 'palm-treo-pro'),
(1109, 'product_id=35', 'product-8'),
(819, 'product_id=49', 'samsung-galaxy-tab-10-1'),
(1102, 'product_id=33', 'samsung-syncmaster-941bw'),
(1103, 'product_id=46', 'sony-vaio'),
(1106, 'product_id=41', 'imac'),
(1100, 'product_id=40', 'iphone'),
(1110, 'product_id=36', 'ipod-nano'),
(1111, 'product_id=34', 'ipod-shuffle'),
(1112, 'product_id=32', 'ipod-touch'),
(828, 'manufacturer_id=9', 'canon'),
(829, 'manufacturer_id=5', 'htc'),
(830, 'manufacturer_id=7', 'hewlett-packard'),
(831, 'manufacturer_id=6', 'palm'),
(832, 'manufacturer_id=10', 'sony'),
(841, 'information_id=6', 'delivery'),
(842, 'information_id=3', 'privacy'),
(843, 'information_id=5', 'terms'),
(1044, 'category_id=90', ''),
(1045, 'category_id=91', ''),
(1046, 'category_id=92', ''),
(1047, 'category_id=93', ''),
(1048, 'category_id=94', ''),
(1049, 'category_id=95', ''),
(1050, 'category_id=96', ''),
(1058, 'category_id=97', ''),
(1059, 'category_id=98', ''),
(1060, 'category_id=99', ''),
(1061, 'category_id=100', ''),
(1062, 'category_id=101', ''),
(1063, 'category_id=102', ''),
(1117, 'blog_id=7', ''),
(1120, 'blog_id=10', ''),
(1119, 'blog_id=11', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'CHct1orBu', 'John', 'Doe', 'admin@gmail.com', '', '', '::1', 1, '2016-06-28 07:24:01'),
(2, 10, 'demo', '908772ab6ea83300168b94b24c341e8ff6936703', '0u0MgZ2Mo', 'demo', 'demo', '', '', '', '', 1, '2016-03-18 08:46:31');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{"access":["catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/filemanager","customer\\/custom_field","customer\\/customer","customer\\/customer_group","design\\/banner","design\\/language","design\\/layout","design\\/menu","design\\/theme","design\\/translation","event\\/compatibility","event\\/theme","extension\\/analytics\\/google_analytics","extension\\/captcha\\/basic_captcha","extension\\/captcha\\/google_captcha","extension\\/dashboard\\/activity","extension\\/dashboard\\/chart","extension\\/dashboard\\/customer","extension\\/dashboard\\/map","extension\\/dashboard\\/online","extension\\/dashboard\\/order","extension\\/dashboard\\/recent","extension\\/dashboard\\/sale","extension\\/event","extension\\/extension","extension\\/extension\\/analytics","extension\\/extension\\/captcha","extension\\/extension\\/dashboard","extension\\/extension\\/feed","extension\\/extension\\/fraud","extension\\/extension\\/module","extension\\/extension\\/payment","extension\\/extension\\/shipping","extension\\/extension\\/theme","extension\\/extension\\/total","extension\\/feed\\/google_base","extension\\/feed\\/google_sitemap","extension\\/feed\\/openbaypro","extension\\/fraud\\/fraudlabspro","extension\\/fraud\\/ip","extension\\/fraud\\/maxmind","extension\\/installer","extension\\/modification","extension\\/module\\/account","extension\\/module\\/affiliate","extension\\/module\\/amazon_login","extension\\/module\\/amazon_pay","extension\\/module\\/banner","extension\\/module\\/bestseller","extension\\/module\\/carousel","extension\\/module\\/category","extension\\/module\\/divido_calculator","extension\\/module\\/ebay_listing","extension\\/module\\/featured","extension\\/module\\/filter","extension\\/module\\/google_hangouts","extension\\/module\\/html","extension\\/module\\/information","extension\\/module\\/klarna_checkout_module","extension\\/module\\/latest","extension\\/module\\/laybuy_layout","extension\\/module\\/pavblog","extension\\/module\\/pavblogcategory","extension\\/module\\/pavblogcomment","extension\\/module\\/pavbloglatest","extension\\/module\\/pavdeals","extension\\/module\\/pavhomebuilder","extension\\/module\\/pavmegamenu","extension\\/module\\/pavnewsletter","extension\\/module\\/pavsliderlayer","extension\\/module\\/pavverticalmenu","extension\\/module\\/pilibaba_button","extension\\/module\\/pp_button","extension\\/module\\/pp_login","extension\\/module\\/sagepay_direct_cards","extension\\/module\\/sagepay_server_cards","extension\\/module\\/slideshow","extension\\/module\\/special","extension\\/module\\/store","extension\\/module\\/themecontrol","extension\\/openbay","extension\\/openbay\\/amazon","extension\\/openbay\\/amazon_listing","extension\\/openbay\\/amazon_product","extension\\/openbay\\/amazonus","extension\\/openbay\\/amazonus_listing","extension\\/openbay\\/amazonus_product","extension\\/openbay\\/ebay","extension\\/openbay\\/ebay_profile","extension\\/openbay\\/ebay_template","extension\\/openbay\\/etsy","extension\\/openbay\\/etsy_product","extension\\/openbay\\/etsy_shipping","extension\\/openbay\\/etsy_shop","extension\\/openbay\\/fba","extension\\/payment\\/amazon_login_pay","extension\\/payment\\/authorizenet_aim","extension\\/payment\\/authorizenet_sim","extension\\/payment\\/bank_transfer","extension\\/payment\\/bluepay_hosted","extension\\/payment\\/bluepay_redirect","extension\\/payment\\/cardconnect","extension\\/payment\\/cardinity","extension\\/payment\\/cheque","extension\\/payment\\/cod","extension\\/payment\\/divido","extension\\/payment\\/eway","extension\\/payment\\/firstdata","extension\\/payment\\/firstdata_remote","extension\\/payment\\/free_checkout","extension\\/payment\\/g2apay","extension\\/payment\\/globalpay","extension\\/payment\\/globalpay_remote","extension\\/payment\\/klarna_account","extension\\/payment\\/klarna_checkout","extension\\/payment\\/klarna_invoice","extension\\/payment\\/laybuy","extension\\/payment\\/liqpay","extension\\/payment\\/nochex","extension\\/payment\\/paymate","extension\\/payment\\/paypoint","extension\\/payment\\/payza","extension\\/payment\\/perpetual_payments","extension\\/payment\\/pilibaba","extension\\/payment\\/pp_express","extension\\/payment\\/pp_payflow","extension\\/payment\\/pp_payflow_iframe","extension\\/payment\\/pp_pro","extension\\/payment\\/pp_pro_iframe","extension\\/payment\\/pp_standard","extension\\/payment\\/realex","extension\\/payment\\/realex_remote","extension\\/payment\\/sagepay_direct","extension\\/payment\\/sagepay_server","extension\\/payment\\/sagepay_us","extension\\/payment\\/securetrading_pp","extension\\/payment\\/securetrading_ws","extension\\/payment\\/skrill","extension\\/payment\\/twocheckout","extension\\/payment\\/web_payment_software","extension\\/payment\\/worldpay","extension\\/shipping\\/auspost","extension\\/shipping\\/citylink","extension\\/shipping\\/fedex","extension\\/shipping\\/flat","extension\\/shipping\\/free","extension\\/shipping\\/item","extension\\/shipping\\/parcelforce_48","extension\\/shipping\\/pickup","extension\\/shipping\\/royal_mail","extension\\/shipping\\/ups","extension\\/shipping\\/usps","extension\\/shipping\\/weight","extension\\/store","extension\\/theme\\/theme_default","extension\\/total\\/coupon","extension\\/total\\/credit","extension\\/total\\/handling","extension\\/total\\/klarna_fee","extension\\/total\\/low_order_fee","extension\\/total\\/reward","extension\\/total\\/shipping","extension\\/total\\/sub_total","extension\\/total\\/tax","extension\\/total\\/total","extension\\/total\\/voucher","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","marketing\\/affiliate","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","report\\/affiliate","report\\/affiliate_activity","report\\/affiliate_login","report\\/customer_activity","report\\/customer_credit","report\\/customer_login","report\\/customer_online","report\\/customer_order","report\\/customer_reward","report\\/customer_search","report\\/marketing","report\\/product_purchased","report\\/product_viewed","report\\/sale_coupon","report\\/sale_order","report\\/sale_return","report\\/sale_shipping","report\\/sale_tax","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","startup\\/compatibility","startup\\/error","startup\\/event","startup\\/login","startup\\/permission","startup\\/router","startup\\/sass","startup\\/startup","tool\\/backup","tool\\/log","tool\\/upload","user\\/api","user\\/user","user\\/user_permission"],"modify":["catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/filemanager","customer\\/custom_field","customer\\/customer","customer\\/customer_group","design\\/banner","design\\/language","design\\/layout","design\\/menu","design\\/theme","design\\/translation","event\\/compatibility","event\\/theme","extension\\/analytics\\/google_analytics","extension\\/captcha\\/basic_captcha","extension\\/captcha\\/google_captcha","extension\\/dashboard\\/activity","extension\\/dashboard\\/chart","extension\\/dashboard\\/customer","extension\\/dashboard\\/map","extension\\/dashboard\\/online","extension\\/dashboard\\/order","extension\\/dashboard\\/recent","extension\\/dashboard\\/sale","extension\\/event","extension\\/extension","extension\\/extension\\/analytics","extension\\/extension\\/captcha","extension\\/extension\\/dashboard","extension\\/extension\\/feed","extension\\/extension\\/fraud","extension\\/extension\\/module","extension\\/extension\\/payment","extension\\/extension\\/shipping","extension\\/extension\\/theme","extension\\/extension\\/total","extension\\/feed\\/google_base","extension\\/feed\\/google_sitemap","extension\\/feed\\/openbaypro","extension\\/fraud\\/fraudlabspro","extension\\/fraud\\/ip","extension\\/fraud\\/maxmind","extension\\/installer","extension\\/modification","extension\\/module\\/account","extension\\/module\\/affiliate","extension\\/module\\/amazon_login","extension\\/module\\/amazon_pay","extension\\/module\\/banner","extension\\/module\\/bestseller","extension\\/module\\/carousel","extension\\/module\\/category","extension\\/module\\/divido_calculator","extension\\/module\\/ebay_listing","extension\\/module\\/featured","extension\\/module\\/filter","extension\\/module\\/google_hangouts","extension\\/module\\/html","extension\\/module\\/information","extension\\/module\\/klarna_checkout_module","extension\\/module\\/latest","extension\\/module\\/laybuy_layout","extension\\/module\\/pavblog","extension\\/module\\/pavblogcategory","extension\\/module\\/pavblogcomment","extension\\/module\\/pavbloglatest","extension\\/module\\/pavdeals","extension\\/module\\/pavhomebuilder","extension\\/module\\/pavmegamenu","extension\\/module\\/pavnewsletter","extension\\/module\\/pavsliderlayer","extension\\/module\\/pavverticalmenu","extension\\/module\\/pilibaba_button","extension\\/module\\/pp_button","extension\\/module\\/pp_login","extension\\/module\\/sagepay_direct_cards","extension\\/module\\/sagepay_server_cards","extension\\/module\\/slideshow","extension\\/module\\/special","extension\\/module\\/store","extension\\/module\\/themecontrol","extension\\/openbay","extension\\/openbay\\/amazon","extension\\/openbay\\/amazon_listing","extension\\/openbay\\/amazon_product","extension\\/openbay\\/amazonus","extension\\/openbay\\/amazonus_listing","extension\\/openbay\\/amazonus_product","extension\\/openbay\\/ebay","extension\\/openbay\\/ebay_profile","extension\\/openbay\\/ebay_template","extension\\/openbay\\/etsy","extension\\/openbay\\/etsy_product","extension\\/openbay\\/etsy_shipping","extension\\/openbay\\/etsy_shop","extension\\/openbay\\/fba","extension\\/payment\\/amazon_login_pay","extension\\/payment\\/authorizenet_aim","extension\\/payment\\/authorizenet_sim","extension\\/payment\\/bank_transfer","extension\\/payment\\/bluepay_hosted","extension\\/payment\\/bluepay_redirect","extension\\/payment\\/cardconnect","extension\\/payment\\/cardinity","extension\\/payment\\/cheque","extension\\/payment\\/cod","extension\\/payment\\/divido","extension\\/payment\\/eway","extension\\/payment\\/firstdata","extension\\/payment\\/firstdata_remote","extension\\/payment\\/free_checkout","extension\\/payment\\/g2apay","extension\\/payment\\/globalpay","extension\\/payment\\/globalpay_remote","extension\\/payment\\/klarna_account","extension\\/payment\\/klarna_checkout","extension\\/payment\\/klarna_invoice","extension\\/payment\\/laybuy","extension\\/payment\\/liqpay","extension\\/payment\\/nochex","extension\\/payment\\/paymate","extension\\/payment\\/paypoint","extension\\/payment\\/payza","extension\\/payment\\/perpetual_payments","extension\\/payment\\/pilibaba","extension\\/payment\\/pp_express","extension\\/payment\\/pp_payflow","extension\\/payment\\/pp_payflow_iframe","extension\\/payment\\/pp_pro","extension\\/payment\\/pp_pro_iframe","extension\\/payment\\/pp_standard","extension\\/payment\\/realex","extension\\/payment\\/realex_remote","extension\\/payment\\/sagepay_direct","extension\\/payment\\/sagepay_server","extension\\/payment\\/sagepay_us","extension\\/payment\\/securetrading_pp","extension\\/payment\\/securetrading_ws","extension\\/payment\\/skrill","extension\\/payment\\/twocheckout","extension\\/payment\\/web_payment_software","extension\\/payment\\/worldpay","extension\\/shipping\\/auspost","extension\\/shipping\\/citylink","extension\\/shipping\\/fedex","extension\\/shipping\\/flat","extension\\/shipping\\/free","extension\\/shipping\\/item","extension\\/shipping\\/parcelforce_48","extension\\/shipping\\/pickup","extension\\/shipping\\/royal_mail","extension\\/shipping\\/ups","extension\\/shipping\\/usps","extension\\/shipping\\/weight","extension\\/store","extension\\/theme\\/theme_default","extension\\/total\\/coupon","extension\\/total\\/credit","extension\\/total\\/handling","extension\\/total\\/klarna_fee","extension\\/total\\/low_order_fee","extension\\/total\\/reward","extension\\/total\\/shipping","extension\\/total\\/sub_total","extension\\/total\\/tax","extension\\/total\\/total","extension\\/total\\/voucher","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","marketing\\/affiliate","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","report\\/affiliate","report\\/affiliate_activity","report\\/affiliate_login","report\\/customer_activity","report\\/customer_credit","report\\/customer_login","report\\/customer_online","report\\/customer_order","report\\/customer_reward","report\\/customer_search","report\\/marketing","report\\/product_purchased","report\\/product_viewed","report\\/sale_coupon","report\\/sale_order","report\\/sale_return","report\\/sale_shipping","report\\/sale_tax","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","startup\\/compatibility","startup\\/error","startup\\/event","startup\\/login","startup\\/permission","startup\\/router","startup\\/sass","startup\\/startup","tool\\/backup","tool\\/log","tool\\/upload","user\\/api","user\\/user","user\\/user_permission"]}'),
(10, 'Demonstration', '{"access":["analytics\\/google_analytics","captcha\\/basic_captcha","captcha\\/google_captcha","catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/filemanager","common\\/menu","common\\/profile","common\\/stats","customer\\/custom_field","customer\\/customer","customer\\/customer_group","design\\/banner","design\\/language","design\\/layout","design\\/theme","event\\/theme","extension\\/analytics","extension\\/captcha","extension\\/feed","extension\\/fraud","extension\\/installer","extension\\/modification","extension\\/module","extension\\/openbay","extension\\/payment","extension\\/shipping","extension\\/theme","extension\\/total","feed\\/google_base","feed\\/google_sitemap","feed\\/openbaypro","fraud\\/fraudlabspro","fraud\\/ip","fraud\\/maxmind","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","marketing\\/affiliate","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","module\\/account","module\\/affiliate","module\\/amazon_login","module\\/amazon_pay","module\\/banner","module\\/bestseller","module\\/carousel","module\\/category","module\\/ebay_listing","module\\/featured","module\\/filter","module\\/google_hangouts","module\\/html","module\\/information","module\\/latest","module\\/laybuy_layout","module\\/pavblog","module\\/pavblogcategory","module\\/pavblogcomment","module\\/pavbloglatest","module\\/pavdeals","module\\/pavhomebuilder","module\\/pavmegamenu","module\\/pavnewsletter","module\\/pavsliderlayer","module\\/pp_button","module\\/pp_login","module\\/sagepay_direct_cards","module\\/sagepay_server_cards","module\\/slideshow","module\\/special","module\\/store","module\\/themecontrol","openbay\\/amazon","openbay\\/amazon_listing","openbay\\/amazon_product","openbay\\/amazonus","openbay\\/amazonus_listing","openbay\\/amazonus_product","openbay\\/ebay","openbay\\/ebay_profile","openbay\\/ebay_template","openbay\\/etsy","openbay\\/etsy_product","openbay\\/etsy_shipping","openbay\\/etsy_shop","openbay\\/fba","payment\\/amazon_login_pay","payment\\/authorizenet_aim","payment\\/authorizenet_sim","payment\\/bank_transfer","payment\\/bluepay_hosted","payment\\/bluepay_redirect","payment\\/cardinity","payment\\/cheque","payment\\/cod","payment\\/eway","payment\\/firstdata","payment\\/firstdata_remote","payment\\/free_checkout","payment\\/g2apay","payment\\/globalpay","payment\\/globalpay_remote","payment\\/klarna_account","payment\\/klarna_invoice","payment\\/laybuy","payment\\/liqpay","payment\\/nochex","payment\\/paymate","payment\\/paypoint","payment\\/payza","payment\\/perpetual_payments","payment\\/pp_express","payment\\/pp_payflow","payment\\/pp_payflow_iframe","payment\\/pp_pro","payment\\/pp_pro_iframe","payment\\/pp_standard","payment\\/realex","payment\\/realex_remote","payment\\/sagepay_direct","payment\\/sagepay_server","payment\\/sagepay_us","payment\\/securetrading_pp","payment\\/securetrading_ws","payment\\/skrill","payment\\/twocheckout","payment\\/web_payment_software","payment\\/worldpay","report\\/affiliate","report\\/affiliate_activity","report\\/affiliate_login","report\\/customer_activity","report\\/customer_credit","report\\/customer_login","report\\/customer_online","report\\/customer_order","report\\/customer_reward","report\\/marketing","report\\/product_purchased","report\\/product_viewed","report\\/sale_coupon","report\\/sale_order","report\\/sale_return","report\\/sale_shipping","report\\/sale_tax","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","shipping\\/auspost","shipping\\/citylink","shipping\\/fedex","shipping\\/flat","shipping\\/free","shipping\\/item","shipping\\/parcelforce_48","shipping\\/pickup","shipping\\/royal_mail","shipping\\/ups","shipping\\/usps","shipping\\/weight","startup\\/error","startup\\/event","startup\\/login","startup\\/permission","startup\\/router","startup\\/sass","startup\\/startup","theme\\/theme_default","tool\\/backup","tool\\/error_log","tool\\/upload","total\\/coupon","total\\/credit","total\\/handling","total\\/klarna_fee","total\\/low_order_fee","total\\/reward","total\\/shipping","total\\/sub_total","total\\/tax","total\\/total","total\\/voucher","user\\/api","user\\/user","user\\/user_permission"]}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_verticalmenu`
--

CREATE TABLE `oc_verticalmenu` (
  `verticalmenu_id` int(11) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_group` smallint(6) NOT NULL DEFAULT '2',
  `width` varchar(255) DEFAULT NULL,
  `submenu_width` varchar(255) DEFAULT NULL,
  `colum_width` varchar(255) DEFAULT NULL,
  `submenu_colum_width` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `colums` varchar(255) DEFAULT '1',
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL DEFAULT '2',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `type_submenu` varchar(10) NOT NULL DEFAULT '1',
  `level_depth` smallint(6) NOT NULL DEFAULT '0',
  `published` smallint(6) NOT NULL DEFAULT '1',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `position` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `show_sub` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `privacy` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `position_type` varchar(25) DEFAULT 'top',
  `menu_class` varchar(25) DEFAULT NULL,
  `description` text,
  `content_text` text,
  `submenu_content` text,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `widget_id` int(11) DEFAULT '0',
  `icon` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_verticalmenu`
--

INSERT INTO `oc_verticalmenu` (`verticalmenu_id`, `image`, `parent_id`, `is_group`, `width`, `submenu_width`, `colum_width`, `submenu_colum_width`, `item`, `colums`, `type`, `is_content`, `show_title`, `type_submenu`, `level_depth`, `published`, `store_id`, `position`, `show_sub`, `url`, `target`, `privacy`, `position_type`, `menu_class`, `description`, `content_text`, `submenu_content`, `level`, `left`, `right`, `widget_id`, `icon`) VALUES
(48, '', 1, 0, NULL, NULL, NULL, '', '25', '1', 'category', 0, 1, 'menu', 0, 1, 0, 3, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1, 'fa fa-wheelchair'),
(49, '', 1, 0, NULL, NULL, NULL, '', '57', '1', 'category', 0, 1, 'menu', 0, 1, 0, 2, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1, 'fa fa-heartbeat'),
(50, '', 1, 0, NULL, NULL, NULL, '', '34', '1', 'category', 0, 1, 'menu', 0, 1, 0, 6, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1, 'fa fa-tencent-weibo'),
(51, '', 1, 0, NULL, NULL, NULL, '', '33', '1', 'category', 0, 1, 'menu', 0, 1, 0, 7, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1, 'fa fa-skyatlas'),
(52, '', 1, 0, NULL, NULL, NULL, '', '17', '1', 'category', 0, 1, 'menu', 0, 1, 0, 8, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1, 'fa fa-pied-piper'),
(53, '', 1, 0, NULL, NULL, NULL, '', '24', '1', 'category', 0, 1, 'menu', 0, 1, 0, 9, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1, 'fa fa-apple'),
(54, '', 1, 0, NULL, NULL, NULL, '', '18', '1', 'category', 0, 1, 'menu', 0, 1, 0, 1, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1, 'fa fa-pagelines'),
(61, '', 48, 0, NULL, NULL, NULL, '', '94', '1', 'category', 0, 1, 'menu', 0, 1, 0, 1, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1, ''),
(62, '', 48, 0, NULL, NULL, NULL, NULL, '28', '1', 'category', 2, 1, 'menu', 0, 1, 0, 2, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(63, '', 48, 0, NULL, NULL, NULL, NULL, '32', '1', 'category', 2, 1, 'menu', 0, 1, 0, 3, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(64, '', 1, 0, NULL, NULL, NULL, '', '29', '1', 'category', 0, 1, 'menu', 0, 1, 0, 4, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1, 'fa fa-heart-o'),
(65, '', 1, 0, NULL, NULL, NULL, '', '31', '1', 'category', 0, 1, 'menu', 0, 1, 0, 5, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 1, 'fa fa-whatsapp'),
(66, '', 62, 0, NULL, NULL, NULL, NULL, '36', '1', 'category', 2, 1, 'menu', 0, 1, 0, 1, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(67, '', 62, 0, NULL, NULL, NULL, NULL, '35', '1', 'category', 2, 1, 'menu', 0, 1, 0, 2, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(68, '', 1, 0, NULL, NULL, NULL, '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 10, 0, '', NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, 5, 'fa fa-angellist');

-- --------------------------------------------------------

--
-- Table structure for table `oc_verticalmenu_description`
--

CREATE TABLE `oc_verticalmenu_description` (
  `verticalmenu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_verticalmenu_description`
--

INSERT INTO `oc_verticalmenu_description` (`verticalmenu_id`, `language_id`, `title`, `description`) VALUES
(67, 2, 'Braided ', ''),
(67, 1, 'Braided ', ''),
(66, 2, 'Leather ', ''),
(66, 1, 'Leather ', ''),
(65, 2, 'Carts, Islands &amp; Utility ', ''),
(65, 1, 'Carts, Islands &amp; Utility ', ''),
(64, 2, 'Cabinet Hardware', ''),
(63, 2, ' Backsplashes', ''),
(63, 1, ' Backsplashes', ''),
(62, 2, 'Countertops', ''),
(62, 1, 'Countertops', ''),
(61, 2, 'Suspenders', ''),
(61, 1, 'Suspenders', ''),
(54, 2, 'Cooking &amp; Food ', ''),
(53, 2, 'Window Treatments', ''),
(52, 2, 'Water Dispensers &amp; Filters', ''),
(51, 2, 'Flooring &amp; Tile', ''),
(49, 1, 'Dining &amp; Entertainment', ''),
(49, 2, 'Dining &amp; Entertainment', ''),
(50, 1, 'Lighting &amp; Ceiling Fans', ''),
(50, 2, 'Lighting &amp; Ceiling Fans', ''),
(48, 1, 'Appliances', ''),
(48, 2, 'Appliances', ''),
(54, 1, 'Cooking &amp; Food ', ''),
(64, 1, 'Cabinet Hardware', ''),
(51, 1, 'Flooring &amp; Tile', ''),
(52, 1, 'Water Dispensers &amp; Filters', ''),
(53, 1, 'Window Treatments', ''),
(68, 2, 'Health &amp; Beauty', ''),
(68, 1, 'Health &amp; Beauty', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_verticalmenu_widgets`
--

CREATE TABLE `oc_verticalmenu_widgets` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `type` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_verticalmenu_widgets`
--

INSERT INTO `oc_verticalmenu_widgets` (`id`, `name`, `type`, `params`, `store_id`) VALUES
(5, 'Manufactures', 'banner', 'a:4:{s:8:"group_id";s:1:"8";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:5:"limit";s:2:"12";}', 0),
(3, 'Products Latest', 'product_list', 'a:4:{s:9:"list_type";s:6:"newest";s:5:"limit";s:1:"6";s:11:"image_width";s:3:"120";s:12:"image_height";s:3:"120";}', 0),
(4, 'Products In Cat 20', 'product_category', 'a:4:{s:11:"category_id";s:2:"20";s:5:"limit";s:1:"6";s:11:"image_width";s:3:"120";s:12:"image_height";s:3:"120";}', 0),
(2, 'Dermo HTML Sample', 'html', 'a:1:{s:4:"html";a:1:{i:1;s:275:"Dorem ipsum dolor sit amet consectetur adipiscing elit congue sit amet erat roin tincidunt vehicula lorem in adipiscing urna iaculis vel. Dorem ipsum dolor sit amet consectetur adipiscing elit congue sit amet erat roin tincidunt vehicula lorem in adipiscing urna iaculis vel.";}}', 0),
(1, 'Video Opencart Installation', 'video_code', 'a:1:{s:10:"video_code";s:168:"&lt;iframe width=&quot;300&quot; height=&quot;315&quot; src=&quot;//www.youtube.com/embed/cUhPA5qIxDQ&quot; frameborder=&quot;0&quot; allowfullscreen&gt;&lt;/iframe&gt;";}', 0),
(6, 'PavoThemes Feed', 'feed', 'a:1:{s:8:"feed_url";s:55:"http://www.pavothemes.com/opencart-themes.feed?type=rss";}', 0),
(7, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"7";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:11:"Electronics";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Electronics";s:14:"widget_title_2";s:11:"Electronics";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"34";s:5:"limit";s:1:"6";}', 0),
(8, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:11:"Women shoes";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Women shoes";s:14:"widget_title_2";s:11:"Women shoes";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"18";s:5:"limit";s:1:"5";}', 0),
(9, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:12:"organisation";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:12:"organisation";s:14:"widget_title_2";s:12:"organisation";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:1:"5";}', 0),
(12, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:10:"Automative";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:10:"Automative";s:14:"widget_title_2";s:10:"Automative";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"34";s:5:"limit";s:1:"6";}', 0),
(11, '', 'html', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:4:"html";s:11:"widget_name";s:18:"Makes a photoshop ";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:18:"Makes a photoshop ";s:14:"widget_title_2";s:18:"Makes a photoshop ";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:222:"&lt;p&gt;Lorem ipsum dolor sit amet consectetuer adipiscing eli Aenean commodo ligula bus et magnis dis parturient eu pretium quis sem.Lorem ipsum dolor sit amet consectetuer adipiscing eli Aenean commodo ligula.&lt;/p&gt;";s:13:"htmlcontent_2";s:222:"&lt;p&gt;Lorem ipsum dolor sit amet consectetuer adipiscing eli Aenean commodo ligula bus et magnis dis parturient eu pretium quis sem.Lorem ipsum dolor sit amet consectetuer adipiscing eli Aenean commodo ligula.&lt;/p&gt;";}', 0),
(13, '', 'categories_list', 'a:8:{s:4:"wkey";s:1:"0";s:5:"wtype";s:15:"categories_list";s:11:"widget_name";s:15:"Categories List";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:15:"Categories List";s:14:"widget_title_2";s:15:"Categories List";s:12:"addition_cls";s:0:"";s:6:"catids";s:20:"20,18,25,57,17,33,34";}', 0),
(14, '', 'html', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:4:"html";s:11:"widget_name";s:9:"Demo Html";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:9:"Demo Html";s:14:"widget_title_2";s:9:"Demo Html";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:241:"&lt;p&gt;Lorem ipsum dolor sit amet consectetuer adipiscing eli Aenean commodo ligula bus et magnis dis parturient eu pretium quis sem.&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet consectetuer adipiscing eli Aenean commodo ligula.&lt;/p&gt;";s:13:"htmlcontent_2";s:241:"&lt;p&gt;Lorem ipsum dolor sit amet consectetuer adipiscing eli Aenean commodo ligula bus et magnis dis parturient eu pretium quis sem.&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet consectetuer adipiscing eli Aenean commodo ligula.&lt;/p&gt;";}', 0),
(15, '', 'product_list', 'a:14:{s:4:"wkey";s:1:"0";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:15:"Products Latest";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:15:"Products Latest";s:14:"widget_title_2";s:15:"Products Latest";s:12:"addition_cls";s:7:"sidebar";s:5:"limit";s:1:"3";s:12:"itemsperpage";s:1:"3";s:4:"cols";s:1:"1";s:5:"width";s:2:"60";s:6:"height";s:2:"83";s:9:"list_type";s:6:"latest";s:14:"choose_product";s:0:"";}', 0),
(16, '', 'product_list', 'a:15:{s:4:"wkey";s:2:"16";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:12:"Product List";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:12:"Product List";s:14:"widget_title_2";s:12:"Product List";s:12:"addition_cls";s:0:"";s:9:"sub_title";s:0:"";s:5:"limit";s:1:"3";s:12:"itemsperpage";s:1:"3";s:4:"cols";s:1:"3";s:5:"width";s:3:"130";s:6:"height";s:3:"143";s:9:"list_type";s:7:"special";s:14:"choose_product";s:0:"";}', 0),
(18, '', 'sub_categories', 'a:9:{s:4:"wkey";s:2:"18";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:9:"Cookbooks";s:10:"show_title";s:1:"1";s:14:"widget_title_2";s:9:"Cookbooks";s:14:"widget_title_1";s:9:"Cookbooks";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:1:"5";}', 0),
(19, '', 'sub_categories', 'a:9:{s:4:"wkey";s:2:"19";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:14:"Pressed Juices";s:10:"show_title";s:1:"1";s:14:"widget_title_2";s:14:"Pressed Juices";s:14:"widget_title_1";s:14:"Pressed Juices";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"24";s:5:"limit";s:1:"5";}', 0),
(20, '', 'product_list', 'a:14:{s:4:"wkey";s:2:"20";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:15:"Product Special";s:10:"show_title";s:1:"1";s:14:"widget_title_2";s:15:"Product Special";s:14:"widget_title_1";s:15:"Product Special";s:12:"addition_cls";s:0:"";s:5:"limit";s:1:"1";s:12:"itemsperpage";s:1:"1";s:4:"cols";s:1:"1";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:9:"list_type";s:7:"special";s:14:"choose_product";s:0:"";}', 0),
(21, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:9:"Cookbooks";s:10:"show_title";s:1:"1";s:14:"widget_title_2";s:9:"Cookbooks";s:14:"widget_title_1";s:9:"Cookbooks";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:1:"5";}', 0),
(22, '', 'sub_categories', 'a:9:{s:4:"wkey";s:2:"22";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:14:"Pressed Juices";s:10:"show_title";s:1:"1";s:14:"widget_title_2";s:14:"Pressed Juices";s:14:"widget_title_1";s:14:"Pressed Juices";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"24";s:5:"limit";s:1:"5";}', 0),
(23, '', 'product_list', 'a:14:{s:4:"wkey";s:2:"23";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:16:"Products Special";s:10:"show_title";s:1:"1";s:14:"widget_title_2";s:16:"Products Special";s:14:"widget_title_1";s:16:"Products Special";s:12:"addition_cls";s:0:"";s:5:"limit";s:1:"1";s:12:"itemsperpage";s:1:"1";s:4:"cols";s:1:"1";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:9:"list_type";s:7:"special";s:14:"choose_product";s:0:"";}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g'),
(5, 2, 'Pound ', 'lb'),
(6, 2, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M''Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu''a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark''unik''', 'GEG', 1),
(184, 11, 'Kotayk''', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik''', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots'' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Niederösterreich', 'NOS', 1),
(202, 14, 'Oberösterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore''s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel''skaya (Homyel'')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George''s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith''s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M''Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O''Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '''Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma''iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa''id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina''', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina''', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d''Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-Württemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Thüringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand''Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Puducherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'Kalimantan Utara', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta''mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be''er Sheva', 'BS', 1),
(1613, 104, 'Bika''at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '''Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al ''Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa''', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa''', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma''an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P''yongan-bukto', 'PYB', 1),
(1769, 112, 'P''yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P''yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch''ungch''ong-bukto', 'CO', 1),
(1774, 113, 'Ch''ungch''ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch''on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t''ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al ''Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra''', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale''s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha''s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al ''Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati''', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord-Brabant', 'NB', 1),
(2336, 150, 'Noord-Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid-Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke''s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa''id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul''yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust''-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A''ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa''asaleleaga', 'FA', 1),
(2856, 181, 'Gaga''emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa''itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va''a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '''Asir', 'AS', 1),
(2882, 184, 'Ha''il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand'' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand'' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A''ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa''iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa''iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'Gävleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'Jämtland', 'Z', 1),
(3080, 203, 'Jönköping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, 'Örebro', 'T', 1),
(3085, 203, 'Östergötland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'Södermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'Värmland', 'S', 1),
(3091, 203, 'Västerbotten', 'AC', 1),
(3092, 203, 'Västernorrland', 'Y', 1),
(3093, 203, 'Västmanland', 'U', 1),
(3094, 203, 'Västra Götaland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graubünden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Zürich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t''ou', 'NT', 1),
(3145, 206, 'P''eng-hu', 'PH', 1),
(3146, 206, 'P''ing-tung', 'PT', 1),
(3147, 206, 'T''ai-chung', 'TG', 1),
(3148, 206, 'T''ai-nan', 'TA', 1),
(3149, 206, 'T''ai-pei county', 'TP', 1),
(3150, 206, 'T''ai-tung', 'TT', 1),
(3151, 206, 'T''ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T''ai-chung', 'TH', 1),
(3157, 206, 'T''ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T''ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha''apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava''u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas''ka Oblast''', '71', 1),
(3481, 220, 'Chernihivs''ka Oblast''', '74', 1),
(3482, 220, 'Chernivets''ka Oblast''', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs''ka Oblast''', '12', 1),
(3485, 220, 'Donets''ka Oblast''', '14', 1),
(3486, 220, 'Ivano-Frankivs''ka Oblast''', '26', 1),
(3487, 220, 'Khersons''ka Oblast''', '65', 1),
(3488, 220, 'Khmel''nyts''ka Oblast''', '68', 1),
(3489, 220, 'Kirovohrads''ka Oblast''', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs''ka Oblast''', '32', 1),
(3492, 220, 'Luhans''ka Oblast''', '09', 1),
(3493, 220, 'L''vivs''ka Oblast''', '46', 1),
(3494, 220, 'Mykolayivs''ka Oblast''', '48', 1),
(3495, 220, 'Odes''ka Oblast''', '51', 1),
(3496, 220, 'Poltavs''ka Oblast''', '53', 1),
(3497, 220, 'Rivnens''ka Oblast''', '56', 1),
(3498, 220, 'Sevastopol''', '40', 1),
(3499, 220, 'Sums''ka Oblast''', '59', 1),
(3500, 220, 'Ternopil''s''ka Oblast''', '61', 1),
(3501, 220, 'Vinnyts''ka Oblast''', '05', 1),
(3502, 220, 'Volyns''ka Oblast''', '07', 1),
(3503, 220, 'Zakarpats''ka Oblast''', '21', 1),
(3504, 220, 'Zaporiz''ka Oblast''', '23', 1),
(3505, 220, 'Zhytomyrs''ka oblast''', '18', 1),
(3506, 221, 'Abu Dhabi', 'ADH', 1),
(3507, 221, '''Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'R''as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg''ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog''iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma''rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa''dah', 'SD', 1),
(3805, 235, 'San''a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta''izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3862, 105, 'Carbonia-Iglesias', 'CI', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3895, 105, 'Medio Campidano', 'VS', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3902, 105, 'Ogliastra', 'OG', 1),
(3903, 105, 'Olbia-Tempio', 'OT', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs''ka Oblast''', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1),
(4231, 99, 'Telangana', 'TS', 1),
(4232, 44, 'Qinghai', 'QH', 1),
(4233, 100, 'Papua Barat', 'PB', 1),
(4234, 100, 'Sulawesi Barat', 'SR', 1),
(4235, 100, 'Kepulauan Riau', 'KR', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
  ADD PRIMARY KEY (`affiliate_id`);

--
-- Indexes for table `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
  ADD PRIMARY KEY (`affiliate_activity_id`);

--
-- Indexes for table `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
  ADD PRIMARY KEY (`affiliate_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
  ADD PRIMARY KEY (`affiliate_transaction_id`);

--
-- Indexes for table `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Indexes for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Indexes for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Indexes for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Indexes for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Indexes for table `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Indexes for table `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Indexes for table `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Indexes for table `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Indexes for table `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Indexes for table `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Indexes for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Indexes for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Indexes for table `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Indexes for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Indexes for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Indexes for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Indexes for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Indexes for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Indexes for table `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Indexes for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Indexes for table `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Indexes for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Indexes for table `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Indexes for table `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Indexes for table `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Indexes for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Indexes for table `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Indexes for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Indexes for table `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Indexes for table `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Indexes for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Indexes for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Indexes for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Indexes for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Indexes for table `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Indexes for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Indexes for table `oc_megamenu`
--
ALTER TABLE `oc_megamenu`
  ADD PRIMARY KEY (`megamenu_id`);

--
-- Indexes for table `oc_megamenu_description`
--
ALTER TABLE `oc_megamenu_description`
  ADD PRIMARY KEY (`megamenu_id`,`language_id`),
  ADD KEY `name` (`title`);

--
-- Indexes for table `oc_megamenu_widgets`
--
ALTER TABLE `oc_megamenu_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_menu`
--
ALTER TABLE `oc_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `oc_menu_description`
--
ALTER TABLE `oc_menu_description`
  ADD PRIMARY KEY (`menu_id`,`language_id`);

--
-- Indexes for table `oc_menu_module`
--
ALTER TABLE `oc_menu_module`
  ADD PRIMARY KEY (`menu_module_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Indexes for table `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Indexes for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Indexes for table `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Indexes for table `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
  ADD PRIMARY KEY (`order_custom_field_id`);

--
-- Indexes for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Indexes for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Indexes for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`);

--
-- Indexes for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Indexes for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Indexes for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Indexes for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Indexes for table `oc_pavblog_blog`
--
ALTER TABLE `oc_pavblog_blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `oc_pavblog_category`
--
ALTER TABLE `oc_pavblog_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `oc_pavblog_category_description`
--
ALTER TABLE `oc_pavblog_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`title`);

--
-- Indexes for table `oc_pavblog_comment`
--
ALTER TABLE `oc_pavblog_comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `FK_blog_comment` (`blog_id`);

--
-- Indexes for table `oc_pavnewsletter_draft`
--
ALTER TABLE `oc_pavnewsletter_draft`
  ADD PRIMARY KEY (`draft_id`);

--
-- Indexes for table `oc_pavnewsletter_email`
--
ALTER TABLE `oc_pavnewsletter_email`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `oc_pavnewsletter_history`
--
ALTER TABLE `oc_pavnewsletter_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_pavnewsletter_subscribe`
--
ALTER TABLE `oc_pavnewsletter_subscribe`
  ADD PRIMARY KEY (`subscribe_id`);

--
-- Indexes for table `oc_pavnewsletter_template`
--
ALTER TABLE `oc_pavnewsletter_template`
  ADD PRIMARY KEY (`template_id`);

--
-- Indexes for table `oc_pavoslidergroups`
--
ALTER TABLE `oc_pavoslidergroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_pavosliderlayers`
--
ALTER TABLE `oc_pavosliderlayers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `oc_pavwidget`
--
ALTER TABLE `oc_pavwidget`
  ADD PRIMARY KEY (`pavwidget_id`);

--
-- Indexes for table `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Indexes for table `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Indexes for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Indexes for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Indexes for table `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Indexes for table `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Indexes for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Indexes for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Indexes for table `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Indexes for table `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Indexes for table `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Indexes for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Indexes for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Indexes for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Indexes for table `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Indexes for table `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Indexes for table `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Indexes for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Indexes for table `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Indexes for table `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  ADD PRIMARY KEY (`url_alias_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Indexes for table `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Indexes for table `oc_verticalmenu`
--
ALTER TABLE `oc_verticalmenu`
  ADD PRIMARY KEY (`verticalmenu_id`);

--
-- Indexes for table `oc_verticalmenu_description`
--
ALTER TABLE `oc_verticalmenu_description`
  ADD PRIMARY KEY (`verticalmenu_id`,`language_id`),
  ADD KEY `name` (`title`);

--
-- Indexes for table `oc_verticalmenu_widgets`
--
ALTER TABLE `oc_verticalmenu_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Indexes for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Indexes for table `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Indexes for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Indexes for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Indexes for table `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
  MODIFY `affiliate_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
  MODIFY `affiliate_activity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
  MODIFY `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
  MODIFY `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;
--
-- AUTO_INCREMENT for table `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;
--
-- AUTO_INCREMENT for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1032;
--
-- AUTO_INCREMENT for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=555;
--
-- AUTO_INCREMENT for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_megamenu`
--
ALTER TABLE `oc_megamenu`
  MODIFY `megamenu_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;
--
-- AUTO_INCREMENT for table `oc_megamenu_widgets`
--
ALTER TABLE `oc_megamenu_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `oc_menu`
--
ALTER TABLE `oc_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
  MODIFY `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_pavblog_blog`
--
ALTER TABLE `oc_pavblog_blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `oc_pavblog_category`
--
ALTER TABLE `oc_pavblog_category`
  MODIFY `category_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `oc_pavblog_comment`
--
ALTER TABLE `oc_pavblog_comment`
  MODIFY `comment_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_pavnewsletter_draft`
--
ALTER TABLE `oc_pavnewsletter_draft`
  MODIFY `draft_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_pavnewsletter_email`
--
ALTER TABLE `oc_pavnewsletter_email`
  MODIFY `email_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_pavnewsletter_history`
--
ALTER TABLE `oc_pavnewsletter_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_pavnewsletter_subscribe`
--
ALTER TABLE `oc_pavnewsletter_subscribe`
  MODIFY `subscribe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_pavnewsletter_template`
--
ALTER TABLE `oc_pavnewsletter_template`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_pavoslidergroups`
--
ALTER TABLE `oc_pavoslidergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `oc_pavosliderlayers`
--
ALTER TABLE `oc_pavosliderlayers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
--
-- AUTO_INCREMENT for table `oc_pavwidget`
--
ALTER TABLE `oc_pavwidget`
  MODIFY `pavwidget_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16134;
--
-- AUTO_INCREMENT for table `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=471;
--
-- AUTO_INCREMENT for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3478;
--
-- AUTO_INCREMENT for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;
--
-- AUTO_INCREMENT for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=619;
--
-- AUTO_INCREMENT for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=494;
--
-- AUTO_INCREMENT for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  MODIFY `url_alias_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1127;
--
-- AUTO_INCREMENT for table `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_verticalmenu`
--
ALTER TABLE `oc_verticalmenu`
  MODIFY `verticalmenu_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `oc_verticalmenu_widgets`
--
ALTER TABLE `oc_verticalmenu_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4236;
--
-- AUTO_INCREMENT for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
