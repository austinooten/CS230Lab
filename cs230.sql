-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2020 at 10:09 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs230`
--

-- --------------------------------------------------------

--
-- Table structure for table `moviesandshows`
--

CREATE TABLE `moviesandshows` (
  `pid` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `descript` text NOT NULL,
  `picpath` varchar(80) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `moviesandshows`
--

INSERT INTO `moviesandshows` (`pid`, `title`, `descript`, `picpath`, `upload_date`, `rating`) VALUES
(1, 'The Avengers', 'Iron Man', '5f836caf923d70.36835116.jpg', '2020-10-11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `uname` varchar(30) NOT NULL,
  `picpath` varchar(50) NOT NULL DEFAULT 'uploads/zoidberg.png',
  `bio` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`uname`, `picpath`, `bio`) VALUES
('Test', '../uploads/5f9328af438465.15780004.jpg', 'I like to paint'),
('Test1', '../uploads/5f74f50a8ee636.18028712.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `rev_id` int(11) NOT NULL COMMENT 'review id',
  `item_id` int(11) NOT NULL COMMENT 'item id to be reviewed',
  `uname` varchar(80) CHARACTER SET utf8mb4 NOT NULL COMMENT 'user who will review it',
  `title` varchar(60) CHARACTER SET utf8mb4 NOT NULL,
  `review_text` text CHARACTER SET utf8mb4 NOT NULL,
  `rev_date` datetime NOT NULL,
  `rating_num` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT 'is there at least 1 review'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`rev_id`, `item_id`, `uname`, `title`, `review_text`, `rev_date`, `rating_num`, `status`) VALUES
(1, 1, 'Test', 'Lab7 Test', 'Test', '2020-10-23 20:35:07', 4, 1),
(2, 1, 'Test', 'Lab7 Test2', 'Average test', '2020-10-23 21:15:03', 2, 1),
(3, 1, 'Test', 'Lab7 Test3', 'Avg', '2020-10-23 21:15:56', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `lname`, `fname`, `email`, `uname`, `password`) VALUES
(4, 'Test', 'Test', 't@t.com', 'Test', '$2y$10$xDmnnO.bOgirRHbKIQhguOlk2xCt26DmiGYhjuX34VGp4eddQSEyS'),
(5, 'Test', 'Test1', 'T1@t1.com', 'Test1', '$2y$10$0E0kDpIaIBA5Nn58R5D0sup8zasofYnu8BYSNbFdoBxlbuNLNaSsG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `moviesandshows`
--
ALTER TABLE `moviesandshows`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`rev_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `moviesandshows`
--
ALTER TABLE `moviesandshows`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `rev_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'review id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
