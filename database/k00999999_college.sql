CREATE DATABASE  IF NOT EXISTS `k00999999_college` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `k00999999_college`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: college
-- ------------------------------------------------------
-- Server version	5.5.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `senderID` varchar(15) DEFAULT NULL,
  `senderFirstName` varchar(45) DEFAULT NULL,
  `senderLastName` varchar(45) DEFAULT NULL,
  `message` varchar(128) DEFAULT 'empty message',
  `datetimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`msgID`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (54,'A00010','Gerry','Guinane','Welcome to AJAX chat','2019-03-22 11:56:23'),(55,'A00010','Gerry','O\'Brien','hello','2019-03-28 14:04:26'),(56,'K00999999','Peter','Murphy','hello','2019-03-28 14:22:30'),(57,'K00999999','Peter','Murphy','hello','2019-03-28 14:23:02'),(58,'K00999999','Peter','Murphy','msg\r\n','2019-03-28 14:23:10'),(59,'A00010','Gerry','O\'Brien','fdfsdf','2019-04-01 11:00:20'),(60,'A00010','Gerry','O\'Brien','hello','2019-04-01 11:05:13'),(61,'K00999999','Peter','Murphy','stude3nt\r\n','2019-04-01 11:05:55'),(62,'A00010','Gerry','O\'Brien','xxx','2019-04-01 11:08:42'),(63,'A00010','Gerry','O\'Brien','test','2019-04-02 11:55:45'),(64,'k00999999','John','Smith','hello','2020-01-21 13:35:52'),(65,'k00999999','John','Smith','chat message','2020-01-21 13:39:20'),(66,'k00999999','John','Smith','chat message','2020-01-21 13:40:35'),(67,'k00999999','John','Smith','hello 1234','2020-01-21 13:40:47'),(68,'k00999999','John','Smith','hello 2020','2020-01-21 13:46:00'),(69,'k00999999','John','Smith','xxx','2020-01-21 13:49:32'),(70,'k00999999','John','Smith','xxx','2020-01-21 13:56:05'),(71,'k00999999','John','Smith','xxx','2020-01-21 13:59:37'),(72,'k00999999','John','Smith','xxx','2020-01-21 14:00:34'),(73,'k00999999','John','Smith','yyyy','2020-01-21 14:04:42'),(74,'k00999999','John','Smith','yyyy','2020-01-21 14:05:38'),(75,'k00999999','John','Smith','xxxx','2020-01-21 14:08:38'),(76,'K00999999','John','Smith','hello john','2020-01-21 14:12:20'),(77,'K01001986','Bill','Gates','hello from bill','2020-01-21 14:23:22'),(78,'K00999999','John','Smith','hello from John','2020-01-21 14:23:35'),(79,'K00999999','John','Smith','','2020-01-21 14:23:43'),(80,'K01001986','Bill','Gates','hello from bill','2020-01-21 14:27:49'),(81,'K01001986','Bill','Gates','ffff','2020-01-21 14:41:30'),(82,'K00999999','John','Smith','fffff','2020-01-22 09:26:32'),(83,'K00999999','John','Smith','hello weds','2020-01-22 09:26:45'),(84,'K00999999','John','Smith','hello weds','2020-01-22 09:28:35'),(85,'K00999999','John','Smith','','2020-01-22 09:31:07'),(86,'K00999999','John','Smith','','2020-01-22 09:31:12'),(87,'K00999999','John','Smith','vvdf','2020-01-22 09:31:20'),(88,'K00999999','John','Smith','vvdf','2020-01-22 09:32:11'),(89,'K00999999','John','Smith','','2020-01-22 09:32:16'),(90,'K00999999','John','Smith','','2020-01-22 09:33:11'),(91,'K00999999','John','Smith','','2020-01-22 09:33:57'),(92,'K00999999','John','Smith','hello xxx\r\n','2020-01-22 09:34:12'),(93,'K00999999','John','Smith','hdjhfjjkrgqerg','2020-01-22 09:51:00');
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecturer`
--

