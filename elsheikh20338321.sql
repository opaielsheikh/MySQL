-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: elsheikh20338321
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate` (
  `idcandidate` int NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `telephone_number` decimal(20,0) DEFAULT NULL,
  PRIMARY KEY (`idcandidate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES (1111,'yussef','elsheikh','9 kilcross court, sandyford, dublin 18, ireland',891111111),(2222,'opaied','ahmed','10 kilcross court, sandyford, dublin 18, ireland',892222222),(3333,'abdelrahman','omar','11 kilcross court, sandyford, dublin 18, ireland',893333333),(4444,'mohammed','zubair','12 kilcross court, sandyford, dublin 18, ireland',894444444),(5555,'suhybe','opai','13 kilcross court, sandyford, dublin 18, ireland',895555555),(6666,'azubair','ussef','14 kilcross court, sandyford, dublin 18, ireland',896666666),(7777,'opai','aran','15 kilcross court, sandyford, dublin 18, ireland',897777777),(8888,'hudaifa','alexander','1 kilcross court, sandyford, dublin 18, ireland',898888888),(9999,'abdallah','ayz','2 kilcross court, sandyford, dublin 18, ireland',899999999),(10000,'hanin','jhonathan','3 kilcross court, sandyford, dublin 18, ireland',900000000),(11000,'yakub','banti','4 kilcross court, sandyford, dublin 18, ireland',911111111),(12000,'alex','islam','5 kilcross court, sandyford, dublin 18, ireland',922222222),(13000,'josh','fanti','6 kilcross court, sandyford, dublin 18, ireland',933333333),(14000,'brian','safti','7 kilcross court, sandyford, dublin 18, ireland',944444444),(15000,'omar','krati','8 kilcross court, sandyford, dublin 18, ireland',955555555);
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidateskills`
--

DROP TABLE IF EXISTS `candidateskills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidateskills` (
  `candidateid` int NOT NULL,
  `skillid` int NOT NULL,
  PRIMARY KEY (`candidateid`,`skillid`),
  KEY `skillid_idx` (`skillid`),
  CONSTRAINT `candidateid` FOREIGN KEY (`candidateid`) REFERENCES `candidate` (`idcandidate`),
  CONSTRAINT `skillid` FOREIGN KEY (`skillid`) REFERENCES `skills` (`idskills`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidateskills`
--

