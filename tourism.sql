-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2020 at 02:25 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourism`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookfood`
--

CREATE TABLE `bookfood` (
  `type` varchar(45) NOT NULL,
  `foodName` varchar(45) NOT NULL,
  `foodCost` varchar(45) NOT NULL,
  `quantity` varchar(45) NOT NULL,
  `totalCost` int(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `packagename` varchar(45) NOT NULL,
  `place` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookfood`
--

INSERT INTO `bookfood` (`type`, `foodName`, `foodCost`, `quantity`, `totalCost`, `email`, `packagename`, `place`) VALUES
('Non-Veg', 'Butter Chicken', '15', '3', 45, 'luffy', 'green building', 'missori'),
('Non-Veg', 'Chicken Biryani', '10', '1', 10, 'luffy', 'green building', 'missori'),
('Non-Veg', 'Chicken Biryani', '10', '2', 20, 'nikesh@gmail.com', 'green building', 'washington'),
('Non-Veg', 'sdfsf', '33', '1', 33, 'sai@gmail.com', 'dfdf', 'fdfdf'),
('Non-Veg', 'Paneer Tikka', '250', '1', 250, 'aman@gmail.com', 'Goa Tour', 'Goa');

-- --------------------------------------------------------

--
-- Table structure for table `bookpackage`
--

CREATE TABLE `bookpackage` (
  `id` int(11) NOT NULL,
  `packagename` varchar(45) DEFAULT NULL,
  `place` varchar(45) DEFAULT NULL,
  `packageCost` varchar(45) DEFAULT NULL,
  `days` varchar(45) DEFAULT NULL,
  `noofPersons` varchar(45) DEFAULT NULL,
  `totalcost` int(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookpackage`
--

INSERT INTO `bookpackage` (`id`, `packagename`, `place`, `packageCost`, `days`, `noofPersons`, `totalcost`, `email`) VALUES
(1, 'dfdf', 'fdfdf', '432434', '22', '1', 432434, 'sai@gmail.com'),
(2, 'Goa Tour', 'Goa', '10000', '3', '1', 10000, 'aman@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `bookroom`
--

CREATE TABLE `bookroom` (
  `hotelName` varchar(45) NOT NULL,
  `roomType` varchar(45) NOT NULL,
  `roomSize` varchar(45) NOT NULL,
  `roomCost` int(45) NOT NULL,
  `roomDate` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `packagename` varchar(45) NOT NULL,
  `place` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookroom`
--

INSERT INTO `bookroom` (`hotelName`, `roomType`, `roomSize`, `roomCost`, `roomDate`, `email`, `packagename`, `place`) VALUES
('swagath', 'AC', 'Single', 100, '2017-02-23', 'luffy', 'green building', 'missori'),
('Taj', 'AC', 'Double', 300, '2017-02-15', 'nikesh2804@gmail.com', 'Snow Time', 'NC'),
('Taj', 'AC', 'Double', 300, '2017-02-16', 'nikesh2804@gmail.com', 'Snow Time', 'NC'),
('Taj', 'AC', 'Single', 56565, '2020-03-18', 'sai@gmail.com', 'dfdf', 'fdfdf'),
('Taj', 'AC', 'Single', 56565, '2020-03-18', 'aman@gmail.com', 'Goa Tour', 'Goa');

-- --------------------------------------------------------

--
-- Table structure for table `booktransport`
--

CREATE TABLE `booktransport` (
  `transportType` varchar(45) NOT NULL,
  `vehicleType` varchar(45) NOT NULL,
  `vehicleName` varchar(45) NOT NULL,
  `vehicleCost` int(45) NOT NULL,
  `vehicleDate` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `packagename` varchar(45) NOT NULL,
  `place` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booktransport`
--

INSERT INTO `booktransport` (`transportType`, `vehicleType`, `vehicleName`, `vehicleCost`, `vehicleDate`, `email`, `packagename`, `place`) VALUES
('Car', 'AC', 'sonata sport', 300, '2017-02-17', 'nikesh2804@gmail.com', 'Snow Time', 'NC'),
('Car', 'AC', 'sonata sport', 300, '2017-02-22', 'luffy', 'green building', 'missori');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `packagename` varchar(45) NOT NULL,
  `discount` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`packagename`, `discount`) VALUES
('dfdf', '30'),
('Goa Tour', '20%');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `foodtype` varchar(45) NOT NULL,
  `foodname` varchar(45) NOT NULL,
  `foodcost` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`foodtype`, `foodname`, `foodcost`) VALUES
('Non-Veg', 'Paneer Tikka', '250');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `hotelName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hotelName`) VALUES
('swagath'),
('taj krishna'),
('Taj');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(4) NOT NULL,
  `packagename` varchar(45) NOT NULL,
  `place` varchar(45) NOT NULL,
  `cost` varchar(45) NOT NULL,
  `days` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `packagename`, `place`, `cost`, `days`) VALUES
(8, 'Goa Tour', 'Goa', '10000', '3');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `packagename` varchar(45) NOT NULL,
  `place` varchar(45) NOT NULL,
  `cost` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `cardName` varchar(45) NOT NULL,
  `cardNumber` varchar(45) NOT NULL,
  `cvv` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`packagename`, `place`, `cost`, `email`, `cardName`, `cardNumber`, `cvv`) VALUES
('green building', 'washington', '27', 'nikesh@gmail.com', 'nikesh', '1234567891523654', '456'),
('green building', 'missori', '21', 'nikesh@gmail.com', 'ashu', '234335666677', '543'),
('dfdf', 'fdfdf', '293420', 'sai@gmail.com', 'fdfgh', '434', '503');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`name`, `email`, `password`, `mobile`) VALUES
('nikesh', 'nikesh@gmail.com', 'sai', '1234567890'),
('sai', 'sai@gmail.com', 'sai', '7894561230'),
('nikesh', 'nikesh2804@gmail.com', '8121343348', '8121343348'),
('luffy', 'luffy', 'luffy', '8794561230'),
('Aman', 'aman@gmail.com', 'aman', '9887654321');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `hotelName` varchar(45) NOT NULL,
  `roomType` varchar(45) NOT NULL,
  `roomSize` varchar(45) NOT NULL,
  `roomCost` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`hotelName`, `roomType`, `roomSize`, `roomCost`) VALUES
('Taj', 'AC', 'Single', '56565');

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `transportType` varchar(45) NOT NULL,
  `vehicleType` varchar(45) NOT NULL,
  `vehicleName` varchar(45) NOT NULL,
  `vehicleCost` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`transportType`, `vehicleType`, `vehicleName`, `vehicleCost`) VALUES
('Bus', 'AC', 'Bus', '4545');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookpackage`
--
ALTER TABLE `bookpackage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookpackage`
--
ALTER TABLE `bookpackage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
