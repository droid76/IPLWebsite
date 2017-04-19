-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2017 at 07:58 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ipl`
--

-- --------------------------------------------------------

--
-- Table structure for table `batsmen`
--
<<<<<<< HEAD

CREATE TABLE `batsmen` (
  `Pos` varchar(3) DEFAULT NULL,
  `Player` varchar(21) DEFAULT NULL,
  `Mat` varchar(3) DEFAULT NULL,
  `Inns` varchar(4) DEFAULT NULL,
  `NO` varchar(2) DEFAULT NULL,
  `Runs` varchar(4) DEFAULT NULL,
  `HS` varchar(3) DEFAULT NULL,
  `Avg` varchar(4) DEFAULT NULL,
  `BF` varchar(4) DEFAULT NULL,
  `SR` varchar(5) DEFAULT NULL,
  `Hundreds` varchar(8) DEFAULT NULL,
  `Fifties` varchar(7) DEFAULT NULL,
  `Fours` varchar(5) DEFAULT NULL,
  `Sixes` varchar(5) DEFAULT NULL,
  `Team` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
=======
CREATE DATABASE IPL;
USE IPL;
CREATE TABLE IF NOT EXISTS `batsmen` (
  `name` varchar(30) NOT NULL,
  `matches` int(4) NOT NULL,
  `innings` int(4) NOT NULL,
  `notouts` int(3) NOT NULL,
  `runs` int(5) NOT NULL,
  `highest` int(3) NOT NULL,
  `average` float NOT NULL,
  `bf` int(5) NOT NULL,
  `strikerate` float NOT NULL,
  `hundreds` int(3) NOT NULL,
  `fifties` int(3) NOT NULL,
  `fours` int(4) NOT NULL,
  `sixes` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
>>>>>>> 6405fd1ba3d4da2b489dc8fac622feb2a2c78691

--
-- Dumping data for table `batsmen`
--

INSERT INTO `batsmen` (`Pos`, `Player`, `Mat`, `Inns`, `NO`, `Runs`, `HS`, `Avg`, `BF`, `SR`, `Hundreds`, `Fifties`, `Fours`, `Sixes`, `Team`) VALUES
('1', 'Virat Kohli', '139', '131', '23', '4110', '113', '38.0', '3151', '130.4', '4', '26', '359', '149', 'Rcb'),
('2', 'Suresh Raina', '147', '143', '21', '4098', '100', '33.5', '2957', '138.5', '1', '28', '360', '160', 'Gj'),
('3', 'Rohit Sharma', '142', '138', '23', '3874', '109', '33.6', '2941', '131.7', '1', '29', '323', '163', 'Mi'),
('4', 'Gautam Gambhir', '132', '131', '13', '3634', '93', '30.7', '2927', '124.1', '0', '31', '422', '51', 'Kkr'),
('5', 'Chris Gayle', '92', '91', '12', '3426', '175', '43.3', '2235', '153.2', '5', '20', '279', '251', 'Rcb'),
('6', 'Robin Uthappa', '135', '130', '15', '3390', '83', '29.4', '2635', '128.6', '0', '17', '341', '104', 'Kkr'),
('7', 'David Warner', '100', '100', '12', '3373', '109', '38.3', '2372', '142.2', '2', '32', '338', '134', 'Srh'),
('8', 'MS Dhoni', '143', '128', '45', '3271', '70', '39.4', '2354', '138.9', '0', '16', '236', '140', 'Rps'),
('9', 'AB de Villiers', '120', '109', '26', '3257', '133', '39.2', '2181', '149.3', '3', '21', '275', '140', 'Rcb'),
('10', 'Shikhar Dhawan', '113', '112', '16', '3082', '95', '32.1', '2546', '121.0', '0', '25', '348', '62', 'Srh'),
('11', 'Yusuf Pathan', '134', '122', '32', '2761', '100', '30.6', '1881', '146.7', '1', '12', '230', '140', 'Kkr'),
('12', 'Ajinkya Rahane', '95', '89', '13', '2675', '103', '35.1', '2212', '120.9', '1', '23', '285', '51', 'Rps'),
('13', 'Shane Watson', '94', '91', '13', '2551', '104', '32.7', '1813', '140.7', '2', '14', '251', '121', 'Rcb'),
('14', 'Dinesh Karthik', '138', '121', '14', '2542', '86', '23.7', '2046', '124.2', '0', '12', '256', '60', 'Gj'),
('15', 'Murali Vijay', '100', '100', '5', '2511', '127', '26.4', '2035', '123.3', '2', '13', '237', '89', 'Kxi'),
('16', 'Brendon McCullum', '92', '92', '5', '2434', '158', '27.9', '1881', '129.3', '2', '11', '248', '106', 'Gj'),
('17', 'Yuvraj Singh', '108', '105', '13', '2335', '83', '25.3', '1795', '130.0', '0', '10', '174', '133', 'Srh'),
('18', 'Ambati Rayudu', '109', '102', '18', '2325', '81', '27.6', '1837', '126.5', '0', '13', '198', '76', 'Mi'),
('19', 'Shaun Marsh', '62', '61', '7', '2213', '115', '40.9', '1672', '132.3', '1', '18', '230', '73', 'Kxi'),
('20', 'JP Duminy', '77', '73', '23', '1993', '78', '39.8', '1596', '124.8', '0', '14', '123', '78', 'Dd'),
('21', 'Kieron Pollard', '106', '97', '29', '1958', '78', '28.7', '1323', '147.9', '0', '9', '131', '125', 'Mi'),
('22', 'Parthiv Patel', '103', '101', '10', '1927', '81', '21.1', '1688', '114.1', '0', '8', '248', '27', 'Mi'),
('23', 'Dwayne Smith', '64', '63', '3', '1864', '87', '31.0', '1411', '132.1', '0', '15', '195', '92', 'Gj'),
('24', 'Manish Pandey', '89', '83', '13', '1819', '114', '25.9', '1536', '118.4', '1', '7', '169', '52', 'Kkr'),
('25', 'Ravindra Jadeja', '126', '99', '31', '1574', '48', '23.1', '1297', '121.3', '0', '0', '112', '53', 'Gj'),
('26', 'David Miller', '61', '60', '19', '1480', '101', '36.0', '1025', '144.3', '1', '8', '100', '74', 'Kxi'),
('27', 'Naman Ojha', '98', '88', '18', '1474', '94', '21.0', '1244', '118.4', '0', '6', '119', '76', 'Srh'),
('28', 'Subramaniam Badrinath', '95', '67', '20', '1441', '71', '30.6', '1212', '118.8', '0', '11', '154', '28', 'Rcb'),
('29', 'Manoj Tiwary', '78', '68', '22', '1324', '75', '28.7', '1169', '113.2', '0', '5', '121', '28', 'Rps'),
('30', 'Wriddhiman Saha', '90', '69', '18', '1323', '115', '25.9', '1004', '131.7', '1', '5', '110', '49', 'Kxi'),
('31', 'Aaron Finch', '52', '51', '5', '1304', '88', '28.3', '1049', '124.3', '0', '11', '145', '40', 'Gj'),
('32', 'Francois du Plessis', '51', '45', '3', '1287', '73', '30.6', '1005', '128.0', '0', '8', '109', '38', 'Rps'),
('33', 'Dwayne Bravo', '106', '83', '28', '1262', '70', '22.9', '999', '126.3', '0', '4', '102', '48', 'Gj'),
('34', 'Steve Smith', '54', '47', '13', '1231', '101', '36.2', '906', '135.8', '1', '2', '112', '33', 'Rps'),
('35', 'Saurabh Tiwary', '80', '63', '19', '1224', '61', '27.8', '1024', '119.5', '0', '6', '84', '45', 'Mi'),
('36', 'Sanju Samson', '52', '48', '6', '1040', '76', '24.7', '873', '119.1', '0', '5', '80', '38', 'Dd'),
('37', 'Lendl Simmons', '22', '22', '2', '942', '100', '47.1', '740', '127.2', '1', '9', '99', '36', 'Mi'),
('38', 'Mandeep Singh', '59', '49', '4', '924', '77', '20.5', '743', '124.3', '0', '4', '113', '14', 'Rcb'),
('39', 'Glenn Maxwell', '43', '43', '4', '918', '95', '23.5', '568', '161.6', '0', '6', '76', '56', 'Kxi'),
('40', 'Karun Nair', '41', '37', '4', '877', '83', '26.5', '686', '127.8', '0', '7', '96', '20', 'Dd'),
('41', 'Eoin Morgan', '48', '41', '5', '789', '66', '21.9', '643', '122.7', '0', '4', '66', '32', 'Kxi'),
('42', 'Mayank Agarwal', '50', '45', '2', '788', '68', '18.3', '633', '124.4', '0', '3', '79', '33', 'Rps'),
('43', 'Harbhajan Singh', '125', '77', '30', '783', '64', '16.6', '545', '143.6', '0', '1', '76', '40', 'Mi'),
('44', 'Quinton de Kock', '26', '26', '1', '726', '108', '29.0', '549', '132.2', '1', '5', '90', '21', 'Dd'),
('45', 'Lokesh Rahul', '39', '30', '6', '725', '68', '30.2', '577', '125.6', '0', '4', '61', '24', 'Rcb'),
('46', 'Angelo Mathews', '46', '40', '11', '692', '65', '23.8', '548', '126.2', '0', '1', '42', '28', 'Dd'),
('47', 'Moises Henriques', '45', '39', '11', '692', '74', '24.7', '553', '125.1', '0', '2', '59', '23', 'Srh'),
('48', 'Stuart Binny', '72', '51', '19', '688', '48', '21.5', '528', '130.3', '0', '0', '53', '26', 'Rcb'),
('49', 'Kedar Jadhav', '51', '44', '18', '626', '63', '24.0', '476', '131.5', '0', '2', '47', '23', 'Rcb'),
('50', 'Piyush Chawla', '123', '68', '27', '513', '24', '12.5', '447', '114.7', '0', '0', '49', '15', 'Kkr'),
('51', 'Suryakumar Yadav', '45', '35', '13', '507', '60', '23.0', '377', '134.4', '0', '1', '47', '18', 'Kkr'),
('52', 'Shakib Al Hasan', '42', '31', '8', '497', '66', '21.6', '381', '130.4', '0', '2', '44', '15', 'Kkr'),
('53', 'James Faulkner', '52', '39', '18', '473', '46', '22.5', '332', '142.4', '0', '0', '32', '23', 'Gj'),
('54', 'Shreyas Iyer', '20', '20', '1', '469', '83', '24.6', '385', '121.8', '0', '4', '43', '22', 'Dd'),
('55', 'Axar Patel', '45', '30', '8', '379', '42', '17.2', '311', '121.8', '0', '0', '23', '17', 'Kxi'),
('56', 'Corey Anderson', '16', '15', '3', '379', '95', '31.5', '278', '136.3', '0', '3', '32', '21', 'Dd'),
('57', 'Praveen Kumar', '113', '57', '20', '336', '34', '9.08', '306', '109.8', '0', '0', '23', '17', 'Gj'),
('58', 'Rajat Bhatia', '92', '47', '18', '326', '26', '11.2', '267', '122.0', '0', '0', '24', '12', 'Rps'),
('59', 'Aditya Tare', '32', '25', '4', '321', '59', '15.2', '250', '128.4', '0', '1', '37', '11', 'Dd'),
('60', 'Vinay Kumar', '102', '45', '17', '304', '26', '10.8', '271', '112.1', '0', '0', '20', '9', 'Mi'),
('61', 'Darren Sammy', '22', '20', '5', '295', '60', '19.6', '241', '122.4', '0', '1', '15', '18', 'Kxi'),
('62', 'Deepak Hooda', '31', '24', '1', '295', '54', '12.8', '216', '136.5', '0', '1', '15', '16', 'Srh'),
('63', 'Amit Mishra', '112', '45', '17', '291', '31', '10.3', '311', '93.56', '0', '0', '25', '3', 'Dd'),
('64', 'Chris Morris', '39', '20', '13', '285', '82', '40.7', '171', '166.6', '0', '1', '18', '17', 'Dd'),
('65', 'Krunal Pandya', '12', '9', '3', '237', '86', '39.5', '124', '191.1', '0', '1', '22', '13', 'Mi'),
('66', 'Ravichandran Ashwin', '111', '37', '15', '231', '29', '10.5', '240', '96.25', '0', '0', '22', '2', 'Rps'),
('67', 'Mitchell Marsh', '20', '14', '2', '225', '38', '18.7', '196', '114.7', '0', '0', '9', '14', 'Rps'),
('68', 'Pawan Negi', '29', '19', '7', '209', '36', '17.4', '161', '129.8', '0', '0', '16', '9', 'Rcb'),
('69', 'Rishabh Pant', '10', '10', '2', '198', '69', '24.7', '152', '130.2', '0', '1', '19', '6', 'Dd'),
('70', 'Sarfaraz Khan', '18', '12', '6', '177', '45', '29.5', '102', '173.5', '0', '0', '19', '6', 'Rcb'),
('71', 'Hashim Amla', '6', '6', '0', '157', '96', '26.1', '119', '131.9', '0', '1', '20', '4', 'Kxi'),
('72', 'Bipul Sharma', '26', '14', '7', '156', '35', '22.2', '99', '157.5', '0', '0', '9', '8', 'Srh'),
('73', 'Kane Williamson', '8', '8', '1', '155', '50', '22.1', '149', '104.0', '0', '1', '15', '1', 'Srh'),
('74', 'Bhuvneshwar Kumar', '76', '32', '14', '154', '24', '8.55', '153', '100.6', '0', '0', '15', '3', 'Srh'),
('75', 'Rishi Dhawan', '26', '17', '10', '153', '25', '21.8', '135', '113.3', '0', '0', '13', '4', 'Kkr'),
('76', 'Marcus Stoinis', '7', '5', '1', '146', '52', '36.5', '108', '135.1', '0', '1', '13', '4', 'Kxi'),
('77', 'Mitchell Johnson', '43', '25', '12', '131', '16', '10.0', '136', '96.32', '0', '0', '7', '6', 'Mi'),
('78', 'Sachin Baby', '15', '7', '1', '122', '33', '20.3', '86', '141.8', '0', '0', '9', '5', 'Rcb'),
('79', 'Zaheer Khan', '89', '29', '16', '113', '23', '8.69', '128', '88.28', '0', '0', '11', '2', 'Dd'),
('80', 'Nitish Rana', '4', '3', '0', '104', '70', '34.6', '75', '138.6', '0', '1', '7', '8', 'Mi'),
('81', 'Chris Lynn', '5', '5', '1', '89', '45', '22.2', '80', '111.2', '0', '0', '6', '4', 'Kkr'),
('82', 'Sam Billings', '5', '4', '0', '88', '54', '22', '64', '137.5', '0', '1', '4', '4', 'Dd'),
('83', 'Dhawal Kulkarni', '66', '18', '11', '85', '28', '12.1', '93', '91.39', '0', '0', '5', '2', 'Gj'),
('84', 'Umesh Yadav', '80', '21', '14', '84', '24', '12', '77', '109.0', '0', '0', '8', '3', 'Kkr'),
('85', 'Iqbal Abdulla', '47', '12', '10', '83', '33', '41.5', '77', '107.7', '0', '0', '9', '1', 'Rcb'),
('86', 'Carlos Brathwaite', '8', '6', '0', '83', '34', '13.8', '38', '218.4', '0', '0', '6', '8', 'Dd'),
('87', 'Lasith Malinga', '98', '23', '7', '81', '17', '5.06', '96', '84.37', '0', '0', '6', '4', 'Mi'),
('88', 'Ben Cutting', '5', '5', '2', '73', '39', '24.3', '40', '182.5', '0', '0', '4', '7', 'Srh'),
('89', 'Mohit Sharma', '61', '15', '7', '61', '21', '7.62', '52', '117.3', '0', '0', '4', '3', 'Kxi'),
('90', 'Jagadeesha Suchith', '14', '6', '5', '48', '34', '48', '32', '150', '0', '0', '4', '2', 'Mi'),
('91', 'Tim Southee', '26', '8', '3', '47', '25', '9.4', '32', '146.8', '0', '0', '3', '2', 'Mi'),
('92', 'Sunil Narine', '66', '18', '11', '47', '13', '6.71', '54', '87.03', '0', '0', '2', '2', 'Kkr'),
('93', 'Mitchell McClenaghan', '26', '8', '4', '47', '20', '11.7', '29', '162.0', '0', '0', '2', '5', 'Mi'),
('94', 'Harshal Patel', '35', '14', '5', '47', '10', '5.22', '34', '138.2', '0', '0', '2', '3', 'Rcb'),
('95', 'Ishank Jaggi', '5', '5', '1', '43', '25', '10.7', '58', '74.13', '0', '0', '3', '0', 'Kkr'),
('96', 'Ishan Kishan', '5', '5', '0', '42', '27', '8.4', '41', '102.4', '0', '0', '5', '0', 'Gj'),
('97', 'Varun Aaron', '36', '8', '5', '42', '17', '14', '45', '93.33', '0', '0', '2', '2', 'Kxi'),
('98', 'Ashish Nehra', '82', '20', '13', '41', '22', '5.85', '62', '66.12', '0', '0', '3', '1', 'Srh'),
('99', 'Munaf Patel', '61', '14', '9', '39', '23', '7.8', '40', '97.5', '0', '0', '5', '0', 'Gj'),
('100', 'Nathan Coulter-Nile', '18', '10', '4', '38', '9', '6.33', '38', '100', '0', '0', '3', '2', 'Kkr'),
('101', 'Ishant Sharma', '70', '19', '15', '37', '9', '9.25', '46', '80.43', '0', '0', '2', '1', 'Kxi'),
('102', 'Abhimanyu Mithun', '16', '8', '3', '34', '11', '6.8', '26', '130.7', '0', '0', '4', '1', 'Srh'),
('103', 'Shadab Jakati', '57', '8', '7', '28', '13', '28', '29', '96.55', '0', '0', '3', '0', 'Gj'),
('104', 'Sreenath Aravind', '28', '4', '4', '27', '14', '0', '17', '158.8', '0', '0', '5', '0', 'Rcb'),
('105', 'Eklavya Dwivedi', '4', '2', '0', '24', '19', '12', '14', '171.4', '0', '0', '2', '2', 'Srh'),
('106', 'Shahbaz Nadeem', '48', '14', '5', '24', '6', '2.66', '61', '39.34', '0', '0', '1', '0', 'Dd'),
('107', 'Nikhil Naik', '2', '2', '0', '23', '22', '11.5', '31', '74.19', '0', '0', '1', '0', 'Kxi'),
('108', 'Pradeep Sangwan', '33', '10', '6', '22', '6', '5.5', '31', '70.96', '0', '0', '1', '0', 'Gj'),
('109', 'Akshdeep Nath', '4', '3', '0', '20', '12', '6.66', '27', '74.07', '0', '0', '1', '0', 'Gj'),
('110', 'Sandeep Sharma', '43', '9', '8', '19', '7', '19', '29', '65.51', '0', '0', '1', '0', 'Kxi'),
('111', 'Ashok Dinda', '75', '16', '7', '19', '6', '2.11', '41', '46.34', '0', '0', '1', '0', 'Rps'),
('112', 'Pravin Tambe', '33', '6', '4', '18', '7', '9', '39', '46.15', '0', '0', '1', '0', 'Srh'),
('113', 'Anureet Singh', '19', '6', '3', '18', '10', '6', '31', '58.06', '0', '0', '0', '1', 'Kxi'),
('114', 'Rahul Tewatia', '4', '1', '0', '16', '16', '16', '13', '123.0', '0', '0', '0', '1', 'Kxi'),
('115', 'Shreyas Gopal', '6', '3', '1', '14', '11', '7', '27', '51.85', '0', '0', '1', '0', 'Mi'),
('116', 'KC Cariappa', '6', '2', '1', '13', '12', '13', '11', '118.1', '0', '0', '0', '1', 'Kxi'),
('117', 'Mohammed Shami', '31', '10', '5', '11', '5', '2.2', '27', '40.74', '0', '0', '0', '0', 'Dd'),
('118', 'Siddarth Kaul', '11', '3', '3', '9', '7', '0', '11', '81.81', '0', '0', '0', '0', 'Srh'),
('119', 'Jasprit Bumrah', '31', '5', '4', '9', '6', '9', '14', '64.28', '0', '0', '1', '0', 'Mi'),
('120', 'Jaskaran Singh', '8', '5', '4', '8', '4', '8', '11', '72.72', '0', '0', '0', '0', 'Rps'),
('121', 'Shardul Thakur', '1', '1', '1', '7', '7', '0', '6', '116.6', '0', '0', '1', '0', 'Kxi'),
('122', 'Jayant Yadav', '8', '2', '0', '6', '5', '3', '10', '60', '0', '0', '0', '0', 'Dd'),
('123', 'Ben Laughlin', '2', '2', '1', '4', '4', '4', '9', '44.44', '0', '0', '0', '0', 'Srh'),
('124', 'Barinder Sran', '15', '4', '4', '4', '2', '0', '4', '100', '0', '0', '0', '0', 'Srh'),
('125', 'Jaydev Unadkat', '35', '4', '3', '3', '1', '3', '8', '37.5', '0', '0', '0', '0', 'Rps'),
('126', 'Chris Jordan', '9', '1', '0', '3', '3', '3', '4', '75', '0', '0', '0', '0', 'Srh'),
('127', 'Yuzvendra Chahal', '43', '4', '4', '2', '1', '0', '2', '100', '0', '0', '0', '0', 'Rcb'),
('128', 'Ankit Rajpoot', '6', '1', '1', '2', '2', '0', '6', '33.33', '0', '0', '0', '0', 'Kkr'),
('129', 'Mustafizur Rahman', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Srh'),
('130', 'Murugan Ashwin', '10', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', 'Dd'),
('131', 'Samuel Badree', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Rcb'),
('132', 'Shivil Kaushik', '7', '2', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', 'Gj'),
('133', 'Swapnil Singh', '1', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', 'Kxi'),
('134', 'Tabraiz Shamsi', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Rcb'),
('135', 'Trent Boult', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Kkr'),
('136', 'Adam Milne', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Rcb'),
('137', 'Deepak Chahar', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Rps'),
('138', 'Pat Cummins', '4', '1', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', 'Dd'),
('139', 'Kuldeep Yadav', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Kkr'),
('140', 'Vijay Shankar', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Srh'),
('141', 'Adam Zampa', '5', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', 'Rps');

-- --------------------------------------------------------

--
-- Table structure for table `bowlers`
--

CREATE TABLE `bowlers` (
  `Pos` varchar(3) DEFAULT NULL,
  `Player` varchar(21) DEFAULT NULL,
  `Mat` varchar(3) DEFAULT NULL,
  `Inns` varchar(4) DEFAULT NULL,
  `Overs` varchar(5) DEFAULT NULL,
  `Runs` varchar(4) DEFAULT NULL,
  `Wkts` varchar(4) DEFAULT NULL,
  `BBI` varchar(6) DEFAULT NULL,
  `Avg` varchar(4) DEFAULT NULL,
  `Econ` varchar(4) DEFAULT NULL,
  `SR` varchar(4) DEFAULT NULL,
  `FourW` varchar(5) DEFAULT NULL,
  `FiveW` varchar(5) DEFAULT NULL,
  `Team` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bowlers`
