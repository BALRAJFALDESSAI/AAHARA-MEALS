-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2023 at 03:49 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ideathon`
--

-- --------------------------------------------------------

--
-- Table structure for table `addrequest`
--

CREATE TABLE `addrequest` (
  `writeareq` varchar(100) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `food` varchar(100) DEFAULT NULL,
  `expiry` varchar(50) DEFAULT NULL,
  `novol` int(50) DEFAULT NULL,
  `descr` varchar(100) DEFAULT NULL,
  `us_id` int(20) DEFAULT NULL,
  `req_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addrequest`
--

INSERT INTO `addrequest` (`writeareq`, `quantity`, `food`, `expiry`, `novol`, `descr`, `us_id`, `req_id`) VALUES
(' VOLUNTEER REQUIRED ON 5-12-2022  ', 0, '', '', 0, 'volunteer required', 2813600, 3),
(' VOLUNTEER REQUIRED ON 15-12-2022  ', 0, '', '', 0, 'volunteer required', 1096, 4),
(' Require food for 30 people in Margao ', 30, 'non-veg', 'tomorrow', 4, 'ddsfsdffsdff', 574595, 7),
(' Require food for 15 people in panjim ', 0, '', '', 0, 'sdfgwg', 5800211, 8);

-- --------------------------------------------------------

--
-- Table structure for table `explore`
--

CREATE TABLE `explore` (
  `image` varchar(100) NOT NULL,
  `us_id` int(15) NOT NULL,
  `image_text` text NOT NULL,
  `posts_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `explore`
--

INSERT INTO `explore` (`image`, `us_id`, `image_text`, `posts_id`) VALUES
('backpic new.jpg', 574595, '', 3),
('10.jpg', 574595, '', 4),
('6.jpg', 574595, '', 5),
('7.jpg', 2029291, '', 6),
('11.jpg', 2029291, '', 7),
('2.png', 0, '', 8);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `image` varchar(100) NOT NULL,
  `us_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`image`, `us_id`) VALUES
('Kim_.jpg', 2147483647),
('Kim_.jpeg', 2147483647),
('haikyuu images.jpeg', 2147483647),
('14768-light-red-background-design.jpg', 3000473),
('WhatsApp Image 2022-11-12 at 22.39.06.jpg', 1900923),
('Kim_.jpg', 0),
('8.png', 1900923),
('1.png', 1900923),
('5.png', 3000473),
('8.png', 3000473),
('16696272830801332498024810990913.jpg', 3000473),
('16696272830801332498024810990913.jpg', 3000473),
('VID_20221128_145310.mp4', 3000473),
('16696289936842857907654519416034.jpg', 3000473),
('14768-light-red-background-design.jpg', 2029291),
('WhatsApp Image 2022-11-22 at 20.33.07.jpg', 2029291),
('0h5vevgnhl471.jpg', 2029291),
('', 0),
('wp4996118.jpg', 0),
('daisuke kambe.jpg', 0),
('', 0),
('', 0),
('Kim_.jpg', 0),
('', 0),
('Kim_.jpeg', 0),
('', 0),
('Kim_.jpg', 0),
('solo levelling.jpg', 574595),
('0150a0c49795a55d57e49df73784639b-3505884051', 1096),
('Picsart_22-11-16_19-39-55-916.png', 5800211),
('1.jpeg', 8470753),
('13.jpg', 9073252),
('images (19).jpeg', 9882349),
('images (18).jpeg', 2813600),
('images (6).jpeg', 2029291),
('mainprof3.jpg', 5800211);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(1, 1221345544, 1413412614, 'heyo'),
(2, 1413412614, 1221345544, 'hey fam'),
(3, 1221345544, 1413412614, 'how you been'),
(4, 1221345548, 1413412614, 'hi'),
(5, 1413412614, 1221345548, 'hey'),
(6, 1221345548, 1413412614, '1'),
(7, 1413412614, 1221345548, 'wheres the ngo drive this week'),
(8, 1413412614, 1221345548, 'hey any update?'),
(9, 1413412614, 1221345548, 'hey'),
(10, 1221345548, 1413412614, 'hi'),
(11, 1435607887, 1221345548, 'hey'),
(12, 1413412614, 1221345548, 'hey bro'),
(13, 1221345548, 1413412614, 'hi'),
(14, 1413412614, 1221345548, 'hey '),
(15, 1221345548, 1413412614, 'hi'),
(16, 1413412614, 1221345548, 'hey im shashank'),
(17, 1221345548, 1413412614, 'hay'),
(18, 1221345544, 1221345548, 'hello'),
(19, 1413412614, 1221345548, 'hello '),
(20, 1435607887, 1221345548, 'hello'),
(21, 1413412614, 1221345548, 'heyo fam'),
(22, 1413412614, 1221345548, 'hey balraj'),
(23, 1221345548, 1413412614, 'hey'),
(24, 1413412614, 1221345548, 'hey today is beautiful'),
(25, 1413412614, 1221345548, 'hi'),
(26, 897413803, 1221345548, 'hey'),
(27, 1221345548, 897413803, 'hi'),
(28, 1221345548, 897413803, 'wassup'),
(29, 897413803, 1221345548, 'hey im shashaank'),
(30, 1221345548, 897413803, 'hey'),
(31, 1221345548, 897413803, 'hi'),
(32, 897413803, 1221345548, 'hey '),
(33, 897413803, 1221345548, 'heyo'),
(34, 1221345548, 897413803, 'hi'),
(35, 897413803, 1221345548, 'hey hows the day going'),
(36, 897413803, 1221345548, 'hey'),
(37, 897413803, 1221345548, 'hi'),
(38, 897413803, 1221345548, 'hi'),
(39, 897413803, 1221345548, 'hii'),
(40, 897413803, 1221345548, 'hello'),
(41, 897413803, 1221345548, 'heyo'),
(42, 897413803, 1221345548, 'heyo'),
(43, 897413803, 1221345548, 'hi'),
(44, 897413803, 1221345548, 'hi'),
(45, 897413803, 1221345548, 'hey'),
(46, 897413803, 1221345548, 'hi'),
(47, 1427592197, 1160084741, 'hey ');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `image` varchar(100) NOT NULL,
  `us_id` int(15) NOT NULL,
  `image_text` text NOT NULL,
  `posts_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`image`, `us_id`, `image_text`, `posts_id`) VALUES
