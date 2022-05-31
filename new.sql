/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - funding
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`funding`;
USE `funding`;
/*Table `admin` */
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*`admin` data*/
insert  into `admin`(`username`,`password`) values ('admin','admin');
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `username` varchar(100) DEFAULT NULL,
  `filename` varchar(100) DEFAULT NULL,
  `filepath` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `status1` varchar(100) DEFAULT NULL,
  `status2` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert  into `file`(`username`,`filename`,`filepath`,`status`,`status1`,`status2`) values ('moulali','new.txt','leaves\\new.txt','approved','accepted','requested');
DROP TABLE IF EXISTS `investor`;
CREATE TABLE `investor` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `lp` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `investedin` varchar(100) DEFAULT NULL,
  `mini` varchar(100) DEFAULT NULL,
  `maxi` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert  into `investor`(`username`,`password`,`dob`,`lp`,`mobile`,`investedin`,`mini`,`maxi`,`status`) values ('chotu','123','2021-05-02','www.linkedin','8693366555','100pro','1000','2000','accpted');
DROP TABLE IF EXISTS `request`;
CREATE TABLE `request` (
  `username` varchar(100) DEFAULT NULL,
  `owner` varchar(100) DEFAULT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert  into `request`(`username`,`owner`,`cname`,`status`) values (NULL,'moulali','ss computers','pending'),(NULL,'moulali','ss computers','pending'),(NULL,'moulali','ss computers','pending'),(NULL,'moulali','ss computers','pending'),(NULL,'moulali','ss computers','pending'),(NULL,'moulali','ss computers','pending'),(NULL,'moulali','ss computers','pending'),(NULL,'moulali','ss computers','pending'),(NULL,'moulali','ss computers','pending'),(NULL,'moulali','ss computers','pending'),(NULL,'moulali','ss computers','pending'),(NULL,'moulali','ss computers','pending'),(NULL,'moulali','ss computers','pending'),(NULL,'moulali','ss computers','pending'),(NULL,'moulali','ss computers','pending'),(NULL,'moulali','ss computers','pending'),(NULL,'moulali','ss computers','pending'),(NULL,'moulali','ss computers','pending'),(NULL,'moulali','ss computers','pending'),(NULL,'moulali','ss computers','pending');
DROP TABLE IF EXISTS `startup`;
CREATE TABLE `startup` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `ryear` varchar(100) DEFAULT NULL,
  `cweb` varchar(100) DEFAULT NULL,
  `ament` varchar(100) DEFAULT NULL,
  `lp` varchar(100) DEFAULT NULL,
  `roc` varchar(100) DEFAULT NULL,
  `cname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert  into `startup`(`username`,`password`,`ryear`,`cweb`,`ament`,`lp`,`roc`,`cname`) values ('moulali','123','2021-04-26','www.ss','good ','www.linkedin','123456','ss computers');
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
