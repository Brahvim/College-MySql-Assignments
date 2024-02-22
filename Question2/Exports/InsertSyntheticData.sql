CREATE DATABASE  IF NOT EXISTS `soc_net_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `soc_net_db`;
-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: soc_net_db
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

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
-- Table structure for table `friends_table`
--

DROP TABLE IF EXISTS `friends_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friends_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `friend_name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends_table`
--

LOCK TABLES `friends_table` WRITE;
/*!40000 ALTER TABLE `friends_table` DISABLE KEYS */;
INSERT INTO `friends_table` VALUES (1,1,'user2'),(2,1,'user3'),(3,2,'user1'),(4,2,'user4'),(5,3,'user2');
/*!40000 ALTER TABLE `friends_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_profiles`
--

DROP TABLE IF EXISTS `users_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_profiles` (
  `user_id` int DEFAULT NULL,
  `id` int NOT NULL,
  `user_location` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_profiles`
--

LOCK TABLES `users_profiles` WRITE;
/*!40000 ALTER TABLE `users_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_table`
--

DROP TABLE IF EXISTS `users_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_address` varchar(150) DEFAULT NULL,
  `last_logged_on` timestamp NULL DEFAULT NULL,
  `registered_on` timestamp NULL DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_active` tinyint DEFAULT NULL,
  `dob` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_table`
--

LOCK TABLES `users_table` WRITE;
/*!40000 ALTER TABLE `users_table` DISABLE KEYS */;
INSERT INTO `users_table` VALUES (1,'123 Main Street, Delhi','2023-02-20 07:00:00','2022-01-01 02:30:00','user1','user1@gmail.com',1,'1990-05-14 18:30:00'),(2,'456 Park Avenue, Mumbai','2023-02-19 13:15:00','2022-01-05 04:45:00','user2','user2@outlook.com',1,'1988-08-21 18:30:00'),(3,'789 Lake Road, Bangalore','2023-02-18 15:50:00','2022-01-10 09:15:00','user3','user3@gmail.com',0,'1995-03-11 18:30:00'),(4,'101 Hillside Lane, Kolkata','2023-02-17 03:40:00','2022-01-15 12:00:00','user4','user4@outlook.com',1,'1992-11-07 18:30:00'),(5,'202 River View, Chennai','2023-02-16 10:25:00','2022-01-20 15:30:00','user5','user5@protonmail.com',1,'1987-07-03 18:30:00'),(6,'303 Valley Street, Hyderabad','2023-02-15 06:15:00','2022-01-25 03:00:00','user6','user6@gmail.com',0,'1998-09-17 18:30:00'),(7,'fake location','2023-02-14 14:30:00','2023-02-14 15:37:00','user7','user7@tenminutemail.com',0,'1986-02-27 18:30:00'),(8,'505 Garden Avenue, Ahmedabad','2023-02-13 09:05:00','2022-02-04 10:15:00','user8','user8@gmail.com',1,'1991-06-08 18:30:00'),(9,'606 Sunset Boulevard, Jaipur','2023-02-12 12:55:00','2022-02-09 13:00:00','user9','user9@outlook.com',0,'1994-11-30 18:30:00'),(10,'707 Greenfield Place, Lucknow','2023-02-11 02:20:00','2022-02-14 18:29:59','user10','user10@protonmail.com',1,'1989-04-29 18:30:00');
/*!40000 ALTER TABLE `users_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'soc_net_db'
--

--
-- Dumping routines for database 'soc_net_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-22 21:15:18
