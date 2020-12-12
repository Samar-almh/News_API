-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 12 ديسمبر 2020 الساعة 22:07
-- إصدار الخادم: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news_data`
--

-- --------------------------------------------------------

--
-- بنية الجدول `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- بنية الجدول `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `news_title` varchar(255) NOT NULL,
  `news_details` text NOT NULL,
  `news_image` varchar(255) NOT NULL,
  `news_date` date NOT NULL,
  `id_catagory` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `news`
--

INSERT INTO `news` (`id`, `news_title`, `news_details`, `news_image`, `news_date`, `id_catagory`) VALUES
(1, 'President Donald Trump won the 2020 election', 'Weeks after the bitterly fought presidential race ended with the naming of Joe Biden as the projected winner over President Donald Trump, some are still claiming a victor can not yet be named.', '', '2020-12-09', 0),
(2, 'covid_19', 'Every state has its own COVID-19 vaccine distribution plan. Find the one for yours here.', '', '2020-12-09', 0),
(3, 'New York (CNN Business)', 'The US government plans to give SpaceX nearly a billion dollars to beam internet from space to people across rural America, where three out of five people say access to broadband is still a pressing issue.', '', '2020-12-10', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
