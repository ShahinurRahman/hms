/*
SQLyog Job Agent v11.11 (64 bit) Copyright(c) Webyog Inc. All Rights Reserved.


MySQL - 5.5.8 : Database - hms_db
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

/*Table structure for table `biochemistry` */

DROP TABLE IF EXISTS `biochemistry`;

CREATE TABLE `biochemistry` (
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
  KEY `FKA28A049C544304A8` (`patient_id`),
  CONSTRAINT `FKA28A049C544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `biochemistry` */

insert  into `biochemistry` values (1,99,99,99,99,99,99,99,99,99,'2015-01-03',99,99,76),(2,44,77,66,446,66,55,23,33,67,'2015-02-09',56,45,79),(3,88,88,88,88,88,88,88,88,88,'2015-12-01',88,88,76),(4,88,88,88,88,88,88,88,88,88,'2015-02-09',88,88,79),(5,99,99,99,99,99,99,99,99,99,'2015-02-09',99,99,79),(6,99,99,99,99,99,99,99,99,99,'2015-02-10',99,99,80);

/*Table structure for table `blood` */

DROP TABLE IF EXISTS `blood`;

CREATE TABLE `blood` (
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
  `patient_id` bigint(20) DEFAULT NULL,
  `patientName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3C5CDDA544304A8` (`patient_id`),
  CONSTRAINT `FK3C5CDDA544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `blood` */

insert  into `blood` values (1,99,99,99,99,99,99,99,99,'2015-01-03',74,NULL),(2,99,99,99,99,99,99,99,99,'2015-01-03',76,NULL),(3,77,77,77,77,77,77,77,77,'2015-12-01',76,'Mahfuz Mamun');

/*Table structure for table `clinical_pathology` */

DROP TABLE IF EXISTS `clinical_pathology`;

CREATE TABLE `clinical_pathology` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cp1` double DEFAULT NULL,
  `cp2` double DEFAULT NULL,
  `cp3` double DEFAULT NULL,
  `cp4` double DEFAULT NULL,
  `cp5` double DEFAULT NULL,
  `testDate` date DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4C4D6753544304A8` (`patient_id`),
  CONSTRAINT `FK4C4D6753544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `clinical_pathology` */

insert  into `clinical_pathology` values (1,99,99,99,99,99,'2015-01-03',76);

/*Table structure for table `colonscopy` */

DROP TABLE IF EXISTS `colonscopy`;

CREATE TABLE `colonscopy` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `colons1` double DEFAULT NULL,
  `colons2` double DEFAULT NULL,
  `colons3` double DEFAULT NULL,
  `colons4` double DEFAULT NULL,
  `colons5` double DEFAULT NULL,
  `testDate` date DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6407BE69544304A8` (`patient_id`),
  CONSTRAINT `FK6407BE69544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `colonscopy` */

insert  into `colonscopy` values (1,99,99,99,99,99,'2015-01-03',76),(2,99,99,99,99,99,'2015-01-03',76);

/*Table structure for table `color_doppler` */

DROP TABLE IF EXISTS `color_doppler`;

CREATE TABLE `color_doppler` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cd1` double DEFAULT NULL,
  `cd2` double DEFAULT NULL,
  `cd3` double DEFAULT NULL,
  `cd4` double DEFAULT NULL,
  `cd5` double DEFAULT NULL,
  `testDate` date DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5AA5D52544304A8` (`patient_id`),
  CONSTRAINT `FK5AA5D52544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `color_doppler` */

insert  into `color_doppler` values (1,99,99,99,99,99,'2015-01-03',76);

/*Table structure for table `ct_scan` */

DROP TABLE IF EXISTS `ct_scan`;

CREATE TABLE `ct_scan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ctScan1` double DEFAULT NULL,
  `ctScan2` double DEFAULT NULL,
  `ctScan3` double DEFAULT NULL,
  `ctScan4` double DEFAULT NULL,
  `ctScan5` double DEFAULT NULL,
  `testDate` date DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6CFA0D8B544304A8` (`patient_id`),
  CONSTRAINT `FK6CFA0D8B544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `ct_scan` */

insert  into `ct_scan` values (1,99,99,99,99,99,'2015-01-03',76);

/*Table structure for table `dental_xray` */

DROP TABLE IF EXISTS `dental_xray`;

CREATE TABLE `dental_xray` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dentalXray1` double DEFAULT NULL,
  `dentalXray2` double DEFAULT NULL,
  `dentalXray3` double DEFAULT NULL,
  `dentalXray4` double DEFAULT NULL,
  `dentalXray5` double DEFAULT NULL,
  `testDate` date DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9CD0D45F544304A8` (`patient_id`),
  CONSTRAINT `FK9CD0D45F544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `dental_xray` */

insert  into `dental_xray` values (1,99,99,99,99,99,'2015-01-03',76);

/*Table structure for table `diabeties` */

DROP TABLE IF EXISTS `diabeties`;

CREATE TABLE `diabeties` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `diabeties1` varchar(255) DEFAULT NULL,
  `diabeties2` varchar(255) DEFAULT NULL,
  `diabeties3` varchar(255) DEFAULT NULL,
  `diabeties4` varchar(255) DEFAULT NULL,
  `diabeties5` varchar(255) DEFAULT NULL,
  `testDate` date DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKE46BCC02544304A8` (`patient_id`),
  CONSTRAINT `FKE46BCC02544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `diabeties` */

insert  into `diabeties` values (1,'99','99','99','99','99','2015-01-03',76);

/*Table structure for table `discount_by` */

DROP TABLE IF EXISTS `discount_by`;

CREATE TABLE `discount_by` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contact` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `discountNote` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `discount_by` */

insert  into `discount_by` values (1,'01944002900','Permanent','Personal','Shahinur Rahman'),(2,'01717659287','Permanent','Personal','MA Khominee');

/*Table structure for table `discount_patient` */

DROP TABLE IF EXISTS `discount_patient`;

CREATE TABLE `discount_patient` (
  `DOCTOR_ID` bigint(20) NOT NULL,
  `PATIENT_ID` bigint(20) NOT NULL,
  UNIQUE KEY `PATIENT_ID` (`PATIENT_ID`),
  KEY `FK9E48B1E7544304A8` (`PATIENT_ID`),
  KEY `FK9E48B1E7C4FA99E5` (`DOCTOR_ID`),
  CONSTRAINT `FK9E48B1E7544304A8` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`id`),
  CONSTRAINT `FK9E48B1E7C4FA99E5` FOREIGN KEY (`DOCTOR_ID`) REFERENCES `discount_by` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `discount_patient` */

/*Table structure for table `doctor` */

DROP TABLE IF EXISTS `doctor`;

CREATE TABLE `doctor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `doctor` */

insert  into `doctor` values (1,'Dr. Nusaiba Shahin','01944002900','MBBS, FCPS, PGD, MD(USA)','Dhaka Medical College'),(2,'MA Khominee','01717659287','MBBS, FCPS(PG)','Jessore Jedical College'),(3,'Dr. Mamun Hossain','01928707889','MBBS','IBN SIna Medical College');

/*Table structure for table `doctor_patient` */

DROP TABLE IF EXISTS `doctor_patient`;

CREATE TABLE `doctor_patient` (
  `DOCTOR_ID` bigint(20) NOT NULL,
  `PATIENT_ID` bigint(20) NOT NULL,
  UNIQUE KEY `PATIENT_ID` (`PATIENT_ID`),
  KEY `FKE0A613C5544304A8` (`PATIENT_ID`),
  KEY `FKE0A613C5EFCDE28C` (`DOCTOR_ID`),
  CONSTRAINT `FKE0A613C5544304A8` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`id`),
  CONSTRAINT `FKE0A613C5EFCDE28C` FOREIGN KEY (`DOCTOR_ID`) REFERENCES `doctor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doctor_patient` */

insert  into `doctor_patient` values (1,73),(1,74),(1,75);

/*Table structure for table `duplex_study` */

DROP TABLE IF EXISTS `duplex_study`;

CREATE TABLE `duplex_study` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `duplexStudy1` double DEFAULT NULL,
  `duplexStudy2` double DEFAULT NULL,
  `duplexStudy3` double DEFAULT NULL,
  `duplexStudy4` double DEFAULT NULL,
  `duplexStudy5` double DEFAULT NULL,
  `testDate` date DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKAC0E846A544304A8` (`patient_id`),
  CONSTRAINT `FKAC0E846A544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `duplex_study` */

insert  into `duplex_study` values (1,99,99,99,99,99,'2015-01-03',76);

/*Table structure for table `ecg` */

DROP TABLE IF EXISTS `ecg`;

CREATE TABLE `ecg` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ecg1` double DEFAULT NULL,
  `ecg2` double DEFAULT NULL,
  `ecg3` double DEFAULT NULL,
  `ecg4` double DEFAULT NULL,
  `ecg5` double DEFAULT NULL,
  `testDate` date DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK10B69544304A8` (`patient_id`),
  CONSTRAINT `FK10B69544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `ecg` */

insert  into `ecg` values (1,99,99,99,99,99,'2015-01-03',76);

/*Table structure for table `echocardiogram` */

DROP TABLE IF EXISTS `echocardiogram`;

CREATE TABLE `echocardiogram` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `echocardiogram1` double DEFAULT NULL,
  `echocardiogram2` double DEFAULT NULL,
  `echocardiogram3` double DEFAULT NULL,
  `echocardiogram4` double DEFAULT NULL,
  `echocardiogram5` double DEFAULT NULL,
  `testDate` date DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKD2892772544304A8` (`patient_id`),
  CONSTRAINT `FKD2892772544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `echocardiogram` */

insert  into `echocardiogram` values (1,99,99,99,99,99,'2015-01-03',74),(2,99,99,99,99,99,'2015-01-03',76);

/*Table structure for table `eeg` */

DROP TABLE IF EXISTS `eeg`;

CREATE TABLE `eeg` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `eeg1` double DEFAULT NULL,
  `eeg2` double DEFAULT NULL,
  `eeg3` double DEFAULT NULL,
  `eeg4` double DEFAULT NULL,
  `eeg5` double DEFAULT NULL,
  `testDate` date DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK10BA7544304A8` (`patient_id`),
  CONSTRAINT `FK10BA7544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `eeg` */

insert  into `eeg` values (1,99,99,99,99,99,'2015-01-03',76);

/*Table structure for table `endoscopy` */

DROP TABLE IF EXISTS `endoscopy`;

CREATE TABLE `endoscopy` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `endoscopy1` double DEFAULT NULL,
  `endoscopy2` double DEFAULT NULL,
  `endoscopy3` double DEFAULT NULL,
  `endoscopy4` double DEFAULT NULL,
  `endoscopy5` double DEFAULT NULL,
  `testDate` date DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK35B573D4544304A8` (`patient_id`),
  CONSTRAINT `FK35B573D4544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `endoscopy` */

insert  into `endoscopy` values (1,99,99,99,99,99,'2015-01-03',76);

/*Table structure for table `ett` */

DROP TABLE IF EXISTS `ett`;

CREATE TABLE `ett` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ett1` double DEFAULT NULL,
  `ett2` double DEFAULT NULL,
  `ett3` double DEFAULT NULL,
  `ett4` double DEFAULT NULL,
  `ett5` double DEFAULT NULL,
  `testDate` date DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK10D85544304A8` (`patient_id`),
  CONSTRAINT `FK10D85544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `ett` */

insert  into `ett` values (1,99,99,99,99,99,'2015-01-03',76);

/*Table structure for table `gastroscopy` */

DROP TABLE IF EXISTS `gastroscopy`;

CREATE TABLE `gastroscopy` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gastro1` double DEFAULT NULL,
  `gastro2` double DEFAULT NULL,
  `gastro3` double DEFAULT NULL,
  `gastro4` double DEFAULT NULL,
  `gastro5` double DEFAULT NULL,
  `testDate` date DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKF7651D10544304A8` (`patient_id`),
  CONSTRAINT `FKF7651D10544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `gastroscopy` */

insert  into `gastroscopy` values (1,99,99,99,99,99,'2015-01-03',74),(2,99,99,99,99,99,'2015-01-03',76);

/*Table structure for table `haematology` */

DROP TABLE IF EXISTS `haematology`;

CREATE TABLE `haematology` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `haematology1` double DEFAULT NULL,
  `haematology2` double DEFAULT NULL,
  `haematology3` double DEFAULT NULL,
  `haematology4` double DEFAULT NULL,
  `haematology5` double DEFAULT NULL,
  `testDate` date DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1E6D87B0544304A8` (`patient_id`),
  CONSTRAINT `FK1E6D87B0544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `haematology` */

insert  into `haematology` values (1,99,99,99,99,99,'2015-01-03',76);

/*Table structure for table `histopathology` */

DROP TABLE IF EXISTS `histopathology`;

CREATE TABLE `histopathology` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `histopathology1` double DEFAULT NULL,
  `histopathology2` double DEFAULT NULL,
  `histopathology3` double DEFAULT NULL,
  `histopathology4` double DEFAULT NULL,
  `histopathology5` double DEFAULT NULL,
  `testDate` date DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKD67F2EB2544304A8` (`patient_id`),
  CONSTRAINT `FKD67F2EB2544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `histopathology` */

insert  into `histopathology` values (1,99,99,99,99,99,'2015-01-03',76),(2,99,99,99,99,99,'2015-01-03',76);

/*Table structure for table `hms_department` */

DROP TABLE IF EXISTS `hms_department`;

CREATE TABLE `hms_department` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

/*Data for the table `hms_department` */

insert  into `hms_department` values (1,'BIOCHEMISTRY','01944002900'),(2,'BLOOD','01944002900'),(3,'CLINICAL PATHOLOGY','01944002900'),(4,'CLONOSCOPY','01944002900'),(5,'COLOR DOPPLER','01944002900'),(6,'DIABETICS','01944002900'),(7,'CT SCAN','01944002900'),(8,'DENTAL XRAY','01944002900'),(9,'DUPLEX STUDY','01944002900'),(10,'ECG','01944002900'),(11,'ECHOCARDIOGRAM','01944002900'),(12,'EEG','01944002900'),(13,'ENDOSCOPY','01944002900'),(14,'ETT','01944002900'),(15,'GASTROSCOPY','01944002900'),(16,'HAEMATOLOGY','01944002900'),(17,'HISTOPATHOLOGY','01944002900'),(18,'IMMUNOLOGY','01944002900'),(19,'MICROBIOLOGY','01944002900'),(20,'MRI','01944002900'),(21,'PCR LAB','01944002900'),(22,'SONOGRAPHY','01944002900'),(23,'STOOL','01944002900'),(24,'URINE','01944002900'),(25,'USG','01944002900'),(26,'XRAY','01944002900');

/*Table structure for table `hms_jt_departmnet_test` */

DROP TABLE IF EXISTS `hms_jt_departmnet_test`;

CREATE TABLE `hms_jt_departmnet_test` (
  `DPT_ID` bigint(20) NOT NULL,
  `TEST_ID` bigint(20) NOT NULL,
  UNIQUE KEY `TEST_ID` (`TEST_ID`),
  KEY `FK35C9AEE951E366D6` (`DPT_ID`),
  KEY `FK35C9AEE9FBA30C76` (`TEST_ID`),
  CONSTRAINT `FK35C9AEE951E366D6` FOREIGN KEY (`DPT_ID`) REFERENCES `hms_department` (`id`),
  CONSTRAINT `FK35C9AEE9FBA30C76` FOREIGN KEY (`TEST_ID`) REFERENCES `test` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hms_jt_departmnet_test` */

insert  into `hms_jt_departmnet_test` values (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26);

/*Table structure for table `immunology` */

DROP TABLE IF EXISTS `immunology`;

CREATE TABLE `immunology` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `immunology1` double DEFAULT NULL,
  `immunology2` double DEFAULT NULL,
  `immunology3` double DEFAULT NULL,
  `immunology4` double DEFAULT NULL,
  `immunology5` double DEFAULT NULL,
  `testDate` date DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9A49CFC2544304A8` (`patient_id`),
  CONSTRAINT `FK9A49CFC2544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `immunology` */

insert  into `immunology` values (1,99,99,99,99,99,'2015-01-03',76);

/*Table structure for table `ledger_ac` */

DROP TABLE IF EXISTS `ledger_ac`;

CREATE TABLE `ledger_ac` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `receipt` varchar(255) DEFAULT NULL,
  `operator_id` bigint(20) DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8E44E6B8372C6013` (`operator_id`),
  KEY `FK8E44E6B8544304A8` (`patient_id`),
  CONSTRAINT `FK8E44E6B8372C6013` FOREIGN KEY (`operator_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK8E44E6B8544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `ledger_ac` */

insert  into `ledger_ac` values (1,444,'2015-02-05','0001',1,76),(2,555,'2016-01-01','0002',1,76),(3,1000,'2015-12-01','0003',1,76),(5,10,'2015-02-07','0004',1,75),(6,666,'2015-02-07','0006',1,75),(7,99,'2015-02-08','0007',NULL,77),(8,1100,'2015-02-09',NULL,NULL,79),(9,666,'2015-02-10',NULL,NULL,80),(10,55,'2015-02-11','0010',NULL,80),(11,100,'2015-02-12','0011',NULL,79),(12,100,'2015-02-12','0012',NULL,79),(13,150,'2015-02-13','0013',NULL,81),(14,200,'2015-02-13','0014',NULL,81);

/*Table structure for table `microbiology` */

DROP TABLE IF EXISTS `microbiology`;

CREATE TABLE `microbiology` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `microbiology1` double DEFAULT NULL,
  `microbiology2` double DEFAULT NULL,
  `microbiology3` double DEFAULT NULL,
  `microbiology4` double DEFAULT NULL,
  `microbiology5` double DEFAULT NULL,
  `testDate` date DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK65B0C379544304A8` (`patient_id`),
  CONSTRAINT `FK65B0C379544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `microbiology` */

insert  into `microbiology` values (1,99,99,99,99,99,'2015-01-03',76);

/*Table structure for table `mri` */

DROP TABLE IF EXISTS `mri`;

CREATE TABLE `mri` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mri1` double DEFAULT NULL,
  `mri2` double DEFAULT NULL,
  `mri3` double DEFAULT NULL,
  `mri4` double DEFAULT NULL,
  `mri5` double DEFAULT NULL,
  `testDate` date DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK12B44544304A8` (`patient_id`),
  CONSTRAINT `FK12B44544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `mri` */

insert  into `mri` values (1,99,99,99,99,99,'2015-01-03',76);

/*Table structure for table `patient` */

DROP TABLE IF EXISTS `patient`;

CREATE TABLE `patient` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `age` varchar(255) DEFAULT NULL,
  `meritalStatus` varchar(255) DEFAULT NULL,
  `patientName` varchar(255) DEFAULT NULL,
  `regDate` date DEFAULT NULL,
  `regNo` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `discountNote` varchar(255) DEFAULT NULL,
  `due` varchar(255) DEFAULT NULL,
  `paid` varchar(255) DEFAULT NULL,
  `testIds` varchar(255) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `discountBy` varchar(255) DEFAULT NULL,
  `fatherName` varchar(255) DEFAULT NULL,
  `referenceBy` varchar(255) DEFAULT NULL,
  `regNum` varchar(255) DEFAULT NULL,
  `total` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;

/*Data for the table `patient` */

insert  into `patient` values (73,'28','Married','Md. Shahinur Rahman','2015-01-03','BU-73','Male	','Personal','4650.0','2000.0','1,2,3,4,5,6,7,8,10',1537.5,'01944002900','Dr. Fouzia','ABC','Dr. Khominee',NULL,4650),(74,'2','Single','Nusaiba Shahin','2015-12-01','BU-74','Female','Personal Family','4650.0','1500.0','2,23,24,21,26,14,12',1537.5,'01944002900','Dr. Fouzia','ABC','Dr. Alfaz',NULL,4650),(75,'24','Married','Fouzia Shahin','2015-12-01','BU-75','Female','Personal Family','3974.0','2676.0','6,12,15,23,21,19',1550,'01944002900','Dr. Fouzia','ABC','Dr. Mamun',NULL,4650),(76,'32','Married','Mahfuz Mamun','2015-12-01','BU-76','Male	','Personal Family','22826.0','16999.0','1,2,3,4,4,5,6,7,8,9,10,11,12',8275,'01944002900','Dr. Fouzia','ABC','Dr. Nusaiba',NULL,4650),(77,'30','Single','Mamun Hossain','2015-01-03','BU-77','Male	','Personal','1363.5','449.0','1,2',487.5,'01944002900','Dr. Fouzia','ABC','Dr. Fouzia',NULL,4650),(78,'2','Single','Nusaiba Shahin','2015-01-03','BU-78','Female','Family','6225.0','2500.0','3,5,7,20',2075,'01944002900','Dr. Fouzia','Shahinur Rahman','Dr. Shahin',NULL,4650),(79,'27','Single','alfaz hossen','2015-02-09','BU-79','Male	','amar sonar bangla ami tomai valobashi','962.5','1300.0','1,4,6',387.5,'01944002900','10','Tozammel','Mahfuz mamun',NULL,1550),(80,'22','Single','Md Joshim','2015-02-10','BU-80','Male	','Dr. Shahabuddin','957.5','721.0','1,2',337.5,'01944002900','aaa','ABC','aa',NULL,1350),(81,'','Single','abc','2015-02-11','BU-81','Male	','','550.0','350.0','1,4',300,'01944002900','','','',NULL,1200);

/*Table structure for table `patient_biochemistry` */

DROP TABLE IF EXISTS `patient_biochemistry`;

CREATE TABLE `patient_biochemistry` (
  `PATIENT_id` bigint(20) NOT NULL,
  `biochemistry_id` bigint(20) NOT NULL,
  UNIQUE KEY `biochemistry_id` (`biochemistry_id`),
  KEY `FK8A3F13B6CBAFA7EC` (`biochemistry_id`),
  KEY `FK8A3F13B6544304A8` (`PATIENT_id`),
  CONSTRAINT `FK8A3F13B6544304A8` FOREIGN KEY (`PATIENT_id`) REFERENCES `patient` (`id`),
  CONSTRAINT `FK8A3F13B6CBAFA7EC` FOREIGN KEY (`biochemistry_id`) REFERENCES `biochemistry` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `patient_biochemistry` */

/*Table structure for table `patient_ledger_ac` */

DROP TABLE IF EXISTS `patient_ledger_ac`;

CREATE TABLE `patient_ledger_ac` (
  `PATIENT_id` bigint(20) NOT NULL,
  `ledgerList_id` bigint(20) NOT NULL,
  UNIQUE KEY `ledgerList_id` (`ledgerList_id`),
  KEY `FK115DBDDE14CC22D0` (`ledgerList_id`),
  KEY `FK115DBDDE544304A8` (`PATIENT_id`),
  CONSTRAINT `FK115DBDDE14CC22D0` FOREIGN KEY (`ledgerList_id`) REFERENCES `ledger_ac` (`id`),
  CONSTRAINT `FK115DBDDE544304A8` FOREIGN KEY (`PATIENT_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `patient_ledger_ac` */

insert  into `patient_ledger_ac` values (75,5),(75,6),(76,1),(76,2),(76,3),(77,7),(79,8),(79,11),(79,12),(80,9),(80,10),(81,13),(81,14);

/*Table structure for table `patient_test` */

DROP TABLE IF EXISTS `patient_test`;

CREATE TABLE `patient_test` (
  `PATIENT_id` bigint(20) NOT NULL,
  `testEntry_id` bigint(20) NOT NULL,
  UNIQUE KEY `testEntry_id` (`testEntry_id`),
  KEY `FK57C205ACFA5ACF28` (`testEntry_id`),
  KEY `FK57C205AC544304A8` (`PATIENT_id`),
  CONSTRAINT `FK57C205AC544304A8` FOREIGN KEY (`PATIENT_id`) REFERENCES `patient` (`id`),
  CONSTRAINT `FK57C205ACFA5ACF28` FOREIGN KEY (`testEntry_id`) REFERENCES `test` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `patient_test` */

/*Table structure for table `pcr_lab` */

DROP TABLE IF EXISTS `pcr_lab`;

CREATE TABLE `pcr_lab` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pcrLab1` double DEFAULT NULL,
  `pcrLab2` double DEFAULT NULL,
  `pcrLab3` double DEFAULT NULL,
  `pcrLab4` double DEFAULT NULL,
  `pcrLab5` double DEFAULT NULL,
  `testDate` date DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKFEF711ED544304A8` (`patient_id`),
  CONSTRAINT `FKFEF711ED544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `pcr_lab` */

insert  into `pcr_lab` values (1,99,99,99,99,99,'2015-01-03',74),(2,99,99,99,99,99,'2015-01-03',76);

/*Table structure for table `sonography` */

DROP TABLE IF EXISTS `sonography`;

CREATE TABLE `sonography` (
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
  KEY `FK6C604048544304A8` (`patient_id`),
  CONSTRAINT `FK6C604048544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `sonography` */

insert  into `sonography` values (1,99,99,99,99,99,99,99,99,99,'2015-01-03',76);

/*Table structure for table `stool` */

DROP TABLE IF EXISTS `stool`;

CREATE TABLE `stool` (
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
  KEY `FK4B9006B544304A8` (`patient_id`),
  CONSTRAINT `FK4B9006B544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `stool` */

insert  into `stool` values (1,99,99,99,99,99,99,99,'2015-01-03',74),(2,99,99,99,99,99,99,99,'2015-01-03',76);

/*Table structure for table `test` */

DROP TABLE IF EXISTS `test`;

CREATE TABLE `test` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `deliveryDays` int(11) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `testId` varchar(255) DEFAULT NULL,
  `testName` varchar(255) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  `biochemistry_id` bigint(20) DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK273C92DA2BE8AC` (`department_id`),
  KEY `FK273C92CBAFA7EC` (`biochemistry_id`),
  KEY `FK273C92544304A8` (`patient_id`),
  CONSTRAINT `FK273C92544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
  CONSTRAINT `FK273C92CBAFA7EC` FOREIGN KEY (`biochemistry_id`) REFERENCES `biochemistry` (`id`),
  CONSTRAINT `FK273C92DA2BE8AC` FOREIGN KEY (`department_id`) REFERENCES `hms_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

/*Data for the table `test` */

insert  into `test` values (1,4,600,'BIO1','Biochemistry1',1,NULL,NULL),(2,2,750,'BLO1','Blood1',2,NULL,NULL),(3,5,2500,'CLI1','Clinical Pathology1',3,NULL,NULL),(4,3,600,'CLO1','Clonoscopy1',4,NULL,NULL),(5,6,1500,'CDL1','Color Doppler1',5,NULL,NULL),(6,1,350,'DIA1','Diabeties1',6,NULL,NULL),(7,7,3500,'CTS1','CT Scan1',7,NULL,NULL),(8,3,750,'DEN1','Dental Xray1',8,NULL,NULL),(9,5,1200,'DUP1','Duplex Study1',9,NULL,NULL),(10,6,2800,'ECG1','ECG1',10,NULL,NULL),(11,4,1500,'ECH1','Echocardiogram1',11,NULL,NULL),(12,4,1200,'EEG1','EEG1',12,NULL,NULL),(13,3,1500,'END1','Endoscopy1',13,NULL,NULL),(14,4,1200,'ETT1','ETT1',14,NULL,NULL),(15,5,1000,'GAS1','Gastroscopy1',15,NULL,NULL),(16,3,1400,'HAE1','Haematology1',16,NULL,NULL),(17,2,1000,'HIS1','Histopathology1',17,NULL,NULL),(18,4,1000,'IMM1','Immunology1',18,NULL,NULL),(19,3,2000,'MIC1','Microbiology1',19,NULL,NULL),(20,2,800,'MRI1','MRI1',20,NULL,NULL),(21,3,1400,'PCR1','PCR Lab1',21,NULL,NULL),(22,5,1300,'SON1','Sonography1',22,NULL,NULL),(23,1,250,'STO1','Stool1',23,NULL,NULL),(24,1,150,'URN1','Urine1',24,NULL,NULL),(25,2,450,'USG1','USG1',25,NULL,NULL),(26,4,1200,'XRA1','Xray1',26,NULL,NULL);

/*Table structure for table `urine` */

DROP TABLE IF EXISTS `urine`;

CREATE TABLE `urine` (
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
  KEY `FK4D43003544304A8` (`patient_id`),
  CONSTRAINT `FK4D43003544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `urine` */

insert  into `urine` values (1,99,99,99,99,99,99,99,99,'bu-76',99,99,99,99,99,'2015-01-03',76);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user` values (1,'admin','admin'),(2,'superadmin','superadmin'),(3,'user','user');

/*Table structure for table `user_ledger_ac` */

DROP TABLE IF EXISTS `user_ledger_ac`;

CREATE TABLE `user_ledger_ac` (
  `USER_id` bigint(20) NOT NULL,
  `ledgerList_id` bigint(20) NOT NULL,
  UNIQUE KEY `ledgerList_id` (`ledgerList_id`),
  KEY `FK4CC7C34414CC22D0` (`ledgerList_id`),
  KEY `FK4CC7C3442656778C` (`USER_id`),
  CONSTRAINT `FK4CC7C34414CC22D0` FOREIGN KEY (`ledgerList_id`) REFERENCES `ledger_ac` (`id`),
  CONSTRAINT `FK4CC7C3442656778C` FOREIGN KEY (`USER_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_ledger_ac` */

/*Table structure for table `usg` */

DROP TABLE IF EXISTS `usg`;

CREATE TABLE `usg` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `testDate` date DEFAULT NULL,
  `usg1` double DEFAULT NULL,
  `usg2` double DEFAULT NULL,
  `usg3` double DEFAULT NULL,
  `usg4` double DEFAULT NULL,
  `usg5` double DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK14969544304A8` (`patient_id`),
  CONSTRAINT `FK14969544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `usg` */

insert  into `usg` values (1,'2015-01-03',99,99,99,99,99,74),(2,'2015-01-03',99,99,99,99,99,76);

/*Table structure for table `xray` */

DROP TABLE IF EXISTS `xray`;

CREATE TABLE `xray` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `testDate` date DEFAULT NULL,
  `xray1` double DEFAULT NULL,
  `xray2` double DEFAULT NULL,
  `xray3` double DEFAULT NULL,
  `xray4` double DEFAULT NULL,
  `xray5` double DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK293CB2544304A8` (`patient_id`),
  CONSTRAINT `FK293CB2544304A8` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `xray` */

insert  into `xray` values (1,'2015-01-03',99,99,99,99,99,74),(2,'2015-01-03',99,99,99,99,99,76);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
