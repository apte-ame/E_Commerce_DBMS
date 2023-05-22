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
-- Table structure for table `product inventory`
--

DROP TABLE IF EXISTS `product inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product inventory` (
  `Product ID` varchar(10) NOT NULL,
  `Warehouse ID` varchar(10) NOT NULL,
  `Quantity In Stock` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`Product ID`,`Warehouse ID`),
  KEY `Warehouse ID_idx` (`Warehouse ID`),
  CONSTRAINT `ProdInventory_ProdID` FOREIGN KEY (`Product ID`) REFERENCES `products` (`Product ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `ProdInventory_WarehouseID` FOREIGN KEY (`Warehouse ID`) REFERENCES `inventory` (`Warehouse ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product inventory`
--

LOCK TABLES `product inventory` WRITE;
/*!40000 ALTER TABLE `product inventory` DISABLE KEYS */;
INSERT INTO `product inventory` VALUES ('P100','W100',300),('P101','W102',360),('P102','W103',200),('P103','W100',570),('P104','W104',900),('P105','W100',220),('P106','W101',778),('P107','W101',800),('P108','W102',790),('P109','W105',590),('P110','W103',330),('P111','W104',320);
/*!40000 ALTER TABLE `product inventory` ENABLE KEYS */;
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
