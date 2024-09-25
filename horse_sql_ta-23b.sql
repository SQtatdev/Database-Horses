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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `EmployeeID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `ContactInfo` varchar(255) NOT NULL,
  `Role` varchar(50) NOT NULL,
  `WorkSchedule` text,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Emily Carter','emily@example.com','Trainer','9 AM - 5 PM'),(2,'David Brown','david@example.com','Veterinarian','10 AM - 6 PM'),(3,'Frank Wilson','frank@example.com','Stablehand','7 AM - 3 PM');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment` (
  `EquipmentID` int NOT NULL AUTO_INCREMENT,
  `Description` varchar(100) NOT NULL,
  `Value` decimal(10,2) NOT NULL,
  `Quantity` int NOT NULL,
  PRIMARY KEY (`EquipmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES (1,'Saddle',250.00,5),(2,'Bridle',100.00,4),(3,'Horse Blanket',75.00,10),(4,'Feed Trough',50.00,6),(5,'Water Bucket',20.00,15);
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horses`
--

DROP TABLE IF EXISTS `horses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horses` (
  `HorseID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Age` int NOT NULL,
  `HealthStatus` varchar(100) DEFAULT NULL,
  `StallNumber` int NOT NULL,
  `TrainingSchedule` text,
  `OwnerID` int DEFAULT NULL,
  PRIMARY KEY (`HorseID`),
  KEY `OwnerID` (`OwnerID`),
  CONSTRAINT `horses_ibfk_1` FOREIGN KEY (`OwnerID`) REFERENCES `owners` (`OwnerID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horses`
--

LOCK TABLES `horses` WRITE;
/*!40000 ALTER TABLE `horses` DISABLE KEYS */;
INSERT INTO `horses` VALUES (1,'Thunder',5,'Healthy',1,'Daily training',1),(2,'Spirit',7,'Injured',2,'Weekly training',1),(3,'Shadow',4,'Healthy',3,'Daily training',2),(4,'Blaze',6,'Healthy',4,'Bi-weekly training',3),(5,'Daisy',3,'Healthy',1,'Daily training',2);
/*!40000 ALTER TABLE `horses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owners`
--

DROP TABLE IF EXISTS `owners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owners` (
  `OwnerID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `ContactInfo` varchar(255) NOT NULL,
  `AccountCredentials` varchar(255) NOT NULL,
  PRIMARY KEY (`OwnerID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owners`
--

LOCK TABLES `owners` WRITE;
/*!40000 ALTER TABLE `owners` DISABLE KEYS */;
INSERT INTO `owners` VALUES (1,'Alice Johnson','alice@example.com','alicepass'),(2,'Bob Smith','bob@example.com','bobpass'),(3,'Catherine Lee','catherine@example.com','catherinepass');
/*!40000 ALTER TABLE `owners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `RoleID` int NOT NULL AUTO_INCREMENT,
  `RoleName` varchar(50) NOT NULL,
  PRIMARY KEY (`RoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin'),(2,'Trainer'),(3,'Veterinarian'),(4,'Stablehand'),(5,'Owner');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userroles`
--

DROP TABLE IF EXISTS `userroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userroles` (
  `UserRoleID` int NOT NULL AUTO_INCREMENT,
  `EmployeeID` int DEFAULT NULL,
  `RoleID` int DEFAULT NULL,
  PRIMARY KEY (`UserRoleID`),
  KEY `EmployeeID` (`EmployeeID`),
  KEY `RoleID` (`RoleID`),
  CONSTRAINT `userroles_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`),
  CONSTRAINT `userroles_ibfk_2` FOREIGN KEY (`RoleID`) REFERENCES `roles` (`RoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userroles`
--

LOCK TABLES `userroles` WRITE;
/*!40000 ALTER TABLE `userroles` DISABLE KEYS */;
INSERT INTO `userroles` VALUES (13,1,2),(14,2,3),(15,3,4);
/*!40000 ALTER TABLE `userroles` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2024-09-25  9:25:11
