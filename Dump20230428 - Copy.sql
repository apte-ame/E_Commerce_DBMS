CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
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
-- Table structure for table `consumer reviews`
--

DROP TABLE IF EXISTS `consumer reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumer reviews` (
  `Review ID` varchar(10) NOT NULL,
  `Review` varchar(50) NOT NULL DEFAULT 'N/A',
  `Rating` int NOT NULL DEFAULT '0',
  `Consumer ID` varchar(10) NOT NULL,
  `Product ID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Review ID`),
  KEY `Consumer ID_idx` (`Consumer ID`),
  KEY `Product ID_idx` (`Product ID`),
  CONSTRAINT `ConsumerReviews_ConID` FOREIGN KEY (`Consumer ID`) REFERENCES `consumers` (`Consumer ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `ConsumerReviews_ProdID` FOREIGN KEY (`Product ID`) REFERENCES `products` (`Product ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer reviews`
--

LOCK TABLES `consumer reviews` WRITE;
/*!40000 ALTER TABLE `consumer reviews` DISABLE KEYS */;
INSERT INTO `consumer reviews` VALUES ('R100','Good Product',10,'C100','P100'),('R101','Needs Improvement',4,'C101','P101'),('R102','Nice quality',8,'C100','P101'),('R103','Defective',2,'C102','P100'),('R104','Comfortable for daily use',7,'C102','P101'),('R105','Good Product',9,'C104','P101'),('R106','Good priced deal',8,'C102','P102'),('R107','May improve on price',6,'C103','P102'),('R108','May improve on quality',5,'C103','P103'),('RC108','Good Product',8,'C108','P103'),('RC109','Great Product',8,'C102','P101'),('RC112','Super Classic Product',8,'C112','P103'),('RC120','Super Product',8,'C120','P103'),('RC121','Super Product',6,'C121','P105'),('RC122','Nice Product',7,'C122','P106'),('RC200','Great Product',8,'C108','P103'),('RC201','Great Product',8,'C108','P103'),('RC202','Super Product',8,'C108','P103'),('RC223','Super Cool Product',9,'C123','P104');
/*!40000 ALTER TABLE `consumer reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `rate_out_of_ten` BEFORE INSERT ON `consumer reviews` FOR EACH ROW BEGIN 
	IF (NEW.Rating > 10) OR (NEW.Rating < 0) THEN
	SIGNAL SQLSTATE '45000' 
	SET MESSAGE_TEXT = "Rating must be between 0 and 10 both inclusive";
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discounts` (
  `Discount ID` int NOT NULL AUTO_INCREMENT,
  `Description` varchar(50) NOT NULL DEFAULT 'N/A',
  `Percent Discount` float NOT NULL,
  `Valid From` datetime NOT NULL,
  `Valid Till` datetime NOT NULL,
  PRIMARY KEY (`Discount ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
INSERT INTO `discounts` VALUES (1,'Bonanza Offer',15,'2023-04-20 00:00:00','2023-04-23 00:00:00'),(2,'Extra Delight',12.12,'2023-05-13 00:00:00','2023-05-30 00:00:00'),(3,'Lightening Deals',3.33,'2023-07-06 00:00:00','2023-07-07 00:00:00'),(4,'Funky Offer',50,'2023-08-15 00:00:00','2023-08-27 00:00:00'),(5,'Freaky Deal',33.33,'2023-08-16 00:00:00','2023-08-17 00:00:00'),(6,'Surprise Discount',25,'2023-10-20 00:00:00','2023-10-30 00:00:00'),(7,'Fundoo Offer',16,'2023-04-21 00:00:00','2023-08-30 00:00:00'),(8,'No Discount',0,'2023-04-28 00:00:00','2300-04-30 00:00:00');
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `generate_bill`
--

DROP TABLE IF EXISTS `generate_bill`;
/*!50001 DROP VIEW IF EXISTS `generate_bill`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `generate_bill` AS SELECT 
 1 AS `Order ID`,
 1 AS `Consumer ID`,
 1 AS `Product ID`,
 1 AS `Product`,
 1 AS `Sell Price`,
 1 AS `Type`,
 1 AS `Placement Date`,
 1 AS `Discount`,
 1 AS `Quantity`,
 1 AS `Final Price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `generate_final_bill`
--

DROP TABLE IF EXISTS `generate_final_bill`;
/*!50001 DROP VIEW IF EXISTS `generate_final_bill`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `generate_final_bill` AS SELECT 
 1 AS `Order ID`,
 1 AS `Consumer ID`,
 1 AS `Product ID`,
 1 AS `Product`,
 1 AS `Sell Price`,
 1 AS `Type`,
 1 AS `Placement Date`,
 1 AS `Discount`,
 1 AS `Quantity`,
 1 AS `Final Price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `generate_final_bill_formatted`
--

DROP TABLE IF EXISTS `generate_final_bill_formatted`;
/*!50001 DROP VIEW IF EXISTS `generate_final_bill_formatted`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `generate_final_bill_formatted` AS SELECT 
 1 AS `Order ID`,
 1 AS `Consumer ID`,
 1 AS `Product ID`,
 1 AS `Product`,
 1 AS `Sell Price`,
 1 AS `Type`,
 1 AS `Placement Date`,
 1 AS `Discount`,
 1 AS `Quantity`,
 1 AS `Final Price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `Warehouse ID` varchar(10) NOT NULL,
  `Warehouse Name` varchar(25) NOT NULL,
  PRIMARY KEY (`Warehouse ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES ('W100','Warehouse1'),('W101','Warehouse2'),('W102','Warehouse3'),('W103','Warehouse4'),('W104','Warehouse5'),('W105','Warehouse6');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order history`
--

DROP TABLE IF EXISTS `order history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order history` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Order ID` int NOT NULL,
  `Placement Date` datetime NOT NULL,
  `Product ID` varchar(10) NOT NULL,
  `Payment ID` int NOT NULL,
  `Quantity` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `Order ID_idx` (`Order ID`),
  KEY `OrderHistory_ProductID_idx` (`Product ID`),
  KEY `OrderHistory_PaymentID_idx` (`Payment ID`),
  CONSTRAINT `OrderHistory_OrderID` FOREIGN KEY (`Order ID`) REFERENCES `product order` (`Order ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `OrderHistory_PaymentID` FOREIGN KEY (`Payment ID`) REFERENCES `product order` (`Payment ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `OrderHistory_ProductID` FOREIGN KEY (`Product ID`) REFERENCES `product order` (`Product ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order history`
--

LOCK TABLES `order history` WRITE;
/*!40000 ALTER TABLE `order history` DISABLE KEYS */;
INSERT INTO `order history` VALUES (1,2,'2023-07-06 11:37:21','P101',3,0),(2,3,'2023-04-18 20:00:18','P101',3,0),(3,4,'2023-04-18 20:10:30','P101',3,0),(4,5,'2023-04-18 20:24:36','P101',3,0),(5,6,'2023-04-18 20:43:54','P101',3,0),(10,7,'2023-04-18 21:27:45','P101',2,0),(13,8,'2023-04-19 16:08:40','P101',2,10),(19,10,'2023-04-19 16:43:09','P101',2,1000),(24,11,'2023-04-19 17:17:38','P101',2,20),(27,12,'2023-04-19 17:26:50','P101',2,20),(30,13,'2023-04-19 17:34:16','P101',2,963),(32,14,'2023-04-19 17:56:24','P101',2,10),(34,15,'2023-04-19 18:06:04','P101',2,10),(35,16,'2023-04-19 18:07:14','P101',2,30),(39,18,'2023-04-19 18:10:26','P101',2,150),(41,19,'2023-04-21 12:01:08','P101',2,100),(44,20,'2023-04-22 10:42:46','P103',2,30),(52,21,'2023-04-22 11:53:58','P101',2,10),(54,22,'2023-04-22 12:08:19','P101',2,10),(57,23,'2023-04-22 13:42:49','P101',2,10),(59,24,'2023-04-22 13:45:37','P108',2,10),(61,25,'2023-04-23 13:23:53','P101',2,10),(63,26,'2023-04-28 10:08:18','P105',2,10),(65,27,'2023-04-28 11:01:10','P105',2,190),(68,28,'2023-04-28 11:55:15','P106',1,22),(71,31,'2023-04-28 14:15:05','P104',1,22),(72,32,'2023-04-28 14:16:47','P104',1,23),(73,33,'2023-04-28 14:20:20','P104',3,5);
/*!40000 ALTER TABLE `order history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment methods`
--

DROP TABLE IF EXISTS `payment methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment methods` (
  `Payment ID` int NOT NULL AUTO_INCREMENT,
  `Type` varchar(25) NOT NULL,
  PRIMARY KEY (`Payment ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment methods`
--

LOCK TABLES `payment methods` WRITE;
/*!40000 ALTER TABLE `payment methods` DISABLE KEYS */;
INSERT INTO `payment methods` VALUES (1,'Internet Banking'),(2,'Credit Card'),(3,'Debit Card'),(4,'Cash');
/*!40000 ALTER TABLE `payment methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `payment_options`
--

DROP TABLE IF EXISTS `payment_options`;
/*!50001 DROP VIEW IF EXISTS `payment_options`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `payment_options` AS SELECT 
 1 AS `Payment ID`,
 1 AS `Type`*/;
SET character_set_client = @saved_cs_client;

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

--
-- Table structure for table `product order`
--

DROP TABLE IF EXISTS `product order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product order` (
  `Order ID` int NOT NULL,
  `Product ID` varchar(10) NOT NULL,
  `Payment ID` int NOT NULL,
  `Estimated Delivery Date` datetime NOT NULL,
  `Soft Delete` tinyint(1) NOT NULL DEFAULT '0',
  `Quantity` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`Order ID`,`Soft Delete`),
  KEY `Product ID_idx` (`Product ID`),
  KEY `Payment ID_idx` (`Payment ID`),
  KEY `ProductOrder_SoftDelete_idx` (`Soft Delete`),
  CONSTRAINT `ProductOrder_PaymentID` FOREIGN KEY (`Payment ID`) REFERENCES `payment methods` (`Payment ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `ProductOrder_ProdID` FOREIGN KEY (`Product ID`) REFERENCES `products` (`Product ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product order`
--

LOCK TABLES `product order` WRITE;
/*!40000 ALTER TABLE `product order` DISABLE KEYS */;
INSERT INTO `product order` VALUES (2,'P101',3,'2023-04-25 11:37:02',0,0),(2,'P101',1,'2023-04-25 10:18:15',1,0),(3,'P101',3,'2023-04-25 20:00:18',0,0),(3,'P101',3,'2023-04-25 11:17:26',1,0),(4,'P101',3,'2023-04-25 20:10:30',0,0),(5,'P101',3,'2023-04-25 20:24:36',0,0),(6,'P101',3,'2023-04-25 20:43:54',0,0),(7,'P101',2,'2023-04-25 21:27:45',0,0),(8,'P101',2,'2023-04-26 16:08:40',0,10),(10,'P101',2,'2023-04-26 16:43:09',0,1000),(10,'P101',1,'2023-04-25 00:39:55',1,0),(11,'P101',2,'2023-04-26 17:17:38',0,20),(12,'P101',2,'2023-04-26 17:26:50',0,20),(13,'P101',2,'2023-04-26 17:34:16',0,963),(14,'P101',2,'2023-04-26 17:56:24',0,10),(15,'P101',2,'2023-04-26 18:06:04',0,10),(16,'P101',2,'2023-04-26 18:07:14',0,30),(18,'P101',2,'2023-04-26 18:10:26',0,150),(19,'P101',2,'2023-04-28 12:01:08',0,100),(20,'P103',2,'2023-04-29 10:42:46',0,30),(21,'P101',2,'2023-04-29 11:53:58',0,10),(22,'P101',2,'2023-04-29 12:08:19',0,10),(23,'P101',2,'2023-04-29 13:42:49',0,10),(24,'P108',2,'2023-04-29 13:45:37',0,10),(25,'P101',2,'2023-04-30 13:23:53',0,10),(26,'P105',2,'2023-05-05 10:08:18',0,10),(27,'P105',2,'2023-05-05 11:01:10',0,190),(28,'P106',1,'2023-05-05 11:55:15',0,22),(31,'P104',1,'2023-05-05 14:15:05',0,22),(32,'P104',1,'2023-05-05 14:16:47',0,23),(33,'P104',3,'2023-05-05 14:20:20',0,5);
/*!40000 ALTER TABLE `product order` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `check_inventory` BEFORE INSERT ON `product order` FOR EACH ROW BEGIN 
	IF (mydb.get_product_inventory(NEW.`Product ID`) < NEW.`Quantity`) THEN
		SIGNAL SQLSTATE '45000' 
		SET MESSAGE_TEXT = "Product is out of stock";
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_inventory` AFTER INSERT ON `product order` FOR EACH ROW BEGIN 

		UPDATE `mydb`.`product inventory` 
        SET `mydb`.`product inventory`.`Quantity In Stock` =  `mydb`.`product inventory`.`Quantity In Stock` - NEW.`Quantity`
        WHERE `Product ID` = NEW.`Product ID` AND `Quantity In Stock` > 0
        LIMIT 1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `product_info`
--

DROP TABLE IF EXISTS `product_info`;
/*!50001 DROP VIEW IF EXISTS `product_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `product_info` AS SELECT 
 1 AS `Product ID`,
 1 AS `Name`,
 1 AS `Product Description`,
 1 AS `Discount Description`,
 1 AS `Percent Discount`,
 1 AS `Valid From`,
 1 AS `Valid Till`,
 1 AS `Product Price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `product_info_formatted`
--

DROP TABLE IF EXISTS `product_info_formatted`;
/*!50001 DROP VIEW IF EXISTS `product_info_formatted`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `product_info_formatted` AS SELECT 
 1 AS `Product ID`,
 1 AS `Name`,
 1 AS `Product Description`,
 1 AS `Discount Description`,
 1 AS `Percent Discount`,
 1 AS `Valid From`,
 1 AS `Valid Till`,
 1 AS `Product Price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `product_inventory`
--

DROP TABLE IF EXISTS `product_inventory`;
/*!50001 DROP VIEW IF EXISTS `product_inventory`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `product_inventory` AS SELECT 
 1 AS `Product ID`,
 1 AS `Product Name`,
 1 AS `Warehouse Name`,
 1 AS `Quantity In Stock`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `product_list`
--

DROP TABLE IF EXISTS `product_list`;
/*!50001 DROP VIEW IF EXISTS `product_list`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `product_list` AS SELECT 
 1 AS `Product ID`,
 1 AS `Name`,
 1 AS `Description`,
 1 AS `Sell Price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `product_list_formatted`
--

DROP TABLE IF EXISTS `product_list_formatted`;
/*!50001 DROP VIEW IF EXISTS `product_list_formatted`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `product_list_formatted` AS SELECT 
 1 AS `Product ID`,
 1 AS `Name`,
 1 AS `Description`,
 1 AS `Sell Price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `product_profit`
--

DROP TABLE IF EXISTS `product_profit`;
/*!50001 DROP VIEW IF EXISTS `product_profit`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `product_profit` AS SELECT 
 1 AS `Product ID`,
 1 AS `Name`,
 1 AS `Sell Price`,
 1 AS `Cost Price`,
 1 AS `Profit`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `product_profit_formatted`
--

DROP TABLE IF EXISTS `product_profit_formatted`;
/*!50001 DROP VIEW IF EXISTS `product_profit_formatted`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `product_profit_formatted` AS SELECT 
 1 AS `Product ID`,
 1 AS `Name`,
 1 AS `Sell Price`,
 1 AS `Cost Price`,
 1 AS `Profit`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `product_review`
--

DROP TABLE IF EXISTS `product_review`;
/*!50001 DROP VIEW IF EXISTS `product_review`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `product_review` AS SELECT 
 1 AS `Product ID`,
 1 AS `Product Name`,
 1 AS `Product Description`,
 1 AS `Product Price`,
 1 AS `Review`,
 1 AS `Rating`,
 1 AS `Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `product_review_formatted`
--

DROP TABLE IF EXISTS `product_review_formatted`;
/*!50001 DROP VIEW IF EXISTS `product_review_formatted`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `product_review_formatted` AS SELECT 
 1 AS `Product ID`,
 1 AS `Product Name`,
 1 AS `Product Description`,
 1 AS `Product Price`,
 1 AS `Review`,
 1 AS `Rating out of 10`,
 1 AS `Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `Product ID` varchar(10) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Description` varchar(100) NOT NULL DEFAULT 'N/A',
  `SKU` varchar(25) NOT NULL,
  `Sell Price` float NOT NULL,
  `Cost Price` float NOT NULL,
  PRIMARY KEY (`Product ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('P100','Wireless Headphone','Good bass and 30hr battery life','S100',56.56,10),('P101','Power Bank','10000 Watt fast charge','S101',29.99,2),('P102','Laptop Case','15.6 inch case','S102',17.45,1.67),('P103','Wireless Keyboard','Good connectivity and tactile keys','S103',79.99,12.55),('P104','Smart Watch','33 sports mode enabled watch','S104',52.22,13.36),('P105','Wireless Speaker','Full Dolby Atmos experience','S105',85.67,20.2),('P106','Bluetooth Headset','Good tones and 18hrs Battery ','S106',32.33,9.65),('P107','Hard Drive','1 TB super storage drive','S107',99.99,9.99),('P108','Wired Headset','Cool looking headset','S108',23.33,6.58),('P109','Duffle bag','NIce ergonomic designed bag','S109',58.89,12.99),('P110','Bluetooth Mic','Clear Voice Reception','S110',45.22,6.67),('P111','Apple Ipod','Super compact music system','S111',120,34.33);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_product_discount` AFTER INSERT ON `products` FOR EACH ROW BEGIN 

		INSERT INTO `mydb`.`product discount` (`Product ID`) VALUES
        (NEW.`Product ID`);
        
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'mydb'
--

--
-- Dumping routines for database 'mydb'
--
/*!50003 DROP FUNCTION IF EXISTS `get_product_inventory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_product_inventory`(product_id VARCHAR(10)) RETURNS int
    DETERMINISTIC
BEGIN 
	DECLARE my_sum INT;
	SELECT SUM(pdi.`Quantity In Stock`) INTO @my_sum FROM mydb.`product inventory` AS pdi
    WHERE pdi.`Product ID` = product_id
    GROUP BY pdi.`Product ID`;
    RETURN @my_sum;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_inventory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_inventory`(IN warehouse_id VARCHAR(10), IN warehouse_name VARCHAR(25))
BEGIN
      INSERT INTO `mydb`.`inventory` (`Warehouse ID`, `Warehouse Name`) VALUES (warehouse_id, warehouse_name);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_new_discount_entry` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_new_discount_entry`(IN discount_desc VARCHAR(50), IN percent_discount FLOAT, 
IN valid_from DATETIME, IN valid_till DATETIME)
BEGIN
      INSERT INTO `mydb`.`discounts` (`Description`, `Percent Discount`, `Valid From`, `Valid Till`) 
      VALUES (discount_desc, percent_discount, valid_from, valid_till);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_payment_method` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_payment_method`(IN payment_type VARCHAR(25))
BEGIN
      INSERT INTO `mydb`.`payment methods` (`Type`) VALUES (payment_type);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_product`(IN product_id VARCHAR(10), IN product_name VARCHAR(25),
 IN product_description VARCHAR(100), IN product_sku VARCHAR(25), IN sell_price FLOAT, IN cost_price FLOAT)
BEGIN
      INSERT INTO `mydb`.`products` (`Product ID`, `Name`, `Description`, `SKU`, `Sell Price`, `Cost Price`) 
      VALUES (product_id, product_name, product_description, product_sku, sell_price, cost_price);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_product_discount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_product_discount`(IN product_id VARCHAR(10), IN discount_id INT)
BEGIN
      INSERT INTO `mydb`.`product discount` (`Product ID`, `Discount ID`) VALUES (product_id, discount_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_product_inventory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_product_inventory`(IN product_id VARCHAR(10), IN warehouse_id VARCHAR(10), IN quantity_in_stock INT)
BEGIN
      INSERT INTO `mydb`.`product inventory` (`Product ID`, `Warehouse ID`, `Quantity In Stock`) VALUES (product_id, warehouse_id, quantity_in_stock);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `check_consumer_by_id_pass` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `check_consumer_by_id_pass`(IN consumer_id VARCHAR(10), IN consumer_password VARCHAR(160), OUT temp INT)
BEGIN
      SELECT count(*) INTO temp FROM mydb.consumers WHERE `Consumer ID` = consumer_id AND `Password` = SHA1(consumer_password);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_consumer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_consumer`(IN consumer_id VARCHAR(10), IN email VARCHAR(25), IN username VARCHAR(25), IN consumer_password VARCHAR(160))
BEGIN
      INSERT INTO `mydb`.`consumers` (`Consumer ID`, `Email Address`, `Username`, `Password`) 
      VALUES (consumer_id, email, LOWER(username), SHA1(consumer_password));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_product_review` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_product_review`(IN review_id VARCHAR(10), IN review VARCHAR(50), IN rating INT, IN consumer_id VARCHAR(10), IN consumer_password VARCHAR(160), IN product_id VARCHAR(10))
BEGIN
DECLARE `_rollback` BOOL DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_rollback` = 1;
    START TRANSACTION;
    CALL mydb.check_consumer_by_id_pass(consumer_id, consumer_password, @temp1);
    IF @temp1=0 THEN
		ROLLBACK;
			SELECT "Transaction Failed" AS `Message`;
	ELSE
		INSERT INTO `mydb`.`consumer reviews` (`Review ID`, `Review`, `Rating`, `Consumer ID`, `Product ID`)
		VALUES (review_id, review, rating, consumer_id, product_id);
		CALL mydb.get_product_review_by_product_id(product_id);
		IF `_rollback` THEN
			ROLLBACK;
			SELECT "Transaction Failed" AS `Message`;
		ELSE
			COMMIT;
		END IF;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_user_and_grant_perm` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_user_and_grant_perm`(IN consumer_id VARCHAR(10), IN email VARCHAR(25), IN userName VARCHAR(25), IN consumer_password VARCHAR(160))
BEGIN
	DECLARE `_rollback` BOOL DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_rollback` = 1;
    START TRANSACTION;
	CALL mydb.create_consumer(consumer_id, email, userName, consumer_password);
	SET @query1 = CONCAT('
		CREATE USER "',LOWER(userName),'"@"localhost" IDENTIFIED BY "',consumer_password,'" '
		);
	PREPARE stmt FROM @query1; EXECUTE stmt; DEALLOCATE PREPARE stmt;

	SET @query2 = CONCAT('
		REVOKE ALL PRIVILEGES, GRANT OPTION FROM "',LOWER(userName),'"@"localhost"'
		);
	PREPARE stmt FROM @query2; EXECUTE stmt; DEALLOCATE PREPARE stmt;

	SET @query3 = CONCAT('
		GRANT SELECT (`Consumer ID`,`Email Address`,`Username`) ON mydb.consumers TO "',LOWER(userName),'"@"localhost"'
		);
	PREPARE stmt FROM @query3; EXECUTE stmt; DEALLOCATE PREPARE stmt;
    
    SET @query4 = CONCAT('
		GRANT EXECUTE ON PROCEDURE mydb.get_consumer_by_id_pass TO "',LOWER(userName),'"@"localhost"'
		);
	PREPARE stmt FROM @query4; EXECUTE stmt; DEALLOCATE PREPARE stmt;
    
    SET @query5 = CONCAT('
		GRANT EXECUTE ON PROCEDURE mydb.get_product_review_by_product_id TO "',LOWER(userName),'"@"localhost"'
		);
	PREPARE stmt FROM @query5; EXECUTE stmt; DEALLOCATE PREPARE stmt;
    
    SET @query6 = CONCAT('
		GRANT EXECUTE ON PROCEDURE mydb.get_formatted_receipt_by_consumer_id_pass TO "',LOWER(userName),'"@"localhost"'
		);
	PREPARE stmt FROM @query6; EXECUTE stmt; DEALLOCATE PREPARE stmt;
    
    SET @query7 = CONCAT('
		GRANT EXECUTE ON PROCEDURE mydb.get_formatted_latest_receipt_by_consumer_id_pass TO "',LOWER(userName),'"@"localhost"'
		);
	PREPARE stmt FROM @query7; EXECUTE stmt; DEALLOCATE PREPARE stmt;
    
    SET @query8 = CONCAT('
		GRANT EXECUTE ON PROCEDURE mydb.new_transaction_v3 TO "',LOWER(userName),'"@"localhost"'
		);
	PREPARE stmt FROM @query8; EXECUTE stmt; DEALLOCATE PREPARE stmt;
    
    SET @query9 = CONCAT('
		GRANT EXECUTE ON PROCEDURE mydb.create_product_review TO "',LOWER(userName),'"@"localhost"'
		);
	PREPARE stmt FROM @query9; EXECUTE stmt; DEALLOCATE PREPARE stmt;
    
    SET @query10 = CONCAT('
		GRANT SELECT ON mydb.product_info TO "',LOWER(userName),'"@"localhost"'
		);
	PREPARE stmt FROM @query10; EXECUTE stmt; DEALLOCATE PREPARE stmt;
    
    SET @query11 = CONCAT('
		GRANT SELECT ON mydb.product_review TO "',LOWER(userName),'"@"localhost"'
		);
	PREPARE stmt FROM @query11; EXECUTE stmt; DEALLOCATE PREPARE stmt;
    
    SET @query12 = CONCAT('
		GRANT SELECT ON mydb.payment_options TO "',LOWER(userName),'"@"localhost"'
		);
	PREPARE stmt FROM @query12; EXECUTE stmt; DEALLOCATE PREPARE stmt;
    
    SET @query13 = CONCAT('
		GRANT SELECT ON mydb.product_list TO "',LOWER(userName),'"@"localhost"'
		);
	PREPARE stmt FROM @query13; EXECUTE stmt; DEALLOCATE PREPARE stmt;
    
--     SET @query14 = CONCAT('
-- 		GRANT SELECT ON mydb.generate_final_bill_formatted TO "',LOWER(userName),'"@"localhost"'
-- 		);
-- 	PREPARE stmt FROM @query14; EXECUTE stmt; DEALLOCATE PREPARE stmt;
    
    SET @query15 = CONCAT('
		GRANT SELECT ON mydb.product_info_formatted TO "',LOWER(userName),'"@"localhost"'
		);
	PREPARE stmt FROM @query15; EXECUTE stmt; DEALLOCATE PREPARE stmt;
    
    SET @query16 = CONCAT('
		GRANT SELECT ON mydb.product_list_formatted TO "',LOWER(userName),'"@"localhost"'
		);
	PREPARE stmt FROM @query16; EXECUTE stmt; DEALLOCATE PREPARE stmt;
    
    SET @query17 = CONCAT('
		GRANT SELECT ON mydb.product_profit_formatted TO "',LOWER(userName),'"@"localhost"'
		);
	PREPARE stmt FROM @query17; EXECUTE stmt; DEALLOCATE PREPARE stmt;
    
    SET @query18 = CONCAT('
		GRANT SELECT ON mydb.product_review_formatted TO "',LOWER(userName),'"@"localhost"'
		);
	PREPARE stmt FROM @query18; EXECUTE stmt; DEALLOCATE PREPARE stmt;
    IF `_rollback` THEN
			ROLLBACK;
			SELECT "Transaction Failed" AS `Message`;
		ELSE
			COMMIT;
	END IF;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_consumer_by_id_pass` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_consumer_by_id_pass`(IN consumer_id VARCHAR(10), IN consumer_password VARCHAR(160))
BEGIN
      SELECT `Consumer ID`,`Email Address`,Username FROM mydb.consumers WHERE `Consumer ID` = consumer_id AND `Password` = SHA1(consumer_password);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_formatted_latest_receipt_by_consumer_id_pass` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_formatted_latest_receipt_by_consumer_id_pass`(IN consumer_id VARCHAR(10), IN consumer_password VARCHAR(160))
BEGIN
DECLARE `_rollback` BOOL DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_rollback` = 1;
    START TRANSACTION;
    CALL mydb.check_consumer_by_id_pass(consumer_id, consumer_password, @temp1);
    IF @temp1=0 THEN
		ROLLBACK;
			SELECT "Transaction Failed" AS `Message`;
	ELSE
		CALL get_formatted_latest_receipt_by_customer_id(consumer_id);
		IF `_rollback` THEN
			ROLLBACK;
			SELECT "Transaction Failed" AS `Message`;
		ELSE
			COMMIT;
		END IF;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_formatted_latest_receipt_by_customer_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_formatted_latest_receipt_by_customer_id`(IN customer_id VARCHAR(10))
BEGIN
      SELECT * FROM mydb.generate_final_bill_formatted AS temp WHERE temp.`Consumer ID` = customer_id 
      ORDER BY temp.`Placement Date` DESC
      LIMIT 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_formatted_receipt_by_consumer_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_formatted_receipt_by_consumer_id`(IN consumer_id VARCHAR(10))
BEGIN
      SELECT * FROM mydb.generate_final_bill_formatted AS temp WHERE temp.`Consumer ID` = consumer_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_formatted_receipt_by_consumer_id_pass` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_formatted_receipt_by_consumer_id_pass`(IN consumer_id VARCHAR(10), IN consumer_password VARCHAR(160))
BEGIN
DECLARE `_rollback` BOOL DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_rollback` = 1;
    START TRANSACTION;
    CALL mydb.check_consumer_by_id_pass(consumer_id, consumer_password, @temp1);
    IF @temp1=0 THEN
		ROLLBACK;
			SELECT "Transaction Failed" AS `Message`;
	ELSE
		CALL get_formatted_receipt_by_consumer_id(consumer_id);
		IF `_rollback` THEN
			ROLLBACK;
			SELECT "Transaction Failed" AS `Message`;
		ELSE
			COMMIT;
		END IF;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_latest_receipt_by_consumer_id_pass` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_latest_receipt_by_consumer_id_pass`(IN consumer_id VARCHAR(10), IN consumer_password VARCHAR(160))
BEGIN
DECLARE `_rollback` BOOL DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_rollback` = 1;
    START TRANSACTION;
    CALL mydb.check_consumer_by_id_pass(consumer_id, consumer_password, @temp1);
    IF @temp1=0 THEN
		ROLLBACK;
			SELECT "Transaction Failed" AS `Message`;
	ELSE
		CALL get_latest_receipt_by_customer_id(consumer_id);
		IF `_rollback` THEN
			ROLLBACK;
			SELECT "Transaction Failed" AS `Message`;
		ELSE
			COMMIT;
		END IF;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_latest_receipt_by_customer_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_latest_receipt_by_customer_id`(IN customer_id VARCHAR(10))
BEGIN
      SELECT * FROM mydb.generate_final_bill AS temp WHERE temp.`Consumer ID` = customer_id 
      ORDER BY temp.`Placement Date` DESC
      LIMIT 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_product_review_by_product_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_product_review_by_product_id`(IN product_id VARCHAR(10))
BEGIN
      SELECT * FROM mydb.product_review AS temp WHERE temp.`Product ID` = product_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_profit_by_product_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_profit_by_product_id`(IN product_id VARCHAR(10))
BEGIN
      SELECT * FROM mydb.product_profit AS temp WHERE temp.`Product ID` = product_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_receipt_by_consumer_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_receipt_by_consumer_id`(IN consumer_id VARCHAR(10))
BEGIN
      SELECT * FROM mydb.generate_final_bill AS temp WHERE temp.`Consumer ID` = consumer_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_receipt_by_consumer_id_pass` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_receipt_by_consumer_id_pass`(IN consumer_id VARCHAR(10), IN consumer_password VARCHAR(160))
BEGIN
DECLARE `_rollback` BOOL DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_rollback` = 1;
    START TRANSACTION;
    CALL mydb.check_consumer_by_id_pass(consumer_id, consumer_password, @temp1);
    IF @temp1=0 THEN
		ROLLBACK;
			SELECT "Transaction Failed" AS `Message`;
	ELSE
		CALL get_receipt_by_consumer_id(consumer_id);
		IF `_rollback` THEN
			ROLLBACK;
			SELECT "Transaction Failed" AS `Message`;
		ELSE
			COMMIT;
		END IF;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_transaction` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_transaction`(IN customer_id VARCHAR(10), IN order_id INT, IN product_id VARCHAR(10), IN payment_id INT, IN quantity INT)
BEGIN
    DECLARE `_rollback` BOOL DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_rollback` = 1;
    START TRANSACTION;
    CALL mydb.start_order(order_id, customer_id);
    CALL mydb.select_product_and_pay(order_id,product_id,payment_id,quantity);
    CALL mydb.update_order_status(order_id);
    CALL mydb.update_order_history(order_id,product_id,payment_id,quantity);
    IF `_rollback` THEN
        ROLLBACK;
        SELECT "Transaction Failed" AS `Message`;
    ELSE
        COMMIT;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_transaction_v2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_transaction_v2`(IN customer_id VARCHAR(10),IN customer_password VARCHAR(160), IN order_id INT, IN product_id VARCHAR(10), IN payment_id INT, IN quantity INT)
BEGIN
    DECLARE `_rollback` BOOL DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_rollback` = 1;
    START TRANSACTION;
    CALL mydb.get_consumer_by_id_pass(customer_id, customer_password);
    CALL mydb.start_order(order_id, customer_id);
    CALL mydb.select_product_and_pay(order_id,product_id,payment_id,quantity);
    CALL mydb.update_order_status(order_id);
    CALL mydb.update_order_history(order_id,product_id,payment_id,quantity);
    IF `_rollback` THEN
        ROLLBACK;
        SELECT "Transaction Failed" AS `Message`;
    ELSE
        COMMIT;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_transaction_v3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_transaction_v3`(IN customer_id VARCHAR(10),IN customer_password VARCHAR(160), IN order_id INT, IN product_id VARCHAR(10), IN payment_id INT, IN quantity INT)
BEGIN
    DECLARE `_rollback` BOOL DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_rollback` = 1;
    START TRANSACTION;
    CALL mydb.check_consumer_by_id_pass(customer_id, customer_password, @temp1);
    IF @temp1=0 THEN
		ROLLBACK;
			SELECT "Transaction Failed" AS `Message`;
	ELSE
		CALL mydb.start_order(order_id, customer_id);
		CALL mydb.select_product_and_pay(order_id,product_id,payment_id,quantity);
		CALL mydb.update_order_status(order_id);
		CALL mydb.update_order_history(order_id,product_id,payment_id,quantity);
		IF `_rollback` THEN
			ROLLBACK;
			SELECT "Transaction Failed" AS `Message`;
		ELSE
			COMMIT;
		END IF;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `select_product_and_pay` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_product_and_pay`(IN order_id INT, IN product_id VARCHAR(10), IN payment_id INT, IN quantity INT)
BEGIN
   INSERT INTO mydb.`product order` (`Order ID`, `Product ID`, `Payment ID`, `Estimated Delivery Date`, `Quantity`) 
   VALUES (order_id, product_id, payment_id, DATE_ADD(sysdate(), INTERVAL 7 DAY), quantity);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `soft_delete_current_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `soft_delete_current_order`(IN order_id INT)
BEGIN
   UPDATE `mydb`.`current order` SET `Soft Delete` = 1 WHERE `Order ID` = order_id AND `Soft Delete`= 0;
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `soft_delete_product_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `soft_delete_product_order`(IN order_id INT, IN product_id VARCHAR(10), IN payment_id INT)
BEGIN
      UPDATE `mydb`.`product order` SET `Soft Delete` = 1 
      WHERE `Order ID` = order_id AND `Product ID` = product_id AND `Payment ID` = payment_id AND `Soft Delete`= 0;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `start_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `start_order`(IN order_id INT, IN customer_id VARCHAR(10))
BEGIN
   INSERT INTO mydb.`current order` (`Order ID`,`Consumer ID`,`Order Status`)
   VALUES (order_id, customer_id, 'Initiated');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_order_history` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_order_history`(IN order_id INT, IN product_id VARCHAR(10), IN payment_id INT, IN quantity INT)
BEGIN
      INSERT INTO `mydb`.`order history` (`Order ID`, `Placement Date`,`Product ID`,`Payment ID`,`Quantity`) 
      VALUES (order_id, sysdate(), product_id, payment_id, quantity);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_order_status` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_order_status`(IN order_id INT)
BEGIN
      UPDATE `mydb`.`current order` 
      SET `Order Status` = 'Completed'
      WHERE `mydb`.`current order`.`Order ID`= order_id AND `mydb`.`current order`.`Soft Delete` = 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `generate_bill`
--

/*!50001 DROP VIEW IF EXISTS `generate_bill`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `generate_bill` AS select `o`.`Order ID` AS `Order ID`,`o`.`Consumer ID` AS `Consumer ID`,`pr`.`Product ID` AS `Product ID`,`pr`.`Name` AS `Product`,`pr`.`Sell Price` AS `Sell Price`,`pm`.`Type` AS `Type`,`oh`.`Placement Date` AS `Placement Date`,(case when (`oh`.`Placement Date` between `d2`.`Valid From` and `d2`.`Valid Till`) then `d2`.`Percent Discount` else 0 end) AS `Discount`,`pro`.`Quantity` AS `Quantity`,(case when (`oh`.`Placement Date` between `d2`.`Valid From` and `d2`.`Valid Till`) then ((`pr`.`Sell Price` - (`pr`.`Sell Price` * (`d2`.`Percent Discount` / 100))) * `pro`.`Quantity`) else (`pr`.`Sell Price` * `pro`.`Quantity`) end) AS `Final Price` from (((((((`product order` `pro` join `products` `pr`) join `current order` `o`) join `payment methods` `pm`) join `order history` `oh`) join `product discount` `prd`) join `discounts` `d2`) join `consumers` `c` on(((`pro`.`Product ID` = `pr`.`Product ID`) and (`pro`.`Product ID` = `prd`.`Product ID`) and (`pro`.`Order ID` = `o`.`Order ID`) and (`o`.`Consumer ID` = `c`.`Consumer ID`) and (`pro`.`Payment ID` = `pm`.`Payment ID`) and (`pro`.`Order ID` = `oh`.`Order ID`) and (`pro`.`Payment ID` = `oh`.`Payment ID`) and (`pro`.`Product ID` = `oh`.`Product ID`) and (`prd`.`Discount ID` = `d2`.`Discount ID`)))) where (`pro`.`Soft Delete` = 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `generate_final_bill`
--

/*!50001 DROP VIEW IF EXISTS `generate_final_bill`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `generate_final_bill` AS select `temp`.`Order ID` AS `Order ID`,`temp`.`Consumer ID` AS `Consumer ID`,`temp`.`Product ID` AS `Product ID`,`temp`.`Product` AS `Product`,`temp`.`Sell Price` AS `Sell Price`,`temp`.`Type` AS `Type`,`temp`.`Placement Date` AS `Placement Date`,max(`temp`.`Discount`) AS `Discount`,`temp`.`Quantity` AS `Quantity`,min(`temp`.`Final Price`) AS `Final Price` from `generate_bill` `temp` group by `temp`.`Order ID`,`temp`.`Consumer ID`,`temp`.`Product ID`,`temp`.`Type`,`temp`.`Quantity`,`temp`.`Sell Price`,`temp`.`Placement Date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `generate_final_bill_formatted`
--

/*!50001 DROP VIEW IF EXISTS `generate_final_bill_formatted`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `generate_final_bill_formatted` AS select `temp`.`Order ID` AS `Order ID`,`temp`.`Consumer ID` AS `Consumer ID`,`temp`.`Product ID` AS `Product ID`,`temp`.`Product` AS `Product`,concat('$',convert(format(`temp`.`Sell Price`,2,'en_US') using utf8mb4)) AS `Sell Price`,`temp`.`Type` AS `Type`,`temp`.`Placement Date` AS `Placement Date`,concat(convert(format(max(`temp`.`Discount`),2,'en_US') using utf8mb4),'%') AS `Discount`,`temp`.`Quantity` AS `Quantity`,concat('$',convert(format(min(`temp`.`Final Price`),2,'en_US') using utf8mb4)) AS `Final Price` from `generate_bill` `temp` group by `temp`.`Order ID`,`temp`.`Consumer ID`,`temp`.`Product ID`,`temp`.`Type`,`temp`.`Quantity`,`temp`.`Sell Price`,`temp`.`Placement Date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `payment_options`
--

/*!50001 DROP VIEW IF EXISTS `payment_options`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `payment_options` AS select `payment methods`.`Payment ID` AS `Payment ID`,`payment methods`.`Type` AS `Type` from `payment methods` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `product_info`
--

/*!50001 DROP VIEW IF EXISTS `product_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `product_info` AS select `pr`.`Product ID` AS `Product ID`,`pr`.`Name` AS `Name`,`pr`.`Description` AS `Product Description`,`d`.`Description` AS `Discount Description`,`d`.`Percent Discount` AS `Percent Discount`,`d`.`Valid From` AS `Valid From`,`d`.`Valid Till` AS `Valid Till`,`pr`.`Sell Price` AS `Product Price` from ((`product discount` `prd` join `products` `pr`) join `discounts` `d` on(((`pr`.`Product ID` = `prd`.`Product ID`) and (`d`.`Discount ID` = `prd`.`Discount ID`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `product_info_formatted`
--

/*!50001 DROP VIEW IF EXISTS `product_info_formatted`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `product_info_formatted` AS select `pr`.`Product ID` AS `Product ID`,`pr`.`Name` AS `Name`,`pr`.`Description` AS `Product Description`,`d`.`Description` AS `Discount Description`,concat(convert(format(`d`.`Percent Discount`,2,'en_US') using utf8mb4),'%') AS `Percent Discount`,`d`.`Valid From` AS `Valid From`,`d`.`Valid Till` AS `Valid Till`,concat('$',convert(format(`pr`.`Sell Price`,2,'en_US') using utf8mb4)) AS `Product Price` from ((`product discount` `prd` join `products` `pr`) join `discounts` `d` on(((`pr`.`Product ID` = `prd`.`Product ID`) and (`d`.`Discount ID` = `prd`.`Discount ID`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `product_inventory`
--

/*!50001 DROP VIEW IF EXISTS `product_inventory`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `product_inventory` AS select `p`.`Product ID` AS `Product ID`,`p`.`Name` AS `Product Name`,`i`.`Warehouse Name` AS `Warehouse Name`,`pi`.`Quantity In Stock` AS `Quantity In Stock` from ((`products` `p` join `product inventory` `pi`) join `inventory` `i` on(((`p`.`Product ID` = `pi`.`Product ID`) and (`i`.`Warehouse ID` = `pi`.`Warehouse ID`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `product_list`
--

/*!50001 DROP VIEW IF EXISTS `product_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `product_list` AS select `products`.`Product ID` AS `Product ID`,`products`.`Name` AS `Name`,`products`.`Description` AS `Description`,`products`.`Sell Price` AS `Sell Price` from `products` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `product_list_formatted`
--

/*!50001 DROP VIEW IF EXISTS `product_list_formatted`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `product_list_formatted` AS select `products`.`Product ID` AS `Product ID`,`products`.`Name` AS `Name`,`products`.`Description` AS `Description`,concat('$',convert(format(`products`.`Sell Price`,2,'en_US') using utf8mb4)) AS `Sell Price` from `products` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `product_profit`
--

/*!50001 DROP VIEW IF EXISTS `product_profit`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `product_profit` AS select `pr`.`Product ID` AS `Product ID`,`pr`.`Name` AS `Name`,`pr`.`Sell Price` AS `Sell Price`,`pr`.`Cost Price` AS `Cost Price`,sum(((`pr`.`Sell Price` - `pr`.`Cost Price`) * `oh`.`Quantity`)) AS `Profit` from (`products` `pr` join `order history` `oh` on((`pr`.`Product ID` = `oh`.`Product ID`))) group by `pr`.`Product ID`,`pr`.`Name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `product_profit_formatted`
--

/*!50001 DROP VIEW IF EXISTS `product_profit_formatted`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `product_profit_formatted` AS select `pr`.`Product ID` AS `Product ID`,`pr`.`Name` AS `Name`,concat('$',convert(format(`pr`.`Sell Price`,2,'en_US') using utf8mb4)) AS `Sell Price`,concat('$',convert(format(`pr`.`Cost Price`,2,'en_US') using utf8mb4)) AS `Cost Price`,concat('$',convert(format(sum(((`pr`.`Sell Price` - `pr`.`Cost Price`) * `oh`.`Quantity`)),2,'en_US') using utf8mb4)) AS `Profit` from (`products` `pr` join `order history` `oh` on((`pr`.`Product ID` = `oh`.`Product ID`))) group by `pr`.`Product ID`,`pr`.`Name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `product_review`
--

/*!50001 DROP VIEW IF EXISTS `product_review`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `product_review` AS select `pr`.`Product ID` AS `Product ID`,`pr`.`Name` AS `Product Name`,`pr`.`Description` AS `Product Description`,`pr`.`Sell Price` AS `Product Price`,`cr`.`Review` AS `Review`,`cr`.`Rating` AS `Rating`,`c`.`Username` AS `Name` from ((`products` `pr` join `consumers` `c`) join `consumer reviews` `cr` on(((`pr`.`Product ID` = `cr`.`Product ID`) and (`c`.`Consumer ID` = `cr`.`Consumer ID`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `product_review_formatted`
--

/*!50001 DROP VIEW IF EXISTS `product_review_formatted`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `product_review_formatted` AS select `pr`.`Product ID` AS `Product ID`,`pr`.`Name` AS `Product Name`,`pr`.`Description` AS `Product Description`,concat('$',convert(format(`pr`.`Sell Price`,2,'en_US') using utf8mb4)) AS `Product Price`,`cr`.`Review` AS `Review`,`cr`.`Rating` AS `Rating out of 10`,`c`.`Username` AS `Name` from ((`products` `pr` join `consumers` `c`) join `consumer reviews` `cr` on(((`pr`.`Product ID` = `cr`.`Product ID`) and (`c`.`Consumer ID` = `cr`.`Consumer ID`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28 17:53:34