('images (6).jpeg', 574595, '', 1),
('images (2).jpeg', 0, '', 3),
('images (3).jpeg', 574595, '', 4),
('images (5).jpeg', 0, '', 6),
('images (7).jpeg', 574595, '', 7),
('images (8).jpeg', 0, '', 8),
('images (19).jpeg', 574595, '', 9),
('images (20).jpeg', 574595, '', 10),
('images (14).jpeg', 0, '', 11),
('1.jpeg', 574595, '', 12),
('2.jpeg', 574595, '', 13),
('4.jpeg', 0, 'hey', 14),
('3.jpeg', 0, '', 16),
('brandnewlogo.png', 0, '', 17),
('6.png', 0, '', 21),
('5.jpeg', 0, '', 22),
('2.png', 0, '', 24),
('brandnewlogo.png', 574595, '', 29),
('Screenshot 2022-10-20 210126.png', 5800211, '', 30),
('5.jpg', 9073252, '', 35),
('4.jpg', 8470753, '', 37),
('8.jpg', 9882349, '', 38),
('11.jpg', 0, '', 39),
('6.jpg', 574595, '', 40),
('1.jpeg', 0, '', 42),
('', 280864, '', 43),
('1.jpeg', 280864, '', 44);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(11) NOT NULL,
  `unique_id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password1` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `unique_id`, `fname`, `email`, `password1`) VALUES
(0, 1221345548, 'Shashank Kurbet', 'shashank.kurbet123@gmail.com', 'pcce'),
(1096, 1435607887, 'NGO2', 'ngog@gmail.com', 'pcce'),
(574595, 1413412614, 'balraj', 'bal@gmail.com', 'pcce'),
(2029291, 1221345544, 'shreya', 'golu@gmail.com', 'pcce'),
(2813600, 1427592197, 'ngo5', 'ngo5@gmail.com', 'pcce'),
(5348924, 796831910, 'n', 'ngo6@gmail.com', 'pcce'),
(5800211, 897413803, 'Vivek Paste', 'vivek.eknath@gmail.com', 'pcce'),
(8470753, 1623677724, 'ngo2', 'ngo2@gmail.com', 'pcce'),
(9073252, 972401823, 'ngo3', 'ngo3@gmail.com', 'pcce'),
(9882349, 1411932807, 'ngo4', 'ngo4@gmail.com', 'pcce');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password1` varchar(50) NOT NULL,
  `password2` varchar(50) NOT NULL,
  `ngoid` int(11) NOT NULL,
  `aboutme` varchar(400) NOT NULL,
  `ttl` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `name`, `username`, `email`, `phone`, `address`, `password1`, `password2`, `ngoid`, `aboutme`, `ttl`) VALUES
(280864, 'a', 'a', 'a@gmail.com', 1234567890, 'a', 'pcce', 'pcce', 0, '', ''),
(5348924, 'n', 'ngo6', 'ngo6@gmail.com', 1111111112, 'goa', 'pcce', 'pcce', 1, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addrequest`
--
ALTER TABLE `addrequest`
  ADD PRIMARY KEY (`req_id`);

--
-- Indexes for table `explore`
--
ALTER TABLE `explore`
  ADD PRIMARY KEY (`posts_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`posts_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addrequest`
--
ALTER TABLE `addrequest`
  MODIFY `req_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `explore`
--
ALTER TABLE `explore`
  MODIFY `posts_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `posts_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9882350;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5348925;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
