-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: POS
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `POS`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `pos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `POS`;

--
-- Table structure for table `dummy`
--

DROP TABLE IF EXISTS `dummy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dummy` (
  `DUMMY` varchar(10) NOT NULL,
  UNIQUE KEY `idx_dummy` (`DUMMY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dummy`
--

LOCK TABLES `dummy` WRITE;
/*!40000 ALTER TABLE `dummy` DISABLE KEYS */;
INSERT INTO `dummy` VALUES ('X');
/*!40000 ALTER TABLE `dummy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pbcatcol`
--

DROP TABLE IF EXISTS `pbcatcol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pbcatcol` (
  `pbc_tnam` char(193) NOT NULL,
  `pbc_tid` int(11) DEFAULT NULL,
  `pbc_ownr` char(193) NOT NULL,
  `pbc_cnam` char(193) NOT NULL,
  `pbc_cid` smallint(6) DEFAULT NULL,
  `pbc_labl` varchar(254) DEFAULT NULL,
  `pbc_lpos` smallint(6) DEFAULT NULL,
  `pbc_hdr` varchar(254) DEFAULT NULL,
  `pbc_hpos` smallint(6) DEFAULT NULL,
  `pbc_jtfy` smallint(6) DEFAULT NULL,
  `pbc_mask` varchar(31) DEFAULT NULL,
  `pbc_case` smallint(6) DEFAULT NULL,
  `pbc_hght` smallint(6) DEFAULT NULL,
  `pbc_wdth` smallint(6) DEFAULT NULL,
  `pbc_ptrn` varchar(31) DEFAULT NULL,
  `pbc_bmap` char(1) DEFAULT NULL,
  `pbc_init` varchar(254) DEFAULT NULL,
  `pbc_cmnt` varchar(254) DEFAULT NULL,
  `pbc_edit` varchar(31) DEFAULT NULL,
  `pbc_tag` varchar(254) DEFAULT NULL,
  UNIQUE KEY `pbcatc_x` (`pbc_tnam`,`pbc_ownr`,`pbc_cnam`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pbcatcol`
--

