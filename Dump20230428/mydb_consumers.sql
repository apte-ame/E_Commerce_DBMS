-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `consumers`
--

DROP TABLE IF EXISTS `consumers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumers` (
  `Consumer ID` varchar(10) NOT NULL,
  `Email Address` varchar(25) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `Password` varchar(160) NOT NULL,
  PRIMARY KEY (`Consumer ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumers`
--

LOCK TABLES `consumers` WRITE;
/*!40000 ALTER TABLE `consumers` DISABLE KEYS */;
INSERT INTO `consumers` VALUES ('C100','sam@gmail.com','sam','9d4e1e23bd5b727046a9e3b4b7db57bd8d6ee684'),('C101','tom@gmail.com','tom','f0578f1e7174b1a41c4ea8c6e17f7a8a3b88c92a'),('C102','jim@gmail.com','jim','8be52126a6fde450a7162a3651d589bb51e9579d'),('C103','sara@gmail.com','sara','de2a4d5751ab06dc4f987142db57c26d50925c8a'),('C104','mona@gmail.com','mona','2db4c1811f424582a90f8d7ee77995cf018d9443'),('C105','jimmy@gmail.com','jimmy','7ce0359f12857f2a90c7de465f40a95f01cb5da9'),('C106','jimmy@gmail.com','jimmy','d9f358966fec3af2c640a11876f4c6ccfe333649'),('C107','jason@gmail.com','jason','d9f358966fec3af2c640a11876f4c6ccfe333649'),('C108','daisy@gmail.com','daisy','d9f358966fec3af2c640a11876f4c6ccfe333649'),('C109','jerry@gmail.com','jerry','7ce0359f12857f2a90c7de465f40a95f01cb5da9'),('C110','mike@gmail.com','mike','7ce0359f12857f2a90c7de465f40a95f01cb5da9'),('C111','michael@gmail.com','michael','7ce0359f12857f2a90c7de465f40a95f01cb5da9'),('C112','mika@gmail.com','mika','7ce0359f12857f2a90c7de465f40a95f01cb5da9'),('C113','daren@gmail.com','daren','7ce0359f12857f2a90c7de465f40a95f01cb5da9'),('C114','dalle@gmail.com','dalle','7ce0359f12857f2a90c7de465f40a95f01cb5da9'),('C115','dalle@gmail.com','dalle','7ce0359f12857f2a90c7de465f40a95f01cb5da9'),('C116','dalla@gmail.com','dalla','7ce0359f12857f2a90c7de465f40a95f01cb5da9'),('C117','danny@gmail.com','danny','7ce0359f12857f2a90c7de465f40a95f01cb5da9'),('C120','tester@gmail.com','tester','7ce0359f12857f2a90c7de465f40a95f01cb5da9'),('C121','tester@gmail.com','tester','7ce0359f12857f2a90c7de465f40a95f01cb5da9'),('C122','tester2804@gmail.com','tester2804','c3a8fcf85a56dee95cff4ce7adf0bb9a4c18f747'),('C123','ameya@gmail.com','ameya','d5662d7353c6257f68cab2a3b0f758cc79b1ac5e'),('C124','ameya24@gmail.com','ameya24','c71d09a9d392f2e54e08793fefe0c22117dc62fd');
/*!40000 ALTER TABLE `consumers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28 17:18:46