DROP TABLE IF EXISTS `lecturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lecturer` (
  `LectID` varchar(10) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `PassWord` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`LectID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecturer`
--

LOCK TABLES `lecturer` WRITE;
/*!40000 ALTER TABLE `lecturer` DISABLE KEYS */;
INSERT INTO `lecturer` VALUES ('A00010','Gerry','O\'Brien','57c322d00945ac04091b57f1735b82ee6543d8a2','gerry@lit.ie','086-1111111'),('A00024','John','Smith','57c322d00945ac04091b57f1735b82ee6543d8a2',NULL,NULL),('A00029','Peter','Brady','57c322d00945ac04091b57f1735b82ee6543d8a2',NULL,NULL),('A00036','Gearóid','O\'Cuineáin','57c322d00945ac04091b57f1735b82ee6543d8a2',NULL,NULL),('A00087','Mary','Murphy','57c322d00945ac04091b57f1735b82ee6543d8a2',NULL,NULL),('A00094','Elizabeth','O\'Brien','57c322d00945ac04091b57f1735b82ee6543d8a2',NULL,NULL),('A00132','Barry','O\'Connor','57c322d00945ac04091b57f1735b82ee6543d8a2',NULL,NULL),('A00999','James','Groody','57c322d00945ac04091b57f1735b82ee6543d8a2',NULL,NULL);
/*!40000 ALTER TABLE `lecturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message` varchar(140) NOT NULL,
  `sender` varchar(45) NOT NULL,
  `datetimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`msgID`),
  KEY `fk_messages_lecturer_idx` (`sender`),
  CONSTRAINT `fk_messages_lecturer` FOREIGN KEY (`sender`) REFERENCES `lecturer` (`LectID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (3,'test1','A00010','2018-03-19 12:52:04'),(4,'test2','A00024','2018-03-19 12:52:04'),(8,'hello','A00010','2018-03-19 14:07:14'),(9,'hello','A00010','2018-03-19 14:07:32'),(10,'hello\r\nnew','A00010','2018-03-19 14:07:48'),(11,'line 1\r\nli','A00010','2018-03-19 14:08:20'),(12,'qwerty','A00010','2018-03-19 14:09:39'),(13,'','A00010','2018-03-19 14:26:01'),(14,'gfgfd','A00010','2018-03-19 14:26:12'),(15,'fdfg','A00010','2018-03-19 14:26:17'),(16,'','A00010','2018-03-19 14:28:03'),(17,'Hello Agai','A00010','2018-03-19 19:40:23'),(18,'hjhjk\r\njkj','A00010','2018-03-19 19:48:53'),(19,'Line 1\r\nLi','A00010','2018-03-19 19:55:36'),(20,'The rain in spain\r\nFalls mainly in the plain','A00010','2018-03-19 19:57:14'),(21,'The rain in spain\r\nFalls mainly in the plain','A00010','2018-03-19 19:59:40'),(22,'','A00010','2018-03-20 18:11:00'),(23,'Hello from AJAX','A00010','2018-03-21 11:24:17'),(24,'AJAX again','A00010','2018-03-21 11:24:56'),(25,'Hello from Chrome\r\n','A00010','2018-03-21 11:26:29'),(26,'jkjkl','A00010','2018-03-21 11:39:58'),(27,'xxx','A00010','2018-03-21 11:43:33'),(28,'regular updates\r\n','A00010','2018-03-21 11:44:06'),(29,'new message\r\n','A00010','2018-03-21 11:45:28'),(30,'fdfds','A00010','2018-03-23 09:35:15'),(31,'xxx','A00010','2018-03-23 14:05:23'),(32,'zzz','A00010','2018-03-23 14:05:37'),(33,'zzz','A00010','2018-03-23 14:06:03'),(34,'','A00010','2018-03-23 14:07:59'),(35,'vvv','A00010','2018-03-25 15:02:46'),(36,'gfgf','A00010','2018-03-25 15:03:11'),(37,'ccc','A00010','2018-03-25 15:08:06'),(38,'ggg','A00010','2018-03-25 15:09:56'),(39,'xxx','A00010','2018-03-25 15:10:12'),(40,'','A00010','2018-03-25 15:10:19'),(41,'','A00010','2018-03-25 15:11:18'),(42,'hello','A00036','2018-03-26 16:03:11'),(43,'hello again','A00036','2018-03-26 16:05:17'),(44,'xxx','A00036','2018-03-26 16:07:48'),(45,'hello from liz','A00094','2018-03-26 16:09:06'),(46,'new message','A00010','2018-03-26 16:11:23'),(47,'','A00010','2018-03-26 16:45:22'),(48,'hi','A00010','2018-03-26 16:45:31'),(49,'dddd','A00010','2018-03-26 16:45:40'),(50,'','A00010','2018-03-26 16:46:35'),(51,'','A00010','2018-03-26 16:46:35'),(52,'','A00010','2018-03-26 16:46:36'),(53,'','A00010','2018-03-26 16:46:36'),(54,'','A00010','2018-03-26 16:46:36'),(55,'','A00010','2018-03-26 16:46:37'),(56,'fddfdfgh','A00010','2018-03-26 16:50:48'),(57,'Hello','A00087','2018-03-26 16:56:34'),(58,'Hi','A00010','2018-03-26 17:05:14'),(59,'nnnn','A00087','2018-03-26 17:33:45'),(60,'ghghgjh','A00087','2018-03-26 22:00:14'),(61,'','A00010','2018-03-28 22:13:26'),(62,'','A00010','2018-03-28 22:16:09'),(63,'','A00010','2018-03-28 22:17:01'),(64,'','A00010','2018-03-28 22:17:02'),(65,'fgfgdf','A00087','2018-03-28 22:25:25'),(66,'','A00087','2018-03-28 22:27:51'),(67,'','A00087','2018-03-28 22:30:18'),(68,'fgfgfg','A00010','2018-04-09 09:19:05'),(69,'ddd','A00010','2018-04-09 09:23:18'),(70,'ffdfsd','A00010','2018-04-09 09:25:32'),(71,'','A00010','2018-04-09 09:28:48'),(72,'erere','A00010','2018-05-16 12:56:47');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modules` (
  `ModuleID` varchar(10) NOT NULL DEFAULT '',
  `ModuleTitle` varchar(45) NOT NULL,
  `Credits` varchar(45) NOT NULL,
  `LecturerID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ModuleID`),
  KEY `FK_modules_1` (`LecturerID`),
  CONSTRAINT `FK_modules_1` FOREIGN KEY (`LecturerID`) REFERENCES `lecturer` (`LectID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES ('AC230','Accounting 4','10','A00024'),('BA201','Electronics','5','A00087'),('DDA2','Data Driven Applications','5','A00024'),('EN101','Introduction to Engineering','10','A00094'),('EN104','English','5','A00010'),('MA101','Mathematics 1','10','A00024'),('MA201','Mathematics 2','10','A00132'),('MA301','Maths for SD','10','A00024'),('MA401','Maths for Business Computing','5','A00024'),('SC401','Chemistry 3','10','A00029'),('T0001','XXX','10','A00010'),('T0002','XXX','10','A00010'),('T0003','XXX','10','A00010'),('X0005','XXX','10','A00010');
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `results` (
  `StudID` varchar(10) NOT NULL DEFAULT '',
  `ModID` varchar(10) NOT NULL DEFAULT '',
  `Grade` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`StudID`,`ModID`) USING BTREE,
  KEY `FK_results_3` (`ModID`),
  CONSTRAINT `FK_results_1` FOREIGN KEY (`ModID`) REFERENCES `modules` (`ModuleID`),
  CONSTRAINT `FK_results_2` FOREIGN KEY (`StudID`) REFERENCES `students` (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `results`
--

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
INSERT INTO `results` VALUES ('K01001986','AC230',65),('K01001986','BA201',45),('K01001986','MA101',40),('K01012345','AC230',25),('K01022975','AC230',50),('K01022975','MA101',58),('K01087653','MA101',80),('K01234577','MA201',45);
/*!40000 ALTER TABLE `results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `StudentID` varchar(10) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `County` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`StudentID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES ('K00073821','Richard','Carey','Cork','57c322d00945ac04091b57f1735b82ee6543d8a2',NULL,NULL),('K00999999','John','Smith','Galway','57c322d00945ac04091b57f1735b82ee6543d8a2','K00999999@lit.ie','0861234567'),('K01001986','Bill','Gates','Kerry','57c322d00945ac04091b57f1735b82ee6543d8a2','bill@lit.ie','086-9999999'),('K01012345','Alan','Ryan','Donegal','57c322d00945ac04091b57f1735b82ee6543d8a2',NULL,NULL),('K01022975','James','Hendrix','Limerick','57c322d00945ac04091b57f1735b82ee6543d8a2',NULL,NULL),('K01023498','Tiger','Woods','Limerick','57c322d00945ac04091b57f1735b82ee6543d8a2',NULL,NULL),('K01087653','Michael ','Smith','Galway','57c322d00945ac04091b57f1735b82ee6543d8a2',NULL,NULL),('K01123445','Jimmy','Chiu','Clare','57c322d00945ac04091b57f1735b82ee6543d8a2',NULL,NULL),('K01234577','Elvis','Costello','Tipperary','57c322d00945ac04091b57f1735b82ee6543d8a2',NULL,NULL);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'college'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_transcript` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_transcript`(IN SID VARCHAR(45))
BEGIN

  SELECT ModuleID, ModuleTitle, Grade FROM students

  INNER JOIN results ON results.StudID = students.StudentID

  INNER JOIN modules ON modules.ModuleID = results.ModID

  WHERE students.StudentID = SID;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-02 11:14:37
