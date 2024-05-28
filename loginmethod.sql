-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2024 at 11:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loginmethod`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) NOT NULL,
  `Pass_word` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `birthday` date DEFAULT NULL,
  `sex` varchar(255) NOT NULL,
  `user_profile_picture` varchar(255) NOT NULL,
  `account_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Username`, `user_email`, `Pass_word`, `firstname`, `lastname`, `birthday`, `sex`, `user_profile_picture`, `account_type`) VALUES
(95242, 'James01', 'jeid@gmail.com', '$2y$10$hFMuM2nHejWTrfprGThQBOdhsZrNcX67mXIKXIzyxZecyRR63wQDi', 'James', 'Licauco', '2002-06-07', 'Male', 'uploads/james.jpg', 0),
(95244, 'Sunoo', 'Sunoo@gmail.com', '$2y$10$aicUk92DI60Qi.qIbq0ZruTO4gynX5igGdoWhq0eRj4bSikK/h/4q', 'Sunoo', 'Park', '0003-06-23', 'Male', 'uploads/sunoo.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `user_add_id` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `user_add_street` varchar(255) DEFAULT NULL,
  `user_add_barangay` varchar(255) DEFAULT NULL,
  `user_add_city` varchar(255) DEFAULT NULL,
  `user_add_province` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`user_add_id`, `UserID`, `user_add_street`, `user_add_barangay`, `user_add_city`, `user_add_province`) VALUES
(22, 95242, 'oasjdnd', '', 'Lopez', 'Region IV-A (CALABARZON)'),
(24, 95244, 'redsnf', 'San Narciso', 'San Manuel', 'Region III (Central Luzon)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`user_add_id`),
  ADD KEY `UserID` (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95245;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `user_add_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_address`
--
ALTER TABLE `user_address`
  ADD CONSTRAINT `user_address_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
