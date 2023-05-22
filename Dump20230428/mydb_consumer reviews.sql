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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28 17:18:46
