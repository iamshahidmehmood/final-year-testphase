-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2021 at 07:48 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_art2`
--

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `ArtistID` varchar(12) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `USER_FNAME` varchar(25) NOT NULL,
  `USER_LNAME` varchar(25) NOT NULL,
  `USER_GENDER` varchar(25) NOT NULL,
  `USER_BDAY` varchar(20) NOT NULL,
  `USER_CONTACT` varchar(20) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `USER_TYPE` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`ArtistID`, `username`, `password`, `USER_FNAME`, `USER_LNAME`, `USER_GENDER`, `USER_BDAY`, `USER_CONTACT`, `user_email`, `USER_TYPE`) VALUES
('1', 'admin', 'admin', 'Shahid', 'Mahmood', 'Male', '1998-02-08', '03001234567', 'austinzunigapogi@gmail.com', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `art_product`
--

CREATE TABLE `art_product` (
  `ProductID` varchar(12) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Type` varchar(25) NOT NULL,
  `Price` varchar(25) NOT NULL,
  `image` varchar(25) NOT NULL,
  `ArtistID` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `art_product`
--

INSERT INTO `art_product` (`ProductID`, `Name`, `Type`, `Price`, `image`, `ArtistID`) VALUES
('21220', 'Nature Color', 'Framed Canvas Print', '120000', 'arts_products/art2.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `space_allocation`
--

CREATE TABLE `space_allocation` (
  `id` int(12) NOT NULL,
  `artistid` varchar(25) NOT NULL,
  `fdate` varchar(25) NOT NULL,
  `tdate` varchar(25) NOT NULL,
  `no_products` varchar(25) NOT NULL,
  `Charges` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `space_allocation`
--

INSERT INTO `space_allocation` (`id`, `artistid`, `fdate`, `tdate`, `no_products`, `Charges`) VALUES
(1, '', '2021-02-01', '2021-02-20', '2', '152000'),
(2, '', '2021-02-13', '2021-02-14', '2', '20000'),
(3, '1', '2021-02-13', '2021-02-21', '5', '185000'),
(4, '1', '2021-02-13', '2021-02-19', '2', '54000'),
(5, '1', '2021-02-09', '2021-02-23', '10', '570000'),
(6, '1', '2021-02-18', '2021-02-21', '12', '216000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`ArtistID`);

--
-- Indexes for table `art_product`
--
ALTER TABLE `art_product`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `ArtistID` (`ArtistID`);

--
-- Indexes for table `space_allocation`
--
ALTER TABLE `space_allocation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `space_allocation`
--
ALTER TABLE `space_allocation`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `art_product`
--
ALTER TABLE `art_product`
  ADD CONSTRAINT `art_product_ibfk_1` FOREIGN KEY (`ArtistID`) REFERENCES `artist` (`ArtistID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
