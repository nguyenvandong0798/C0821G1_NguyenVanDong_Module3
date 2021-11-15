-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: change_erd
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `don_dat_hang`
--

DROP TABLE IF EXISTS `don_dat_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `don_dat_hang` (
  `so_don_hang` int NOT NULL,
  `ngay_don_hang` varchar(20) DEFAULT NULL,
  `ma_nha_cung_cap` int DEFAULT NULL,
  PRIMARY KEY (`so_don_hang`),
  KEY `ma_nha_cung_cap` (`ma_nha_cung_cap`),
  CONSTRAINT `don_dat_hang_ibfk_1` FOREIGN KEY (`ma_nha_cung_cap`) REFERENCES `nha_cung_cap` (`ma_cung_cap`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `don_dat_hang`
--

LOCK TABLES `don_dat_hang` WRITE;
/*!40000 ALTER TABLE `don_dat_hang` DISABLE KEYS */;
/*!40000 ALTER TABLE `don_dat_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nha_cung_cap`
--

DROP TABLE IF EXISTS `nha_cung_cap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nha_cung_cap` (
  `ma_cung_cap` int NOT NULL,
  `ten_nha_cung_cap` varchar(30) DEFAULT NULL,
  `dia_chi` varchar(30) DEFAULT NULL,
  `sdt` int DEFAULT NULL,
  PRIMARY KEY (`ma_cung_cap`),
  KEY `sdt` (`sdt`),
  CONSTRAINT `nha_cung_cap_ibfk_1` FOREIGN KEY (`sdt`) REFERENCES `nha_cung_cap_sdt` (`sdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nha_cung_cap`
--

LOCK TABLES `nha_cung_cap` WRITE;
/*!40000 ALTER TABLE `nha_cung_cap` DISABLE KEYS */;
/*!40000 ALTER TABLE `nha_cung_cap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nha_cung_cap_sdt`
--

DROP TABLE IF EXISTS `nha_cung_cap_sdt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nha_cung_cap_sdt` (
  `sdt` int NOT NULL,
  PRIMARY KEY (`sdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nha_cung_cap_sdt`
--

LOCK TABLES `nha_cung_cap_sdt` WRITE;
/*!40000 ALTER TABLE `nha_cung_cap_sdt` DISABLE KEYS */;
/*!40000 ALTER TABLE `nha_cung_cap_sdt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieu_nhap`
--

DROP TABLE IF EXISTS `phieu_nhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieu_nhap` (
  `so_pn` int NOT NULL,
  `ngay_nhap` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`so_pn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieu_nhap`
--

LOCK TABLES `phieu_nhap` WRITE;
/*!40000 ALTER TABLE `phieu_nhap` DISABLE KEYS */;
/*!40000 ALTER TABLE `phieu_nhap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieu_vat_tu`
--

DROP TABLE IF EXISTS `phieu_vat_tu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieu_vat_tu` (
  `so_px` int NOT NULL,
  `ma_vat_tu` int NOT NULL,
  PRIMARY KEY (`so_px`,`ma_vat_tu`),
  KEY `ma_vat_tu` (`ma_vat_tu`),
  CONSTRAINT `phieu_vat_tu_ibfk_1` FOREIGN KEY (`so_px`) REFERENCES `phieu_xuat` (`so_px`),
  CONSTRAINT `phieu_vat_tu_ibfk_2` FOREIGN KEY (`ma_vat_tu`) REFERENCES `vat_tu` (`ma_vat_tu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieu_vat_tu`
--

LOCK TABLES `phieu_vat_tu` WRITE;
/*!40000 ALTER TABLE `phieu_vat_tu` DISABLE KEYS */;
/*!40000 ALTER TABLE `phieu_vat_tu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieu_xuat`
--

DROP TABLE IF EXISTS `phieu_xuat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieu_xuat` (
  `ngay_xuat` varchar(20) DEFAULT NULL,
  `so_px` int NOT NULL,
  PRIMARY KEY (`so_px`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieu_xuat`
--

LOCK TABLES `phieu_xuat` WRITE;
/*!40000 ALTER TABLE `phieu_xuat` DISABLE KEYS */;
/*!40000 ALTER TABLE `phieu_xuat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vat_tu`
--

DROP TABLE IF EXISTS `vat_tu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vat_tu` (
  `ma_vat_tu` int NOT NULL,
  `ten_vat_tu` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ma_vat_tu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vat_tu`
--

LOCK TABLES `vat_tu` WRITE;
/*!40000 ALTER TABLE `vat_tu` DISABLE KEYS */;
/*!40000 ALTER TABLE `vat_tu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vat_tu_don_dat_hang`
--

DROP TABLE IF EXISTS `vat_tu_don_dat_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vat_tu_don_dat_hang` (
  `ma_vat_tu` int NOT NULL,
  `so_don_hang` int NOT NULL,
  PRIMARY KEY (`ma_vat_tu`,`so_don_hang`),
  KEY `so_don_hang` (`so_don_hang`),
  CONSTRAINT `vat_tu_don_dat_hang_ibfk_1` FOREIGN KEY (`ma_vat_tu`) REFERENCES `vat_tu` (`ma_vat_tu`),
  CONSTRAINT `vat_tu_don_dat_hang_ibfk_2` FOREIGN KEY (`so_don_hang`) REFERENCES `don_dat_hang` (`so_don_hang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vat_tu_don_dat_hang`
--

LOCK TABLES `vat_tu_don_dat_hang` WRITE;
/*!40000 ALTER TABLE `vat_tu_don_dat_hang` DISABLE KEYS */;
/*!40000 ALTER TABLE `vat_tu_don_dat_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vat_tu_phieu_nhap`
--

DROP TABLE IF EXISTS `vat_tu_phieu_nhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vat_tu_phieu_nhap` (
  `ma_vat_tu` int NOT NULL,
  `so_pn` int NOT NULL,
  PRIMARY KEY (`ma_vat_tu`,`so_pn`),
  KEY `so_pn` (`so_pn`),
  CONSTRAINT `vat_tu_phieu_nhap_ibfk_1` FOREIGN KEY (`ma_vat_tu`) REFERENCES `vat_tu` (`ma_vat_tu`),
  CONSTRAINT `vat_tu_phieu_nhap_ibfk_2` FOREIGN KEY (`so_pn`) REFERENCES `phieu_nhap` (`so_pn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vat_tu_phieu_nhap`
--

LOCK TABLES `vat_tu_phieu_nhap` WRITE;
/*!40000 ALTER TABLE `vat_tu_phieu_nhap` DISABLE KEYS */;
/*!40000 ALTER TABLE `vat_tu_phieu_nhap` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-15 17:08:33
