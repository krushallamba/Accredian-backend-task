CREATE DATABASE  IF NOT EXISTS `accredian` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `accredian`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: accredian
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `referral`
--

DROP TABLE IF EXISTS `referral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referral` (
  `id` int NOT NULL AUTO_INCREMENT,
  `referrerName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referrerEmail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refereeName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refereeEmail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `Referral_refereeEmail_key` (`refereeEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referral`
--

LOCK TABLES `referral` WRITE;
/*!40000 ALTER TABLE `referral` DISABLE KEYS */;
INSERT INTO `referral` VALUES (32,'Alice','alice@gmail.com','Bob','bob@gmail.com','React Fundamentals','2025-02-24 16:15:26.982'),(33,'Alice','alice@gmail.com','Carol','carol@gmail.com','MySQL Basics','2025-02-24 16:16:42.727'),(35,'Alice','alice@gmail.com','John','john@gmail.com','Express for Beginners','2025-02-24 16:22:08.629'),(36,'Alice','alice@gmail.com','Jack','jack@gmail.com','React Fundamentals','2025-02-24 16:22:50.846'),(37,'Alice','alice@gmail.com','Steve','steve@gmail.com','Node.js Masterclass','2025-02-24 16:23:41.989'),(39,'Alice','alice@gmail.com','Joe','joe@gmail.com','Node.js Masterclass','2025-02-25 04:13:41.584'),(40,'Alice','alice@gmail.com','Joe','wwwkrishgadhvi1@gmail.com','MySQL Basics','2025-02-25 04:16:51.935'),(41,'Alice','alice@gmail.com','Kathie','kathie@gmail.com','MySQL Basics','2025-02-25 04:20:32.536'),(42,'Alice','alice@gmail.com','Max','max@gmail.com','Express for Beginners','2025-02-25 05:29:48.421'),(44,'Alice','alice@gmail.com','Walter','walter@gmail.com','React Fundamentals','2025-02-25 05:31:30.689'),(45,'Alice','alice@gmail.com','Jesse','jesse@gmail.com','MySQL Basics','2025-02-25 09:31:35.060');
/*!40000 ALTER TABLE `referral` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-25 16:40:07
