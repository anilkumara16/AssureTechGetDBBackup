-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql206.byetcluster.com
-- Generation Time: Oct 08, 2025 at 02:14 PM
-- Server version: 11.4.7-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_40080693_ATGETDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `ATGET_Academic_Year`
--

CREATE TABLE `ATGET_Academic_Year` (
  `Academic_Year` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ATGET_Academic_Year`
--

INSERT INTO `ATGET_Academic_Year` (`Academic_Year`) VALUES
('2025-26');

-- --------------------------------------------------------

--
-- Table structure for table `ATGET_Login_Creds`
--

CREATE TABLE `ATGET_Login_Creds` (
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ATGET_Login_Creds`
--

INSERT INTO `ATGET_Login_Creds` (`username`, `password`) VALUES
('admin', 'admin123'),
('anil', 'anil23'),
('nawaz', 'nawaz123'),
('vanaja', 'vanaja'),
('rashmi', 'rashmi');

-- --------------------------------------------------------

--
-- Table structure for table `ATGET_Non_Schools_Result_Table`
--

CREATE TABLE `ATGET_Non_Schools_Result_Table` (
  `Admission_No` varchar(20) NOT NULL,
  `Student_Name` varchar(100) NOT NULL,
  `Parent_Name` varchar(100) DEFAULT NULL,
  `Course_Name` varchar(100) NOT NULL,
  `Course_Duration_In_Months` int(11) DEFAULT NULL,
  `Course_Start_Date` varchar(20) DEFAULT NULL,
  `Course_End_Date` varchar(20) DEFAULT NULL,
  `Total_Marks_Obtained` int(11) DEFAULT NULL,
  `Marks_In_Grade` varchar(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ATGET_Schools_Result_Table`
--

CREATE TABLE `ATGET_Schools_Result_Table` (
  `Admission_No` varchar(20) NOT NULL,
  `Current_ClassOrStandard` varchar(20) NOT NULL,
  `Semister` varchar(10) NOT NULL,
  `Marks_Obtained_For_Attendance` int(11) DEFAULT NULL,
  `Marks_Obtained_In_Assesment` int(11) DEFAULT NULL,
  `Marks_Obtained_In_Theory_Exam` int(11) DEFAULT NULL,
  `Marks_Obtained_In_Lab_Exam` int(11) DEFAULT NULL,
  `Total_Marks_Obtained` int(11) DEFAULT NULL,
  `Marks_In_Grade` varchar(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ATGET_School_Names`
--

CREATE TABLE `ATGET_School_Names` (
  `School_Names` varchar(100) NOT NULL,
  `Campus_No` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ATGET_School_Names`
--

INSERT INTO `ATGET_School_Names` (`School_Names`, `Campus_No`) VALUES
('JJEM', 101),
('JJKM-H', 101),
('JJKM-P', 101),
('JD', 101),
('Sri Renuka', 101),
('Paramedical', 101),
('Nursing', 101),
('PU_Commerce', 101),
('PU_Arts', 101),
('PU_Education', 101),
('PU_Science', 101),
('SSVS', 201);

-- --------------------------------------------------------

--
-- Table structure for table `ATGET_School_Semisters`
--

CREATE TABLE `ATGET_School_Semisters` (
  `Semister_Name` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ATGET_School_Semisters`
--

INSERT INTO `ATGET_School_Semisters` (`Semister_Name`) VALUES
('Sem 1'),
('Sem 2');

-- --------------------------------------------------------

--
-- Table structure for table `ATGET_Students_Details`
--

CREATE TABLE `ATGET_Students_Details` (
  `Admission_No` varchar(14) NOT NULL,
  `Student_Name` varchar(100) NOT NULL,
  `Parent_Name` varchar(100) NOT NULL,
  `Contact_No` varchar(15) NOT NULL,
  `Student_Aadhar_No` varchar(12) NOT NULL,
  `Student_Address` text NOT NULL,
  `School_Name` varchar(100) DEFAULT NULL,
  `Admission_Year` varchar(10) DEFAULT NULL,
  `Course_Completion_Academic_Year` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ATGET_Login_Creds`
--
ALTER TABLE `ATGET_Login_Creds`
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `ATGET_Non_Schools_Result_Table`
--
ALTER TABLE `ATGET_Non_Schools_Result_Table`
  ADD PRIMARY KEY (`Admission_No`);

--
-- Indexes for table `ATGET_Schools_Result_Table`
--
ALTER TABLE `ATGET_Schools_Result_Table`
  ADD PRIMARY KEY (`Admission_No`,`Current_ClassOrStandard`,`Semister`);

--
-- Indexes for table `ATGET_School_Semisters`
--
ALTER TABLE `ATGET_School_Semisters`
  ADD PRIMARY KEY (`Semister_Name`);

--
-- Indexes for table `ATGET_Students_Details`
--
ALTER TABLE `ATGET_Students_Details`
  ADD PRIMARY KEY (`Admission_No`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
