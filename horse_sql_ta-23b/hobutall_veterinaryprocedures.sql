-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hobutall
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `veterinaryprocedures`
--

DROP TABLE IF EXISTS `veterinaryprocedures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veterinaryprocedures` (
  `ProcedureID` int NOT NULL AUTO_INCREMENT,
  `HorseID` int DEFAULT NULL,
  `Date` date NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Notes` text,
  PRIMARY KEY (`ProcedureID`),
  KEY `HorseID` (`HorseID`),
  CONSTRAINT `veterinaryprocedures_ibfk_1` FOREIGN KEY (`HorseID`) REFERENCES `horses` (`HorseID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veterinaryprocedures`
--

LOCK TABLES `veterinaryprocedures` WRITE;
/*!40000 ALTER TABLE `veterinaryprocedures` DISABLE KEYS */;
INSERT INTO `veterinaryprocedures` VALUES (1,1,'2024-01-15','Vaccination','Rabies vaccine administered.'),(2,2,'2024-02-20','Treatment','Bandaged leg injury.'),(3,3,'2024-03-05','Vaccination','Flu vaccine administered.'),(4,4,'2024-04-10','Check-up','General health check, all good.'),(5,5,'2024-05-22','Vaccination','Tetanus vaccine administered.');
/*!40000 ALTER TABLE `veterinaryprocedures` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-25  9:23:28
