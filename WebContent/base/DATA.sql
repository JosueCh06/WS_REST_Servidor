CREATE DATABASE  IF NOT EXISTS `instituto_2021_DAMI` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `instituto_2021_DAMI`;
-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: instituto_2019_22
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `tb_distrito`
--

DROP TABLE IF EXISTS `tb_distrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_distrito` (
  `cod_dis` int NOT NULL,
  `nom_dis` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cod_dis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_distrito`
--

LOCK TABLES `tb_distrito` WRITE;
/*!40000 ALTER TABLE `tb_distrito` DISABLE KEYS */;
INSERT INTO `tb_distrito` VALUES (1,'Comas'),(2,'Independencia'),(3,'Surco'),(4,'Lo Olivos'),(5,'La Molina'),(6,'Miraflores');
/*!40000 ALTER TABLE `tb_distrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_docente`
--

DROP TABLE IF EXISTS `tb_docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_docente` (
  `cod_doc` int NOT NULL AUTO_INCREMENT,
  `nom_doc` varchar(30) DEFAULT NULL,
  `pat_doc` varchar(30) DEFAULT NULL,
  `mat_doc` varchar(30) DEFAULT NULL,
  `sexo_doc` varchar(15) DEFAULT NULL,
  `num_hijo` int DEFAULT NULL,
  `sue_doc` double DEFAULT NULL,
  `dir_doc` varchar(45) DEFAULT NULL,
  `cod_dis` int DEFAULT NULL,
  PRIMARY KEY (`cod_doc`),
  KEY `pk05` (`cod_dis`),
  CONSTRAINT `pk05` FOREIGN KEY (`cod_dis`) REFERENCES `tb_distrito` (`cod_dis`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_docente`
--

LOCK TABLES `tb_docente` WRITE;
/*!40000 ALTER TABLE `tb_docente` DISABLE KEYS */;
INSERT INTO `tb_docente` VALUES (1,'Ana','Soto','Lescano','Femenino',0,1500,'aa',1),(2,'Alicia','Ayala','Salas','Femenino',0,1800,'bb',2),(3,'Gloria','Mora','Quispe','Femenino',1,2000,'cc',1);
/*!40000 ALTER TABLE `tb_docente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-13 14:46:34