LOCK TABLES `candidateskills` WRITE;
/*!40000 ALTER TABLE `candidateskills` DISABLE KEYS */;
INSERT INTO `candidateskills` VALUES (1111,1111),(14000,1111),(2222,2222),(13000,2222),(1111,3333),(3333,3333),(12000,3333),(4444,4444),(11000,4444),(5555,5555),(10000,5555),(6666,6666),(9999,6666),(7777,7777),(8888,7777),(7777,8888),(8888,8888),(6666,9999),(9999,9999),(5555,10000),(10000,10000),(11000,11000),(15000,11000),(4444,12000),(12000,12000),(3333,13000),(13000,13000),(2222,14000),(14000,14000),(1111,15000),(15000,15000);
/*!40000 ALTER TABLE `candidateskills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital` (
  `idhospital` int NOT NULL,
  `hospitalName` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `telephoneNumber` decimal(20,0) DEFAULT NULL,
  PRIMARY KEY (`idhospital`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES (1111,'Cloud Wave Clinic','25 Hackett Boulevard',891111111),(2222,'Cornerstone Hospital','600 Northern Boulevard',892222222),(3333,'Hydro Heal','75 New Scotland Avenue',893333333),(4444,'Priority Medical','315 South Manning Boulevard',894444444),(5555,'Vibrant indigo','113 Holland Avenu',895555555),(6666,'Eos Wellness Center','140 West Main Street',896666666),(7777,'Venus Complete Care','191 North Main Street',897777777),(8888,'HealthBling Care','1650 Grand Concourse',898888888),(9999,'RelyOn Medical','1000 Waters Place',899999999),(10000,'Dane Street','200 Waters Place',111111111),(11000,'Health Catalyst','300 Waters Place',222222222),(12000,'Mishle Home Care','400 Waters Place',333333333),(13000,'Yankee Alliance','500 Waters Place',444444444),(14000,'York General','600 Waters Place',555555555),(15000,'Genie Health','700 Waters Place',666666666);
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview`
--

DROP TABLE IF EXISTS `interview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interview` (
  `interviewdate` date NOT NULL,
  `idposition` int NOT NULL,
  PRIMARY KEY (`interviewdate`,`idposition`),
  KEY `positionid_idx` (`idposition`),
  KEY `positionsid_idx` (`idposition`),
  CONSTRAINT `idposition` FOREIGN KEY (`idposition`) REFERENCES `position` (`idposition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview`
--

LOCK TABLES `interview` WRITE;
/*!40000 ALTER TABLE `interview` DISABLE KEYS */;
INSERT INTO `interview` VALUES ('2021-01-01',1111),('2021-01-16',1111),('2022-02-21',1111),('2021-01-02',2222),('2021-01-17',2222),('2021-01-02',3333),('2021-01-03',3333),('2021-01-18',3333),('2021-01-04',4444),('2021-01-05',5555),('2021-01-06',6666),('2021-01-07',7777),('2021-01-08',8888),('2021-01-09',9999),('2021-01-10',10000),('2021-01-11',11000),('2021-01-12',12000),('2021-01-19',12000),('2021-01-13',13000),('2021-01-14',14000),('2021-01-15',15000);
/*!40000 ALTER TABLE `interview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invite`
--

DROP TABLE IF EXISTS `invite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invite` (
  `candidatesid` int NOT NULL,
  `interviewforposition` int NOT NULL,
  `dateofinterview` date NOT NULL,
  `ishired` varchar(3) NOT NULL,
  PRIMARY KEY (`candidatesid`,`interviewforposition`,`dateofinterview`),
  KEY `interviewforposition_idx` (`interviewforposition`),
  KEY `dateofinterview_idx` (`dateofinterview`),
  CONSTRAINT `candidatesid` FOREIGN KEY (`candidatesid`) REFERENCES `candidate` (`idcandidate`),
  CONSTRAINT `dateofinterview` FOREIGN KEY (`dateofinterview`) REFERENCES `interview` (`interviewdate`),
  CONSTRAINT `interviewforposition` FOREIGN KEY (`interviewforposition`) REFERENCES `interview` (`idposition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invite`
--

LOCK TABLES `invite` WRITE;
/*!40000 ALTER TABLE `invite` DISABLE KEYS */;
INSERT INTO `invite` VALUES (1111,1111,'2021-01-01','YES'),(1111,3333,'2021-01-03','NO'),(2222,2222,'2021-01-02','NO'),(2222,3333,'2021-01-03','YES'),(3333,3333,'2021-01-03','YES'),(4444,4444,'2021-01-04','YES'),(5555,5555,'2021-01-05','NO'),(6666,6666,'2021-01-06','YES'),(7777,7777,'2021-01-07','NO'),(8888,8888,'2021-01-08','YES'),(9999,9999,'2021-01-09','YES'),(10000,10000,'2021-01-10','NO'),(11000,11000,'2021-01-11','NO'),(12000,12000,'2021-01-12','NO'),(13000,13000,'2021-01-13','YES'),(14000,14000,'2021-01-14','YES'),(15000,15000,'2021-01-15','YES');
/*!40000 ALTER TABLE `invite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `idposition` int NOT NULL,
  `position_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idposition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1111,'nurse'),(2222,'Pharmacist'),(3333,'Occupational therapist'),(4444,'Respiratory therapist'),(5555,'Dietician'),(6666,'Radiologic technician'),(7777,'Medical technologist'),(8888,'Physician assistant'),(9999,'Surgeon'),(10000,'Anesthesiologist'),(11000,'Medical admissions clerk'),(12000,'Medical records clerk'),(13000,'Coding specialist'),(14000,'Medical social worker'),(15000,'Information technology specialist');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positionofferedbyhospital`
--

DROP TABLE IF EXISTS `positionofferedbyhospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positionofferedbyhospital` (
  `positionsid` int NOT NULL,
  `hospitalsid` int NOT NULL,
  KEY `hospitalsid_idx` (`hospitalsid`),
  KEY `positionsid_idx` (`positionsid`),
  CONSTRAINT `hospitalsid` FOREIGN KEY (`hospitalsid`) REFERENCES `hospital` (`idhospital`),
  CONSTRAINT `positionsid` FOREIGN KEY (`positionsid`) REFERENCES `position` (`idposition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positionofferedbyhospital`
--

LOCK TABLES `positionofferedbyhospital` WRITE;
/*!40000 ALTER TABLE `positionofferedbyhospital` DISABLE KEYS */;
INSERT INTO `positionofferedbyhospital` VALUES (1111,15000),(2222,14000),(3333,3333),(3333,13000),(4444,4444),(4444,12000),(5555,5555),(5555,11000),(6666,6666),(6666,10000),(7777,7777),(7777,9999),(8888,6666),(8888,8888),(9999,2222),(9999,9999),(10000,7777),(11000,6666),(12000,5555),(13000,4444),(14000,3333),(15000,2222),(1111,2222);
/*!40000 ALTER TABLE `positionofferedbyhospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positionskills`
--

DROP TABLE IF EXISTS `positionskills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positionskills` (
  `positionid` int NOT NULL,
  `skillsid` int NOT NULL,
  PRIMARY KEY (`positionid`,`skillsid`),
  KEY `skillid_idx` (`skillsid`),
  KEY `skillsid_idx` (`skillsid`),
  CONSTRAINT `positionid` FOREIGN KEY (`positionid`) REFERENCES `position` (`idposition`),
  CONSTRAINT `skillsid` FOREIGN KEY (`skillsid`) REFERENCES `skills` (`idskills`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positionskills`
--

LOCK TABLES `positionskills` WRITE;
/*!40000 ALTER TABLE `positionskills` DISABLE KEYS */;
INSERT INTO `positionskills` VALUES (1111,1111),(15000,1111),(1111,2222),(2222,2222),(14000,2222),(3333,3333),(13000,3333),(4444,4444),(12000,4444),(11000,5555),(10000,6666),(9999,7777),(8888,8888),(7777,9999),(6666,10000),(5555,11000),(4444,12000),(3333,13000),(2222,14000),(1111,15000);
/*!40000 ALTER TABLE `positionskills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `idskills` int NOT NULL,
  `skillname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idskills`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1111,'Teamwork'),(2222,'Multi-tasking'),(3333,'Flexibility'),(4444,'Attention to Detail'),(5555,'Industry Awareness'),(6666,'Time Management'),(7777,'Communication'),(8888,'Interpersonal'),(9999,'Problem-Solving'),(10000,'Hazard Awareness'),(11000,'Interpersonal'),(12000,'Multitasking'),(13000,'Stress and time management'),(14000,'Strategy and innovation'),(15000,'nursing');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'elsheikh20338321'
--

--
-- Dumping routines for database 'elsheikh20338321'
--
/*!50003 DROP PROCEDURE IF EXISTS `addRow_In_candidate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addRow_In_candidate`(IN idcandidate int, IN firstname VARCHAR(45), IN surname VARCHAR(45), IN address VARCHAR(100), telephone_number DECIMAL(20,0))
BEGIN
     INSERT INTO candidate (idcandidate , firstname , surname , address , telephone_number)
     VALUES (idcandidate , firstname , surname , address , telephone_number);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addRow_In_candidateskills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addRow_In_candidateskills`(IN candidateid int, IN skillid int)
BEGIN
     INSERT INTO candidateskills (candidateid , skillid)
     VALUES (candidateid , skillid);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addRow_In_hospital` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addRow_In_hospital`(IN idhospital int, IN hospitalName VARCHAR(45), IN address VARCHAR(45), IN telephoneNumber DECIMAL(20,0))
BEGIN
     INSERT INTO hospital (idhospital , hospitalName , address , telephoneNumber)
     VALUES (idhospital , hospitalName , address , telephoneNumber);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addRow_In_interview` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addRow_In_interview`(IN interviewdate DATE, IN idposition int)
BEGIN
     INSERT INTO interview (interviewdate , idposition)
     VALUES (interviewdate , idposition);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addRow_In_invite` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addRow_In_invite`(IN candidatesid int, IN interviewforposition int, IN dateofinterview DATE, IN ishired VARCHAR(3))
BEGIN
     INSERT INTO invite (candidatesid , interviewforposition , dateofinterview , ishired)
     VALUES (candidatesid , interviewforposition , dateofinterview , ishired);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addRow_In_position` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addRow_In_position`(IN idposition int, IN position_type VARCHAR(45))
BEGIN
     INSERT INTO position (idposition , position_type)
     VALUES (idposition , position_type);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addRow_In_positionofferedbyhospital` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addRow_In_positionofferedbyhospital`(IN positionsid int, IN hospitalsid int)
BEGIN
	 INSERT INTO positionofferedbyhospital (positionsid , hospitalsid)
     VALUES (positionsid , hospitalsid);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addRow_In_positionskills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addRow_In_positionskills`(IN positionid int, IN skillsid int)
BEGIN
      INSERT INTO positionskills (positionid , skillsid)
      VALUES (positionid , skillsid);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addRow_In_skills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addRow_In_skills`(IN idskills int, IN skillname VARCHAR(45))
BEGIN
   INSERT INTO skills (idskills , skillname)
   VALUES (idskills, skillname);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Find_CandidateIdInterviewedOnSpecificDate_WithGivingDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Find_CandidateIdInterviewedOnSpecificDate_WithGivingDate`(IN givingDate DATE)
BEGIN
     SELECT I.candidatesid as identifireOfCandidates FROM invite I WHERE dateofinterview = givingDate;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Find_CandidatesNameAndId_WhereInterviewedAtleastTwice` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Find_CandidatesNameAndId_WhereInterviewedAtleastTwice`()
BEGIN
	 SELECT C.firstname, C.surname, C.idcandidate FROM candidate C, invite I WHERE C.idcandidate = I.candidatesid group by C.firstname, C.surname, C.idcandidate having count(I.candidatesid) >= 2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Find_CandidateWithAtleastOneRequiredSkill_WithGivingPositionId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Find_CandidateWithAtleastOneRequiredSkill_WithGivingPositionId`(IN position_id INT)
BEGIN
     SELECT distinct C.* FROM candidate C, candidateskills CS ,positionskills PS WHERE PS.positionid = position_id and C.idcandidate = CS.candidateid and CS.skillid = PS.skillsid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Find_Candidate_WithGivingSurName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Find_Candidate_WithGivingSurName`(IN givingSurname VARCHAR(50))
BEGIN
     SELECT * FROM candidate WHERE surname = givingSurname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Find_Hospital_WithGivingId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Find_Hospital_WithGivingId`(IN hospital_id INT)
BEGIN
     SELECT * FROM hospital WHERE idhospital = hospital_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Find_Hospital_WithGivingName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Find_Hospital_WithGivingName`(IN hospitalNames VARCHAR(100))
BEGIN
     SELECT * FROM hospital WHERE hospitalName = hospitalNames;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Find_InterviewsOccurr_WithGivingDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Find_InterviewsOccurr_WithGivingDate`(IN givingDate DATE)
BEGIN
     SELECT P.position_type, I.interviewdate FROM interview I, position P WHERE I.interviewdate = givingDate and I.idposition = P.idposition;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Find_numberOFCandidateOfferedPosition` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Find_numberOFCandidateOfferedPosition`()
BEGIN
     SELECT count(distinct I.candidatesid) as gotHired FROM invite I WHERE I.ishired = 'YES';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Find_PositionSortedAlphabetically_WithHospitalNames` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Find_PositionSortedAlphabetically_WithHospitalNames`()
BEGIN
     SELECT P.*, H.hospitalName FROM position P, positionofferedbyhospital POBH, hospital H WHERE P.idposition = POBH.positionsid and POBH.positionsid = H.idhospital group by P.idposition, P.position_type, H.hospitalName order by H.hospitalName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Find_Position_RequiredNursingSkill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Find_Position_RequiredNursingSkill`()
BEGIN
     SELECT count(P.position_type) as numberOfPositionsRequiredNursingSkill FROM position P, positionskills PS, skills S  WHERE S.skillname = 'nursing' and S.idskills = PS.skillsid and P.idposition = PS.positionid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Find_Position_WithRequiredGivingSkill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Find_Position_WithRequiredGivingSkill`(IN RequiredSkill VARCHAR(45))
BEGIN
	 SELECT P.position_type FROM position P, positionskills PS, skills S  WHERE S.skillname = RequiredSkill and S.idskills = PS.skillsid and P.idposition = PS.positionid;
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

-- Dump completed on 2021-11-16 17:09:18
