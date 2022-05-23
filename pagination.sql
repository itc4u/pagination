-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 23, 2022 at 09:02 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pagination`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `date_of_birth` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `user_pic` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `gender`, `color`, `email`, `pass`, `date_of_birth`, `country`, `user_pic`, `address`) VALUES
(1, 'ahmed', 'male', 'red,blue', 'ahmed@gmail.com', '123456', '20/12/2000', 'Egypt', '', 'Alexandria'),
(2, 'ali', 'male', 'red,blue', 'ali@gmail.com', '123456', '20/12/2001', 'egypt', '', 'alex'),
(3, 'ali', 'male', 'red,blue', 'ali@gmail.com', '123456', '20/12/2001', 'egypt', '', 'alex'),
(4, 'ali', 'male', 'red,blue', 'ali@gmail.com', '123456', '20/12/2001', 'egypt', '', 'alex'),
(5, 'ali', 'male', 'red,blue', 'ali@gmail.com', '123456', '20/12/2001', 'egypt', '', 'alex'),
(6, 'ali', 'male', 'red,blue', 'ali@gmail.com', '123456', '20/12/2001', 'egypt', '', 'alex'),
(7, 'ali', 'male', 'red,blue', 'ali@gmail.com', '123456', '20/12/2001', 'egypt', '', 'alex'),
(8, 'ali', 'male', 'red,blue', 'ali@gmail.com', '123456', '20/12/2001', 'egypt', '', 'alex'),
(9, 'ali', 'male', 'red,blue', 'ali@gmail.com', '123456', '20/12/2001', 'egypt', '', 'alex'),
(10, 'ali', 'male', 'red,blue', 'ali@gmail.com', '123456', '20/12/2001', 'egypt', '', 'alex'),
(11, 'ali', 'male', 'red,blue', 'ali@gmail.com', '123456', '20/12/2001', 'egypt', '', 'alex'),
(12, 'ali', 'male', 'red,blue', 'ali@gmail.com', '123456', '20/12/2001', 'egypt', '', 'alex'),
(13, 'ali', 'male', 'red,blue', 'ali@gmail.com', '123456', '20/12/2001', 'egypt', '', 'alex'),
(14, 'ahmed', 'male', 'red,blue', 'ahmed@gmail.com', '123456', '20/12/2000', 'Egypt', '', 'Alexandria'),
(15, 'ahmed', 'male', 'red,blue', 'ahmed@gmail.com', '123456', '20/12/2000', 'Egypt', '', 'Alexandria'),
(16, 'ahmed', 'male', 'red,blue', 'ahmed@gmail.com', '123456', '20/12/2000', 'Egypt', '', 'Alexandria'),
(17, 'ahmed', 'male', 'red,blue', 'ahmed@gmail.com', '123456', '20/12/2000', 'Egypt', '', 'Alexandria'),
(18, 'ahmed', 'male', 'red,blue', 'ahmed@gmail.com', '123456', '20/12/2000', 'Egypt', '', 'Alexandria');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
