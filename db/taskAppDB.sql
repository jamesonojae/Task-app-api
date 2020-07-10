/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.11-MariaDB : Database - task
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`task` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `task`;

/*Table structure for table `lists` */

DROP TABLE IF EXISTS `lists`;

CREATE TABLE `lists` (
  `listId` int(20) NOT NULL AUTO_INCREMENT,
  `listDescription` varchar(100) DEFAULT NULL,
  `createdDateTime` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`listId`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `lists` */

insert  into `lists`(`listId`,`listDescription`,`createdDateTime`) values 
(1,'test one','2020-06-23 22:58:00'),
(2,'test two','2020-06-28 02:58:10'),
(3,'Testing front','2020-06-23 22:58:00'),
(4,'From UI','01/07/2020'),
(5,'Desktop test','7/3/2020'),
(15,'List list','ooon'),
(14,'other','0766'),
(13,'new list','09/09/20'),
(12,'new list','09/09/20');

/*Table structure for table `tasks` */

DROP TABLE IF EXISTS `tasks`;

CREATE TABLE `tasks` (
  `taskId` int(20) NOT NULL AUTO_INCREMENT,
  `listId` int(20) DEFAULT NULL,
  `taskTitle` varchar(100) DEFAULT NULL,
  `taskDescription` varchar(100) DEFAULT NULL,
  `taskType` varchar(50) DEFAULT NULL,
  `taskStatus` varchar(50) DEFAULT NULL,
  `createdDateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`taskId`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `tasks` */

insert  into `tasks`(`taskId`,`listId`,`taskTitle`,`taskDescription`,`taskType`,`taskStatus`,`createdDateTime`) values 
(1,7,'Good News','my my first','Home','active','2002-02-02 00:00:00'),
(2,3,'Good News','my second',NULL,NULL,'2002-02-02 00:00:00'),
(3,4,'Testing',NULL,NULL,NULL,NULL),
(4,2,'Testing',NULL,NULL,NULL,NULL),
(5,4,'Testing1',NULL,NULL,NULL,NULL),
(6,6,'Testing1',NULL,NULL,NULL,NULL),
(7,5,'Testing1',NULL,NULL,NULL,NULL),
(8,6,'Testing2',NULL,NULL,NULL,NULL),
(9,1,'good one',NULL,NULL,NULL,NULL),
(10,4,'test one',NULL,NULL,NULL,NULL),
(11,5,'Testing front',NULL,NULL,NULL,NULL),
(12,3,'first task','my my first','office','done','2002-02-02 00:00:00'),
(13,NULL,NULL,NULL,NULL,NULL,NULL),
(14,NULL,NULL,NULL,NULL,NULL,NULL),
(15,NULL,NULL,NULL,NULL,NULL,NULL),
(16,NULL,NULL,NULL,NULL,NULL,NULL),
(17,1,'www','ssss','ddd','qqq','0000-00-00 00:00:00'),
(18,9,'My',' new task','office','processing','0000-00-00 00:00:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
