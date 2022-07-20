-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2022 at 02:47 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covidpt`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ashaworker`
--

CREATE TABLE `tbl_ashaworker` (
  `as_id` int(11) NOT NULL,
  `wa_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `as_name` varchar(20) NOT NULL,
  `as_mobile` bigint(11) NOT NULL,
  `as_email` varchar(30) NOT NULL,
  `as_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_ashaworker`
--

INSERT INTO `tbl_ashaworker` (`as_id`, `wa_id`, `login_id`, `as_name`, `as_mobile`, `as_email`, `as_status`) VALUES
(1, 8, 43, 'Sheeja', 9656748525, 'sheeja@gmail.com', 1),
(10, 16, 44, 'Ashy', 8596741425, 'ashy@gmail.com', 1),
(11, 10, 46, 'Fredy', 9685741452, 'fredy@gmail.com', 1),
(17, 11, 52, 'Sreya', 9874563652, 'sreyabharath99@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cntlist`
--

CREATE TABLE `tbl_cntlist` (
  `cnt_id` int(11) NOT NULL,
  `pt_id` int(11) NOT NULL,
  `ct_name` varchar(20) NOT NULL,
  `ct_honame` varchar(20) NOT NULL,
  `ct_mob` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cntlist`
--

INSERT INTO `tbl_cntlist` (`cnt_id`, `pt_id`, `ct_name`, `ct_honame`, `ct_mob`) VALUES
(1, 2, 'werr', 'ghhhh', 7894561236),
(2, 2, 'Dreee', 'awedadcagf', 7485259636);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_consultreg`
--

CREATE TABLE `tbl_consultreg` (
  `cons_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `sch_id` int(11) NOT NULL,
  `conscat` varchar(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `con_type` varchar(10) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `consult` varchar(20) NOT NULL,
  `codate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_consultreg`
--

INSERT INTO `tbl_consultreg` (`cons_id`, `log_id`, `sch_id`, `conscat`, `name`, `age`, `con_type`, `mobile`, `status`, `consult`, `codate`) VALUES
(4, 2, 9, 'Psycologist', 'Anu', 23, 'offline', 8974589674, 'Accepted', 'Consult Completed', '2022-07-07'),
(6, 2, 13, 'Physician', 'Riya', 20, 'offline', 9636857412, 'Accepted', 'Consult Completed', '2022-07-08'),
(8, 2, 15, 'Physician', 'Reena', 20, 'offline', 7845963652, 'Pending', 'Pending', '2022-07-08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cont`
--

CREATE TABLE `tbl_cont` (
  `cnt_id` int(11) NOT NULL,
  `pt_id` int(11) NOT NULL,
  `cnt_name` varchar(11) NOT NULL,
  `cnt_mob` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cont`
--

INSERT INTO `tbl_cont` (`cnt_id`, `pt_id`, `cnt_name`, `cnt_mob`) VALUES
(1, 1, 'Arun', 7485963625),
(2, 4, 'Aromal', 9636258574),
(3, 2, 'Reena', 9685741452);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_containmentzone`
--

CREATE TABLE `tbl_containmentzone` (
  `zone_id` int(11) NOT NULL,
  `ward_id` int(11) NOT NULL,
  `cont_status` varchar(10) NOT NULL,
  `cont_declaredate` date NOT NULL,
  `cont_end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_containmentzone`
--

INSERT INTO `tbl_containmentzone` (`zone_id`, `ward_id`, `cont_status`, `cont_declaredate`, `cont_end_date`) VALUES
(5, 8, 'Inactive', '2022-07-07', '2022-07-07'),
(10, 8, 'Active', '2022-07-07', '0000-00-00'),
(13, 9, 'Active', '2022-07-07', '0000-00-00'),
(25, 10, 'Inactive', '2022-07-07', '2022-07-07'),
(30, 25, 'Inactive', '2022-07-07', '2022-07-07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contdet`
--

CREATE TABLE `tbl_contdet` (
  `det_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `no_of_pstvs` int(11) NOT NULL,
  `no_of_contacts` int(11) NOT NULL,
  `no_of_deaths` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_contdet`
--

INSERT INTO `tbl_contdet` (`det_id`, `zone_id`, `no_of_pstvs`, `no_of_contacts`, `no_of_deaths`) VALUES
(1, 13, 2, 2, 1),
(2, 10, 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_covpat`
--

CREATE TABLE `tbl_covpat` (
  `cpat_id` int(11) NOT NULL,
  `panch_id` int(11) NOT NULL,
  `hos_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_covpat`
--

INSERT INTO `tbl_covpat` (`cpat_id`, `panch_id`, `hos_id`, `name`, `age`, `mobile`, `status`) VALUES
(1, 15, 1, 'Arun', 35, 9685741425, 'Discharged'),
(2, 15, 1, 'Aysha', 65, 7845129636, 'Admitted');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cvdtest`
--

CREATE TABLE `tbl_cvdtest` (
  `ctest_id` int(11) NOT NULL,
  `panch_id` int(11) NOT NULL,
  `ward_id` int(11) NOT NULL,
  `hos_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `tpname` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `adhar` bigint(20) NOT NULL,
  `ctmobile` bigint(20) NOT NULL,
  `ctemail` varchar(30) NOT NULL,
  `tdate` date NOT NULL,
  `type` int(11) NOT NULL,
  `status` varchar(11) NOT NULL,
  `result` varchar(10) NOT NULL,
  `estatus` varchar(15) NOT NULL,
  `pstatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cvdtest`
--

INSERT INTO `tbl_cvdtest` (`ctest_id`, `panch_id`, `ward_id`, `hos_id`, `log_id`, `tpname`, `age`, `adhar`, `ctmobile`, `ctemail`, `tdate`, `type`, `status`, `result`, `estatus`, `pstatus`) VALUES
(4, 15, 8, 1, 2, 'Girija', 20, 748596362514, 7485963625, 'loo@gmail.com', '2022-07-02', 1, 'Tested', 'Positive', 'Pending', 'Paid'),
(5, 15, 8, 1, 2, 'Soja', 20, 748596362514, 7485963625, 'soja@gmail.com', '2022-07-02', 1, 'Tested', 'Positive', 'Pending', 'Paid'),
(6, 15, 8, 1, 2, 'Huy', 55, 857496362514, 9874563214, 'sd@gmail.com', '2022-07-02', 1, 'Tested', 'Negative', 'Sent', 'Paid'),
(7, 15, 8, 1, 2, 'Sreya', 20, 748596362544, 9685741425, 'sreyabharath99@gmail.com', '2022-07-02', 1, 'Tested', 'Positive', 'Pending', 'Paid'),
(8, 9, 4, 1, 2, 'Silja', 22, 859674142536, 7788996655, 'fff@gmail.com', '2022-07-02', 1, 'Tested', 'Pending', 'Pending', 'Paid'),
(9, 15, 8, 1, 2, 'Sangeetha', 20, 748596362541, 7896541236, 'sangeethasebastian384@gmail.co', '2022-07-06', 1, 'Tested', 'Positive', 'Pending', 'Paid'),
(10, 15, 8, 1, 2, 'Vismaya', 20, 789456123654, 9685741425, 'vismaya@gmail.com', '2022-07-07', 2, 'Tested', 'Positive', 'Pending', 'Paid'),
(11, 15, 9, 1, 2, 'Teena', 20, 985746327485, 8974563652, 'teenarose@gmail.com', '2022-07-07', 2, 'Tested', 'Pending', 'Pending', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_death`
--

CREATE TABLE `tbl_death` (
  `de_id` int(11) NOT NULL,
  `det_id` int(11) NOT NULL,
  `de_name` varchar(20) NOT NULL,
  `de_hname` varchar(20) NOT NULL,
  `de_date` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_death`
--

INSERT INTO `tbl_death` (`de_id`, `det_id`, `de_name`, `de_hname`, `de_date`, `status`) VALUES
(1, 2, 'ABC', 'XYZ', '2022-02-01', ''),
(2, 3, 'WQR', 'IPO', '2022-02-22', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_docscdl`
--

CREATE TABLE `tbl_docscdl` (
  `sc_id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `stime` time NOT NULL,
  `etime` time NOT NULL,
  `status` int(11) NOT NULL,
  `tokenno` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_docscdl`
--

INSERT INTO `tbl_docscdl` (`sc_id`, `doc_id`, `date`, `stime`, `etime`, `status`, `tokenno`) VALUES
(1, 1, '2022-06-20', '08:30:00', '16:30:00', 1, 0),
(2, 8, '2022-06-20', '07:00:00', '13:45:00', 1, 0),
(3, 6, '2022-06-20', '13:00:00', '18:00:00', 1, 0),
(4, 2, '2022-06-21', '13:00:00', '16:00:00', 1, 0),
(6, 1, '2022-06-24', '00:00:00', '00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_docsch`
--

CREATE TABLE `tbl_docsch` (
  `sch_id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `slot_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `tkns` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_docsch`
--

INSERT INTO `tbl_docsch` (`sch_id`, `doc_id`, `slot_id`, `date`, `tkns`, `status`) VALUES
(7, 1, 1, '2022-06-24', 6, 0),
(8, 2, 1, '2022-06-24', 7, 0),
(9, 2, 1, '2022-06-30', 6, 0),
(10, 1, 1, '2022-07-05', 7, 0),
(11, 1, 1, '2022-07-08', 8, 0),
(12, 2, 1, '2022-07-08', 8, 0),
(13, 1, 1, '2022-07-08', 7, 0),
(14, 2, 1, '2022-07-08', 8, 0),
(15, 1, 1, '2022-07-09', 6, 1),
(16, 2, 1, '2022-07-09', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_doctor`
--

CREATE TABLE `tbl_doctor` (
  `doc_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `h_id` int(11) NOT NULL,
  `doc_name` varchar(20) NOT NULL,
  `doc_spec` varchar(20) NOT NULL,
  `tkn` int(11) NOT NULL,
  `status` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_doctor`
--

INSERT INTO `tbl_doctor` (`doc_id`, `cat_id`, `h_id`, `doc_name`, `doc_spec`, `tkn`, `status`) VALUES
(1, 1, 1, 'Sudheer', 'MBBS', 8, 'Active'),
(2, 2, 1, 'Anu Mathew', 'MD', 8, 'Active'),
(3, 1, 2, 'Abin Sudhakar', 'MBBS MD', 8, 'Active'),
(4, 2, 2, 'Sindhu Joy', 'MD', 8, 'Active'),
(5, 1, 2, 'Pradeep', 'MD', 8, 'Active'),
(6, 2, 2, 'Lokesh', 'MD', 8, 'Active'),
(7, 1, 1, 'Aswathy', 'MBBS MD', 8, 'Absent'),
(8, 2, 1, 'Jiya Mathew', 'MBBS', 8, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_doc_cat`
--

CREATE TABLE `tbl_doc_cat` (
  `cat_id` int(11) NOT NULL,
  `ctype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_doc_cat`
--

INSERT INTO `tbl_doc_cat` (`cat_id`, `ctype`) VALUES
(1, 'Physician'),
(2, 'Psychologist');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hospital`
--

CREATE TABLE `tbl_hospital` (
  `h_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `panch_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `Phone` bigint(20) NOT NULL,
  `uniqid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_hospital`
--

INSERT INTO `tbl_hospital` (`h_id`, `login_id`, `panch_id`, `name`, `email`, `Phone`, `uniqid`) VALUES
(1, 3, 15, 'MIMS', 'mims@hos.cm', 8596741236, 0),
(2, 18, 2, 'MYTHRA', 'mythra@gmail.com', 7496321589, 0),
(12, 37, 15, 'EMS ', 'ems@gmail.com', 7896541236, 0),
(13, 38, 15, 'WIMS', 'wims@gmail.com', 8596741425, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hosvacc`
--

CREATE TABLE `tbl_hosvacc` (
  `hvac_id` int(11) NOT NULL,
  `hos_id` int(11) NOT NULL,
  `vac_id` int(11) NOT NULL,
  `num_vacc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_hosvacc`
--

INSERT INTO `tbl_hosvacc` (`hvac_id`, `hos_id`, `vac_id`, `num_vacc`) VALUES
(1, 1, 1, 41),
(2, 1, 2, 25),
(3, 12, 1, 20),
(4, 2, 2, 25);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hosvaccsch`
--

CREATE TABLE `tbl_hosvaccsch` (
  `hvs_id` int(11) NOT NULL,
  `hvac_id` int(11) NOT NULL,
  `tset_id` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_hosvaccsch`
--

INSERT INTO `tbl_hosvaccsch` (`hvs_id`, `hvac_id`, `tset_id`, `num`, `date`, `status`) VALUES
(5, 1, 1, 1, '2022-06-24', 0),
(6, 1, 2, 4, '2022-06-24', 0),
(7, 1, 1, 6, '2022-06-25', 0),
(8, 1, 2, 5, '2022-07-05', 0),
(9, 1, 1, 7, '2022-07-07', 0),
(10, 1, 1, 10, '2022-07-08', 0),
(11, 1, 1, 10, '2022-07-09', 1),
(12, 1, 1, 2, '2022-07-11', 1),
(13, 1, 1, 20, '2022-07-12', 1),
(14, 1, 2, 30, '2022-07-11', 1),
(15, 1, 2, 19, '2022-07-11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `login_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `passwd` varchar(20) NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`login_id`, `username`, `passwd`, `type`, `status`) VALUES
(1, 'admin', 'admin', 1, 1),
(2, 'Anu123', 'anu123', 3, 1),
(3, 'mims123', 'mims123', 2, 1),
(5, 'kannur@gmail.com', 'kannur', 4, 1),
(6, 'kozhikode@gmail.com', 'kozhikode', 4, 1),
(7, 'pinarayi@gmail.com', 'pinarayi', 4, 1),
(16, 'kollam@gmail.com', 'kollam', 4, 1),
(17, 'kiran123', 'kiran123', 3, 1),
(18, 'mythra123', 'mythra123', 2, 1),
(19, 'thalassery@gmail.com', 'thalassery', 4, 0),
(21, 'chempu@gmail.com', 'info', 4, 1),
(22, 'ambalur@gmail.com', 'ambalur', 4, 0),
(24, 'abhi123', 'abhi123', 3, 1),
(25, 'info@kannur.com', 'newpassword', 4, 0),
(29, 'sirla123', 'sirla123', 3, 1),
(37, 'Ems123', 'Ems123@', 2, 0),
(38, 'Wims123', 'Wims123@', 2, 1),
(40, 'suma@gmail.com', 'Varkala12@', 4, 1),
(41, 'Silja123', 'Silja99@', 3, 1),
(42, 'Yadhu123', 'Yadhu123@', 3, 1),
(43, 'sheeja@gmail.com', '123456', 5, 1),
(44, 'ashy@gmail.com', '8596741425', 5, 1),
(45, 'ashy@gmail.com', '8596741425', 5, 1),
(46, 'fredy@gmail.com', '9685741452', 5, 1),
(47, 'jisha@gmail.com', '9685741452', 5, 1),
(48, 'sreyabharath99@gmail', '8745963652', 5, 1),
(49, 'sreyabharath99@gmail', '9874563214', 5, 1),
(50, 'sreyabharath99@gmail', '9874563214', 5, 1),
(51, 'sreyabharath99@gmail', '9874563214', 5, 1),
(52, 'sreyabharath99@gmail.com', '9874563652', 5, 1),
(53, 'sreyabharath99@gmail.com', '9865257412', 5, 1),
(54, 'Fidha123', 'Fidha12@', 3, 1),
(58, 'Sree123', 'Sree123@', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_panchayath`
--

CREATE TABLE `tbl_panchayath` (
  `panch_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `panch_name` varchar(20) NOT NULL,
  `panch_president_name` varchar(20) NOT NULL,
  `panch_mobile` bigint(20) NOT NULL,
  `panch_email` varchar(30) NOT NULL,
  `num_wards` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_panchayath`
--

INSERT INTO `tbl_panchayath` (`panch_id`, `login_id`, `panch_name`, `panch_president_name`, `panch_mobile`, `panch_email`, `num_wards`) VALUES
(1, 5, 'Kannur', 'Sreekala', 7896541236, 'kannur@gmail.com', 2),
(2, 6, 'Kozhikode', 'Aami A', 7485963625, 'kozhikode@gmail.com', 3),
(9, 7, 'Pinarayi', 'Kiran77', 7845963214, 'pinarayi@gmail.com', 8),
(15, 16, 'Kollam', 'Lintu K', 9685741236, 'kollampanch@gmail.com', 4),
(16, 19, 'Thalassery', 'kita', 7845963214, 'thalassery@gmail.com', 1),
(18, 21, 'chempu', 'Antony', 7485123698, 'chempu@gmail.com', 7),
(19, 22, 'Ambalur', 'harish', 7496321584, 'ambalur@gmail.com', 4),
(22, 40, 'Varkala', 'Suma', 7485145296, 'suma@gmail.com', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_panchvacc`
--

CREATE TABLE `tbl_panchvacc` (
  `pvacc_id` int(11) NOT NULL,
  `vac_id` int(11) NOT NULL,
  `panch_id` int(11) NOT NULL,
  `avail` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_panchvacc`
--

INSERT INTO `tbl_panchvacc` (`pvacc_id`, `vac_id`, `panch_id`, `avail`) VALUES
(1, 1, 15, 92),
(2, 2, 15, 85),
(3, 2, 9, 74),
(4, 2, 2, 66);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_paymnt`
--

CREATE TABLE `tbl_paymnt` (
  `pamnt_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `cvd_id` int(11) NOT NULL,
  `pamount` int(11) NOT NULL,
  `pdate` datetime NOT NULL,
  `pstatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_paymnt`
--

INSERT INTO `tbl_paymnt` (`pamnt_id`, `log_id`, `cvd_id`, `pamount`, `pdate`, `pstatus`) VALUES
(1, 3, 25, 500, '2005-07-22 12:21:25', 'Paid'),
(2, 3, 25, 500, '2005-07-22 12:23:34', 'Paid'),
(3, 3, 25, 500, '2005-07-22 12:23:44', 'Paid'),
(4, 3, 25, 500, '2005-07-22 12:24:09', 'Paid'),
(5, 2, 4, 500, '2005-07-22 02:20:17', 'Paid'),
(6, 2, 4, 500, '2005-07-22 02:44:47', 'Paid'),
(7, 2, 5, 500, '2005-07-22 03:07:12', 'Paid'),
(8, 2, 5, 500, '2005-07-22 03:26:29', 'Paid'),
(9, 2, 6, 500, '2005-07-22 03:28:12', 'Paid'),
(10, 2, 6, 500, '2005-07-22 03:32:53', 'Paid'),
(11, 2, 6, 500, '2005-07-22 03:45:47', 'Paid'),
(12, 2, 6, 500, '2005-07-22 03:47:24', 'Paid'),
(13, 2, 7, 500, '2005-07-22 03:48:35', 'Paid'),
(14, 2, 7, 500, '2005-07-22 03:49:45', 'Paid'),
(15, 2, 8, 500, '2005-07-22 03:51:02', 'Paid'),
(16, 2, 9, 500, '2006-07-22 08:51:26', 'Paid'),
(17, 2, 10, 150, '2006-07-22 04:03:35', 'Paid'),
(18, 2, 11, 150, '2007-07-22 11:26:06', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_posthos`
--

CREATE TABLE `tbl_posthos` (
  `pt_id` int(11) NOT NULL,
  `panch_id` int(11) NOT NULL,
  `h_id` int(11) NOT NULL,
  `ward_num` int(11) NOT NULL,
  `pt_name` varchar(20) NOT NULL,
  `pt_mob` bigint(20) NOT NULL,
  `cdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_posthos`
--

INSERT INTO `tbl_posthos` (`pt_id`, `panch_id`, `h_id`, `ward_num`, `pt_name`, `pt_mob`, `cdate`) VALUES
(1, 15, 1, 8, 'Girija', 7485963625, '2022-07-02'),
(2, 15, 1, 8, 'Soja', 7485963625, '2022-07-03'),
(4, 15, 1, 8, 'Vismaya', 9685741425, '2022-07-07'),
(5, 15, 1, 9, 'Teena', 8974563652, '2022-07-07'),
(6, 9, 1, 4, 'Silja', 7788996655, '2022-07-02'),
(12, 15, 1, 8, 'Sreya', 9685741425, '2022-07-02'),
(13, 15, 1, 8, 'Sangeetha', 7896541236, '2022-07-06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pstvlist`
--

CREATE TABLE `tbl_pstvlist` (
  `pst_id` int(11) NOT NULL,
  `det_id` int(11) NOT NULL,
  `pst_name` varchar(20) NOT NULL,
  `pst_dob` date NOT NULL,
  `pst_honame` varchar(20) NOT NULL,
  `no_contacts` int(11) NOT NULL,
  `pstv_date` date NOT NULL,
  `pstv_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pstvlist`
--

INSERT INTO `tbl_pstvlist` (`pst_id`, `det_id`, `pst_name`, `pst_dob`, `pst_honame`, `no_contacts`, `pstv_date`, `pstv_status`) VALUES
(1, 1, 'lina', '2012-02-02', 'Kila', 2, '2022-02-11', 'true'),
(2, 1, 'riya', '2012-02-02', 'riyahouse', 2, '2022-02-17', 'true'),
(3, 2, 'Yibi', '2012-03-01', 'Kinari', 0, '2022-02-11', 'true'),
(4, 2, 'Piyush', '2014-03-20', 'Piyu', 1, '2022-03-08', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_register`
--

CREATE TABLE `tbl_register` (
  `r_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `panch_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `Phone` bigint(20) NOT NULL,
  `adhar` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_register`
--

INSERT INTO `tbl_register` (`r_id`, `login_id`, `panch_id`, `name`, `email`, `Phone`, `adhar`) VALUES
(1, 2, 15, 'Anu', 'anu@gmail.com', 7896321458, 985674126354),
(2, 17, 2, 'Kiran', 'kiran@gmail.com', 9362585774, 557799663311),
(3, 24, 15, 'Abhi', 'abhi@gmail.com', 7964851236, 741852963784),
(4, 29, 15, 'Sirla', 'sirla@gmail.com', 8596741425, 258741963147),
(5, 41, 16, 'Silja CK', 'silja@gmail.bom', 9995992134, 987456321456),
(7, 54, 15, 'Fidha', 'fidha@gmail.com', 9685744152, 962577884466),
(11, 58, 15, 'Sreevidhya', 'sreevid@gmail.com', 9645857441, 969874563241);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testtype`
--

CREATE TABLE `tbl_testtype` (
  `tety_id` int(11) NOT NULL,
  `testype` varchar(20) NOT NULL,
  `tamount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_testtype`
--

INSERT INTO `tbl_testtype` (`tety_id`, `testype`, `tamount`) VALUES
(1, 'RTPCR', 500),
(2, 'Antigen', 150);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_timeset`
--

CREATE TABLE `tbl_timeset` (
  `tset_id` int(11) NOT NULL,
  `setslots` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_timeset`
--

INSERT INTO `tbl_timeset` (`tset_id`, `setslots`) VALUES
(1, '10AM-12PM'),
(2, '3PM-5PM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_timeslot1`
--

CREATE TABLE `tbl_timeslot1` (
  `tm_id` int(11) NOT NULL,
  `timesl` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_timeslot1`
--

INSERT INTO `tbl_timeslot1` (`tm_id`, `timesl`) VALUES
(1, '3:00PM-3:15PM'),
(2, '3:15PM-3:30PM'),
(3, '3:30PM-3:45PM'),
(4, '3:45PM-4:00PM'),
(5, '4:30PM-4:45PM'),
(6, '4:45PM-5:00PM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_timeslots`
--

CREATE TABLE `tbl_timeslots` (
  `time_id` int(11) NOT NULL,
  `times` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_timeslots`
--

INSERT INTO `tbl_timeslots` (`time_id`, `times`) VALUES
(1, '10AM-10:15AM'),
(2, '10:15AM-10:30AM'),
(3, '10:30AM-10:45AM'),
(4, '10:45AM-11AM'),
(5, '11AM-11:15AM'),
(6, '11:15AM-11:30AM'),
(7, '11:30AM-11:45AM'),
(8, '11:45AM-12:00PM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_uservacc`
--

CREATE TABLE `tbl_uservacc` (
  `uvac_id` int(11) NOT NULL,
  `panch_id` int(11) NOT NULL,
  `hvs_id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `uage` int(11) NOT NULL,
  `uadhar` bigint(20) NOT NULL,
  `umob` bigint(20) NOT NULL,
  `uemail` varchar(20) NOT NULL,
  `udose` int(11) NOT NULL,
  `udate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_uservacc`
--

INSERT INTO `tbl_uservacc` (`uvac_id`, `panch_id`, `hvs_id`, `uname`, `uage`, `uadhar`, `umob`, `uemail`, `udose`, `udate`) VALUES
(1, 15, 5, 'Sreya', 20, 748596854741, 8596743625, 'sreya@gmail.com', 1, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usvacc`
--

CREATE TABLE `tbl_usvacc` (
  `uvc_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hvs_id` int(11) NOT NULL,
  `panch_id` int(11) NOT NULL,
  `uvname` varchar(20) NOT NULL,
  `uvage` int(11) NOT NULL,
  `uvgender` int(11) NOT NULL,
  `uvadhar` bigint(20) NOT NULL,
  `vdose` int(11) NOT NULL,
  `vdate` date NOT NULL,
  `vstatus` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_usvacc`
--

INSERT INTO `tbl_usvacc` (`uvc_id`, `user_id`, `hvs_id`, `panch_id`, `uvname`, `uvage`, `uvgender`, `uvadhar`, `vdose`, `vdate`, `vstatus`) VALUES
(3, 1, 9, 15, 'Anu', 23, 0, 447788665588, 1, '2022-07-07', 'Vaccinated'),
(4, 1, 9, 15, 'Virat', 25, 0, 859674145263, 1, '2022-07-08', 'Registered'),
(5, 1, 15, 15, 'Fidha', 20, 0, 968574415263, 1, '2022-07-11', 'Registered'),
(9, 1, 9, 15, 'Kripa', 9, 0, 748899664455, 1, '2022-07-11', 'Vaccinated');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vacc`
--

CREATE TABLE `tbl_vacc` (
  `vac_id` int(11) NOT NULL,
  `vac_name` varchar(20) NOT NULL,
  `intervel` int(11) NOT NULL,
  `numdose` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_vacc`
--

INSERT INTO `tbl_vacc` (`vac_id`, `vac_name`, `intervel`, `numdose`) VALUES
(1, 'Covishield', 90, 2),
(2, 'Covaxin', 28, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vaccreq`
--

CREATE TABLE `tbl_vaccreq` (
  `req_id` int(11) NOT NULL,
  `h_id` int(11) NOT NULL,
  `panch_id` int(11) NOT NULL,
  `vac_id` int(11) NOT NULL,
  `vac_num` int(11) NOT NULL,
  `vdate` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_vaccreq`
--

INSERT INTO `tbl_vaccreq` (`req_id`, `h_id`, `panch_id`, `vac_id`, `vac_num`, `vdate`, `status`) VALUES
(12, 1, 15, 1, 5, '2022-06-22', 'Accepted'),
(13, 1, 15, 1, 10, '2022-06-25', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wards`
--

CREATE TABLE `tbl_wards` (
  `ward_id` int(11) NOT NULL,
  `panch_id` int(11) NOT NULL,
  `ward_num` varchar(20) NOT NULL,
  `ward_mem_name` varchar(20) NOT NULL,
  `ward_mem_numb` varchar(20) NOT NULL,
  `ward_mem_email` varchar(20) NOT NULL,
  `con_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_wards`
--

INSERT INTO `tbl_wards` (`ward_id`, `panch_id`, `ward_num`, `ward_mem_name`, `ward_mem_numb`, `ward_mem_email`, `con_status`) VALUES
(1, 1, '5', 'Diya K', '8596741236', 'diya@gmail.com', ''),
(2, 2, '7', 'Divya K', '8456741236', 'divya@gmail.com', ''),
(3, 2, '8', 'jisha k', '7896541236', 'jisha@gmail.com', ''),
(4, 9, '9', 'minnu t', '7441855296', 'minnut@gmail.com', ''),
(5, 1, '2', 'Krishna K P', '7896547736', 'krishna@gmail.com', ''),
(6, 9, '2', 'tinnu', '7741855796', 'tinnu@gmail.com', ''),
(7, 9, '1', 'Reena', '7465893214', 'reena@gmai.com', ''),
(8, 15, '1 ', 'lintu', '9087654323', 'lintu@gmail.com', 'Active'),
(9, 15, '2 ', 'Eran', '9078563412', 'eran@gmail.com', 'Active'),
(10, 15, '3', 'yuva', '90090090090', 'yuva@gmail.com', 'Inactive'),
(11, 15, '4', 'Jisha', '9876564567', 'jisha@gmail.com', ''),
(14, 9, '5', 'Ponamma', '7855555555', 'ponama@gmail.com', ''),
(16, 2, '4', 'Kiran Kumar', '7896457812', 'kiran@gmail.com', ''),
(17, 16, '5', 'Reshma', '7485254196', 'reshma@gmail.com', ''),
(24, 15, '5', 'Jeena', '9685741452', 'jeena@gmail.com', ''),
(25, 15, '6', 'Sreeya', '9685741452', 'sreeya@gmail.com', 'Inactive');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_ashaworker`
--
ALTER TABLE `tbl_ashaworker`
  ADD PRIMARY KEY (`as_id`),
  ADD KEY `wa_id` (`wa_id`),
  ADD KEY `login_id` (`login_id`);

--
-- Indexes for table `tbl_cntlist`
--
ALTER TABLE `tbl_cntlist`
  ADD PRIMARY KEY (`cnt_id`),
  ADD KEY `pt_id` (`pt_id`);

--
-- Indexes for table `tbl_consultreg`
--
ALTER TABLE `tbl_consultreg`
  ADD PRIMARY KEY (`cons_id`),
  ADD KEY `cat_id` (`conscat`),
  ADD KEY `log_id` (`log_id`),
  ADD KEY `tbl_consultreg_ibfk_2` (`sch_id`);

--
-- Indexes for table `tbl_cont`
--
ALTER TABLE `tbl_cont`
  ADD PRIMARY KEY (`cnt_id`),
  ADD KEY `pt_id` (`pt_id`);

--
-- Indexes for table `tbl_containmentzone`
--
ALTER TABLE `tbl_containmentzone`
  ADD PRIMARY KEY (`zone_id`),
  ADD KEY `ward_id` (`ward_id`);

--
-- Indexes for table `tbl_contdet`
--
ALTER TABLE `tbl_contdet`
  ADD PRIMARY KEY (`det_id`),
  ADD KEY `zone_id` (`zone_id`);

--
-- Indexes for table `tbl_covpat`
--
ALTER TABLE `tbl_covpat`
  ADD PRIMARY KEY (`cpat_id`),
  ADD KEY `panch_id` (`panch_id`),
  ADD KEY `hos_id` (`hos_id`);

--
-- Indexes for table `tbl_cvdtest`
--
ALTER TABLE `tbl_cvdtest`
  ADD PRIMARY KEY (`ctest_id`),
  ADD KEY `panch_id` (`panch_id`),
  ADD KEY `hos_id` (`hos_id`),
  ADD KEY `log_id` (`log_id`),
  ADD KEY `ward_id` (`ward_id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `tbl_death`
--
ALTER TABLE `tbl_death`
  ADD PRIMARY KEY (`de_id`),
  ADD KEY `det_id` (`det_id`);

--
-- Indexes for table `tbl_docscdl`
--
ALTER TABLE `tbl_docscdl`
  ADD PRIMARY KEY (`sc_id`),
  ADD KEY `doc_id` (`doc_id`);

--
-- Indexes for table `tbl_docsch`
--
ALTER TABLE `tbl_docsch`
  ADD PRIMARY KEY (`sch_id`),
  ADD KEY `doc_id` (`doc_id`),
  ADD KEY `slot_id` (`slot_id`);

--
-- Indexes for table `tbl_doctor`
--
ALTER TABLE `tbl_doctor`
  ADD PRIMARY KEY (`doc_id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `h_id` (`h_id`);

--
-- Indexes for table `tbl_doc_cat`
--
ALTER TABLE `tbl_doc_cat`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_hospital`
--
ALTER TABLE `tbl_hospital`
  ADD PRIMARY KEY (`h_id`),
  ADD KEY `login_id` (`login_id`),
  ADD KEY `tbl_hospital_ibfk_2` (`panch_id`);

--
-- Indexes for table `tbl_hosvacc`
--
ALTER TABLE `tbl_hosvacc`
  ADD PRIMARY KEY (`hvac_id`),
  ADD KEY `hos_id` (`hos_id`),
  ADD KEY `vac_id` (`vac_id`);

--
-- Indexes for table `tbl_hosvaccsch`
--
ALTER TABLE `tbl_hosvaccsch`
  ADD PRIMARY KEY (`hvs_id`),
  ADD KEY `hvac_id` (`hvac_id`),
  ADD KEY `tset_id` (`tset_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `tbl_panchayath`
--
ALTER TABLE `tbl_panchayath`
  ADD PRIMARY KEY (`panch_id`),
  ADD KEY `login_id` (`login_id`);

--
-- Indexes for table `tbl_panchvacc`
--
ALTER TABLE `tbl_panchvacc`
  ADD PRIMARY KEY (`pvacc_id`),
  ADD KEY `vac_id` (`vac_id`),
  ADD KEY `panch_id` (`panch_id`);

--
-- Indexes for table `tbl_paymnt`
--
ALTER TABLE `tbl_paymnt`
  ADD PRIMARY KEY (`pamnt_id`),
  ADD KEY `log_id` (`log_id`),
  ADD KEY `cvd_id` (`cvd_id`);

--
-- Indexes for table `tbl_posthos`
--
ALTER TABLE `tbl_posthos`
  ADD PRIMARY KEY (`pt_id`),
  ADD KEY `panch_id` (`panch_id`),
  ADD KEY `h_id` (`h_id`),
  ADD KEY `ward_num` (`ward_num`);

--
-- Indexes for table `tbl_pstvlist`
--
ALTER TABLE `tbl_pstvlist`
  ADD PRIMARY KEY (`pst_id`),
  ADD KEY `det_id` (`det_id`);

--
-- Indexes for table `tbl_register`
--
ALTER TABLE `tbl_register`
  ADD PRIMARY KEY (`r_id`),
  ADD KEY `login_id` (`login_id`),
  ADD KEY `panch_id` (`panch_id`);

--
-- Indexes for table `tbl_testtype`
--
ALTER TABLE `tbl_testtype`
  ADD PRIMARY KEY (`tety_id`);

--
-- Indexes for table `tbl_timeset`
--
ALTER TABLE `tbl_timeset`
  ADD PRIMARY KEY (`tset_id`);

--
-- Indexes for table `tbl_timeslot1`
--
ALTER TABLE `tbl_timeslot1`
  ADD PRIMARY KEY (`tm_id`);

--
-- Indexes for table `tbl_timeslots`
--
ALTER TABLE `tbl_timeslots`
  ADD PRIMARY KEY (`time_id`);

--
-- Indexes for table `tbl_uservacc`
--
ALTER TABLE `tbl_uservacc`
  ADD PRIMARY KEY (`uvac_id`),
  ADD KEY `panch_id` (`panch_id`),
  ADD KEY `tbl_uservacc_ibfk_2` (`hvs_id`);

--
-- Indexes for table `tbl_usvacc`
--
ALTER TABLE `tbl_usvacc`
  ADD PRIMARY KEY (`uvc_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `hvs_id` (`hvs_id`),
  ADD KEY `panch_id` (`panch_id`);

--
-- Indexes for table `tbl_vacc`
--
ALTER TABLE `tbl_vacc`
  ADD PRIMARY KEY (`vac_id`);

--
-- Indexes for table `tbl_vaccreq`
--
ALTER TABLE `tbl_vaccreq`
  ADD PRIMARY KEY (`req_id`),
  ADD KEY `h_id` (`h_id`),
  ADD KEY `panch_id` (`panch_id`),
  ADD KEY `tbl_vaccreq_ibfk_3` (`vac_id`);

--
-- Indexes for table `tbl_wards`
--
ALTER TABLE `tbl_wards`
  ADD PRIMARY KEY (`ward_id`),
  ADD KEY `panch_id` (`panch_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_ashaworker`
--
ALTER TABLE `tbl_ashaworker`
  MODIFY `as_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_cntlist`
--
ALTER TABLE `tbl_cntlist`
  MODIFY `cnt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_consultreg`
--
ALTER TABLE `tbl_consultreg`
  MODIFY `cons_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_cont`
--
ALTER TABLE `tbl_cont`
  MODIFY `cnt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_containmentzone`
--
ALTER TABLE `tbl_containmentzone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_contdet`
--
ALTER TABLE `tbl_contdet`
  MODIFY `det_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_covpat`
--
ALTER TABLE `tbl_covpat`
  MODIFY `cpat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_cvdtest`
--
ALTER TABLE `tbl_cvdtest`
  MODIFY `ctest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_death`
--
ALTER TABLE `tbl_death`
  MODIFY `de_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_docscdl`
--
ALTER TABLE `tbl_docscdl`
  MODIFY `sc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_docsch`
--
ALTER TABLE `tbl_docsch`
  MODIFY `sch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_doctor`
--
ALTER TABLE `tbl_doctor`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_hospital`
--
ALTER TABLE `tbl_hospital`
  MODIFY `h_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_hosvacc`
--
ALTER TABLE `tbl_hosvacc`
  MODIFY `hvac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_hosvaccsch`
--
ALTER TABLE `tbl_hosvaccsch`
  MODIFY `hvs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tbl_panchayath`
--
ALTER TABLE `tbl_panchayath`
  MODIFY `panch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_panchvacc`
--
ALTER TABLE `tbl_panchvacc`
  MODIFY `pvacc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_paymnt`
--
ALTER TABLE `tbl_paymnt`
  MODIFY `pamnt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_posthos`
--
ALTER TABLE `tbl_posthos`
  MODIFY `pt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_pstvlist`
--
ALTER TABLE `tbl_pstvlist`
  MODIFY `pst_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_register`
--
ALTER TABLE `tbl_register`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_testtype`
--
ALTER TABLE `tbl_testtype`
  MODIFY `tety_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_timeset`
--
ALTER TABLE `tbl_timeset`
  MODIFY `tset_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_timeslot1`
--
ALTER TABLE `tbl_timeslot1`
  MODIFY `tm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_timeslots`
--
ALTER TABLE `tbl_timeslots`
  MODIFY `time_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_uservacc`
--
ALTER TABLE `tbl_uservacc`
  MODIFY `uvac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_usvacc`
--
ALTER TABLE `tbl_usvacc`
  MODIFY `uvc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_vacc`
--
ALTER TABLE `tbl_vacc`
  MODIFY `vac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_vaccreq`
--
ALTER TABLE `tbl_vaccreq`
  MODIFY `req_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_wards`
--
ALTER TABLE `tbl_wards`
  MODIFY `ward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_ashaworker`
--
ALTER TABLE `tbl_ashaworker`
  ADD CONSTRAINT `tbl_ashaworker_ibfk_1` FOREIGN KEY (`wa_id`) REFERENCES `tbl_wards` (`ward_id`),
  ADD CONSTRAINT `tbl_ashaworker_ibfk_2` FOREIGN KEY (`login_id`) REFERENCES `tbl_login` (`login_id`);

--
-- Constraints for table `tbl_cntlist`
--
ALTER TABLE `tbl_cntlist`
  ADD CONSTRAINT `tbl_cntlist_ibfk_1` FOREIGN KEY (`pt_id`) REFERENCES `tbl_posthos` (`pt_id`);

--
-- Constraints for table `tbl_consultreg`
--
ALTER TABLE `tbl_consultreg`
  ADD CONSTRAINT `tbl_consultreg_ibfk_2` FOREIGN KEY (`sch_id`) REFERENCES `tbl_docsch` (`sch_id`),
  ADD CONSTRAINT `tbl_consultreg_ibfk_3` FOREIGN KEY (`log_id`) REFERENCES `tbl_login` (`login_id`);

--
-- Constraints for table `tbl_cont`
--
ALTER TABLE `tbl_cont`
  ADD CONSTRAINT `tbl_cont_ibfk_1` FOREIGN KEY (`pt_id`) REFERENCES `tbl_pstvlist` (`pst_id`);

--
-- Constraints for table `tbl_containmentzone`
--
ALTER TABLE `tbl_containmentzone`
  ADD CONSTRAINT `tbl_containmentzone_ibfk_1` FOREIGN KEY (`ward_id`) REFERENCES `tbl_wards` (`ward_id`);

--
-- Constraints for table `tbl_contdet`
--
ALTER TABLE `tbl_contdet`
  ADD CONSTRAINT `tbl_contdet_ibfk_1` FOREIGN KEY (`zone_id`) REFERENCES `tbl_containmentzone` (`zone_id`);

--
-- Constraints for table `tbl_covpat`
--
ALTER TABLE `tbl_covpat`
  ADD CONSTRAINT `tbl_covpat_ibfk_1` FOREIGN KEY (`panch_id`) REFERENCES `tbl_panchayath` (`panch_id`),
  ADD CONSTRAINT `tbl_covpat_ibfk_2` FOREIGN KEY (`hos_id`) REFERENCES `tbl_hospital` (`h_id`);

--
-- Constraints for table `tbl_cvdtest`
--
ALTER TABLE `tbl_cvdtest`
  ADD CONSTRAINT `tbl_cvdtest_ibfk_1` FOREIGN KEY (`panch_id`) REFERENCES `tbl_panchayath` (`panch_id`),
  ADD CONSTRAINT `tbl_cvdtest_ibfk_2` FOREIGN KEY (`hos_id`) REFERENCES `tbl_hospital` (`h_id`),
  ADD CONSTRAINT `tbl_cvdtest_ibfk_3` FOREIGN KEY (`log_id`) REFERENCES `tbl_login` (`login_id`),
  ADD CONSTRAINT `tbl_cvdtest_ibfk_4` FOREIGN KEY (`ward_id`) REFERENCES `tbl_wards` (`ward_id`),
  ADD CONSTRAINT `tbl_cvdtest_ibfk_5` FOREIGN KEY (`type`) REFERENCES `tbl_testtype` (`tety_id`);

--
-- Constraints for table `tbl_death`
--
ALTER TABLE `tbl_death`
  ADD CONSTRAINT `tbl_death_ibfk_1` FOREIGN KEY (`det_id`) REFERENCES `tbl_contdet` (`det_id`);

--
-- Constraints for table `tbl_docscdl`
--
ALTER TABLE `tbl_docscdl`
  ADD CONSTRAINT `tbl_docscdl_ibfk_1` FOREIGN KEY (`doc_id`) REFERENCES `tbl_doctor` (`doc_id`);

--
-- Constraints for table `tbl_docsch`
--
ALTER TABLE `tbl_docsch`
  ADD CONSTRAINT `tbl_docsch_ibfk_1` FOREIGN KEY (`doc_id`) REFERENCES `tbl_doctor` (`doc_id`),
  ADD CONSTRAINT `tbl_docsch_ibfk_2` FOREIGN KEY (`slot_id`) REFERENCES `tbl_timeset` (`tset_id`);

--
-- Constraints for table `tbl_doctor`
--
ALTER TABLE `tbl_doctor`
  ADD CONSTRAINT `tbl_doctor_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `tbl_doc_cat` (`cat_id`),
  ADD CONSTRAINT `tbl_doctor_ibfk_2` FOREIGN KEY (`h_id`) REFERENCES `tbl_hospital` (`h_id`);

--
-- Constraints for table `tbl_hospital`
--
ALTER TABLE `tbl_hospital`
  ADD CONSTRAINT `tbl_hospital_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `tbl_login` (`login_id`),
  ADD CONSTRAINT `tbl_hospital_ibfk_2` FOREIGN KEY (`panch_id`) REFERENCES `tbl_panchayath` (`panch_id`);

--
-- Constraints for table `tbl_hosvacc`
--
ALTER TABLE `tbl_hosvacc`
  ADD CONSTRAINT `tbl_hosvacc_ibfk_1` FOREIGN KEY (`hos_id`) REFERENCES `tbl_hospital` (`h_id`),
  ADD CONSTRAINT `tbl_hosvacc_ibfk_2` FOREIGN KEY (`vac_id`) REFERENCES `tbl_vacc` (`vac_id`);

--
-- Constraints for table `tbl_hosvaccsch`
--
ALTER TABLE `tbl_hosvaccsch`
  ADD CONSTRAINT `tbl_hosvaccsch_ibfk_1` FOREIGN KEY (`hvac_id`) REFERENCES `tbl_hosvacc` (`hvac_id`),
  ADD CONSTRAINT `tbl_hosvaccsch_ibfk_2` FOREIGN KEY (`tset_id`) REFERENCES `tbl_timeset` (`tset_id`);

--
-- Constraints for table `tbl_panchayath`
--
ALTER TABLE `tbl_panchayath`
  ADD CONSTRAINT `tbl_panchayath_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `tbl_login` (`login_id`);

--
-- Constraints for table `tbl_panchvacc`
--
ALTER TABLE `tbl_panchvacc`
  ADD CONSTRAINT `tbl_panchvacc_ibfk_1` FOREIGN KEY (`vac_id`) REFERENCES `tbl_vacc` (`vac_id`),
  ADD CONSTRAINT `tbl_panchvacc_ibfk_2` FOREIGN KEY (`panch_id`) REFERENCES `tbl_panchayath` (`panch_id`);

--
-- Constraints for table `tbl_paymnt`
--
ALTER TABLE `tbl_paymnt`
  ADD CONSTRAINT `tbl_paymnt_ibfk_1` FOREIGN KEY (`log_id`) REFERENCES `tbl_login` (`login_id`),
  ADD CONSTRAINT `tbl_paymnt_ibfk_2` FOREIGN KEY (`cvd_id`) REFERENCES `tbl_cvdtest` (`ctest_id`);

--
-- Constraints for table `tbl_posthos`
--
ALTER TABLE `tbl_posthos`
  ADD CONSTRAINT `tbl_posthos_ibfk_1` FOREIGN KEY (`panch_id`) REFERENCES `tbl_panchayath` (`panch_id`),
  ADD CONSTRAINT `tbl_posthos_ibfk_2` FOREIGN KEY (`h_id`) REFERENCES `tbl_hospital` (`h_id`),
  ADD CONSTRAINT `tbl_posthos_ibfk_3` FOREIGN KEY (`ward_num`) REFERENCES `tbl_wards` (`ward_id`);

--
-- Constraints for table `tbl_pstvlist`
--
ALTER TABLE `tbl_pstvlist`
  ADD CONSTRAINT `tbl_pstvlist_ibfk_1` FOREIGN KEY (`det_id`) REFERENCES `tbl_contdet` (`det_id`);

--
-- Constraints for table `tbl_register`
--
ALTER TABLE `tbl_register`
  ADD CONSTRAINT `tbl_register_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `tbl_login` (`login_id`),
  ADD CONSTRAINT `tbl_register_ibfk_2` FOREIGN KEY (`panch_id`) REFERENCES `tbl_panchayath` (`panch_id`);

--
-- Constraints for table `tbl_uservacc`
--
ALTER TABLE `tbl_uservacc`
  ADD CONSTRAINT `tbl_uservacc_ibfk_1` FOREIGN KEY (`panch_id`) REFERENCES `tbl_panchayath` (`panch_id`),
  ADD CONSTRAINT `tbl_uservacc_ibfk_2` FOREIGN KEY (`hvs_id`) REFERENCES `tbl_hosvaccsch` (`hvs_id`);

--
-- Constraints for table `tbl_usvacc`
--
ALTER TABLE `tbl_usvacc`
  ADD CONSTRAINT `tbl_usvacc_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_register` (`r_id`),
  ADD CONSTRAINT `tbl_usvacc_ibfk_2` FOREIGN KEY (`hvs_id`) REFERENCES `tbl_hosvaccsch` (`hvs_id`),
  ADD CONSTRAINT `tbl_usvacc_ibfk_3` FOREIGN KEY (`panch_id`) REFERENCES `tbl_panchayath` (`panch_id`);

--
-- Constraints for table `tbl_vaccreq`
--
ALTER TABLE `tbl_vaccreq`
  ADD CONSTRAINT `tbl_vaccreq_ibfk_1` FOREIGN KEY (`h_id`) REFERENCES `tbl_hospital` (`h_id`),
  ADD CONSTRAINT `tbl_vaccreq_ibfk_2` FOREIGN KEY (`panch_id`) REFERENCES `tbl_panchayath` (`panch_id`),
  ADD CONSTRAINT `tbl_vaccreq_ibfk_3` FOREIGN KEY (`vac_id`) REFERENCES `tbl_vacc` (`vac_id`);

--
-- Constraints for table `tbl_wards`
--
ALTER TABLE `tbl_wards`
  ADD CONSTRAINT `tbl_wards_ibfk_1` FOREIGN KEY (`panch_id`) REFERENCES `tbl_panchayath` (`panch_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
