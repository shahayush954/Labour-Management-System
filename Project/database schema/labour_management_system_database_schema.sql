-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2018 at 03:47 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oose_miniproject_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `post` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `profile_completed` int(10) NOT NULL,
  `contract` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=hp8;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`fname`, `lname`, `post`, `city`, `state`, `profile_completed`, `contract`, `status`) VALUES
('Mia ', 'Brown', 'Data Analyst', 'Mumbai', 'Maharashtra', 64, 'Full Time', 'Featured'),
('Tyrone', 'Steans', 'Java Developer', 'Pune', 'Maharashtra', 56, 'Part Time', 'Most Recent'),
('Estelle ', 'Howard', 'PR Manager', 'Chennai', 'Tamil Nadu', 76, 'One Time', 'Urgent'),
('Nan', 'Singh', 'Data Mining', 'New Delhi', 'Delhi', 87, 'Full Time', 'Featured'),
('Ann', 'Smith', 'Python Developer', 'Mumbai', 'Maharashtra', 78, 'Part Time', 'Most Recent'),
('Brandon', 'LeBlanc', 'Data Analyst', 'Pune', 'Maharashtra', 45, 'One Time', 'Urgent'),
('Sean', 'Quinn', 'Java Developer', 'Chennai', 'Tamil Nadu', 92, 'Full Time', 'Featured'),
('Amy', 'Foster', 'PR Manager', 'New Delhi', 'Delhi', 75, 'Part Time', 'Most Recent'),
('Janet', 'King', 'Data Mining', 'Mumbai', 'Maharashtra', 65, 'One Time', 'Urgent'),
('Taisha', 'Goble', 'Python Developer', 'Pune', 'Maharashtra', 76, 'Full Time', 'Featured'),
('Jayne', 'Horton', 'Data Analyst', 'Chennai', 'Tamil Nadu', 56, 'Part Time', 'Most Recent'),
('Noelle', 'Johnson', 'Java Developer', 'New Delhi', 'Delhi', 64, 'One Time', 'Urgent'),
('Thomas', 'Murray', 'PR Manager', 'Mumbai', 'Maharashtra', 87, 'Full Time', 'Featured'),
('Randall', 'Pearson', 'Data Mining', 'Pune', 'Maharashtra', 87, 'Full Time', 'Featured'),
('Thelma', 'Petrowsky', 'Python Developer', 'Chennai', 'Tamil Nadu', 93, 'Part Time', 'Most Recent'),
('Ivan', 'Rogers', 'Data Analyst', 'New Delhi', 'Delhi', 76, 'One Time', 'Urgent'),
('Jason', 'Salter', 'Java Developer', 'Mumbai', 'Maharashtra', 64, 'Full Time', 'Featured'),
('Kramer', 'Simard', 'PR Manager', 'Pune', 'Maharashtra', 78, 'Part Time', 'Most Recent'),
('Jason', 'Foss', 'Data Mining', 'Chennai', 'Tamil Nadu', 87, 'One Time', 'Urgent'),
('Peter', 'Manroe', 'Python Developer', 'New Delhi', 'Delhi', 56, 'Full Time', 'Featured'),
('Ayush', 'Shah', 'Web Developer', 'Dombivali', 'Maharashtra', 75, 'Full Time', 'Urgent'),
('Ayush', 'Shah', 'Teacher', 'Mumbai', 'Maharashtra', 75, 'Part Time', 'Urgent'),
('Ayush', 'Shah', 'Teacher', 'Mumbai', 'Maharashtra', 75, 'Part Time', 'Urgent');

-- --------------------------------------------------------

--
-- Table structure for table `company_login_data`
--

