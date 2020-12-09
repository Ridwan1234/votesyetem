-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2020 at 06:43 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `type` varchar(5) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `type`, `created_on`) VALUES
(1, 'admin', '$2y$10$g4m/PfziRBxoM9fvwqiS9OgxAV29w0y8..XHruyEplYPxYnhZJ6bC', 'Admin', 'Admin', 'How-to-Make-Cartoon-Face2FAvatar-of-Yourself-for-FREE.jpg', '0', '2019-12-11'),
(2, 'RidwanullaHi', '$2y$10$g4m/PfziRBxoM9fvwqiS9OgxAV29w0y8..XHruyEplYPxYnhZJ6bC', 'Ridwan', 'Ope', '7qMiwNx.jpg', '1', '2020-09-01'),
(3, 'Excel', '$2y$10$g4m/PfziRBxoM9fvwqiS9OgxAV29w0y8..XHruyEplYPxYnhZJ6bC', 'Kayode', 'Oye', 'avatar.png', '2', '2020-09-01');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(18, 9, 'Nurudeen', 'Olalere', 'thanossmile.jpg', 'From CPT dept, 400Level'),
(19, 9, 'Ibrahim', 'AbdullaHi', 'AvengerIW4 (2).jpg', 'From CSS, 400 Level'),
(20, 11, 'James', 'Spader', 'ultron.jpg', 'Marvel Cinematic Universe'),
(21, 8, 'Cate', 'Blanchett', 'hela.jpg', 'Marvel Cinematic Universe'),
(22, 11, 'Michael B', 'Jordan', 'killmongr.jpg', 'Marvel Cinematic Universe'),
(23, 12, 'Hugo', 'Weaving', 'reddd.jpg', 'Marvel Cinematic Universe'),
(24, 12, 'Tom', 'Vaughan', 'ebony.jpg', 'Marvel Cinematic Universe'),
(25, 8, 'Mark', 'Doe', 'mask.jpg', 'Sample ...............'),
(26, 13, 'Bruno', 'Jr', 'Opi51c74ead38850.png', 'Sample ..'),
(27, 13, 'Adebisi', 'Belal', '7qMiwNx.jpg', 'yds'),
(28, 14, 'Ridwan', 'Odunlami', '', 'efr'),
(29, 14, 'Uthman', 'Damilare', '', 'dkhk'),
(30, 15, 'Jubril', 'Ishola', '', 'hi'),
(31, 16, 'Habeeb', 'Owolabi', '', 'jh'),
(32, 17, 'Nurudeen', 'Olalere', '', 'pro2'),
(33, 10, 'David', 'Ikwu', '', 'Am the best candidate'),
(34, 10, 'Vincent', 'Bangajiya', '', 'Vote for integrity'),
(35, 18, 'Moses', 'Simon', '', 'Best Computer'),
(36, 19, 'Shuaib', 'Abu', '', 'Sportman'),
(37, 20, 'Tobi', 'Gray', '', 'Socialize');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`) VALUES
(1, 'imt'),
(2, 'cpt'),
(3, 'css');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(8, 'Gen. Secretary', 1, 2),
(9, 'President', 1, 1),
(10, 'IMT SRA', 1, 12),
(11, 'Fin. Secretary', 1, 3),
(12, 'AGS', 1, 4),
(13, 'Welfare1', 1, 5),
(14, 'Welfare2', 1, 6),
(15, 'Treasurer', 1, 7),
(16, 'PRO1', 1, 8),
(17, 'PRO2', 1, 9),
(18, 'CPT SRA', 1, 13),
(19, 'DOSport', 1, 10),
(20, 'DOSocial', 1, 11);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `dept` varchar(5) NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `dept`, `photo`) VALUES
(17, 'Bib', '$2y$10$y1OqYFUHAbkCgWl/vTHoh.dcLyPInG0rXBiN3XXpT5fEBx215sf8.', 'Wilson', 'Cooper', '2', 'profile.jpg'),
(18, 'Ridwan', '$2y$10$oXCrardGxMcgb.NY5wPwue/EW3vxnqziVR7IeCbV0ixEBr0h.W6Wu', 'Ridwan', 'Odunlami', '1', '7qMiwNx.jpg'),
(19, 'Biba', '$2y$10$YtSRz4wADl7EY.T.EHWCqeg7vE5HHKBJj3Mirf3ja47TVV4J2EVsC', 'Biba', 'Belal', '2', ''),
(20, 'KWQr2fAd36iq4xP', '$2y$10$im3WRYlSFaZzGBdCB9XXseizb0GqT7fwcmTAMi1gdU6TgQuhfwhp2', 'AbdullaHi', 'Loke', '3', ''),
(21, 'voter', '$2y$10$W1VnaqspDlGTe7hH3ETWIeB18SBzSnTNQJn3DboTP8Nq0aVIlC2WG', 'voter', 'voter', '3', '');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `voters_dept` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voters_id`, `voters_dept`, `candidate_id`, `position_id`) VALUES
(476, 18, 1, 18, 9),
(477, 18, 1, 21, 8),
(478, 18, 1, 20, 11),
(479, 18, 1, 23, 12),
(480, 18, 1, 26, 13),
(481, 18, 1, 28, 14),
(482, 18, 1, 30, 15),
(483, 18, 1, 31, 16),
(484, 18, 1, 32, 17),
(485, 18, 1, 36, 19),
(486, 18, 1, 37, 20),
(487, 18, 1, 34, 10),
(488, 19, 2, 18, 9),
(489, 19, 2, 21, 8),
(490, 19, 2, 22, 11),
(491, 19, 2, 24, 12),
(492, 19, 2, 27, 13),
(493, 19, 2, 28, 14),
(494, 19, 2, 30, 15),
(495, 19, 2, 31, 16),
(496, 19, 2, 32, 17),
(497, 19, 2, 36, 19),
(498, 19, 2, 37, 20),
(499, 19, 2, 35, 18);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=500;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
