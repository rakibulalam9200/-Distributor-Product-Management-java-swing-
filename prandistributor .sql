-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2017 at 04:08 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prandistributor`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `categoryname` varchar(30) NOT NULL,
  `productid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `categoryname`, `productid`) VALUES
(1, 'Culinary', 0),
(2, 'Noodles', 0),
(3, 'Culinary', 0),
(4, 'Culinary', 0),
(5, 'Culinary', 0),
(6, 'Culinary', 0),
(7, 'Culinary', 0),
(8, 'Culinary', 0),
(9, 'Culinary', 0),
(10, 'Culinary', 0),
(11, 'Noodles', 0),
(12, 'Culinary', 0),
(13, 'Culinary', 0),
(14, 'Noodles', 0),
(15, 'Culinary', 0),
(16, 'Noodles', 0),
(17, 'Noodles', 0),
(18, 'Culinary', 0),
(19, 'Noodles', 0),
(20, 'Noodles', 0),
(21, 'Noodles', 0),
(22, 'Culinary', 0),
(23, 'Culinary', 0),
(24, 'Culinary', 0),
(25, 'Culinary', 0);

-- --------------------------------------------------------

--
-- Table structure for table `productdetails`
--

CREATE TABLE `productdetails` (
  `productid` int(11) NOT NULL,
  `productname` varchar(30) NOT NULL,
  `productprice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productdetails`
--

INSERT INTO `productdetails` (`productid`, `productname`, `productprice`) VALUES
(10, 'onion masla', 23.5),
(11, 'Noodles 45packs', 550),
(14, 'banana', 10),
(15, 'chily masala mini pack', 2.5),
(16, 'onnoin masala', 5),
(19, 'speicymasala', 40),
(20, 'chilli 15gm', 23),
(21, 'Turmeric Powder', 150),
(22, 'Chilli Powder', 120),
(23, 'Coriander Powder', 120),
(24, 'Cumin Seed Powder 200gm', 200),
(26, 'pan masla', 67.8),
(27, 'Chilli masala 20 pack', 23);

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `userid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`userid`, `username`, `password`) VALUES
(3, 'admin', '123'),
(4, 'rakib', 'ras');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`),
  ADD KEY `productid` (`productid`);

--
-- Indexes for table `productdetails`
--
ALTER TABLE `productdetails`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `productdetails`
--
ALTER TABLE `productdetails`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `userlogin`
--
ALTER TABLE `userlogin`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
