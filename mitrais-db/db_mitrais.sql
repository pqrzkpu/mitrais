/*
SQLyog Ultimate v10.42 
MySQL - 5.7.19 : Database - db_mitrais
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `t_users` */

DROP TABLE IF EXISTS `t_users`;

CREATE TABLE `t_users` (
  `user_ID` int(3) NOT NULL AUTO_INCREMENT,
  `user_phone_number` varchar(16) DEFAULT NULL,
  `user_first_name` varchar(25) DEFAULT NULL,
  `user_last_name` varchar(25) DEFAULT NULL,
  `user_birth_date` int(2) DEFAULT NULL,
  `user_birth_month` int(2) DEFAULT NULL,
  `user_birth_year` int(4) DEFAULT NULL,
  `user_gender` int(1) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `t_users` */

insert  into `t_users`(`user_ID`,`user_phone_number`,`user_first_name`,`user_last_name`,`user_birth_date`,`user_birth_month`,`user_birth_year`,`user_gender`,`user_email`) values (1,'6287860607878','Faizal','Hasymi',12,4,1991,1,'fhasymi@outlook.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
