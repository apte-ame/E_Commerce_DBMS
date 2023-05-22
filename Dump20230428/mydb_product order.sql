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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28 17:18:47
