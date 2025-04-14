-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: ecomerce
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `entregas`
--

DROP TABLE IF EXISTS `entregas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entregas` (
  `id_entrega` int NOT NULL AUTO_INCREMENT,
  `status_entrega` varchar(50) NOT NULL,
  `fk_pedido` int DEFAULT NULL,
  `fk_endereco` int DEFAULT NULL,
  PRIMARY KEY (`id_entrega`),
  KEY `fk_pedido` (`fk_pedido`),
  KEY `fk_endereco` (`fk_endereco`),
  CONSTRAINT `entregas_ibfk_1` FOREIGN KEY (`fk_pedido`) REFERENCES `pedidos` (`id_pedido`),
  CONSTRAINT `entregas_ibfk_2` FOREIGN KEY (`fk_endereco`) REFERENCES `enderecos` (`id_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entregas`
--

LOCK TABLES `entregas` WRITE;
/*!40000 ALTER TABLE `entregas` DISABLE KEYS */;
INSERT INTO `entregas` VALUES (1,'Entregue',1,10),(2,'Em transporte',2,5),(3,'Pendente',3,17),(4,'Entregue',4,23),(5,'Cancelado',5,8),(6,'Entregue',6,15),(7,'Em transporte',7,19),(8,'Pendente',8,21),(9,'Entregue',9,7),(10,'Entregue',10,12),(11,'Em transporte',11,30),(12,'Cancelado',12,4),(13,'Entregue',13,6),(14,'Pendente',14,25),(15,'Entregue',15,2),(16,'Entregue',16,9),(17,'Em transporte',17,13),(18,'Pendente',18,29),(19,'Cancelado',19,3),(20,'Entregue',20,20),(21,'Entregue',21,14),(22,'Pendente',22,11),(23,'Em transporte',23,16),(24,'Entregue',24,1),(25,'Cancelado',25,28),(26,'Entregue',26,32),(27,'Em transporte',27,35),(28,'Pendente',28,33),(29,'Entregue',29,36),(30,'Entregue',30,38),(31,'Pendente',31,39),(32,'Cancelado',32,40),(33,'Em transporte',33,41),(34,'Entregue',34,42),(35,'Pendente',35,43),(36,'Entregue',36,44),(37,'Cancelado',37,45),(38,'Entregue',38,46),(39,'Em transporte',39,47),(40,'Pendente',40,48),(41,'Entregue',41,49),(42,'Entregue',42,50),(43,'Cancelado',43,18),(44,'Pendente',44,26),(45,'Em transporte',45,27),(46,'Entregue',46,22),(47,'Entregue',47,24),(48,'Em transporte',48,31),(49,'Pendente',49,34),(50,'Entregue',50,37);
/*!40000 ALTER TABLE `entregas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-13 17:15:57
