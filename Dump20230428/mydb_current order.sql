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
-- Table structure for table `current order`
--

DROP TABLE IF EXISTS `current order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `current order` (
  `Order ID` int NOT NULL,
  `Consumer ID` varchar(10) NOT NULL,
  `Order Status` varchar(25) NOT NULL DEFAULT 'Initiated',
  `Soft Delete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Order ID`,`Soft Delete`),
  KEY `Consumer ID_idx` (`Consumer ID`),
  CONSTRAINT `CurrentOrder_ConsumerID` FOREIGN KEY (`Consumer ID`) REFERENCES `consumers` (`Consumer ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `current order`
--

LOCK TABLES `current order` WRITE;
/*!40000 ALTER TABLE `current order` DISABLE KEYS */;
INSERT INTO `current order` VALUES (2,'C101','Completed',0),(2,'C101','Initiated',1),(3,'C101','Completed',0),(3,'C101','Initiated',1),(4,'C101','Completed',0),(5,'C101','Completed',0),(6,'C101','Completed',0),(7,'C101','Completed',0),(8,'C101','Completed',0),(10,'C101','Completed',0),(10,'C101','Completed',1),(11,'C101','Completed',0),(11,'C101','Initiated',1),(12,'C101','Completed',0),(13,'C101','Completed',0),(14,'C101','Completed',0),(15,'C101','Completed',0),(16,'C101','Completed',0),(18,'C101','Completed',0),(19,'C102','Completed',0),(20,'C108','Completed',0),(21,'C108','Completed',0),(22,'C108','Completed',0),(23,'C112','Completed',0),(24,'C112','Completed',0),(25,'C120','Completed',0),(26,'C121','Completed',0),(27,'C121','Completed',0),(28,'C122','Completed',0),(31,'C123','Completed',0),(32,'C123','Completed',0),(33,'C123','Completed',0);
/*!40000 ALTER TABLE `current order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28 17:18:47
