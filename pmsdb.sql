-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 17, 2020 at 10:49 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcementtbl`
--

DROP TABLE IF EXISTS `announcementtbl`;
CREATE TABLE IF NOT EXISTS `announcementtbl` (
  `announcementId` int(11) NOT NULL AUTO_INCREMENT,
  `announcementTitle` varchar(60) NOT NULL,
  `announcementMessage` varchar(200) NOT NULL,
  `announcementTime` datetime NOT NULL,
  PRIMARY KEY (`announcementId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcementtbl`
--

INSERT INTO `announcementtbl` (`announcementId`, `announcementTitle`, `announcementMessage`, `announcementTime`) VALUES
(1, 'Holi', 'holi aave che so badha e rmvani che', '2020-03-09 03:12:10'),
(2, 'Diwali', 'diwali aave che so badha e rmvani che', '2020-03-10 10:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `clienttbl`
--

DROP TABLE IF EXISTS `clienttbl`;
CREATE TABLE IF NOT EXISTS `clienttbl` (
  `clientId` int(11) NOT NULL AUTO_INCREMENT,
  `clientFirstName` varchar(30) NOT NULL,
  `clientMiddleName` varchar(30) NOT NULL,
  `clientLastName` varchar(30) NOT NULL,
  `clientEmailId` varchar(40) NOT NULL,
  `clientContactNo` varchar(10) NOT NULL,
  `clientOrgName` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`clientId`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clienttbl`
--

INSERT INTO `clienttbl` (`clientId`, `clientFirstName`, `clientMiddleName`, `clientLastName`, `clientEmailId`, `clientContactNo`, `clientOrgName`) VALUES
(1, 'Prakash', 'Father', 'Shah', 'prakash@gmail.com', '9412321063', 'A&B'),
(2, 'Ruturaj', 'Father ', 'Patel', 'ruturaj@gmail.com', '9428712306', 'P&Q'),
(3, 'Wasim', 'Father', 'Shah', 'wasim@gmail.com', '9123006732', 'Muskan'),
(4, 'Himani', 'JayeshBhai', 'Shah', 'himanishah@gmail.com', '9428712444', 'A1'),
(5, 'Aman', 'Umeshbhai', 'Mistry', 'aman@gmail.com', '9023465123', 'Harmy');

-- --------------------------------------------------------

--
-- Table structure for table `emptbl`
--

