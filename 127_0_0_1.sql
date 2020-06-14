-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2019 at 03:01 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `passowrd` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `passowrd`, `phone`, `image`) VALUES
(10, 'StorialTech', 'storialtech@gmail.com', '327d8c39916458d3606107dde8d3a3b41a00a32e', '01623405027', ''),
(20, 'Rakib Alom', 'rakibalom17@gmail.com', '5821eb27d7b71c9078000da31a5a654c97e401b9', '01623405027', ''),
(26, 'Rakib Alom', 'rakibalom17@gmail.com', 'ea34761959f950a796495cdfd9cc7ca2f7321e10', '01623405027', ''),
(28, 'MD Rakibul Alom', 'admin@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '01777424393', '');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cate_id` int(11) NOT NULL,
  `cate_name` varchar(255) NOT NULL,
  `cate_status` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cate_id`, `cate_name`, `cate_status`) VALUES
(1, 'Technology', '1'),
(2, 'Sports', '1'),
(3, 'Mobile', '1');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `post_thumb` varchar(255) NOT NULL,
  `post_desc` text NOT NULL,
  `post_by` varchar(255) NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `post_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_title`, `cate_id`, `post_thumb`, `post_desc`, `post_by`, `post_date`, `post_status`) VALUES
(15, 'Unknown', 1, 'book_2.jpg', 'à¦ªà§œà§‡ à¦¦à§‡à¦–à§à¦¨ à¦­à¦¾à¦²à§‹ à¦²à¦¾à¦—à¦¬à§‹à¥¤\r\n\r\nà¦†à¦®à¦°à¦¾ à¦¯à¦¾à¦°à¦¾ 1990-2000 à¦¸à¦¾à¦²à§‡à¦° à¦®à¦§à§à¦¯à§‡ à¦œà¦¨à§à¦®à§‡à¦›à¦¿ à¦†à¦®à¦°à¦¾ à¦¬à¦¿à¦¶à§‡à¦· à¦•à¦¿à¦›à§ à¦›à¦¿à¦²à¦¾à¦® à¦¨à¦¾ðŸ˜‰,à¦¤à¦¬à§‡ à¦†à¦®à¦°à¦¾ à¦­à¦¾à¦—à§à¦¯à¦¬à¦¾à¦¨ à¦›à¦¿à¦²à¦¾à¦®ðŸ˜œ à¦¯à¦–à¦¨ à¦†à¦®à¦°à¦¾ à¦›à§‹à¦Ÿ à¦›à¦¿à¦²à¦¾à¦® à¦¹à¦¾à¦¤à¦—à§à¦²à§‹ à¦œà¦¾à¦®à¦¾à¦° à¦­à¦¿à¦¤à¦° à¦¢à§à¦•à¦¿à§Ÿà§‡ à¦°à§‡à¦–à§‡ à¦¬à¦²à¦¤à¦¾à¦® à¦†à¦®à¦¾à¦° à¦¹à¦¾à¦¤ à¦¨à¦¾à¦‡ðŸ™‹à¥¤à¦à¦•à¦Ÿà¦¾ à¦•à¦²à¦® à¦›à¦¿à¦²à§‹ à¦¯à¦¾à¦° à¦šà¦¾à¦° à¦°à¦•à¦®à§‡à¦° à¦•à¦¾à¦²à¦¿ à¦›à¦¿à¦²à§‹ðŸš¦,à¦†à¦° à¦¤à¦¾à¦° à¦šà¦¾à¦°à¦Ÿà¦¾ à¦¬à§‹à¦¤à¦¾à¦® à¦à¦•à¦¸à¦¾à¦¥à§‡ à¦Ÿà§‡à¦ªà¦¾à¦° à¦šà§‡à¦·à§à¦Ÿà¦¾ à¦•à¦°à¦¤à¦¾à¦®ðŸ¤—à¦†à¦®à¦¾à¦¦à§‡à¦° à¦¸à¦®à§Ÿà§‡ à¦à¦• à¦¹à¦¾à¦¤ à¦¸à¦®à¦¾à¦¨ à¦•à¦²à¦® à¦ªà¦¾à¦“à§Ÿà¦¾ à¦—à§‡à¦²à§‡à¦“ à¦†à¦®à¦°à¦¾ à¦†à¦¬à¦¾à¦° à¦•à¦²à¦® à¦•à§‡à¦Ÿà§‡ à¦…à¦¨à§‡à¦• à¦›à§‹à¦Ÿ à¦•à¦²à¦® à¦†à¦¬à¦¿à¦·à§à¦•à¦¾à¦° à¦•à¦°à¦¤à¦¾à¦®ðŸ¤‘à¦¦à¦°à¦œà¦¾à¦° à¦ªà¦¿à¦›à¦¨à§‡ à¦²à§à¦•à¦¿à§Ÿà§‡ à¦¥à¦¾à¦•à¦¤à¦¾à¦® à¦•à§‡à¦‰ à¦à¦²à§‡ à¦šà¦®à¦•à§‡ à¦¦à¦¿à¦¬ à¦¬à¦²à§‡,ðŸ˜‡à¦¸à§‡ à¦†à¦¸à¦¤à§‡ à¦¦à§‡à¦°à¦¿ à¦•à¦°à¦›à§‡ à¦¬à¦²à§‡ à¦…à¦§à§ˆà¦°à§à¦¯ à¦¹à§Ÿà§‡ à¦¬à§‡à¦°à¦¿à§Ÿà§‡ à¦†à¦¸à¦¤à¦¾à¦® ðŸ˜“à¥¤à¦°à¦¾à¦¤à§‡ à¦¹à¦¾à¦Ÿà¦¾à¦° à¦¸à¦®à§Ÿ à¦­à¦¾à¦¬à¦¤à¦¾à¦® à¦†à¦®à¦¿ à¦¯à§‡à¦–à¦¾à¦¨à§‡ à¦¯à¦¾à¦šà§à¦›à¦¿ à¦šà¦¾à¦à¦¦ à¦Ÿà¦¾à¦“ à¦†à¦®à¦¾à¦° à¦¸à¦¾à¦¥à§‡ à¦¯à¦¾à¦šà§à¦›à§‡ðŸ’¥à¦•à¦¾à¦°à§‡à¦¨à§à¦Ÿà§‡à¦°ðŸ’¡ à¦¸à§à¦‡à¦šà§‡à¦° à¦¦à§à¦‡à¦¦à¦¿à¦•à§‡ à¦†à¦™à§à¦—à§à¦² à¦šà§‡à¦ªà§‡ à¦¸à§à¦‡à¦šà¦Ÿà¦¾à¦•à§‡ à¦…à¦¨ à¦…à¦« à¦à¦° à¦®à¦¾à¦à¦¾à¦®à¦¾à¦à¦¿ à¦…à¦¬à¦¸à§à¦¥à¦¾à¦¨à§‡ à¦†à¦¨à¦¾à¦° à¦šà§‡à¦·à§à¦Ÿà¦¾ à¦•à¦°à¦¤à¦¾à¦®ðŸ˜œà¥¤à¦¸à§à¦•à§à¦²à§‡ à¦¯à¦¾à¦“à§Ÿà¦¾à¦° à¦¸à¦®à§Ÿ à¦¸à¦¬à¦¾à¦‡ à¦à¦• à¦¸à¦¾à¦¥à§‡ à¦¦à§Œà§œà¦¾à¦¦à§Œà§œà§€ à¦•à¦°à§‡ à¦¯à§‡à¦¤à¦¾à¦®ðŸƒðŸƒà¥¤à¦•à§à¦²à¦¾à¦¸à§‡ à¦•à¦²à¦® à¦•à¦²à¦® à¦–à§‡à¦²à¦¾ðŸ–‹,à¦–à¦¾à¦¤à¦¾à§Ÿ à¦•à§à¦°à¦¿à¦•à§‡à¦Ÿ à¦–à§‡à¦²à¦¾ðŸ,à¦šà§‹à¦°ðŸ‘½-à¦¡à¦¾à¦•à¦¾à¦¤ðŸ‘»-à¦¬à¦¾à¦¬à§ðŸ˜˜-à¦ªà§à¦²à¦¿à¦¶ ðŸ¤—à¦–à§‡à¦²à¦¤à¦¾à¦®à¥¤ à¦…à¦¨à§‡à¦• à¦¸à¦®à§Ÿ à¦¸à§à¦•à§à¦² à¦«à¦¾à¦•à¦¿ à¦¦à¦¿à§Ÿà§‡ à¦•à§Ÿà§‡à¦• à¦œà¦¨ à¦¬à¦¨à§à¦§à§ à¦®à¦¿à¦²à§‡ à¦˜à§à¦°à¦¤à§‡ à¦¯à§‡à¦¤à¦¾à¦® à¦†à¦¡à§à¦¡à¦¾ à¦¦à¦¿à¦¤à¦¾à¦® à¦†à¦° à¦“ à¦•à¦¤ à¦•à¦¿ðŸ˜Žà¥¤ à¦à¦• à¦Ÿà¦¾à¦•à¦¾à¦° à¦°à¦™à§à¦—à¦¿à¦¨ à¦¬à¦¾ à¦¨à¦¾à¦°à¦•à§‡à¦²à¦¿ à¦†à¦‡à¦¸à¦•à§à¦°à¦¿à¦®ðŸ¿,à¦¹à¦¾à¦“à§Ÿà¦¾à¦‡ à¦®à¦¿à¦ à¦¾à¦‡ðŸ£ à¦–à§‡à¦¤à§‡ à¦¨à¦¾ à¦ªà¦¾à¦°à¦²à§‡ à¦®à¦¨à¦Ÿà¦¾à¦‡ à¦–à¦¾à¦°à¦¾à¦ª à¦¹à§Ÿà§‡ à¦¯à§‡à¦¤ðŸ˜‘à¥¤à¦¹à¦ à¦¾à§Ž à¦†à¦•à¦¾à¦¶ à¦¦à¦¿à§Ÿà§‡ à¦¹à§‡à¦²à¦¿à¦•à¦ªà§à¦Ÿà¦¾à¦°ðŸš à¦—à§‡à¦²à§‡ à¦¸à¦¬à¦¾à¦‡ à¦°à§à¦® à¦¥à§‡à¦•à§‡ à¦¬à§‡à¦° à¦¹à§Ÿà§‡ à¦†à¦•à¦¾à¦¶à§‡à¦° à¦¦à¦¿à¦•à§‡ à¦¤à¦¾à¦•à¦¾à¦‡ à¦¥à¦¾à¦•à¦¤à¦¾à¦®ðŸ‘«à¥¤ à¦¸à§à¦•à§à¦² à¦›à§à¦Ÿà¦¿ à¦¹à¦²à§‡ à¦¦à§Œà§œà§‡ à¦¬à¦¾à¦¸à¦¾à§Ÿ à¦†à¦¸à¦¤à¦¾à¦® à¦®à¦¿à¦¨à¦¾ à¦•à¦¾à¦°à§à¦Ÿà§à¦¨ðŸ‘° à¦¦à§‡à¦–à¦¬à§‹ à¦¬à¦²à§‡à¥¤ à¦¶à§à¦•à§à¦°à¦¬à¦¾à¦° à¦¦à§à¦ªà§à¦° à§© à¦Ÿà¦¾ à¦¥à§‡à¦•à§‡ à¦†à¦ªà§‡à¦•à§à¦·à¦¾ à¦•à¦°à¦¤à¦¾à¦® à¦•à¦–à¦¨ BTV à¦¤à§‡ à¦¸à¦¿à¦¨à§‡à¦®à¦¾ à¦¶à§à¦°à§ à¦¹à¦¬à§‡ðŸ˜¬à¥¤ à¦à¦¬à¦‚ à¦¸à¦¨à§à¦§à¦¾à¦° à¦ªà¦° à¦†à¦²à¦¿à¦« à¦²à¦¾à§Ÿà¦²à¦¾ðŸ‘½,à¦¸à¦¿à¦¨à§à¦¦à¦¬à¦¾à¦¦,ðŸ‘ºà¦°à¦¬à¦¿à¦¨à¦¹à§à¦¡,ðŸ‘¹à¦®à§à¦¯à¦¾à¦•à¦¾à¦‡à¦­à¦¾à¦°ðŸ‘¦ à¦¦à§‡à¦–à¦¾à¦° à¦œà¦¨à§à¦¯ à¦ªà§à¦°à§‹ à¦¸à¦ªà§à¦¤à¦¾à¦¹ à¦…à¦ªà§‡à¦•à§à¦·à¦¾ à¦•à¦°à¦¤à¦¾à¦®ðŸ˜¬à¥¤ à¦«à¦²à§‡à¦° à¦—à§à¦Ÿà¦¿ à¦–à§‡à§Ÿà§‡ à¦«à§‡à¦²à¦²à§‡ à¦¦à§à¦¶à§à¦šà¦¿à¦¨à§à¦¤à¦¾ à¦•à¦°à¦¤à¦¾à¦® à¦ªà§‡à¦Ÿà§‡à¦° à¦­à¦¿à¦¤à¦° à¦—à¦¾à¦› à¦¹à¦¬à§‡ à¦•à¦¿à¦¨à¦¾ðŸ˜­ à¦®à¦¾à¦¥à¦¾à§Ÿ à¦®à¦¾à¦¥à¦¾à§Ÿ à¦§à¦¾à¦•à§à¦•à¦¾ à¦²à¦¾à¦—à¦²à§‡ à¦¶à¦¿à¦‚ à¦—à¦œà¦¾à¦¨à§‹à¦° à¦­à§Ÿà§‡ à¦†à¦¬à¦¾à¦° à¦¨à¦¿à¦œà§‡à¦° à¦‡à¦šà§à¦›à¦¾à§Ÿ à¦§à¦¾à¦•à§à¦•à¦¾ à¦¦à¦¿à¦¤à¦®ðŸ˜ˆ à¦•à§‡à¦‰ à¦¬à¦¸à§‡ à¦¥à¦¾à¦•à¦²à§‡ à¦¤à¦¾à¦° à¦®à¦¾à¦¥à¦¾à¦° à¦‰à¦ªà¦° à¦¦à¦¿à§Ÿà§‡ à¦à¦¾à¦ª à¦¦à¦¿à¦¤à¦¾à¦® à¦¯à¦¾à¦¤à§‡ à¦¸à§‡ à¦†à¦° à¦²à¦®à§à¦¬à¦¾ à¦¹à¦¤à§‡ à¦¨à¦¾ à¦ªà¦¾à¦°à§‡ðŸ˜œ à¦¬à¦¿à¦•à§‡à¦²à§‡ à¦•à§à¦¤à¦•à§à¦¤,à¦•à¦¾à¦¨à¦¾à¦®à¦¾à¦›à¦¿,ðŸ¤“à¦—à§‹à¦²à§à¦²à¦¾à¦›à§à¦Ÿ ðŸƒà¦¨à¦¾ à¦–à§‡à¦²à¦²à§‡ à¦¬à¦¿à¦•à¦¾à¦² à¦Ÿà¦¾à¦‡ à¦¯à§‡à¦¨ à¦®à¦¾à¦Ÿà¦¿ à¦¹à§Ÿà§‡ à¦¯à§‡à¦¤ðŸ˜“ à¦«à¦¾à¦‡à¦¨à¦¾à¦² à¦ªà¦°à¦¿à¦•à§à¦·à¦¾ à¦¶à§‡à¦· à¦¹à¦²à§‡ à¦¤à§‹ à¦¸à¦•à¦¾à¦²à§‡ à¦ªà§œà¦¾ à¦¨à§‡à¦‡ à¦à¦¤à§‹ à¦®à¦œà¦¾ à¦²à¦¾à¦—à¦¤à§‹ à¦¯à¦¾ à¦¬à¦²à¦¾à¦° à¦¬à¦¾à¦‡à¦°à§‡ðŸ˜Žà¥¤ à¦¨à¦¾à¦¨à§ à¦¬à¦¾à§œà¦¿,à¦¦à¦¾à¦¦à§ à¦¬à¦¾à§œà¦¿ à¦¯à¦¾à¦“à§Ÿà¦¾à¦° à¦à¦Ÿà¦¾à¦‡ à¦¤à§‹ à¦›à¦¿à¦²à§‹ à¦¸à¦®à§ŸðŸ¤—à¦¬à§à¦¯à¦¾à¦¡à¦®à¦¿à¦¨à§à¦Ÿà¦¨,à¦•à§‡à¦°à¦¾à¦®,à¦²à§à¦¡à§ à¦¨à¦¾ à¦–à§‡à¦²à¦²à§‡ à¦•à¦¿ à¦¹à§ŸðŸ¤”à¦¡à¦¿à¦¸à§‡à¦®à§à¦¬à¦° à¦®à¦¾à¦¸ à¦“ à¦¶à¦¿à¦¤à¦•à¦¾à¦² à¦Ÿà¦¾ à¦†à¦®à¦¾à¦¦à§‡à¦° à¦›à§‡à¦²à§‡à¦¬à§‡à¦²à¦¾à§Ÿ à¦à¦®à¦¨à¦¿ à¦•à¦¾à¦²à¦¾à¦°à¦«à§à¦² à¦›à¦¿à¦²ðŸ˜à¦¤à¦¬à§‡ à¦¡à¦¿à¦¸à§‡à¦®à§à¦¬à¦°à§‡à¦° à§©à§§ à¦¤à¦¾à¦°à¦¿à¦– à¦¯à¦¤à¦‡ à¦†à¦—à¦¾à¦‡ à¦†à¦¸à¦¤à§‹ à¦®à¦¨à§‡à¦° à¦®à¦§à§à¦¯à§‡ à¦­à§Ÿ à¦¤à¦¤à¦‡ à¦¬à¦¾à§œà¦¤à§‹ðŸ™„,à¦“à¦‡ à¦¦à¦¿à¦¨ à¦¯à§‡ à¦«à¦¾à¦‡à¦¨à¦¾à¦²à§‡à¦° à¦°à§‡à¦œà¦¾à¦²à§à¦Ÿ à¦¦à¦¿à¦¬à§‡ à¦¤à¦¾à¦‡ à¦†à¦° à¦•à¦¿\r\nà¦†à¦®à¦¿ à¦œà¦¾à¦¨à¦¿ à¦†à¦®à¦¾à¦¦à§‡à¦° à¦œà§‡à¦¨à¦¾à¦°à§‡à¦¶à¦¨à§‡à¦° à¦¯à¦¾à¦°à¦¾ à¦à¦—à§à¦²à§‹ à¦ªà§œà¦›à§‹ ,à¦¨à¦¿à¦¶à§à¦šà¦‡ à¦¤à§‹à¦®à¦¾à¦¦à§‡à¦° à¦®à§à¦–à§‡ à¦¹à¦¾à¦¸à¦¿ à¦«à§à¦Ÿà§‡ à¦‰à¦ à§‡à¦›à§‡??\r\nà¦à¦¸à¦¬ à¦•à¦¥à¦¾ à¦®à¦¨à§‡ à¦ªà§œà¦²à§‡ à¦‡à¦šà§à¦›à¦¾ à¦•à¦°à§‡ à¦†à¦¬à¦¾à¦° à¦¯à¦¦à¦¿ à¦¸à§‡à¦‡ à¦›à§‡à¦²à§‡ à¦¬à§‡à¦²à¦¾ à¦Ÿà¦¾ à¦«à¦¿à¦°à§‡ à¦ªà§‡à¦¤à¦¾à¦®à¥¤\r\nà¦à¦–à¦¨ à¦“ à¦–à§à¦¬ à¦®à¦¨à§‡ à¦ªà¦°à§‡ à¦¸à§‡à¦‡ à¦†à¦—à§‡à¦•à¦¾à¦° à¦¦à¦¿à¦¨à¦—à§à¦²à§‹à¦° à¦•à¦¥à¦¾à¥¤', 'Rakib Alom', '31-05-2019', 1),
(16, '', 1, 'computer_1.jpg', 'à¦¤à¦¿à¦¨ à¦®à¦¾à¦¸à§‡à¦° à¦•à¦®à§à¦ªà¦¿à¦‰à¦Ÿà¦¾à¦° à¦•à§‹à¦°à§à¦¸ à¦•à¦°à¦›à¦¿à¦²à¦¾à¦®à¥¤ à¦ªà§à¦°à¦¥à¦® à¦¦à§à¦®à¦¾à¦¸ à¦¨à¦¾ à¦ªà¦¾à¦°à¦¤à§‡à¦‡ à¦•à§à¦²à¦¾à¦¸ à¦•à¦°à¦¾ à¦•à§‹à¦¨ à¦°à¦•à¦® à¦¯à¦¾à¦‡ à¦†à¦° à¦†à¦¸à¦¿à¥¤ à¦²à¦¾à¦¸à§à¦Ÿ à¦®à¦¾à¦¨à§à¦¥à§‡ à¦†à¦®à¦¾à¦° à¦¶à§‡à¦–à¦¾à¦° à¦†à¦—à§à¦°à¦¹ à¦¦à§‡à¦–à§‡ à¦¸à§à¦¯à¦¾à¦° à¦¤à§‹ à¦…à¦¬à¦¾à¦•! à¦•à§€ à¦¬à§à¦¯à¦ªà¦¾à¦° à¦¹à§ƒà¦¦à¦¾ à¦¹à¦ à¦¾à§Ž à¦à¦¤à§‹ à¦­à¦¾à¦²à§‹ à¦›à¦¾à¦¤à§à¦°à§€ à¦¹à§Ÿà§‡ à¦—à§‡à¦²à§‡ à¦¯à§‡!! à¦¨à¦¾ à¦¸à§à¦¯à¦¾à¦° à¦†à¦¸à¦²à§‡ à¦¬à§à¦¯à¦ªà¦¾à¦°à¦Ÿà¦¾ à¦¹à¦²à§‹ à¦•à§€ à¦†à¦®à¦¾à¦° à¦†à¦—à§à¦°à¦¹ à¦•à¦®à§à¦ªà¦¿à¦‰à¦Ÿà¦¾à¦° à¦¶à§‡à¦–à¦¾à¦° à¦ªà§à¦°à¦¤à¦¿ à¦¨à§Ÿ, à¦²à§à¦¯à¦¾à¦ªà¦Ÿà¦ªà§‡à¦° à¦ªà§à¦°à¦¤à¦¿à¥¤ à¦®à¦¾à¦¨à§‡? à¦†à¦®à¦¾à¦•à§‡ à¦¬à¦²à¦›à§‡, à¦†à¦®à¦¾à¦° à¦•à¦®à§à¦ªà¦¿à¦‰à¦Ÿà¦¾à¦° à¦¶à§‡à¦–à¦¾ à¦¹à§Ÿà§‡ à¦—à§‡à¦²à§‡à¦‡ à¦²à§à¦¯à¦¾à¦ªà¦Ÿà¦ª à¦•à¦¿à¦¨à§‡ à¦¦à§‡à¦¬à§‡à¥¤ à¦¸à§‡à¦œà¦¨à§à¦¯à§‡ à¦†à¦° à¦•à§€à¥¤ à¦¸à§à¦¯à¦¾à¦° à¦¤à§‹ à¦¹à¦¾à¦¸à¦¤à§‡ à¦¹à¦¾à¦¸à¦¤à§‡ à¦¶à§‡à¦·à¥¤\r\n\r\nà¦¯à¦¾à¦• à¦…à¦¬à¦¶à§‡à¦·à§‡ à¦²à§à¦¯à¦¾à¦ªà¦Ÿà¦ª à¦ªà§‡à¦²à¦¾à¦®à¥¤ à¦ˆà¦¦à§‡à¦° à¦†à¦—à§‡à¦‡ à¦ˆà¦¦à¥¤à¥¤', 'Rakib Alom', '31-05-2019', 1),
(17, 'Nijum Islam', 2, 'book_4.jpg', 'à¦†à¦®à¦¾à¦° à¦œà¦¿à¦à¦« à¦¯à§‡à¦¦à¦¿à¦¨ à¦à¦•à§à¦¸à¦¿à¦¡à§‡à¦¨à§à¦Ÿ à¦•à¦°à§‡ à¦®à¦¾à¦°à¦¾ à¦¯à¦¾à§Ÿ, à¦à¦° à¦ à¦¿à¦• à¦à¦• à¦˜à¦¨à§à¦Ÿà¦¾ à¦†à¦—à§‡ à¦†à¦®à¦¿ à¦¤à¦¾à¦•à§‡ à¦¤à¦¾à¦° à¦•à§‹à¦šà¦¿à¦‚à§Ÿà§‡ à¦¦à¦¿à§Ÿà§‡ à¦à¦¸à§‡à¦›à¦¿à¦²à¦¾à¦® à¦¬à¦¾à¦‡à¦• à¦¦à¦¿à§Ÿà§‡à¥¤ à¦¬à¦¾à¦°à¦¬à¦¾à¦° à¦¬à¦²à§‡ à¦à¦¸à§‡à¦›à¦¿à¦²à¦¾à¦® à¦¬à¦¾à¦¨à§à¦§à¦¬à§€à¦¦à§‡à¦° à¦¸à¦¾à¦¥à§‡ à¦•à§‹à¦¥à¦¾à¦“ à¦¯à¦¾à¦“à§Ÿà¦¾à¦° à¦¦à¦°à¦•à¦¾à¦° à¦¨à§‡à¦‡, à¦•à§‹à¦šà¦¿à¦‚ à¦¶à§‡à¦· à¦•à¦°à§‡ à¦¬à¦¾à¦¸à¦¾à§Ÿ à¦šà¦²à§‡ à¦¯à§‡à§Ÿà§‹à¥¤ à¦¸à§‡ à¦•à¦¥à¦¾ à¦¶à§à¦¨à§‡ à¦¨à¦¿, à¦¬à¦¾à¦¨à§à¦§à¦¬à§€à¦° à¦¸à¦¾à¦¥à§‡ à¦²à¦‚ à¦¡à§à¦°à¦¾à¦‡à¦­à§‡ à¦šà¦²à§‡ à¦—à¦¿à§Ÿà§‡à¦›à¦¿à¦²à§‹à¥¤ à¦†à¦®à¦¾à¦•à§‡ à¦²à§à¦•à¦¿à§Ÿà§‡ à¦—à¦¿à§Ÿà§‡à¦›à§‡ à¦à¦®à¦¨ à¦¨à¦¾, à¦®à§‡à¦¸à§‡à¦œ à¦¦à¦¿à§Ÿà§‡à¦›à¦¿à¦²à§‹à¥¤ à¦†à¦®à¦¿ à¦¯à¦–à¦¨ à¦–à¦¬à¦° à¦ªà¦¾à¦‡, à¦¤à¦–à¦¨ à¦†à¦®à¦¿ à¦¬à¦¾à¦¥à¦°à§à¦®à§‡ à¦›à¦¿à¦²à¦¾à¦®à¥¤ à¦†à¦®à¦¾à¦° à¦›à§‹à¦Ÿ à¦¬à§‹à¦¨ à¦•à§‡à¦à¦¦à§‡ à¦•à§‡à¦à¦¦à§‡ à¦à¦¸à§‡ à¦¡à¦¾à¦• à¦¦à¦¿à§Ÿà§‡ à¦¬à¦²à¦²à§‹ à¦­à¦¾à¦‡à§Ÿà¦¾ à¦†à¦ªà§ à¦¨à¦¾à¦•à¦¿ à¦à¦•à§à¦¸à¦¿à¦¡à§‡à¦¨à§à¦Ÿ à¦•à¦°à¦›à§‡, à¦®à§‡à¦¡à¦¿à¦•à§‡à¦² à¦¨à¦¿à§Ÿà§‡ à¦†à¦¸à¦›à§‡, à¦¤à§à¦®à¦¿ à¦¯à¦¾à¦“ à¦¤à¦¾à§œà¦¾à¦¤à¦¾à§œà¦¿à¥¤ à¦†à¦®à¦¾à¦° à¦®à¦¾à¦¥à¦¾à§Ÿ à¦¤à¦–à¦¨ à¦¶à§à¦¯à¦¾à¦®à§à¦ªà§à¦° à¦«à§‡à¦¨à¦¾, à¦¹à¦¾à¦¤à§‡à¦° à¦®à¦—à§‡ à¦ªà¦¾à¦¨à¦¿à¥¤ à¦¸à§‡à¦‡ à¦¶à§à¦¯à¦¾à¦®à§à¦ªà§ à¦¨à¦¿à§Ÿà§‡à¦‡ à¦†à¦®à¦¿ à¦ªà¦¾à¦—à¦²à§‡à¦° à¦®à¦¤à§‹ à¦®à§‡à¦¡à¦¿à¦•à§‡à¦²à§‡à¦° à¦‡à¦®à¦¾à¦°à§à¦œà§‡à¦¨à§à¦¸à§€ à¦¬à¦¿à¦­à¦¾à¦—à§‡ à¦¯à¦¾à¦‡à¥¤ à¦—à¦¿à§Ÿà§‡ à¦¦à§‡à¦–à¦¿ à¦¸à§‡ à¦¬à¦¿à¦›à¦¾à¦¨à¦¾à§Ÿ à¦ªà§œà§‡ à¦†à¦›à§‡à§· à¦®à¦¾à¦¥à¦¾à¦° à¦¸à¦¾à¦‡à¦¡ à¦¥à§‡à¦•à§‡ à¦°à¦•à§à¦¤à§‡à¦° à¦à¦•à¦Ÿà¦¾ à¦•à¦¾à¦²à¦šà§‡ à¦§à¦¾à¦°à¦¾ à¦¨à¦¾à¦•à§‡à¦° à¦•à¦¾à¦›à§‡ à¦à¦¸à§‡ à¦¨à§€à¦² à¦¹à§Ÿà§‡ à¦—à¦¿à§Ÿà§‡à¦›à§‡...à¦ªà¦¾à§Ÿà§‡à¦° à¦•à¦¾à¦›à¦Ÿà¦¾ à¦›à§‡à§œà¦¾ à¦…à¦¨à§‡à¦•à¦–à¦¾à¦¨à¦¿ à¥¤ à¦•à¦¾à¦®à¦¿à¦œà§‡ à¦®à¦¾à¦Ÿà¦¿ à¦²à¦¾à¦—à¦¾à¦¨à§‹, à¦¬à¦¿à¦›à¦¾à¦¨à¦¾à¦° à¦¨à§€à¦šà§‡ à¦¤à¦¾à¦° à¦¸à§à¦¯à¦¾à¦¨à§à¦¡à§‡à¦² à¦«à§‡à¦²à§‡ à¦°à¦¾à¦–à¦¾à¥¤ à¦¸à§‡à¦‡ à¦¸à§‡à¦¨à§à¦¡à§‡à¦²à§‡à¦° à¦à¦•à¦Ÿà¦¾à¦° à¦«à¦¿à¦¤à¦¾ à¦†à¦¬à¦¾à¦° à¦›à¦¿à¦à§œà¦¾ à§· à¦…à¦•à§à¦¸à¦¿à¦œà§‡à¦¨à§‡à¦° à¦®à¦¾à¦¸à§à¦•à¦Ÿà¦¾ à¦®à§à¦–à§‡ à¦…à¦¬à¦¹à§‡à¦²à¦¾à§Ÿ à¦²à¦¾à¦—à¦¾à¦¨à§‹,à¦®à¦¸à§à¦¤à¦¿à¦·à§à¦• à¦¶à§à¦¬à¦¾à¦¸à¦ªà§à¦°à¦¶à§à¦¬à¦¾à¦¸ à¦¨à§‡à§Ÿà¦¾ à¦¥à¦¾à¦®à¦¿à§Ÿà§‡ à¦¦à¦¿à§Ÿà§‡à¦›à§‡ à¦…à¦¨à§‡à¦• à¦†à¦—à§‡à¦‡à¥¤ à¦¹à¦¾à¦¤à§‡ à¦†à¦®à¦¾à¦° à¦¦à§‡à§Ÿà¦¾ à¦•à¦¾à¦šà§‡à¦° à¦šà§à§œà¦¿ à¦ªà¦°à§‡ à¦¸à§‡ à¦˜à§à¦®à¦¾à¦šà§à¦›à§‡ ! à¦¸à§‡à¦‡ à¦šà§à§œà¦¿à¦° à¦¬à§‡à¦¶ à¦•à§Ÿà§‡à¦•à¦Ÿà¦¾ à¦†à¦¬à¦¾à¦° à¦­à¦¾à¦™à¦¾ à¥¤ à¦à¦•à¦Ÿà¦¾ à¦šà§à§œà¦¿à¦° à¦à¦• à¦ªà¦¾à¦¶ à¦¤à¦¾à¦° à¦§à¦¬à¦§à¦¬à§‡ à¦¸à¦¾à¦¦à¦¾ à¦¹à¦¾à¦¤à§‡à¦° à¦­à¦¿à¦¤à¦° à¦—à§‡à¦à¦¥à§‡ à¦†à¦›à§‡à¥¤ à¦¤à¦¾à¦° à¦ªà¦°à¦¨à§‡ à¦¯à§‡à¦‡ à¦œà¦¾à¦®à¦¾ à¦›à¦¿à¦²à§‹ à¦¸à§‡à¦‡à¦Ÿà¦¾ à¦¯à§‡à¦¦à¦¿à¦¨ à¦•à¦¿à¦¨à§‡à¦›à¦¿à¦²à§‹ à¦¸à§‡à¦‡à¦¦à¦¿à¦¨ à¦†à¦®à¦°à¦¾ à¦à¦•à¦¸à¦¾à¦¥à§‡ à¦°à¦¿à¦•à¦¶à¦¾à§Ÿ à¦šà§œà§‡à¦›à¦¿à¦²à¦¾à¦®à¥¤ à¦•à¦¤à§‹ à¦¹à¦¾à¦œà¦¾à¦° à¦¹à¦¾à¦œà¦¾à¦° à¦¬à¦¿à¦·à§Ÿ à¦¨à¦¿à§Ÿà§‡ à¦—à¦²à§à¦ª à¦¹à§Ÿà§‡à¦›à¦¿à¦²à§‹ à¦¸à§‡à¦‡à¦¦à¦¿à¦¨ ! à¦†à¦®à¦¾à¦° à¦šà§à¦² à¦²à¦®à§à¦¬à¦¾ à¦•à§‡à¦¨à§‹ à¦à¦‡à¦Ÿà¦¾ à¦¨à¦¿à§Ÿà§‡ à¦à¦• à¦«à¦¾à¦à¦•à§‡ à¦†à¦¬à¦¾à¦° à¦à¦—à§œà¦¾à¦“ à¦¹à§Ÿà§‡à¦›à¦¿à¦²à§‹à¥¤ à¦à¦‡ à¦œà¦¾à¦®à¦¾à¦° à¦•à¦¾à¦²à¦¾à¦° à¦¨à¦¿à§Ÿà§‡à¦“ à¦¬à¦¿à¦¶à¦¾à¦² à¦à¦¾à¦®à§‡à¦²à¦¾, à¦¤à¦¾à¦° à¦à¦‡ à¦•à¦¾à¦²à¦¾à¦° à¦ªà¦›à¦¨à§à¦¦ à¦¨à¦¾ à¦•à¦¿à¦¨à§à¦¤à§ à¦†à¦®à¦¾à¦° à¦•à¦¾à¦›à§‡ à¦®à§‡à¦°à§à¦¨ à¦•à¦¾à¦²à¦¾à¦°à¦Ÿà¦¾ à¦­à¦¾à¦²à§‹ à¦²à¦¾à¦—à§‡à¥¤ à¦†à¦®à¦¿ à¦œà§‹à¦° à¦•à¦°à§‡ à¦¤à¦¾à¦•à§‡ à¦à¦‡ à¦•à¦¾à¦²à¦¾à¦° à¦•à¦¿à¦¨à¦¿à§Ÿà§‡à¦›à¦¿à¦²à¦¾à¦®à§· à¦•à§‡ à¦œà¦¾à¦¨à¦¤à§‹ à¦à¦‡ à¦•à¦¾à¦²à¦¾à¦°à§‡à¦‡ à¦¤à¦¾à¦•à§‡ à¦¶à§‡à¦·à¦¬à¦¾à¦°à§‡à¦° à¦®à¦¤à§‹ à¦¦à§‡à¦–à¦¬à§‹ ! à¦®à¦¾à¦¨à§à¦· à¦®à¦¾à¦à§‡à¦®à¦§à§à¦¯à§‡ à¦…à¦¨à§à¦­à§‚à¦¤à¦¿ à¦¶à§‚à¦¨à§à¦¯ à¦¹à§Ÿà§‡ à¦¯à¦¾à§Ÿà¥¤ à¦†à¦®à¦¾à¦° à¦•à§à¦·à§‡à¦¤à§à¦°à§‡, à¦†à¦®à¦¿ à¦¸à§‡à¦‡à¦¦à¦¿à¦¨à§‡à¦° à¦ªà¦° à¦¥à§‡à¦•à§‡ à¦…à¦¨à§à¦­à§‚à¦¤à¦¿ à¦¶à§‚à¦¨à§à¦¯ à¦¹à§Ÿà§‡ à¦—à¦¿à§Ÿà§‡à¦›à¦¿à¥¤ à¦•à¦¾à¦à¦¦à¦¤à§‡ à¦•à¦¾à¦à¦¦à¦¤à§‡ à¦à¦–à¦¨ à¦†à¦° à¦šà§‹à¦– à¦¬à¦¿à¦°à¦•à§à¦¤ à¦¹à§Ÿà§‡ à¦ªà¦¾à¦¨à¦¿ à¦«à§‡à¦²à§‡ à¦¨à¦¾ à§· à¦°à¦¾à¦¤ à¦¨à¦¾à¦‡ à¦¦à¦¿à¦¨ à¦¨à¦¾à¦‡ à¦¤à¦¾à¦° à¦•à¦¬à¦°à§‡à¦° à¦•à¦¾à¦›à§‡ à¦—à¦¿à§Ÿà§‡ à¦¬à¦¸à§‡ à¦¥à¦¾à¦•à¦¤à¦¾à¦® à¦à¦•à¦Ÿà¦¾ à¦¸à¦®à§Ÿ à¥¤ à¦®à¦¾à¦¨à§à¦·à¦¤à§‹ à¦•à¦¤à¦•à¦¿à¦›à§à¦‡ à¦­à§à¦²à§‡ à¦¯à¦¾à§Ÿ , à¦†à¦®à¦¿ à¦•à§‡à¦¨à§‹ à¦¤à¦¾à¦•à§‡ à¦­à§à¦²à¦¤à§‡ à¦ªà¦¾à¦°à¦¿ à¦¨à¦¾ ? à¦ªà§à¦°à¦¤à¦¿à¦•à§à¦·à¦£ à¦¸à§‡à¦•à§‡à¦¨à§à¦¡à§‡ à¦¸à§‡ à¦¯à§‡à¦¨à§‹ à¦®à¦¾à¦¥à¦¾à§Ÿ à¦˜à§à¦°à§‡, à¦¤à¦¾à¦° à¦•à¦¥à¦¾ à¦¸à§à¦®à§ƒà¦¤à¦¿ à¦ªà¦¾à¦—à¦² à¦•à¦°à§‡ à¦¤à§‹à¦²à§‡ à¦†à¦®à¦¾à¦•à§‡, à¦®à§‡à¦¡à¦¿à¦•à§‡à¦²à§‡à¦° à¦¸à§à¦Ÿà§à¦°à§‡à¦šà¦¾à¦°à§‡ à¦¶à§à§Ÿà§‡ à¦¥à¦¾à¦•à¦¾ à¦¤à¦¾à¦° à¦«à§à¦¯à¦¾à¦•à¦¾à¦¸à§‡ à¦šà§‡à¦¹à¦¾à¦°à¦¾ à¦à¦–à¦¨à§‹ à¦—à¦­à§€à¦° à¦°à¦¾à¦¤à§‡ à¦†à¦®à¦¾à¦° à¦˜à§à¦® à¦­à¦¾à¦™à¦¿à§Ÿà§‡ à¦¦à§‡à§Ÿ ......... (Real Story)\r\nà¦­à¦¾à¦²à§‹à¦¬à¦¾à¦¸à¦¾à¦° à¦®à¦¾à¦¨à§à¦·à¦—à§à¦²à§‹ à¦à¦­à¦¾à¦¬à§‡à¦‡ à¦à¦•à¦¾ à¦•à¦°à§‡ à¦¦à¦¿à§Ÿà§‡ à¦šà¦²à§‡ à¦¯à¦¾à§Ÿ à¦¨à¦¾ à¦«à§‡à¦°à¦¾à¦° à¦¦à§‡à¦¶à§‡à¥¤ à¦†à¦° à¦à¦•à¦œà¦¨ à¦¬à§‡à¦à¦šà§‡ à¦“ à¦®à¦°à¦¾à¦° à¦®à¦¤à§‹ à¦œà§€à¦¬à¦¨ à¦•à¦¾à¦Ÿà¦¾à§Ÿ à¦¤à¦¾à¦° à¦¸à§à¦®à§ƒà¦¤à¦¿ à¦—à§à¦²à§‹ à¦¨à¦¿à§Ÿà§‡ ðŸ˜”ðŸ˜”\r\n# Collected', 'Rakib Alom', '31-05-2019', 1),
(18, 'Html', 1, 'logo.png', '<marquee>Sylhet Technical School and College, Sylhet </marquee>', 'Rakib Alom', '01-06-2019', 1),
(19, 'Hello', 2, 'Screenshot (2).png', 'afasfafsasf afa sfd', 'Rakib Alom', '14-07-2019', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
