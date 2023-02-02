-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2023 at 09:10 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

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
  `user_amount` int(11) NOT NULL,
  `date` varchar(25) NOT NULL,
  `time` varchar(10) NOT NULL,
  `movieName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentID`, `user_email`, `user_mobile`, `user_seats`, `user_amount`, `date`, `time`, `movieName`) VALUES
(33, 'dushan@mail.com', '0761231234', 'A2,A5,A10', 3900, '02 Jan', '9.00 AM', 'Avatar: The Way of Water'),
(38, 'dushan@mail.com', '0761231234', 'B2,B4', 2600, '04 Jan', '5.00 PM', 'Avatar: The Way of Water'),
(42, 'dushan@mail.com', '0761231234', 'A1,A2,A3,A4,A5', 6500, '04 Jan', '5.00 PM', 'Avatar: The Way of Water'),
(45, 'dushan@mail.com', '0761231234', 'A5', 1300, '04 Jan', '5.00 PM', 'Avatar: The Way of Water'),
(57, 'dushan@mail.com', '0761231234', 'A1', 1300, '02 Jan', '9.00 AM', 'Avatar: The Way of Water'),
(59, 'dushan@mail.com', '0761231234', 'A1,A2', 2600, '02 Jan', '9.00 AM', 'Avatar: The Way of Water'),
(60, 'dushan@mail.com', '0761231234', 'A5,A6', 2600, '02 Jan', '9.00 AM', 'Avatar: The Way of Water'),
(61, 'dushan@mail.com', '0761231234', 'A2,A3', 2600, '02 Jan', '9.00 AM', 'Avatar: The Way of Water'),
(63, 'dushan@mail.com', '0761231234', 'A1', 1300, '02 Jan', '9.00 AM', 'Avatar: The Way of Water'),
(64, 'dushan@mail.com', '0761231234', 'A1,A5,A10', 3900, '02 Jan', '9.00 AM', 'Avatar: The Way of Water'),
(65, 'dushan@mail.com', '0761231234', 'A1', 1300, '02 Jan', '9.00 AM', 'Avatar: The Way of Water'),
(66, 'dushan@mail.com', '0761231234', 'A1', 1300, '02 Jan', '9.00 AM', 'Avatar: The Way of Water'),
(67, 'dushan@mail.com', '0761231234', 'A9', 1300, '04 Jan', '2.00 PM', 'Avatar: The Way of Water'),
(68, 'dushan@mail.com', '0761231234', 'A9', 1300, '04 Jan', '2.00 PM', 'Avatar: The Way of Water');

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
  `movie_details` varchar(380) NOT NULL,
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
(6, 'Avatar: The Way of Water', 'James Cameron', 'Action & Adventure,Fantasy,Sci-Fi', 'Sam Worthington, Zoe Saldana, Sigourney Weaver', 'Jake Sully lives with his newfound family formed on the extrasolar moon Pandora. Once a familiar threat returns to finish what was previously started, Jake must work with Neytiri and the army of the Navi race to protect their home.', 'avatar.jpg', 'av2.jpg', 'https://www.youtube.com/embed/a8Gx8wiNbs8', 2600, 1800, 1200),
(7, 'Gajaman', 'Chanaka Perera', 'Action & Adventure,Comedy,Romantic', 'Suneth Chitrananda, Gaminda Priyaviraj ,Dasun Pathirana ,Yureni Noshika, Rashi Prabodha', 'The film revolves around Gajaman and his connection with Magodisthuma. Gajaman, the most trustworthy aide of Magodisthuma, is assigned to escort his daughter who is returning from higher studies in abroad.\r\n\r\nBut when Gajaman sees Padmi, the politicianâs daughter, he falls in love with her at first sight. But Gajaman is reluctant to express his love ', 'gajaman.jpg', 'Gajaman Release Date.jpg', 'https://www.youtube.com/embed/RlVEqs4-SPQ', 2000, 1500, 1200);

-- --------------------------------------------------------

--
-- Table structure for table `upcomming_movies`
--

CREATE TABLE `upcomming_movies` (
  `upmovie_id` int(11) NOT NULL,
  `upmovie_name` varchar(100) NOT NULL,
  `upmovie_director` varchar(50) NOT NULL,
  `upmovie_category` varchar(100) NOT NULL,
  `upmovie_cast` varchar(150) NOT NULL,
  `upmovie_details` varchar(380) NOT NULL,
  `upmovie_banner` varchar(50) NOT NULL,
  `upmovie_poster` varchar(50) NOT NULL,
  `upmovie_link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upcomming_movies`
--

INSERT INTO `upcomming_movies` (`upmovie_id`, `upmovie_name`, `upmovie_director`, `upmovie_category`, `upmovie_cast`, `upmovie_details`, `upmovie_banner`, `upmovie_poster`, `upmovie_link`) VALUES
(5, 'Jhon Wick 4', 'Chad Stahelski', 'Action & Adventure', 'Keanu Reeves, Donnie Yen,  Asia Kate Dillon, Scott Adkins', 'With the price on his head ever increasing, legendary hit man John Wick takes his fight against the High Table global as he seeks out the most powerful players in the underworld, from New York to Paris to Japan to Berlin.', 'jw.jpg', 'jw3-d33.webp', 'https://www.youtube.com/embed/qEVUtrk8_B4'),
(6, 'Transformers: Rise of the Beasts', 'Steven Caple Jr.', 'Action & Adventure,Sci-Fi', 'Anthony Ramos, Dominique Fishback, Luna Lauren VÃ©lez, Tobe Nwigwe ,Peter Cullen', 'During the 1990s, the Maximals, Predacons and Terrorcons join the existing battle on Earth between Autobots and Decepticons.', 'transformer.jpg', 'thumb-1920-1177341.jpg', '\"https://www.youtube.com/embed/WWWDskI46Js\"'),
(7, 'Shazam! Fury of the Gods', 'David F. Sandberg', 'Action & Adventure,Fantasy', 'Zachary Levi, Asher Angel, Jack Dylan Grazer ,Rachel Zegler, Adam Brody', 'Bestowed with the powers of the gods, Billy Batson and his fellow foster kids are still learning how to juggle teenage life with their \r\nsuperhero alter egos. When a vengeful trio of ancient gods arrive on Earth in search of the magic stolen from them long ago,\r\n Shazam and his allies get thrust into a battle for their superpowers, their lives, and the fate of the world.', 'shazam poster.jpg', 'shazam banner.jpg', 'https://www.youtube.com/embed/AIc671o9yCI');

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
(2, 'Dushan', 'Senadheera', 'dushan@mail.com', 'dushan123', '0761231234');

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
  MODIFY `paymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `premiering_movies`
--
ALTER TABLE `premiering_movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `upcomming_movies`
--
ALTER TABLE `upcomming_movies`
  MODIFY `upmovie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
