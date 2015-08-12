/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.16 : Database - hms_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hms_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hms_db`;

/*Table structure for table `biochemistry_test` */

DROP TABLE IF EXISTS `biochemistry_test`;

CREATE TABLE `biochemistry_test` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bloodUr` double DEFAULT NULL,
  `bun` double DEFAULT NULL,
  `creati` double DEFAULT NULL,
  `gluco` double DEFAULT NULL,
  `glucoRPP` double DEFAULT NULL,
  `hdCholes` double DEFAULT NULL,
  `ldlCholes` double DEFAULT NULL,
  `sCholes` double DEFAULT NULL,
  `sTotalLip` double DEFAULT NULL,
  `testDate` date DEFAULT NULL,
  `triglyce` double DEFAULT NULL,
  `vldlCholes` double DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK46AE7255544304A8` (`patient_id`),
  CONSTRAINT `FK46AE7255544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `biochemistry_test` */

insert  into `biochemistry_test`(`id`,`bloodUr`,`bun`,`creati`,`gluco`,`glucoRPP`,`hdCholes`,`ldlCholes`,`sCholes`,`sTotalLip`,`testDate`,`triglyce`,`vldlCholes`,`patient_id`) values (1,22,22,22,11,22,22,22,22,22,'2014-10-11',22,22,1),(2,11,11,11,11,11,11,11,11,11,'2014-10-11',11,11,16),(3,11,11,11,11,11,11,11,11,11,'2014-10-11',11,11,16),(4,65,44,55,41,88,4,55,55,99,'2014-10-11',88,77,6),(5,88,88,77,44,55,88,77,44,77,'2014-10-11',88,99,30),(6,0,0,0,0,0,0,0,0,0,'2014-10-11',0,0,30),(7,545,545,4,45,45,45,45,45,4,'2014-10-11',45,45,32);

/*Table structure for table `blood_report` */

DROP TABLE IF EXISTS `blood_report`;

CREATE TABLE `blood_report` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `basophils` double DEFAULT NULL,
  `eosinophil` double DEFAULT NULL,
  `himoglobine` double DEFAULT NULL,
  `lymphocytes` double DEFAULT NULL,
  `monocytes` double DEFAULT NULL,
  `neutrophils` double DEFAULT NULL,
  `others` double DEFAULT NULL,
  `platelets` double DEFAULT NULL,
  `testDate` date DEFAULT NULL,
  `tlc` double DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1C990F39544304A8` (`patient_id`),
  CONSTRAINT `FK1C990F39544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `blood_report` */

/*Table structure for table `colonscopy_test` */

DROP TABLE IF EXISTS `colonscopy_test`;

CREATE TABLE `colonscopy_test` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `colons1` double DEFAULT NULL,
  `colons2` double DEFAULT NULL,
  `colons3` double DEFAULT NULL,
  `colons4` double DEFAULT NULL,
  `colons5` double DEFAULT NULL,
  `testDate` date DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  `bladderLumin` double DEFAULT NULL,
  `bladderSize` double DEFAULT NULL,
  `bladderWall` double DEFAULT NULL,
  `liverCbd` double DEFAULT NULL,
  `liverEcho` double DEFAULT NULL,
  `liverFocal` double DEFAULT NULL,
  `liverIhbr` double DEFAULT NULL,
  `liverPv` double DEFAULT NULL,
  `liverSize` double DEFAULT NULL,
  `regDate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK79D770A8544304A8` (`patient_id`),
  KEY `FKF9ADD0A8544304A8` (`patient_id`),
  CONSTRAINT `FK79D770A8544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
  CONSTRAINT `FKF9ADD0A8544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `colonscopy_test` */

