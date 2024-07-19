-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: empresa
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Cableado Estructurado'),(2,'Instalaciones Electricas'),(3,'Mantenimiento Software');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'Empresa CNT',NULL,NULL),(2,'Empresa PUNTO NET',NULL,NULL),(3,'Empresa UDLA',NULL,NULL),(4,'Empresa CLARO',NULL,NULL),(5,'Noux','Eloy Alfaro y 6 de Diciembre',NULL),(6,'pepito','juan leon mera','55555555'),(7,'juanito','San carlos','777888999'),(8,'bb','nuevo ','555'),(9,'CLARO','DIRECC1 ','888999'),(10,'epepitos','direcc','444555'),(11,'mangos','ttt','4445566'),(12,'yy','ee','3333'),(13,'el 13','ouo','7879'),(14,'444oo','yyt','77878788'),(15,'555','tytyt','7777'),(16,'el catorce','oiyoi','554477'),(17,'gol tv','la marin','7777888999'),(18,'empresa','san carlos','774411'),(19,'Udla','via nayon','123456'),(20,'Proveedor STM','Guallabamba','789456123'),(22,'Paco','AV Bellavista','0958780813');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matriz_evaluacion`
--

DROP TABLE IF EXISTS `matriz_evaluacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matriz_evaluacion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(255) DEFAULT NULL,
  `puntos` int DEFAULT NULL,
  `requiere_documento` tinyint(1) DEFAULT NULL,
  `id_categoria` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_id` (`id_categoria`),
  CONSTRAINT `matriz_evaluacion_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matriz_evaluacion`
--

LOCK TABLES `matriz_evaluacion` WRITE;
/*!40000 ALTER TABLE `matriz_evaluacion` DISABLE KEYS */;
INSERT INTO `matriz_evaluacion` VALUES (1,'Certificado ISO',10,1,1),(2,'Personal con 4to Nivel en ES de IS',8,1,1),(3,'Al menos 10 años en el mercado',5,0,1),(4,'Certificado Electrico',10,1,2),(5,'Certificado punto a punto',7,1,2),(6,'El tiempo de entrega es menor de 1 mes',5,0,2),(7,'Certificado A',10,1,3),(8,'Certificado B',8,1,3),(9,'Certificado C',6,1,3),(10,'certificadoeditado',8,2,2);
/*!40000 ALTER TABLE `matriz_evaluacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perito`
--

DROP TABLE IF EXISTS `perito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perito` (
  `id` int NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_perito_empresa` FOREIGN KEY (`id`) REFERENCES `empresa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perito`
--

LOCK TABLES `perito` WRITE;
/*!40000 ALTER TABLE `perito` DISABLE KEYS */;
INSERT INTO `perito` VALUES (22);
/*!40000 ALTER TABLE `perito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  CONSTRAINT `herencia` FOREIGN KEY (`id`) REFERENCES `empresa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1),(2),(3),(4),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(19),(20);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor_categoria`
--

DROP TABLE IF EXISTS `proveedor_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor_categoria` (
  `id_proveedor` int NOT NULL,
  `id_categoria` int NOT NULL,
  PRIMARY KEY (`id_proveedor`,`id_categoria`),
  KEY `pro_id` (`id_proveedor`),
  KEY `cat_id` (`id_categoria`),
  CONSTRAINT `fk_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`),
  CONSTRAINT `fk_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor_categoria`
--

LOCK TABLES `proveedor_categoria` WRITE;
/*!40000 ALTER TABLE `proveedor_categoria` DISABLE KEYS */;
INSERT INTO `proveedor_categoria` VALUES (1,1),(1,2),(2,1),(2,2),(3,3),(4,1),(4,3),(8,1),(9,1),(9,3),(10,1),(10,2),(10,3),(11,1),(11,2),(12,1),(13,3),(14,2),(14,3),(15,1),(15,2),(15,3),(16,1),(16,2),(16,3),(17,1),(17,3),(19,1),(19,2),(19,3),(20,1);
/*!40000 ALTER TABLE `proveedor_categoria` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-17 23:41:17
