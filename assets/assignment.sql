-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 05, 2024 at 03:59 PM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: assignment
--

-- --------------------------------------------------------

--
-- Table structure for table employees
--

CREATE TABLE employees (
  id smallint(4) UNSIGNED NOT NULL,
  fname varchar(50) NOT NULL,
  lname varchar(75) NOT NULL,
  job_id int(12) UNSIGNED NOT NULL,
  image varchar(50) NOT NULL,
  thumb varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table employees
--

INSERT INTO employees (id, fname, lname, job_id, image, thumb) VALUES
(1, 'Mary', 'Smith', 1, 'person1.jpg', 'person1th.jpg'),
(2, 'Bob', 'Delgado', 2, 'person2.jpg', 'person2th.jpg'),
(3, 'Emily', 'Strange', 2, 'person3.jpg', 'person3th.jpg'),
(4, 'Greg', 'Murphy', 3, 'person4.jpg', 'person4th.jpg'),
(5, 'Wanda', 'Zymote', 3, 'person5.jpg', 'person5th.jpg');

-- --------------------------------------------------------

--
-- Table structure for table jobs
--

CREATE TABLE jobs (
  id int(12) UNSIGNED NOT NULL,
  title varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table jobs
--

INSERT INTO jobs (id, title) VALUES
(1, 'CEO'),
(2, 'Sales'),
(3, 'Marketing'),
(4, 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table employees
--
ALTER TABLE employees
  ADD PRIMARY KEY (id);

--
-- Indexes for table jobs
--
ALTER TABLE jobs
  ADD PRIMARY KEY (id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table employees
--
ALTER TABLE employees
  MODIFY id smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table jobs
--
ALTER TABLE jobs
  MODIFY id int(12) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
