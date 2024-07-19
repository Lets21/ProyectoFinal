-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: evaluacion
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
-- Table structure for table `documento`
--

DROP TABLE IF EXISTS `documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documento`
--

LOCK TABLES `documento` WRITE;
/*!40000 ALTER TABLE `documento` DISABLE KEYS */;
INSERT INTO `documento` VALUES (1,'documento1.pdf','1.pdf'),(2,'documento2.pdf','2.pdf'),(3,'documento3.pdf','3.pdf'),(27,'papu','123'),(28,'papu','123'),(29,'papu','123'),(30,'servo','13'),(31,'papu','123'),(32,'nuevo_doc','456'),(33,'doc3','exe');
/*!40000 ALTER TABLE `documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_detalle`
--

DROP TABLE IF EXISTS `estado_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado_detalle` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_detalle`
--

LOCK TABLES `estado_detalle` WRITE;
/*!40000 ALTER TABLE `estado_detalle` DISABLE KEYS */;
INSERT INTO `estado_detalle` VALUES (1,'pendiente'),(2,'realizado'),(3,'modificado'),(4,'editado');
/*!40000 ALTER TABLE `estado_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_evaluacion`
--

DROP TABLE IF EXISTS `estado_evaluacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado_evaluacion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_evaluacion`
--

LOCK TABLES `estado_evaluacion` WRITE;
/*!40000 ALTER TABLE `estado_evaluacion` DISABLE KEYS */;
INSERT INTO `estado_evaluacion` VALUES (1,'pendiente'),(2,'hecho'),(3,'modificado'),(4,'edicion procesando');
/*!40000 ALTER TABLE `estado_evaluacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formulario_evaluacion`
--

DROP TABLE IF EXISTS `formulario_evaluacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formulario_evaluacion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `evaluacion` int DEFAULT NULL,
  `id_estado` int DEFAULT NULL,
  `id_categoria` int DEFAULT NULL,
  `id_proveedor` int DEFAULT NULL,
  `id_perito` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_estado1_idx` (`id_estado`),
  CONSTRAINT `fk_estado1` FOREIGN KEY (`id_estado`) REFERENCES `estado_evaluacion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formulario_evaluacion`
--

LOCK TABLES `formulario_evaluacion` WRITE;
/*!40000 ALTER TABLE `formulario_evaluacion` DISABLE KEYS */;
INSERT INTO `formulario_evaluacion` VALUES (1,'2024-05-12','5',2,1,1,1,22),(2,'2024-04-12','1',1,1,1,1,22),(19,'2024-07-17','900',1,1,1,1,22),(20,'2024-07-17','666',1,1,1,1,22);
/*!40000 ALTER TABLE `formulario_evaluacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formulario_evaluacion_detalle`
--

DROP TABLE IF EXISTS `formulario_evaluacion_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formulario_evaluacion_detalle` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_formulario` int DEFAULT NULL,
  `id_documento` int DEFAULT NULL,
  `cumplimiento` int DEFAULT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `id_estado_detalle` int DEFAULT NULL,
  `id_matrizevaluacion` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `for_id` (`id_formulario`),
  KEY `doc_id` (`id_documento`),
  KEY `fk_estado_detalle_idx` (`id_estado_detalle`),
  KEY `fk_estado_detalle_camde` (`id_estado_detalle`),
  CONSTRAINT `fk_detalleforumulario_documento` FOREIGN KEY (`id_documento`) REFERENCES `documento` (`id`),
  CONSTRAINT `fk_estado_detalle_fed` FOREIGN KEY (`id_estado_detalle`) REFERENCES `estado_detalle` (`id`),
  CONSTRAINT `fk_formulario_fed` FOREIGN KEY (`id_formulario`) REFERENCES `formulario_evaluacion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formulario_evaluacion_detalle`
--

LOCK TABLES `formulario_evaluacion_detalle` WRITE;
/*!40000 ALTER TABLE `formulario_evaluacion_detalle` DISABLE KEYS */;
INSERT INTO `formulario_evaluacion_detalle` VALUES (1,1,1,1,'El proveedor tiene el certificado ISO válido.',1,1),(21,19,29,1,'hola',1,1),(22,19,30,20,'mentir',1,1),(23,20,31,1,'hola',1,1),(24,20,32,2,'nuevo detalle',1,2),(25,20,33,9,'holi3',1,1);
/*!40000 ALTER TABLE `formulario_evaluacion_detalle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-17 23:41:11