--

INSERT INTO `bowlers` (`Pos`, `Player`, `Mat`, `Inns`, `Overs`, `Runs`, `Wkts`, `BBI`, `Avg`, `Econ`, `SR`, `FourW`, `FiveW`, `Team`) VALUES
('Pos', 'Player', 'Mat', 'Inns', 'Overs', 'Runs', 'Wkts', 'BBI', 'Avg', 'Econ', 'SR', 'FourW', 'FiveW', 'Team'),
('1', ' Lasith Malinga', '98', '98', '381.3', '2546', '143', '13-May', '17.8', '6.67', '16', '4', '1', 'Mi'),
('2', ' Amit Mishra', '112', '112', '401', '2918', '124', '17-May', '23.5', '7.27', '19.4', '3', '1', 'Dd'),
('3', ' Dwayne Bravo', '106', '103', '336.2', '2754', '122', '22-Apr', '22.5', '8.18', '16.5', '2', '0', 'Kxi'),
('4', ' Piyush Chawla', '123', '122', '407.1', '3082', '120', '17-Apr', '25.6', '7.56', '20.3', '2', '0', 'Kkr'),
('5', ' Harbhajan Singh', '125', '123', '445.3', '3119', '119', '18-May', '26.2', '7', '22.4', '1', '1', 'Mi'),
('6', ' Vinay Kumar', '102', '101', '346.4', '2870', '101', 'Apr-40', '28.4', '8.27', '20.5', '1', '0', 'Mi'),
('7', ' Ravichandran Ashwin', '111', '108', '381.4', '2500', '100', 'Apr-34', '25', '6.55', '22.9', '1', '0', 'Rps'),
('8', ' Ashish Nehra', '82', '82', '296.5', '2298', '98', '10-Apr', '23.4', '7.74', '18.1', '1', '0', 'Srh'),
('9', ' Zaheer Khan', '89', '88', '326.3', '2469', '92', '17-Apr', '26.8', '7.56', '21.2', '1', '0', 'Dd'),
('10', ' Sunil Narine', '66', '66', '262', '1619', '85', '19-May', '19.0', '6.17', '18.4', '6', '1', 'Kkr'),
('11', ' Bhuvneshwar Kumar', '76', '76', '277.5', '1970', '85', '14-Apr', '23.1', '7.09', '19.6', '2', '0', 'Srh'),
('12', ' Praveen Kumar', '113', '113', '404.1', '3100', '84', '18-Mar', '36.9', '7.67', '28.8', '0', '0', 'Gj'),
('13', ' Shane Watson', '94', '86', '283.2', '2186', '81', '29-Apr', '26.9', '7.71', '20.9', '1', '0', 'Rcb'),
('14', ' Ravindra Jadeja', '126', '100', '282.5', '2157', '77', '16-May', '28.0', '7.62', '22.0', '3', '1', 'Gj'),
('15', ' Umesh Yadav', '80', '79', '273.5', '2297', '74', '24-Apr', '31.0', '8.38', '22.2', '1', '0', 'Kkr'),
('16', ' Munaf Patel', '61', '61', '218.5', '1641', '73', '21-May', '22.4', '7.49', '17.9', '2', '1', 'Gj'),
('17', ' Dhawal Kulkarni', '66', '66', '217.1', '1708', '73', '14-Apr', '23.3', '7.86', '17.8', '1', '0', 'Gj'),
('18', ' Mohit Sharma', '61', '61', '210', '1666', '70', '14-Apr', '23.8', '7.93', '18', '1', '0', 'Kxi'),
('19', ' Rajat Bhatia', '92', '88', '265.4', '1965', '69', '15-Apr', '28.4', '7.39', '23.1', '1', '0', 'Rps'),
('20', ' Ashok Dinda', '75', '72', '241.4', '1952', '67', '18-Apr', '29.1', '8.07', '21.6', '1', '0', 'Rps'),
('21', ' Ishant Sharma', '70', '70', '254.5', '2052', '59', '12-May', '34.7', '8.05', '25.9', '0', '1', 'Kxi'),
('22', ' Yuzvendra Chahal', '43', '42', '155', '1236', '56', '25-Apr', '22.0', '7.97', '16.6', '1', '0', 'Rcb'),
('23', ' Kieron Pollard', '106', '80', '198', '1740', '56', 'Apr-44', '31.0', '8.78', '21.2', '1', '0', 'Mi'),
('24', ' Sandeep Sharma', '43', '43', '156.1', '1189', '54', '25-Apr', '22.0', '7.61', '17.3', '1', '0', 'Kxi'),
('25', ' James Faulkner', '52', '52', '178.1', '1520', '53', '16-May', '28.6', '8.53', '20.1', '0', '2', 'Kxi'),
('26', ' Mitchell Johnson', '43', '43', '164.2', '1345', '52', '27-Mar', '25.8', '8.18', '18.9', '0', '0', 'Mi'),
('27', ' Shadab Jakati', '57', '55', '175.5', '1398', '47', '22-Apr', '29.7', '7.95', '22.4', '2', '0', 'Gj'),
('28', ' Shakib Al Hasan', '42', '41', '150.3', '1070', '43', '17-Mar', '24.8', '7.1', '21', '0', '0', 'Kkr'),
('29', ' Axar Patel', '45', '45', '160.3', '1185', '43', '21-Apr', '27.5', '7.38', '22.3', '1', '0', 'Kxi'),
('30', ' Yusuf Pathan', '134', '76', '184.2', '1351', '41', '11-Mar', '32.9', '7.32', '26.9', '0', '0', 'Kkr'),
('31', ' Chris Morris', '39', '39', '136', '1020', '41', '23-Apr', '24.8', '7.5', '19.9', '1', '0', 'Dd'),
('32', ' Sreenath Aravind', '28', '28', '96.1', '764', '40', '14-Apr', '19.1', '7.94', '14.4', '2', '0', 'Rcb'),
('33', ' Iqbal Abdulla', '47', '46', '148.2', '1054', '38', '24-Mar', '27.7', '7.1', '23.4', '0', '0', 'Rcb'),
('34', ' Moises Henriques', '45', '43', '124.2', '996', '37', '16-Mar', '26.9', '8.01', '20.1', '0', '0', 'Srh'),
('35', ' Manpreet Gony', '43', '43', '146', '1255', '37', '31-Mar', '33.9', '8.59', '23.6', '0', '0', 'Gj'),
('36', ' Karn Sharma', '46', '46', '141.4', '1109', '36', 'Apr-38', '30.8', '7.82', '23.6', '1', '0', 'Mi'),
('37', ' Yuvraj Singh', '108', '69', '140.5', '1032', '35', '29-Apr', '29.4', '7.32', '24.1', '2', '0', 'Srh'),
('38', ' Mitchell McClenaghan', '26', '26', '100.2', '822', '35', '21-Apr', '23.4', '8.19', '17.2', '1', '0', 'Mi'),
('39', ' Jaydev Unadkat', '35', '34', '117.3', '986', '32', '25-May', '30.8', '8.39', '22.0', '0', '1', 'Rps'),
('40', ' Shahbaz Nadeem', '48', '46', '168', '1200', '31', '16-Mar', '38.7', '7.14', '32.5', '0', '0', 'Dd'),
('41', ' Harshal Patel', '35', '33', '109.5', '928', '31', '12-Feb', '29.9', '8.44', '21.2', '0', '0', 'Rcb'),
('42', ' Varun Aaron', '36', '34', '120.4', '1056', '31', '16-Mar', '34.0', '8.75', '23.3', '0', '0', 'Kxi'),
('43', ' Pravin Tambe', '33', '33', '110', '853', '28', '20-Apr', '30.4', '7.75', '23.5', '1', '0', 'Srh'),
('44', ' Angelo Mathews', '46', '42', '126.5', '1023', '27', '19-Apr', '37.8', '8.06', '28.1', '1', '0', 'Dd'),
('45', ' Jasprit Bumrah', '31', '31', '113.4', '961', '26', '13-Mar', '36.9', '8.45', '26.2', '0', '0', 'Mi'),
('46', ' Nathan Coulter-Nile', '18', '17', '65.3', '491', '21', '20-Apr', '23.3', '7.49', '18.7', '1', '0', 'Kkr'),
('47', ' Mitchell Marsh', '20', '18', '52.3', '414', '20', '25-Apr', '20.7', '7.88', '15.7', '1', '0', 'Rps'),
('48', ' Tim Southee', '26', '26', '100', '818', '19', '24-Mar', '43.0', '8.18', '31.5', '0', '0', 'Mi'),
('49', ' Rishi Dhawan', '26', '25', '81.2', '640', '18', '14-Feb', '35.5', '7.86', '27.1', '0', '0', 'Kkr'),
('50', ' Chris Gayle', '92', '37', '91.3', '724', '18', '21-Mar', '40.2', '7.91', '30.5', '0', '0', 'Rcb'),
('51', ' Mohammed Shami', '31', '30', '95.1', '843', '18', '20-Feb', '46.8', '8.85', '31.7', '0', '0', 'Dd'),
('52', ' Mustafizur Rahman', '16', '16', '61', '421', '17', '16-Mar', '24.7', '6.9', '21.5', '0', '0', 'Srh'),
('53', ' Stuart Binny', '72', '53', '84', '631', '17', '14-Feb', '37.1', '7.51', '29.6', '0', '0', 'Rcb'),
('54', ' Anureet Singh', '19', '18', '62.4', '555', '17', '23-Mar', '32.6', '8.85', '22.1', '0', '0', 'Kxi'),
('55', ' Rohit Sharma', '142', '30', '55.2', '440', '15', '6-Apr', '29.3', '7.95', '22.1', '1', '0', 'Mi'),
('56', ' Bipul Sharma', '26', '21', '54.4', '443', '14', '13-Feb', '31.6', '8.1', '23.4', '0', '0', 'Srh'),
('57', ' Pawan Negi', '29', '24', '72', '591', '14', '18-Apr', '42.2', '8.2', '30.8', '1', '0', 'Rcb'),
('58', ' Barinder Sran', '15', '15', '52.3', '448', '14', '28-Mar', '32', '8.53', '22.5', '0', '0', 'Srh'),
('59', ' Adam Zampa', '5', '5', '17', '115', '12', '19-Jun', '9.58', '6.76', '8.5', '0', '1', 'Rps'),
('60', ' Ankit Sharma', '20', '19', '59.1', '423', '12', '20-Feb', '35.2', '7.14', '29.5', '0', '0', 'Rps'),
('61', ' Darren Sammy', '22', '19', '39.2', '350', '11', '22-Apr', '31.8', '8.89', '21.4', '1', '0', 'Kxi'),
('62', ' Chris Jordan', '9', '9', '28', '258', '11', '11-Apr', '23.4', '9.21', '15.2', '1', '0', 'Srh'),
('63', ' Trent Boult', '8', '8', '32', '275', '10', '19-Mar', '27.5', '8.59', '19.2', '0', '0', 'Kkr'),
('64', ' Jagadeesha Suchith', '14', '13', '41', '368', '10', '14-Feb', '36.8', '8.97', '24.6', '0', '0', 'Mi'),
('65', ' Marcus Stoinis', '7', '7', '23', '194', '8', '15-Apr', '24.2', '8.43', '17.2', '1', '0', 'Kxi'),
('66', ' Shreyas Gopal', '6', '6', '19.1', '154', '7', '25-Feb', '22', '8.03', '16.4', '0', '0', 'Mi'),
('67', ' Carlos Brathwaite', '8', '8', '23.1', '189', '7', 'Mar-47', '27', '8.15', '19.8', '0', '0', 'Dd'),
('68', ' Murugan Ashwin', '10', '10', '28.3', '241', '7', 'Mar-36', '34.4', '8.45', '24.4', '0', '0', 'Dd'),
('69', ' Abhimanyu Mithun', '16', '16', '48', '472', '7', 'Feb-37', '67.4', '9.83', '41.1', '0', '0', 'Srh'),
('70', ' Ben Cutting', '5', '5', '15.1', '111', '6', '20-Feb', '18.5', '7.31', '15.1', '0', '0', 'Srh'),
('71', ' Krunal Pandya', '12', '11', '31.1', '236', '6', '15-Feb', '39.3', '7.57', '31.1', '0', '0', 'Mi'),
('72', ' Kuldeep Yadav', '3', '3', '12', '100', '6', 'Mar-35', '16.6', '8.33', '12', '0', '0', 'Kkr'),
('73', ' Shivil Kaushik', '7', '7', '23', '192', '6', '20-Mar', '32', '8.34', '23', '0', '0', 'Gj'),
('74', ' Siddarth Kaul', '11', '11', '34.5', '296', '6', '27-Feb', '49.3', '8.49', '34.8', '0', '0', 'Srh'),
('75', ' Jaskaran Singh', '8', '7', '17', '171', '6', '18-Feb', '28.5', '10.0', '17', '0', '0', 'Rps'),
('76', ' Corey Anderson', '16', '11', '22', '217', '5', '18-Feb', '43.4', '9.86', '26.4', '0', '0', 'Dd'),
('77', ' Jayant Yadav', '8', '8', '24', '154', '4', '8-Jan', '38.5', '6.41', '36', '0', '0', 'Dd'),
('78', ' Deepak Hooda', '31', '13', '28.1', '226', '4', '16-Feb', '56.5', '8.02', '42.2', '0', '0', 'Srh'),
('79', ' Shikhar Dhawan', '113', '6', '8', '66', '4', '7-Jan', '16.5', '8.25', '12', '0', '0', 'Srh'),
('80', ' Virat Kohli', '139', '26', '41.5', '368', '4', '25-Feb', '92', '8.79', '62.7', '0', '0', 'Rcb'),
('81', ' Ankit Rajpoot', '6', '6', '15', '133', '4', '14-Jan', '33.2', '8.86', '22.5', '0', '0', 'Kkr'),
('82', ' Hardik Pandya', '20', '18', '33.4', '329', '4', '7-Jan', '82.2', '9.77', '50.5', '0', '0', 'Mi'),
('83', ' KC Cariappa', '6', '6', '19', '187', '4', '16-Feb', '46.7', '9.84', '28.5', '0', '0', 'Kxi'),
('84', ' Glenn Maxwell', '43', '25', '35', '354', '4', '5-Jan', '88.5', '10.1', '52.5', '0', '0', 'Kxi'),
('85', ' Rahul Tewatia', '4', '4', '12', '90', '3', '17-Jan', '30', '7.5', '24', '0', '0', 'Kxi'),
('86', ' Tabraiz Shamsi', '4', '4', '16', '147', '3', '21-Jan', '49', '9.18', '32', '0', '0', 'Rcb'),
('87', ' Sachin Baby', '15', '2', '1.4', '8', '2', '0/0', '4', '4.8', '5', '0', '0', 'Rcb'),
('88', ' Samuel Badree', '5', '5', '18', '131', '2', '19-Jan', '65.5', '7.27', '54', '0', '0', 'Rcb'),
('89', ' Pat Cummins', '4', '4', '14', '126', '2', '29-Jan', '63', '9', '42', '0', '0', 'Dd'),
('90', ' Ajinkya Rahane', '95', '1', '1', '5', '1', '0/0', '5', '5', '6', '0', '0', 'Rps'),
('91', ' Mandeep Singh', '59', '1', '3', '23', '1', '0/0', '23', '7.66', '18', '0', '0', 'Rcb'),
('92', ' Aaron Finch', '52', '5', '7.1', '67', '1', '11-Jan', '67', '9.34', '43', '0', '0', 'Gj'),
('93', ' Ben Laughlin', '2', '2', '7', '71', '1', '25-Jan', '71', '10.1', '42', '0', '0', 'Srh'),
('94', ' Adam Milne', '1', '1', '4', '43', '1', 'Jan-43', '43', '10.7', '24', '0', '0', 'Rcb'),
('95', ' Lendl Simmons', '22', '1', '3', '34', '1', '0/0', '34', '11.3', '18', '0', '0', 'Mi'),
('96', ' Manoj Tiwary', '78', '5', '6', '73', '1', '0/0', '73', '12.1', '36', '0', '0', 'Rps'),
('97', ' Shardul Thakur', '1', '1', '3', '38', '1', 'Jan-38', '38', '12.6', '18', '0', '0', 'Kxi'),
('98', ' Nitish Rana', '4', '1', '1', '3', '0', '0/0', '0', '3', '0', '0', '0', 'Mi'),
('99', ' Kane Williamson', '8', '1', '1', '7', '0', '0/7', '0', '7', '0', '0', '0', 'Srh'),
('100', ' Ambati Rayudu', '109', '1', '3', '22', '0', '0/0', '0', '7.33', '0', '0', '0', 'Mi'),
('101', ' Suryakumar Yadav', '45', '1', '1', '8', '0', '0/0', '0', '8', '0', '0', '0', 'Kkr'),
('102', ' Murali Vijay', '100', '4', '6', '49', '0', '0/0', '0', '8.16', '0', '0', '0', 'Kxi'),
('103', ' Deepak Chahar', '2', '2', '5', '41', '0', '0/0', '0', '8.2', '0', '0', '0', 'Rps'),
('104', ' Swapnil Singh', '1', '1', '3', '29', '0', '0/29', '0', '9.66', '0', '0', '0', 'Kxi'),
('105', ' Vijay Shankar', '1', '1', '1', '19', '0', '0/19', '0', '19', '0', '0', '0', 'Srh');

-- --------------------------------------------------------

--
-- Table structure for table `websiteusers`
--

CREATE TABLE `websiteusers` (
  `fullname` varchar(50) NOT NULL,
  `userName` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `websiteusers`
--

INSERT INTO `websiteusers` (`fullname`, `userName`, `email`, `pass`) VALUES
('2', 'yo', 'aa', 'peace'),
('bb', 'yi', 'gg', 'peace'),
('wq', 'wq', 'wq', 'wq'),
('qq', 'qq', 'qq', 'qq'),
('A', 'asasa', 'asas', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
