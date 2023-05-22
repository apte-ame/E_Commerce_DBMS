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
-- Table structure for table `product discount`
--

DROP TABLE IF EXISTS `product discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product discount` (
  `Product ID` varchar(10) NOT NULL,
  `Discount ID` int NOT NULL DEFAULT '8',
  PRIMARY KEY (`Product ID`,`Discount ID`),
  KEY `Discount ID_idx` (`Discount ID`),
  CONSTRAINT `ProdDiscount_DiscountID` FOREIGN KEY (`Discount ID`) REFERENCES `discounts` (`Discount ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ProdDiscount_ProdID` FOREIGN KEY (`Product ID`) REFERENCES `products` (`Product ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product discount`
--

LOCK TABLES `product discount` WRITE;
/*!40000 ALTER TABLE `product discount` DISABLE KEYS */;
INSERT INTO `product discount` VALUES ('P100',1),('P103',1),('P101',2),('P102',2),('P101',3),('P102',3),('P102',4),('P103',5),('P100',6),('P109',7),('P101',8),('P103',8),('P104',8),('P105',8),('P106',8),('P107',8),('P108',8),('P110',8),('P111',8);
/*!40000 ALTER TABLE `product discount` ENABLE KEYS */;
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