LOCK TABLES `pbcatcol` WRITE;
/*!40000 ALTER TABLE `pbcatcol` DISABLE KEYS */;
INSERT INTO `pbcatcol` VALUES ('dummy',NULL,'ptm','DUMMY',NULL,NULL,0,NULL,0,23,NULL,0,65,417,NULL,'N',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `pbcatcol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pbcatedt`
--

DROP TABLE IF EXISTS `pbcatedt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pbcatedt` (
  `pbe_name` varchar(30) NOT NULL,
  `pbe_edit` varchar(254) DEFAULT NULL,
  `pbe_type` smallint(6) DEFAULT NULL,
  `pbe_cntr` int(11) DEFAULT NULL,
  `pbe_seqn` smallint(6) NOT NULL,
  `pbe_flag` int(11) DEFAULT NULL,
  `pbe_work` char(32) DEFAULT NULL,
  UNIQUE KEY `pbcate_x` (`pbe_name`,`pbe_seqn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pbcatedt`
--

LOCK TABLES `pbcatedt` WRITE;
/*!40000 ALTER TABLE `pbcatedt` DISABLE KEYS */;
INSERT INTO `pbcatedt` VALUES ('#####','#####',90,1,1,32,'10'),('###,###.00','###,###.00',90,1,1,32,'10'),('###-##-####','###-##-####',90,1,1,32,'00'),('DD/MM/YY','DD/MM/YY',90,1,1,32,'20'),('DD/MM/YY HH:MM:SS','DD/MM/YY HH:MM:SS',90,1,1,32,'40'),('DD/MM/YY HH:MM:SS:FFFFFF','DD/MM/YY HH:MM:SS:FFFFFF',90,1,1,32,'40'),('DD/MM/YYYY','DD/MM/YYYY',90,1,1,32,'20'),('DD/MM/YYYY HH:MM:SS','DD/MM/YYYY HH:MM:SS',90,1,1,32,'40'),('DD/MMM/YY','DD/MMM/YY',90,1,1,32,'20'),('DD/MMM/YY HH:MM:SS','DD/MMM/YY HH:MM:SS',90,1,1,32,'40'),('HH:MM:SS','HH:MM:SS',90,1,1,32,'30'),('HH:MM:SS:FFF','HH:MM:SS:FFF',90,1,1,32,'30'),('HH:MM:SS:FFFFFF','HH:MM:SS:FFFFFF',90,1,1,32,'30'),('JJJ/YY','JJJ/YY',90,1,1,32,'20'),('JJJ/YY HH:MM:SS','JJJ/YY HH:MM:SS',90,1,1,32,'40'),('JJJ/YYYY','JJJ/YYYY',90,1,1,32,'20'),('JJJ/YYYY HH:MM:SS','JJJ/YYYY HH:MM:SS',90,1,1,32,'40'),('MM/DD/YY','MM/DD/YY',90,1,1,32,'20'),('MM/DD/YY HH:MM:SS','MM/DD/YY HH:MM:SS',90,1,1,32,'40'),('MM/DD/YYYY','MM/DD/YYYY',90,1,1,32,'20'),('MM/DD/YYYY HH:MM:SS','MM/DD/YYYY HH:MM:SS',90,1,1,32,'40');
/*!40000 ALTER TABLE `pbcatedt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pbcatfmt`
--

DROP TABLE IF EXISTS `pbcatfmt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pbcatfmt` (
  `pbf_name` varchar(30) NOT NULL,
  `pbf_frmt` varchar(254) DEFAULT NULL,
  `pbf_type` smallint(6) DEFAULT NULL,
  `pbf_cntr` int(11) DEFAULT NULL,
  UNIQUE KEY `pbcatf_x` (`pbf_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pbcatfmt`
--

LOCK TABLES `pbcatfmt` WRITE;
/*!40000 ALTER TABLE `pbcatfmt` DISABLE KEYS */;
INSERT INTO `pbcatfmt` VALUES ('#,##0','#,##0',81,0),('#,##0.00','#,##0.00',81,0),('$#,##0.00;($#,##0.00)','$#,##0.00;($#,##0.00)',81,0),('$#,##0.00;[RED]($#,##0.00)','$#,##0.00;[RED]($#,##0.00)',81,0),('$#,##0;($#,##0)','$#,##0;($#,##0)',81,0),('$#,##0;[RED]($#,##0)','$#,##0;[RED]($#,##0)',81,0),('0','0',81,0),('0%','0%',81,0),('0.00','0.00',81,0),('0.00%','0.00%',81,0),('0.00E+00','0.00E+00',81,0),('d-mmm','d-mmm',84,0),('d-mmm-yy','d-mmm-yy',84,0),('h:mm AM/PM','h:mm AM/PM',84,0),('h:mm:ss','h:mm:ss',84,0),('h:mm:ss AM/PM','h:mm:ss AM/PM',84,0),('m/d/yy','m/d/yy',84,0),('m/d/yy h:mm','m/d/yy h:mm',84,0),('mmm-yy','mmm-yy',84,0),('[General]','[General]',81,0);
/*!40000 ALTER TABLE `pbcatfmt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pbcattbl`
--

DROP TABLE IF EXISTS `pbcattbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pbcattbl` (
  `pbt_tnam` char(193) NOT NULL,
  `pbt_tid` int(11) DEFAULT NULL,
  `pbt_ownr` char(193) NOT NULL,
  `pbd_fhgt` smallint(6) DEFAULT NULL,
  `pbd_fwgt` smallint(6) DEFAULT NULL,
  `pbd_fitl` char(1) DEFAULT NULL,
  `pbd_funl` char(1) DEFAULT NULL,
  `pbd_fchr` smallint(6) DEFAULT NULL,
  `pbd_fptc` smallint(6) DEFAULT NULL,
  `pbd_ffce` char(18) DEFAULT NULL,
  `pbh_fhgt` smallint(6) DEFAULT NULL,
  `pbh_fwgt` smallint(6) DEFAULT NULL,
  `pbh_fitl` char(1) DEFAULT NULL,
  `pbh_funl` char(1) DEFAULT NULL,
  `pbh_fchr` smallint(6) DEFAULT NULL,
  `pbh_fptc` smallint(6) DEFAULT NULL,
  `pbh_ffce` char(18) DEFAULT NULL,
  `pbl_fhgt` smallint(6) DEFAULT NULL,
  `pbl_fwgt` smallint(6) DEFAULT NULL,
  `pbl_fitl` char(1) DEFAULT NULL,
  `pbl_funl` char(1) DEFAULT NULL,
  `pbl_fchr` smallint(6) DEFAULT NULL,
  `pbl_fptc` smallint(6) DEFAULT NULL,
  `pbl_ffce` char(18) DEFAULT NULL,
  `pbt_cmnt` varchar(254) DEFAULT NULL,
  UNIQUE KEY `pbcatt_x` (`pbt_tnam`,`pbt_ownr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pbcattbl`
--

LOCK TABLES `pbcattbl` WRITE;
/*!40000 ALTER TABLE `pbcattbl` DISABLE KEYS */;
INSERT INTO `pbcattbl` VALUES ('dummy',NULL,'ptm',-10,400,'N','N',0,34,'Tahoma',-10,400,'N','N',0,34,'Tahoma',-10,400,'N','N',0,34,'Tahoma','');
/*!40000 ALTER TABLE `pbcattbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pbcatvld`
--

DROP TABLE IF EXISTS `pbcatvld`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pbcatvld` (
  `pbv_name` varchar(30) NOT NULL,
  `pbv_vald` varchar(254) DEFAULT NULL,
  `pbv_type` smallint(6) DEFAULT NULL,
  `pbv_cntr` int(11) DEFAULT NULL,
  `pbv_msg` varchar(254) DEFAULT NULL,
  UNIQUE KEY `pbcatv_x` (`pbv_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pbcatvld`
--

LOCK TABLES `pbcatvld` WRITE;
/*!40000 ALTER TABLE `pbcatvld` DISABLE KEYS */;
/*!40000 ALTER TABLE `pbcatvld` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbmcorp`
--

DROP TABLE IF EXISTS `tbmcorp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbmcorp` (
  `CORP_CODE` varchar(4) NOT NULL,
  `FCTRY_CODE` varchar(4) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `ADDRESS` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbmcorp`
--

LOCK TABLES `tbmcorp` WRITE;
/*!40000 ALTER TABLE `tbmcorp` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbmcorp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbmproductos`
--

DROP TABLE IF EXISTS `tbmproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbmproductos` (
  `corp_code` varchar(4) NOT NULL,
  `fctry_code` varchar(4) NOT NULL,
  `parts_code` varchar(100) NOT NULL,
  `oarts_nm` varchar(100) DEFAULT NULL,
  `parts_descr` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `barcode` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `reg_dttm` datetime DEFAULT NULL,
  `modif_dttm` datetime DEFAULT NULL,
  `reg_user` varchar(10) DEFAULT NULL,
  `modif_user` varchar(10) DEFAULT NULL,
  `cost_price` decimal(5,2) DEFAULT NULL,
  `sale_price` decimal(5,2) DEFAULT NULL,
  `onhand_qty` decimal(7,2) DEFAULT NULL,
  UNIQUE KEY `idx_tbmproductos` (`corp_code`,`fctry_code`,`parts_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbmproductos`
--

LOCK TABLES `tbmproductos` WRITE;
/*!40000 ALTER TABLE `tbmproductos` DISABLE KEYS */;
INSERT INTO `tbmproductos` VALUES (' ',' ',' ',' ',' ',' ',' ',' ','2023-11-23 19:08:55','2023-11-23 19:08:55',' ',' ',0.00,0.00,0.00),('MX','41','123','BOTELLA AGUA 600ML','BOTELLA DE AGUA CIEL','CIEL COCACOLA','123','REFRIGERADOR','2023-11-16 00:00:00','2023-11-16 00:00:00','ADMIN','ADMIN',5.00,9.00,10.00),('MX','41','233','1','1','1','1','1','2023-11-23 19:10:38','2023-11-23 19:10:38','1','1',6.00,3.00,1.00),('MX','41','321','BOTELLA AGUA 1LT','BOTELLA DE AGUA CIEL','CIEL COCACOLA','321','REFRIGERADOR','2023-11-16 00:00:00','2023-11-16 00:00:00','ADMIN','ADMIN',8.00,12.00,7.00),('MX','41','4','1','1','1','1','1','2023-11-23 19:12:50','2023-11-23 19:12:50','1','1',6.00,3.00,1.00);
/*!40000 ALTER TABLE `tbmproductos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'POS'
--

--
-- Dumping routines for database 'POS'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `SF_CREATE_PRODUCT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`ptm`@`%` FUNCTION `SF_CREATE_PRODUCT`(`as_corp` VARCHAR(4),  `as_fctry` VARCHAR(4),  `as_code` VARCHAR(100),  `as_name` VARCHAR(100),  `as_descr` VARCHAR(200),  `as_brand` VARCHAR(100),  `as_barcode` VARCHAR(100),  `as_location` VARCHAR(100),  `as_user` VARCHAR(100),  `as_stock` decimal,  `as_price` decimal,  `as_cost` decimal) RETURNS int(11)
proc:begin
	DECLARE li_ret int;
    
SELECT 
    COUNT(*)
inTO li_ret FROM
    tbmproductos
WHERE
    corp_code = as_corp
        AND fctry_code = as_fctry
        AND parts_code = as_code;
        
        if li_ret>1 then
        RETURN -1;
		end if;
    
	INSERT tbmproductos (corp_code, fctry_code, parts_code, oarts_nm, parts_descr, brand, barcode, location, reg_dttm, modif_dttm, reg_user, modif_user, cost_price, sale_price, onhand_qty)
	VALUES (as_corp,as_fctry,as_code,as_name,as_descr,as_brand,as_barcode,as_location,sysdate(),sysdate(),as_user,as_user,as_cost,as_price,as_stock);

RETURN 0;
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

-- Dump completed on 2023-11-23 21:23:28
