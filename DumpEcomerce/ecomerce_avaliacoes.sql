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
-- Table structure for table `avaliacoes`
--

DROP TABLE IF EXISTS `avaliacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avaliacoes` (
  `id_avaliacao` int NOT NULL AUTO_INCREMENT,
  `nota` int DEFAULT NULL,
  `descricao` text,
  `data` date NOT NULL,
  `fk_usuario` int DEFAULT NULL,
  `fk_produto` int DEFAULT NULL,
  PRIMARY KEY (`id_avaliacao`),
  KEY `fk_usuario` (`fk_usuario`),
  KEY `fk_produto` (`fk_produto`),
  CONSTRAINT `avaliacoes_ibfk_1` FOREIGN KEY (`fk_usuario`) REFERENCES `usuarios` (`id_usuario`),
  CONSTRAINT `avaliacoes_ibfk_2` FOREIGN KEY (`fk_produto`) REFERENCES `produtos` (`id_produto`),
  CONSTRAINT `avaliacoes_chk_1` CHECK (((`nota` >= 1) and (`nota` <= 5)))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliacoes`
--

LOCK TABLES `avaliacoes` WRITE;
/*!40000 ALTER TABLE `avaliacoes` DISABLE KEYS */;
INSERT INTO `avaliacoes` VALUES (1,5,'Produto excelente, superou minhas expectativas!','2025-04-01',1,10),(2,4,'Muito bom, mas poderia ter vindo com manual.','2025-04-02',2,8),(3,3,'Cumpre o que promete, mas esperava mais.','2025-04-02',3,15),(4,5,'Perfeito! Qualidade top.','2025-04-03',4,5),(5,2,'Veio com defeito, precisei trocar.','2025-04-03',5,21),(6,4,'Gostei bastante, recomendo.','2025-04-04',6,18),(7,1,'Péssima experiência. Produto quebrou em 3 dias.','2025-04-04',7,7),(8,5,'Produto muito bem embalado e funcionando perfeitamente.','2025-04-05',8,30),(9,3,'Esperava mais funcionalidades.','2025-04-06',9,12),(10,4,'Boa qualidade e entrega rápida.','2025-04-06',10,25),(11,5,'Super prático e útil!','2025-04-07',11,3),(12,4,'Entrega rápida e produto bom.','2025-04-07',12,17),(13,2,'Não gostei da qualidade dos materiais.','2025-04-08',13,11),(14,5,'Maravilhoso, estou usando todos os dias.','2025-04-09',14,2),(15,3,'Regular. Serve para o básico.','2025-04-09',15,29),(16,4,'Produto bonito e eficiente.','2025-04-10',16,32),(17,1,'Infelizmente não funcionou aqui.','2025-04-11',17,20),(18,5,'Recomendo a todos. Muito bom.','2025-04-11',18,6),(19,4,'Ótima performance pelo preço.','2025-04-12',19,27),(20,3,'Veio funcionando, mas não é intuitivo.','2025-04-12',20,23),(21,5,'Sensacional, melhor compra do ano!','2025-04-12',21,35),(22,2,'Não atendeu minhas necessidades.','2025-04-13',22,13),(23,4,'Qualidade acima do esperado.','2025-04-13',23,46),(24,3,'Entrega atrasou um pouco, mas produto bom.','2025-04-13',24,39),(25,5,'Produto excelente, já recomendei!','2025-04-13',25,50);
/*!40000 ALTER TABLE `avaliacoes` ENABLE KEYS */;
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
