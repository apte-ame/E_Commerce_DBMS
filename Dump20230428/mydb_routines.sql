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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28 17:18:48