DROP TABLE IF EXISTS `emptbl`;
CREATE TABLE IF NOT EXISTS `emptbl` (
  `empId` int(11) NOT NULL AUTO_INCREMENT,
  `empFirstName` varchar(30) NOT NULL,
  `empMiddleName` varchar(30) NOT NULL,
  `empLastName` varchar(30) NOT NULL,
  `empEmailId` varchar(40) NOT NULL,
  `empContactNo` varchar(10) NOT NULL,
  `empPassword` varchar(15) NOT NULL,
  `empProfile` varchar(300) NOT NULL,
  `empTypeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`empId`),
  KEY `empTypeId` (`empTypeId`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emptbl`
--

INSERT INTO `emptbl` (`empId`, `empFirstName`, `empMiddleName`, `empLastName`, `empEmailId`, `empContactNo`, `empPassword`, `empProfile`, `empTypeId`) VALUES
(1, 'Varshil', 'Falgunbhai', 'Shah', 'varshilshah44@gmail.com', '9428712306', 'varshilshah', 'image1', 2),
(2, 'Kavish', 'PrafulBhai', 'Shah', 'kavishshah@gmail.com', '9812074570', 'kavishshah', 'image2', 2),
(3, 'Anish', 'Father', 'shah', 'anishshah@gmail.com', '9323467002', 'anishshah', 'image3', 1),
(4, 'Dixit', 'Father', 'Jain', 'dixitjain@gmail.com', '9545123400', 'dixitjain', 'image4', 2),
(5, 'Vishal', 'Father', 'Rana', 'vishalrana@gmail.com', '9812303356', 'vishalrana', 'image5', 2),
(6, 'Akash', 'Father', 'Dubey', 'akashdubey@gmail.com', '9576309123', 'akashdubey', 'image6', 2),
(7, 'Keerthika', 'Father', 'nair', 'keerthikanair@gmail.com', '9458145632', 'keerthikanair', 'image7', 2),
(8, 'Priyal', 'Father', 'Shah', 'priyalshah@gmail.com', '9109276231', 'priyalshah', 'image8', 2),
(9, 'snehaa', 'Father', 'Tomarr', 'snehatomar@gmail.com', '9800211498', 'snehatomar', 'image10', 2);

-- --------------------------------------------------------

--
-- Table structure for table `emptypetbl`
--

DROP TABLE IF EXISTS `emptypetbl`;
CREATE TABLE IF NOT EXISTS `emptypetbl` (
  `empTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `empTypeName` varchar(30) NOT NULL,
  PRIMARY KEY (`empTypeId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emptypetbl`
--

INSERT INTO `emptypetbl` (`empTypeId`, `empTypeName`) VALUES
(1, 'ProjectManager'),
(2, 'TeamMember');

-- --------------------------------------------------------

--
-- Table structure for table `empworkareatbl`
--

DROP TABLE IF EXISTS `empworkareatbl`;
CREATE TABLE IF NOT EXISTS `empworkareatbl` (
  `empWorkAreaId` int(11) NOT NULL AUTO_INCREMENT,
  `workAreaId` int(11) DEFAULT NULL,
  `empId` int(11) DEFAULT NULL,
  PRIMARY KEY (`empWorkAreaId`),
  KEY `workAreaId` (`workAreaId`),
  KEY `empId` (`empId`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empworkareatbl`
--

INSERT INTO `empworkareatbl` (`empWorkAreaId`, `workAreaId`, `empId`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 1, 6),
(7, 2, 7),
(8, 3, 8),
(9, 4, 9),
(10, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `issuetbl`
--

DROP TABLE IF EXISTS `issuetbl`;
CREATE TABLE IF NOT EXISTS `issuetbl` (
  `issueId` int(11) NOT NULL AUTO_INCREMENT,
  `issueData` varchar(200) NOT NULL,
  `issueImg` varchar(150) DEFAULT NULL,
  `issueStatus` varchar(30) DEFAULT NULL,
  `empId` int(11) DEFAULT NULL,
  `issueTime` datetime NOT NULL,
  `projectId` int(11) DEFAULT NULL,
  PRIMARY KEY (`issueId`),
  KEY `empId` (`empId`),
  KEY `projectId` (`projectId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issuetbl`
--

INSERT INTO `issuetbl` (`issueId`, `issueData`, `issueImg`, `issueStatus`, `empId`, `issueTime`, `projectId`) VALUES
(1, 'aaaa', 'image1', 'process', 1, '2020-03-09 05:15:09', 1),
(2, 'qqqq', NULL, 'done', 2, '2020-03-18 07:16:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `moduletbl`
--

DROP TABLE IF EXISTS `moduletbl`;
CREATE TABLE IF NOT EXISTS `moduletbl` (
  `moduleId` int(11) NOT NULL AUTO_INCREMENT,
  `moduleName` varchar(30) NOT NULL,
  `projectId` int(11) DEFAULT NULL,
  `moduleTimeAllocated` varchar(10) NOT NULL,
  `moduleStartDate` date NOT NULL,
  `moduleEndDate` date NOT NULL,
  PRIMARY KEY (`moduleId`),
  KEY `projectId` (`projectId`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `moduletbl`
--

INSERT INTO `moduletbl` (`moduleId`, `moduleName`, `projectId`, `moduleTimeAllocated`, `moduleStartDate`, `moduleEndDate`) VALUES
(1, 'Login', 1, '2days', '2020-03-09', '2020-03-11'),
(2, 'Admin', 1, '15days', '2020-03-16', '2020-04-14'),
(3, 'Client', 1, '20days', '2020-03-01', '2020-03-19'),
(4, 'Login', 2, '10days', '2020-03-09', '2020-03-18'),
(5, 'Admin', 2, '20days', '2020-03-01', '2020-03-19'),
(6, 'Client', 2, '15days', '2020-03-10', '2020-03-24');

-- --------------------------------------------------------

--
-- Table structure for table `projecttbl`
--

DROP TABLE IF EXISTS `projecttbl`;
CREATE TABLE IF NOT EXISTS `projecttbl` (
  `projectId` int(11) NOT NULL AUTO_INCREMENT,
  `projectName` varchar(60) NOT NULL,
  `projectDescription` varchar(200) NOT NULL,
  `projectDomain` varchar(50) NOT NULL,
  `projectStartDate` date NOT NULL,
  `projectEndDate` date NOT NULL,
  `projectDeadline` date NOT NULL,
  `projectReceiveDate` date NOT NULL,
  `clientId` int(11) DEFAULT NULL,
  `projectStatus` varchar(15) NOT NULL,
  `projectFile` varchar(4000) NOT NULL,
  PRIMARY KEY (`projectId`),
  KEY `clientId` (`clientId`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projecttbl`
--

INSERT INTO `projecttbl` (`projectId`, `projectName`, `projectDescription`, `projectDomain`, `projectStartDate`, `projectEndDate`, `projectDeadline`, `projectReceiveDate`, `clientId`, `projectStatus`, `projectFile`) VALUES
(1, 'titan', 'Apple is aum, but Insiders report that the company is working on a car called “Titan,” slated to be road-ready in 2019.', 'WebApplication', '2020-03-09', '2020-03-24', '2020-03-31', '2020-03-01', 1, 'inprogress', 'file1'),
(2, 'Project Hanks', 'Earlier this year, when Verizon Communications was looking to take over AOL, they needed to keep the deal secret and came up with a code name. ', 'DesktopApplication', '2020-03-12', '2020-03-31', '2020-04-15', '2020-03-01', 2, 'inprogress', 'file2'),
(3, 'Kodiak', 'Unlike some other companies that have a codename and then change it to something else when it comes to market, in 2000, Apple developed its first version of Mac OS X with the codename Kodiak.', 'AndroidApplication', '2020-03-11', '2020-04-23', '2020-04-30', '2020-02-19', 3, 'completed', 'file3'),
(4, 'Code Talkers', 'This was the project name for the secret WWII program to recruit Cherokee, Creek, Choctow and other tribal members to transmit coded messages in Native American languages. ', 'WebDeveloper', '2020-03-24', '2020-05-14', '2020-05-28', '2020-02-01', 4, 'completed', 'file4'),
(5, 'Project Blue Book', 'If you don’t already know, then you probably don’t have the clearance. But for the sake of disclosure… ', 'DesktopApplication', '2020-03-10', '2020-03-31', '2020-04-14', '2020-02-20', 5, 'completed', 'file5'),
(7, 'ABC', 'Apple is aum, but Insiders report that the company is working on a car called “Titan,” slated to be road-ready in 2019.', 'WebApplication', '2020-03-10', '2020-03-27', '2020-03-25', '2020-03-05', 1, 'inprogress', 'file6'),
(8, 'robot', 'robot is aum, but Insiders report that the company is working on a car called “Titan,” slated to be road-ready in 2019.', 'WebApplication', '2020-03-08', '2020-03-23', '2020-03-30', '2020-02-29', 1, 'completed', 'file7');

-- --------------------------------------------------------

--
-- Table structure for table `submoduletbl`
--

DROP TABLE IF EXISTS `submoduletbl`;
CREATE TABLE IF NOT EXISTS `submoduletbl` (
  `subModuleId` int(11) NOT NULL AUTO_INCREMENT,
  `moduleId` int(11) DEFAULT NULL,
  `subModuleName` varchar(40) NOT NULL,
  `subModuleDescription` varchar(100) NOT NULL,
  `subModuleStartDate` date NOT NULL,
  `subModuleEndDate` date NOT NULL,
  `subModuleTimeAllocated` varchar(10) NOT NULL,
  `subModuleStatus` varchar(10) NOT NULL,
  `empId` int(11) DEFAULT NULL,
  PRIMARY KEY (`subModuleId`),
  KEY `moduleId` (`moduleId`),
  KEY `empId` (`empId`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submoduletbl`
--

INSERT INTO `submoduletbl` (`subModuleId`, `moduleId`, `subModuleName`, `subModuleDescription`, `subModuleStartDate`, `subModuleEndDate`, `subModuleTimeAllocated`, `subModuleStatus`, `empId`) VALUES
(1, 1, 'forgotpassword', 'aaaa', '2020-03-09', '2020-03-10', '1days', 'process', 1),
(2, 1, 'validation', 'bbbb', '2020-03-09', '2020-03-10', '1days', 'done', 2),
(3, 2, 'dashboard', 'qqqqqq', '2020-03-11', '2020-03-17', '6days', 'process', 4),
(4, 2, 'timetracking', 'fffffff', '2020-03-18', '2020-03-23', '5days', 'done', 5),
(5, 3, 'viewprofile', 'bbbb', '2020-03-24', '2020-03-31', '7days', 'done', 1),
(6, 3, 'viewport', 'gggggg', '2020-03-10', '2020-03-17', '7days', 'pending', 2);

-- --------------------------------------------------------

--
-- Table structure for table `teammembertbl`
--

DROP TABLE IF EXISTS `teammembertbl`;
CREATE TABLE IF NOT EXISTS `teammembertbl` (
  `teamMemberId` int(11) NOT NULL AUTO_INCREMENT,
  `teamId` int(11) DEFAULT NULL,
  `empId` int(11) DEFAULT NULL,
  `workAreaId` int(11) DEFAULT NULL,
  PRIMARY KEY (`teamMemberId`),
  KEY `teamId` (`teamId`),
  KEY `empId` (`empId`),
  KEY `empWorkAreaId` (`workAreaId`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teammembertbl`
--

INSERT INTO `teammembertbl` (`teamMemberId`, `teamId`, `empId`, `workAreaId`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 2),
(3, 1, 4, 1),
(4, 1, 5, 1),
(5, 2, 3, 3),
(6, 2, 2, 3),
(7, 2, 4, 2),
(8, 3, 4, 1),
(9, 3, 5, 2),
(10, 3, 6, 1),
(11, 3, 7, 1),
(12, 4, 7, 4),
(13, 4, 8, 4),
(14, 4, 5, 2),
(15, 5, 8, 5),
(16, 5, 9, 2),
(17, 5, 6, 5),
(18, 5, 1, 5),
(19, 6, 7, 1),
(20, 6, 1, 3),
(21, 6, 2, 2),
(22, 6, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `teamtbl`
--

DROP TABLE IF EXISTS `teamtbl`;
CREATE TABLE IF NOT EXISTS `teamtbl` (
  `teamId` int(11) NOT NULL AUTO_INCREMENT,
  `projectId` int(11) DEFAULT NULL,
  `teamSize` int(11) NOT NULL,
  `leaderId` int(11) DEFAULT NULL,
  PRIMARY KEY (`teamId`),
  KEY `projectId` (`projectId`),
  KEY `leaderId` (`leaderId`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teamtbl`
--

INSERT INTO `teamtbl` (`teamId`, `projectId`, `teamSize`, `leaderId`) VALUES
(1, 1, 4, 1),
(2, 2, 3, 2),
(3, 3, 4, 4),
(4, 4, 3, 5),
(5, 5, 4, 6),
(6, 7, 4, 7);

-- --------------------------------------------------------

--
-- Table structure for table `workareatbl`
--

DROP TABLE IF EXISTS `workareatbl`;
CREATE TABLE IF NOT EXISTS `workareatbl` (
  `workAreaId` int(11) NOT NULL AUTO_INCREMENT,
  `workAreaType` varchar(30) NOT NULL,
  PRIMARY KEY (`workAreaId`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workareatbl`
--

INSERT INTO `workareatbl` (`workAreaId`, `workAreaType`) VALUES
(1, 'WebDeveloper'),
(2, 'Tester'),
(3, 'SoftwareDeveloper'),
(4, 'DesktopDeveloper'),
(5, 'MobileDeveloper');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
