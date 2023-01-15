-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2023 at 06:05 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abc_cinema`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(30) NOT NULL,
  `admin_password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_password`) VALUES
(1, 'admin@mail.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentID` int(11) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_mobile` varchar(10) NOT NULL,
  `user_seats` varchar(100) NOT NULL,
  `user_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentID`, `user_email`, `user_mobile`, `user_seats`, `user_amount`) VALUES
(1, 'dushan@mail.com', '0754211234', 'A2,A3', 2600),
(2, 'dushan@mail.com', '0754211234', 'A2,A3,A4', 3900);

-- --------------------------------------------------------

--
-- Table structure for table `premiering_movies`
--

CREATE TABLE `premiering_movies` (
  `movie_id` int(11) NOT NULL,
  `movie_name` varchar(50) NOT NULL,
  `movie_director` varchar(50) NOT NULL,
  `movie_category` varchar(50) NOT NULL,
  `movie_cast` varchar(100) NOT NULL,
  `movie_details` varchar(250) NOT NULL,
  `movie_banner` varchar(50) NOT NULL,
  `movie_poster` varchar(50) NOT NULL,
  `movie_link` varchar(150) NOT NULL,
  `movie_gold` int(11) NOT NULL,
  `movie_silver` int(11) NOT NULL,
  `movie_bronze` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `premiering_movies`
--

INSERT INTO `premiering_movies` (`movie_id`, `movie_name`, `movie_director`, `movie_category`, `movie_cast`, `movie_details`, `movie_banner`, `movie_poster`, `movie_link`, `movie_gold`, `movie_silver`, `movie_bronze`) VALUES
(4, 'movie1', 'director name', 'Action & Adventure,Drama ,Fantasy', 'name1, name2, name3, name4', 'in here summery and details about the movie', 'Screen Shot 2023-01-12 at 10.22.07.png', 'roll-call-3.jpg', 'link here', 3000, 2000, 1000),
(5, 'movie2', 'dsad', 'Comedy,Romantic', 'das, sada, gfdg', 'ada fdg awd', 'images.png', 'das.jpg', 'sadsad aw', 3000, 2300, 1500);

-- --------------------------------------------------------

--
-- Table structure for table `upcomming_movies`
--

CREATE TABLE `upcomming_movies` (
  `upmovie_id` int(11) NOT NULL,
  `upmovie_name` varchar(30) NOT NULL,
  `upmovie_director` varchar(50) NOT NULL,
  `upmovie_category` varchar(100) NOT NULL,
  `upmovie_cast` varchar(150) NOT NULL,
  `upmovie_details` varchar(250) NOT NULL,
  `upmovie_banner` varchar(50) NOT NULL,
  `upmovie_poster` varchar(50) NOT NULL,
  `upmovie_link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upcomming_movies`
--

INSERT INTO `upcomming_movies` (`upmovie_id`, `upmovie_name`, `upmovie_director`, `upmovie_category`, `upmovie_cast`, `upmovie_details`, `upmovie_banner`, `upmovie_poster`, `upmovie_link`) VALUES
(1, 'upmovie2', 'das asd', 'Horror,Drama ', 'name1, name2, name3, name4 , sasd', 'dasd a', 'Untitled design.png', 'wallpaper.png', 'gfdg'),
(2, 'fgsd', 'asd ad', 'Fantasy,Sci-Fi', 'lhjkuuy', 'uiuiyu', 'UI hackthon certificate.png', 'wallpaper.png', 'fdssd'),
(3, 'fdsf', 'dsfsdf', 'Action & Adventure,Comedy', 'fsdsf', 'sdfdssd', '#DevFestLK_badge.png', 'Dushan Senadheera.png', 'asdasd'),
(4, 'sad', 'asd', 'Action & Adventure,Comedy', 'das', 'sad', 'UI hackthon certificate.png', 'wallpaper.png', 'dsad');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_fname` varchar(30) NOT NULL,
  `user_lname` varchar(30) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_password` varchar(12) NOT NULL,
  `user_mobile` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_fname`, `user_lname`, `user_email`, `user_password`, `user_mobile`) VALUES
(2, 'Dushan', 'Senadheera', 'dushan@mail.com', 'dushan', '0754211234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentID`);

--
-- Indexes for table `premiering_movies`
--
ALTER TABLE `premiering_movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `upcomming_movies`
--
ALTER TABLE `upcomming_movies`
  ADD PRIMARY KEY (`upmovie_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `paymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `premiering_movies`
--
ALTER TABLE `premiering_movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `upcomming_movies`
--
ALTER TABLE `upcomming_movies`
  MODIFY `upmovie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
