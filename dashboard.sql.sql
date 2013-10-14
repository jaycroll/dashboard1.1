-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 17, 2013 at 01:39 AM
-- Server version: 5.1.33
-- PHP Version: 5.2.9-2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dashboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `app`
--

DROP TABLE IF EXISTS `app`;
CREATE TABLE IF NOT EXISTS `app` (
  `app_id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`app_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `app`
--

INSERT INTO `app` (`app_id`, `app_name`) VALUES
(1, 'SMTGCASH'),
(2, 'PC2MWEBDOM'),
(3, 'LocalAmaxInterface '),
(4, 'PC2MWEBINTL'),
(5, 'AmaxDomesticAPI'),
(6, 'HKCSL2'),
(7, 'PII-API'),
(8, 'SMTAMAX'),
(9, 'SUBWAYAPI');

-- --------------------------------------------------------

--
-- Table structure for table `channel`
--

DROP TABLE IF EXISTS `channel`;
CREATE TABLE IF NOT EXISTS `channel` (
  `channel_id` int(11) NOT NULL DEFAULT '0',
  `channel_name` varchar(50) DEFAULT NULL,
  `channel_group_id` int(11) DEFAULT NULL,
  `channel_automated` enum('No','Yes') DEFAULT 'No',
  `app_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`channel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `channel`
--

INSERT INTO `channel` (`channel_id`, `channel_name`, `channel_group_id`, `channel_automated`, `app_id`) VALUES
(1, 'pctomobile domestic', 1, 'Yes', 2),
(2, 'direct connect', 1, 'Yes', 5),
(3, 'batch processing', 1, 'Yes', 3),
(4, 'pctomobile intl', 2, 'Yes', 4),
(5, 'smartone gcash', 2, 'Yes', 1),
(6, 'smartone amax', 2, 'Yes', 8),
(7, 'hkcsl amax', 2, 'Yes', 6),
(8, 'intl api', 2, 'Yes', 7),
(9, 'ubp mbs', 3, 'No', NULL),
(10, 'ubp maintenance', 3, 'No', NULL),
(11, 'pnb mbs', 3, 'No', NULL),
(12, 'pnb maintenance', 3, 'No', NULL),
(13, 'bdo mbs', 3, 'No', NULL),
(14, 'bdo maintenance', 3, 'No', NULL),
(15, 'development fees', 4, 'No', NULL),
(16, 'VAS', 5, 'No', NULL),
(17, 'DonateALoad', 6, 'No', NULL),
(18, 'p2p', 6, 'No', NULL),
(19, 'GCash Transaction Fee', 2, 'No', NULL),
(20, 'Amax Sim based', 6, 'No', NULL),
(21, 'Cards', 6, 'No', NULL),
(22, 'Prepaid Sim', 6, 'No', NULL),
(23, 'Retailer Sim', 6, 'No', NULL),
(24, 'Broadband', 6, 'No', NULL),
(25, 'Epins', 2, 'No', NULL),
(26, 'Epins Domestic', 1, 'No', NULL),
(27, 'Smart Sun', 1, 'Yes', 9);

-- --------------------------------------------------------

--
-- Table structure for table `channel_group`
--

DROP TABLE IF EXISTS `channel_group`;
CREATE TABLE IF NOT EXISTS `channel_group` (
  `channel_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_group_name` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`channel_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `channel_group`
--

INSERT INTO `channel_group` (`channel_group_id`, `channel_group_name`, `category`) VALUES
(1, 'Domestic Web', 'Domestic'),
(2, 'International Web', 'International'),
(3, 'MBS', 'Domestic'),
(4, 'Development', 'Domestic'),
(5, 'others', 'Domestic'),
(6, 'Sales', 'Domestic');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`) VALUES
(3, 'Development'),
(2, 'Sales Team'),
(1, 'Overall'),
(4, 'Administrative');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE IF NOT EXISTS `modules` (
  `moduleid` int(11) NOT NULL AUTO_INCREMENT,
  `modulename` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`moduleid`),
  UNIQUE KEY `modulename` (`modulename`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`moduleid`, `modulename`) VALUES
(1, 'user management'),
(2, 'roles management'),
(3, 'privileges management'),
(4, 'target management'),
(5, 'product sales management'),
(6, 'channel management'),
(7, 'company projection'),
(8, 'team projection'),
(9, 'area projection'),
(10, 'area management'),
(11, 'team management'),
(12, 'inventory management'),
(13, 'order management'),
(14, 'payment management'),
(15, 'delivery management');

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

DROP TABLE IF EXISTS `privileges`;
CREATE TABLE IF NOT EXISTS `privileges` (
  `privilegeid` int(11) NOT NULL,
  `privilege` varchar(50) DEFAULT NULL,
  UNIQUE KEY `privilege` (`privilege`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `privileges`
--

INSERT INTO `privileges` (`privilegeid`, `privilege`) VALUES
(1, 'add'),
(2, 'edit'),
(3, 'verify'),
(4, 'disable'),
(5, 'Delete'),
(6, 'view'),
(7, 'search'),
(8, 'update own password'),
(9, 'deactivate'),
(10, 'view history'),
(11, 'return inventory'),
(12, 'own records'),
(13, 'area records'),
(14, 'territory records'),
(15, 'TestModule');

-- --------------------------------------------------------

--
-- Table structure for table `revenue_channels`
--

DROP TABLE IF EXISTS `revenue_channels`;
CREATE TABLE IF NOT EXISTS `revenue_channels` (
  `channel_id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_name` varchar(50) DEFAULT NULL,
  `channel_group` varchar(50) DEFAULT NULL,
  `automated` enum('No','Yes') DEFAULT 'No',
  `appname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`channel_id`),
  UNIQUE KEY `channel_name` (`channel_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `revenue_channels`
--

INSERT INTO `revenue_channels` (`channel_id`, `channel_name`, `channel_group`, `automated`, `appname`) VALUES
(1, 'pctomobile domestic', 'domestic web', 'Yes', 'PC2MWEBDOM'),
(2, 'direct connect', 'domestic web', 'Yes', 'AmaxDomesticAPI'),
(3, 'batch processing', 'domestic web', 'Yes', 'LocalAmaxInterface'),
(4, 'pctomobile intl', 'intl web', 'Yes', 'PC2MWEBINTL'),
(5, 'smartone gcash', 'intl web', 'Yes', 'SMTGCASH'),
(6, 'smartone amax', 'intl web', 'Yes', 'SMTAMAX'),
(7, 'hkcsl amax', 'intl web', 'Yes', 'HKCSL2'),
(8, 'intl api', 'intl web', 'Yes', 'PII-API'),
(9, 'ubp mbs', 'mbs', 'No', NULL),
(10, 'ubp maintenance', 'mbs', 'No', NULL),
(11, 'pnb mbs', 'mbs', 'No', NULL),
(12, 'pnb maintenance', 'mbs', 'No', NULL),
(13, 'bdo mbs', 'mbs', 'No', NULL),
(14, 'bdo maintenance', 'mbs', 'No', NULL),
(15, 'development fees', 'Development', 'No', NULL),
(16, 'VAS', 'others', 'No', NULL),
(17, 'DonateALoad', 'Sales', 'No', NULL),
(18, 'p2p', 'Sales', 'No', NULL),
(19, 'GCash Transaction Fee', 'intl web', 'No', NULL),
(20, 'Amax Sim based', 'Sales', 'No', NULL),
(21, 'Cards', 'Sales', 'No', NULL),
(22, 'Prepaid Sim', 'Sales', 'No', NULL),
(23, 'Retailer Sim', 'Sales', 'No', NULL),
(24, 'Broadband', 'Sales', 'No', NULL),
(25, 'Epins', 'Sales', 'No', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `revenue_partners_summary`
--

DROP TABLE IF EXISTS `revenue_partners_summary`;
CREATE TABLE IF NOT EXISTS `revenue_partners_summary` (
  `channel_id` int(11) NOT NULL,
  `revenue_date` date NOT NULL,
  `amount` float(10,3) DEFAULT NULL,
  `partnername` varchar(50) DEFAULT NULL,
  `revenue_type` enum('Sales','LOP','Refund','Variance','FaceValueSales','DecrementedValueSales','Adjustment','Payable','Income') DEFAULT NULL,
  KEY `rps_date` (`revenue_date`,`channel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Triggers `revenue_partners_summary`
--
DROP TRIGGER IF EXISTS `dashboard`.`revenue_partners_summary_update`;
DELIMITER //
CREATE TRIGGER `dashboard`.`revenue_partners_summary_update` AFTER UPDATE ON `dashboard`.`revenue_partners_summary`
 FOR EACH ROW begin
       if NEW.revenue_type = 'Sales' then
     delete from revenue_report where channel_id = NEW.channel_id and revenue_date = NEW.revenue_date and revenue_type = 'Sales';
     insert into revenue_report(channel_id, revenue_date, amount, revenue_type)
      select channel_id, revenue_date, sum(amount), case when revenue_type = 'Sales'
     then 'Sales'  else '' end from revenue_partners_summary where revenue_type in ('Sales') and date_format(revenue_date,'%Y-%m-%d') = date_format(NEW.revenue_date,'%Y-%m-%d') and channel_id = NEW.channel_id group by channel_id, revenue_date, revenue_type;
end if;
     end
//
DELIMITER ;

--
-- Dumping data for table `revenue_partners_summary`
--


-- --------------------------------------------------------

--
-- Table structure for table `revenue_report`
--

DROP TABLE IF EXISTS `revenue_report`;
CREATE TABLE IF NOT EXISTS `revenue_report` (
  `channel_id` int(11) NOT NULL,
  `revenue_date` date DEFAULT NULL,
  `amount` float(10,3) DEFAULT NULL,
  `revenue_type` enum('Sales','LOP','Refund') DEFAULT NULL,
  `reference` varchar(10) DEFAULT NULL,
  KEY `revenue_idx` (`revenue_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `revenue_report`
--


-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(50) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`roleid`),
  UNIQUE KEY `rolename` (`rolename`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`roleid`, `rolename`, `department_id`) VALUES
(1, 'Super Admin', 4),
(2, 'Sales Manager', 2),
(3, 'Sales Operations Admin', 2),
(4, 'Sales Team Leader', 2),
(5, 'Sales Agent', 2),
(6, 'Finance', 4),
(29, 'Development', 3),
(30, 'QA Master', 3),
(31, 'Director', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_privileges`
--

DROP TABLE IF EXISTS `role_privileges`;
CREATE TABLE IF NOT EXISTS `role_privileges` (
  `roleid` int(11) DEFAULT NULL,
  `moduleid` int(11) DEFAULT NULL,
  `privilege_mode` varchar(50) DEFAULT NULL,
  `privilege_status` enum('disabled','enabled') DEFAULT 'disabled'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_privileges`
--

INSERT INTO `role_privileges` (`roleid`, `moduleid`, `privilege_mode`, `privilege_status`) VALUES
(29, 1, '00111111111111', 'enabled'),
(29, 2, '11111111111111', 'disabled'),
(29, 3, '01111111111111', 'enabled'),
(29, 4, '11111111111111', 'disabled'),
(29, 5, '11111111111111', 'disabled'),
(29, 6, '11111111111111', 'disabled'),
(29, 7, '11111111111111', 'disabled'),
(29, 8, '11111111111111', 'disabled'),
(29, 9, '11111111111111', 'disabled'),
(29, 10, '11111111111111', 'disabled'),
(29, 11, '11111111111111', 'disabled'),
(29, 12, '11111111111111', 'disabled'),
(29, 13, '11111111111111', 'disabled'),
(29, 14, '11111111111111', 'disabled'),
(29, 15, '11111111111111', 'disabled'),
(30, 1, '000011111111000', 'enabled'),
(30, 2, '111111111111110', 'disabled'),
(30, 3, '011111111111110', 'enabled'),
(30, 4, '111011111111110', 'enabled'),
(30, 5, '111111111111110', 'disabled'),
(30, 6, '111111111111110', 'disabled'),
(30, 7, '111111111111110', 'disabled'),
(30, 8, '111111111111110', 'enabled'),
(30, 9, '111111111111110', 'enabled'),
(30, 10, '111111111111110', 'disabled'),
(30, 11, '111111111111110', 'disabled'),
(30, 12, '111111111111110', 'disabled'),
(30, 13, '111111111111110', 'disabled'),
(3, 14, '111111111111110', 'enabled'),
(30, 15, '111111011111110', 'disabled'),
(1, 1, '111111111111111', 'enabled'),
(1, 2, '111111111111111', 'enabled'),
(1, 3, '111111111111111', 'enabled'),
(1, 4, '111111111111111', 'enabled'),
(1, 5, '111111111111111', 'enabled'),
(1, 6, '111111111111111', 'enabled'),
(1, 7, '111111111111111', 'enabled'),
(1, 8, '111111111111111', 'enabled'),
(1, 9, '111111111111111', 'enabled'),
(1, 10, '111111111111111', 'enabled'),
(1, 11, '111111111111111', 'enabled'),
(1, 12, '111111111111111', 'enabled'),
(1, 13, '111111111111111', 'disabled'),
(1, 14, '111111111111111', 'disabled'),
(1, 15, '111111111111111', 'disabled'),
(31, 1, '111111111111111', 'disabled'),
(31, 2, '111111111111111', 'disabled'),
(31, 3, '111111111111111', 'disabled'),
(31, 4, '111111111111111', 'disabled'),
(31, 5, '111111111111111', 'disabled'),
(31, 6, '111111111111111', 'disabled'),
(31, 7, '111111111111111', 'enabled'),
(31, 8, '111111111111111', 'enabled'),
(31, 9, '111111111111111', 'enabled'),
(31, 10, '111111111111111', 'disabled'),
(31, 11, '111111111111111', 'disabled'),
(31, 12, '111111111111111', 'disabled'),
(31, 13, '111111111111111', 'disabled'),
(31, 14, '111111111111111', 'disabled'),
(31, 15, '111111111111111', 'disabled'),
(2, 1, '111111111111111', 'disabled'),
(2, 2, '111111111111111', 'disabled'),
(2, 3, '111111111111111', 'disabled'),
(2, 4, '111111111111111', 'enabled'),
(2, 5, '111111111111111', 'disabled'),
(2, 6, '111111111111111', 'disabled'),
(2, 7, '111111111111111', 'enabled'),
(2, 8, '111111111111111', 'enabled'),
(2, 9, '111111111111111', 'enabled'),
(2, 10, '111111111111111', 'enabled'),
(2, 11, '111111111111111', 'enabled'),
(2, 12, '111111111111111', 'enabled'),
(2, 13, '111111111111111', 'enabled'),
(2, 14, '111111111111111', 'enabled'),
(2, 15, '111111111111111', 'enabled'),
(3, 1, '111111111111111', 'disabled'),
(3, 2, '111111111111111', 'disabled'),
(3, 3, '111111111111111', 'disabled'),
(3, 4, '111111111111111', 'disabled'),
(3, 5, '111111111111111', 'enabled'),
(3, 6, '111111111111111', 'disabled'),
(3, 7, '111111111111111', 'disabled'),
(3, 8, '111111111111111', 'enabled'),
(3, 9, '111111111111111', 'enabled'),
(3, 10, '111111111111111', 'enabled'),
(3, 11, '111111111111111', 'enabled'),
(3, 12, '111111111111111', 'enabled'),
(3, 13, '111111111111111', 'enabled'),
(3, 15, '111111111111111', 'enabled'),
(4, 1, '111111111111111', 'disabled'),
(4, 2, '111111111111111', 'disabled'),
(4, 3, '111111111111111', 'disabled'),
(4, 4, '111111111111111', 'disabled'),
(4, 5, '111111111111111', 'disabled'),
(4, 6, '111111111111111', 'disabled'),
(4, 7, '111111111111111', 'disabled'),
(4, 8, '111111111111111', 'enabled'),
(4, 9, '111111111111111', 'enabled'),
(4, 10, '111111111111111', 'disabled'),
(4, 11, '111111111111111', 'disabled'),
(4, 12, '111111111111111', 'disabled'),
(4, 13, '111111111111111', 'disabled'),
(4, 14, '111111111111111', 'disabled'),
(4, 15, '111111111111111', 'disabled'),
(30, 14, '111111111111111', 'disabled'),
(6, 1, '111111111111111', 'disabled'),
(6, 2, '111111111111111', 'disabled'),
(6, 3, '111111111111111', 'disabled'),
(6, 4, '111111111111111', 'disabled'),
(6, 5, '111111111111111', 'disabled'),
(6, 6, '111111111111111', 'disabled'),
(6, 7, '111111111111111', 'disabled'),
(6, 8, '111111111111111', 'disabled'),
(6, 9, '111111111111111', 'disabled'),
(6, 10, '111111111111111', 'disabled'),
(6, 11, '111111111111111', 'disabled'),
(6, 12, '111111111111111', 'disabled'),
(6, 13, '111111111111111', 'enabled'),
(6, 14, '111111111111111', 'enabled'),
(6, 15, '111111111111111', 'enabled');

-- --------------------------------------------------------

--
-- Table structure for table `salesuser_bridge`
--

DROP TABLE IF EXISTS `salesuser_bridge`;
CREATE TABLE IF NOT EXISTS `salesuser_bridge` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `agentid` int(11) NOT NULL DEFAULT '0',
  `salesuserid` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `salesuser_bridge_primary` (`userid`,`agentid`,`salesuserid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesuser_bridge`
--

INSERT INTO `salesuser_bridge` (`userid`, `agentid`, `salesuserid`) VALUES
(2, 5, 2),
(6, 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `sales_revenue`
--

DROP TABLE IF EXISTS `sales_revenue`;
CREATE TABLE IF NOT EXISTS `sales_revenue` (
  `orderid` int(11) NOT NULL DEFAULT '0',
  `agentid` int(11) NOT NULL,
  `areaid` int(11) NOT NULL DEFAULT '0',
  `territoryid` int(11) NOT NULL DEFAULT '0',
  `amount` float(10,3) DEFAULT NULL,
  `completeddate` datetime NOT NULL,
  UNIQUE KEY `orderid` (`orderid`,`agentid`,`areaid`,`territoryid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_revenue`
--


-- --------------------------------------------------------

--
-- Table structure for table `sales_team_sales`
--

DROP TABLE IF EXISTS `sales_team_sales`;
CREATE TABLE IF NOT EXISTS `sales_team_sales` (
  `revenue_date` datetime DEFAULT NULL,
  `agentid` int(11) DEFAULT NULL,
  `amount` float(10,3) DEFAULT NULL,
  `revenue_type` enum('Sales','Refund') DEFAULT NULL,
  `sales_type` varchar(50) DEFAULT NULL,
  `areadid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_team_sales`
--


-- --------------------------------------------------------

--
-- Table structure for table `targets`
--

DROP TABLE IF EXISTS `targets`;
CREATE TABLE IF NOT EXISTS `targets` (
  `target_id` int(11) NOT NULL AUTO_INCREMENT,
  `target_date` date DEFAULT NULL,
  `target_amount` float(20,3) DEFAULT NULL,
  `target_group_id` int(11) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `target_datecreated` datetime DEFAULT NULL,
  PRIMARY KEY (`target_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `targets`
--

INSERT INTO `targets` (`target_id`, `target_date`, `target_amount`, `target_group_id`, `user_id`, `department_id`, `target_datecreated`) VALUES
(5, '2013-01-01', 56000000.000, 2, 0, 1, '2013-03-12 11:26:27'),
(6, '2013-02-01', 56000000.000, 2, 0, 1, '2013-03-12 11:26:52'),
(7, '2013-03-01', 56000000.000, 2, 0, 1, '2013-03-12 11:27:15'),
(8, '2013-04-01', 67200000.000, 2, 0, 1, '2013-03-12 11:28:00'),
(17, '2013-05-01', 80640000.000, 2, 0, 1, '2013-03-12 11:32:03'),
(10, '2013-06-01', 96768000.000, 2, 0, 1, '2013-03-12 11:28:49'),
(18, '2013-07-01', 70000000.000, 2, 0, 1, '2013-03-12 11:32:23'),
(12, '2013-08-01', 70000000.000, 2, 0, 1, '2013-03-12 11:29:47'),
(13, '2013-09-01', 70000000.000, 2, 0, 1, '2013-03-12 11:30:04'),
(14, '2013-10-01', 72800000.000, 2, 0, 1, '2013-03-12 11:30:26'),
(15, '2013-11-01', 72800000.000, 2, 0, 1, '2013-03-12 11:30:59'),
(16, '2013-12-01', 72800000.000, 2, 0, 1, '2013-03-12 11:31:22'),
(19, '2013-01-01', 841008000.000, 4, 0, 1, '2013-03-12 11:33:35');

-- --------------------------------------------------------

--
-- Table structure for table `target_group`
--

DROP TABLE IF EXISTS `target_group`;
CREATE TABLE IF NOT EXISTS `target_group` (
  `target_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `target_group_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`target_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `target_group`
--

INSERT INTO `target_group` (`target_group_id`, `target_group_name`) VALUES
(1, 'Daily'),
(2, 'Monthly'),
(3, 'Quarterly'),
(4, 'Yearly');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `userfirstname` varchar(30) DEFAULT NULL,
  `userlastname` varchar(30) DEFAULT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `status` enum('inactive','awol','resigned','terminated','active') DEFAULT 'active',
  `email_address` varchar(50) DEFAULT NULL,
  `mobile` varchar(15) NOT NULL,
  `roleid` int(11) DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `createddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hireddate` date DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `mobile` (`mobile`),
  UNIQUE KEY `email_address` (`email_address`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `userfirstname`, `userlastname`, `username`, `password`, `status`, `email_address`, `mobile`, `roleid`, `createdby`, `createddate`, `hireddate`, `birthdate`) VALUES
(1, 'Admin', 'Account', 'admin', 'f54dbca7c35255d2296c40d6766e63ad', 'active', 'xkremesites@gmail.com', '123', 1, 1, '2013-01-07 03:37:07', NULL, NULL),
(2, 'Developer', 'Account', 'dev', '8b19a5c86d15a714028a623da51b02ec', 'active', 'xkremesites@yahoo.com', '639063359229', 4, 1, '2013-06-20 18:41:25', '2012-12-15', '1985-04-12'),
(6, 'Ben', 'Ten', 'ben', 'b1b9a972ccd8c962a473909b97007eb4', 'active', 'test123@test.com', '123123', 5, 1, '2013-01-29 00:41:24', '2012-02-18', '1989-07-03'),
(7, 'edward', 'diwa', 'edward', '26f64dff909f72d5b967d9b69fa8ec07', 'active', 'edward.diwa@payexchangeinc.com', '09178062323', 31, 1, '2013-07-17 14:55:16', '2011-01-01', '1985-07-01'),
(8, 'tom', 'cat', 'tom', 'e0c102b336e6945a1a28d066379fe4a0', 'active', 'admin@payexchangeinc.com', '09151111111', 31, 1, '2013-07-23 09:38:53', '2006-02-17', '1986-07-04'),
(9, 'myla', 'factora', 'myla', '8c3a5a1e1d74e86fdd3702ffe047a211', 'active', 'myla.factora@payexchangeinc.com', '09175273640', 2, 1, '2013-07-17 14:54:18', '2005-02-17', '1988-03-02'),
(10, 'gladys', 'aldiosa', 'gladys', 'eb7b930d13c23b64caa33f332fe55003', 'active', 'gladys.aldiosa@payexchangeinc.com', '09175378000', 31, 1, '2013-07-24 10:46:50', '2006-02-16', '1987-02-02'),
(11, 'chato', 'espinosa', 'chato', 'bcc535578d0a3e42cc7cb0a2a6fabe74', 'active', 'chato.espinosa@payexchangeinc.com', '09175274926', 3, 1, '2013-06-10 15:13:45', '2005-03-14', '1986-02-02');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

DROP TABLE IF EXISTS `wallets`;
CREATE TABLE IF NOT EXISTS `wallets` (
  `name` varchar(15) NOT NULL,
  `wallet_type` varchar(15) DEFAULT NULL,
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`name`, `wallet_type`) VALUES
('AMAXLOCAL', 'AMAX'),
('PAYPHIL', 'AMAX'),
('ANTON', 'AMAX'),
('SUBWAY', 'AMAX'),
('PCTOMOBILE', 'AMAX'),
('SMTGCASH', 'GCASH'),
('PC2MGCASH', 'GCASH'),
('ANTONGCASH', 'GCASH'),
('PAYPHIL2-CONVER', 'AMAX');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_balances`
--

DROP TABLE IF EXISTS `wallet_balances`;
CREATE TABLE IF NOT EXISTS `wallet_balances` (
  `name` varchar(15) DEFAULT NULL,
  `balance_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `balance` float(10,3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet_balances`
--

INSERT INTO `wallet_balances` (`name`, `balance_date`, `balance`) VALUES
('ANTONGCASH', '2013-01-24 18:30:40', 0.000),
('PC2MGCASH', '2013-01-24 18:30:49', 26585.961),
('SMTGCASH', '2013-01-24 18:30:56', 1476438.500),
('PCTOMOBILE', '2013-01-24 18:40:03', 22.230),
('SUBWAY', '2013-01-24 18:40:10', 15.080),
('ANTON', '2013-01-24 18:40:16', 50.000),
('PAYPHIL', '2013-01-24 18:40:23', 2471430.000),
('AMAXLOCAL', '2013-01-24 18:40:34', 6.240),
('ANTONGCASH', '2013-01-24 18:40:41', 0.000),
('PC2MGCASH', '2013-01-24 18:40:49', 26585.961),
('SMTGCASH', '2013-01-24 18:40:57', 1476438.500),
('PCTOMOBILE', '2013-01-24 18:50:03', 22.230),
('SUBWAY', '2013-01-24 18:50:10', 15.080),
('ANTON', '2013-01-24 18:50:16', 50.000),
('PAYPHIL', '2013-01-24 18:50:23', 2456905.500),
('AMAXLOCAL', '2013-01-24 18:50:34', 6.240),
('ANTONGCASH', '2013-01-24 18:50:41', 0.000),
('PC2MGCASH', '2013-01-24 18:50:49', 26585.961),
('SMTGCASH', '2013-01-24 18:50:57', 1476438.500),
('PCTOMOBILE', '2013-01-24 19:00:04', 22.230),
('PCTOMOBILE', '2013-01-24 19:00:04', 22.230),
('SUBWAY', '2013-01-24 19:00:11', 15.080),
('SUBWAY', '2013-01-24 19:00:11', 15.080),
('ANTON', '2013-01-24 19:00:18', 50.000),
('ANTON', '2013-01-24 19:00:18', 50.000),
('PAYPHIL', '2013-01-24 19:00:25', 2441292.750),
('PAYPHIL', '2013-01-24 19:00:25', 2441292.750),
('AMAXLOCAL', '2013-01-24 19:00:37', 6.240),
('AMAXLOCAL', '2013-01-24 19:00:37', 6.240),
('ANTONGCASH', '2013-01-24 19:00:44', 0.000),
('ANTONGCASH', '2013-01-24 19:00:44', 0.000),
('PC2MGCASH', '2013-01-24 19:00:53', 26585.961),
('PC2MGCASH', '2013-01-24 19:00:53', 26585.961),
('SMTGCASH', '2013-01-24 19:01:01', 1476438.500),
('SMTGCASH', '2013-01-24 19:01:02', 1476438.500),
('PCTOMOBILE', '2013-01-24 19:10:02', 22.230),
('SUBWAY', '2013-01-24 19:10:09', 15.080),
('ANTON', '2013-01-24 19:10:15', 50.000),
('PC2MGCASH', '2013-08-06 14:20:56', 34010.461),
('SMTGCASH', '2013-08-06 14:21:04', 705019.000);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

DROP TABLE IF EXISTS `wallet_transactions`;
CREATE TABLE IF NOT EXISTS `wallet_transactions` (
  `transactiondate` date DEFAULT NULL,
  `wallet_name` varchar(15) DEFAULT NULL,
  `amount` float(10,3) DEFAULT NULL,
  `appname` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet_transactions`
--

INSERT INTO `wallet_transactions` (`transactiondate`, `wallet_name`, `amount`, `appname`) VALUES
('2012-10-02', 'PAYPHILLOCAL', 15.000, 'PC2MWEB'),
('2012-10-10', 'PAYPHILLOCAL', 10.000, 'PC2MWEB'),
('2012-11-09', 'PAYPHILLOCAL', 10.000, 'PC2MWEB'),
('2012-11-13', 'PAYPHILLOCAL', 10.000, 'PC2MWEB'),
('2012-11-14', 'PAYPHILLOCAL', 100.000, 'LocalAmaxInterf'),
('2012-11-14', 'PAYPHILLOCAL', 450.000, 'PC2MWEB'),
('2012-11-15', 'PAYPHILLOCAL', 680625.000, 'AmaxDomesticAPI'),
('2012-11-15', 'PAYPHILLOCAL', 4667.000, 'LocalAmaxInterf'),
('2012-11-15', 'PAYPHILLOCAL', 25.000, 'PC2MWEB'),
('2012-11-16', 'PAYPHILLOCAL', 513966.000, 'AmaxDomesticAPI'),
('2012-11-16', 'PAYPHILLOCAL', 20.000, 'PC2MWEB'),
('2012-11-17', 'PAYPHILLOCAL', 762238.000, 'AmaxDomesticAPI'),
('2012-11-17', 'PAYPHILLOCAL', 9566.000, 'LocalAmaxInterf'),
('2012-11-18', 'PAYPHILLOCAL', 632571.000, 'AmaxDomesticAPI'),
('2012-11-19', 'PAYPHILLOCAL', 788546.000, 'AmaxDomesticAPI'),
('2012-11-19', 'PAYPHILLOCAL', 400.000, 'PC2MWEB'),
('2012-11-20', 'PAYPHILLOCAL', 760818.000, 'AmaxDomesticAPI'),
('2012-11-21', 'PAYPHILLOCAL', 760891.000, 'AmaxDomesticAPI'),
('2012-11-21', 'PAYPHILLOCAL', 15940.000, 'LocalAmaxInterf'),
('2012-11-21', 'PAYPHILLOCAL', 10.000, 'PC2MWEB'),
('2012-11-22', 'PAYPHILLOCAL', 747403.000, 'AmaxDomesticAPI'),
('2012-11-22', 'PAYPHILLOCAL', 520.000, 'PC2MWEB'),
('2012-11-23', 'PAYPHILLOCAL', 1023331.000, 'AmaxDomesticAPI'),
('2012-11-23', 'PAYPHILLOCAL', 25.000, 'PC2MWEB'),
('2012-11-24', 'PAYPHILLOCAL', 1113135.000, 'AmaxDomesticAPI'),
('2012-11-24', 'PAYPHILLOCAL', 25.000, 'PC2MWEB'),
('2012-11-25', 'PAYPHILLOCAL', 908037.000, 'AmaxDomesticAPI'),
('2012-11-26', 'PAYPHILLOCAL', 1258103.000, 'AmaxDomesticAPI'),
('2012-11-26', 'PAYPHILLOCAL', 739.000, 'LocalAmaxInterf'),
('2012-11-26', 'PAYPHILLOCAL', 100.000, 'PC2MWEB'),
('2012-11-27', 'PAYPHILLOCAL', 1202883.000, 'AmaxDomesticAPI'),
('2012-11-27', 'PAYPHILLOCAL', 770.000, 'PC2MWEB'),
('2012-11-28', 'PAYPHILLOCAL', 1239641.000, 'AmaxDomesticAPI'),
('2012-11-28', 'PAYPHILLOCAL', 300.000, 'PC2MWEB'),
('2012-11-29', 'PAYPHILLOCAL', 1346258.000, 'AmaxDomesticAPI'),
('2012-11-29', 'PAYPHILLOCAL', 2010.000, 'PC2MWEB'),
('2012-11-30', 'PAYPHILLOCAL', 1108047.000, 'AmaxDomesticAPI'),
('2012-12-01', 'PAYPHILLOCAL', 1096374.000, 'AmaxDomesticAPI'),
('2012-12-02', 'PAYPHILLOCAL', 947100.000, 'AmaxDomesticAPI'),
('2012-12-03', 'PAYPHILLOCAL', 1360236.000, 'AmaxDomesticAPI'),
('2012-12-03', 'PAYPHILLOCAL', 5850.000, 'PC2MWEB'),
('2012-12-04', 'PAYPHILLOCAL', 1255856.000, 'AmaxDomesticAPI'),
('2012-12-04', 'PAYPHILLOCAL', 8106.000, 'LocalAmaxInterf'),
('2012-12-04', 'PAYPHILLOCAL', 2300.000, 'PC2MWEB'),
('2012-12-05', 'PAYPHILLOCAL', 1273969.000, 'AmaxDomesticAPI'),
('2012-12-05', 'PAYPHILLOCAL', 46900.000, 'PC2MWEB'),
('2012-12-06', 'PAYPHILLOCAL', 1237791.000, 'AmaxDomesticAPI'),
('2012-12-06', 'PAYPHILLOCAL', 32950.000, 'PC2MWEB'),
('2012-12-07', 'PAYPHILLOCAL', 1406091.000, 'AmaxDomesticAPI'),
('2012-12-07', 'PAYPHILLOCAL', 12758.000, 'LocalAmaxInterf'),
('2012-12-07', 'PAYPHILLOCAL', 5455.000, 'PC2MWEB'),
('2012-12-08', 'PAYPHILLOCAL', 1168653.000, 'AmaxDomesticAPI'),
('2012-12-08', 'PAYPHILLOCAL', 610.000, 'PC2MWEB'),
('2012-12-09', 'PAYPHILLOCAL', 945034.000, 'AmaxDomesticAPI'),
('2012-12-09', 'PAYPHILLOCAL', 10.000, 'PC2MWEB'),
('2012-12-10', 'PAYPHILLOCAL', 1242415.000, 'AmaxDomesticAPI'),
('2012-12-10', 'PAYPHILLOCAL', 66075.000, 'PC2MWEB'),
('2012-12-11', 'PAYPHILLOCAL', 1257016.000, 'AmaxDomesticAPI'),
('2012-12-11', 'PAYPHILLOCAL', 11894.000, 'LocalAmaxInterf'),
('2012-12-11', 'PAYPHILLOCAL', 1300.000, 'PC2MWEB'),
('2012-12-12', 'PAYPHILLOCAL', 1278439.000, 'AmaxDomesticAPI'),
('2012-12-12', 'PAYPHILLOCAL', 40000.000, 'PC2MWEB'),
('2012-12-13', 'PAYPHILLOCAL', 1272566.000, 'AmaxDomesticAPI'),
('2012-12-13', 'PAYPHILLOCAL', 30450.000, 'PC2MWEB'),
('2012-12-14', 'PAYPHILLOCAL', 1374206.000, 'AmaxDomesticAPI'),
('2012-12-14', 'PAYPHILLOCAL', 60210.000, 'LocalAmaxInterf'),
('2012-12-14', 'PAYPHILLOCAL', 35900.000, 'PC2MWEB'),
('2012-12-15', 'PAYPHILLOCAL', 1197990.000, 'AmaxDomesticAPI'),
('2012-12-15', 'PAYPHILLOCAL', 1800.000, 'PC2MWEB'),
('2012-12-16', 'PAYPHILLOCAL', 967979.000, 'AmaxDomesticAPI'),
('2012-12-16', 'PAYPHILLOCAL', 900.000, 'PC2MWEB'),
('2012-12-17', 'PAYPHILLOCAL', 1346812.000, 'AmaxDomesticAPI'),
('2012-12-17', 'PAYPHILLOCAL', 77320.000, 'PC2MWEB'),
('2012-12-18', 'PAYPHILLOCAL', 1338842.000, 'AmaxDomesticAPI'),
('2012-12-18', 'PAYPHILLOCAL', 20100.000, 'PC2MWEB'),
('2012-12-19', 'PAYPHILLOCAL', 1333991.000, 'AmaxDomesticAPI'),
('2012-12-19', 'PAYPHILLOCAL', 8911.000, 'LocalAmaxInterf'),
('2012-12-19', 'PAYPHILLOCAL', 53550.000, 'PC2MWEB'),
('2012-12-20', 'PAYPHILLOCAL', 1373524.000, 'AmaxDomesticAPI'),
('2012-12-20', 'PAYPHILLOCAL', 13883.000, 'LocalAmaxInterf'),
('2012-12-20', 'PAYPHILLOCAL', 55000.000, 'PC2MWEB'),
('2012-12-21', 'PAYPHILLOCAL', 1421881.000, 'AmaxDomesticAPI'),
('2012-12-21', 'PAYPHILLOCAL', 231550.000, 'PC2MWEB'),
('2012-12-22', 'PAYPHILLOCAL', 1340089.000, 'AmaxDomesticAPI'),
('2012-12-22', 'PAYPHILLOCAL', 2550.000, 'PC2MWEB'),
('2012-12-23', 'PAYPHILLOCAL', 1230864.000, 'AmaxDomesticAPI'),
('2012-12-23', 'PAYPHILLOCAL', 150.000, 'PC2MWEB'),
('2012-12-24', 'PAYPHILLOCAL', 1383460.000, 'AmaxDomesticAPI'),
('2012-12-24', 'PAYPHILLOCAL', 600.000, 'PC2MWEB'),
('2012-12-25', 'PAYPHILLOCAL', 974664.000, 'AmaxDomesticAPI'),
('2012-12-26', 'PAYPHILLOCAL', 1245118.000, 'AmaxDomesticAPI'),
('2012-12-26', 'PAYPHILLOCAL', 7950.000, 'LocalAmaxInterf'),
('2012-12-26', 'PAYPHILLOCAL', 52200.000, 'PC2MWEB'),
('2012-12-27', 'PAYPHILLOCAL', 1352800.000, 'AmaxDomesticAPI'),
('2012-12-27', 'PAYPHILLOCAL', 35550.000, 'PC2MWEB'),
('2012-12-28', 'PAYPHILLOCAL', 1411488.000, 'AmaxDomesticAPI'),
('2012-12-28', 'PAYPHILLOCAL', 51300.000, 'PC2MWEB'),
('2012-12-29', 'PAYPHILLOCAL', 1272202.000, 'AmaxDomesticAPI'),
('2012-12-29', 'PAYPHILLOCAL', 32400.000, 'PC2MWEB'),
('2012-12-30', 'PAYPHILLOCAL', 1133369.000, 'AmaxDomesticAPI'),
('2012-12-30', 'PAYPHILLOCAL', 3050.000, 'PC2MWEB'),
('2012-12-31', 'PAYPHILLOCAL', 1324185.000, 'AmaxDomesticAPI'),
('2012-12-31', 'PAYPHILLOCAL', 150.000, 'PC2MWEB'),
('2013-01-01', 'PAYPHILLOCAL', 741236.000, 'AmaxDomesticAPI'),
('2013-01-01', 'PAYPHILLOCAL', 600.000, 'PC2MWEB'),
('2013-01-02', 'PAYPHILLOCAL', 1258872.000, 'AmaxDomesticAPI'),
('2013-01-02', 'PAYPHILLOCAL', 71950.000, 'PC2MWEB'),
('2013-01-03', 'PAYPHILLOCAL', 1339504.000, 'AmaxDomesticAPI'),
('2013-01-03', 'PAYPHILLOCAL', 31540.000, 'PC2MWEB'),
('2013-01-04', 'PAYPHILLOCAL', 1395342.000, 'AmaxDomesticAPI'),
('2013-01-04', 'PAYPHILLOCAL', 72630.000, 'LocalAmaxInterf'),
('2013-01-04', 'PAYPHILLOCAL', 100500.000, 'PC2MWEB'),
('2013-01-05', 'PAYPHILLOCAL', 1139219.000, 'AmaxDomesticAPI'),
('2013-01-05', 'PAYPHILLOCAL', 1100.000, 'PC2MWEB'),
('2013-01-06', 'PAYPHILLOCAL', 990271.000, 'AmaxDomesticAPI'),
('2013-01-07', 'PAYPHILLOCAL', 1296037.000, 'AmaxDomesticAPI'),
('2013-01-07', 'PAYPHILLOCAL', 12362.000, 'LocalAmaxInterf'),
('2013-01-07', 'PAYPHILLOCAL', 73350.000, 'PC2MWEB'),
('2013-01-08', 'PAYPHILLOCAL', 1314290.000, 'AmaxDomesticAPI'),
('2013-01-08', 'PAYPHILLOCAL', 30.000, 'LocalAmaxInterf'),
('2013-01-08', 'PAYPHILLOCAL', 3450.000, 'PC2MWEB'),
('2013-01-09', 'PAYPHILLOCAL', 1311754.000, 'AmaxDomesticAPI'),
('2013-01-09', 'PAYPHILLOCAL', 41655.000, 'PC2MWEB'),
('2013-01-10', 'PAYPHILLOCAL', 1303550.000, 'AmaxDomesticAPI'),
('2013-01-10', 'PAYPHILLOCAL', 12055.000, 'LocalAmaxInterf'),
('2013-01-10', 'PAYPHILLOCAL', 22620.000, 'PC2MWEB'),
('2013-01-11', 'PAYPHILLOCAL', 1383422.000, 'AmaxDomesticAPI'),
('2013-01-11', 'PAYPHILLOCAL', 9119.000, 'LocalAmaxInterf'),
('2013-01-11', 'PAYPHILLOCAL', 31500.000, 'PC2MWEB'),
('2013-01-12', 'PAYPHILLOCAL', 1296306.000, 'AmaxDomesticAPI'),
('2013-01-12', 'PAYPHILLOCAL', 1350.000, 'PC2MWEB'),
('2013-01-13', 'PAYPHILLOCAL', 1083087.000, 'AmaxDomesticAPI'),
('2013-01-14', 'PAYPHILLOCAL', 1426845.000, 'AmaxDomesticAPI'),
('2013-01-14', 'PAYPHILLOCAL', 200.000, 'LocalAmaxInterf'),
('2013-01-14', 'PAYPHILLOCAL', 60450.000, 'PC2MWEB'),
('2013-01-15', 'PAYPHILLOCAL', 1366751.000, 'AmaxDomesticAPI'),
('2013-01-15', 'PAYPHILLOCAL', 200.000, 'LocalAmaxInterf'),
('2013-01-15', 'PAYPHILLOCAL', 43650.000, 'PC2MWEB'),
('2013-01-16', 'PAYPHILLOCAL', 1452355.000, 'AmaxDomesticAPI'),
('2013-01-16', 'PAYPHILLOCAL', 38759.000, 'LocalAmaxInterf'),
('2013-01-16', 'PAYPHILLOCAL', 81200.000, 'PC2MWEB'),
('2013-01-17', 'PAYPHILLOCAL', 1431785.000, 'AmaxDomesticAPI'),
('2013-01-17', 'PAYPHILLOCAL', 31350.000, 'PC2MWEB'),
('2013-01-18', 'PAYPHILLOCAL', 1478577.000, 'AmaxDomesticAPI'),
('2013-01-18', 'PAYPHILLOCAL', 166300.000, 'PC2MWEB'),
('2013-01-22', 'PAYPHILLOCAL', 200.000, 'LocalAmaxInterf'),
('2013-01-22', 'PAYPHILLOCAL', 1286390.000, 'AmaxDomesticAPI'),
('2013-01-21', 'PAYPHILLOCAL', 31350.000, 'PC2MWEB'),
('2012-11-16', 'PAYPHILLOCAL', 1.000, 'PC2MWEB-Intl'),
('2012-11-20', 'PAYPHILLOCAL', 100.000, 'SMTAMAX'),
('2012-11-20', 'PAYPHILLOCAL', 50.000, 'SMTGCASH'),
('2012-11-21', 'PAYPHILLOCAL', 100.000, 'PC2MWEB-Intl'),
('2012-11-21', 'PAYPHILLOCAL', 100.000, 'SMTGCASH'),
('2012-11-22', 'PAYPHILLOCAL', 50.000, 'PC2MWEB-Intl'),
('2012-11-22', 'PAYPHILLOCAL', 185.000, 'PII-API'),
('2012-11-22', 'PAYPHILLOCAL', 850.000, 'SMTAMAX'),
('2012-11-23', 'PAYPHILLOCAL', 750.000, 'PII-API'),
('2012-11-23', 'PAYPHILLOCAL', 3850.000, 'SMTAMAX'),
('2012-11-24', 'PAYPHILLOCAL', 10.000, 'PC2MWEB-Intl'),
('2012-11-24', 'PAYPHILLOCAL', 750.000, 'PII-API'),
('2012-11-24', 'PAYPHILLOCAL', 2600.000, 'SMTAMAX'),
('2012-11-25', 'PAYPHILLOCAL', 300.000, 'PII-API'),
('2012-11-25', 'PAYPHILLOCAL', 3150.000, 'SMTAMAX'),
('2012-11-26', 'PAYPHILLOCAL', 150.000, 'PII-API'),
('2012-11-26', 'PAYPHILLOCAL', 1750.000, 'SMTAMAX'),
('2012-11-27', 'PAYPHILLOCAL', 750.000, 'PII-API'),
('2012-11-27', 'PAYPHILLOCAL', 2700.000, 'SMTAMAX'),
('2012-11-28', 'PAYPHILLOCAL', 10100.000, 'HKCSL2'),
('2012-11-28', 'PAYPHILLOCAL', 2850.000, 'PII-API'),
('2012-11-28', 'PAYPHILLOCAL', 2000.000, 'SMTAMAX'),
('2012-11-29', 'PAYPHILLOCAL', 6500.000, 'HKCSL2'),
('2012-11-29', 'PAYPHILLOCAL', 1650.000, 'PII-API'),
('2012-11-29', 'PAYPHILLOCAL', 2600.000, 'SMTAMAX'),
('2012-11-30', 'PAYPHILLOCAL', 8600.000, 'HKCSL2'),
('2012-11-30', 'PAYPHILLOCAL', 2100.000, 'PII-API'),
('2012-11-30', 'PAYPHILLOCAL', 2550.000, 'SMTAMAX'),
('2012-12-01', 'PAYPHILLOCAL', 5000.000, 'HKCSL2'),
('2012-12-01', 'PAYPHILLOCAL', 2200.000, 'SMTAMAX'),
('2012-12-02', 'PAYPHILLOCAL', 8100.000, 'HKCSL2'),
('2012-12-02', 'PAYPHILLOCAL', 2050.000, 'SMTAMAX'),
('2012-12-03', 'PAYPHILLOCAL', 9200.000, 'HKCSL2'),
('2012-12-03', 'PAYPHILLOCAL', 225.000, 'PC2MWEB-Intl'),
('2012-12-03', 'PAYPHILLOCAL', 20.000, 'PII-API'),
('2012-12-03', 'PAYPHILLOCAL', 3800.000, 'SMTAMAX'),
('2012-12-04', 'PAYPHILLOCAL', 6100.000, 'HKCSL2'),
('2012-12-04', 'PAYPHILLOCAL', 2400.000, 'SMTAMAX'),
('2012-12-05', 'PAYPHILLOCAL', 7900.000, 'HKCSL2'),
('2012-12-05', 'PAYPHILLOCAL', 2300.000, 'SMTAMAX'),
('2012-12-06', 'PAYPHILLOCAL', 5800.000, 'HKCSL2'),
('2012-12-06', 'PAYPHILLOCAL', 2850.000, 'SMTAMAX'),
('2012-12-07', 'PAYPHILLOCAL', 6200.000, 'HKCSL2'),
('2012-12-07', 'PAYPHILLOCAL', 2400.000, 'SMTAMAX'),
('2012-12-08', 'PAYPHILLOCAL', 5100.000, 'HKCSL2'),
('2012-12-08', 'PAYPHILLOCAL', 2650.000, 'SMTAMAX'),
('2012-12-09', 'PAYPHILLOCAL', 7500.000, 'HKCSL2'),
('2012-12-09', 'PAYPHILLOCAL', 2250.000, 'SMTAMAX'),
('2012-12-10', 'PAYPHILLOCAL', 7600.000, 'HKCSL2'),
('2012-12-10', 'PAYPHILLOCAL', 2100.000, 'SMTAMAX'),
('2012-12-11', 'PAYPHILLOCAL', 6800.000, 'HKCSL2'),
('2012-12-11', 'PAYPHILLOCAL', 2500.000, 'SMTAMAX'),
('2012-12-12', 'PAYPHILLOCAL', 7200.000, 'HKCSL2'),
('2012-12-12', 'PAYPHILLOCAL', 2050.000, 'SMTAMAX'),
('2012-12-13', 'PAYPHILLOCAL', 6600.000, 'HKCSL2'),
('2012-12-13', 'PAYPHILLOCAL', 4400.000, 'SMTAMAX'),
('2012-12-14', 'PAYPHILLOCAL', 6000.000, 'HKCSL2'),
('2012-12-14', 'PAYPHILLOCAL', 1750.000, 'SMTAMAX'),
('2012-12-15', 'PAYPHILLOCAL', 5700.000, 'HKCSL2'),
('2012-12-15', 'PAYPHILLOCAL', 2150.000, 'SMTAMAX'),
('2012-12-16', 'PAYPHILLOCAL', 9400.000, 'HKCSL2'),
('2012-12-16', 'PAYPHILLOCAL', 1450.000, 'SMTAMAX'),
('2012-12-17', 'PAYPHILLOCAL', 8600.000, 'HKCSL2'),
('2012-12-17', 'PAYPHILLOCAL', 2700.000, 'SMTAMAX'),
('2012-12-18', 'PAYPHILLOCAL', 7400.000, 'HKCSL2'),
('2012-12-18', 'PAYPHILLOCAL', 1700.000, 'SMTAMAX'),
('2012-12-19', 'PAYPHILLOCAL', 7200.000, 'HKCSL2'),
('2012-12-19', 'PAYPHILLOCAL', 2550.000, 'SMTAMAX'),
('2012-12-20', 'PAYPHILLOCAL', 6500.000, 'HKCSL2'),
('2012-12-20', 'PAYPHILLOCAL', 1000.000, 'PC2MWEB-Intl'),
('2012-12-20', 'PAYPHILLOCAL', 1900.000, 'SMTAMAX'),
('2012-12-21', 'PAYPHILLOCAL', 5000.000, 'HKCSL2'),
('2012-12-21', 'PAYPHILLOCAL', 2100.000, 'SMTAMAX'),
('2012-12-22', 'PAYPHILLOCAL', 6400.000, 'HKCSL2'),
('2012-12-22', 'PAYPHILLOCAL', 2650.000, 'SMTAMAX'),
('2012-12-23', 'PAYPHILLOCAL', 7300.000, 'HKCSL2'),
('2012-12-23', 'PAYPHILLOCAL', 2500.000, 'SMTAMAX'),
('2012-12-24', 'PAYPHILLOCAL', 8600.000, 'HKCSL2'),
('2012-12-24', 'PAYPHILLOCAL', 4250.000, 'SMTAMAX'),
('2012-12-25', 'PAYPHILLOCAL', 7000.000, 'HKCSL2'),
('2012-12-25', 'PAYPHILLOCAL', 2500.000, 'SMTAMAX'),
('2012-12-26', 'PAYPHILLOCAL', 4700.000, 'HKCSL2'),
('2012-12-26', 'PAYPHILLOCAL', 2850.000, 'SMTAMAX'),
('2012-12-27', 'PAYPHILLOCAL', 7000.000, 'HKCSL2'),
('2012-12-27', 'PAYPHILLOCAL', 1350.000, 'SMTAMAX'),
('2012-12-28', 'PAYPHILLOCAL', 5800.000, 'HKCSL2'),
('2012-12-28', 'PAYPHILLOCAL', 2350.000, 'SMTAMAX'),
('2012-12-29', 'PAYPHILLOCAL', 5100.000, 'HKCSL2'),
('2012-12-29', 'PAYPHILLOCAL', 1050.000, 'SMTAMAX'),
('2012-12-30', 'PAYPHILLOCAL', 5800.000, 'HKCSL2'),
('2012-12-30', 'PAYPHILLOCAL', 1500.000, 'PC2MWEB-Intl'),
('2012-12-30', 'PAYPHILLOCAL', 2600.000, 'SMTAMAX'),
('2012-12-31', 'PAYPHILLOCAL', 7600.000, 'HKCSL2'),
('2012-12-31', 'PAYPHILLOCAL', 150.000, 'PC2MWEB-Intl'),
('2012-12-31', 'PAYPHILLOCAL', 2800.000, 'SMTAMAX'),
('2013-01-01', 'PAYPHILLOCAL', 6900.000, 'HKCSL2'),
('2013-01-01', 'PAYPHILLOCAL', 2150.000, 'SMTAMAX'),
('2013-01-02', 'PAYPHILLOCAL', 6200.000, 'HKCSL2'),
('2013-01-02', 'PAYPHILLOCAL', 450.000, 'PC2MWEB-Intl'),
('2013-01-02', 'PAYPHILLOCAL', 2600.000, 'SMTAMAX'),
('2013-01-03', 'PAYPHILLOCAL', 7100.000, 'HKCSL2'),
('2013-01-03', 'PAYPHILLOCAL', 1200.000, 'PC2MWEB-Intl'),
('2013-01-03', 'PAYPHILLOCAL', 2200.000, 'SMTAMAX'),
('2013-01-04', 'PAYPHILLOCAL', 6400.000, 'HKCSL2'),
('2013-01-04', 'PAYPHILLOCAL', 1200.000, 'SMTAMAX'),
('2013-01-05', 'PAYPHILLOCAL', 7600.000, 'HKCSL2'),
('2013-01-05', 'PAYPHILLOCAL', 3000.000, 'SMTAMAX'),
('2013-01-06', 'PAYPHILLOCAL', 9500.000, 'HKCSL2'),
('2013-01-06', 'PAYPHILLOCAL', 2450.000, 'SMTAMAX'),
('2013-01-07', 'PAYPHILLOCAL', 7900.000, 'HKCSL2'),
('2013-01-07', 'PAYPHILLOCAL', 500.000, 'PC2MWEB-Intl'),
('2013-01-07', 'PAYPHILLOCAL', 3600.000, 'SMTAMAX'),
('2013-01-08', 'PAYPHILLOCAL', 6900.000, 'HKCSL2'),
('2013-01-08', 'PAYPHILLOCAL', 2750.000, 'SMTAMAX'),
('2013-01-09', 'PAYPHILLOCAL', 7200.000, 'HKCSL2'),
('2013-01-09', 'PAYPHILLOCAL', 1850.000, 'SMTAMAX'),
('2013-01-10', 'PAYPHILLOCAL', 6500.000, 'HKCSL2'),
('2013-01-10', 'PAYPHILLOCAL', 2550.000, 'SMTAMAX'),
('2013-01-11', 'PAYPHILLOCAL', 6700.000, 'HKCSL2'),
('2013-01-11', 'PAYPHILLOCAL', 500.000, 'PC2MWEB-Intl'),
('2013-01-11', 'PAYPHILLOCAL', 2200.000, 'SMTAMAX'),
('2013-01-12', 'PAYPHILLOCAL', 6700.000, 'HKCSL2'),
('2013-01-12', 'PAYPHILLOCAL', 2250.000, 'SMTAMAX'),
('2013-01-13', 'PAYPHILLOCAL', 8900.000, 'HKCSL2'),
('2013-01-13', 'PAYPHILLOCAL', 300.000, 'PC2MWEB-Intl'),
('2013-01-13', 'PAYPHILLOCAL', 2700.000, 'SMTAMAX'),
('2013-01-14', 'PAYPHILLOCAL', 8000.000, 'HKCSL2'),
('2013-01-14', 'PAYPHILLOCAL', 150.000, 'PC2MWEB-Intl'),
('2013-01-14', 'PAYPHILLOCAL', 1400.000, 'SMTAMAX'),
('2013-01-15', 'PAYPHILLOCAL', 6300.000, 'HKCSL2'),
('2013-01-15', 'PAYPHILLOCAL', 300.000, 'PC2MWEB-Intl'),
('2013-01-15', 'PAYPHILLOCAL', 2450.000, 'SMTAMAX'),
('2013-01-16', 'PAYPHILLOCAL', 7000.000, 'HKCSL2'),
('2013-01-16', 'PAYPHILLOCAL', 2300.000, 'SMTAMAX'),
('2013-01-17', 'PAYPHILLOCAL', 5200.000, 'HKCSL2'),
('2013-01-17', 'PAYPHILLOCAL', 300.000, 'PC2MWEB-Intl'),
('2013-01-17', 'PAYPHILLOCAL', 2350.000, 'SMTAMAX'),
('2013-01-18', 'PAYPHILLOCAL', 7000.000, 'HKCSL2'),
('2013-01-18', 'PAYPHILLOCAL', 450.000, 'PC2MWEB-Intl'),
('2013-01-18', 'PAYPHILLOCAL', 2050.000, 'SMTAMAX'),
('2013-01-21', 'PAYPHILLOCAL', 1364034.000, 'AmaxDomesticAPI'),
('2013-01-20', 'PAYPHILLOCAL', 600.000, 'PC2MWEB'),
('2013-01-20', 'PAYPHILLOCAL', 1015022.000, 'AmaxDomesticAPI'),
('2013-01-19', 'PAYPHILLOCAL', 3000.000, 'PC2MWEB'),
('2013-01-19', 'PAYPHILLOCAL', 1261487.000, 'AmaxDomesticAPI'),
('2013-01-22', 'PAYPHILLOCAL', 1450.000, 'SMTAMAX'),
('2013-01-22', 'PAYPHILLOCAL', 6900.000, 'HKCSL2'),
('2013-01-21', 'PAYPHILLOCAL', 2500.000, 'SMTAMAX'),
('2013-01-21', 'PAYPHILLOCAL', 9800.000, 'HKCSL2'),
('2013-01-20', 'PAYPHILLOCAL', 4350.000, 'SMTAMAX'),
('2013-01-19', 'PAYPHILLOCAL', 3800.000, 'SMTAMAX'),
('2013-01-20', 'PAYPHILLOCAL', 4600.000, 'HKCSL2'),
('2013-01-19', 'PAYPHILLOCAL', 4900.000, 'HKCSL2'),
('2013-01-22', 'PAYPHILLOCAL', 1660.000, 'PC2MWEB'),
('2013-01-23', 'PAYPHILLOCAL', 1404502.000, 'AmaxDomesticAPI'),
('2013-01-23', 'PAYPHILLOCAL', 8363.000, 'LocalAmaxInterf'),
('2013-01-23', 'PAYPHILLOCAL', 19865.000, 'PC2MWEB'),
('2013-01-23', 'PAYPHILLOCAL', 6000.000, 'HKCSL2'),
('2013-01-23', 'PAYPHILLOCAL', 2850.000, 'SMTAMAX'),
('2013-01-24', 'PAYPHILLOCAL', 1338937.000, 'AmaxDomesticAPI'),
('2013-01-24', 'PAYPHILLOCAL', 31680.000, 'PC2MWEB'),
('2013-01-24', 'PAYPHILLOCAL', 6200.000, 'HKCSL2'),
('2013-01-24', 'PAYPHILLOCAL', 300.000, 'PC2MWEB-Intl'),
('2013-01-24', 'PAYPHILLOCAL', 1800.000, 'SMTAMAX'),
('2013-01-25', 'PAYPHILLOCAL', 1463022.000, 'AmaxDomesticAPI'),
('2013-01-25', 'PAYPHILLOCAL', 57200.000, 'PC2MWEB'),
('2013-01-25', 'PAYPHILLOCAL', 5700.000, 'HKCSL2'),
('2013-01-25', 'PAYPHILLOCAL', 2200.000, 'SMTAMAX'),
('2013-01-26', 'PAYPHILLOCAL', 1219293.000, 'AmaxDomesticAPI'),
('2013-01-26', 'PAYPHILLOCAL', 35650.000, 'PC2MWEB'),
('2013-01-26', 'PAYPHILLOCAL', 6600.000, 'HKCSL2'),
('2013-01-26', 'PAYPHILLOCAL', 2800.000, 'SMTAMAX'),
('2013-01-27', 'PAYPHILLOCAL', 1010568.000, 'AmaxDomesticAPI'),
('2013-01-27', 'PAYPHILLOCAL', 20000.000, 'PC2MWEB'),
('2013-01-27', 'PAYPHILLOCAL', 9700.000, 'HKCSL2'),
('2013-01-27', 'PAYPHILLOCAL', 5200.000, 'SMTAMAX'),
('2013-01-28', 'PAYPHILLOCAL', 1359293.000, 'AmaxDomesticAPI'),
('2013-01-28', 'PAYPHILLOCAL', 23400.000, 'PC2MWEB'),
('2013-01-28', 'PAYPHILLOCAL', 7300.000, 'HKCSL2'),
('2013-01-28', 'PAYPHILLOCAL', 200.000, 'PC2MWEB-Intl'),
('2013-01-28', 'PAYPHILLOCAL', 4000.000, 'SMTAMAX'),
('2013-01-29', 'PAYPHILLOCAL', 323795.000, 'AmaxDomesticAPI'),
('2013-01-29', 'PAYPHILLOCAL', 30260.000, 'PC2MWEB'),
('2013-01-29', 'PAYPHILLOCAL', 3700.000, 'HKCSL2'),
('2013-01-29', 'PAYPHILLOCAL', 1200.000, 'SMTAMAX'),
('2013-01-30', 'PAYPHILLOCAL', 692345.000, 'AmaxDomesticAPI'),
('2013-01-30', 'PAYPHILLOCAL', 20900.000, 'PC2MWEB'),
('2013-01-30', 'PAYPHILLOCAL', 7500.000, 'HKCSL2'),
('2013-01-30', 'PAYPHILLOCAL', 2750.000, 'SMTAMAX'),
('2013-01-31', 'PAYPHILLOCAL', 674381.000, 'AmaxDomesticAPI'),
('2013-01-31', 'PAYPHILLOCAL', 16650.000, 'PC2MWEB'),
('2013-01-31', 'PAYPHILLOCAL', 6100.000, 'HKCSL2'),
('2013-01-31', 'PAYPHILLOCAL', 2500.000, 'SMTAMAX'),
('2013-02-01', 'PAYPHILLOCAL', 678777.000, 'AmaxDomesticAPI'),
('2013-02-01', 'PAYPHILLOCAL', 73810.000, 'PC2MWEB'),
('2013-02-01', 'PAYPHILLOCAL', 8400.000, 'HKCSL2'),
('2013-02-01', 'PAYPHILLOCAL', 1000.000, 'PC2MWEB-Intl'),
('2013-02-01', 'PAYPHILLOCAL', 1750.000, 'SMTAMAX'),
('2013-02-02', 'PAYPHILLOCAL', 607787.000, 'AmaxDomesticAPI'),
('2013-02-02', 'PAYPHILLOCAL', 35000.000, 'PC2MWEB'),
('2013-02-02', 'PAYPHILLOCAL', 7400.000, 'HKCSL2'),
('2013-02-02', 'PAYPHILLOCAL', 2200.000, 'SMTAMAX'),
('2013-02-03', 'PAYPHILLOCAL', 552281.000, 'AmaxDomesticAPI'),
('2013-02-03', 'PAYPHILLOCAL', 300.000, 'PC2MWEB'),
('2013-02-03', 'PAYPHILLOCAL', 9200.000, 'HKCSL2'),
('2013-02-03', 'PAYPHILLOCAL', 1155.000, 'PC2MWEB-Intl'),
('2013-02-03', 'PAYPHILLOCAL', 2950.000, 'SMTAMAX'),
('2013-02-04', 'PAYPHILLOCAL', 651661.000, 'AmaxDomesticAPI'),
('2013-02-04', 'PAYPHILLOCAL', 5000.000, 'PC2MWEB'),
('2013-02-04', 'PAYPHILLOCAL', 7700.000, 'HKCSL2'),
('2013-02-04', 'PAYPHILLOCAL', 3050.000, 'SMTAMAX'),
('2013-02-05', 'PAYPHILLOCAL', 644871.000, 'AmaxDomesticAPI'),
('2013-02-05', 'PAYPHILLOCAL', 6450.000, 'PC2MWEB'),
('2013-02-05', 'PAYPHILLOCAL', 6800.000, 'HKCSL2'),
('2013-02-05', 'PAYPHILLOCAL', 2350.000, 'SMTAMAX'),
('2013-02-06', 'PAYPHILLOCAL', 688269.000, 'AmaxDomesticAPI'),
('2013-02-06', 'PAYPHILLOCAL', 60750.000, 'PC2MWEB'),
('2013-02-06', 'PAYPHILLOCAL', 6900.000, 'HKCSL2'),
('2013-02-06', 'PAYPHILLOCAL', 400.000, 'PC2MWEB-Intl'),
('2013-02-06', 'PAYPHILLOCAL', 2500.000, 'SMTAMAX'),
('2013-02-07', 'PAYPHILLOCAL', 658999.000, 'AmaxDomesticAPI'),
('2013-02-07', 'PAYPHILLOCAL', 6763.000, 'LocalAmaxInterf'),
('2013-02-07', 'PAYPHILLOCAL', 26400.000, 'PC2MWEB'),
('2013-02-07', 'PAYPHILLOCAL', 8400.000, 'HKCSL2'),
('2013-02-07', 'PAYPHILLOCAL', 1100.000, 'PC2MWEB-Intl'),
('2013-02-07', 'PAYPHILLOCAL', 1900.000, 'SMTAMAX'),
('2013-02-08', 'PAYPHILLOCAL', 659028.000, 'AmaxDomesticAPI'),
('2013-02-08', 'PAYPHILLOCAL', 6853.000, 'LocalAmaxInterf'),
('2013-02-08', 'PAYPHILLOCAL', 62650.000, 'PC2MWEB'),
('2013-02-08', 'PAYPHILLOCAL', 6500.000, 'HKCSL2'),
('2013-02-08', 'PAYPHILLOCAL', 300.000, 'PC2MWEB-Intl'),
('2013-02-08', 'PAYPHILLOCAL', 1950.000, 'SMTAMAX'),
('2013-02-09', 'PAYPHILLOCAL', 637276.000, 'AmaxDomesticAPI'),
('2013-02-09', 'PAYPHILLOCAL', 1500.000, 'PC2MWEB'),
('2013-02-09', 'PAYPHILLOCAL', 5700.000, 'HKCSL2'),
('2013-02-09', 'PAYPHILLOCAL', 2250.000, 'SMTAMAX'),
('2013-02-10', 'PAYPHILLOCAL', 567666.000, 'AmaxDomesticAPI'),
('2013-02-10', 'PAYPHILLOCAL', 10150.000, 'PC2MWEB'),
('2013-02-10', 'PAYPHILLOCAL', 9000.000, 'HKCSL2'),
('2013-02-10', 'PAYPHILLOCAL', 2200.000, 'SMTAMAX'),
('2013-02-11', 'PAYPHILLOCAL', 653485.000, 'AmaxDomesticAPI'),
('2013-02-11', 'PAYPHILLOCAL', 4707.000, 'LocalAmaxInterf'),
('2013-02-11', 'PAYPHILLOCAL', 35600.000, 'PC2MWEB'),
('2013-02-11', 'PAYPHILLOCAL', 7700.000, 'HKCSL2'),
('2013-02-11', 'PAYPHILLOCAL', 4100.000, 'PC2MWEB-Intl'),
('2013-02-11', 'PAYPHILLOCAL', 2850.000, 'SMTAMAX'),
('2013-02-12', 'PAYPHILLOCAL', 653443.000, 'AmaxDomesticAPI'),
('2013-02-12', 'PAYPHILLOCAL', 13650.000, 'PC2MWEB'),
('2013-02-12', 'PAYPHILLOCAL', 8800.000, 'HKCSL2'),
('2013-02-12', 'PAYPHILLOCAL', 2000.000, 'SMTAMAX'),
('2013-02-13', 'PAYPHILLOCAL', 669146.000, 'AmaxDomesticAPI'),
('2013-02-13', 'PAYPHILLOCAL', 46050.000, 'PC2MWEB'),
('2013-02-13', 'PAYPHILLOCAL', 7200.000, 'HKCSL2'),
('2013-02-13', 'PAYPHILLOCAL', 50.000, 'PC2MWEB-Intl'),
('2013-02-13', 'PAYPHILLOCAL', 1950.000, 'SMTAMAX'),
('2013-02-14', 'PAYPHILLOCAL', 710462.000, 'AmaxDomesticAPI'),
('2013-02-14', 'PAYPHILLOCAL', 20750.000, 'PC2MWEB'),
('2013-02-14', 'PAYPHILLOCAL', 7600.000, 'HKCSL2'),
('2013-02-14', 'PAYPHILLOCAL', 2200.000, 'PC2MWEB-Intl'),
('2013-02-14', 'PAYPHILLOCAL', 4100.000, 'SMTAMAX'),
('2013-02-15', 'PAYPHILLOCAL', 683110.000, 'AmaxDomesticAPI'),
('2013-02-15', 'PAYPHILLOCAL', 45300.000, 'PC2MWEB'),
('2013-02-15', 'PAYPHILLOCAL', 6600.000, 'HKCSL2'),
('2013-02-15', 'PAYPHILLOCAL', 150.000, 'PC2MWEB-Intl'),
('2013-02-15', 'PAYPHILLOCAL', 2750.000, 'SMTAMAX'),
('2013-02-16', 'PAYPHILLOCAL', 638399.000, 'AmaxDomesticAPI'),
('2013-02-16', 'PAYPHILLOCAL', 1500.000, 'PC2MWEB'),
('2013-02-16', 'PAYPHILLOCAL', 6200.000, 'HKCSL2'),
('2013-02-16', 'PAYPHILLOCAL', 300.000, 'PC2MWEB-Intl'),
('2013-02-16', 'PAYPHILLOCAL', 2450.000, 'SMTAMAX'),
('2013-02-17', 'PAYPHILLOCAL', 582681.000, 'AmaxDomesticAPI'),
('2013-02-17', 'PAYPHILLOCAL', 350.000, 'PC2MWEB'),
('2013-02-17', 'PAYPHILLOCAL', 7400.000, 'HKCSL2'),
('2013-02-17', 'PAYPHILLOCAL', 2500.000, 'SMTAMAX'),
('2013-02-18', 'PAYPHILLOCAL', 687154.000, 'AmaxDomesticAPI'),
('2013-02-18', 'PAYPHILLOCAL', 710.000, 'PC2MWEB'),
('2013-02-18', 'PAYPHILLOCAL', 8100.000, 'HKCSL2'),
('2013-02-18', 'PAYPHILLOCAL', 2200.000, 'SMTAMAX'),
('2013-02-19', 'PAYPHILLOCAL', 683288.000, 'AmaxDomesticAPI'),
('2013-02-19', 'PAYPHILLOCAL', 7296.000, 'LocalAmaxInterf'),
('2013-02-19', 'PAYPHILLOCAL', 10440.000, 'PC2MWEB'),
('2013-02-19', 'PAYPHILLOCAL', 8000.000, 'HKCSL2'),
('2013-02-19', 'PAYPHILLOCAL', 4550.000, 'SMTAMAX'),
('2013-02-20', 'PAYPHILLOCAL', 582065.000, 'AmaxDomesticAPI'),
('2013-02-20', 'PAYPHILLOCAL', 16050.000, 'PC2MWEB'),
('2013-02-20', 'PAYPHILLOCAL', 7200.000, 'HKCSL2'),
('2013-02-20', 'PAYPHILLOCAL', 2600.000, 'SMTAMAX'),
('2013-02-21', 'PAYPHILLOCAL', 679177.000, 'AmaxDomesticAPI'),
('2013-02-21', 'PAYPHILLOCAL', 6250.000, 'PC2MWEB'),
('2013-02-21', 'PAYPHILLOCAL', 7100.000, 'HKCSL2'),
('2013-02-21', 'PAYPHILLOCAL', 2450.000, 'SMTAMAX'),
('2013-02-22', 'PAYPHILLOCAL', 502943.000, 'AmaxDomesticAPI'),
('2013-02-22', 'PAYPHILLOCAL', 14638.000, 'LocalAmaxInterf'),
('2013-02-22', 'PAYPHILLOCAL', 51050.000, 'PC2MWEB'),
('2013-02-22', 'PAYPHILLOCAL', 8900.000, 'HKCSL2'),
('2013-02-22', 'PAYPHILLOCAL', 300.000, 'PC2MWEB-Intl'),
('2013-02-22', 'PAYPHILLOCAL', 2550.000, 'SMTAMAX'),
('2013-02-23', 'PAYPHILLOCAL', 427412.000, 'AmaxDomesticAPI'),
('2013-02-23', 'PAYPHILLOCAL', 15000.000, 'PC2MWEB'),
('2013-02-23', 'PAYPHILLOCAL', 4600.000, 'HKCSL2'),
('2013-02-23', 'PAYPHILLOCAL', 1300.000, 'PC2MWEB-Intl'),
('2013-02-23', 'PAYPHILLOCAL', 2650.000, 'SMTAMAX'),
('2013-02-24', 'PAYPHILLOCAL', 552986.000, 'AmaxDomesticAPI'),
('2013-02-24', 'PAYPHILLOCAL', 30600.000, 'PC2MWEB'),
('2013-02-24', 'PAYPHILLOCAL', 10900.000, 'HKCSL2'),
('2013-02-24', 'PAYPHILLOCAL', 3150.000, 'SMTAMAX'),
('2013-02-25', 'PAYPHILLOCAL', 661524.000, 'AmaxDomesticAPI'),
('2013-02-25', 'PAYPHILLOCAL', 3526.000, 'LocalAmaxInterf'),
('2013-02-25', 'PAYPHILLOCAL', 46130.000, 'PC2MWEB'),
('2013-02-25', 'PAYPHILLOCAL', 9900.000, 'HKCSL2'),
('2013-02-25', 'PAYPHILLOCAL', 3300.000, 'SMTAMAX'),
('2013-02-26', 'PAYPHILLOCAL', 607129.000, 'AmaxDomesticAPI'),
('2013-02-26', 'PAYPHILLOCAL', 3110.000, 'PC2MWEB'),
('2013-02-26', 'PAYPHILLOCAL', 6800.000, 'HKCSL2'),
('2013-02-26', 'PAYPHILLOCAL', 2100.000, 'SMTAMAX'),
('2013-02-27', 'PAYPHILLOCAL', 643878.000, 'AmaxDomesticAPI'),
('2013-02-27', 'PAYPHILLOCAL', 30510.000, 'PC2MWEB'),
('2013-02-27', 'PAYPHILLOCAL', 6900.000, 'HKCSL2'),
('2013-02-27', 'PAYPHILLOCAL', 1800.000, 'SMTAMAX'),
('2013-02-28', 'PAYPHILLOCAL', 672017.000, 'AmaxDomesticAPI'),
('2013-02-28', 'PAYPHILLOCAL', 56375.000, 'PC2MWEB'),
('2013-02-28', 'PAYPHILLOCAL', 8300.000, 'HKCSL2'),
('2013-02-28', 'PAYPHILLOCAL', 450.000, 'PC2MWEB-Intl'),
('2013-02-28', 'PAYPHILLOCAL', 2850.000, 'SMTAMAX'),
('2013-03-01', 'PAYPHILLOCAL', 686751.000, 'AmaxDomesticAPI'),
('2013-03-01', 'PAYPHILLOCAL', 51450.000, 'PC2MWEB'),
('2013-03-01', 'PAYPHILLOCAL', 6300.000, 'HKCSL2'),
('2013-03-01', 'PAYPHILLOCAL', 150.000, 'PC2MWEB-Intl'),
('2013-03-01', 'PAYPHILLOCAL', 3350.000, 'SMTAMAX'),
('2013-03-02', 'PAYPHILLOCAL', 654456.000, 'AmaxDomesticAPI'),
('2013-03-02', 'PAYPHILLOCAL', 20150.000, 'PC2MWEB'),
('2013-03-02', 'PAYPHILLOCAL', 6000.000, 'HKCSL2'),
('2013-03-02', 'PAYPHILLOCAL', 800.000, 'PC2MWEB-Intl'),
('2013-03-02', 'PAYPHILLOCAL', 1650.000, 'SMTAMAX'),
('2013-03-03', 'PAYPHILLOCAL', 570212.000, 'AmaxDomesticAPI'),
('2013-03-03', 'PAYPHILLOCAL', 1100.000, 'PC2MWEB'),
('2013-03-03', 'PAYPHILLOCAL', 12300.000, 'HKCSL2'),
('2013-03-03', 'PAYPHILLOCAL', 2350.000, 'SMTAMAX'),
('2013-03-04', 'PAYPHILLOCAL', 660554.000, 'AmaxDomesticAPI'),
('2013-03-04', 'PAYPHILLOCAL', 6199.000, 'LocalAmaxInterf'),
('2013-03-04', 'PAYPHILLOCAL', 33000.000, 'PC2MWEB'),
('2013-03-04', 'PAYPHILLOCAL', 7100.000, 'HKCSL2'),
('2013-03-04', 'PAYPHILLOCAL', 300.000, 'PC2MWEB-Intl'),
('2013-03-04', 'PAYPHILLOCAL', 3400.000, 'SMTAMAX'),
('2013-03-05', 'PAYPHILLOCAL', 671429.000, 'AmaxDomesticAPI'),
('2013-03-05', 'PAYPHILLOCAL', 41050.000, 'PC2MWEB'),
('2013-03-05', 'PAYPHILLOCAL', 7800.000, 'HKCSL2'),
('2013-03-05', 'PAYPHILLOCAL', 2000.000, 'SMTAMAX'),
('2013-03-06', 'PAYPHILLOCAL', 655676.000, 'AmaxDomesticAPI'),
('2013-03-06', 'PAYPHILLOCAL', 10.000, 'LocalAmaxInterf'),
('2013-03-06', 'PAYPHILLOCAL', 5300.000, 'PC2MWEB'),
('2013-03-06', 'PAYPHILLOCAL', 5700.000, 'HKCSL2'),
('2013-03-06', 'PAYPHILLOCAL', 1700.000, 'SMTAMAX'),
('2013-03-07', 'PAYPHILLOCAL', 669278.000, 'AmaxDomesticAPI'),
('2013-03-07', 'PAYPHILLOCAL', 35300.000, 'PC2MWEB'),
('2013-03-07', 'PAYPHILLOCAL', 8300.000, 'HKCSL2'),
('2013-03-07', 'PAYPHILLOCAL', 3750.000, 'SMTAMAX'),
('2013-03-08', 'PAYPHILLOCAL', 677112.000, 'AmaxDomesticAPI'),
('2013-03-08', 'PAYPHILLOCAL', 6878.000, 'LocalAmaxInterf'),
('2013-03-08', 'PAYPHILLOCAL', 32110.000, 'PC2MWEB'),
('2013-03-08', 'PAYPHILLOCAL', 6700.000, 'HKCSL2'),
('2013-03-08', 'PAYPHILLOCAL', 1600.000, 'SMTAMAX'),
('2013-03-09', 'PAYPHILLOCAL', 624010.000, 'AmaxDomesticAPI'),
('2013-03-09', 'PAYPHILLOCAL', 950.000, 'PC2MWEB'),
('2013-03-09', 'PAYPHILLOCAL', 8100.000, 'HKCSL2'),
('2013-03-09', 'PAYPHILLOCAL', 2100.000, 'SMTAMAX'),
('2013-03-10', 'PAYPHILLOCAL', 556391.000, 'AmaxDomesticAPI'),
('2013-03-10', 'PAYPHILLOCAL', 600.000, 'PC2MWEB'),
('2013-03-10', 'PAYPHILLOCAL', 9000.000, 'HKCSL2'),
('2013-03-10', 'PAYPHILLOCAL', 1500.000, 'PC2MWEB-Intl'),
('2013-03-10', 'PAYPHILLOCAL', 2000.000, 'SMTAMAX'),
('2013-03-11', 'PAYPHILLOCAL', 665579.000, 'AmaxDomesticAPI'),
('2013-03-11', 'PAYPHILLOCAL', 4870.000, 'LocalAmaxInterf'),
('2013-03-11', 'PAYPHILLOCAL', 25450.000, 'PC2MWEB'),
('2013-03-11', 'PAYPHILLOCAL', 8400.000, 'HKCSL2'),
('2013-03-11', 'PAYPHILLOCAL', 1000.000, 'PC2MWEB-Intl'),
('2013-03-11', 'PAYPHILLOCAL', 3200.000, 'SMTAMAX'),
('2013-03-12', 'PAYPHILLOCAL', 651283.000, 'AmaxDomesticAPI'),
('2013-03-12', 'PAYPHILLOCAL', 25600.000, 'PC2MWEB'),
('2013-03-12', 'PAYPHILLOCAL', 8900.000, 'HKCSL2'),
('2013-03-12', 'PAYPHILLOCAL', 2200.000, 'SMTAMAX'),
('2013-03-13', 'PAYPHILLOCAL', 675681.000, 'AmaxDomesticAPI'),
('2013-03-13', 'PAYPHILLOCAL', 30150.000, 'PC2MWEB'),
('2013-03-13', 'PAYPHILLOCAL', 6500.000, 'HKCSL2'),
('2013-03-13', 'PAYPHILLOCAL', 1200.000, 'PC2MWEB-Intl'),
('2013-03-13', 'PAYPHILLOCAL', 3650.000, 'SMTAMAX'),
('2013-03-14', 'PAYPHILLOCAL', 688630.000, 'AmaxDomesticAPI'),
('2013-03-14', 'PAYPHILLOCAL', 30950.000, 'PC2MWEB'),
('2013-03-14', 'PAYPHILLOCAL', 5500.000, 'HKCSL2'),
('2013-03-14', 'PAYPHILLOCAL', 3050.000, 'SMTAMAX'),
('2013-03-15', 'PAYPHILLOCAL', 700893.000, 'AmaxDomesticAPI'),
('2013-03-15', 'PAYPHILLOCAL', 53250.000, 'PC2MWEB'),
('2013-03-15', 'PAYPHILLOCAL', 6400.000, 'HKCSL2'),
('2013-03-15', 'PAYPHILLOCAL', 1450.000, 'PC2MWEB-Intl'),
('2013-03-15', 'PAYPHILLOCAL', 2500.000, 'SMTAMAX'),
('2013-03-16', 'PAYPHILLOCAL', 668856.000, 'AmaxDomesticAPI'),
('2013-03-16', 'PAYPHILLOCAL', 23530.000, 'PC2MWEB'),
('2013-03-16', 'PAYPHILLOCAL', 7000.000, 'HKCSL2'),
('2013-03-16', 'PAYPHILLOCAL', 450.000, 'PC2MWEB-Intl'),
('2013-03-16', 'PAYPHILLOCAL', 2700.000, 'SMTAMAX'),
('2013-03-17', 'PAYPHILLOCAL', 595805.000, 'AmaxDomesticAPI'),
('2013-03-17', 'PAYPHILLOCAL', 300.000, 'PC2MWEB'),
('2013-03-17', 'PAYPHILLOCAL', 9400.000, 'HKCSL2'),
('2013-03-17', 'PAYPHILLOCAL', 450.000, 'PC2MWEB-Intl'),
('2013-03-17', 'PAYPHILLOCAL', 2600.000, 'SMTAMAX'),
('2013-03-18', 'PAYPHILLOCAL', 694480.000, 'AmaxDomesticAPI'),
('2013-03-18', 'PAYPHILLOCAL', 7339.000, 'LocalAmaxInterf'),
('2013-03-18', 'PAYPHILLOCAL', 45050.000, 'PC2MWEB'),
('2013-03-18', 'PAYPHILLOCAL', 8000.000, 'HKCSL2'),
('2013-03-18', 'PAYPHILLOCAL', 3450.000, 'SMTAMAX'),
('2013-03-19', 'PAYPHILLOCAL', 678524.000, 'AmaxDomesticAPI'),
('2013-03-19', 'PAYPHILLOCAL', 5700.000, 'HKCSL2'),
('2013-03-19', 'PAYPHILLOCAL', 10.000, 'PC2MWEB-Intl'),
('2013-03-19', 'PAYPHILLOCAL', 2100.000, 'SMTAMAX'),
('2013-03-19', 'PAYPHILLOCAL', 20.000, 'SUBWAYAPI'),
('2013-03-20', 'PAYPHILLOCAL', 674644.000, 'AmaxDomesticAPI'),
('2013-03-20', 'PAYPHILLOCAL', 300.000, 'PC2MWEB'),
('2013-03-20', 'PAYPHILLOCAL', 5900.000, 'HKCSL2'),
('2013-03-20', 'PAYPHILLOCAL', 3900.000, 'SMTAMAX'),
('2013-03-20', 'PAYPHILLOCAL', 30.000, 'SUBWAYAPI'),
('2013-03-21', 'PAYPHILLOCAL', 689118.000, 'AmaxDomesticAPI'),
('2013-03-21', 'PAYPHILLOCAL', 13853.000, 'LocalAmaxInterf'),
('2013-03-21', 'PAYPHILLOCAL', 1350.000, 'PC2MWEB'),
('2013-03-21', 'PAYPHILLOCAL', 6500.000, 'HKCSL2'),
('2013-03-21', 'PAYPHILLOCAL', 2000.000, 'SMTAMAX'),
('2013-03-22', 'PAYPHILLOCAL', 696333.000, 'AmaxDomesticAPI'),
('2013-03-22', 'PAYPHILLOCAL', 44150.000, 'PC2MWEB'),
('2013-03-22', 'PAYPHILLOCAL', 6700.000, 'HKCSL2'),
('2013-03-22', 'PAYPHILLOCAL', 2150.000, 'SMTAMAX'),
('2013-03-22', 'PAYPHILLOCAL', 28.000, 'SUBWAYAPI'),
('2013-03-23', 'PAYPHILLOCAL', 645805.000, 'AmaxDomesticAPI'),
('2013-03-23', 'PAYPHILLOCAL', 3150.000, 'PC2MWEB'),
('2013-03-23', 'PAYPHILLOCAL', 5200.000, 'HKCSL2'),
('2013-03-23', 'PAYPHILLOCAL', 2550.000, 'SMTAMAX'),
('2013-03-24', 'PAYPHILLOCAL', 572017.000, 'AmaxDomesticAPI'),
('2013-03-24', 'PAYPHILLOCAL', 300.000, 'PC2MWEB'),
('2013-03-24', 'PAYPHILLOCAL', 12600.000, 'HKCSL2'),
('2013-03-24', 'PAYPHILLOCAL', 900.000, 'PC2MWEB-Intl'),
('2013-03-24', 'PAYPHILLOCAL', 2600.000, 'SMTAMAX'),
('2013-03-25', 'PAYPHILLOCAL', 692484.000, 'AmaxDomesticAPI'),
('2013-03-25', 'PAYPHILLOCAL', 83100.000, 'PC2MWEB'),
('2013-03-25', 'PAYPHILLOCAL', 6300.000, 'HKCSL2'),
('2013-03-25', 'PAYPHILLOCAL', 1200.000, 'PC2MWEB-Intl'),
('2013-03-25', 'PAYPHILLOCAL', 5350.000, 'SMTAMAX'),
('2013-03-25', 'PAYPHILLOCAL', 4.000, 'SUBWAYAPI'),
('2013-03-26', 'PAYPHILLOCAL', 659787.000, 'AmaxDomesticAPI'),
('2013-03-26', 'PAYPHILLOCAL', 62700.000, 'PC2MWEB'),
('2013-03-26', 'PAYPHILLOCAL', 6100.000, 'HKCSL2'),
('2013-03-26', 'PAYPHILLOCAL', 2150.000, 'SMTAMAX'),
('2013-03-26', 'PAYPHILLOCAL', 20.000, 'SUBWAYAPI'),
('2013-03-27', 'PAYPHILLOCAL', 677096.000, 'AmaxDomesticAPI'),
('2013-03-27', 'PAYPHILLOCAL', 2941.000, 'LocalAmaxInterf'),
('2013-03-27', 'PAYPHILLOCAL', 35550.000, 'PC2MWEB'),
('2013-03-27', 'PAYPHIL2-CONVER', 300.000, 'EVENDING'),
('2013-03-27', 'PAYPHILLOCAL', 6000.000, 'HKCSL2'),
('2013-03-27', 'PAYPHILLOCAL', 600.000, 'PC2MWEB-Intl'),
('2013-03-27', 'PAYPHILLOCAL', 3850.000, 'SMTAMAX'),
('2013-03-27', 'PAYPHILLOCAL', 10.000, 'SUBWAYAPI'),
('2013-03-28', 'PAYPHILLOCAL', 577850.000, 'AmaxDomesticAPI'),
('2013-03-28', 'PAYPHILLOCAL', 150.000, 'PC2MWEB'),
('2013-03-28', 'PAYPHILLOCAL', 5700.000, 'HKCSL2'),
('2013-03-28', 'PAYPHILLOCAL', 2600.000, 'SMTAMAX'),
('2013-03-28', 'PAYPHILLOCAL', 118.000, 'SUBWAYAPI'),
('2013-03-29', 'PAYPHILLOCAL', 464586.000, 'AmaxDomesticAPI'),
('2013-03-29', 'PAYPHILLOCAL', 900.000, 'PC2MWEB'),
('2013-03-29', 'PAYPHILLOCAL', 5200.000, 'HKCSL2'),
('2013-03-29', 'PAYPHILLOCAL', 300.000, 'PC2MWEB-Intl'),
('2013-03-29', 'PAYPHILLOCAL', 2850.000, 'SMTAMAX'),
('2013-03-30', 'PAYPHILLOCAL', 552089.000, 'AmaxDomesticAPI'),
('2013-03-30', 'PAYPHILLOCAL', 50.000, 'PC2MWEB'),
('2013-03-30', 'PAYPHILLOCAL', 6100.000, 'HKCSL2'),
('2013-03-30', 'PAYPHILLOCAL', 450.000, 'PC2MWEB-Intl'),
('2013-03-30', 'PAYPHILLOCAL', 3350.000, 'SMTAMAX'),
('2013-03-30', 'PAYPHILLOCAL', 9.000, 'SUBWAYAPI'),
('2013-03-31', 'PAYPHILLOCAL', 554300.000, 'AmaxDomesticAPI'),
('2013-03-31', 'PAYPHILLOCAL', 15150.000, 'PC2MWEB'),
('2013-03-31', 'PAYPHILLOCAL', 8200.000, 'HKCSL2'),
('2013-03-31', 'PAYPHILLOCAL', 2100.000, 'SMTAMAX'),
('2013-04-01', 'PAYPHILLOCAL', 682058.000, 'AmaxDomesticAPI'),
('2013-04-01', 'PAYPHILLOCAL', 66650.000, 'PC2MWEB'),
('2013-04-01', 'PAYPHIL2-CONVER', 2700.000, 'EVENDING'),
('2013-04-01', 'PAYPHILLOCAL', 11200.000, 'HKCSL2'),
('2013-04-01', 'PAYPHILLOCAL', 450.000, 'PC2MWEB-Intl'),
('2013-04-01', 'PAYPHILLOCAL', 3650.000, 'SMTAMAX'),
('2013-04-01', 'PAYPHILLOCAL', 28.000, 'SUBWAYAPI'),
('2013-04-02', 'PAYPHILLOCAL', 681590.000, 'AmaxDomesticAPI'),
('2013-04-02', 'PAYPHILLOCAL', 25600.000, 'PC2MWEB'),
('2013-04-02', 'PAYPHIL2-CONVER', 2300.000, 'EVENDING'),
('2013-04-02', 'PAYPHILLOCAL', 7600.000, 'HKCSL2'),
('2013-04-02', 'PAYPHILLOCAL', 300.000, 'PC2MWEB-Intl'),
('2013-04-02', 'PAYPHILLOCAL', 4850.000, 'SMTAMAX'),
('2013-04-02', 'PAYPHILLOCAL', 988.000, 'SUBWAYAPI'),
('2013-04-03', 'PAYPHILLOCAL', 638457.000, 'AmaxDomesticAPI'),
('2013-04-03', 'PAYPHILLOCAL', 5786.000, 'LocalAmaxInterf'),
('2013-04-03', 'PAYPHILLOCAL', 20200.000, 'PC2MWEB'),
('2013-04-03', 'PAYPHIL2-CONVER', 6750.000, 'EVENDING'),
('2013-04-03', 'PAYPHILLOCAL', 4500.000, 'HKCSL2'),
('2013-04-03', 'PAYPHILLOCAL', 300.000, 'PC2MWEB-Intl'),
('2013-04-03', 'PAYPHILLOCAL', 2600.000, 'SMTAMAX'),
('2013-04-04', 'PAYPHILLOCAL', 651520.000, 'AmaxDomesticAPI'),
('2013-04-04', 'PAYPHILLOCAL', 25550.000, 'PC2MWEB'),
('2013-04-04', 'PAYPHIL2-CONVER', 3800.000, 'EVENDING'),
('2013-04-04', 'PAYPHILLOCAL', 7000.000, 'HKCSL2'),
('2013-04-04', 'PAYPHILLOCAL', 650.000, 'PC2MWEB-Intl'),
('2013-04-04', 'PAYPHILLOCAL', 2600.000, 'SMTAMAX'),
('2013-04-05', 'PAYPHILLOCAL', 681991.000, 'AmaxDomesticAPI'),
('2013-04-05', 'PAYPHILLOCAL', 22600.000, 'PC2MWEB'),
('2013-04-05', 'PAYPHIL2-CONVER', 8650.000, 'EVENDING'),
('2013-04-05', 'PAYPHILLOCAL', 6400.000, 'HKCSL2'),
('2013-04-05', 'PAYPHILLOCAL', 2050.000, 'SMTAMAX'),
('2013-04-05', 'PAYPHILLOCAL', 9.000, 'SUBWAYAPI'),
('2013-04-06', 'PAYPHILLOCAL', 621055.000, 'AmaxDomesticAPI'),
('2013-04-06', 'PAYPHILLOCAL', 150.000, 'PC2MWEB'),
('2013-04-06', 'PAYPHIL2-CONVER', 16250.000, 'EVENDING'),
('2013-04-06', 'PAYPHILLOCAL', 5600.000, 'HKCSL2'),
('2013-04-06', 'PAYPHILLOCAL', 300.000, 'PC2MWEB-Intl'),
('2013-04-06', 'PAYPHILLOCAL', 2600.000, 'SMTAMAX'),
('2013-04-07', 'PAYPHILLOCAL', 548389.000, 'AmaxDomesticAPI'),
('2013-04-07', 'PAYPHILLOCAL', 20000.000, 'PC2MWEB'),
('2013-04-07', 'PAYPHIL2-CONVER', 15250.000, 'EVENDING'),
('2013-04-07', 'PAYPHILLOCAL', 7100.000, 'HKCSL2'),
('2013-04-07', 'PAYPHILLOCAL', 2950.000, 'SMTAMAX'),
('2013-04-08', 'PAYPHILLOCAL', 666775.000, 'AmaxDomesticAPI'),
('2013-04-08', 'PAYPHILLOCAL', 20900.000, 'PC2MWEB'),
('2013-04-08', 'PAYPHIL2-CONVER', 9600.000, 'EVENDING'),
('2013-04-08', 'PAYPHILLOCAL', 7100.000, 'HKCSL2'),
('2013-04-08', 'PAYPHILLOCAL', 450.000, 'PC2MWEB-Intl'),
('2013-04-08', 'PAYPHILLOCAL', 4550.000, 'SMTAMAX'),
('2013-04-09', 'PAYPHILLOCAL', 593720.000, 'AmaxDomesticAPI'),
('2013-04-09', 'PAYPHILLOCAL', 20900.000, 'PC2MWEB'),
('2013-04-09', 'PAYPHIL2-CONVER', 19450.000, 'EVENDING'),
('2013-04-09', 'PAYPHILLOCAL', 7600.000, 'HKCSL2'),
('2013-04-09', 'PAYPHILLOCAL', 450.000, 'PC2MWEB-Intl'),
('2013-04-09', 'PAYPHILLOCAL', 3550.000, 'SMTAMAX'),
('2013-04-10', 'PAYPHILLOCAL', 641283.000, 'AmaxDomesticAPI'),
('2013-04-10', 'PAYPHILLOCAL', 7741.000, 'LocalAmaxInterf'),
('2013-04-10', 'PAYPHILLOCAL', 32400.000, 'PC2MWEB'),
('2013-04-10', 'PAYPHIL2-CONVER', 20500.000, 'EVENDING'),
('2013-04-10', 'PAYPHILLOCAL', 7200.000, 'HKCSL2'),
('2013-04-10', 'PAYPHILLOCAL', 450.000, 'PC2MWEB-Intl'),
('2013-04-10', 'PAYPHILLOCAL', 3350.000, 'SMTAMAX'),
('2013-04-11', 'PAYPHILLOCAL', 649636.000, 'AmaxDomesticAPI'),
('2013-04-11', 'PAYPHILLOCAL', 4798.000, 'LocalAmaxInterf'),
('2013-04-11', 'PAYPHILLOCAL', 7600.000, 'PC2MWEB'),
('2013-04-11', 'PAYPHIL2-CONVER', 14900.000, 'EVENDING'),
('2013-04-11', 'PAYPHILLOCAL', 5400.000, 'HKCSL2'),
('2013-04-11', 'PAYPHILLOCAL', 300.000, 'PC2MWEB-Intl'),
('2013-04-11', 'PAYPHILLOCAL', 2950.000, 'SMTAMAX'),
('2013-04-12', 'PAYPHILLOCAL', 669438.000, 'AmaxDomesticAPI'),
('2013-04-12', 'PAYPHILLOCAL', 51350.000, 'PC2MWEB'),
('2013-04-12', 'PAYPHIL2-CONVER', 50300.000, 'EVENDING'),
('2013-04-12', 'PAYPHILLOCAL', 7900.000, 'HKCSL2'),
('2013-04-12', 'PAYPHILLOCAL', 2000.000, 'PC2MWEB-Intl'),
('2013-04-12', 'PAYPHILLOCAL', 2950.000, 'SMTAMAX'),
('2013-04-12', 'PAYPHILLOCAL', 22449.000, 'SUBWAYAPI'),
('2013-04-13', 'PAYPHILLOCAL', 619112.000, 'AmaxDomesticAPI'),
('2013-04-13', 'PAYPHILLOCAL', 30450.000, 'PC2MWEB'),
('2013-04-13', 'PAYPHIL2-CONVER', 22350.000, 'EVENDING'),
('2013-04-13', 'PAYPHILLOCAL', 5800.000, 'HKCSL2'),
('2013-04-13', 'PAYPHILLOCAL', 600.000, 'PC2MWEB-Intl'),
('2013-04-13', 'PAYPHILLOCAL', 2700.000, 'SMTAMAX'),
('2013-04-14', 'PAYPHILLOCAL', 545440.000, 'AmaxDomesticAPI'),
('2013-04-14', 'PAYPHILLOCAL', 150.000, 'PC2MWEB'),
('2013-04-14', 'PAYPHIL2-CONVER', 33550.000, 'EVENDING'),
('2013-04-14', 'PAYPHILLOCAL', 10400.000, 'HKCSL2'),
('2013-04-14', 'PAYPHILLOCAL', 300.000, 'PC2MWEB-Intl'),
('2013-04-14', 'PAYPHILLOCAL', 3550.000, 'SMTAMAX'),
('2013-04-15', 'PAYPHILLOCAL', 628172.000, 'AmaxDomesticAPI'),
('2013-04-15', 'PAYPHILLOCAL', 30450.000, 'PC2MWEB'),
('2013-04-15', 'PAYPHIL2-CONVER', 58650.000, 'EVENDING'),
('2013-04-15', 'PAYPHILLOCAL', 6600.000, 'HKCSL2'),
('2013-04-15', 'PAYPHILLOCAL', 2450.000, 'SMTAMAX'),
('2013-04-15', 'PAYPHILLOCAL', 16606.000, 'SUBWAYAPI'),
('2013-04-16', 'PAYPHILLOCAL', 662351.000, 'AmaxDomesticAPI'),
('2013-04-16', 'PAYPHILLOCAL', 41050.000, 'PC2MWEB'),
('2013-04-16', 'PAYPHIL2-CONVER', 72700.000, 'EVENDING'),
('2013-04-16', 'PAYPHILLOCAL', 7200.000, 'HKCSL2'),
('2013-04-16', 'PAYPHILLOCAL', 1150.000, 'PC2MWEB-Intl'),
('2013-04-16', 'PAYPHILLOCAL', 3200.000, 'SMTAMAX'),
('2013-04-16', 'PAYPHILLOCAL', 9058.000, 'SUBWAYAPI'),
('2013-04-17', 'PAYPHILLOCAL', 683395.000, 'AmaxDomesticAPI'),
('2013-04-17', 'PAYPHILLOCAL', 7398.000, 'LocalAmaxInterf'),
('2013-04-17', 'PAYPHILLOCAL', 39200.000, 'PC2MWEB'),
('2013-04-17', 'PAYPHIL2-CONVER', 51200.000, 'EVENDING'),
('2013-04-17', 'PAYPHILLOCAL', 6500.000, 'HKCSL2'),
('2013-04-17', 'PAYPHILLOCAL', 300.000, 'PC2MWEB-Intl'),
('2013-04-17', 'PAYPHILLOCAL', 3500.000, 'SMTAMAX'),
('2013-04-18', 'PAYPHILLOCAL', 655551.000, 'AmaxDomesticAPI'),
('2013-04-18', 'PAYPHILLOCAL', 35750.000, 'PC2MWEB'),
('2013-04-18', 'PAYPHIL2-CONVER', 28500.000, 'EVENDING'),
('2013-04-18', 'PAYPHILLOCAL', 7300.000, 'HKCSL2'),
('2013-04-18', 'PAYPHILLOCAL', 2950.000, 'SMTAMAX'),
('2013-04-18', 'PAYPHILLOCAL', 21991.000, 'SUBWAYAPI'),
('2013-04-19', 'PAYPHILLOCAL', 594287.000, 'AmaxDomesticAPI'),
('2013-04-19', 'PAYPHILLOCAL', 3360.000, 'PC2MWEB'),
('2013-04-19', 'PAYPHIL2-CONVER', 35150.000, 'EVENDING'),
('2013-04-19', 'PAYPHILLOCAL', 6000.000, 'HKCSL2'),
('2013-04-19', 'PAYPHILLOCAL', 300.000, 'PC2MWEB-Intl'),
('2013-04-19', 'PAYPHILLOCAL', 3700.000, 'SMTAMAX'),
('2013-04-19', 'PAYPHILLOCAL', 15933.000, 'SUBWAYAPI'),
('2013-04-20', 'PAYPHILLOCAL', 633942.000, 'AmaxDomesticAPI'),
('2013-04-20', 'PAYPHILLOCAL', 30150.000, 'PC2MWEB'),
('2013-04-20', 'PAYPHIL2-CONVER', 33250.000, 'EVENDING'),
('2013-04-20', 'PAYPHILLOCAL', 5800.000, 'HKCSL2'),
('2013-04-20', 'PAYPHILLOCAL', 450.000, 'PC2MWEB-Intl'),
('2013-04-20', 'PAYPHILLOCAL', 1950.000, 'SMTAMAX'),
('2013-04-21', 'PAYPHILLOCAL', 563500.000, 'AmaxDomesticAPI'),
('2013-04-21', 'PAYPHILLOCAL', 1350.000, 'PC2MWEB'),
('2013-04-21', 'PAYPHIL2-CONVER', 21500.000, 'EVENDING'),
('2013-04-21', 'PAYPHILLOCAL', 7900.000, 'HKCSL2'),
('2013-04-21', 'PAYPHILLOCAL', 150.000, 'PC2MWEB-Intl'),
('2013-04-21', 'PAYPHILLOCAL', 3950.000, 'SMTAMAX'),
('2013-04-22', 'PAYPHILLOCAL', 645078.000, 'AmaxDomesticAPI'),
('2013-04-22', 'PAYPHILLOCAL', 55600.000, 'PC2MWEB'),
('2013-04-22', 'PAYPHIL2-CONVER', 31250.000, 'EVENDING'),
('2013-04-22', 'PAYPHILLOCAL', 6200.000, 'HKCSL2'),
('2013-04-22', 'PAYPHILLOCAL', 750.000, 'PC2MWEB-Intl'),
('2013-04-22', 'PAYPHILLOCAL', 2900.000, 'SMTAMAX'),
('2013-04-23', 'PAYPHILLOCAL', 622208.000, 'AmaxDomesticAPI'),
('2013-04-23', 'PAYPHILLOCAL', 13030.000, 'LocalAmaxInterf'),
('2013-04-23', 'PAYPHILLOCAL', 46050.000, 'PC2MWEB'),
('2013-04-23', 'PAYPHIL2-CONVER', 97500.000, 'EVENDING'),
('2013-04-23', 'PAYPHILLOCAL', 5600.000, 'HKCSL2'),
('2013-04-23', 'PAYPHILLOCAL', 150.000, 'PC2MWEB-Intl'),
('2013-04-23', 'PAYPHILLOCAL', 2550.000, 'SMTAMAX'),
('2013-04-24', 'PAYPHILLOCAL', 646288.000, 'AmaxDomesticAPI'),
('2013-04-24', 'PAYPHILLOCAL', 3222.000, 'LocalAmaxInterf'),
('2013-04-24', 'PAYPHILLOCAL', 21450.000, 'PC2MWEB'),
('2013-04-24', 'PAYPHIL2-CONVER', 301100.000, 'EVENDING'),
('2013-04-24', 'PAYPHILLOCAL', 6400.000, 'HKCSL2'),
('2013-04-24', 'PAYPHILLOCAL', 3200.000, 'SMTAMAX'),
('2013-04-25', 'PAYPHILLOCAL', 658453.000, 'AmaxDomesticAPI'),
('2013-04-25', 'PAYPHILLOCAL', 450.000, 'PC2MWEB'),
('2013-04-25', 'PAYPHIL2-CONVER', 211650.000, 'EVENDING'),
('2013-04-25', 'PAYPHILLOCAL', 7500.000, 'HKCSL2'),
('2013-04-25', 'PAYPHILLOCAL', 2450.000, 'SMTAMAX'),
('2013-04-26', 'PAYPHILLOCAL', 657077.000, 'AmaxDomesticAPI'),
('2013-04-26', 'PAYPHILLOCAL', 58200.000, 'PC2MWEB'),
('2013-04-26', 'PAYPHILLOCAL', 6100.000, 'HKCSL2'),
('2013-04-26', 'PAYPHILLOCAL', 3950.000, 'SMTAMAX'),
('2013-04-27', 'PAYPHILLOCAL', 608798.000, 'AmaxDomesticAPI'),
('2013-04-27', 'PAYPHILLOCAL', 40300.000, 'PC2MWEB'),
('2013-04-27', 'PAYPHILLOCAL', 6200.000, 'HKCSL2'),
('2013-04-27', 'PAYPHILLOCAL', 2100.000, 'SMTAMAX'),
('2013-04-28', 'PAYPHILLOCAL', 552203.000, 'AmaxDomesticAPI'),
('2013-04-28', 'PAYPHILLOCAL', 300.000, 'PC2MWEB'),
('2013-04-28', 'PAYPHILLOCAL', 9700.000, 'HKCSL2'),
('2013-04-28', 'PAYPHILLOCAL', 3200.000, 'SMTAMAX'),
('2013-04-29', 'PAYPHILLOCAL', 653466.000, 'AmaxDomesticAPI'),
('2013-04-29', 'PAYPHILLOCAL', 15600.000, 'PC2MWEB'),
('2013-04-29', 'PAYPHILLOCAL', 8100.000, 'HKCSL2'),
('2013-04-29', 'PAYPHILLOCAL', 3800.000, 'SMTAMAX'),
('2013-04-30', 'PAYPHILLOCAL', 618484.000, 'AmaxDomesticAPI'),
('2013-04-30', 'PAYPHILLOCAL', 105150.000, 'PC2MWEB'),
('2013-04-30', 'PAYPHIL2-CONVER', 91400.000, 'EVENDING'),
('2013-04-30', 'PAYPHILLOCAL', 6100.000, 'HKCSL2'),
('2013-04-30', 'PAYPHILLOCAL', 1750.000, 'SMTAMAX'),
('2013-05-01', 'PAYPHILLOCAL', 582004.000, 'AmaxDomesticAPI'),
('2013-05-01', 'PAYPHILLOCAL', 3050.000, 'PC2MWEB'),
('2013-05-01', 'PAYPHILLOCAL', 7200.000, 'HKCSL2'),
('2013-05-01', 'PAYPHILLOCAL', 3000.000, 'SMTAMAX'),
('2013-05-02', 'PAYPHILLOCAL', 670935.000, 'AmaxDomesticAPI'),
('2013-05-02', 'PAYPHILLOCAL', 5500.000, 'PC2MWEB'),
('2013-05-02', 'PAYPHILLOCAL', 7900.000, 'HKCSL2'),
('2013-05-02', 'PAYPHILLOCAL', 3150.000, 'SMTAMAX'),
('2013-05-03', 'PAYPHILLOCAL', 688519.000, 'AmaxDomesticAPI'),
('2013-05-03', 'PAYPHILLOCAL', 57517.000, 'PC2MWEB'),
('2013-05-03', 'PAYPHILLOCAL', 7100.000, 'HKCSL2'),
('2013-05-03', 'PAYPHILLOCAL', 3750.000, 'SMTAMAX'),
('2013-05-04', 'PAYPHILLOCAL', 630607.000, 'AmaxDomesticAPI'),
('2013-05-04', 'PAYPHILLOCAL', 6050.000, 'PC2MWEB'),
('2013-05-04', 'PAYPHILLOCAL', 8000.000, 'HKCSL2'),
('2013-05-04', 'PAYPHILLOCAL', 2250.000, 'SMTAMAX'),
('2013-05-05', 'PAYPHILLOCAL', 603613.000, 'AmaxDomesticAPI'),
('2013-05-05', 'PAYPHILLOCAL', 30450.000, 'PC2MWEB'),
('2013-05-05', 'PAYPHILLOCAL', 11500.000, 'HKCSL2'),
('2013-05-05', 'PAYPHILLOCAL', 4000.000, 'SMTAMAX'),
('2013-05-06', 'PAYPHILLOCAL', 609178.000, 'AmaxDomesticAPI'),
('2013-05-06', 'PAYPHILLOCAL', 23000.000, 'PC2MWEB'),
('2013-05-06', 'PAYPHILLOCAL', 8500.000, 'HKCSL2'),
('2013-05-06', 'PAYPHILLOCAL', 3500.000, 'SMTAMAX'),
('2013-05-07', 'PAYPHILLOCAL', 587094.000, 'AmaxDomesticAPI'),
('2013-05-07', 'PAYPHILLOCAL', 5292.000, 'LocalAmaxInterf'),
('2013-05-07', 'PAYPHILLOCAL', 45300.000, 'PC2MWEB'),
('2013-05-07', 'PAYPHIL2-CONVER', 300.000, 'EVENDING'),
('2013-05-07', 'PAYPHILLOCAL', 7800.000, 'HKCSL2'),
('2013-05-07', 'PAYPHILLOCAL', 3100.000, 'SMTAMAX'),
('2013-05-08', 'PAYPHILLOCAL', 584241.000, 'AmaxDomesticAPI'),
('2013-05-08', 'PAYPHILLOCAL', 26010.000, 'PC2MWEB'),
('2013-05-08', 'PAYPHILLOCAL', 7300.000, 'HKCSL2'),
('2013-05-08', 'PAYPHILLOCAL', 2950.000, 'SMTAMAX'),
('2013-05-09', 'PAYPHILLOCAL', 611850.000, 'AmaxDomesticAPI'),
('2013-05-09', 'PAYPHILLOCAL', 86500.000, 'PC2MWEB'),
('2013-05-09', 'PAYPHILLOCAL', 7000.000, 'HKCSL2'),
('2013-05-09', 'PAYPHILLOCAL', 2450.000, 'SMTAMAX'),
('2013-05-10', 'PAYPHILLOCAL', 586416.000, 'AmaxDomesticAPI'),
('2013-05-10', 'PAYPHILLOCAL', 5935.000, 'LocalAmaxInterf'),
('2013-05-10', 'PAYPHILLOCAL', 15900.000, 'PC2MWEB'),
('2013-05-10', 'PAYPHIL2-CONVER', 400.000, 'EVENDING'),
('2013-05-10', 'PAYPHILLOCAL', 5600.000, 'HKCSL2'),
('2013-05-10', 'PAYPHILLOCAL', 300.000, 'PC2MWEB-Intl'),
('2013-05-10', 'PAYPHILLOCAL', 3900.000, 'SMTAMAX'),
('2013-05-11', 'PAYPHILLOCAL', 597561.000, 'AmaxDomesticAPI'),
('2013-05-11', 'PAYPHILLOCAL', 150.000, 'PC2MWEB'),
('2013-05-11', 'PAYPHILLOCAL', 6100.000, 'HKCSL2'),
('2013-05-11', 'PAYPHILLOCAL', 2400.000, 'SMTAMAX'),
('2013-05-12', 'PAYPHILLOCAL', 586835.000, 'AmaxDomesticAPI'),
('2013-05-12', 'PAYPHILLOCAL', 12600.000, 'HKCSL2'),
('2013-05-12', 'PAYPHILLOCAL', 3850.000, 'SMTAMAX'),
('2013-05-13', 'PAYPHILLOCAL', 505458.000, 'AmaxDomesticAPI'),
('2013-05-13', 'PAYPHILLOCAL', 22000.000, 'PC2MWEB'),
('2013-05-13', 'PAYPHILLOCAL', 8400.000, 'HKCSL2'),
('2013-05-13', 'PAYPHILLOCAL', 3900.000, 'SMTAMAX'),
('2013-05-13', 'PAYPHILLOCAL', 100.000, 'SUBWAYAPI'),
('2013-05-14', 'PAYPHILLOCAL', 611357.000, 'AmaxDomesticAPI'),
('2013-05-14', 'PAYPHILLOCAL', 5019.000, 'LocalAmaxInterf'),
('2013-05-14', 'PAYPHILLOCAL', 33350.000, 'PC2MWEB'),
('2013-05-14', 'PAYPHIL2-CONVER', 800.000, 'EVENDING'),
('2013-05-14', 'PAYPHILLOCAL', 7200.000, 'HKCSL2'),
('2013-05-14', 'PAYPHILLOCAL', 300.000, 'PC2MWEB-Intl'),
('2013-05-14', 'PAYPHILLOCAL', 3050.000, 'SMTAMAX'),
('2013-05-14', 'PAYPHILLOCAL', 949.000, 'SUBWAYAPI'),
('2013-05-15', 'PAYPHILLOCAL', 617812.000, 'AmaxDomesticAPI'),
('2013-05-15', 'PAYPHILLOCAL', 25100.000, 'PC2MWEB'),
('2013-05-15', 'PAYPHIL2-CONVER', 1200.000, 'EVENDING'),
('2013-05-15', 'PAYPHILLOCAL', 6700.000, 'HKCSL2'),
('2013-05-15', 'PAYPHILLOCAL', 5.000, 'PC2MWEB-Intl'),
('2013-05-15', 'PAYPHILLOCAL', 3200.000, 'SMTAMAX'),
('2013-05-15', 'PAYPHILLOCAL', 11512.000, 'SUBWAYAPI'),
('2013-05-16', 'PAYPHILLOCAL', 619814.000, 'AmaxDomesticAPI'),
('2013-05-16', 'PAYPHILLOCAL', 6623.000, 'LocalAmaxInterf'),
('2013-05-16', 'PAYPHILLOCAL', 5000.000, 'PC2MWEB'),
('2013-05-16', 'PAYPHILLOCAL', 5800.000, 'HKCSL2'),
('2013-05-16', 'PAYPHILLOCAL', 2950.000, 'SMTAMAX'),
('2013-05-16', 'PAYPHILLOCAL', 952.000, 'SUBWAYAPI'),
('2013-05-17', 'PAYPHILLOCAL', 625310.000, 'AmaxDomesticAPI'),
('2013-05-17', 'PAYPHILLOCAL', 606.000, 'LocalAmaxInterf'),
('2013-05-17', 'PAYPHILLOCAL', 80000.000, 'PC2MWEB'),
('2013-05-17', 'PAYPHILLOCAL', 5500.000, 'HKCSL2'),
('2013-05-17', 'PAYPHILLOCAL', 2400.000, 'SMTAMAX'),
('2013-05-17', 'PAYPHILLOCAL', 889.000, 'SUBWAYAPI'),
('2013-05-18', 'PAYPHILLOCAL', 561673.000, 'AmaxDomesticAPI'),
('2013-05-18', 'PAYPHILLOCAL', 30000.000, 'PC2MWEB'),
('2013-05-18', 'PAYPHILLOCAL', 6100.000, 'HKCSL2'),
('2013-05-18', 'PAYPHILLOCAL', 3150.000, 'SMTAMAX'),
('2013-05-19', 'PAYPHILLOCAL', 506614.000, 'AmaxDomesticAPI'),
('2013-05-19', 'PAYPHIL2-CONVER', 1800.000, 'EVENDING'),
('2013-05-19', 'PAYPHILLOCAL', 9300.000, 'HKCSL2'),
('2013-05-19', 'PAYPHILLOCAL', 2150.000, 'SMTAMAX'),
('2013-05-20', 'PAYPHILLOCAL', 611177.000, 'AmaxDomesticAPI'),
('2013-05-20', 'PAYPHILLOCAL', 11050.000, 'PC2MWEB'),
('2013-05-20', 'PAYPHILLOCAL', 7700.000, 'HKCSL2'),
('2013-05-20', 'PAYPHILLOCAL', 3750.000, 'SMTAMAX'),
('2013-05-21', 'PAYPHILLOCAL', 592111.000, 'AmaxDomesticAPI'),
('2013-05-21', 'PAYPHILLOCAL', 58035.000, 'PC2MWEB'),
('2013-05-21', 'PAYPHILLOCAL', 5200.000, 'HKCSL2'),
('2013-05-21', 'PAYPHILLOCAL', 3150.000, 'SMTAMAX'),
('2013-05-22', 'PAYPHILLOCAL', 606122.000, 'AmaxDomesticAPI'),
('2013-05-22', 'PAYPHILLOCAL', 10525.000, 'LocalAmaxInterf'),
('2013-05-22', 'PAYPHILLOCAL', 25160.000, 'PC2MWEB'),
('2013-05-22', 'PAYPHILLOCAL', 4900.000, 'HKCSL2'),
('2013-05-22', 'PAYPHILLOCAL', 3000.000, 'SMTAMAX'),
('2013-05-23', 'PAYPHILLOCAL', 582080.000, 'AmaxDomesticAPI'),
('2013-05-23', 'PAYPHILLOCAL', 4629.000, 'LocalAmaxInterf'),
('2013-05-23', 'PAYPHILLOCAL', 15.000, 'PC2MWEB'),
('2013-05-23', 'PAYPHILLOCAL', 7600.000, 'HKCSL2'),
('2013-05-23', 'PAYPHILLOCAL', 3300.000, 'SMTAMAX'),
('2013-05-23', 'PAYPHILLOCAL', 49.000, 'SUBWAYAPI'),
('2013-05-24', 'PAYPHILLOCAL', 614548.000, 'AmaxDomesticAPI'),
('2013-05-24', 'PAYPHILLOCAL', 71250.000, 'PC2MWEB'),
('2013-05-24', 'PAYPHILLOCAL', 6900.000, 'HKCSL2'),
('2013-05-24', 'PAYPHILLOCAL', 2350.000, 'SMTAMAX'),
('2013-05-25', 'PAYPHILLOCAL', 563724.000, 'AmaxDomesticAPI'),
('2013-05-25', 'PAYPHILLOCAL', 50000.000, 'PC2MWEB'),
('2013-05-25', 'PAYPHILLOCAL', 6400.000, 'HKCSL2'),
('2013-05-25', 'PAYPHILLOCAL', 150.000, 'PC2MWEB-Intl'),
('2013-05-25', 'PAYPHILLOCAL', 2750.000, 'SMTAMAX');
INSERT INTO `wallet_transactions` (`transactiondate`, `wallet_name`, `amount`, `appname`) VALUES
('2013-05-26', 'PAYPHILLOCAL', 500248.000, 'AmaxDomesticAPI'),
('2013-05-26', 'PAYPHILLOCAL', 5000.000, 'PC2MWEB'),
('2013-05-26', 'PAYPHILLOCAL', 10000.000, 'HKCSL2'),
('2013-05-26', 'PAYPHILLOCAL', 3600.000, 'SMTAMAX'),
('2013-05-27', 'PAYPHILLOCAL', 598218.000, 'AmaxDomesticAPI'),
('2013-05-27', 'PAYPHILLOCAL', 31000.000, 'PC2MWEB'),
('2013-05-27', 'PAYPHILLOCAL', 8700.000, 'HKCSL2'),
('2013-05-27', 'PAYPHILLOCAL', 3650.000, 'SMTAMAX'),
('2013-05-28', 'PAYPHILLOCAL', 578841.000, 'AmaxDomesticAPI'),
('2013-05-28', 'PAYPHILLOCAL', 30470.000, 'PC2MWEB'),
('2013-05-28', 'PAYPHILLOCAL', 7600.000, 'HKCSL2'),
('2013-05-28', 'PAYPHILLOCAL', 300.000, 'PC2MWEB-Intl'),
('2013-05-28', 'PAYPHILLOCAL', 3850.000, 'SMTAMAX'),
('2013-05-29', 'PAYPHILLOCAL', 582498.000, 'AmaxDomesticAPI'),
('2013-05-29', 'PAYPHILLOCAL', 22430.000, 'PC2MWEB'),
('2013-05-29', 'PAYPHILLOCAL', 7400.000, 'HKCSL2'),
('2013-05-29', 'PAYPHILLOCAL', 2500.000, 'SMTAMAX'),
('2013-05-30', 'PAYPHILLOCAL', 611710.000, 'AmaxDomesticAPI'),
('2013-05-30', 'PAYPHILLOCAL', 52000.000, 'PC2MWEB'),
('2013-05-30', 'PAYPHILLOCAL', 5900.000, 'HKCSL2'),
('2013-05-30', 'PAYPHILLOCAL', 2200.000, 'SMTAMAX'),
('2013-05-31', 'PAYPHILLOCAL', 600268.000, 'AmaxDomesticAPI'),
('2013-05-31', 'PAYPHILLOCAL', 5900.000, 'HKCSL2'),
('2013-05-31', 'PAYPHILLOCAL', 450.000, 'PC2MWEB-Intl'),
('2013-05-31', 'PAYPHILLOCAL', 3850.000, 'SMTAMAX'),
('2013-05-31', 'PAYPHILLOCAL', 7759.000, 'SUBWAYAPI'),
('2013-06-01', 'PAYPHILLOCAL', 583449.000, 'AmaxDomesticAPI'),
('2013-06-01', 'PAYPHILLOCAL', 500.000, 'PC2MWEB'),
('2013-06-01', 'PAYPHILLOCAL', 5900.000, 'HKCSL2'),
('2013-06-01', 'PAYPHILLOCAL', 2050.000, 'SMTAMAX'),
('2013-06-02', 'PAYPHILLOCAL', 521289.000, 'AmaxDomesticAPI'),
('2013-06-02', 'PAYPHILLOCAL', 11700.000, 'HKCSL2'),
('2013-06-02', 'PAYPHILLOCAL', 2700.000, 'SMTAMAX'),
('2013-06-03', 'PAYPHILLOCAL', 610860.000, 'AmaxDomesticAPI'),
('2013-06-03', 'PAYPHILLOCAL', 125.000, 'PC2MWEB'),
('2013-06-03', 'PAYPHILLOCAL', 10300.000, 'HKCSL2'),
('2013-06-03', 'PAYPHILLOCAL', 3450.000, 'SMTAMAX'),
('2013-06-04', 'PAYPHILLOCAL', 579768.000, 'AmaxDomesticAPI'),
('2013-06-04', 'PAYPHILLOCAL', 2000.000, 'PC2MWEB'),
('2013-06-04', 'PAYPHILLOCAL', 7500.000, 'HKCSL2'),
('2013-06-04', 'PAYPHILLOCAL', 3600.000, 'SMTAMAX'),
('2013-06-05', 'PAYPHILLOCAL', 638681.000, 'AmaxDomesticAPI'),
('2013-06-05', 'PAYPHILLOCAL', 5800.000, 'HKCSL2'),
('2013-06-05', 'PAYPHILLOCAL', 2200.000, 'SMTAMAX'),
('2013-06-06', 'PAYPHILLOCAL', 553152.000, 'AmaxDomesticAPI'),
('2013-06-06', 'PAYPHILLOCAL', 15.000, 'PC2MWEB'),
('2013-06-06', 'PAYPHILLOCAL', 7000.000, 'HKCSL2'),
('2013-06-06', 'PAYPHILLOCAL', 2850.000, 'SMTAMAX'),
('2013-06-06', 'PAYPHILLOCAL', 11413.000, 'SUBWAYAPI'),
('2013-06-07', 'PAYPHILLOCAL', 610469.000, 'AmaxDomesticAPI'),
('2013-06-07', 'PAYPHILLOCAL', 40000.000, 'PC2MWEB'),
('2013-06-07', 'PAYPHILLOCAL', 7000.000, 'HKCSL2'),
('2013-06-07', 'PAYPHILLOCAL', 2450.000, 'SMTAMAX'),
('2013-06-08', 'PAYPHILLOCAL', 548487.000, 'AmaxDomesticAPI'),
('2013-06-08', 'PAYPHILLOCAL', 32000.000, 'PC2MWEB'),
('2013-06-08', 'PAYPHILLOCAL', 6700.000, 'HKCSL2'),
('2013-06-08', 'PAYPHILLOCAL', 1750.000, 'SMTAMAX'),
('2013-06-09', 'PAYPHILLOCAL', 450622.000, 'AmaxDomesticAPI'),
('2013-06-09', 'PAYPHILLOCAL', 11000.000, 'HKCSL2'),
('2013-06-09', 'PAYPHILLOCAL', 3200.000, 'SMTAMAX'),
('2013-06-10', 'PAYPHILLOCAL', 606811.000, 'AmaxDomesticAPI'),
('2013-06-10', 'PAYPHILLOCAL', 2050.000, 'PC2MWEB'),
('2013-06-10', 'PAYPHILLOCAL', 7700.000, 'HKCSL2'),
('2013-06-10', 'PAYPHILLOCAL', 2700.000, 'SMTAMAX'),
('2013-06-10', 'PAYPHILLOCAL', 136.000, 'SUBWAYAPI'),
('2013-06-11', 'PAYPHILLOCAL', 604861.000, 'AmaxDomesticAPI'),
('2013-06-11', 'PAYPHILLOCAL', 16000.000, 'PC2MWEB'),
('2013-06-11', 'PAYPHILLOCAL', 7500.000, 'HKCSL2'),
('2013-06-11', 'PAYPHILLOCAL', 1450.000, 'SMTAMAX'),
('2013-06-11', 'PAYPHILLOCAL', 2275.000, 'SUBWAYAPI'),
('2013-06-12', 'PAYPHILLOCAL', 544914.000, 'AmaxDomesticAPI'),
('2013-06-12', 'PAYPHILLOCAL', 150.000, 'PC2MWEB'),
('2013-06-12', 'PAYPHILLOCAL', 9600.000, 'HKCSL2'),
('2013-06-12', 'PAYPHILLOCAL', 2250.000, 'SMTAMAX'),
('2013-06-12', 'PAYPHILLOCAL', 904.000, 'SUBWAYAPI'),
('2013-06-13', 'PAYPHILLOCAL', 662455.000, 'AmaxDomesticAPI'),
('2013-06-13', 'PAYPHILLOCAL', 15350.000, 'PC2MWEB'),
('2013-06-13', 'PAYPHILLOCAL', 7500.000, 'HKCSL2'),
('2013-06-13', 'PAYPHILLOCAL', 2750.000, 'SMTAMAX'),
('2013-06-13', 'PAYPHILLOCAL', 6984.000, 'SUBWAYAPI'),
('2013-06-14', 'PAYPHILLOCAL', 653857.000, 'AmaxDomesticAPI'),
('2013-06-14', 'PAYPHILLOCAL', 408500.000, 'PC2MWEB'),
('2013-06-14', 'PAYPHILLOCAL', 5600.000, 'HKCSL2'),
('2013-06-14', 'PAYPHILLOCAL', 3500.000, 'SMTAMAX'),
('2013-06-14', 'PAYPHILLOCAL', 12278.000, 'SUBWAYAPI'),
('2013-06-15', 'PAYPHILLOCAL', 606084.000, 'AmaxDomesticAPI'),
('2013-06-15', 'PAYPHILLOCAL', 10100.000, 'HKCSL2'),
('2013-06-15', 'PAYPHILLOCAL', 300.000, 'PC2MWEB-Intl'),
('2013-06-15', 'PAYPHILLOCAL', 2150.000, 'SMTAMAX');
