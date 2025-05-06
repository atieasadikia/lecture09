-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 06, 2025 at 05:34 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doki`
--

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `number` tinyint(4) DEFAULT NULL,
  `colour` varchar(7) DEFAULT NULL,
  `pet` text DEFAULT NULL,
  `teacher` varchar(50) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `naptime` time DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `dayrating` tinyint(4) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `submission_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `name`, `number`, `colour`, `pet`, `teacher`, `subject`, `genre`, `naptime`, `birthday`, `dayrating`, `comments`, `submission_time`) VALUES
(1, 'Atie', 7, '#1b0e0e', 'dog, cat', 'ati', 'atis_subject', 'comedy', '12:14:00', '2025-05-09', 6, 'ffgffghfghfgh', '2025-05-05 02:11:50'),
(2, 'Atie', 7, '#1b0e0e', 'dog, cat', 'ati', 'atis_subject', 'comedy', '12:14:00', '2025-05-09', 6, 'ffgffghfghfgh', '2025-05-05 02:21:03');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `name`, `description`, `picture`) VALUES
(1, 'Pop', 'Doki’s wildest gang member, sitting like he owns the place.', 'images/friends/crazyPop.jpeg'),
(2, 'Checkers', 'Checkers’s the boss. Pop’s just here for snacks.', 'images/friends/popCheckersYAY.jpeg'),
(3, 'Felix', 'When Santa needs class, he sends this guy.', 'images/friends/felix.jpg'),
(4, 'Mimi', 'Sweet on the outside, mafia on the inside', 'images/friends/Mimi.jpg'),
(5, 'Dessie', 'She’s not a cat, but don’t tell her that.', 'images/friends/Desssie.jpg'),
(6, 'Honey', 'polite paws, criminal mind.', 'images/friends/honey.jpg'),
(7, 'Toothless', 'trained in the art of vanishing.', 'images/friends/toothless.jpg'),
(8, 'Wilma', 'too handsome to be a cat, but accepted anyway.', 'images/friends/Wilma.jpg'),
(9, 'Rascal', 'Eyes closed, but always judging.', 'images/friends/rascal.jpg'),
(10, 'Sushi', 'Love\'s to be a victim.', 'images/friends/sushi.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
