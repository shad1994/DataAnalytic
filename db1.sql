/*
SQLyog Enterprise Trial - MySQL GUI v7.11 
MySQL - 5.6.10 : Database - dataanalytics
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`dataanalytics` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dataanalytics`;

/*Table structure for table `admindata` */

DROP TABLE IF EXISTS `admindata`;

CREATE TABLE `admindata` (
  `email` varchar(30) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `admindata` */

insert  into `admindata`(`email`,`password`) values ('shad.sayeed2@gmail.com','shad');

/*Table structure for table `branch` */

DROP TABLE IF EXISTS `branch`;

CREATE TABLE `branch` (
  `branch_id` int(10) NOT NULL AUTO_INCREMENT,
  `branchname` varchar(50) DEFAULT NULL,
  `columnname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `branch` */

insert  into `branch`(`branch_id`,`branchname`,`columnname`) values (1,'IT','IT'),(2,'CS','CS'),(3,'Biotech','biotechnology'),(4,'Production and Industrial engineering','production_and_industrial_eng'),(5,'Environmental engineering','environmental_eng'),(6,'Polymer science and chemical technology','polymer_science_and_chemical_eng'),(7,'Software engineering','software_eng'),(8,'Automobile engineering','automobile_eng'),(9,'Electrical and electronics engineering','electrical_and_electronics_eng'),(10,'Civil engineering','civil_eng'),(11,'Electrical engineering','electrical_eng'),(12,'Electronics and communicational engineering','electronics_snd_communicational_eng'),(13,'Mechanical engineering','mechanical_eng'),(14,'Manufacturing process and automation','manufacturing_process_and_automation_eng'),(15,'Instrumentation and control engineering','instrumentation_and_control_eng');

/*Table structure for table `collegedata` */

DROP TABLE IF EXISTS `collegedata`;

CREATE TABLE `collegedata` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `location` varchar(20) DEFAULT NULL,
  `institute_type` varchar(10) DEFAULT NULL,
  `university` varchar(30) DEFAULT NULL,
  `IT` int(10) DEFAULT '0',
  `IT_fill` int(10) DEFAULT '0',
  `CS` int(10) DEFAULT '0',
  `CS_fill` int(10) DEFAULT '0',
  `biotechnology` int(10) DEFAULT '0',
  `biotechnology_fill` int(10) DEFAULT '0',
  `production_and_industrial_eng` int(10) DEFAULT '0',
  `production_and_industrial_eng_fill` int(10) DEFAULT '0',
  `environmental_eng` int(10) DEFAULT '0',
  `environmental_eng_fill` int(10) DEFAULT '0',
  `polymer_science_and_chemical_eng` int(10) DEFAULT '0',
  `polymer_science_and_chemical_eng_fill` int(10) DEFAULT '0',
  `software_eng` int(10) DEFAULT '0',
  `software_eng_fill` int(10) DEFAULT '0',
  `automobile_eng` int(10) DEFAULT '0',
  `automobile_eng_fill` int(10) DEFAULT '0',
  `electrical_and_electronics_eng` int(10) DEFAULT '0',
  `electrical_and_electronics_eng_fill` int(10) DEFAULT '0',
  `civil_eng` int(10) DEFAULT '0',
  `civil_eng_fill` int(10) DEFAULT '0',
  `electrical_eng` int(10) DEFAULT '0',
  `electrical_eng_fill` int(10) DEFAULT '0',
  `electronics_and_communicational_eng` int(10) DEFAULT '0',
  `electronics_and_communicational_eng_fill` int(10) DEFAULT '0',
  `mechanical_eng` int(10) DEFAULT '0',
  `mechanical_eng_fill` int(10) DEFAULT '0',
  `manufacturing_process_and_automation_eng` int(10) DEFAULT '0',
  `manufacturing_process_and_automation_eng_fill` int(10) DEFAULT '0',
  `instrumentation_and_control_eng` int(10) DEFAULT '0',
  `instrumentation_and_control_eng_fill` int(10) DEFAULT '0',
  `collegename` varchar(100) NOT NULL,
  `rating` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `collegedata` */

insert  into `collegedata`(`id`,`location`,`institute_type`,`university`,`IT`,`IT_fill`,`CS`,`CS_fill`,`biotechnology`,`biotechnology_fill`,`production_and_industrial_eng`,`production_and_industrial_eng_fill`,`environmental_eng`,`environmental_eng_fill`,`polymer_science_and_chemical_eng`,`polymer_science_and_chemical_eng_fill`,`software_eng`,`software_eng_fill`,`automobile_eng`,`automobile_eng_fill`,`electrical_and_electronics_eng`,`electrical_and_electronics_eng_fill`,`civil_eng`,`civil_eng_fill`,`electrical_eng`,`electrical_eng_fill`,`electronics_and_communicational_eng`,`electronics_and_communicational_eng_fill`,`mechanical_eng`,`mechanical_eng_fill`,`manufacturing_process_and_automation_eng`,`manufacturing_process_and_automation_eng_fill`,`instrumentation_and_control_eng`,`instrumentation_and_control_eng_fill`,`collegename`,`rating`) values (1,'noida','Government','Delhi Technological University',12,76,4,12,3,2,12,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'a',5),(2,'faridabad','Private','Delhi Technological University',12,22,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'b',5),(3,'faridabad','Private','Delhi Technological University',12,11,86,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'c',5),(4,'delhi','Government','DU',12,44,180,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'d',5),(5,'delhi','Government','MTU',12,23,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'e',5),(6,'gurgaon','Government','Delhi Technological University',25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'f',2),(7,'Ghaziabad','Private','Aktu',34,20,77,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'g',5),(8,'delhi','Government','DU',1,1,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,9,0,0,0,0,0,0,0,0,0,'h',3),(9,'noida','Government','Aktu',0,7,0,78,9,9,9,9,9,9,9,9,9,9,7,7,5,4,4,22,78,8,9,11,11,8,0,6,22,67,'i',3),(10,'delhi','Government','MTU',232,44,43,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'j',7),(11,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'k',0),(12,'delhi','Government','hggf',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'jhgfj',0),(13,'delhi','Government','kgk',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'jghj',0),(14,'delhi','Government','f',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'gg',0),(15,'delhi','Government','k',0,5,4,5,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'lkhlk',0);

/*Table structure for table `collegelogin` */

DROP TABLE IF EXISTS `collegelogin`;

CREATE TABLE `collegelogin` (
  `collegeid` int(10) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `security` varchar(30) DEFAULT NULL,
  `secanswer` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`collegeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `collegelogin` */

insert  into `collegelogin`(`collegeid`,`email`,`password`,`security`,`secanswer`) values (1,'a@gmail.com','a123','what is your favourite food','rasgulla'),(2,'b@gmail.com','b123','what is the name of your pet','dog'),(3,'c@yahoo.com','c123','what is the name of your son ','idiot');

/*Table structure for table `collegename` */

DROP TABLE IF EXISTS `collegename`;

CREATE TABLE `collegename` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `collegename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `collegename` */

insert  into `collegename`(`id`,`collegename`) values (1,'a'),(2,'b'),(3,'c'),(4,'d'),(5,'e'),(6,'f'),(7,'g'),(8,'h'),(9,'i'),(10,'j'),(11,'k'),(12,'jhgfj'),(13,'jghj'),(14,'gg'),(15,'lkhlk');

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `contact` varchar(20) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `comment` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `comment` */

insert  into `comment`(`contact`,`email`,`comment`) values ('hhjh','jjkk@kjkj.com','null');

/*Table structure for table `location` */

DROP TABLE IF EXISTS `location`;

CREATE TABLE `location` (
  `location_id` int(30) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `location` */

/*Table structure for table `universitylist` */

DROP TABLE IF EXISTS `universitylist`;

CREATE TABLE `universitylist` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `university` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `universitylist` */

insert  into `universitylist`(`id`,`university`) values (1,'Aktu'),(2,'Jamia Milia Islamia'),(3,'IP University'),(4,'University of Delhi'),(5,'Maharishi Dayanand University'),(6,'Delhi Technological University'),(7,'MTU'),(8,'lolllll'),(9,'hggf'),(10,'kgk'),(11,'f'),(12,'k');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
