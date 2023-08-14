CREATE DATABASE  IF NOT EXISTS `buyme` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `buyme`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: buyme
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `adminEmail` varchar(50) NOT NULL,
  `adminPassword` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`adminEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assists`
--

DROP TABLE IF EXISTS `assists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assists` (
  `caseID` varchar(10) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `repEmail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`caseID`),
  KEY `email` (`email`),
  KEY `repEmail` (`repEmail`),
  CONSTRAINT `assists_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user` (`email`),
  CONSTRAINT `assists_ibfk_2` FOREIGN KEY (`repEmail`) REFERENCES `rep` (`repEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assists`
--

LOCK TABLES `assists` WRITE;
/*!40000 ALTER TABLE `assists` DISABLE KEYS */;
/*!40000 ALTER TABLE `assists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyer`
--

DROP TABLE IF EXISTS `buyer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buyer` (
  `shipAddress` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  KEY `email` (`email`),
  CONSTRAINT `buyer_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyer`
--

LOCK TABLES `buyer` WRITE;
/*!40000 ALTER TABLE `buyer` DISABLE KEYS */;
/*!40000 ALTER TABLE `buyer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car` (
  `vin` varchar(17) DEFAULT NULL,
  `listingNum` varchar(10) DEFAULT NULL,
  `style` varchar(50) DEFAULT NULL,
  KEY `vin` (`vin`,`listingNum`),
  CONSTRAINT `car_ibfk_1` FOREIGN KEY (`vin`, `listingNum`) REFERENCES `vehicle` (`vin`, `listingNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card` (
  `cardNumber` varchar(19) NOT NULL,
  `cvc` char(3) DEFAULT NULL,
  `expirationDate` date DEFAULT NULL,
  `billingAddress` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cardNumber`),
  KEY `email` (`email`),
  CONSTRAINT `card_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moderate`
--

DROP TABLE IF EXISTS `moderate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moderate` (
  `modCaseID` varchar(10) NOT NULL,
  `adminEmail` varchar(50) DEFAULT NULL,
  `repEmail` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`modCaseID`),
  KEY `adminEmail` (`adminEmail`),
  KEY `repEmail` (`repEmail`),
  CONSTRAINT `moderate_ibfk_1` FOREIGN KEY (`adminEmail`) REFERENCES `admin` (`adminEmail`),
  CONSTRAINT `moderate_ibfk_2` FOREIGN KEY (`repEmail`) REFERENCES `rep` (`repEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moderate`
--

LOCK TABLES `moderate` WRITE;
/*!40000 ALTER TABLE `moderate` DISABLE KEYS */;
/*!40000 ALTER TABLE `moderate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motorcycle`
--

DROP TABLE IF EXISTS `motorcycle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `motorcycle` (
  `vin` varchar(17) DEFAULT NULL,
  `listingNum` varchar(10) DEFAULT NULL,
  `hasSidecar` tinyint(1) DEFAULT NULL,
  KEY `vin` (`vin`,`listingNum`),
  CONSTRAINT `motorcycle_ibfk_1` FOREIGN KEY (`vin`, `listingNum`) REFERENCES `vehicle` (`vin`, `listingNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motorcycle`
--

LOCK TABLES `motorcycle` WRITE;
/*!40000 ALTER TABLE `motorcycle` DISABLE KEYS */;
/*!40000 ALTER TABLE `motorcycle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paysfor`
--

DROP TABLE IF EXISTS `paysfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paysfor` (
  `transactionID` varchar(10) NOT NULL,
  `cardNumber` varchar(19) DEFAULT NULL,
  `vin` varchar(17) DEFAULT NULL,
  `listingNum` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`transactionID`),
  KEY `cardNumber` (`cardNumber`),
  KEY `vin` (`vin`,`listingNum`),
  CONSTRAINT `paysfor_ibfk_1` FOREIGN KEY (`cardNumber`) REFERENCES `card` (`cardNumber`),
  CONSTRAINT `paysfor_ibfk_2` FOREIGN KEY (`vin`, `listingNum`) REFERENCES `vehicle` (`vin`, `listingNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paysfor`
--

LOCK TABLES `paysfor` WRITE;
/*!40000 ALTER TABLE `paysfor` DISABLE KEYS */;
/*!40000 ALTER TABLE `paysfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep`
--

DROP TABLE IF EXISTS `rep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rep` (
  `repEmail` varchar(50) NOT NULL,
  `repPassword` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`repEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep`
--

LOCK TABLES `rep` WRITE;
/*!40000 ALTER TABLE `rep` DISABLE KEYS */;
/*!40000 ALTER TABLE `rep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller` (
  `bankAccountNumber` varchar(50) NOT NULL,
  `routingNumber` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bankAccountNumber`),
  KEY `email` (`email`),
  CONSTRAINT `seller_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sells`
--

DROP TABLE IF EXISTS `sells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sells` (
  `saleID` varchar(10) NOT NULL,
  `vin` varchar(17) DEFAULT NULL,
  `listingNum` varchar(10) DEFAULT NULL,
  `bankAccountNumber` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`saleID`),
  KEY `vin` (`vin`,`listingNum`),
  KEY `bankAccountNumber` (`bankAccountNumber`),
  CONSTRAINT `sells_ibfk_1` FOREIGN KEY (`vin`, `listingNum`) REFERENCES `vehicle` (`vin`, `listingNum`),
  CONSTRAINT `sells_ibfk_2` FOREIGN KEY (`bankAccountNumber`) REFERENCES `seller` (`bankAccountNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sells`
--

LOCK TABLES `sells` WRITE;
/*!40000 ALTER TABLE `sells` DISABLE KEYS */;
/*!40000 ALTER TABLE `sells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `truck`
--

DROP TABLE IF EXISTS `truck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `truck` (
  `vin` varchar(17) DEFAULT NULL,
  `listingNum` varchar(10) DEFAULT NULL,
  `payloadSize` varchar(20) DEFAULT NULL,
  KEY `vin` (`vin`,`listingNum`),
  CONSTRAINT `truck_ibfk_1` FOREIGN KEY (`vin`, `listingNum`) REFERENCES `vehicle` (`vin`, `listingNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `truck`
--

LOCK TABLES `truck` WRITE;
/*!40000 ALTER TABLE `truck` DISABLE KEYS */;
/*!40000 ALTER TABLE `truck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `name` varchar(50) DEFAULT NULL,
  `phone` char(10) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('username','123456891','test@email.com','password');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `vin` varchar(17) NOT NULL,
  `listingNum` varchar(10) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `listPrice` int DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `secretMax` int DEFAULT NULL,
  `secretMin` int DEFAULT NULL,
  PRIMARY KEY (`vin`,`listingNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-12 21:57:44
