-- MySQL dump 10.19  Distrib 10.3.28-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: sportdings
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Activity`
--

DROP TABLE IF EXISTS `Activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Activity` (
  `ActivityId` bigint NOT NULL AUTO_INCREMENT,
  `UserId` int NOT NULL,
  `Sporttype` varchar(255) NOT NULL,
  `ParameterOne` int NOT NULL,
  `ParameterTwo` int NOT NULL,
  `Score` int NOT NULL,
  `TsInsert` datetime NOT NULL,
  `Note` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ActivityId`),
  KEY `Sporttype` (`Sporttype`),
  KEY `UserId` (`UserId`),
  CONSTRAINT `Activity_ibfk_1` FOREIGN KEY (`Sporttype`) REFERENCES `PointSystem` (`Sporttype`),
  CONSTRAINT `Activity_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `Users` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=345 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Activity`
--

LOCK TABLES `Activity` WRITE;
/*!40000 ALTER TABLE `Activity` DISABLE KEYS */;
INSERT INTO `Activity` VALUES (32,2,'Klimmzug',15,0,450,'2021-05-18 20:21:41',NULL),(34,2,'Liegestuetze',40,0,400,'2021-05-18 20:25:56',NULL),(35,3,'Liegestuetze',10,0,100,'2021-05-18 00:00:00',NULL),(36,3,'Kniebeugen',15,0,15,'2021-05-18 20:37:48',NULL),(40,1,'Liegestuetze',20,0,200,'2021-05-19 08:48:53',NULL),(41,2,'Klimmzug',10,0,300,'2021-05-19 09:32:16',NULL),(42,1,'Liegestuetze',10,0,100,'2021-05-19 12:21:47',NULL),(43,13,'Klimmzug',10,0,300,'2021-05-19 13:33:53',NULL),(44,2,'Dragon Flag',3,0,105,'2021-05-19 14:04:33',NULL),(45,3,'Kniebeugen',15,3,45,'2021-05-19 14:10:40',NULL),(46,3,'Liegestuetze',10,0,100,'2021-05-19 14:15:57',NULL),(47,3,'Sit-Up',10,0,50,'2021-05-19 14:16:04',NULL),(49,2,'Klimmzug',10,0,300,'2021-05-19 14:24:17',NULL),(50,2,'Klimmzug',10,0,300,'2021-05-19 14:24:28',NULL),(51,2,'Klimmzug',10,0,300,'2021-05-19 14:24:28',NULL),(52,2,'Planking',120,0,120,'2021-05-19 14:24:37',NULL),(53,2,'Legraises',10,0,70,'2021-05-19 14:24:46',NULL),(54,2,'Sit-Up',15,0,75,'2021-05-19 14:24:55',NULL),(55,2,'Kniebeugen',30,0,90,'2021-05-19 14:25:06',NULL),(56,16,'Allgemein Ausdauer',0,0,0,'2021-05-19 16:49:02',NULL),(57,16,'Bankdrücken',1,1,1,'2021-05-19 16:49:20',NULL),(58,16,'Kniebeugen',30,2,150,'2021-05-19 00:00:00',NULL),(59,16,'Sit-Up',15,2,150,'2021-05-19 00:00:00',NULL),(60,1,'Kniebeugen',120,0,600,'2021-05-19 00:00:00',NULL),(61,16,'Liegestuetze',15,2,300,'2021-05-19 16:55:30',NULL),(65,2,'Klettern',5,0,30,'2021-05-19 17:01:43',NULL),(68,6,'Planking',35,1,70,'2021-05-19 17:51:24',NULL),(69,6,'Liegestuetze',10,0,63,'2021-05-19 17:51:38',NULL),(70,6,'Sit-Up',45,0,158,'2021-05-19 17:51:58',NULL),(71,6,'Legraises',15,0,38,'2021-05-19 17:52:13',NULL),(72,6,'Allgemein Ausdauer',20,0,400,'2021-05-19 17:52:28',NULL),(73,2,'Hanteln (Bizeps)',3,17,51,'2021-05-19 18:13:15',NULL),(74,17,'Kniebeugen',16,1,80,'2021-05-19 18:38:55',NULL),(75,4,'Laufen',50,6000,1000,'2021-05-19 19:13:08',NULL),(76,18,'Allgemein Ausdauer',1,0,20,'2021-05-19 20:48:47',NULL),(77,18,'Allgemein Ausdauer',1,0,20,'2021-05-19 20:49:58',NULL),(78,18,'Allgemein Ausdauer',-42,0,-840,'2021-05-19 20:51:22',NULL),(80,1,'Hanteln (Bizeps)',80,6,480,'2021-05-19 00:00:00',NULL),(81,1,'Sit-Up',50,0,175,'2021-05-19 21:19:31',NULL),(82,1,'Liegestuetze',40,0,250,'2021-05-19 00:00:00',NULL),(83,1,'Planking',60,0,120,'2021-05-19 21:27:47',NULL),(84,1,'Hanteln (Bizeps)',30,6,180,'2021-05-20 14:01:19',NULL),(85,4,'Liegestuetze',50,0,313,'2021-05-20 14:47:05',NULL),(86,4,'Kniebeugen',20,60,100,'2021-05-20 14:47:23',NULL),(87,4,'Bankdrücken',20,30,600,'2021-05-20 14:47:51',NULL),(88,4,'Laufen',30,2500,600,'2021-05-20 14:48:20',NULL),(89,4,'Sit-Up',50,0,175,'2021-05-20 14:54:59',NULL),(90,4,'Klimmzug',30,0,300,'2021-05-20 14:55:10',NULL),(91,4,'Hanteln (Bizeps)',40,10,400,'2021-05-20 00:00:00',NULL),(92,13,'Klimmzug',20,0,200,'2021-05-20 15:29:15',NULL),(93,13,'Kniebeugen',50,0,250,'2021-05-20 15:29:23',NULL),(94,13,'Sit-Up',150,0,525,'2021-05-20 15:29:32',NULL),(95,13,'Liegestuetze',100,0,625,'2021-05-20 15:30:23',NULL),(96,13,'Legraises',50,0,125,'2021-05-20 15:30:31',NULL),(97,2,'Klettern',120,0,1200,'2021-05-20 18:49:12',NULL),(98,2,'Klimmzug',1,61,610,'2021-05-20 18:49:29',NULL),(99,2,'Klimmzug',2,56,1120,'2021-05-20 18:49:44',NULL),(100,2,'Klimmzug',1,58,580,'2021-05-20 18:49:55',NULL),(101,2,'Klimmzug',1,53,530,'2021-05-20 18:50:08',NULL),(102,2,'Klimmzug',1,51,510,'2021-05-20 18:50:17',NULL),(103,2,'Klimmzug',2,46,920,'2021-05-20 18:50:28',NULL),(104,1,'Hanteln (Bizeps)',25,6,150,'2021-05-20 19:54:07',NULL),(106,5,'Allgemein Ausdauer',30,0,600,'2021-05-20 23:52:57',NULL),(107,5,'Planking',60,0,120,'2021-05-20 23:53:29',NULL),(108,1,'Liegestuetze',20,0,200,'2021-05-21 09:48:13',NULL),(109,2,'Planking',120,0,240,'2021-05-21 10:32:37',NULL),(110,1,'Hanteln (Bizeps)',30,6,180,'2021-05-21 12:25:02',NULL),(111,2,'Klimmzug',10,0,200,'2021-05-21 20:21:47',NULL),(112,2,'Legraises',10,0,50,'2021-05-21 20:24:13',NULL),(113,2,'Liegestuetze',20,0,200,'2021-05-21 20:24:22',NULL),(114,2,'Liegestuetze',20,0,200,'2021-05-22 00:33:58',NULL),(115,2,'Liegestuetze',10,0,100,'2021-05-22 00:52:23',NULL),(116,2,'Sit-Up',20,0,120,'2021-05-22 00:52:31',NULL),(117,20,'Liegestuetze',30,0,300,'2021-05-22 11:25:07',NULL),(118,1,'Hanteln (Bizeps)',60,6,360,'2021-05-22 17:51:16',NULL),(119,1,'Sit-Up',100,0,600,'2021-05-22 18:01:08',NULL),(120,20,'Allgemein Ausdauer',40,0,800,'2021-05-22 19:25:39',NULL),(121,1,'Allgemein Ausdauer',40,0,800,'2021-05-22 19:26:05',NULL),(122,1,'Liegestuetze',20,0,200,'2021-05-22 20:21:28',NULL),(123,2,'Klettern',120,0,1200,'2021-05-22 21:05:29',NULL),(124,2,'Klimmzug',10,0,200,'2021-05-22 21:08:21',NULL),(125,2,'Liegestuetze',20,0,200,'2021-05-22 21:08:27',NULL),(126,2,'Sit-Up',20,0,120,'2021-05-22 21:08:32',NULL),(127,2,'Sit-Up',15,0,90,'2021-05-22 21:10:20',NULL),(128,2,'Liegestuetze',10,0,100,'2021-05-22 21:10:24',NULL),(129,2,'Kniebeugen',40,0,200,'2021-05-22 21:11:55',NULL),(130,1,'Hanteln (Bizeps)',20,6,120,'2021-05-23 00:00:00',NULL),(131,18,'Laufen',19999,4,399,'2021-05-23 12:12:12',NULL),(132,2,'Klettern',10,0,100,'2021-05-23 14:57:03',NULL),(133,2,'Liegestuetze',10,0,100,'2021-05-23 14:57:12',NULL),(134,2,'Sit-Up',10,0,60,'2021-05-23 14:57:19',NULL),(135,2,'Sit-Up',15,0,90,'2021-05-23 15:04:00',NULL),(136,2,'Liegestuetze',10,0,100,'2021-05-23 15:04:05',NULL),(137,2,'Liegestuetze',10,0,100,'2021-05-23 15:16:46',NULL),(138,2,'Liegestuetze',10,0,100,'2021-05-23 17:32:14',NULL),(139,2,'Sit-Up',15,0,90,'2021-05-23 17:32:24',NULL),(140,1,'Allgemein Ausdauer',45,0,900,'2021-05-23 17:47:01',NULL),(141,2,'Klimmzug',27,0,540,'2021-05-23 18:01:02',NULL),(142,1,'Laufen',13,0,260,'2021-05-23 00:00:00',NULL),(143,1,'Hanteln (Bizeps)',60,6,360,'2021-05-24 20:09:31',NULL),(144,2,'Klimmzug',20,0,400,'2021-05-24 20:49:15',NULL),(145,1,'Hanteln (Bizeps)',20,6,120,'2021-05-24 21:56:01',NULL),(146,2,'Klettern',100,0,1000,'2021-05-25 17:52:59',NULL),(147,1,'Hanteln (Bizeps)',40,6,240,'2021-05-25 18:30:15',NULL),(148,1,'Liegestuetze',20,0,200,'2021-05-26 10:12:42',NULL),(149,1,'Liegestuetze',20,0,200,'2021-05-26 10:31:52',NULL),(150,1,'Butterfly',25,6,150,'2021-05-26 16:17:30',NULL),(151,1,'Hanteln (Bizeps)',50,6,300,'2021-05-26 16:20:21',NULL),(152,1,'Sit-Up',100,0,600,'2021-05-26 16:28:27',NULL),(153,1,'Butterfly',30,6,180,'2021-05-26 16:34:11',NULL),(154,1,'Hanteln (Bizeps)',30,6,180,'2021-05-26 16:36:50',NULL),(155,1,'Laufen',15,2700,300,'2021-05-26 19:33:31',NULL),(156,5,'Wandern',90,0,360,'2021-05-27 01:35:31',NULL),(157,1,'Hanteln (Bizeps)',30,6,180,'2021-05-27 19:59:22',NULL),(158,1,'Hanteln (Bizeps)',20,6,120,'2021-05-27 22:03:58',NULL),(159,2,'Klettern',210,0,2100,'2021-05-27 00:00:00',NULL),(160,6,'Butterfly',181,0,181,'2021-05-28 11:32:40',NULL),(161,6,'Hanteln (Bizeps)',15,2,30,'2021-05-28 11:33:18',NULL),(162,2,'Klettern',150,0,1500,'2021-05-29 00:00:00',NULL),(163,1,'Hanteln (Bizeps)',50,6,300,'2021-05-31 16:51:11',NULL),(164,1,'Hanteln (Bizeps)',45,6,270,'2021-06-01 21:22:03',NULL),(165,1,'Liegestuetze',30,0,300,'2021-06-01 21:22:14',NULL),(166,2,'Klettern',120,0,1200,'2021-06-02 00:00:00',NULL),(167,2,'Klettern',100,0,1000,'2021-06-04 00:00:00',NULL),(168,2,'Klettern',150,0,1500,'2021-06-05 19:03:07',NULL),(169,1,'Hanteln (Bizeps)',60,6,360,'2021-06-06 17:34:32',NULL),(170,1,'Liegestuetze',20,0,200,'2021-06-06 20:44:57',NULL),(171,1,'Hanteln (Bizeps)',50,6,300,'2021-06-06 20:48:20',NULL),(173,1,'Liegestuetze',20,0,200,'2021-06-08 21:47:19',NULL),(175,1,'Liegestuetze',20,0,200,'2021-06-09 20:03:06',NULL),(176,1,'Hanteln (Bizeps)',30,6,180,'2021-06-09 20:03:17',NULL),(177,1,'Liegestuetze',20,0,200,'2021-06-09 20:15:38',NULL),(178,1,'Hanteln (Bizeps)',40,6,240,'2021-06-09 00:00:00',NULL),(179,2,'Klettern',120,0,1200,'2021-06-09 00:00:00',NULL),(180,2,'Klettern',150,0,1500,'2021-06-15 21:59:40',NULL),(181,24,'Wandern',60,4000,240,'2021-06-15 00:00:00',NULL),(182,1,'Liegestuetze',20,0,200,'2021-06-16 05:57:39',NULL),(183,1,'Liegestuetze',20,0,200,'2021-06-17 04:54:18',NULL),(184,1,'Hanteln (Bizeps)',20,6,120,'2021-06-17 00:00:00',NULL),(185,25,'Fußball',106,0,1060,'2021-06-17 00:00:00',NULL),(186,1,'Liegestuetze',50,0,500,'2021-06-18 20:43:10',NULL),(187,2,'Klimmzug',10,0,200,'2021-06-18 23:16:11',NULL),(188,2,'Liegestuetze',40,0,400,'2021-06-18 23:16:23',NULL),(189,25,'Fußball',105,0,1050,'2021-06-19 11:14:38',NULL),(191,25,'Fußball',45,0,450,'2021-06-20 16:49:26',NULL),(192,1,'Liegestuetze',20,0,200,'2021-06-20 21:52:29',NULL),(193,1,'Hanteln (Bizeps)',40,6,240,'2021-06-20 21:52:43',NULL),(194,1,'Hanteln (Bizeps)',50,6,300,'2021-06-21 00:00:00',NULL),(195,1,'Liegestuetze',30,0,300,'2021-06-21 21:14:05',NULL),(196,2,'Klettern',120,0,1200,'2021-06-21 00:00:00',NULL),(197,2,'Klettern',151,0,1510,'2021-06-22 00:00:00',NULL),(198,1,'Liegestuetze',20,0,200,'2021-06-23 21:17:17',NULL),(199,25,'Fußball',120,0,1200,'2021-06-23 21:58:30',NULL),(200,2,'Klettern',150,0,1500,'2021-06-24 00:00:00',NULL),(201,1,'Liegestuetze',70,0,700,'2021-06-25 21:32:32',NULL),(202,2,'Klettern',121,0,1210,'2021-06-26 21:51:34',NULL),(203,25,'Fußball',60,0,600,'2021-06-27 00:00:00',NULL),(204,25,'Fußball',120,0,1200,'2021-06-27 00:00:00',NULL),(206,1,'Liegestuetze',20,0,200,'2021-06-30 00:00:00',NULL),(207,1,'Liegestuetze',20,0,200,'2021-06-30 22:22:50',NULL),(208,25,'Fußball',105,0,1050,'2021-06-30 00:00:00',NULL),(209,27,'Planking',1000,0,2000,'2021-07-01 08:14:07',NULL),(210,2,'Klettern',149,0,1490,'2021-07-01 00:00:00',NULL),(211,25,'Fußball',90,0,900,'2021-07-02 09:42:12',NULL),(212,1,'Liegestuetze',20,0,200,'2021-07-02 20:16:17',NULL),(213,1,'Hanteln (Bizeps)',50,6,300,'2021-07-03 16:52:54',NULL),(214,1,'Liegestuetze',20,0,200,'2021-07-03 16:53:05',NULL),(215,1,'Liegestuetze',50,0,500,'2021-07-03 16:56:53',NULL),(216,1,'Liegestuetze',20,0,200,'2021-07-03 16:58:39',NULL),(217,1,'Hanteln (Bizeps)',20,6,120,'2021-07-03 00:00:00',NULL),(218,1,'Liegestuetze',30,0,300,'2021-07-04 14:08:41',NULL),(219,1,'Hanteln (Bizeps)',50,6,300,'2021-07-04 15:03:00',NULL),(220,1,'Liegestuetze',20,0,200,'2021-07-05 06:52:13',NULL),(221,25,'Fußball',90,0,900,'2021-07-04 00:00:00',NULL),(222,2,'Klettern',152,0,1520,'2021-07-03 00:00:00',NULL),(223,2,'Klettern',124,0,1240,'2021-07-04 00:00:00',NULL),(224,1,'Liegestuetze',21,0,210,'2021-07-05 11:52:14',NULL),(225,1,'Hanteln (Bizeps)',50,6,300,'2021-07-05 15:31:43',NULL),(226,1,'Liegestuetze',20,0,200,'2021-07-06 20:37:58',NULL),(227,1,'Liegestuetze',20,0,200,'2021-07-06 20:54:43',NULL),(228,1,'Liegestuetze',20,0,200,'2021-07-07 05:44:35',NULL),(229,2,'Klettern',90,0,900,'2021-07-06 00:00:00',NULL),(257,1,'Liegestuetze',40,0,400,'2021-07-08 00:00:00',NULL),(258,25,'Fußball',95,0,950,'2021-07-05 00:00:00',NULL),(259,25,'Fußball',105,0,1050,'2021-07-07 00:00:00',NULL),(260,1,'Liegestuetze',20,0,200,'2021-07-07 00:00:00',NULL),(261,1,'Liegestuetze',20,0,200,'2021-07-08 00:00:00',NULL),(262,2,'Klettern',160,0,1600,'2021-07-08 00:00:00',NULL),(263,1,'Hanteln (Bizeps)',100,6,600,'2021-07-08 00:00:00',NULL),(264,13,'Basketball',120,6,1800,'2021-07-06 00:00:00',NULL),(265,1,'Liegestuetze',20,0,200,'2021-07-08 00:00:00',NULL),(266,1,'Sit-Up',50,0,300,'2021-07-08 00:00:00',NULL),(267,1,'Liegestuetze',20,0,200,'2021-07-09 00:00:00',NULL),(269,2,'Klimmzug',5,0,100,'2021-07-10 00:00:00',NULL),(270,1,'Allgemein Ausdauer',30,0,600,'2021-07-10 00:00:00',NULL),(271,4,'Laufen',30,5600,510,'2021-07-10 00:00:00',NULL),(272,4,'Bankdrücken',50,30,1500,'2021-07-07 00:00:00',NULL),(273,4,'Vollyball',300,20,3600,'2021-07-05 00:00:00',NULL),(274,4,'Vollyball',180,12,2160,'2021-07-06 00:00:00',NULL),(275,1,'Allgemein Ausdauer',30,0,600,'2021-07-10 00:00:00',NULL),(276,1,'Vollyball',120,0,1440,'2021-07-10 00:00:00',NULL),(277,27,'Basketball',80,0,1200,'2021-07-11 00:00:00',NULL),(278,2,'Klettern',170,0,1700,'2021-07-10 00:00:00',NULL),(279,2,'Klettern',150,0,1500,'2021-07-11 00:00:00',NULL),(280,29,'Allgemein Ausdauer',10,0,280,'2021-07-11 00:00:00',NULL),(281,29,'Hanteln (Bizeps)',15,15,225,'2021-07-11 00:00:00',NULL),(282,29,'Hanteln (Bizeps)',15,20,300,'2021-07-11 00:00:00',NULL),(283,29,'Sit-Up',45,0,270,'2021-07-11 00:00:00',NULL),(284,29,'Klimmzug',10,0,200,'2021-07-11 00:00:00',NULL),(285,25,'Fußballtraining',95,0,2660,'2021-07-09 00:00:00',NULL),(286,25,'Fußballtraining',90,0,2520,'2021-07-11 00:00:00',NULL),(287,30,'Klimmzug',36,0,720,'2021-07-08 00:00:00',NULL),(288,29,'Liegestuetze',20,0,200,'2021-07-12 00:00:00',NULL),(289,29,'Laufen',10,800,170,'2021-07-12 00:00:00',NULL),(290,29,'Allgemein Ausdauer',30,0,600,'2021-07-11 00:00:00',NULL),(291,29,'Butterfly',45,15,675,'2021-07-12 00:00:00',NULL),(292,29,'Hanteln (Trizeps)',45,20,225,'2021-07-12 00:00:00',NULL),(293,29,'Allgemein Ausdauer',95,0,1500,'2021-07-12 00:00:00',NULL),(294,29,'Sit-Up',45,0,270,'2021-07-12 00:00:00',NULL),(295,2,'Klettern',90,0,900,'2021-07-12 00:00:00',NULL),(296,2,'Planking',120,0,240,'2021-07-12 00:00:00',NULL),(297,1,'Hanteln (Bizeps)',100,6,600,'2021-07-13 00:00:00',NULL),(298,2,'Klettern',165,0,1650,'2021-07-13 00:00:00',NULL),(299,2,'Planking',60,0,120,'2021-07-13 00:00:00',NULL),(300,1,'Hanteln (Bizeps)',50,6,300,'2021-07-15 00:00:00',NULL),(301,1,'Liegestuetze',20,0,200,'2021-07-15 00:00:00',NULL),(302,1,'Liegestuetze',30,0,300,'2021-07-15 00:00:00',NULL),(303,25,'Fußballtraining',95,0,2660,'2021-07-14 00:00:00',NULL),(304,2,'Klettern',165,0,1650,'2021-07-15 00:00:00',NULL),(305,33,'Fußballtraining',120,0,2360,'2021-07-12 00:00:00',NULL),(306,33,'Allgemein Kraft',120,42,840,'2021-07-16 00:00:00',NULL),(307,25,'Fußballtraining',105,0,2940,'2021-07-16 00:00:00',NULL),(308,29,'Hanteln (Bizeps)',45,20,900,'2021-07-17 00:00:00',NULL),(309,29,'Allgemein Ausdauer',10,0,130,'2021-07-17 00:00:00',NULL),(310,29,'Allgemein Kraft',45,20,900,'2021-07-17 00:00:00',NULL),(311,29,'Hanteln (Bizeps)',45,20,900,'2021-07-17 00:00:00',NULL),(312,29,'Sit-Up',45,0,270,'2021-07-17 00:00:00',NULL),(313,29,'Klimmzug',3,0,60,'2021-07-17 00:00:00',NULL),(314,2,'Klettern',90,0,1080,'2021-07-17 00:00:00',NULL),(315,2,'Klettern',120,0,1440,'2021-07-18 00:00:00',NULL),(316,35,'Allgemein Ausdauer',60,0,780,'2021-07-18 00:00:00',NULL),(317,35,'Laufen',45,0,765,'2021-07-17 00:00:00',NULL),(318,35,'Allgemein Ausdauer',180,0,2340,'2021-07-18 00:00:00',NULL),(319,1,'Liegestuetze',30,0,300,'2021-07-18 00:00:00',NULL),(320,2,'Klettern',240,0,2880,'2021-07-20 00:00:00',NULL),(321,33,'Basketball',180,0,2700,'2021-07-20 00:00:00',NULL),(322,1,'Liegestuetze',20,0,200,'2021-07-20 00:00:00',NULL),(323,25,'Fußballtraining',90,0,2520,'2021-07-21 00:00:00',NULL),(324,2,'Klettern',180,0,2160,'2021-07-22 00:00:00',NULL),(325,2,'Sit-Up',30,0,180,'2021-07-22 00:00:00',NULL),(326,2,'Planking',150,0,300,'2021-07-22 00:00:00',NULL),(327,1,'Basketball',90,15,1350,'2021-07-22 00:00:00',NULL),(328,25,'Laufen',30,0,510,'2021-07-22 00:00:00',NULL),(329,25,'Fußballtraining',105,0,2940,'2021-07-23 00:00:00',NULL),(330,2,'Klettern',130,0,1560,'2021-07-24 00:00:00',NULL),(331,1,'Bankdrücken',30,23,690,'2021-07-24 00:00:00',NULL),(332,1,'Hanteln (Bizeps)',15,11,165,'2021-07-24 00:00:00',NULL),(334,25,'Fußballtraining',90,0,2520,'2021-07-25 00:00:00',NULL),(335,2,'Klettern',120,0,1440,'2021-07-25 00:00:00',NULL),(336,35,'Allgemein Ausdauer',60,0,780,'2021-07-26 00:00:00',NULL),(337,2,'Klettern',195,0,2340,'2021-07-27 00:00:00',NULL),(338,1,'Klettern',130,0,1560,'2021-07-29 00:00:00',NULL),(339,2,'Klettern',210,0,2520,'2021-07-29 00:00:00',NULL),(340,2,'Klettern',120,0,1440,'2021-07-31 00:00:00',NULL),(341,2,'Klettern',180,0,2160,'2021-08-01 00:00:00',NULL),(342,1,'Klettern',130,0,1560,'2021-08-03 00:00:00',NULL),(343,2,'Klimmzug',15,0,300,'2021-08-04 00:00:00',NULL),(344,2,'Klettern',120,0,1440,'2021-08-03 00:00:00',NULL);
/*!40000 ALTER TABLE `Activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FdpProperties`
--

DROP TABLE IF EXISTS `FdpProperties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FdpProperties` (
  `PropertyName` varchar(255) NOT NULL,
  `PropertyValue` tinyint(1) NOT NULL,
  PRIMARY KEY (`PropertyName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FdpProperties`
--

LOCK TABLES `FdpProperties` WRITE;
/*!40000 ALTER TABLE `FdpProperties` DISABLE KEYS */;
INSERT INTO `FdpProperties` VALUES ('canRegister',0);
/*!40000 ALTER TABLE `FdpProperties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PointSystem`
--

DROP TABLE IF EXISTS `PointSystem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PointSystem` (
  `Sporttype` varchar(255) NOT NULL,
  `Activitytype` varchar(255) NOT NULL,
  `Points` int NOT NULL,
  `ParameterOne` varchar(255) NOT NULL,
  `ParameterTwo` varchar(255) NOT NULL,
  `IconName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Sporttype`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PointSystem`
--

LOCK TABLES `PointSystem` WRITE;
/*!40000 ALTER TABLE `PointSystem` DISABLE KEYS */;
INSERT INTO `PointSystem` VALUES ('Allgemein Ausdauer','Ausdauer',13,'Minuten Dauer','Detail (Zahl z. B. Wiederholungen)',NULL),('Allgemein Kraft','KraftK',1,'Anzahl Wiederholungen','Gewicht Kg','google-downasaur'),('Bankdrücken','KraftK',1,'Anzahl','Gewicht (Kg)','google-downasaur'),('Basketball','Ausdauer',15,'Dauer (Minuten)','Detail (Zahl z. B. geworfene Körbe)',NULL),('Butterfly','KraftK',1,'Anzahl','Gewicht (Kg)','google-downasaur'),('Dragon Flag','Kraft',40,'Anzahl','Hinzu. Gewicht (Kg)','google-downasaur'),('Fußball','Ausdauer',10,'Minuten','Detail(Zahl)',NULL),('Fußballtraining','Ausdauer',28,'Dauer (Minuten)','Detail (z. B. Geschossene tore)',NULL),('Hanteln (Bizeps)','KraftK',1,'Anzahl','Gewicht (Kg)','google-downasaur'),('Hanteln (Trizeps)','Kraft',1,'Anzahl','Gewicht','google-downasaur'),('Klettern','Ausdauer',12,'Minuten','Detail','google-downasaur'),('Klimmzug','Kraft',20,'Anzahl','Hinzu. Gewicht (Kg)','google-downasaur'),('Klimmzugmaschine','Kraft',3,'Wiederholungen','Gewicht (kg)',NULL),('Kniebeugen','Ausdauer',5,'Anzahl','Extra-Gewicht','google-downasaur'),('Laufen','Ausdauer',17,'Minuten','Distanz (Meter)','google-downasaur'),('Legraises','Kraft',5,'Anzahl','Hinzu. Gewicht (Kg)','google-downasaur'),('Liegestuetze','Kraft',10,'Anzahl','Hinzu. Gewicht (Kg)','google-downasaur'),('Planking','Ausdauer',2,'Sekunden','Detail (Zahl)','google-downasaur'),('Schwimmen','Ausdauer',12,'Distanz (Meter)','Zeit ','google-downasaur'),('Sit-Up','Kraft',6,'Anzahl','Hinzu. Gewicht (Kg)','google-downasaur'),('Tanzen','Ausdauer',15,'Minuten','Detail','google-downasaur'),('Trizepsstrecken','KraftK',1,'Anzahl','Gewicht (kg)','google-downasaur'),('Vollyball','Ausdauer',12,'Dauer (Minuten)','Detail (Zahl)',NULL),('Wandern','Ausdauer',4,'Minuten','Distanz (Meter)','google-downasaur');
/*!40000 ALTER TABLE `PointSystem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserFriends`
--

DROP TABLE IF EXISTS `UserFriends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserFriends` (
  `FriendPkId` int NOT NULL AUTO_INCREMENT,
  `Userid` int NOT NULL,
  `FriendId` int NOT NULL,
  `Pending` tinyint(1) NOT NULL,
  PRIMARY KEY (`FriendPkId`),
  KEY `Userid` (`Userid`),
  KEY `FriendId` (`FriendId`),
  CONSTRAINT `UserFriends_ibfk_1` FOREIGN KEY (`Userid`) REFERENCES `Users` (`UserId`),
  CONSTRAINT `UserFriends_ibfk_2` FOREIGN KEY (`FriendId`) REFERENCES `Users` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserFriends`
--

LOCK TABLES `UserFriends` WRITE;
/*!40000 ALTER TABLE `UserFriends` DISABLE KEYS */;
INSERT INTO `UserFriends` VALUES (1,2,1,1),(2,2,3,0),(3,3,2,0),(4,1,2,0),(6,3,1,0),(8,1,3,1),(15,5,1,0),(20,6,1,0),(21,2,4,0),(22,2,5,0),(23,2,6,0),(24,2,7,0),(26,2,14,0),(27,2,10,0),(28,16,1,0),(29,16,2,0),(30,16,3,0),(31,16,4,0),(32,16,6,0),(33,16,7,0),(36,16,10,0),(37,16,11,0),(38,16,12,0),(39,16,13,0),(40,16,14,0),(41,16,15,0),(42,16,16,0),(43,1,16,0),(44,2,16,0),(45,1,15,0),(46,1,13,0),(47,1,11,0),(48,1,10,1),(49,1,5,1),(50,1,6,1),(51,2,17,0),(52,17,2,0),(53,1,4,0),(54,14,17,0),(55,14,19,0),(56,2,19,0),(57,14,2,0),(58,19,2,0),(59,19,14,0),(60,4,1,0),(61,13,1,0),(62,13,10,0),(63,13,11,0),(64,4,13,0),(65,1,20,0),(66,2,18,0),(67,24,1,0),(68,24,2,0),(69,2,24,0),(70,24,7,0),(71,25,1,0),(72,25,2,0),(73,2,25,0),(74,1,24,0),(75,1,25,0),(76,1,26,0),(77,27,1,0),(78,27,25,0),(79,25,27,0),(80,2,1,0),(81,29,25,0),(82,29,1,0),(83,29,2,0),(84,29,27,0),(85,1,27,0),(86,1,29,0),(87,1,28,0),(88,2,30,0),(89,1,30,0),(90,2,29,0),(91,2,28,0),(92,32,1,0),(93,32,2,0),(94,2,35,0),(95,1,33,0);
/*!40000 ALTER TABLE `UserFriends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserInfo`
--

DROP TABLE IF EXISTS `UserInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserInfo` (
  `UserId` int NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Profilpic` varchar(4000) DEFAULT NULL,
  `Visibility` varchar(255) NOT NULL,
  PRIMARY KEY (`UserId`),
  CONSTRAINT `UserInfo_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `Users` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserInfo`
--

LOCK TABLES `UserInfo` WRITE;
/*!40000 ALTER TABLE `UserInfo` DISABLE KEYS */;
INSERT INTO `UserInfo` VALUES (1,'FranzDerPalme','FranzDerPalme',NULL,'Public'),(2,'DoofKopf','DoofKopf',NULL,'Public'),(3,'ToniPlayz','ToniPlayz',NULL,'Public'),(4,'PizzaCat','PizzaCat',NULL,'Public'),(5,'Sunny','Sunny',NULL,'Public'),(6,'Dafne','Dafne',NULL,'Public'),(7,'FranzDasPalme','N-wORD',NULL,'Public'),(10,'Jona','Jona',NULL,'Public'),(11,'Yeeet','Yeeet',NULL,'Public'),(12,'','',NULL,'Public'),(13,'Denis ','Denis ',NULL,'Public'),(14,'Moastaaa','Moastaaa',NULL,'Public'),(15,'hannahmontana','hannahmontana',NULL,'Public'),(16,'Asiamann','Asiamann',NULL,'Public'),(17,'Karpfn','Karpfn',NULL,'Public'),(18,'flou','flou',NULL,'Public'),(19,'Valle','Valle',NULL,'Public'),(20,'Artjom','Artjom',NULL,'Public'),(21,'Tonii','Tonii',NULL,'Public'),(22,'Kevkajooo','Kevkajooo',NULL,'Public'),(23,'dominik','dominik',NULL,'Public'),(24,'Luna','Luna',NULL,'Public'),(25,'Furkan','Furkan',NULL,'Public'),(26,'regi','regi',NULL,'Public'),(27,'NeniHead','NeniHead',NULL,'Public'),(28,'Palme201','Palme201',NULL,'Public'),(29,'NeroX','NeroX',NULL,'Public'),(30,'_hxyen_','_hxyen_',NULL,'Public'),(31,'Juu2904','Juu2904',NULL,'Public'),(32,'pletzi','pletzi',NULL,'Public'),(33,'Jonny','Jonny',NULL,'Public'),(35,'MamaKnowsBest','MamaKnowsBest',NULL,'Public');
/*!40000 ALTER TABLE `UserInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `UserId` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'FranzDerPalme','$2b$10$AwZcaAVF9jsBY7ZAhulmIOnqQotsSKPdVVJr.eg/Mbv3vWU8ry4wO'),(2,'DoofKopf','$2b$10$2gCYSTPJCZZX1KCovQk/.ukIMh24Eyv3stsjwqd0.F5LeS05xCyTK'),(3,'ToniPlayz','$2b$10$52WTxQdJw.nSRO5LbUy4mO.WfO8icLD4SriPdbI4KAuZ5uXwA4EjG'),(4,'PizzaCat','$2b$10$2Kspo71vTl3unWmdBnyuv.tMptAIkEcUejywe6Bmo1QBPRjEANZkG'),(5,'Sunny','$2b$10$zoMT/Lwh7Kwj8nBP39IVdufY96Ts8cF22Umw8YJDR.EZvPIXjI5rO'),(6,'Dafne','$2b$10$xGc6Z4xATVt32/Zjy.OpO.G.JLnPAlFb5IAvbsAgyTI98n0R2TjIa'),(7,'FranzDasPalme','$2b$10$v.m0uBrG.FZ8FrbyuQ3odONhvuMzT7HYOU8Rtkuo96xyrYXwrdWD2'),(10,'Jona','$2b$10$nsRoIuzWHioU4xmon8xTZODUDtiLCyUGJPh5DRtg50pI.CMjwO/Fe'),(11,'Yeeet','$2b$10$XobOu946HZzxjTL.3TPG.uNfjhVBzSpPrt1V8AdRTPOAQIpm6nlN.'),(12,'FranzDiePalme','$2b$10$hSwRvbnd98fbx6DGsfo4MulqAMz3ZefAIKTEWN12vErGLf5rJm2i2'),(13,'Denis ','$2b$10$qb.GhgvTyOAEb0r6XyNTle1Bx5ggLJMk1l4Jz3krHD9caOu89O0Pe'),(14,'Moastaaa','$2b$10$RjREsP1qx65By/qNxWAdCOFmxtNfK7oFgn85QaVfPZNH9oihsYh6G'),(15,'hannahmontana','$2b$10$ivSgPp/3KdAZUeBs.cF0be1pyvAM5kIrwN7pgHw5brGWW2ORNZdOS'),(16,'Asiamann','$2b$10$tG3yKpn0MtFder1NpPBS5OQbcMFL4cROgr3pd6ZavEa6yyl3aNfEi'),(17,'Karpfn','$2b$10$uuo2RP9sv7ViXefOYecFZeWo9.KkbmbQaOJQI1tjkgL3udZ9FX.iS'),(18,'flou','$2b$10$ww8gL4T/nn7W9IfeYAAlruHpkX2mIbZ/LgQD6Ym.yOSmM/Ix.ALw2'),(19,'Valle','$2b$10$0e4vVmB4yingWdbYMQH0XuQ6D7uLDCa9vSseA9SFDScDJN/B1vjoa'),(20,'Artjom','$2b$10$DTcBFayVOvfZZgErged7i.KAHpKfoLEHufxMH/lqLj0shr91mKVLy'),(21,'Tonii','$2b$10$QzEdSk78LCXQUL5FDj8c/uHv2ZawHzFfHcGXszdKqglH3CfBUkjxC'),(22,'Kevkajooo','$2b$10$UbiDhzwFRjLP6WtrIP72c.4JeRO3QuG0TP7U31sdf9RLdFHH96U0m'),(23,'dominik','$2b$10$Jjqo2XDDs/OjEaoa9HtTcOM6qqCvBdnoBCdiEStHf5DAvK7twNcMK'),(24,'Luna','$2b$10$dUwr1jRJux1goj6iWiPIq.aTfKFwQY14H31zhZsQc5JuLRtpfXtwq'),(25,'Furkan','$2b$10$UiHx2L/MqhwGY51NUEzoBedM6gg4DoAIIkYuZ4ZZxb0eIzU2oUI5K'),(26,'regi','$2b$10$eXdOU1qT2evUsKi.ETZIM.APXSBoBThDkMabrjHRu/js0t23U7Ph.'),(27,'NeniHead','$2b$10$QO2eP8ZX2QU7wKNSiDzaM.x2hEv7NpCQIsuqSBp4D0DiJcliGfpRC'),(28,'Palme201','$2b$10$7bQXQKOchUhcN.tD759XAe4ImOLeaa3jUJ8I17cRrP2kaw2clpk8O'),(29,'NeroX','$2b$10$JKZxGDPUfjre0PPNBHZiOOpwSWDk1X41m.V/XA4CzG.NDsO5RT.GO'),(30,'_hxyen_','$2b$10$7xQZls1Dqa69z/2v.KrohOYdzgTFtrkjBgyKGue2F37lmibDep5LO'),(31,'Juu2904','$2b$10$ZNraTDUmVQKU5ZUDpcwWXuI.CuOE7AI7BGieTI6DBlR4ejoE1inMG'),(32,'pletzi','$2b$10$SdymPxZce.hJgSpQyVlneOpwGX3tnYVcTxs7Le86MOsP3Oy69/Bn.'),(33,'Jonny','$2b$10$fLQdp1/kq6KI7h4dUUXV2u2as61jkNJvA6vxhuO1lkOl/TwlPlExe'),(35,'MamaKnowsBest','$2b$10$7S2C22gyztnfp/djndCpSOJ38URbMw31nU3LWwZh6AM.Dz7sLfw.i');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `WeekBest`
--

DROP TABLE IF EXISTS `WeekBest`;
/*!50001 DROP VIEW IF EXISTS `WeekBest`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `WeekBest` (
  `UserId` tinyint NOT NULL,
  `Username` tinyint NOT NULL,
  `Weekscore` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `WeekBest`
--

/*!50001 DROP TABLE IF EXISTS `WeekBest`*/;
/*!50001 DROP VIEW IF EXISTS `WeekBest`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`sportdings`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `WeekBest` AS select `Users`.`UserId` AS `UserId`,`Users`.`Username` AS `Username`,sum(`Activity`.`Score`) AS `Weekscore` from (`Activity` join `Users` on((`Activity`.`UserId` = `Users`.`UserId`))) where ((`Activity`.`UserId` = `Activity`.`UserId`) and (`Activity`.`TsInsert` > (now() + interval -(7) day))) group by `Activity`.`UserId` order by `Weekscore` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-07 17:43:27
