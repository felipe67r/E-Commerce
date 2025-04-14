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
-- Table structure for table `pagamentos`
--

DROP TABLE IF EXISTS `pagamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamentos` (
  `id_pagamento` int NOT NULL AUTO_INCREMENT,
  `tipo_pagamento` enum('cartao','boleto','pix') NOT NULL,
  `data_hora` datetime NOT NULL,
  `status_pagamento` varchar(50) NOT NULL,
  `vencimento` date DEFAULT NULL,
  `fk_pedido` int DEFAULT NULL,
  PRIMARY KEY (`id_pagamento`),
  KEY `fk_pedido` (`fk_pedido`),
  CONSTRAINT `pagamentos_ibfk_1` FOREIGN KEY (`fk_pedido`) REFERENCES `pedidos` (`id_pedido`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamentos`
--

LOCK TABLES `pagamentos` WRITE;
/*!40000 ALTER TABLE `pagamentos` DISABLE KEYS */;
INSERT INTO `pagamentos` VALUES (1,'cartao','2025-04-01 10:15:00','aprovado','2025-04-10',1),(2,'boleto','2025-04-01 11:10:00','pago','2025-04-10',2),(3,'pix','2025-04-01 12:00:00','pendente','2025-04-12',3),(4,'cartao','2025-04-01 13:25:00','aprovado','2025-04-10',4),(5,'boleto','2025-04-01 14:30:00','pendente','2025-04-15',5),(6,'pix','2025-04-01 15:40:00','aprovado','2025-04-05',6),(7,'cartao','2025-04-01 16:20:00','pago','2025-04-10',7),(8,'boleto','2025-04-01 17:15:00','pendente','2025-04-20',8),(9,'pix','2025-04-01 18:10:00','aprovado','2025-04-12',9),(10,'cartao','2025-04-01 19:00:00','pago','2025-04-05',10),(11,'boleto','2025-04-02 10:30:00','aprovado','2025-04-10',11),(12,'pix','2025-04-02 11:00:00','pendente','2025-04-13',12),(13,'cartao','2025-04-02 12:45:00','pago','2025-04-10',13),(14,'boleto','2025-04-02 13:50:00','pendente','2025-04-14',14),(15,'pix','2025-04-02 14:35:00','aprovado','2025-04-05',15),(16,'cartao','2025-04-02 15:20:00','aprovado','2025-04-10',16),(17,'boleto','2025-04-02 16:30:00','pago','2025-04-10',17),(18,'pix','2025-04-02 17:00:00','pendente','2025-04-12',18),(19,'cartao','2025-04-02 18:15:00','pago','2025-04-05',19),(20,'boleto','2025-04-02 19:10:00','pendente','2025-04-20',20),(21,'pix','2025-04-03 10:25:00','aprovado','2025-04-06',21),(22,'cartao','2025-04-03 11:00:00','pendente','2025-04-10',22),(23,'boleto','2025-04-03 12:15:00','aprovado','2025-04-10',23),(24,'pix','2025-04-03 13:05:00','pago','2025-04-10',24),(25,'cartao','2025-04-03 14:20:00','pendente','2025-04-12',25),(26,'boleto','2025-04-03 15:00:00','aprovado','2025-04-10',26),(27,'pix','2025-04-03 16:40:00','pendente','2025-04-13',27),(28,'cartao','2025-04-03 17:15:00','pago','2025-04-10',28),(29,'boleto','2025-04-03 18:30:00','aprovado','2025-04-10',29),(30,'pix','2025-04-03 19:20:00','pendente','2025-04-15',30),(31,'cartao','2025-04-04 10:00:00','aprovado','2025-04-10',31),(32,'boleto','2025-04-04 11:15:00','pago','2025-04-10',32),(33,'pix','2025-04-04 12:30:00','pendente','2025-04-12',33),(34,'cartao','2025-04-04 13:40:00','aprovado','2025-04-10',34),(35,'boleto','2025-04-04 14:25:00','pago','2025-04-10',35),(36,'pix','2025-04-04 15:30:00','pendente','2025-04-15',36),(37,'cartao','2025-04-04 16:15:00','aprovado','2025-04-10',37),(38,'boleto','2025-04-04 17:00:00','pendente','2025-04-12',38),(39,'pix','2025-04-04 18:40:00','aprovado','2025-04-10',39),(40,'cartao','2025-04-04 19:30:00','pago','2025-04-05',40),(41,'boleto','2025-04-05 10:05:00','pendente','2025-04-12',41),(42,'pix','2025-04-05 11:15:00','aprovado','2025-04-10',42),(43,'cartao','2025-04-05 12:20:00','pendente','2025-04-13',43),(44,'boleto','2025-04-05 13:35:00','pago','2025-04-10',44),(45,'pix','2025-04-05 14:30:00','pendente','2025-04-15',45),(46,'cartao','2025-04-05 15:10:00','pago','2025-04-05',46),(47,'boleto','2025-04-05 16:00:00','aprovado','2025-04-10',47),(48,'pix','2025-04-05 17:30:00','pendente','2025-04-12',48),(49,'cartao','2025-04-05 18:25:00','pago','2025-04-05',49),(50,'boleto','2025-04-05 19:15:00','pendente','2025-04-15',50),(51,'pix','2025-04-06 10:35:00','aprovado','2025-04-12',51),(52,'cartao','2025-04-06 11:10:00','pendente','2025-04-15',52),(53,'boleto','2025-04-06 12:00:00','aprovado','2025-04-10',53),(54,'pix','2025-04-06 13:15:00','pendente','2025-04-15',54),(55,'cartao','2025-04-06 14:20:00','aprovado','2025-04-10',55),(56,'boleto','2025-04-06 15:00:00','pago','2025-04-10',56),(57,'pix','2025-04-06 16:25:00','aprovado','2025-04-12',57),(58,'cartao','2025-04-06 17:10:00','pendente','2025-04-15',58),(59,'boleto','2025-04-06 18:00:00','aprovado','2025-04-10',59),(60,'pix','2025-04-06 19:20:00','pago','2025-04-05',60),(61,'pix','2025-04-07 10:15:00','pendente','2025-04-12',61),(62,'pix','2025-04-07 11:20:00','aprovado','2025-04-10',62),(63,'pix','2025-04-07 12:30:00','pago','2025-04-05',63),(64,'pix','2025-04-07 13:45:00','pendente','2025-04-15',64),(65,'pix','2025-04-07 14:35:00','aprovado','2025-04-12',65),(66,'pix','2025-04-07 15:50:00','pendente','2025-04-20',66),(67,'pix','2025-04-07 16:25:00','aprovado','2025-04-10',67),(68,'pix','2025-04-07 17:30:00','pendente','2025-04-13',68),(69,'pix','2025-04-07 18:40:00','aprovado','2025-04-10',69),(70,'pix','2025-04-07 19:10:00','pendente','2025-04-12',70),(71,'pix','2025-04-08 10:05:00','aprovado','2025-04-12',71),(72,'pix','2025-04-08 11:15:00','pago','2025-04-05',72),(73,'pix','2025-04-08 12:00:00','pendente','2025-04-20',73),(74,'pix','2025-04-08 13:25:00','aprovado','2025-04-10',74),(75,'pix','2025-04-08 14:10:00','pendente','2025-04-15',75),(76,'pix','2025-04-08 15:20:00','aprovado','2025-04-10',76),(77,'pix','2025-04-08 16:30:00','pendente','2025-04-13',77),(78,'pix','2025-04-08 17:05:00','pago','2025-04-05',78),(79,'pix','2025-04-08 18:15:00','pendente','2025-04-12',79),(80,'pix','2025-04-08 19:25:00','aprovado','2025-04-10',80),(81,'pix','2025-04-09 10:40:00','pendente','2025-04-13',81),(82,'pix','2025-04-09 11:20:00','pago','2025-04-05',82),(83,'pix','2025-04-09 12:30:00','pendente','2025-04-12',83),(84,'pix','2025-04-09 13:40:00','aprovado','2025-04-10',84),(85,'pix','2025-04-09 14:50:00','pendente','2025-04-15',85),(86,'pix','2025-04-09 15:30:00','aprovado','2025-04-10',86),(87,'pix','2025-04-09 16:45:00','pendente','2025-04-13',87),(88,'pix','2025-04-09 17:55:00','aprovado','2025-04-12',88),(89,'pix','2025-04-09 18:35:00','pendente','2025-04-20',89),(90,'pix','2025-04-10 10:15:00','aprovado','2025-04-10',90);
/*!40000 ALTER TABLE `pagamentos` ENABLE KEYS */;
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