CREATE TABLE `company_login_data` (
  `username` int(20) NOT NULL,
  `password` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=hp8;

--
-- Dumping data for table `company_login_data`
--

INSERT INTO `company_login_data` (`username`, `password`) VALUES
(0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `company_sign_up_data`
--

CREATE TABLE `company_sign_up_data` (
  `username` varchar(20) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `vat_no` int(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `website` varchar(50) NOT NULL,
  `address_line` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=hp8;

--
-- Dumping data for table `company_sign_up_data`
--

INSERT INTO `company_sign_up_data` (`username`, `company_name`, `email`, `vat_no`, `password`, `website`, `address_line`) VALUES
('shahayush954', 'GameHubZ', 'shahayush954@gmail.com', 123456, 'ayush123', 'gamehubz.com', 'A/33, Shree Siddhi Vinayak CHS,');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `post` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `apply_date` date NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=hp8;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`post`, `city`, `state`, `company_name`, `apply_date`, `status`) VALUES
('Data Analyst', 'Mumbai', 'Maharashtra', 'Aditya Technologies', '2018-11-01', 'Featured'),
('PR Manager', 'Chennai', 'Tamil Nadu', 'Atari Informatics', '2018-11-01', 'Urgent'),
('Data Mining', 'New Delhi', 'Delhi', 'Baan Info Systems', '2018-11-01', 'Featured'),
('Python Developer', 'Mumbai', 'Maharashtra', 'HCL Infosystems', '2018-11-01', 'Most Recent'),
('Data Analyst', 'Pune', 'Maharashtra', 'Hexaware Technologies', '2018-11-01', 'Urgent'),
('Java Developer', 'Chennai', 'Tamil Nadu', 'Inflex Solutions', '2018-11-01', 'Featured'),
('PR Manager', 'New Delhi', 'Delhi', 'Igate Global Solutions', '2018-11-01', 'Most Recent'),
('Data Mining', 'Mumbai', 'Maharashtra', 'Infosys Technologies', '2018-11-01', 'Urgent'),
('Python Developer', 'Pune', 'Maharashtra', 'Larsen and Toubro', '2018-11-01', 'Featured'),
('Data Analyst', 'Chennai', 'Tamil Nadu', 'Mastek Limited', '2018-11-01', 'Most Recent'),
('Java Developer', 'New Delhi', 'Delhi', 'IBM India', '2018-11-01', 'Urgent'),
('PR Manager', 'Mumbai', 'Maharashtra', 'Aftek', '2018-11-01', 'Featured'),
('Data Mining', 'Pune', 'Maharashtra', 'Nucleus Software', '2018-11-01', 'Most Recent'),
('Python Developer', 'Chennai', 'Tamil Nadu', 'CyberTech Systems', '2018-11-01', 'Urgent'),
('Data Analyst', 'New Delhi', 'Delhi', 'Eonour Technologies', '2018-11-01', 'Featured'),
('Java Developer', 'Mumbai', 'Maharashtra', 'Patni Computer Systems', '2018-11-01', 'Most Recent'),
('PR Manager', 'Pune', 'Maharashtra', 'Polaris Software Lab', '2018-11-01', 'Urgent'),
('Data Mining', 'Chennai', 'Tamil Nadu', 'Cerulean Information Tech', '2018-11-01', 'Featured'),
('Python Developer', 'New Delhi', 'Delhi', 'CMC Limited', '2018-11-01', 'Most Recent'),
('Java Developer', 'Pune', 'Maharashtra', 'Asset Infotech', '2018-11-01', 'Most Recent'),
('Database Administrator', 'Dombivali', 'Maharashtra', 'My Company', '2018-10-16', 'Featured'),
('Teacher', 'Vidyavihar', 'Maharashtra', 'Somaiya', '2018-10-30', 'Featured'),
('Teacher', 'Vidyavihar', 'Maharashtra', 'Somaiya', '2018-10-31', 'Featured');

-- --------------------------------------------------------

--
-- Table structure for table `logindata`
--

CREATE TABLE `logindata` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=hp8;

--
-- Dumping data for table `logindata`
--

INSERT INTO `logindata` (`username`, `password`) VALUES
('shahayush954', 'ayush123'),
('ayush.shah', 'ayush123'),
('', ''),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `sign_up_data`
--

CREATE TABLE `sign_up_data` (
  `username` varchar(20) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL,
  `imagepath` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=hp8;

--
-- Dumping data for table `sign_up_data`
--

INSERT INTO `sign_up_data` (`username`, `firstname`, `surname`, `email`, `password`, `imagepath`) VALUES
('shahayush954', 'Ayush', 'Shah', 'shahayush954@gmail.com', 'ayush123', 'ayushphoto.jpg'),
('ayush.shah', 'Ayush', 'Shah', 'ayush.shah@somaiya.edu', 'ayush123', 'ayushphoto.jpg'),
('', '', '', '', '', ''),
('', '', '', '', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
