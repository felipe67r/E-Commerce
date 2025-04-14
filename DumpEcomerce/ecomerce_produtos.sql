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
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id_produto` int NOT NULL AUTO_INCREMENT,
  `nome_produto` varchar(50) NOT NULL,
  `descricao_produto` text,
  `preco_produto` decimal(10,2) NOT NULL,
  `quantidade_estoque` int NOT NULL,
  `fk_categoria` int DEFAULT NULL,
  `fk_fornecedor` int DEFAULT NULL,
  PRIMARY KEY (`id_produto`),
  KEY `fk_categoria` (`fk_categoria`),
  KEY `fk_fornecedor` (`fk_fornecedor`),
  CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`fk_categoria`) REFERENCES `categorias` (`id_categoria`),
  CONSTRAINT `produtos_ibfk_2` FOREIGN KEY (`fk_fornecedor`) REFERENCES `fornecedores` (`id_fornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'Gadget Escritório','Produto certificado.',1046.75,13,3,3),(2,'Equipamento Livros e Mídia','Fácil de instalar e usar.',1021.44,55,10,1),(3,'Sistema Casa Inteligente','Baixo consumo de energia.',1130.83,83,1,10),(4,'Kit Brinquedos','Produto certificado.',784.67,20,7,6),(5,'Aparelho Esportes e Lazer','Design moderno e eficiente.',1275.45,65,8,2),(6,'Dispositivo Instrumentos Musicais','Ideal para uso diário.',1040.56,34,9,5),(7,'Pacote Beleza e Saúde','Produto certificado.',1386.61,88,2,3),(8,'Produto Eletrodomésticos','Produto certificado.',1087.36,27,5,4),(9,'Item Automotivo','Design moderno e eficiente.',521.20,83,4,9),(10,'Aparelho Casa Inteligente','Fácil de instalar e usar.',569.38,65,1,8),(11,'Sistema Esportes e Lazer','Design moderno e eficiente.',1070.28,63,8,9),(12,'Conjunto Beleza e Saúde','Produto certificado.',773.88,87,2,10),(13,'Equipamento Escritório','Produto certificado.',1389.84,13,3,7),(14,'Dispositivo Casa Inteligente','Tecnologia de ponta.',1116.37,63,1,2),(15,'Pacote Livros e Mídia','Baixo consumo de energia.',780.17,86,10,1),(16,'Gadget Brinquedos','Produto certificado.',1131.24,89,7,8),(17,'Produto Instrumentos Musicais','Design moderno e eficiente.',984.50,56,9,10),(18,'Kit Eletrodomésticos','Produto certificado.',657.20,94,5,5),(19,'Sistema Fotografia','Design moderno e eficiente.',1144.91,13,6,7),(20,'Dispositivo Automotivo','Tecnologia de ponta.',1485.43,86,4,6),(21,'Conjunto Esportes e Lazer','Tecnologia de ponta.',1374.42,26,8,3),(22,'Gadget Livros e Mídia','Alta qualidade e desempenho.',1453.82,94,10,1),(23,'Pacote Escritório','Produto certificado.',1433.11,83,3,7),(24,'Item Fotografia','Produto certificado.',1177.30,55,6,10),(25,'Produto Brinquedos','Fácil de instalar e usar.',1466.42,34,7,2),(26,'Aparelho Instrumentos Musicais','Produto certificado.',822.49,81,9,1),(27,'Sistema Automotivo','Produto certificado.',1447.32,85,4,5),(28,'Gadget Casa Inteligente','Alta qualidade e desempenho.',996.26,94,1,9),(29,'Kit Eletrodomésticos','Produto certificado.',787.21,57,5,6),(30,'Produto Esportes e Lazer','Baixo consumo de energia.',1064.51,86,8,10),(31,'Dispositivo Beleza e Saúde','Alta qualidade e desempenho.',772.26,80,2,4),(32,'Conjunto Instrumentos Musicais','Design moderno e eficiente.',621.52,91,9,8),(33,'Equipamento Brinquedos','Produto certificado.',630.36,40,7,6),(34,'Kit Escritório','Produto certificado.',1419.13,67,3,3),(35,'Pacote Automotivo','Alta qualidade e desempenho.',1362.85,35,4,5),(36,'Aparelho Casa Inteligente','Fácil de instalar e usar.',1294.63,31,1,2),(37,'Gadget Fotografia','Tecnologia de ponta.',1281.41,96,6,3),(38,'Produto Livros e Mídia','Produto certificado.',1470.28,72,10,4),(39,'Item Eletrodomésticos','Baixo consumo de energia.',1353.42,41,5,7),(40,'Sistema Brinquedos','Produto certificado.',671.64,83,7,8),(41,'Pacote Beleza e Saúde','Produto certificado.',713.58,38,2,1),(42,'Dispositivo Instrumentos Musicais','Produto certificado.',932.77,71,9,5),(43,'Equipamento Esportes e Lazer','Produto certificado.',745.63,18,8,9),(44,'Produto Automotivo','Alta qualidade e desempenho.',1096.26,84,4,2),(45,'Conjunto Livros e Mídia','Fácil de instalar e usar.',1264.75,55,10,6),(46,'Kit Escritório','Produto certificado.',1389.97,65,3,7),(47,'Item Beleza e Saúde','Baixo consumo de energia.',986.64,37,2,3),(48,'Sistema Casa Inteligente','Produto certificado.',742.35,67,1,10),(49,'Aparelho Fotografia','Produto certificado.',760.72,87,6,1),(50,'Produto Brinquedos','Tecnologia de ponta.',660.11,91,7,8);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
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