insert  into `colonscopy_test`(`id`,`colons1`,`colons2`,`colons3`,`colons4`,`colons5`,`testDate`,`patient_id`,`bladderLumin`,`bladderSize`,`bladderWall`,`liverCbd`,`liverEcho`,`liverFocal`,`liverIhbr`,`liverPv`,`liverSize`,`regDate`) values (3,12,12,15,45,66,'2014-10-11',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,10,10,12,13,14,'2014-10-10',8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,10,10,12,13,14,'2014-10-10',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,44,44,55,66,33,'2014-10-10',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,2255,88,88,77,55,'2014-10-10',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,11,22,44,55,88,'2014-10-10',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,3,3,3,3,3,'2014-10-10',8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,3,3,3,3,3,'2014-10-10',8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,3,3,3,3,111,'2014-10-10',8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,0,0,0,0,0,'2014-10-10',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,1,1,1,1,1,'2014-10-10',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,11,22,22,22,22,'2014-10-10',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,11,11,11,11,11,'2014-10-10',16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `discount_doctor` */

DROP TABLE IF EXISTS `discount_doctor`;

CREATE TABLE `discount_doctor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `discountId` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `discountNote` varchar(255) DEFAULT NULL,
  `discountType` varchar(255) DEFAULT NULL,
  `DOCTOR_ID` bigint(20) NOT NULL,
  `PATIENT_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `discount_doctor` */

insert  into `discount_doctor`(`id`,`discountId`,`name`,`discountNote`,`discountType`,`DOCTOR_ID`,`PATIENT_ID`) values (2,'01','Dr. Nusaiba Shahin (MBBS, FCPS, Dhaka)','Permanent Doctor',NULL,0,0),(3,'02','Dr. Fouzia Shahin (FCPS, Dhaka)','Permanent Doctor',NULL,0,0),(4,'03','Dr. Alfaz Hossain (FCPS, Dhaka)','Permanent Doctor',NULL,0,0),(5,'04','Dr. M.A Khominee (MBBS, PGD, FCPS, Dhaka)','Regular Doctor',NULL,0,0),(6,'05','Dr. Nazmul Haque (MBBS, PGD, FCPS, Dhaka)','Regular Doctor',NULL,0,0),(7,'06','Dr. Jashim Uddin (MBBS, Dhaka)','Sessional Doctor',NULL,0,0),(8,'12','wwww','www',NULL,0,0);

/*Table structure for table `discount_doctor_patient` */

DROP TABLE IF EXISTS `discount_doctor_patient`;

CREATE TABLE `discount_doctor_patient` (
  `DOCTOR_ID` bigint(20) NOT NULL,
  `PATIENT_ID` bigint(20) NOT NULL,
  UNIQUE KEY `PATIENT_ID` (`PATIENT_ID`),
  KEY `FK52F6D283544304A8` (`PATIENT_ID`),
  KEY `FK52F6D283BD593D2D` (`DOCTOR_ID`),
  CONSTRAINT `FK52F6D283544304A8` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`id`),
  CONSTRAINT `FK52F6D283BD593D2D` FOREIGN KEY (`DOCTOR_ID`) REFERENCES `discount_doctor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `discount_doctor_patient` */

insert  into `discount_doctor_patient`(`DOCTOR_ID`,`PATIENT_ID`) values (2,52),(2,53),(4,16),(4,18),(5,14),(5,15),(5,49);

/*Table structure for table `doctor_entry` */

DROP TABLE IF EXISTS `doctor_entry`;

CREATE TABLE `doctor_entry` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `DoctorName` varchar(255) DEFAULT NULL,
  `doctorId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `doctor_entry` */

insert  into `doctor_entry`(`id`,`DoctorName`,`doctorId`) values (3,'Dr. Nusaiba Shahin (MBBS, FCPS, Dhaka)','01'),(4,'Dr. Khominee (FCPS, PGD, Dhaka)','02'),(5,'Dr. Alfaz (FCPS, Dhaka)','03'),(6,'Dr. Mahfuz Mamun (MBBS, Jessore)','04'),(7,'Dr. Mizanur Rahman (MBBS, Dhaka)','05'),(8,'Dr. Anisur Rahman (FCPS, PHD, PGD, UK)','06'),(9,'Jashim doc','123');

/*Table structure for table `gastroscopy_test` */

DROP TABLE IF EXISTS `gastroscopy_test`;

CREATE TABLE `gastroscopy_test` (
  `id` double NOT NULL AUTO_INCREMENT,
  `gastro1` double DEFAULT NULL,
  `gastro2` double DEFAULT NULL,
  `gastro3` double DEFAULT NULL,
  `gastro4` double DEFAULT NULL,
  `gastro5` double DEFAULT NULL,
  `testDate` date DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7CF48261544304A8` (`patient_id`),
  CONSTRAINT `FK7CF48261544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `gastroscopy_test` */

/*Table structure for table `patient` */

DROP TABLE IF EXISTS `patient`;

CREATE TABLE `patient` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `age` varchar(255) DEFAULT NULL,
  `fatherHusbandName` varchar(255) DEFAULT NULL,
  `meritalStatus` varchar(255) DEFAULT NULL,
  `patientName` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `regDate` date DEFAULT NULL,
  `regNo` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `discountNote` varchar(255) DEFAULT NULL,
  `discountSelect` varchar(255) DEFAULT NULL,
  `doctorSelect` varchar(255) DEFAULT NULL,
  `due` varchar(255) DEFAULT NULL,
  `paid` varchar(255) DEFAULT NULL,
  `testSelect` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `userLogin` varchar(255) DEFAULT NULL,
  `value1` varchar(255) DEFAULT NULL,
  `value2` varchar(255) DEFAULT NULL,
  `value3` varchar(255) DEFAULT NULL,
  `discountBy_id` bigint(20) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `patientAddress` varchar(255) DEFAULT NULL,
  `testIds` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKFB9F76E57EF00254` (`discountBy_id`),
  CONSTRAINT `FKFB9F76E57EF00254` FOREIGN KEY (`discountBy_id`) REFERENCES `discount_doctor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

/*Data for the table `patient` */

insert  into `patient`(`id`,`age`,`fatherHusbandName`,`meritalStatus`,`patientName`,`phone`,`regDate`,`regNo`,`sex`,`discount`,`discountNote`,`discountSelect`,`doctorSelect`,`due`,`paid`,`testSelect`,`total`,`userLogin`,`value1`,`value2`,`value3`,`discountBy_id`,`city`,`patientAddress`,`testIds`) values (1,'23','Forid Uddin','Single','Mofiz Mia','018478454',NULL,'D 45','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'23','Forid Uddin','Single','Mofiz Mia','018478454',NULL,'D 45','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'23','Forid Uddin','Single','alfaz','018478454',NULL,'D 46','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'23','Forid Uddin','Single','Rofi','018478454',NULL,'D 50','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'23','Forid Uddin','Single','Mofiz Mia','018478454',NULL,'D 50','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'23','Forid Uddin','Single','Mofiz Mia','018478454',NULL,'D 44','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'23','Forid Uddin','Single','Mofiz Mia','018478454',NULL,'D 45','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'30','Jamal Uddin','Married','Jafor mia','01944002900',NULL,'D 100','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'23','Forid Uddin','Single','Mofiz Mia','018478454',NULL,'D 45','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'23','Forid Uddin','Single','Mofiz Mia','018478454',NULL,'D 45','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'23','Forid Uddin','Single','Mofiz Mia','018478454',NULL,'D 111','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'23','Forid Uddin','Single','Mofiz Mia','018478454',NULL,'D 222','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'23','Forid Uddin','Single','Mofiz Mia 2','018478454',NULL,'D 450','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'23','Forid Uddin','Single','Mofiz Mia','018478454',NULL,'M 30','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'27','Imdadul Haque','Single','Mamun Hussain','01710391485',NULL,'D 1112','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'2','Md Shahinur Rahman','Single','Nusaiba Shahin','01944002900',NULL,'D 01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'2','Md Shahinur Rahman','Single','Nusaiba Shahin','01944002900',NULL,'D 01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'2','Shahinur Rahman','Single','Nusaiba Shahin','01944002944',NULL,'D 01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'2','Shahinur Rahman','Single','Nusaibashahin','01944002900',NULL,'D 01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'2','Shahinur Rahman','Single','Nusaiba Shahin','01944002900','2014-10-07','D 01','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'22','Shahinur Rahman','Single','Fouzia Shahin','01944002900','2014-10-07','D 02','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'22','Shahinur Rahman','Single','Fouzia Shahin','01944002900','2014-10-07','D 02','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'26','Shafiuddin Gazi','Single','Shahinur Rahman','0194402900','2014-11-08','D 03','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'26','Shafiuddin Gazi','Single','Shahinur Rahman','0194402900','2014-11-08','D 03','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'26','Shafiuddin Gazi','Single','Hafizur Rahman','0194402900','2014-11-08','D 04','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'26','Shafiuddin Gazi','Single','Aminur Rahman','0194402900','2014-11-08','D 04','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'23','Forid Uddin','Single','Mofiz Mia','+880194402900','2014-10-11','D 01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'23','+8801944002900','Single','Nusaiba Shahin','Forid Uddin','2014-11-12','D 01',NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'2','+8801944002900','Single','Nusaiba Shahin Fatiha','Shahinur Rahman','2014-11-12','D 01','Female','150','Consultant','Dr. Nusaiba Shahin (MBBS, FCPS, Dhaka)','Dr. Nusaiba Shahin (MBBS, FCPS, Dhaka)','850.0','0','E.C.G','1000.0','admin','300','300','400',NULL,NULL,NULL,NULL),(30,'23','+8801944002900','Single','Nazmul Haque','Rashidul Islam','2014-11-12','D 123','Male	','200','Consultant','Dr. Alfaz Hossain (FCPS, Dhaka)','Dr. Nusaiba Shahin (MBBS, FCPS, Dhaka)','1100.0','0','Biochemistry','1300.0','admin','300','400','600',NULL,NULL,NULL,NULL),(31,'23','+8801944002900','Single','Mofiz Mia','Forid Uddin','2014-11-12','D 15','Male	','0','Consultant','Select Discount Doctor..','Select Doctor..','0','0','Select Item..','0','admin','','','',NULL,NULL,NULL,NULL),(32,'23','+8801944002900','Single','hasibul','Forid Uddin','2014-11-12','D 12345','Male	','450','Consultant','Dr. Nusaiba Shahin (MBBS, FCPS, Dhaka)','Dr. Khominee (FCPS, PGD, Dhaka)','900.0','0','Biochemistry','1350.0','admin','450','450','450',NULL,NULL,NULL,NULL),(33,'23','+8801944002900','Single','Mofiz Mia','Forid Uddin','2014-11-12','D 01','Male	','15','Consultant','Dr. Alfaz Hossain (FCPS, Dhaka)','Dr. Nusaiba Shahin (MBBS, FCPS, Dhaka)','21.0','10','Gastrocophy','36.0','admin','12','12','12',NULL,NULL,NULL,NULL),(34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,'23','8801944002900','Single','Mofiz Mia 49','Forid Uddin','2014-11-12','BU-49','Male	',NULL,'Consultant',NULL,NULL,NULL,'0.0',NULL,'1400.0','admin',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,'23','8801944002900','Single','Mofiz Mia 50','Forid Uddin','2014-11-12','BU-50','Male	',NULL,'Consultant',NULL,NULL,NULL,'0.0',NULL,'1800.0','admin',NULL,NULL,NULL,4,NULL,NULL,NULL),(49,'23','8801944002900','Single','Mofiz Mia 51','Forid Uddin','2014-11-12','BU-51','Male	',NULL,'Consultant',NULL,NULL,NULL,'0.0',NULL,'1000.0','admin',NULL,NULL,NULL,5,NULL,NULL,NULL),(52,'23','8801944002900','Single','Mofiz Mia 52','Forid Uddin','2014-11-12','BU-52','Male	',NULL,'Consultant',NULL,NULL,NULL,'0.0',NULL,'1050.0','admin',NULL,NULL,NULL,2,NULL,NULL,'16,17'),(53,'23','8801944002900','Single','Mofiz Mia 53','Forid Uddin','2014-11-12','BU-53','Male	',NULL,'Consultant',NULL,NULL,NULL,'0.0',NULL,'1150.0','admin',NULL,NULL,NULL,2,NULL,NULL,'16,19');

/*Table structure for table `patient_biochemistry_test` */

DROP TABLE IF EXISTS `patient_biochemistry_test`;

CREATE TABLE `patient_biochemistry_test` (
  `PATIENT_ID` bigint(20) NOT NULL,
  `BIOCHEMISTRY_ID` bigint(20) NOT NULL,
  UNIQUE KEY `BIOCHEMISTRY_ID` (`BIOCHEMISTRY_ID`),
  KEY `FKAD28C37BCBAFA7EC` (`BIOCHEMISTRY_ID`),
  KEY `FKAD28C37B544304A8` (`PATIENT_ID`),
  CONSTRAINT `FKAD28C37B544304A8` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`id`),
  CONSTRAINT `FKAD28C37BCBAFA7EC` FOREIGN KEY (`BIOCHEMISTRY_ID`) REFERENCES `biochemistry_test` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `patient_biochemistry_test` */

insert  into `patient_biochemistry_test`(`PATIENT_ID`,`BIOCHEMISTRY_ID`) values (1,1),(6,4),(16,2),(16,3),(30,5),(30,6),(32,7);

/*Table structure for table `patient_blood_report` */

DROP TABLE IF EXISTS `patient_blood_report`;

CREATE TABLE `patient_blood_report` (
  `PATIENT_ID` bigint(20) NOT NULL,
  `BLOOD_REPORT_ID` bigint(20) NOT NULL,
  UNIQUE KEY `BLOOD_REPORT_ID` (`BLOOD_REPORT_ID`),
  KEY `FK44E1E532616C9DD` (`BLOOD_REPORT_ID`),
  KEY `FK44E1E53544304A8` (`PATIENT_ID`),
  CONSTRAINT `FK44E1E532616C9DD` FOREIGN KEY (`BLOOD_REPORT_ID`) REFERENCES `blood_report` (`id`),
  CONSTRAINT `FK44E1E53544304A8` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `patient_blood_report` */

/*Table structure for table `patient_colonscopy_test` */

DROP TABLE IF EXISTS `patient_colonscopy_test`;

CREATE TABLE `patient_colonscopy_test` (
  `PATIENT_ID` bigint(20) NOT NULL,
  `COLONSCOPY_ID` bigint(20) NOT NULL,
  UNIQUE KEY `COLONSCOPY_ID` (`COLONSCOPY_ID`),
  KEY `FKB6334E9CD7FD4C` (`COLONSCOPY_ID`),
  KEY `FKB6334E544304A8` (`PATIENT_ID`),
  CONSTRAINT `FKB6334E544304A8` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`id`),
  CONSTRAINT `FKB6334E9CD7FD4C` FOREIGN KEY (`COLONSCOPY_ID`) REFERENCES `colonscopy_test` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `patient_colonscopy_test` */

insert  into `patient_colonscopy_test`(`PATIENT_ID`,`COLONSCOPY_ID`) values (1,16),(1,17),(16,18);

/*Table structure for table `patient_gastroscopy_test` */

DROP TABLE IF EXISTS `patient_gastroscopy_test`;

CREATE TABLE `patient_gastroscopy_test` (
  `PATIENT_ID` bigint(20) NOT NULL,
  `GASTROSCOPY_ID` double NOT NULL,
  UNIQUE KEY `GASTROSCOPY_ID` (`GASTROSCOPY_ID`),
  KEY `FK56F8747BF47099C8` (`GASTROSCOPY_ID`),
  KEY `FK56F8747B544304A8` (`PATIENT_ID`),
  CONSTRAINT `FK56F8747B544304A8` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`id`),
  CONSTRAINT `FK56F8747BF47099C8` FOREIGN KEY (`GASTROSCOPY_ID`) REFERENCES `gastroscopy_test` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `patient_gastroscopy_test` */

/*Table structure for table `patient_patient_receipt` */

DROP TABLE IF EXISTS `patient_patient_receipt`;

CREATE TABLE `patient_patient_receipt` (
  `PATIENT_ID` bigint(20) NOT NULL,
  `RECEIPT_ID` bigint(20) NOT NULL,
  UNIQUE KEY `RECEIPT_ID` (`RECEIPT_ID`),
  KEY `FK17E6C96441D27B27` (`RECEIPT_ID`),
  KEY `FK17E6C964544304A8` (`PATIENT_ID`),
  CONSTRAINT `FK17E6C96441D27B27` FOREIGN KEY (`RECEIPT_ID`) REFERENCES `patient_receipt` (`id`),
  CONSTRAINT `FK17E6C964544304A8` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `patient_patient_receipt` */

insert  into `patient_patient_receipt`(`PATIENT_ID`,`RECEIPT_ID`) values (16,1);

/*Table structure for table `patient_prescription` */

DROP TABLE IF EXISTS `patient_prescription`;

CREATE TABLE `patient_prescription` (
  `PATIENT_ID` bigint(20) NOT NULL,
  `PRESCRIPTION_ID` bigint(20) NOT NULL,
  UNIQUE KEY `PRESCRIPTION_ID` (`PRESCRIPTION_ID`),
  KEY `FK8D439B34FAC78F2C` (`PRESCRIPTION_ID`),
  KEY `FK8D439B34544304A8` (`PATIENT_ID`),
  CONSTRAINT `FK8D439B34544304A8` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`id`),
  CONSTRAINT `FK8D439B34FAC78F2C` FOREIGN KEY (`PRESCRIPTION_ID`) REFERENCES `prescription` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `patient_prescription` */

insert  into `patient_prescription`(`PATIENT_ID`,`PRESCRIPTION_ID`) values (1,2),(8,3),(16,1);

/*Table structure for table `patient_receipt` */

DROP TABLE IF EXISTS `patient_receipt`;

CREATE TABLE `patient_receipt` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `USG` double DEFAULT NULL,
  `colono` double DEFAULT NULL,
  `diago` double DEFAULT NULL,
  `ecg` double DEFAULT NULL,
  `gastro` double DEFAULT NULL,
  `injection` double DEFAULT NULL,
  `receiptDate` date DEFAULT NULL,
  `receiptNo` varchar(255) DEFAULT NULL,
  `tab` double DEFAULT NULL,
  `xray` double DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK10DE66BE544304A8` (`patient_id`),
  CONSTRAINT `FK10DE66BE544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `patient_receipt` */

insert  into `patient_receipt`(`id`,`USG`,`colono`,`diago`,`ecg`,`gastro`,`injection`,`receiptDate`,`receiptNo`,`tab`,`xray`,`patient_id`) values (1,NULL,11,11,11,11,11,'2014-10-11','101',NULL,NULL,16);

/*Table structure for table `patient_sonography_test` */

DROP TABLE IF EXISTS `patient_sonography_test`;

CREATE TABLE `patient_sonography_test` (
  `PATIENT_ID` bigint(20) NOT NULL,
  `SONOGRAPHY_ID` bigint(20) NOT NULL,
  UNIQUE KEY `SONOGRAPHY_ID` (`SONOGRAPHY_ID`),
  KEY `FKD0F04CF544304A8` (`PATIENT_ID`),
  KEY `FKD0F04CFD8E1BCEC` (`SONOGRAPHY_ID`),
  CONSTRAINT `FKD0F04CF544304A8` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`id`),
  CONSTRAINT `FKD0F04CFD8E1BCEC` FOREIGN KEY (`SONOGRAPHY_ID`) REFERENCES `sonography_test` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `patient_sonography_test` */

insert  into `patient_sonography_test`(`PATIENT_ID`,`SONOGRAPHY_ID`) values (1,1),(16,2);

/*Table structure for table `patient_stool_test` */

DROP TABLE IF EXISTS `patient_stool_test`;

CREATE TABLE `patient_stool_test` (
  `PATIENT_ID` bigint(20) NOT NULL,
  `STOOL_ID` bigint(20) NOT NULL,
  UNIQUE KEY `STOOL_ID` (`STOOL_ID`),
  KEY `FKA2E18D80544304A8` (`PATIENT_ID`),
  KEY `FKA2E18D801A6CBA68` (`STOOL_ID`),
  CONSTRAINT `FKA2E18D801A6CBA68` FOREIGN KEY (`STOOL_ID`) REFERENCES `stool_test` (`id`),
  CONSTRAINT `FKA2E18D80544304A8` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `patient_stool_test` */

insert  into `patient_stool_test`(`PATIENT_ID`,`STOOL_ID`) values (1,1),(16,2),(30,3);

/*Table structure for table `patient_test` */

DROP TABLE IF EXISTS `patient_test`;

CREATE TABLE `patient_test` (
  `PATIENT_ID` bigint(20) NOT NULL,
  `TEST_ID` bigint(20) NOT NULL,
  UNIQUE KEY `TEST_ID` (`TEST_ID`),
  KEY `FK57C205AC544304A8` (`PATIENT_ID`),
  KEY `FK57C205ACFBA30C76` (`TEST_ID`),
  CONSTRAINT `FK57C205AC544304A8` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`id`),
  CONSTRAINT `FK57C205ACFBA30C76` FOREIGN KEY (`TEST_ID`) REFERENCES `test` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `patient_test` */

insert  into `patient_test`(`PATIENT_ID`,`TEST_ID`) values (34,17),(37,16),(37,20),(39,15),(39,18),(46,656),(46,663),(47,109),(47,110),(48,873),(48,874),(49,906),(49,907);

/*Table structure for table `patient_urine_test` */

DROP TABLE IF EXISTS `patient_urine_test`;

CREATE TABLE `patient_urine_test` (
  `PATIENT_ID` bigint(20) NOT NULL,
  `URINE_ID` bigint(20) NOT NULL,
  UNIQUE KEY `URINE_ID` (`URINE_ID`),
  KEY `FKB2CC5CE8544304A8` (`PATIENT_ID`),
  KEY `FKB2CC5CE8762F7368` (`URINE_ID`),
  CONSTRAINT `FKB2CC5CE8544304A8` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`id`),
  CONSTRAINT `FKB2CC5CE8762F7368` FOREIGN KEY (`URINE_ID`) REFERENCES `urine_test` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `patient_urine_test` */

insert  into `patient_urine_test`(`PATIENT_ID`,`URINE_ID`) values (1,2),(6,1),(6,7),(16,3),(21,4),(21,5),(21,6);

/*Table structure for table `prescription` */

DROP TABLE IF EXISTS `prescription`;

CREATE TABLE `prescription` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tests` varchar(255) DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK253AF83A544304A8` (`patient_id`),
  CONSTRAINT `FK253AF83A544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `prescription` */

insert  into `prescription`(`id`,`tests`,`patient_id`) values (1,'Biochemistry,Blood,Colonscopy,ECG,Gastrocopy,Sonography,Stool,Urine,X-RAY',16),(2,'Biochemistry,Blood,Colonscopy,ECG,Gastrocopy,Sonography,Stool,Urine,X-RAY',1),(3,'Biochemistry,Blood,Colonscopy,Gastrocopy,Sonography,Stool,Urine',8);

/*Table structure for table `sonography_test` */

DROP TABLE IF EXISTS `sonography_test`;

CREATE TABLE `sonography_test` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bladderLumin` double DEFAULT NULL,
  `bladderSize` double DEFAULT NULL,
  `bladderWall` double DEFAULT NULL,
  `liverCbd` double DEFAULT NULL,
  `liverEcho` double DEFAULT NULL,
  `liverFocal` double DEFAULT NULL,
  `liverIhbr` double DEFAULT NULL,
  `liverPv` double DEFAULT NULL,
  `liverSize` double DEFAULT NULL,
  `testDate` date DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK606A229544304A8` (`patient_id`),
  CONSTRAINT `FK606A229544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `sonography_test` */

insert  into `sonography_test`(`id`,`bladderLumin`,`bladderSize`,`bladderWall`,`liverCbd`,`liverEcho`,`liverFocal`,`liverIhbr`,`liverPv`,`liverSize`,`testDate`,`patient_id`) values (1,22,22,22,22,22,22,22,22,11,'2014-11-10',1),(2,11,11,11,11,11,11,11,11,11,'2014-11-10',16);

/*Table structure for table `stool_test` */

DROP TABLE IF EXISTS `stool_test`;

CREATE TABLE `stool_test` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `micosMacro` double DEFAULT NULL,
  `micosRbc` double DEFAULT NULL,
  `micosWbc` double DEFAULT NULL,
  `physiBlood` double DEFAULT NULL,
  `physiColor` double DEFAULT NULL,
  `physiConsist` double DEFAULT NULL,
  `physiMucus` double DEFAULT NULL,
  `testDate` date DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKC2DF7FE6544304A8` (`patient_id`),
  CONSTRAINT `FKC2DF7FE6544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `stool_test` */

insert  into `stool_test`(`id`,`micosMacro`,`micosRbc`,`micosWbc`,`physiBlood`,`physiColor`,`physiConsist`,`physiMucus`,`testDate`,`patient_id`) values (1,22,22,22,22,11,22,22,NULL,1),(2,11,11,11,11,11,11,11,NULL,16),(3,55,44,55,44,44,11,55,NULL,30);

/*Table structure for table `test` */

DROP TABLE IF EXISTS `test`;

CREATE TABLE `test` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `testName` varchar(255) DEFAULT NULL,
  `deliveryDays` int(11) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `testId` varchar(255) DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK273C92544304A8` (`patient_id`),
  CONSTRAINT `FK273C92544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1518 DEFAULT CHARSET=latin1;

/*Data for the table `test` */

insert  into `test`(`id`,`testName`,`deliveryDays`,`rate`,`testId`,`patient_id`) values (15,'A.FETO PROTEIN',3,1000,NULL,NULL),(16,'ABORH(BL.GROUP)',5,200,NULL,NULL),(17,'ACID PHOSPHATE (Prostate)',2,850,NULL,NULL),(18,'ACID PHOSPHATE (Total)',3,800,NULL,NULL),(19,'ACTH',5,950,NULL,NULL),(20,'ACTH Stimulation Test (Synacthen)',2,3000,NULL,NULL),(21,'Adenosine Deaminase',3,850,NULL,NULL),(22,'ALBUMIN',5,300,NULL,NULL),(23,'ALCOHOL TEST',2,1000,NULL,NULL),(24,'ALDEHYDE',3,750,NULL,NULL),(25,'ALDOLASE',5,1100,NULL,NULL),(26,'ALICO CONSULTANCY',2,250,NULL,NULL),(27,'ALK.PHOSPHATE',3,300,NULL,NULL),(28,'ALPHA 1 ACID GLYCOPROTE',5,1600,NULL,NULL),(29,'ALPHA 1 ANTITRYPSIN',2,1200,NULL,NULL),(30,'ALPHA 1 GLYCOPROTEIN ACID',3,800,NULL,NULL),(31,'ALPHA 1 MICROGLOBULIN',5,1600,NULL,NULL),(32,'ALPHA 2 MICROGLOBULIN',2,1500,NULL,NULL),(33,'AMYLASE',3,850,NULL,NULL),(34,'ANA/ANF',5,1000,NULL,NULL),(35,'Anti Ds DNA',2,1300,NULL,NULL),(36,'ANTI THYROID AB (THYROGLOBULIN & MICROSOMAL)',3,2200,NULL,NULL),(37,'Anti-CARDIOLIPIN ab (not in DLAB)',5,1700,NULL,NULL),(38,'Anti-CCP',2,1200,NULL,NULL),(39,'Anti-DNA  (not in DLAB)',3,1000,NULL,NULL),(40,'Anti-Eardiolipin AB',5,1000,NULL,NULL),(41,'Anti-HBc (Total)',2,1000,NULL,NULL),(42,'Anti-HBc IgM',3,1000,NULL,NULL),(43,'Anti-HBE',5,1000,NULL,NULL),(44,'Anti-HBe/HBeAb/A-HBeAg',2,1000,NULL,NULL),(45,'Anti-HBs/HBsAb',3,1000,NULL,NULL),(46,'Anti-HCV',5,1000,NULL,NULL),(47,'Anti-Microsomal',2,1100,NULL,NULL),(48,'ANTI-SPERM ANTIBODY',3,1000,NULL,NULL),(49,'ANTI-THROBIN-III',5,1100,NULL,NULL),(50,'Anti-Thyroglobulin',2,1100,NULL,NULL),(51,'APO-A',3,800,NULL,NULL),(52,'APO-B',5,800,NULL,NULL),(53,'APOLIPOPROTEIN A1',2,700,NULL,NULL),(54,'APOLIPOPROTEIN-B',3,700,NULL,NULL),(55,'APTT',5,700,NULL,NULL),(56,'ASCITIC FLUID ADA',2,900,NULL,NULL),(57,'ASCITIC FLUID AFB',3,300,NULL,NULL),(58,'ASCITIC FLUID ALBUMIN',5,300,NULL,NULL),(59,'Ascitic Fluid Anaerobic C/S',2,750,NULL,NULL),(60,'ASCITIC FLUID Biochemistry',3,600,NULL,NULL),(61,'ASCITIC FLUID C/S',5,600,NULL,NULL),(62,'ASCITIC FLUID CYTOLOGY',2,300,NULL,NULL),(63,'ASCITIC FLUID GM STAIN',3,300,NULL,NULL),(64,'ASCITIC FLUID LDH',5,800,NULL,NULL),(65,'ASCITIC FLUID MALIG.CELL',2,800,NULL,NULL),(66,'ASCITIC FLUID PROTEIN',3,400,NULL,NULL),(67,'ASCITIC FLUID SUGAR',5,150,NULL,NULL),(68,'ASO TITRE',2,600,NULL,NULL),(69,'ASPIRATED FLUID',3,600,NULL,NULL),(70,'ASPIRATED FLUID C/S',5,600,NULL,NULL),(71,'ASPIRATED FLUID CYTOLOGY',2,300,NULL,NULL),(72,'ASPIRATED FLUID GM STAIN',3,300,NULL,NULL),(73,'Aural Swab Anaerobic C/S',5,700,NULL,NULL),(74,'Aural Swab C/S',2,600,NULL,NULL),(75,'B.S.1H AFTER 100GM GLUCOSE',3,150,NULL,NULL),(76,'B.S.1H AFTER 50GM GLUCOSE',5,150,NULL,NULL),(77,'B.S.1H AFTER 75GM GLUCOSE',2,150,NULL,NULL),(78,'B.S.2H AFTER 75GM GLUCOSE',3,150,NULL,NULL),(79,'B.S.2H AFTER DINNER',5,150,NULL,NULL),(80,'B.S.2H AFTER IFTER',2,150,NULL,NULL),(81,'B.S.2H AFTER INSULIN',3,150,NULL,NULL),(82,'B.S.2H AFTER LUNCH',5,150,NULL,NULL),(83,'B.S.2H AFTER MEAL',2,150,NULL,NULL),(84,'B.SUGAR FASTING',3,150,NULL,NULL),(85,'B.SUGAR RANDOM',5,150,NULL,NULL),(86,'B/S 1.5 Hrs.ABF',2,150,NULL,NULL),(87,'B/S 1.5HRS 50gm Glucose',3,150,NULL,NULL),(88,'B/S 1.5HRS 75gm Glucose',5,150,NULL,NULL),(89,'B/S 1HRS ABF.',2,150,NULL,NULL),(90,'B/S 2HRS 50gm Glucose',3,150,NULL,NULL),(91,'B/S 2HRS 75GM AGD.',5,150,NULL,NULL),(92,'B/S 2HRS.ABF',2,150,NULL,NULL),(93,'B/S 2HRS.AL',3,150,NULL,NULL),(94,'B/S BEFORE DINNER',5,150,NULL,NULL),(95,'B/S BEFORE LUNCH',2,150,NULL,NULL),(96,'B/S BEFORE MEAL',3,150,NULL,NULL),(97,'B2 MICROGLOBULIN',5,150,NULL,NULL),(98,'BACT.ANTIGEN',2,1100,NULL,NULL),(99,'BAL FOR AFB',3,350,NULL,NULL),(100,'BAL FOR AFB Anaerobic C/S',5,700,NULL,NULL),(101,'BAL FOR AFB C/S',2,600,NULL,NULL),(102,'BAL FOR Anaerobic C/S',3,700,NULL,NULL),(103,'BAL FOR C/S',5,600,NULL,NULL),(104,'BAL FOR CYTOLOGY',2,300,NULL,NULL),(105,'BAL FOR GM.STAIN',3,300,NULL,NULL),(106,'BAND LIGATION',5,4500,NULL,NULL),(107,'BCG',2,170,NULL,NULL),(108,'Bed SWAB C/S',3,600,NULL,NULL),(109,'Bence Jones Protein',5,400,NULL,NULL),(110,'BENZODIAZEPINE',2,1000,NULL,NULL),(111,'BETA-2 MICROGLOBULIN',3,1600,NULL,NULL),(112,'B-HCG',5,1100,NULL,NULL),(113,'BILIRUBIN (Total)',2,300,NULL,NULL),(114,'Bilirubin D/I',3,500,NULL,NULL),(115,'Biopsy Collection Charge',5,310,NULL,NULL),(116,'BLEEDING TIME',2,300,NULL,NULL),(117,'BLOOD C/S (Fan Method)',3,1000,NULL,NULL),(118,'BLOOD C/S Aerobic',5,1000,NULL,NULL),(119,'BLOOD C/S Anaerobic',2,1000,NULL,NULL),(120,'BLOOD COLLECTION',3,120,NULL,NULL),(121,'BLOOD CP',5,450,NULL,NULL),(122,'BLOOD FILM',2,300,NULL,NULL),(123,'BLOOD FOR MONOSPOT TEST',3,600,NULL,NULL),(124,'BLOOD GROUP (ABORH)',5,200,NULL,NULL),(125,'BLOOD PRESSURE CHECK-UP',2,160,NULL,NULL),(126,'BNP',3,3200,NULL,NULL),(127,'BONE DENSITOMETRY (BMD)',5,1600,NULL,NULL),(128,'BONE MARROW',2,1800,NULL,NULL),(129,'BONE MARROW FLUID AFB',3,300,NULL,NULL),(130,'BONE MARROW FLUID AFB CS',5,700,NULL,NULL),(131,'BONE MARROW FLUID C/S',2,600,NULL,NULL),(132,'BONE MARROW FLUID GM STAIN',3,300,NULL,NULL),(133,'BRAIN ABSCESS FOR Anaerobic C/S',5,700,NULL,NULL),(134,'BRAIN ABSCESS FOR C/S',2,600,NULL,NULL),(135,'BREAST SECRATION C/S',3,600,NULL,NULL),(136,'BREAST SECRATION FOR CYTOLOGY',5,500,NULL,NULL),(137,'BRONCHEAL WASH AFB',2,300,NULL,NULL),(138,'BRONCHEAL WASH Anaerobic C/S',3,600,NULL,NULL),(139,'BRONCHEAL WASH BIO-CHEM',5,410,NULL,NULL),(140,'BRONCHEAL WASH C/S',2,600,NULL,NULL),(141,'BRONCHEAL WASH CYTOLOGY',3,300,NULL,NULL),(142,'BRONCHEAL WASH GM STAIN',5,300,NULL,NULL),(143,'BRONCHEAL WASH MALIGNANT CELL',2,600,NULL,NULL),(144,'BRUCELLA AGGLUTINATION',3,500,NULL,NULL),(145,'B-SCAN TEST',5,820,NULL,NULL),(146,'BT CT',2,400,NULL,NULL),(147,'BUN',3,300,NULL,NULL),(148,'C1 Estrease Inhibitor',5,700,NULL,NULL),(149,'C3',2,1000,NULL,NULL),(150,'C4',3,1000,NULL,NULL),(151,'CA-125',5,1000,NULL,NULL),(152,'CA-15.3',2,1000,NULL,NULL),(153,'CA-19.9',3,1000,NULL,NULL),(154,'CALCIUM',5,350,NULL,NULL),(155,'CANCA',2,1000,NULL,NULL),(156,'CANNABINOIDS',3,1000,NULL,NULL),(157,'CARBAMAZAPINE',5,1000,NULL,NULL),(158,'CATHETER TIP Anaerobic C/S',2,900,NULL,NULL),(159,'CATHETER TIP C/S',3,600,NULL,NULL),(160,'CBC',5,450,NULL,NULL),(161,'CCR',2,700,NULL,NULL),(162,'CE',3,200,NULL,NULL),(163,'CEA',5,1000,NULL,NULL),(164,'CER. SMEAR CYTOLOGY',2,600,NULL,NULL),(165,'CER.SMEAR C/S',3,600,NULL,NULL),(166,'CER.SMEAR GM.STAIN',5,300,NULL,NULL),(167,'CERVICAL TEST',2,450,NULL,NULL),(168,'CFT FILARIA',3,700,NULL,NULL),(169,'CFT KALA AZAR',5,650,NULL,NULL),(170,'CHALAGION',2,1200,NULL,NULL),(171,'CHALAMYDIA AB',3,1000,NULL,NULL),(172,'CHOLESTEROL',5,300,NULL,NULL),(173,'CKMB',2,800,NULL,NULL),(174,'CL',3,280,NULL,NULL),(175,'CLO TEST',5,600,NULL,NULL),(176,'CLOTTING TIME',2,200,NULL,NULL),(177,'CLYMYDIA (CFT)',3,750,NULL,NULL),(178,'CO2',5,300,NULL,NULL),(179,'COAGULATION TIME',2,200,NULL,NULL),(180,'COCANE',3,1000,NULL,NULL),(181,'COLONOSCOPY(Full)',5,5000,NULL,NULL),(182,'COLONOSCOPY(Short)',2,3000,NULL,NULL),(183,'COLPOSCOPY',3,1500,NULL,NULL),(184,'Colposcopy of cervix',5,1500,NULL,NULL),(185,'CON.SWAB Anaerobic C/S LT.',2,600,NULL,NULL),(186,'CON.SWAB Anaerobic C/S RT.',3,600,NULL,NULL),(187,'CON.SWAB Anaerobic C/S(B/E)xxx',5,600,NULL,NULL),(188,'CON.SWAB C/S LT. EYE',2,600,NULL,NULL),(189,'CON.SWAB C/S RT. EYE',3,600,NULL,NULL),(190,'CON.SWAB C/S(B/E)xxx',5,600,NULL,NULL),(191,'CONJ. SWAB GRAM STAIN LT.',2,300,NULL,NULL),(192,'CONJ. SWAB GRAM STAIN RT.',3,300,NULL,NULL),(193,'CONJUNCTIVAL HOOD',5,3000,NULL,NULL),(194,'CONSULTANCY FEE (Constrast XRay)',2,510,NULL,NULL),(195,'CONSULTANCY FEE (CT)',3,1500,NULL,NULL),(196,'CONSULTANCY FEE (FNAC)',5,1500,NULL,NULL),(197,'CONSULTANCY FEE (HYSTARO)',2,820,NULL,NULL),(198,'COOMB`S D/I',3,650,NULL,NULL),(199,'COOMB`S DIRECT',5,600,NULL,NULL),(200,'COOMB`S INDIRECT',2,600,NULL,NULL),(201,'CORTISOL (Basal)',3,1000,NULL,NULL),(202,'CORTISOL (Evening)',5,1000,NULL,NULL),(203,'CORTISOL (Morning)',2,1000,NULL,NULL),(204,'CPK',3,800,NULL,NULL),(205,'CREATININE',5,300,NULL,NULL),(206,'CREATININE OF PERITONEAL FLUID',2,300,NULL,NULL),(207,'CROSS MATCHING',3,250,NULL,NULL),(208,'CRP',5,700,NULL,NULL),(209,'CSF ADA',2,850,NULL,NULL),(210,'CSF AFB',3,300,NULL,NULL),(211,'CSF ALBUMIN',5,300,NULL,NULL),(212,'CSF BIO-CHEM',2,600,NULL,NULL),(213,'CSF CL',3,300,NULL,NULL),(214,'CSF CYTOLOGY',5,300,NULL,NULL),(215,'CSF FOR AFB C/S',2,700,NULL,NULL),(216,'CSF FOR Anaerobic C/S',3,700,NULL,NULL),(217,'CSF FOR C/S',5,600,NULL,NULL),(218,'CSF FOR MALIG. CELL',2,600,NULL,NULL),(219,'CSF GM STAIN',3,300,NULL,NULL),(220,'CSF LDH',5,800,NULL,NULL),(221,'CSF MALIGNANT CELL',2,600,NULL,NULL),(222,'CSF PROTEIN',3,400,NULL,NULL),(223,'CSF SUGAR',5,150,NULL,NULL),(224,'CSF VDRL',2,400,NULL,NULL),(225,'CT 1',3,0,NULL,NULL),(226,'CT 3D IMAGING',5,8000,NULL,NULL),(227,'CT ABDOMEN',2,12000,NULL,NULL),(228,'CT ABDOMEN ANGIOGRAM',3,15000,NULL,NULL),(229,'CT ANAESTHESIA',5,1200,NULL,NULL),(230,'CT ANGIO CALCIUM SCORE',2,6000,NULL,NULL),(231,'CT ANGIO LOWER LIMB',3,15000,NULL,NULL),(232,'CT ANGIO UPPER LIMB',5,15000,NULL,NULL),(233,'CT ANGIOGRAM SYRINGE',2,1550,NULL,NULL),(234,'CT ANGLO CT',3,8000,NULL,NULL),(235,'CT ANKLE JOINT',5,6000,NULL,NULL),(236,'CT BASE OF SKULL',2,4000,NULL,NULL),(237,'CT BIOPSY',3,10000,NULL,NULL),(238,'CT BOTH HIP JT',5,5000,NULL,NULL),(239,'CT BRAIN',2,4000,NULL,NULL),(240,'CT BRAIN & BASE OF SKULL',3,6000,NULL,NULL),(241,'CT BRAIN & ORBIT',5,6000,NULL,NULL),(242,'CT BRAIN ANGIOGRAM',2,12000,NULL,NULL),(243,'CT C.SPINE',3,6000,NULL,NULL),(244,'CT CAROTID & BRAIN ANGIOGRAM',5,15000,NULL,NULL),(245,'CT CAROTID ANGIOGRAM',2,15000,NULL,NULL),(246,'CT CHEST',3,6000,NULL,NULL),(247,'CT CORONARY ANGIOGRAM',5,15000,NULL,NULL),(248,'CT DORS.SPINE',2,6000,NULL,NULL),(249,'CT DORSAL SPINE',3,6000,NULL,NULL),(250,'CT EAR R/L',5,6000,NULL,NULL),(251,'CT ELBOW JOINT RT./LT.',2,6000,NULL,NULL),(252,'CT FACE',3,6000,NULL,NULL),(253,'CT FEMUR',5,6000,NULL,NULL),(254,'CT FILM',2,700,NULL,NULL),(255,'CT FILM & PROCEDURE',3,3000,NULL,NULL),(256,'CT FOREARM RT./LT.',5,6000,NULL,NULL),(257,'CT GUIDED FNAC CONSULT FEE',2,1500,NULL,NULL),(258,'CT HAND',3,6000,NULL,NULL),(259,'CT HBS & PANCREAS',5,6000,NULL,NULL),(260,'CT HEAD',2,4000,NULL,NULL),(261,'CT INJECTION',3,1800,NULL,NULL),(262,'CT INJECTION(Adult)',5,1320,NULL,NULL),(263,'CT INJECTION(ANGIOGRAM)',2,2500,NULL,NULL),(264,'CT INJECTION(ANGIOGRAM-1)',3,3500,NULL,NULL),(265,'CT INJECTION(Child)',5,1020,NULL,NULL),(266,'CT INJECTION(INFANT)',2,610,NULL,NULL),(267,'CT JOINT/BONE',3,6000,NULL,NULL),(268,'CT KNEE BOTH',5,12000,NULL,NULL),(269,'CT KNEE LT',2,6000,NULL,NULL),(270,'CT KNEE RT',3,6000,NULL,NULL),(271,'CT L/S.SPINE',5,6000,NULL,NULL),(272,'CT LARYNGOPHARYNX',2,6000,NULL,NULL),(273,'CT LEG RT./LT.',3,6000,NULL,NULL),(274,'CT LOWER ABDOMEN',5,6000,NULL,NULL),(275,'CT LOWER ABDOMEN ANGIOGRAM',2,15000,NULL,NULL),(276,'CT LUMBER PUNCHER SCREENING',3,2000,NULL,NULL),(277,'CT MASTOID',5,6000,NULL,NULL),(278,'CT MAXILLA',2,6000,NULL,NULL),(279,'CT MRI SOFT COPY',3,300,NULL,NULL),(280,'CT NASOPHARYNX',5,6000,NULL,NULL),(281,'CT NECK',2,6500,NULL,NULL),(282,'CT NECK & BRAIN ANGIOGRAM',3,15000,NULL,NULL),(283,'CT NECK ANGIOGRAM',5,15000,NULL,NULL),(284,'CT ORBIT',2,6000,NULL,NULL),(285,'CT OTHERS-1',3,2000,NULL,NULL),(286,'CT OTHERS-2',5,2000,NULL,NULL),(287,'CT PARA NASAL SINUSES',2,6000,NULL,NULL),(288,'CT PELVIS',3,6500,NULL,NULL),(289,'CT PERIPHERAL ANGIOGRAM',5,15000,NULL,NULL),(290,'CT PITUITARY FOSSA',2,6000,NULL,NULL),(291,'CT PNS',3,6000,NULL,NULL),(292,'CT POST.FOSSA',5,6000,NULL,NULL),(293,'CT RENAL ANGIOGRAM',2,15000,NULL,NULL),(294,'CT RIGHT EAR/LEFT EAR',3,6000,NULL,NULL),(295,'CT S.I. JOINT',5,6000,NULL,NULL),(296,'CT SALIVARY GLANDS',2,6000,NULL,NULL),(297,'CT SCAN ELBOW JOINT',3,6000,NULL,NULL),(298,'CT SCAN FOOT LT',5,6000,NULL,NULL),(299,'CT SCAN FOOT RT',2,6000,NULL,NULL),(300,'CT SCAN HIP JOINT',3,6000,NULL,NULL),(301,'CT SCAN KNEE JOINT',5,6000,NULL,NULL),(302,'CT SCAN KUB',2,13000,NULL,NULL),(303,'CT SCAN OF ARM/FORE ARM',3,6000,NULL,NULL),(304,'CT SCAN OF KIDNEYS',5,6000,NULL,NULL),(305,'CT SCAN OF LIVER PANCREAS',2,6000,NULL,NULL),(306,'CT SCAN SHOULDER JOINT',3,6000,NULL,NULL),(307,'CT SCAN THIGH',5,6000,NULL,NULL),(308,'CT SCAN THORACIC SPINE',2,6000,NULL,NULL),(309,'CT Scan Whole Body',3,27000,NULL,NULL),(310,'CT SELLA (TURCICA)',5,6000,NULL,NULL),(311,'CT SOFT TISSUE',2,6000,NULL,NULL),(312,'CT TM JOINT',3,6000,NULL,NULL),(313,'CT TOUNGE',5,6000,NULL,NULL),(314,'CT UPPER ABDOMEN',2,6000,NULL,NULL),(315,'CT UROGRAM',3,13000,NULL,NULL),(316,'CT WHOLE ABDOMEN',5,12000,NULL,NULL),(317,'CT2',2,0,NULL,NULL),(318,'CT3',3,0,NULL,NULL),(319,'CT4',5,0,NULL,NULL),(320,'CV LINE AEROBIC',2,800,NULL,NULL),(321,'CV LINE ANAEROBIC',3,700,NULL,NULL),(322,'CYCLOSPORIN',5,2200,NULL,NULL),(323,'CYSTATIN-C',2,1100,NULL,NULL),(324,'CYSTIC FLUID Anaerobic C/S',3,700,NULL,NULL),(325,'CYSTIC FLUID C/S',5,600,NULL,NULL),(326,'CYTOMEGALO Virus Antibody IgG',2,1100,NULL,NULL),(327,'CYTOMEGALO Virus Antibody IgM',3,1100,NULL,NULL),(328,'CYTOPATH SLIDE DELIVERY',5,300,NULL,NULL),(329,'CYTOSPIN MALIGNANT CELL (Ascitic Fluid)',2,1000,NULL,NULL),(330,'CYTOSPIN MALIGNANT CELL (BAL)',3,1000,NULL,NULL),(331,'CYTOSPIN MALIGNANT CELL (CSF)',5,1000,NULL,NULL),(332,'CYTOSPIN MALIGNANT CELL (Joint Fluid)',2,1000,NULL,NULL),(333,'CYTOSPIN MALIGNANT CELL (Pericardial Fluid)',3,1000,NULL,NULL),(334,'CYTOSPIN MALIGNANT CELL (Pertionial Fluid)',5,1000,NULL,NULL),(335,'CYTOSPIN MALIGNANT CELL (Plural Fluid)',2,1000,NULL,NULL),(336,'CYTOSPIN MALIGNANT CELL (Traceal Fluid)',3,1000,NULL,NULL),(337,'CYTOSPIN MALIGNANT CELL (Tracheal Spirate)',5,1000,NULL,NULL),(338,'DC',2,150,NULL,NULL),(339,'D-DIMER',3,1100,NULL,NULL),(340,'Dengue NS1 Ag',5,1000,NULL,NULL),(341,'DENGUE VIRUS ab IgG',2,800,NULL,NULL),(342,'DENGUE VIRUS ab IgM',3,800,NULL,NULL),(343,'DHEAS',5,1200,NULL,NULL),(344,'DIABETIC BOOK',2,25,NULL,NULL),(345,'DIABETICS CONSULTANCY FEE',3,100,NULL,NULL),(346,'DIGOXIN',5,1000,NULL,NULL),(347,'DILATATION SG',2,4000,NULL,NULL),(348,'DISPOSABLE BED SHEET',3,12,NULL,NULL),(349,'DOCTOR CHARGE (Assistant)',5,500,NULL,NULL),(350,'DOCTORS BOOK',2,10,NULL,NULL),(351,'Doppler Study of Abdominal aorta & its branches',3,3000,NULL,NULL),(352,'Doppler Study of Carotid Vessel',5,3000,NULL,NULL),(353,'Doppler Study of Kidney/Renal Perfusion',2,3000,NULL,NULL),(354,'Doppler Study of Lower limb veins/deep veins',3,3000,NULL,NULL),(355,'Doppler Study of Lower Limb Vessels',5,3000,NULL,NULL),(356,'Doppler Study of Neck Vessel',2,3000,NULL,NULL),(357,'Doppler Study of Pampiniform plexus',3,3000,NULL,NULL),(358,'Doppler Study of Penile vessels',5,3500,NULL,NULL),(359,'Doppler Study of Peripheral Vascular Doppler',2,3000,NULL,NULL),(360,'Doppler Study of Upper limb vessels',3,3000,NULL,NULL),(361,'DPT',5,56,NULL,NULL),(362,'DSEA-S',2,610,NULL,NULL),(363,'DUODENAL DILATION(BALLOON)',3,5500,NULL,NULL),(364,'DUPLEX STUDY OF AXILLARY & BRACHIAL',5,3000,NULL,NULL),(365,'DUPLEX STUDY OF BOTH LOWER LIMB',2,6000,NULL,NULL),(366,'DUPLEX STUDY OF BOTH UPPER LIMB',3,6000,NULL,NULL),(367,'DUPLEX STUDY OF BRAIN (NEONATAL)',5,3000,NULL,NULL),(368,'DUPLEX STUDY OF CAROTIDS',2,3000,NULL,NULL),(369,'DUPLEX STUDY OF CLAVICAL REGION',3,3000,NULL,NULL),(370,'DUPLEX STUDY OF DVT',5,3000,NULL,NULL),(371,'DUPLEX STUDY OF FACE',2,3000,NULL,NULL),(372,'DUPLEX STUDY OF HBS PORTAL SYSTEM',3,3000,NULL,NULL),(373,'DUPLEX STUDY OF ILIACE & MESENTERIC',5,3000,NULL,NULL),(374,'DUPLEX STUDY OF LEFT LOWER LIMB',2,3000,NULL,NULL),(375,'DUPLEX STUDY OF LEFT UPPER LIMB',3,3000,NULL,NULL),(376,'DUPLEX STUDY OF LUMP',5,3000,NULL,NULL),(377,'DUPLEX STUDY OF NECK VESSELS',2,3000,NULL,NULL),(378,'DUPLEX STUDY OF PENILE VESSELES',3,3500,NULL,NULL),(379,'DUPLEX STUDY OF PENIS',5,3000,NULL,NULL),(380,'DUPLEX STUDY OF PROSTATE',2,3000,NULL,NULL),(381,'DUPLEX STUDY OF RENAL VESSELE',3,3000,NULL,NULL),(382,'DUPLEX STUDY OF RT.LOWER LIMB',5,3000,NULL,NULL),(383,'DUPLEX STUDY OF RT.UPPER LIMB',2,3000,NULL,NULL),(384,'DUPLEX STUDY OF SCROTAL',3,3000,NULL,NULL),(385,'DUPLEX STUDY OF TESTIES',5,3000,NULL,NULL),(386,'DUPLEX STUDY OF WHOLE ABDOMEN',2,3000,NULL,NULL),(387,'EAR SWAB Anaerobic C/S',3,700,NULL,NULL),(388,'EAR SWAB C/S',5,600,NULL,NULL),(389,'EAR SWAB GM.STAIN',2,300,NULL,NULL),(390,'ECG',3,300,NULL,NULL),(391,'ECG (12 LEAD)',5,300,NULL,NULL),(392,'ECG OUTSIDE',2,700,NULL,NULL),(393,'ECHO COL.DOP.',3,2200,NULL,NULL),(394,'ECHOCARDIOGRAM',5,1200,NULL,NULL),(395,'EEG ANAESTHESIA',2,600,NULL,NULL),(396,'EEG DIGITAL',3,1800,NULL,NULL),(397,'EEG MONITORING 1 HOUR',5,3200,NULL,NULL),(398,'EEG MONITORING 12 HOUR',2,36500,NULL,NULL),(399,'EEG MONITORING 2 HOUR',3,6500,NULL,NULL),(400,'EEG MONITORING 24 HOUR',5,72500,NULL,NULL),(401,'EEG MONITORING 3 HOUR',2,10000,NULL,NULL),(402,'EEG MONITORING 4 HOUR',3,12500,NULL,NULL),(403,'EEG MONITORING 6 HOUR',5,12500,NULL,NULL),(404,'eGFR',2,800,NULL,NULL),(405,'ELECTROLYTES',3,850,NULL,NULL),(406,'EMG BOTH LOWER LIMBS',5,5400,NULL,NULL),(407,'EMG BOTH UPPER LIMBS',2,5400,NULL,NULL),(408,'EMG FACE',3,2700,NULL,NULL),(409,'EMG FOUR LIMBS',5,10000,NULL,NULL),(410,'EMG LOWER LIMB BOTH SIDE',2,5400,NULL,NULL),(411,'EMG LT. LOWER LIMB',3,2700,NULL,NULL),(412,'EMG LT. UPPER LIMB',5,2700,NULL,NULL),(413,'EMG RT. LOWER LIMB',2,2700,NULL,NULL),(414,'EMG RT. UPPER LIMB',3,2700,NULL,NULL),(415,'EMG TONGUE',5,2700,NULL,NULL),(416,'ENAMA CHARGE',2,160,NULL,NULL),(417,'ENDOCERVICAL SWAB AFB',3,350,NULL,NULL),(418,'ENDOCERVICAL SWAB BIO-CHEM',5,600,NULL,NULL),(419,'ENDOCERVICAL SWAB C/S',2,600,NULL,NULL),(420,'ENDOCERVICAL SWAB CYTOLOGY',3,300,NULL,NULL),(421,'ENDOCERVICAL SWAB GM STAIN',5,300,NULL,NULL),(422,'ENDOSCOPY BIOSPY CHARGE',2,600,NULL,NULL),(423,'ENDOSCOPY UPPER GI',3,1500,NULL,NULL),(424,'ENDOSCOPY UPPER GI WITH CLO TEST',5,2000,NULL,NULL),(425,'ENDOTRACHEAL TIP Anaerobic C/S',2,700,NULL,NULL),(426,'ENDOTRACHEAL TIP C/S',3,600,NULL,NULL),(427,'EPILATED HAIR ROOT',5,300,NULL,NULL),(428,'ERCP (DIAGNOSTIC)',2,7500,NULL,NULL),(429,'ERCP + PAPILLOTOMY',3,14500,NULL,NULL),(430,'ERCP + STENTING',5,24000,NULL,NULL),(431,'ERCP + STONE EXTRACTION',2,24000,NULL,NULL),(432,'ERCP + WORM EXTRACTION',3,24000,NULL,NULL),(433,'ESOPHAGEAL STENTING',5,7500,NULL,NULL),(434,'ESR',2,150,NULL,NULL),(435,'ESTRADIOL',3,1000,NULL,NULL),(436,'ETHANOL',5,750,NULL,NULL),(437,'ETT',2,2500,NULL,NULL),(438,'EXTRA FLIM',3,110,NULL,NULL),(439,'F-17-ALPHA HYDROXYPROGESTERONE',5,3200,NULL,NULL),(440,'F-17-KETOSTEROID URINE',2,9900,NULL,NULL),(441,'F-5-HYDROXY  INDOLE ACETIC ACID',3,8950,NULL,NULL),(442,'F-ACETONE (SERUM)',5,2400,NULL,NULL),(443,'F-ACETYLCHOLINE RECEPTOR AUTOANTIBODIES',2,11700,NULL,NULL),(444,'F-ACID FAST BACLLI BACTEC CULTURE',3,4000,NULL,NULL),(445,'F-ACTIVATED PROTEIN C RESISTANCE',5,100000,NULL,NULL),(446,'FACTOR-8',2,1000,NULL,NULL),(447,'FACTOR-9',3,1000,NULL,NULL),(448,'F-ACUTE  PROMYELOCYTIC LEUKEMIA (APL)',5,14200,NULL,NULL),(449,'F-ACUTE LEUKEMIA PANEL',2,32900,NULL,NULL),(450,'F-ACUTE LYMPHOBLASTIC LEUKEMIA PANEL',3,31000,NULL,NULL),(451,'F-ACUTE MYELOID LEUKEMIA (AML)',5,10800,NULL,NULL),(452,'F-ACUTE MYELOID LEUKEMIA (AML) CHARACTERIZATION',2,35000,NULL,NULL),(453,'F-ADENO VIRUS PCR',3,9000,NULL,NULL),(454,'F-ADENOVIRUS IgM',5,4400,NULL,NULL),(455,'F-ADRENOCORTICOTROPIC HORMONE (ACTH)',2,6100,NULL,NULL),(456,'F-AFB LJ SUSCEPTIBILITY: 10 DRUG PANEL',3,14200,NULL,NULL),(457,'F-AFB RADIOMETRIC SUSCEPTIBILITY: 10 DRUG PANEL',5,25700,NULL,NULL),(458,'F-AFB RADIOMETRIC SUSCEPTIBILITY: 5 DRUG PANEL',2,18600,NULL,NULL),(459,'F-ALCOHOL (URINE)',3,6300,NULL,NULL),(460,'F-ALDOSTERON (URINE)',5,10300,NULL,NULL),(461,'F-ALDOSTERONE',2,9200,NULL,NULL),(462,'F-ALL',3,9900,NULL,NULL),(463,'F-AML+ALL',5,16600,NULL,NULL),(464,'F-ANGIOTENSIN CONVERTING ENZYME (ACE)',2,5100,NULL,NULL),(465,'F-ANTI DOUBLE -STRANDED DNA ANTIBODIES. ds-DNA',3,4600,NULL,NULL),(466,'F-ANTI MITOCHONDRIAL ANTIBOIDIES (AMA)',5,5500,NULL,NULL),(467,'F-ANTI SMOOTH MUSCLE ANTIBODIES (ASMA)',2,5400,NULL,NULL),(468,'F-ANTI SMOOTH MUSCLE ANTIBODIES WITH TITRE',3,13000,NULL,NULL),(469,'F-CA 72-4',5,16000,NULL,NULL),(470,'F-CARDIOLIPIN IgG & IgM ANTIBODIES',2,3640,NULL,NULL),(471,'F-CARDIOLIPIN IgG ANTIBODIES',3,2570,NULL,NULL),(472,'F-CARDIOLIPIN IgM ANTIBODIES',5,2570,NULL,NULL),(473,'F-COPPER SERUM',2,2400,NULL,NULL),(474,'F-C-PEPTIDE',3,4550,NULL,NULL),(475,'F-CYTOGENETICS: BLOOD LYMPHO C/S',5,12700,NULL,NULL),(476,'FDP',2,1200,NULL,NULL),(477,'FEBRILE ANTIGEN',3,900,NULL,NULL),(478,'FENa',5,1100,NULL,NULL),(479,'FERRITIN',2,1000,NULL,NULL),(480,'F-HBV BASAL CORE PROMOTER MUTATION',3,11000,NULL,NULL),(481,'F-HBV DNA QUANTITATIVE (REAL TIME)',5,10800,NULL,NULL),(482,'F-HBV DRUG RESISTANCE',2,18600,NULL,NULL),(483,'F-HBV GENOTYPING',3,15200,NULL,NULL),(484,'F-HEPATITIS C VIRUS GENOTYPING',5,13900,NULL,NULL),(485,'F-HEPATITIS PANEL-2 (HCV QTY+GENO)',2,26500,NULL,NULL),(486,'F-HLAB27',3,8200,NULL,NULL),(487,'F-HPATITIS B VIRUS DNA, DETECTOR, QUALITATIVE',5,14700,NULL,NULL),(488,'F-HPV DNA DETECTOR',2,6500,NULL,NULL),(489,'FIBRE OPTIC LARYNGOSCOPY (FOL)',3,1600,NULL,NULL),(490,'FIBRINOGEN LEVEL',5,800,NULL,NULL),(491,'FIBRONECTION',2,900,NULL,NULL),(492,'F-INSULIN',3,3750,NULL,NULL),(493,'FISTULA SWAB',5,600,NULL,NULL),(494,'F-LEPTOSPIRA DNA PCR',2,5400,NULL,NULL),(495,'F-LIVER KIDNEY MICROSOME AUTO ANTIBODIES',3,4160,NULL,NULL),(496,'FLOOR SWAB C/S',5,600,NULL,NULL),(497,'FLUID URIC ACID',2,300,NULL,NULL),(498,'F-MYCOREAL',3,8900,NULL,NULL),(499,'FNAC',5,900,NULL,NULL),(500,'FNAC (1)',2,900,NULL,NULL),(501,'FNAC (2)',3,1800,NULL,NULL),(502,'FNAC (3)',5,2700,NULL,NULL),(503,'FNAC (4)',2,3600,NULL,NULL),(504,'FNAC(USG Guided)',3,1000,NULL,NULL),(505,'F-NEONATAL SCREENING PANEL-1',5,14300,NULL,NULL),(506,'F-NEONATAL SCREENING PANEL-2',2,9900,NULL,NULL),(507,'F-NEONATAL SCREENING PANEL-4',3,4100,NULL,NULL),(508,'FOL',5,1600,NULL,NULL),(509,'FOLIC ACID/FOLATE',2,1700,NULL,NULL),(510,'FOREIGN BODY EXTRACTION',3,5500,NULL,NULL),(511,'F-OSTEOCALCIN',5,9800,NULL,NULL),(512,'F-OSTEOMON',2,9000,NULL,NULL),(513,'F-OSTEOSCREEN PANEL II',3,18600,NULL,NULL),(514,'F-OSTEOSCREEN PANEL-01',5,15200,NULL,NULL),(515,'F-OUTDOOR ALLERGEN PANEL',2,10000,NULL,NULL),(516,'F-PCOD PANEL',3,16900,NULL,NULL),(517,'F-PHILADELPHIA CHROMOSOME',5,18500,NULL,NULL),(518,'F-PHILADELPHIA CHROMOSOME QUALITATIVE',2,8400,NULL,NULL),(519,'F-PHILADELPHIA CHROMOSOME QUANTITATIVE',3,10800,NULL,NULL),(520,'F-PML Ra Ra t(15:17) QUALITATIVE',5,9000,NULL,NULL),(521,'F-PML Ra Ra t(15:17) QUANTITATIVE',2,16600,NULL,NULL),(522,'F-RABIES ANTIBODIES',3,5250,NULL,NULL),(523,'FREE PSA',5,1000,NULL,NULL),(524,'Free PSA Total PSA Ratio',2,1700,NULL,NULL),(525,'FREE TESTOSTERONE',3,1700,NULL,NULL),(526,'F-SCL-70 IgG ANTIBODIES',5,8000,NULL,NULL),(527,'FSH',2,1000,NULL,NULL),(528,'FT3',3,1000,NULL,NULL),(529,'FT3&FT4',5,2000,NULL,NULL),(530,'FT4',2,1000,NULL,NULL),(531,'FTA-ABS',3,610,NULL,NULL),(532,'F-TB CULTURE',5,3920,NULL,NULL),(533,'F-VITAMIN A',2,7100,NULL,NULL),(534,'F-VITAMIN B1',3,7100,NULL,NULL),(535,'F-VITAMIN B2',5,7100,NULL,NULL),(536,'F-VITAMIN B6',2,7100,NULL,NULL),(537,'F-VITAMIN C',3,7100,NULL,NULL),(538,'F-VITAMIN D',5,9400,NULL,NULL),(539,'F-VITAMIN D3',2,14400,NULL,NULL),(540,'F-ZINC LEVEL',3,6000,NULL,NULL),(541,'G6 PD',5,900,NULL,NULL),(542,'GAMMA GT',2,800,NULL,NULL),(543,'GASTRIC ASPIRATE',3,600,NULL,NULL),(544,'GASTRIC FLUID Anaerobic C/S',5,600,NULL,NULL),(545,'GASTRIC FLUID C/S',2,600,NULL,NULL),(546,'Gastric Lavage',3,600,NULL,NULL),(547,'GENTAMYCIN',5,1000,NULL,NULL),(548,'GFR',2,1000,NULL,NULL),(549,'GH',3,1100,NULL,NULL),(550,'GLOBULIN',5,600,NULL,NULL),(551,'GLUCOMETER TEST',2,50,NULL,NULL),(552,'GROWTH HORMONE',3,1100,NULL,NULL),(553,'GTT(3 SAMPLE)',5,450,NULL,NULL),(554,'H. PYLORI  IgG',2,1000,NULL,NULL),(555,'HAEMOSTASIS NON-VARICEAL',3,5500,NULL,NULL),(556,'HAPTOGLOBIN',5,800,NULL,NULL),(557,'HAV IgM',2,1050,NULL,NULL),(558,'Havirox Adult',3,1320,NULL,NULL),(559,'Havirox Child',5,670,NULL,NULL),(560,'HB',2,150,NULL,NULL),(561,'HB TC DC',3,400,NULL,NULL),(562,'HB TC DC ESR',5,400,NULL,NULL),(563,'Hb.GLYCATED',2,1050,NULL,NULL),(564,'HbA1C',3,1000,NULL,NULL),(565,'HBeAg',5,1050,NULL,NULL),(566,'Hb-ELECTROPHORESIS',2,1100,NULL,NULL),(567,'HBsAb',3,1050,NULL,NULL),(568,'HBsAg (E)',5,600,NULL,NULL),(569,'HBsAg (ICT)',2,600,NULL,NULL),(570,'HBsAg (RPHA)',3,500,NULL,NULL),(571,'HBsAg Latex',5,350,NULL,NULL),(572,'HCG',2,1000,NULL,NULL),(573,'HCT',3,250,NULL,NULL),(574,'HDL',5,450,NULL,NULL),(575,'HEALTH MAGAZINE',2,10,NULL,NULL),(576,'Herpes Simplex Virus Type 1 Ab IgG',3,1000,NULL,NULL),(577,'Herpes Simplex Virus Type 1 Ab IgM',5,1000,NULL,NULL),(578,'Herpes Simplex Virus Type 2 Ab IgG',2,1000,NULL,NULL),(579,'Herpes Simplex Virus Type 2 Ab IgM',3,1000,NULL,NULL),(580,'HEV IgM',5,1000,NULL,NULL),(581,'Histarosulphingogram Fee',2,760,NULL,NULL),(582,'HISTOPATH',3,600,NULL,NULL),(583,'HISTOPATH (2)',5,1200,NULL,NULL),(584,'HISTOPATH (3)',2,1800,NULL,NULL),(585,'HISTOPATH (4)',3,2400,NULL,NULL),(586,'HISTOPATH SLIDE DELIVERY',5,400,NULL,NULL),(587,'HIV (E)',2,1100,NULL,NULL),(588,'HIV (R)',3,400,NULL,NULL),(589,'HLA-B27    (pcr hla-b27)',5,3000,NULL,NULL),(590,'HOLTER MONITORING',2,2800,NULL,NULL),(591,'HOMOCYSTEINE',3,2400,NULL,NULL),(592,'HOMOSTRESEI',5,4000,NULL,NULL),(593,'HVS Anaerobic C/S',2,600,NULL,NULL),(594,'HVS C/S',3,600,NULL,NULL),(595,'HVS FOR R/E M/E',5,300,NULL,NULL),(596,'HVS GM.STAIN',2,300,NULL,NULL),(597,'ICT ANTI-HCV',3,900,NULL,NULL),(598,'ICT FILARIA',5,900,NULL,NULL),(599,'ICT FOR H.PYLORI',2,900,NULL,NULL),(600,'ICT FOR T.B',3,900,NULL,NULL),(601,'ICT HCV',5,450,NULL,NULL),(602,'ICT KALA AZAR',2,800,NULL,NULL),(603,'ICT MALARIA',3,900,NULL,NULL),(604,'IFAT for Filaria',5,900,NULL,NULL),(605,'IgA',2,950,NULL,NULL),(606,'IgE',3,950,NULL,NULL),(607,'IgG',5,950,NULL,NULL),(608,'IgM',2,950,NULL,NULL),(609,'IHA/HA For ECHINOCOCCUS',3,700,NULL,NULL),(610,'IMPACT',5,940,NULL,NULL),(611,'Inj.Iopamiro 300',2,1020,NULL,NULL),(612,'Inj.Iopamiro 370',3,1320,NULL,NULL),(613,'INJECTION PUSING',5,20,NULL,NULL),(614,'IRON',2,850,NULL,NULL),(615,'IT TUBE TIP C/S',3,600,NULL,NULL),(616,'JOINT FLUID AFB',5,300,NULL,NULL),(617,'JOINT FLUID BIO-CHEM',2,600,NULL,NULL),(618,'JOINT FLUID C/S',3,600,NULL,NULL),(619,'JOINT FLUID CYTOLOGY',5,300,NULL,NULL),(620,'JOINT FLUID GM. STAIN',2,300,NULL,NULL),(621,'JOINT FLUID MALIGNANT CELL',3,600,NULL,NULL),(622,'JOINT FLUID PROTEIN',5,400,NULL,NULL),(623,'JOINT FLUID SUGAR',2,150,NULL,NULL),(624,'K+',3,300,NULL,NULL),(625,'L.E CELLS',5,300,NULL,NULL),(626,'LACTATE/LACTIC ACID',2,1000,NULL,NULL),(627,'LDH',3,800,NULL,NULL),(628,'LDL',5,400,NULL,NULL),(629,'LH',2,1000,NULL,NULL),(630,'LIPID PROFILE',3,1000,NULL,NULL),(631,'LIPID PROFILE (R)',5,1050,NULL,NULL),(632,'LIPO PROTEIN',2,900,NULL,NULL),(633,'LITHIUM',3,700,NULL,NULL),(634,'LIVER BIOPSY (USG guided)',5,2050,NULL,NULL),(635,'LIVER FUNCTION TEST (LFT)',2,1000,NULL,NULL),(636,'LUNG FUNCTION TEST',3,700,NULL,NULL),(637,'M.T.',5,350,NULL,NULL),(638,'MAGNESIUM',2,900,NULL,NULL),(639,'MALARIA SPOT TEST',3,600,NULL,NULL),(640,'MALIGNENT CELL',5,600,NULL,NULL),(641,'MAMMOGRAPHY BOTH SIDE',2,1800,NULL,NULL),(642,'MCH',3,150,NULL,NULL),(643,'MCHC',5,150,NULL,NULL),(644,'MCV',2,150,NULL,NULL),(645,'Medical Certificate Fee',3,120,NULL,NULL),(646,'MENINGITIDIS',5,800,NULL,NULL),(647,'MP',2,200,NULL,NULL),(648,'MRA BRAIN',3,7000,NULL,NULL),(649,'MRA NECK',5,7000,NULL,NULL),(650,'MRCP',2,7000,NULL,NULL),(651,'MRI & MRA BRAIN',3,11000,NULL,NULL),(652,'MRI & MRV BRAIN',5,11000,NULL,NULL),(653,'MRI ADVANCE',2,1000,NULL,NULL),(654,'MRI ANAESTHESIA',3,1500,NULL,NULL),(655,'MRI ANAESTHESIA-1',5,2000,NULL,NULL),(656,'MRI ANAESTHESIA-2',2,500,NULL,NULL),(657,'MRI ANGIOGRAPHY',3,11000,NULL,NULL),(658,'MRI ANKLE (LT.)',5,7000,NULL,NULL),(659,'MRI ANKLE (RT.)',2,7000,NULL,NULL),(660,'MRI ARM',3,7000,NULL,NULL),(661,'MRI AXILLAE RT./LT.',5,7000,NULL,NULL),(662,'MRI BASE OF SKULL',2,7000,NULL,NULL),(663,'MRI BRAIN',3,7000,NULL,NULL),(664,'MRI BRAIN & BASE OF SKULL',5,9000,NULL,NULL),(665,'MRI BRAIN & Cervical',2,12000,NULL,NULL),(666,'MRI BRAIN & CRANIAL NERVES',3,12000,NULL,NULL),(667,'MRI BRAIN & EAR',5,12000,NULL,NULL),(668,'MRI BRAIN & EYE',2,12000,NULL,NULL),(669,'MRI BRAIN & MRA',3,11000,NULL,NULL),(670,'MRI BRAIN & MRV',5,11000,NULL,NULL),(671,'MRI BRAIN & ORBIT',2,11000,NULL,NULL),(672,'MRI BRAIN & PITUITARY GLAND',3,11000,NULL,NULL),(673,'MRI BRAIN & PNS',5,11000,NULL,NULL),(674,'MRI BRAIN & SCREENING',2,11000,NULL,NULL),(675,'MRI BRAIN & SKULL',3,7000,NULL,NULL),(676,'MRI BRAIN & SPECTROSCOPY',5,11000,NULL,NULL),(677,'MRI BREAST',2,7000,NULL,NULL),(678,'MRI C.P.ANGLE',3,7000,NULL,NULL),(679,'MRI C.SPINE',5,7000,NULL,NULL),(680,'MRI C/SPINE & MRA',2,11000,NULL,NULL),(681,'MRI CEREBELLO PONTINE ANGLE',3,7000,NULL,NULL),(682,'MRI CERVICAL SPINE',5,7000,NULL,NULL),(683,'MRI CERVICAL SPINE & SCREENING',2,11000,NULL,NULL),(684,'MRI CHEST',3,7000,NULL,NULL),(685,'MRI D.Spine + C.Spine',5,11000,NULL,NULL),(686,'MRI DORSAL CERVICAL SPINE',2,11000,NULL,NULL),(687,'MRI DORSAL LUMBER SPINE',3,11000,NULL,NULL),(688,'MRI DORSAL SPINE',5,7000,NULL,NULL),(689,'MRI DORSO-LUMBER JUNCTION',2,9000,NULL,NULL),(690,'MRI EAR LEFT',3,7000,NULL,NULL),(691,'MRI EAR RIGHT',5,7000,NULL,NULL),(692,'MRI ELBOW',2,7000,NULL,NULL),(693,'MRI FACE',3,7000,NULL,NULL),(694,'MRI FEMER',5,7000,NULL,NULL),(695,'MRI FERRISCAN',2,3000,NULL,NULL),(696,'MRI FILM',3,700,NULL,NULL),(697,'MRI FINGER',5,7000,NULL,NULL),(698,'MRI FINGER RT./LT.',2,7000,NULL,NULL),(699,'MRI FOOT RT./LT.',3,7000,NULL,NULL),(700,'MRI FOREARM LT.',5,7000,NULL,NULL),(701,'MRI FOREARM RT.',2,7000,NULL,NULL),(702,'MRI FOREARM RT./LT.',3,14000,NULL,NULL),(703,'MRI HAND RT./LT.',5,7000,NULL,NULL),(704,'MRI HBS',2,7000,NULL,NULL),(705,'MRI HIP',3,7000,NULL,NULL),(706,'MRI HIP JOINT',5,7000,NULL,NULL),(707,'MRI HUMERUS INCLODING RADIUS & ULNA',2,11000,NULL,NULL),(708,'MRI INJECTION',3,2500,NULL,NULL),(709,'MRI KNEE',5,7000,NULL,NULL),(710,'MRI KNEE JOINT',2,7000,NULL,NULL),(711,'MRI LARYNGOPHARYNX',3,7000,NULL,NULL),(712,'MRI LEG',5,7000,NULL,NULL),(713,'MRI LOWER ABDOMEN',2,7000,NULL,NULL),(714,'MRI LT KNEE',3,7000,NULL,NULL),(715,'MRI LT.SUBCOSTAL AREA',5,7000,NULL,NULL),(716,'MRI LT/RT HUMREAS',2,7000,NULL,NULL),(717,'MRI LT/RT HUMREUS & SCREENING',3,10000,NULL,NULL),(718,'MRI LUMBER SPINE',5,7000,NULL,NULL),(719,'MRI LUMBO-SACRAL SPINE',2,7000,NULL,NULL),(720,'MRI LUMBO-SACRAL SPINE & SCREENING',3,10000,NULL,NULL),(721,'MRI MASTOID',5,7000,NULL,NULL),(722,'MRI MEDIASTINUM',2,9000,NULL,NULL),(723,'MRI NECK',3,7000,NULL,NULL),(724,'MRI ONE REGION',5,7000,NULL,NULL),(725,'MRI ORAL CAVITY',2,8000,NULL,NULL),(726,'MRI ORBIT',3,7000,NULL,NULL),(727,'MRI OTHERS',5,3500,NULL,NULL),(728,'MRI PELVIS',2,7000,NULL,NULL),(729,'MRI PITUITARY GLAND',3,7000,NULL,NULL),(730,'MRI PNS',5,7000,NULL,NULL),(731,'MRI POST.FOSSA',2,7000,NULL,NULL),(732,'MRI RT KNEE',3,7000,NULL,NULL),(733,'MRI RT KNEE JOINT',5,7000,NULL,NULL),(734,'MRI RT.SUBCOSTAL AREA',2,7000,NULL,NULL),(735,'MRI S.I. JOINT',3,7000,NULL,NULL),(736,'MRI SACRO COCCYX',5,7000,NULL,NULL),(737,'MRI SALIVARY GLANDS',2,8000,NULL,NULL),(738,'MRI SCREENING',3,600,NULL,NULL),(739,'MRI SELLA & PARA SELLA',5,7000,NULL,NULL),(740,'MRI SHOULDER JOINT (LT.)',2,7000,NULL,NULL),(741,'MRI SHOULDER JOINT (RT.)',3,7000,NULL,NULL),(742,'MRI SPECTROSCOPY',5,7000,NULL,NULL),(743,'MRI T.M JOINT',2,7000,NULL,NULL),(744,'MRI THIGH',3,7000,NULL,NULL),(745,'MRI THORACIC SPINE',5,7000,NULL,NULL),(746,'MRI THORACIC SPINE & SCREENING',2,11000,NULL,NULL),(747,'MRI TONGUE BASE',3,8000,NULL,NULL),(748,'MRI UPPER ABDOMEN',5,7000,NULL,NULL),(749,'MRI WHOLE ABDOMEN',2,14000,NULL,NULL),(750,'MRI WHOLE BODY',3,20000,NULL,NULL),(751,'MRI WHOLE SPINE',5,21000,NULL,NULL),(752,'MRI WRIST',2,7000,NULL,NULL),(753,'MRI WRIST JOINT',3,7000,NULL,NULL),(754,'MRV BRAIN',5,7000,NULL,NULL),(755,'MYCODOT',2,900,NULL,NULL),(756,'MYELOGRAM INJECTION',3,610,NULL,NULL),(757,'MYOGLOBIN',5,1000,NULL,NULL),(758,'NA+',2,250,NULL,NULL),(759,'NAIL CLIPPING for Dermatophyte',3,350,NULL,NULL),(760,'NAIL CLIPPING FOR FUNGUS',5,350,NULL,NULL),(761,'NAIL SCR.FUNGUS',2,300,NULL,NULL),(762,'NAIL SCR.FUNGUS FOR C/S',3,600,NULL,NULL),(763,'NASAL ENDOSCOPIC TEST',5,1200,NULL,NULL),(764,'NASAL NASOPHARYNX SCOPE TEST',2,1200,NULL,NULL),(765,'NASAL SINOSCOPE TEST',3,1200,NULL,NULL),(766,'NASAL SWAB Anaerobic C/S',5,700,NULL,NULL),(767,'NASAL SWAB C/S',2,600,NULL,NULL),(768,'NASAL SWAB GM.STAIN',3,300,NULL,NULL),(769,'NASO-BILIARY INTUBATIONS',5,20000,NULL,NULL),(770,'NASO-JEJUNAL INTUBATIONS',2,2000,NULL,NULL),(771,'NCV BOTH LOWER LIMBS',3,5400,NULL,NULL),(772,'NCV BOTH UPPER LIMBS',5,5400,NULL,NULL),(773,'NCV FACE',2,2700,NULL,NULL),(774,'NCV FOUR LIMBS',3,10000,NULL,NULL),(775,'NCV LT LOWER LIMB',5,2700,NULL,NULL),(776,'NCV LT UPPER LIMB',2,2700,NULL,NULL),(777,'NCV RT LOWER LIMB',3,2700,NULL,NULL),(778,'NCV RT UPPER LIMB',5,2700,NULL,NULL),(779,'NCV TONGUE',2,2700,NULL,NULL),(780,'NIPPLE DISCHARGE C/S',3,600,NULL,NULL),(781,'NIPPLE DISCHARGE CYTOLOGY',5,600,NULL,NULL),(782,'OESTROGEN',2,1000,NULL,NULL),(783,'OPIATES',3,1000,NULL,NULL),(784,'ORAL SWAB AFB',5,300,NULL,NULL),(785,'ORAL SWAB C/S',2,600,NULL,NULL),(786,'ORAL SWAB CYTOLOGY',3,300,NULL,NULL),(787,'ORAL SWAB GM STAIN',5,300,NULL,NULL),(788,'OT SWAB C/S',2,600,NULL,NULL),(789,'Out Collection fee',3,160,NULL,NULL),(790,'P/S FOR AFB',5,300,NULL,NULL),(791,'P/S FOR Anaerobic C/S',2,700,NULL,NULL),(792,'P/S FOR C/S',3,600,NULL,NULL),(793,'P/S FOR GC',5,300,NULL,NULL),(794,'P/S FOR M/E',2,300,NULL,NULL),(795,'P/S FOR MALIGNENT CELL',3,600,NULL,NULL),(796,'P/S FOR R/E M/E',5,300,NULL,NULL),(797,'P/S FOR R/E M/E (GM STAIN + WET FILM)',2,300,NULL,NULL),(798,'P/S GM.STAIN (GC)',3,300,NULL,NULL),(799,'PACE MAKERS FLUID C/S',5,600,NULL,NULL),(800,'PANCA',2,1100,NULL,NULL),(801,'PANCREATIC AMYLASE',3,900,NULL,NULL),(802,'PANCREATIC LIPASE',5,800,NULL,NULL),(803,'PAP`S SMEAR',2,800,NULL,NULL),(804,'PCR HBV DNA QUALITATIVE (REAL TIME PCR)',3,5000,NULL,NULL),(805,'PCR HBV DNA QUANTITATIVE (REAL TIME PCR)',5,8000,NULL,NULL),(806,'PCR HCV RNA GENOTYPING (Real Time PCR)',2,10000,NULL,NULL),(807,'PCR HCV RNA QUALITATIVE (Real Time PCR)',3,6000,NULL,NULL),(808,'PCR HCV RNA QUANTITATIVE (Real Time PCR)',5,10000,NULL,NULL),(809,'PCR HLA A B DR GENOTYPING',2,17000,NULL,NULL),(810,'PCR HLA A GENOTYPING',3,5000,NULL,NULL),(811,'PCR HLA B GENOTYPING',5,8500,NULL,NULL),(812,'PCR HLA DR GENOTYPING',2,6000,NULL,NULL),(813,'PCR HLA-B27',3,3000,NULL,NULL),(814,'PCR HPV DNA (REAL TIME PCR)',5,5000,NULL,NULL),(815,'PCR MTB DNA (Real Time PCR)',2,5000,NULL,NULL),(816,'PCV',3,150,NULL,NULL),(817,'PERCUTANEOUS ENDOSCOPIC GASTRONOMY',5,7500,NULL,NULL),(818,'PERICARDIAL FL.ADA',2,850,NULL,NULL),(819,'PERICARDIAL FL.ADB',3,800,NULL,NULL),(820,'PERICARDIAL FL.AFB',5,300,NULL,NULL),(821,'PERICARDIAL FL.BIOCHEMISTRY',2,850,NULL,NULL),(822,'PERICARDIAL FL.CYTOLOGY',3,300,NULL,NULL),(823,'PERICARDIAL FL.GM STAIN',5,300,NULL,NULL),(824,'PERICARDIAL FL.MALIG.CELL',2,600,NULL,NULL),(825,'PERICARDIAL FL.PROTEIN',3,400,NULL,NULL),(826,'PERICARDIAL FL.SUGAR',5,150,NULL,NULL),(827,'PERICARDIAL FLUID ALBUMIN',2,300,NULL,NULL),(828,'PERICARDIAL FLUID Anaerobic C/S',3,700,NULL,NULL),(829,'PERICARDIAL FLUID C/S',5,600,NULL,NULL),(830,'PERICARDIAL FLUID LDH',2,800,NULL,NULL),(831,'PERITONEAL FL ALBUMIN',3,300,NULL,NULL),(832,'PERITONEAL FL. ADA',5,900,NULL,NULL),(833,'PERITONEAL FL. AFB',2,300,NULL,NULL),(834,'PERITONEAL FL. ALBUMIN',3,300,NULL,NULL),(835,'PERITONEAL FL. Anaerobic C/S',5,700,NULL,NULL),(836,'PERITONEAL FL. BIOCHEMISTRY',2,600,NULL,NULL),(837,'PERITONEAL FL. C/S',3,600,NULL,NULL),(838,'PERITONEAL FL. CYTOLOGY',5,300,NULL,NULL),(839,'PERITONEAL FL. GM STAIN',2,300,NULL,NULL),(840,'PERITONEAL FL. LDH',3,800,NULL,NULL),(841,'PERITONEAL FL. MALIG. CELL',5,600,NULL,NULL),(842,'PERITONEAL FL. PROTEIN',2,350,NULL,NULL),(843,'PERITONEAL FL. SUGAR',3,150,NULL,NULL),(844,'PHENOBARBITON',5,1000,NULL,NULL),(845,'PHENYTOIN (not done in ibnsina)',2,1000,NULL,NULL),(846,'PKG Pre-medical Checkup',3,0,NULL,NULL),(847,'PL.F.ADA',5,900,NULL,NULL),(848,'PL.F.AFB',2,300,NULL,NULL),(849,'PL.F.Anaerobic C/S',3,700,NULL,NULL),(850,'PL.F.BIO-CHEM.',5,600,NULL,NULL),(851,'PL.F.C/S',2,600,NULL,NULL),(852,'PL.F.CYTOLOGY',3,300,NULL,NULL),(853,'PL.F.GM STAIN',5,300,NULL,NULL),(854,'PL.F.MALIG. CELL',2,600,NULL,NULL),(855,'PL.F.PROTEIN',3,350,NULL,NULL),(856,'PL.F.SUGAR',5,150,NULL,NULL),(857,'PLATELET COUNT',2,250,NULL,NULL),(858,'PLEURAL FLUID ADA',3,900,NULL,NULL),(859,'PLEURAL FLUID ALBUMIN',5,300,NULL,NULL),(860,'PLEURAL FLUID LDH',2,800,NULL,NULL),(861,'PO4(IN.PHOS)',3,500,NULL,NULL),(862,'POLYPECTOMY(MULTI)',5,7500,NULL,NULL),(863,'POLYPECTOMY(SINGLE)',2,5000,NULL,NULL),(864,'Portable X-ray',3,615,NULL,NULL),(865,'POST PRANDIAL PLASMA GLUCOSE',5,150,NULL,NULL),(866,'PROCTOSCOPY',2,1100,NULL,NULL),(867,'PROCTOSIGMODOSCOPY',3,1700,NULL,NULL),(868,'PROGESTERON',5,1000,NULL,NULL),(869,'PROLACTIN',2,1000,NULL,NULL),(870,'PROST.PHOSPHATASE',3,700,NULL,NULL),(871,'PROSTATE BIOPSY',5,2500,NULL,NULL),(872,'PROSTATE BIOPSY CONSULTANT FEE',2,2200,NULL,NULL),(873,'PROSTATIC ACID PHOSPATE',3,700,NULL,NULL),(874,'PROTEIN ELECTROPHORESIS',5,1100,NULL,NULL),(875,'PROTHRMB.TIME',2,500,NULL,NULL),(876,'PSA',3,1000,NULL,NULL),(877,'PTC',5,5500,NULL,NULL),(878,'PTG',2,1000,NULL,NULL),(879,'PTH',3,1100,NULL,NULL),(880,'PUS for AFB',5,300,NULL,NULL),(881,'PUS for AFB Anaerobic C/S',2,600,NULL,NULL),(882,'PUS for AFB C/S',3,600,NULL,NULL),(883,'PUS for Anaerobic C/S',5,700,NULL,NULL),(884,'PUS for Anaerobic C/S(FAN MATHOD)',2,700,NULL,NULL),(885,'PUS for C/S',3,600,NULL,NULL),(886,'PUS for CYTOLOGY',5,300,NULL,NULL),(887,'PUS FOR MALIG. CELL',2,700,NULL,NULL),(888,'PUS for R/E M/E',3,300,NULL,NULL),(889,'PUS GM.STAIN',5,300,NULL,NULL),(890,'R/A TEST',2,600,NULL,NULL),(891,'RBC',3,150,NULL,NULL),(892,'REC.SWAB Anaerobic C/S',5,700,NULL,NULL),(893,'REC.SWAB C/S',2,600,NULL,NULL),(894,'RETICS.COUNT',3,250,NULL,NULL),(895,'RH ANTIB.TITRE',5,700,NULL,NULL),(896,'ROSE WAALER TEST',2,400,NULL,NULL),(897,'RPR',3,350,NULL,NULL),(898,'RUBELLA VIRUS Antibody IgG',5,1000,NULL,NULL),(899,'RUBELLA VIRUS Antibody IgM',2,1000,NULL,NULL),(900,'S.PROTEIN ELECTROPHORESIS',3,1100,NULL,NULL),(901,'S.TOTAL PROTEIN',5,400,NULL,NULL),(902,'S.TSAT',2,1500,NULL,NULL),(903,'SAAG',3,700,NULL,NULL),(904,'SCLEROTHERAPY',5,3000,NULL,NULL),(905,'SEMEN ANALYSIS',2,700,NULL,NULL),(906,'SEMEN ANALYSIS AFB',3,300,NULL,NULL),(907,'Semen for Anaerobic C/S',5,700,NULL,NULL),(908,'Semen for C/S',2,600,NULL,NULL),(909,'SEMEN GRAM STAIN',3,300,NULL,NULL),(910,'SERUM ADA',5,900,NULL,NULL),(911,'SERUM AMMONIA',2,1000,NULL,NULL),(912,'Serum Ceruloplasmin',3,1000,NULL,NULL),(913,'SERUM INSULIN',5,900,NULL,NULL),(914,'SERUM INSULIN (F)',2,900,NULL,NULL),(915,'SERUM INSULIN (R)',3,900,NULL,NULL),(916,'SERUM LIPASE',5,1000,NULL,NULL),(917,'Serum Oestrogen',2,1000,NULL,NULL),(918,'SERUM OSMOLALITY',3,1000,NULL,NULL),(919,'SERUM SCREENING TEST',5,1500,NULL,NULL),(920,'SGOT (AST)',2,300,NULL,NULL),(921,'SGPT (ALT)',3,300,NULL,NULL),(922,'SIGMOIDOSCOPY',5,1800,NULL,NULL),(923,'SK.FUNGAL Anaerobic C/S',2,700,NULL,NULL),(924,'SK.FUNGAL C/S',3,600,NULL,NULL),(925,'SKIN SCR.FUNGUS',5,300,NULL,NULL),(926,'SKIN SCR.FUNGUS (HAIR ROOT)',2,300,NULL,NULL),(927,'SKIN SCRAPPING C/S',3,700,NULL,NULL),(928,'SKIN SCRAPPING for Dermatophyte',5,300,NULL,NULL),(929,'SKIN SCRAPPING M/E',2,300,NULL,NULL),(930,'SLIT SMEAR',3,300,NULL,NULL),(931,'SPIROMETRY',5,700,NULL,NULL),(932,'SPUTUM AFB',2,300,NULL,NULL),(933,'SPUTUM AFB C/S',3,600,NULL,NULL),(934,'SPUTUM Anaerobic C/S',5,700,NULL,NULL),(935,'SPUTUM C/S',2,600,NULL,NULL),(936,'SPUTUM Cytology (Malignant Cell)',3,700,NULL,NULL),(937,'SPUTUM EOSINOPHIL',5,300,NULL,NULL),(938,'SPUTUM GM.STAIN',2,300,NULL,NULL),(939,'SPUTUM MALIGNANT CELL',3,700,NULL,NULL),(940,'SPUTUM R/E M/E (GM STAIN+WET FILM)',5,300,NULL,NULL),(941,'SPUTUM.AFB.(3 Sample)',2,900,NULL,NULL),(942,'STOOL Anaerobic C/S',3,700,NULL,NULL),(943,'STOOL BILE PIGM',5,200,NULL,NULL),(944,'STOOL C/S',2,600,NULL,NULL),(945,'STOOL F.T',3,200,NULL,NULL),(946,'STOOL OBT',5,250,NULL,NULL),(947,'STOOL R/E',2,150,NULL,NULL),(948,'STOOL R/E M/E',3,150,NULL,NULL),(949,'STOOL R/E(3 Sample)',5,450,NULL,NULL),(950,'STOOL R/S',2,200,NULL,NULL),(951,'Suction SWAB C/S',3,600,NULL,NULL),(952,'SYNOVIAL FLUID AFB',5,300,NULL,NULL),(953,'SYNOVIAL Fluid Anaerobic C/S',2,700,NULL,NULL),(954,'SYNOVIAL FLUID BIO-CHEM',3,600,NULL,NULL),(955,'SYNOVIAL Fluid C/S',5,600,NULL,NULL),(956,'SYNOVIAL FLUID CYTOLOGY',2,300,NULL,NULL),(957,'SYNOVIAL FLUID GM STAIN',3,300,NULL,NULL),(958,'SYNOVIAL FLUID MALIG. CELL',5,700,NULL,NULL),(959,'T.P.AG.RATIO',2,800,NULL,NULL),(960,'T/S FOR Anaerobic C/S',3,700,NULL,NULL),(961,'T/S FOR C/S',5,600,NULL,NULL),(962,'T/S FOR KLB',2,300,NULL,NULL),(963,'T/S FOR R/E M/E',3,300,NULL,NULL),(964,'T/S GM.STAIN.',5,300,NULL,NULL),(965,'T3',2,800,NULL,NULL),(966,'T3 T4 TSH',3,2400,NULL,NULL),(967,'T4',5,800,NULL,NULL),(968,'TB-IgA',2,1000,NULL,NULL),(969,'TB-IgA.IgM.IgG',3,3000,NULL,NULL),(970,'TB-IgG',5,1000,NULL,NULL),(971,'TB-IgM',2,1000,NULL,NULL),(972,'TC',3,150,NULL,NULL),(973,'TC DC ESR',5,400,NULL,NULL),(974,'TESTOSTERONE',2,1000,NULL,NULL),(975,'TG',3,300,NULL,NULL),(976,'TIBC',5,800,NULL,NULL),(977,'TIP SWAB C/S',2,600,NULL,NULL),(978,'TONGUE FOR CANDIASIS FUNGUS',3,300,NULL,NULL),(979,'TORCH',5,8000,NULL,NULL),(980,'TOXOPLASMA ANTIBODY IgG',2,1000,NULL,NULL),(981,'TOXOPLASMA ANTIBODY IgM',3,1000,NULL,NULL),(982,'TOXOPLASMA ANTIBODY(IgG IgM)',5,1800,NULL,NULL),(983,'TPHA',2,700,NULL,NULL),(984,'TPHA (Q+Q)',3,750,NULL,NULL),(985,'Tracheal Aspirate AFB',5,300,NULL,NULL),(986,'Tracheal Aspirate AFB C/S',2,600,NULL,NULL),(987,'Tracheal Aspirate Anaerobic C/S',3,600,NULL,NULL),(988,'Tracheal Aspirate C/S',5,600,NULL,NULL),(989,'Tracheal Aspirate Cytology',2,300,NULL,NULL),(990,'TRACHEAL ASPIRATE FOR FUNGUS C/S',3,700,NULL,NULL),(991,'Tracheal Aspirate G.Stain',5,300,NULL,NULL),(992,'Tracheal Aspirate MALIG.CELL',2,600,NULL,NULL),(993,'Tracheal Aspirate-Bio',3,400,NULL,NULL),(994,'Tracheal Lavage Anaerobic C/S',5,700,NULL,NULL),(995,'TRANSFERRIN',2,1000,NULL,NULL),(996,'TRIPLE ANTIGEN',3,800,NULL,NULL),(997,'TROPONIN-I',5,1000,NULL,NULL),(998,'TRYCYCLIC ANTI-DEPRESSANT',2,700,NULL,NULL),(999,'TSH',3,800,NULL,NULL),(1000,'T-UPTAKE',5,1100,NULL,NULL),(1001,'U.24hrs PHOSPHATE',2,450,NULL,NULL),(1002,'U.24HRS.MICROALB.',3,250,NULL,NULL),(1003,'U.T.P. 24 HRS.',5,400,NULL,NULL),(1004,'UMB.SWAB FOR Anaerobic C/S',2,700,NULL,NULL),(1005,'UMB.SWAB FOR C/S',3,600,NULL,NULL),(1006,'UREA',5,300,NULL,NULL),(1007,'UREA & CREATININE',2,600,NULL,NULL),(1008,'URETHRAL SMEAR AFB',3,300,NULL,NULL),(1009,'URETHRAL SMEAR Anaerobic C/S',5,700,NULL,NULL),(1010,'URETHRAL SMEAR C/S',2,600,NULL,NULL),(1011,'URETHRAL SMEAR FOR GC',3,300,NULL,NULL),(1012,'URETHRAL SMEAR GRAM STAIN',5,300,NULL,NULL),(1013,'URETHRAL SMEAR R/E M/E(WET FILM+GM STAIN)',2,300,NULL,NULL),(1014,'URIC ACID',3,300,NULL,NULL),(1015,'URINARY CORTISOL (24hrs)',5,1000,NULL,NULL),(1016,'URINE 24hrs URIC ACID',2,300,NULL,NULL),(1017,'URINE ACETONE (KETONE BODY)',3,250,NULL,NULL),(1018,'URINE ACR',5,900,NULL,NULL),(1019,'URINE AFB Anaerobic C/S',2,700,NULL,NULL),(1020,'URINE AFB C/S',3,600,NULL,NULL),(1021,'URINE ALBUMIN',5,150,NULL,NULL),(1022,'URINE AMYLASE (24hrs)',2,800,NULL,NULL),(1023,'URINE AMYLASE (SPOT)',3,800,NULL,NULL),(1024,'URINE Anaerobic C/S',5,700,NULL,NULL),(1025,'URINE Anaerobic C/S (FAN MATHOD)',2,700,NULL,NULL),(1026,'Urine Bence Jones Protein',3,450,NULL,NULL),(1027,'URINE BILE PIGM.',5,150,NULL,NULL),(1028,'Urine Bile Salt',2,150,NULL,NULL),(1029,'URINE C/S',3,600,NULL,NULL),(1030,'URINE CAL.24hrs.',5,500,NULL,NULL),(1031,'URINE CALCIUM (SPOT)',2,500,NULL,NULL),(1032,'Urine Calcium Creatinine Ratio',3,800,NULL,NULL),(1033,'URINE CORTISOL 24hrs',5,1000,NULL,NULL),(1034,'URINE CREATININE',2,300,NULL,NULL),(1035,'URINE CREATININE (24hrs)',3,300,NULL,NULL),(1036,'URINE CREATININE (SPOT)',5,300,NULL,NULL),(1037,'URINE CYTOLOGY (Malignant cell)',2,700,NULL,NULL),(1038,'URINE DIPSTRIP ANALYSIS',3,650,NULL,NULL),(1039,'URINE ELECTROLYTES (24HRS)',5,850,NULL,NULL),(1040,'URINE ELECTROLYTES (SPOT)',2,850,NULL,NULL),(1041,'URINE for 17 KETOSTEROID',3,800,NULL,NULL),(1042,'URINE FOR AFB',5,300,NULL,NULL),(1043,'URINE FOR AFB (3 Sample)',2,900,NULL,NULL),(1044,'Urine for Micro Albumin',3,800,NULL,NULL),(1045,'URINE FOR UREA',5,300,NULL,NULL),(1046,'Urine for VMA (not in dlab)',2,1500,NULL,NULL),(1047,'URINE GM STAIN',3,300,NULL,NULL),(1048,'URINE K+ 24 HRS',5,300,NULL,NULL),(1049,'URINE K+ SPOT',2,300,NULL,NULL),(1050,'URINE LIPASE(24hrs)',3,1000,NULL,NULL),(1051,'URINE LIPASE(SPOT)',5,1000,NULL,NULL),(1052,'URINE MAGNESIUM (24HRS)',2,700,NULL,NULL),(1053,'URINE MAGNESIUM (SPOT)',3,700,NULL,NULL),(1054,'URINE MALIGNANT CELL',5,600,NULL,NULL),(1055,'URINE MICRO ALBUMIN',2,800,NULL,NULL),(1056,'URINE MICRO ALBUMIN (24HRS)',3,800,NULL,NULL),(1057,'URINE OBT',5,250,NULL,NULL),(1058,'URINE OSMOLALITY',2,1000,NULL,NULL),(1059,'URINE OSMOLALITY 24Hrs',3,1000,NULL,NULL),(1060,'URINE P.T.',5,250,NULL,NULL),(1061,'URINE PCR',2,700,NULL,NULL),(1062,'Urine PH.',3,150,NULL,NULL),(1063,'URINE PHOSPHATE(24HRS)',5,400,NULL,NULL),(1064,'URINE PHOSPHATE(spot)',2,400,NULL,NULL),(1065,'URINE PO4 (SPOT)',3,400,NULL,NULL),(1066,'URINE PROTEIN (24HRS)',5,300,NULL,NULL),(1067,'URINE PROTEIN (SPOT)',2,300,NULL,NULL),(1068,'URINE R/E M/E',3,150,NULL,NULL),(1069,'Urine Sodium',5,300,NULL,NULL),(1070,'URINE SODIUM (24HRS)',2,300,NULL,NULL),(1071,'Urine Specific Gravity',3,200,NULL,NULL),(1072,'Urine Sugar',5,150,NULL,NULL),(1073,'URINE UREA(24hrs)',2,300,NULL,NULL),(1074,'URINE UREA(spot)',3,300,NULL,NULL),(1075,'URINE URIC ACID (SPOT)',5,350,NULL,NULL),(1076,'URINE URIC ACID(24hrs)',2,350,NULL,NULL),(1077,'Urine Urobilinogen',3,150,NULL,NULL),(1078,'UROFLOWMETRY TEST',5,800,NULL,NULL),(1079,'USG ABD. MCC & PVR',2,1250,NULL,NULL),(1080,'USG ABD.SUSP.INTUSSUCEPTI',3,1050,NULL,NULL),(1081,'USG ABD.SUSP.INTUSSUCEPTI 4D',5,1050,NULL,NULL),(1082,'USG ANOMALY SCAN',2,1550,NULL,NULL),(1083,'USG BACK OF UPPER TRUNK',3,850,NULL,NULL),(1084,'USG BIOPHYSICAL PROFILE',5,1250,NULL,NULL),(1085,'USG BRAIN',2,1050,NULL,NULL),(1086,'USG BRAIN 4D',3,1550,NULL,NULL),(1087,'USG BREAST BOTH',5,1800,NULL,NULL),(1088,'USG BREAST BOTH 4D',2,2000,NULL,NULL),(1089,'USG BREAST LEFT',3,1200,NULL,NULL),(1090,'USG BREAST RIGHT',5,1200,NULL,NULL),(1091,'USG CD OF AROTIDS',2,1050,NULL,NULL),(1092,'USG CD OF AROTIDS 4D',3,1550,NULL,NULL),(1093,'USG CD OF CAROTIDS',5,1050,NULL,NULL),(1094,'USG CD OF CAROTIDS 4D',2,1550,NULL,NULL),(1095,'USG CD OF DEEP VEINS',3,1550,NULL,NULL),(1096,'USG CD OF VERTEBRO-BASILA',5,1550,NULL,NULL),(1097,'USG CD RENAL ARTERY',2,1050,NULL,NULL),(1098,'USG CHEST',3,1050,NULL,NULL),(1099,'USG DET.F.G.ANOMALIES',5,1050,NULL,NULL),(1100,'USG FACE',2,1050,NULL,NULL),(1101,'USG FETAL AGE DET.',3,1050,NULL,NULL),(1102,'USG FETAL AGE DET. 4D',5,1550,NULL,NULL),(1103,'USG FOR FNAC',2,1250,NULL,NULL),(1104,'USG H.R.PREGNANCY',3,1050,NULL,NULL),(1105,'USG H.R.PREGNANCY 4D',5,1550,NULL,NULL),(1106,'USG HBS',2,1050,NULL,NULL),(1107,'USG HBS 2D',3,1050,NULL,NULL),(1108,'USG HBS 4D',5,1550,NULL,NULL),(1109,'USG HBS+ Pelvic Organs',2,1250,NULL,NULL),(1110,'USG HBS+KUB',3,1250,NULL,NULL),(1111,'USG HBS+KUB &  PELVIC ORGAN',5,1250,NULL,NULL),(1112,'USG HBS+KUB 4D',2,1550,NULL,NULL),(1113,'USG HBS+KUB+MCC+PVR & Uterus Ad.',3,1250,NULL,NULL),(1114,'USG HBS+KUB+PANCREAS',5,1250,NULL,NULL),(1115,'USG HBS+KUB+PVR & Pelvic Organs',2,1250,NULL,NULL),(1116,'USG HBS+PANCREAS',3,1050,NULL,NULL),(1117,'USG HBS+PANCREAS 4D',5,1550,NULL,NULL),(1118,'USG HEMITH. F. AS. PUS.LT/RT',2,1050,NULL,NULL),(1119,'USG HEMITH. MAR. FOR AS. LT.',3,1050,NULL,NULL),(1120,'USG HEMOTH. M. FOR AS. RT',5,1050,NULL,NULL),(1121,'USG HIP JOINTS',2,1550,NULL,NULL),(1122,'USG KUB',3,1050,NULL,NULL),(1123,'USG KUB & LOWER ABDOMEN',5,1050,NULL,NULL),(1124,'USG KUB & UTERUS. AD.',2,1050,NULL,NULL),(1125,'USG KUB + MCC + PVR',3,1250,NULL,NULL),(1126,'USG KUB + PVR',5,1250,NULL,NULL),(1127,'USG KUB 4D',2,1550,NULL,NULL),(1128,'USG KUB PELVIS PVR',3,1250,NULL,NULL),(1129,'USG KUB PELVIS PVR 4D',5,1550,NULL,NULL),(1130,'USG KUB PROSTATE MCC PVR',2,1250,NULL,NULL),(1131,'USG KUB PROSTATE PVR',3,1250,NULL,NULL),(1132,'USG KUB PROSTATE PVR 4D',5,1550,NULL,NULL),(1133,'USG KUB Scro.mcc.pvr. XXXXX',2,1050,NULL,NULL),(1134,'USG KUB+LOWER ABDOMEN',3,1050,NULL,NULL),(1135,'USG KUB+P/ORGAN',5,1050,NULL,NULL),(1136,'USG KUB+P/ORGAN 4D',2,1550,NULL,NULL),(1137,'USG KUB+PVR',3,1250,NULL,NULL),(1138,'USG KUB+PVR 4D',5,1550,NULL,NULL),(1139,'USG L. ABDOMEN WITH KUB',2,1050,NULL,NULL),(1140,'USG LEG RT/LT',3,1050,NULL,NULL),(1141,'USG LOWER ABDOMEN',5,1050,NULL,NULL),(1142,'USG LOWER ABDOMEN & PELVIC',2,1050,NULL,NULL),(1143,'USG LOWER ABDOMEN 4D',3,1550,NULL,NULL),(1144,'USG LOWER ABDOMEN WITH KUB',5,1050,NULL,NULL),(1145,'USG LT. PAROTID REGION',2,850,NULL,NULL),(1146,'USG MCC + PVR',3,1050,NULL,NULL),(1147,'USG NECK',5,1050,NULL,NULL),(1148,'USG PARATHYROID',2,1050,NULL,NULL),(1149,'USG PARATHYROID 4D',3,1550,NULL,NULL),(1150,'USG PELVIS 4D',5,1550,NULL,NULL),(1151,'USG PELVIS ORGAN',2,1050,NULL,NULL),(1152,'USG PENIS',3,1050,NULL,NULL),(1153,'USG PREG. PROFILE',5,1050,NULL,NULL),(1154,'USG PREG. PROFILE 2D',2,1050,NULL,NULL),(1155,'USG PREG. PROFILE 4D',3,1550,NULL,NULL),(1156,'USG PREGNANCY PROFILE',5,1050,NULL,NULL),(1157,'USG PROSTATE',2,1050,NULL,NULL),(1158,'USG PROSTATE PVR',3,1250,NULL,NULL),(1159,'USG PROSTATE+KUB',5,1250,NULL,NULL),(1160,'USG PROSTATE+KUB 4D',2,1550,NULL,NULL),(1161,'USG ROUTINE OBST',3,1050,NULL,NULL),(1162,'USG RT. PAROTID REGION',5,850,NULL,NULL),(1163,'USG SCROTUM',2,1050,NULL,NULL),(1164,'USG SCROTUM  & PENIS',3,1250,NULL,NULL),(1165,'USG SCROTUM 4D',5,1700,NULL,NULL),(1166,'USG SUPRARENAL',2,1050,NULL,NULL),(1167,'USG SUPRARENAL 4D',3,1550,NULL,NULL),(1168,'USG TESTIES',5,1050,NULL,NULL),(1169,'USG TESTIES 4D',2,1550,NULL,NULL),(1170,'USG THYROID',3,1050,NULL,NULL),(1171,'USG THYROID 4D',5,1800,NULL,NULL),(1172,'USG TRANS KIDNEY',2,1050,NULL,NULL),(1173,'USG TRANS KIDNEY 4D',3,1550,NULL,NULL),(1174,'USG TRANS RECTAL',5,1050,NULL,NULL),(1175,'USG TRANS RECTAL 4D',2,1550,NULL,NULL),(1176,'USG TRANS.KIDNEY',3,1050,NULL,NULL),(1177,'USG TRANSVAGINAL',5,1250,NULL,NULL),(1178,'USG TRANSVAGINAL 4D',2,1550,NULL,NULL),(1179,'USG TVS (PELVIS)',3,1250,NULL,NULL),(1180,'USG TVS (PELVIS) 2D',5,1250,NULL,NULL),(1181,'USG TVS (PELVIS) 4D',2,1550,NULL,NULL),(1182,'USG TVS OF UTERUS & AD',3,1250,NULL,NULL),(1183,'USG UMB.VESSELS',5,1050,NULL,NULL),(1184,'USG UMB.VESSELS 4D',2,1550,NULL,NULL),(1185,'USG UPPER ABDOMEN',3,1050,NULL,NULL),(1186,'USG UPPER ABDOMEN 2D',5,1050,NULL,NULL),(1187,'USG UPPER ABDOMEN 4D',2,1550,NULL,NULL),(1188,'USG UROG.SYST.',3,1050,NULL,NULL),(1189,'USG UROG.SYST. 4D',5,1550,NULL,NULL),(1190,'USG UT AD+PRAGNANCY',2,1050,NULL,NULL),(1191,'USG UTERUS & AD.',3,1050,NULL,NULL),(1192,'USG UTERUS & AD. 4D',5,1550,NULL,NULL),(1193,'USG UTERUS & AD.(TVS)',2,1050,NULL,NULL),(1194,'USG W/A',3,1250,NULL,NULL),(1195,'USG W/A HBS PROSTATE MCC PVR',5,1250,NULL,NULL),(1196,'USG W/A PROSTATE',2,1250,NULL,NULL),(1197,'USG W/A PROSTATE MCC+PVR',3,1250,NULL,NULL),(1198,'USG W/A Ut. & Ad. & TVSXXXXXX',5,1250,NULL,NULL),(1199,'USG W/A+HBS',2,1250,NULL,NULL),(1200,'USG W/A+HBS+KUB',3,1250,NULL,NULL),(1201,'USG W/A+KUB',5,1250,NULL,NULL),(1202,'USG W/A+KUB+PVR',2,1250,NULL,NULL),(1203,'USG W/A+UT AD',3,1250,NULL,NULL),(1204,'USG WHOLE ABDOMEN',5,1250,NULL,NULL),(1205,'USG Whole Abdomen &  MCC + PVR',2,1250,NULL,NULL),(1206,'USG WHOLE ABDOMEN 2D',3,1250,NULL,NULL),(1207,'USG WHOLE ABDOMEN 4D',5,1850,NULL,NULL),(1208,'USG WHOLE ABDOMEN WITH PELVIS',2,1250,NULL,NULL),(1209,'USG WHOLE ABDOMEN WITH PVR',3,1250,NULL,NULL),(1210,'V.SWAB FOR Anaerobic C/S',5,700,NULL,NULL),(1211,'V.SWAB FOR C/S',2,600,NULL,NULL),(1212,'V.SWAB FOR FUNGAL C/S',3,600,NULL,NULL),(1213,'V.SWAB FOR FUNGUS',5,300,NULL,NULL),(1214,'V.SWAB FOR R/E M/E',2,300,NULL,NULL),(1215,'V.SWAB G.C.',3,300,NULL,NULL),(1216,'V.SWAB GM.STAIN (G.C.)',5,300,NULL,NULL),(1217,'V.SWAB R/E',2,300,NULL,NULL),(1218,'VALPROIC ACID',3,1200,NULL,NULL),(1219,'Varilrix 0.5 ml',5,1340,NULL,NULL),(1220,'VDRL',2,400,NULL,NULL),(1221,'VDRL Q+Q',3,800,NULL,NULL),(1222,'VENTILATION SWAB C/S',5,600,NULL,NULL),(1223,'VIDEO ENDOSCOPY',2,1500,NULL,NULL),(1224,'VIDEO ENDOSCOPY UPPER GIT',3,1500,NULL,NULL),(1225,'Vitamin B12',5,2100,NULL,NULL),(1226,'Vitamin D (25-OH )',2,5000,NULL,NULL),(1227,'VITRIOUS FOR FUNGUS',3,300,NULL,NULL),(1228,'VITRIOUS FOR G.STAIN',5,300,NULL,NULL),(1229,'VITRIOUS TAP FOR Anaerobic C/S',2,700,NULL,NULL),(1230,'VITRIOUS TAP FOR C/S',3,600,NULL,NULL),(1231,'W.SWAB GM STAIN',5,300,NULL,NULL),(1232,'Weil Felixxxx',2,500,NULL,NULL),(1233,'WIDAL TEST',3,450,NULL,NULL),(1234,'WOUND SWAB AFB',5,300,NULL,NULL),(1235,'WOUND SWAB AFB C/S',2,600,NULL,NULL),(1236,'WOUND SWAB Anaerobic C/S',3,700,NULL,NULL),(1237,'WOUND SWAB C/S',5,600,NULL,NULL),(1238,'XD CEPHALOMETRY DIGITAL',2,400,NULL,NULL),(1239,'XD DENTAL OPG DIGITAL',3,400,NULL,NULL),(1240,'XD DENTAL PANORAMIC',5,400,NULL,NULL),(1241,'XD OCCLUSAL DIGITAL',2,400,NULL,NULL),(1242,'XD OPG CLOSE MOUTH',3,400,NULL,NULL),(1243,'XD OPG DIGITAL',5,400,NULL,NULL),(1244,'XD OPG OPEN MOUTH',2,400,NULL,NULL),(1245,'XD SINGLE TOOTH',3,150,NULL,NULL),(1246,'XD SINGLE TOOTH 2-FILM',5,250,NULL,NULL),(1247,'XD TM.JT.OPEN&CLS.MOUTH',2,550,NULL,NULL),(1248,'XR ABD.ERRECT POSTURE DIGITAL',3,650,NULL,NULL),(1249,'XR ABD.ERRECT POSTURE DIGITAL (ADULT)',5,650,NULL,NULL),(1250,'XR ABDOMEN P/C DIGITAL',2,650,NULL,NULL),(1251,'XR ABDOMEN PLAIN DIGITAL',3,650,NULL,NULL),(1252,'XR ABDOMEN PLAIN DIGITAL (ADULT)',5,650,NULL,NULL),(1253,'XR ACRIMIO CAVICULAR JOINT (A.C JOINT)',2,450,NULL,NULL),(1254,'XR ANKLE (BOTH) JT B/V DIGITAL',3,900,NULL,NULL),(1255,'XR ANKLE JOINT MORTISE VIEW',5,450,NULL,NULL),(1256,'XR ANKLE JT. B/V RT/LT DIGITALXXXXX',2,450,NULL,NULL),(1257,'XR ANKLE LT JT B/V',3,450,NULL,NULL),(1258,'XR ANKLE RT JT B/V',5,450,NULL,NULL),(1259,'XR ANTEGRADE CYSTOGRAM',2,2000,NULL,NULL),(1260,'XR ARM B/V DIGITAL',3,550,NULL,NULL),(1261,'XR ARM WITH ELBOW JOINT',5,550,NULL,NULL),(1262,'XR ARM WITH SHOULDER JOINT & ELBOW JOINT',2,950,NULL,NULL),(1263,'XR B/ENEMA D/CON',3,1800,NULL,NULL),(1264,'XR B_FOLLOW THRO',5,1800,NULL,NULL),(1265,'XR BA MEAL S/D DIGITAL',2,1400,NULL,NULL),(1266,'XR BA-ENEMA',3,1400,NULL,NULL),(1267,'XR BA-SWALLOW DIGITAL',5,1400,NULL,NULL),(1268,'XR B-MEAL F/THRO.',2,1800,NULL,NULL),(1269,'XR B-MEAL/T-POS.',3,1800,NULL,NULL),(1270,'XR BONE AGE',5,450,NULL,NULL),(1271,'XR BONE AGE DIGITAL',2,450,NULL,NULL),(1272,'XR BOTH ANKLE B/V DIGITAL',3,900,NULL,NULL),(1273,'XR BOTH CALCANIUM B/V',5,900,NULL,NULL),(1274,'XR BOTH ELBOW JT. B/V DIGITAL',2,900,NULL,NULL),(1275,'XR BOTH ELBOW JT. DIGITAL',3,900,NULL,NULL),(1276,'XR BOTH HAND B/V',5,900,NULL,NULL),(1277,'XR BOTH HEEL B/V',2,900,NULL,NULL),(1278,'XR BOTH HIP JT. B/V',3,900,NULL,NULL),(1279,'XR BOTH KNEE JT AP VIEW',5,450,NULL,NULL),(1280,'XR BOTH KNEE JT. B/V DIGITAL',2,900,NULL,NULL),(1281,'XR BOTH SHOULD. B/V DIGITAL',3,1800,NULL,NULL),(1282,'XR BOTH WRIST JT. B/V DIGITAL',5,900,NULL,NULL),(1283,'XR BY BIG FILM DIGITAL',2,900,NULL,NULL),(1284,'XR BY ONE FILM DIGITAL',3,450,NULL,NULL),(1285,'XR BY TWO FILM DIGITAL',5,900,NULL,NULL),(1286,'XR C/SPINE AP DIGITAL',2,450,NULL,NULL),(1287,'XR C/SPINE AP/LAT.B.OBLIQUE DIGITAL',3,1250,NULL,NULL),(1288,'XR C/SPINE B/V DIGITAL',5,800,NULL,NULL),(1289,'XR C/SPINE BOTH OBLIQUE DIGITAL',2,900,NULL,NULL),(1290,'XR C/SPINE LAT. DIGITAL',3,450,NULL,NULL),(1291,'XR C/SPINE OBLIQUE DIGITAL',5,450,NULL,NULL),(1292,'XR CALCANIUM B/V RT/L DIGITAL',2,450,NULL,NULL),(1293,'XR CEPHALOMETRY DIGITAL',3,600,NULL,NULL),(1294,'XR CHEST  P.A DIGITAL',5,450,NULL,NULL),(1295,'XR CHEST AP VIEW DIGITAL',2,450,NULL,NULL),(1296,'XR CHEST APICAL & LATERAL VIEW',3,900,NULL,NULL),(1297,'XR CHEST APICAL DIGITAL',5,450,NULL,NULL),(1298,'XR CHEST B/V DIGITAL',2,900,NULL,NULL),(1299,'XR CHEST DECUBITAS VIEW DIGITAL',3,450,NULL,NULL),(1300,'XR CHEST FOR RIBS DIGITAL',5,450,NULL,NULL),(1301,'XR CHEST LATERAL VIEW',2,450,NULL,NULL),(1302,'XR CHEST LT.L/V DIGITAL',3,450,NULL,NULL),(1303,'XR CHEST OBL.VIEW DIGITAL',5,450,NULL,NULL),(1304,'XR CHEST P/A (100%) DIGITAL',2,550,NULL,NULL),(1305,'XR CHEST P/A VIEW IN ERECT POSTURE',3,450,NULL,NULL),(1306,'XR CHEST RT. LATERAL VIEW',5,450,NULL,NULL),(1307,'XR CHEST RT.L/V DIGITAL',2,450,NULL,NULL),(1308,'XR CHLOANGIOGRAM',3,1800,NULL,NULL),(1309,'XR CLAVIC BONE A/P RT/L DIGITAL',5,450,NULL,NULL),(1310,'XR COCCYX B/V DIGITAL',2,700,NULL,NULL),(1311,'XR COCCYX L/V DIGITAL',3,450,NULL,NULL),(1312,'XR D.L. SPINE AP.LAT&OBLIQUE VIEW',5,1400,NULL,NULL),(1313,'XR D.L.SPINE B/V DIGITAL',2,800,NULL,NULL),(1314,'XR D.SPINE AP.LAT & BOTH OBLIQUE VIEW',3,1400,NULL,NULL),(1315,'XR D.SPINE B/V DIGITAL',5,800,NULL,NULL),(1316,'XR D.SPINE DIGITAL',2,800,NULL,NULL),(1317,'XR D/L SPINE B/V DIGITAL',3,800,NULL,NULL),(1318,'XR D/L SPINE LATERAL',5,450,NULL,NULL),(1319,'XR D/L.SPINE AP/LT. DIGITAL',2,800,NULL,NULL),(1320,'XR DCG CONSULTANCY FEE',3,1800,NULL,NULL),(1321,'XR DORS/THOR.AP DIGITAL',5,450,NULL,NULL),(1322,'XR DORS/THOR.LAT DIGITAL',2,450,NULL,NULL),(1323,'XR DORSAL SPINE AP. VIEW',3,450,NULL,NULL),(1324,'XR DORSAL SPINE B/V DIGITAL',5,800,NULL,NULL),(1325,'XR DORSAL SPINE LAT. VIEW',2,450,NULL,NULL),(1326,'XR ELBOW JT.B/V DIGITAL',3,450,NULL,NULL),(1327,'XR ELBOW LT JT B/V',5,450,NULL,NULL),(1328,'XR ELBOW RT JT B/V',2,450,NULL,NULL),(1329,'XR FEMERTHIGH BV',3,550,NULL,NULL),(1330,'XR FEMUR B/V DIGITAL',5,550,NULL,NULL),(1331,'XR FEMUR LAT/AP DIGITAL',2,550,NULL,NULL),(1332,'XR FEMUR WITH HIP & KNEE JOINT',3,950,NULL,NULL),(1333,'XR FEMUR WITH KNEE JOINT',5,600,NULL,NULL),(1334,'XR FINGER B/V DIGITAL',2,450,NULL,NULL),(1335,'XR FINGER LEFT HAND B/V',3,450,NULL,NULL),(1336,'XR FINGER RIGHT HAND B/V',5,450,NULL,NULL),(1337,'XR FISTOLOGRAM',2,1800,NULL,NULL),(1338,'XR FISTULA DIGITAL',3,1800,NULL,NULL),(1339,'XR FISTULAGRAM DIGITAL',5,1800,NULL,NULL),(1340,'XR FISTULOGRAM CONTRAST',2,310,NULL,NULL),(1341,'XR FOOT BOTH DIGITAL',3,900,NULL,NULL),(1342,'XR FOOT LEFT DIGITAL',5,450,NULL,NULL),(1343,'XR FOOT LT/RT B/V DIGITAL',2,450,NULL,NULL),(1344,'XR FOOT RIGHT B/V',3,450,NULL,NULL),(1345,'XR FOOT WITH ANKLE JOINT (LT.)',5,900,NULL,NULL),(1346,'XR FOOT WITH ANKLE JOINT (RT.)',2,900,NULL,NULL),(1347,'XR FORE ARM A/P RT/LT DIGITAL',3,450,NULL,NULL),(1348,'XR FORE ARM B/V DIGITAL',5,550,NULL,NULL),(1349,'XR FORE ARM LT DIGITAL',2,550,NULL,NULL),(1350,'XR FORE ARM RT DIGITAL',3,550,NULL,NULL),(1351,'XR FOREARM WITH ELBOW JOINT',5,550,NULL,NULL),(1352,'XR FOREARM WITH WRIST & ELBOW JOINT',2,950,NULL,NULL),(1353,'XR FOREARM WITH WRIST JOINT',3,550,NULL,NULL),(1354,'XR FULL MYELOGRAM',5,2200,NULL,NULL),(1355,'XR HAND BOTH',2,900,NULL,NULL),(1356,'XR HAND LT/RT B/V DIGITAL',3,450,NULL,NULL),(1357,'XR HEEL BOTH B/V DIGITAL',5,900,NULL,NULL),(1358,'XR HEEL LT AP LAT. VIEW',2,450,NULL,NULL),(1359,'XR HEEL LT/RT B/V DIGITAL',3,450,NULL,NULL),(1360,'XR HEEL RT BOTH VIEW',5,450,NULL,NULL),(1361,'XR HIP JT AP/LAT DIGITAL',2,900,NULL,NULL),(1362,'XR HIP JT B/V LT/RT DIGITAL',3,900,NULL,NULL),(1363,'XR HIP LT L/V',5,450,NULL,NULL),(1364,'XR HIP RT B/V',2,900,NULL,NULL),(1365,'XR HIP RT L/V',3,450,NULL,NULL),(1366,'XR HIR JOINT WITH FEMUR',5,600,NULL,NULL),(1367,'XR HUMERUS DIGITAL100%',2,600,NULL,NULL),(1368,'XR HUMERUS LT/RT DIGITAL',3,600,NULL,NULL),(1369,'XR HYSTARO-CONTRAST',5,790,NULL,NULL),(1370,'XR HYSTAROSULPHINGOGRAM',2,1800,NULL,NULL),(1371,'XR INT.AUD.MEATUS LT',3,450,NULL,NULL),(1372,'XR INT.AUD.MEATUS LT DIGITAL',5,450,NULL,NULL),(1373,'XR IVP',2,2400,NULL,NULL),(1374,'XR IVP+MCU',3,2800,NULL,NULL),(1375,'XR IVU',5,2400,NULL,NULL),(1376,'XR KNEE E LEG DIGITAL',2,700,NULL,NULL),(1377,'XR KNEE JT. LEFT DIGITAL',3,450,NULL,NULL),(1378,'XR KNEE JT. RIGHT DIGITAL',5,450,NULL,NULL),(1379,'XR KNEE JT. SKYLINE B/V',2,950,NULL,NULL),(1380,'XR KNEE JT. SKYLINE VIEW DIGITAL',3,450,NULL,NULL),(1381,'XR KNEE JT. TUNNEL B/V DIGITAL',5,600,NULL,NULL),(1382,'XR KUB B/V',2,1100,NULL,NULL),(1383,'XR KUB BOTH VIEW DIGITAL',3,1100,NULL,NULL),(1384,'XR KUB DIGITAL',5,600,NULL,NULL),(1385,'XR KUB DIGITAL (100%)',2,600,NULL,NULL),(1386,'XR L.S. SPINE AP & LATERAL',3,800,NULL,NULL),(1387,'XR L/S SPINE AP DIGITAL',5,450,NULL,NULL),(1388,'XR L/S SPINE B/V DIGITAL',2,800,NULL,NULL),(1389,'XR L/S SPINE L/V DIGITAL',3,450,NULL,NULL),(1390,'XR L/S SPINE LAT DIGITAL',5,450,NULL,NULL),(1391,'XR L/S SPINE O/V DIGITAL',2,800,NULL,NULL),(1392,'XR L/SPINE AP/LAT.B.OBLIQUE Digital',3,1400,NULL,NULL),(1393,'XR LEG BOTH DIGITAL',5,950,NULL,NULL),(1394,'XR LEG LEFT B/V DIGITAL',2,550,NULL,NULL),(1395,'XR LEG LEFT DIGITAL',3,550,NULL,NULL),(1396,'XR LEG RIGHT B/V',5,550,NULL,NULL),(1397,'XR LEG RIGHT B/V  DIGITAL',2,550,NULL,NULL),(1398,'XR LEG RT B/V',3,550,NULL,NULL),(1399,'XR LEG RT/LT B/V DIGITAL',5,550,NULL,NULL),(1400,'XR LEG WITH ANKLE',2,550,NULL,NULL),(1401,'XR LEG WITH KNEE & ANKLE',3,950,NULL,NULL),(1402,'XR LOOPGRAM',5,1800,NULL,NULL),(1403,'XR LORDOTIC VIEW',2,450,NULL,NULL),(1404,'XR LT  ARM B/V DIGITAL',3,550,NULL,NULL),(1405,'XR LT ELBOW B/V DIGITAL',5,450,NULL,NULL),(1406,'XR LT ELBOW JT B/V DIGITAL',2,450,NULL,NULL),(1407,'XR LT FOOT B/V DIGITAL',3,450,NULL,NULL),(1408,'XR LT FOREARM BV DIGITAL',5,600,NULL,NULL),(1409,'XR LT HAND B/V DIGITAL',2,450,NULL,NULL),(1410,'XR LT HIP JT B/V DIGITAL',3,900,NULL,NULL),(1411,'XR LT HUMERAS B/V',5,600,NULL,NULL),(1412,'XR LT TIBIA B/V DIGITAL',2,600,NULL,NULL),(1413,'XR LT. KNEE JT. B/V',3,450,NULL,NULL),(1414,'XR LT.LEG/FT.B/V DIGITAL',5,550,NULL,NULL),(1415,'XR LUMBER SPINE B/V DIGITAL',2,800,NULL,NULL),(1416,'XR MAMMO-BOTH BREAST',3,1800,NULL,NULL),(1417,'XR MAMMO-LEFT BREAST',5,900,NULL,NULL),(1418,'XR MAMMO-RIGHT BREAST',2,900,NULL,NULL),(1419,'XR MANDIBLE A/P VIEW DIGITAL',3,450,NULL,NULL),(1420,'XR MASTOID T/V DIGITAL',5,450,NULL,NULL),(1421,'XR MASTOID TOWNS VIEW DIGITAL',2,450,NULL,NULL),(1422,'XR MAXILA DIGITAL',3,450,NULL,NULL),(1423,'XR MCU',5,1800,NULL,NULL),(1424,'XR MENDIBLE B/V DIGITAL',2,450,NULL,NULL),(1425,'XR MYELOGRAM(LUMB)',3,1500,NULL,NULL),(1426,'XR NASAL BONE DIGITAL',5,450,NULL,NULL),(1427,'XR NASOPHARYNX DIGITAL',2,450,NULL,NULL),(1428,'XR NECK B/V DIGITAL',3,800,NULL,NULL),(1429,'XR NECK L/V DIGITAL',5,450,NULL,NULL),(1430,'XR NECK LAT/AP DIGITAL',2,450,NULL,NULL),(1431,'XR NEPHROLTOMOGRAM',3,1600,NULL,NULL),(1432,'XR OCCLUSAL DIGITAL',5,450,NULL,NULL),(1433,'XR OCG',2,2200,NULL,NULL),(1434,'XR OESOPHAGIAL FISTULA',3,1800,NULL,NULL),(1435,'XR OPTIC FORAME RT./LT. DIGITAL',5,450,NULL,NULL),(1436,'XR ORBIT A/P VIEW DIGITAL',2,450,NULL,NULL),(1437,'XR ORBIT B/V DIGITAL',3,900,NULL,NULL),(1438,'XR PELVIS AP DIGITAL',5,450,NULL,NULL),(1439,'XR PELVIS B/V DIGITAL',2,900,NULL,NULL),(1440,'XR PELVIS E HIP A/P VIEW DIGITAL',3,450,NULL,NULL),(1441,'XR PERICATHETER  URETHROGRAM',5,550,NULL,NULL),(1442,'XR PETTELA B/V RT/LT DIGITAL',2,450,NULL,NULL),(1443,'XR PNS B/V - 2 FILM',3,900,NULL,NULL),(1444,'XR PNS B/V DIGITAL',5,900,NULL,NULL),(1445,'XR PNS OM VIEW DIGITAL',2,450,NULL,NULL),(1446,'XR PORTABLE',3,900,NULL,NULL),(1447,'XR RET.URETHROGRAM',5,1800,NULL,NULL),(1448,'XR RGU & MCU DIGITAL',2,1800,NULL,NULL),(1449,'XR RT  ARM B/V',3,550,NULL,NULL),(1450,'XR RT ELBOW B/V',5,450,NULL,NULL),(1451,'XR RT ELBOW JT B/V',2,450,NULL,NULL),(1452,'XR RT FOOT B/V',3,450,NULL,NULL),(1453,'XR RT FOOT B/V DIGITAL',5,450,NULL,NULL),(1454,'XR RT FOREARM BV',2,550,NULL,NULL),(1455,'XR RT HAND B/V',3,450,NULL,NULL),(1456,'XR RT HEAD OF THE FEAMURE',5,450,NULL,NULL),(1457,'XR RT HIP JT B/V',2,900,NULL,NULL),(1458,'XR RT TIBIA B/V DIGITAL',3,550,NULL,NULL),(1459,'XR RT. KNEE JT. B/V',5,450,NULL,NULL),(1460,'XR RT.LEG-B/V DIGITAL',2,550,NULL,NULL),(1461,'XR RT/ LT HIP JT B/V',3,900,NULL,NULL),(1462,'XR SACRO ILIAC JOINT',5,550,NULL,NULL),(1463,'XR SCAPHOID BONE',2,450,NULL,NULL),(1464,'XR SCAPHOID BONE DIGITAL',3,450,NULL,NULL),(1465,'XR SCAPULA A/P RT/LT DIGITAL',5,450,NULL,NULL),(1466,'XR SCAPULA B/V RT/LT DIGITAL',2,900,NULL,NULL),(1467,'XR SCOLIOGRAM',3,900,NULL,NULL),(1468,'XR SHOULD LT JT B/V',5,900,NULL,NULL),(1469,'XR SHOULD RT JT B/V',2,900,NULL,NULL),(1470,'XR SHOULD.AP DIGITAL',3,450,NULL,NULL),(1471,'XR SHOULD.B/V RT/LT DIGITAL',5,900,NULL,NULL),(1472,'XR SHOULD.B/V/RT DIGITAL',2,900,NULL,NULL),(1473,'XR SHOULD.JT.OBLIQUE DIGITAL',3,450,NULL,NULL),(1474,'XR SHOULDER JOINT WITH ARM',5,550,NULL,NULL),(1475,'XR SHOULDER LEFT JT AP',2,450,NULL,NULL),(1476,'XR SHOULDER RIGHT JT AP',3,450,NULL,NULL),(1477,'XR SI.JOINT B/V DIGITAL',5,550,NULL,NULL),(1478,'XR SI.JOINT B/V OBLIQUE VIEW',2,450,NULL,NULL),(1479,'XR SIALOGRAM DIGITAL',3,1350,NULL,NULL),(1480,'XR SINO CONTRAST',5,310,NULL,NULL),(1481,'XR SINOGRAM DIGITAL',2,1350,NULL,NULL),(1482,'XR SKULL',3,450,NULL,NULL),(1483,'XR SKULL B/V DIGITAL',5,900,NULL,NULL),(1484,'XR SKULL L/V DIGITAL',2,450,NULL,NULL),(1485,'XR SKULL T/V DIGITAL',3,450,NULL,NULL),(1486,'XR SMV OF SKULL DIGITAL',5,450,NULL,NULL),(1487,'XR SOFT COPY',2,150,NULL,NULL),(1488,'XR SOFT TISSUE NASOPHARYNX L/V',3,450,NULL,NULL),(1489,'XR SPINE OB/V DIGITAL',5,450,NULL,NULL),(1490,'XR STARNAM L/V',2,450,NULL,NULL),(1491,'XR STERNO CAVICULAR JOINT (S.C JOINT)',3,900,NULL,NULL),(1492,'XR STRANUM B/V DIGITAL',5,900,NULL,NULL),(1493,'XR STYLIDE PROCESS (AXCIAL VIEW)',2,450,NULL,NULL),(1494,'XR TH.L.SPINE B/V DIGITAL',3,800,NULL,NULL),(1495,'XR TH.SPINE B/V DIGITAL',5,800,NULL,NULL),(1496,'XR THIGH/FEMURE B/V DIGITAL',2,900,NULL,NULL),(1497,'XR TIBIA FIBULA RT/LT DIGITAL',3,550,NULL,NULL),(1498,'XR TOE B/V RT/LT DIGITAL',5,450,NULL,NULL),(1499,'XR T-TUBE CHOLANGIOGRAM',2,1600,NULL,NULL),(1500,'XR VENOGRAM',3,1600,NULL,NULL),(1501,'XR WRIST JT RIGHT  B/V',5,450,NULL,NULL),(1502,'XR WRIST JT RT/LT B/V',2,450,NULL,NULL),(1503,'zUrine 24hrs Pot',3,35,NULL,NULL),(1504,'zUrine Container',5,30,NULL,NULL),(1505,'zUrine Container (2)',2,60,NULL,NULL),(1506,'zVacutainer Blue-Cit',3,18,NULL,NULL),(1507,'zVacutainer Esr',5,34,NULL,NULL),(1508,'zVacutainer Gray-Fl',2,18,NULL,NULL),(1509,'zVacutainer Gray-Fl.',3,18,NULL,NULL),(1510,'zVacutainer Green-Li',5,18,NULL,NULL),(1511,'zVacutainer Green-Na',2,18,NULL,NULL),(1512,'zVacutainer Lavender',3,18,NULL,NULL),(1513,'zVacutainer Needle',5,18,NULL,NULL),(1514,'zVacutainer Red 4ml-se',2,18,NULL,NULL),(1515,'zVacutainer Red 6ml',3,18,NULL,NULL),(1517,'Test1',4,500,'TE-1',NULL);

/*Table structure for table `urine_test` */

DROP TABLE IF EXISTS `urine_test`;

CREATE TABLE `urine_test` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `micAmor` double DEFAULT NULL,
  `micCast` double DEFAULT NULL,
  `micCrys` double DEFAULT NULL,
  `micEpc` double DEFAULT NULL,
  `micOther` double DEFAULT NULL,
  `micRbc` double DEFAULT NULL,
  `micSper` double DEFAULT NULL,
  `micWbc` double DEFAULT NULL,
  `regNum` varchar(255) DEFAULT NULL,
  `roAlbu` double DEFAULT NULL,
  `roAppear` double DEFAULT NULL,
  `roReact` double DEFAULT NULL,
  `roSpg` double DEFAULT NULL,
  `roSug` double DEFAULT NULL,
  `testDate` date DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKD2CA4F4E544304A8` (`patient_id`),
  CONSTRAINT `FKD2CA4F4E544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `urine_test` */

insert  into `urine_test`(`id`,`micAmor`,`micCast`,`micCrys`,`micEpc`,`micOther`,`micRbc`,`micSper`,`micWbc`,`regNum`,`roAlbu`,`roAppear`,`roReact`,`roSpg`,`roSug`,`testDate`,`patient_id`) values (1,55,44,44,66,55,66,55,44,'D 44',55,11,22,11,55,'2014-11-07',6),(2,55,44,44,66,55,66,55,44,'D 45',55,11,22,11,55,'2014-11-07',10),(3,55,44,44,66,55,66,55,44,'D 01',55,11,22,11,55,'2014-11-07',29),(4,554,444,445,665,552,664,555,444,'D 02',5522,22,22,22,552,'2014-11-07',22),(5,554,444,445,665,552,664,555,444,'D 02',5522,22,22,22,552,'2014-11-07',22),(6,554,444,445,665,552,664,555,444,'D 02',5522,22,22,22,552,'2014-11-07',22),(7,554,444,445,665,552,664,555,444,'D 44',5522,22,22,22,552,'2014-11-07',6);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `USER_TYPE` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`password`,`USER_TYPE`,`username`) values (1,'123','admin','c'),(2,'123','asadmin','a'),(3,'123','user','b');

/*Table structure for table `user_create` */

DROP TABLE IF EXISTS `user_create`;

CREATE TABLE `user_create` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `selectUser` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `user_create` */

insert  into `user_create`(`id`,`password`,`selectUser`,`userName`) values (1,'','',''),(2,'admin','admin ','admin'),(3,'123','user','user');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
