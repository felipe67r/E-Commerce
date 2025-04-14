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
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nome_usuario` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `tipo_usuario` enum('cliente','administrador') NOT NULL,
  `fk_endereco` int DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `cpf` (`cpf`),
  UNIQUE KEY `telefone` (`telefone`),
  KEY `fk_endereco` (`fk_endereco`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`fk_endereco`) REFERENCES `enderecos` (`id_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Flavio Jose','flavio.jose@email.com','12345678901','11999999999','administrador',1),(2,'Maria Aparecida Silva','maria.aparecida@email.com','10987654321','21988888888','administrador',2),(3,'Francisca das Dores Lima','francisca.das.dores@email.com','12398765432','21977777777','administrador',3),(4,'Antônia Bezerra Souza','antonia.souza@email.com','98765432100','22766666666','administrador',4),(5,'Ana Paula Santos','ana.paula@email.com','12345678902','22955555555','administrador',5),(6,'José da Silva','jose.silva@email.com','12345678903','81988888888','cliente',6),(7,'Maria Oliveira','maria.oliveira@email.com','10987654322','81999999999','cliente',7),(8,'João Pereira','joao.pereira@email.com','12345678904','81988888889','cliente',8),(9,'Ana Souza','ana.souza@email.com','98765432101','81977777777','cliente',9),(10,'Francisco Lima','francisco.lima@email.com','12398765433','81966666666','cliente',10),(11,'Raimundo Silva','raimundo.silva@email.com','98765432102','81955555555','cliente',11),(12,'Pedro Santos','pedro.santos@email.com','12345678905','81944444444','cliente',12),(13,'Marcos Costa','marcos.costa@email.com','10987654323','81933333333','cliente',13),(14,'Luciana Almeida','luciana.almeida@email.com','12398765434','81922222222','cliente',14),(15,'Fernanda Rocha','fernanda.rocha@email.com','98765432103','81911111111','cliente',15),(16,'Juliana Lima','juliana.lima@email.com','12345678906','82988888888','cliente',16),(17,'Cláudia Rodrigues','claudia.rodrigues@email.com','10987654324','82977777777','cliente',17),(18,'Carlos Fernandes','carlos.fernandes@email.com','12398765435','82966666666','cliente',18),(19,'Luciana Araújo','luciana.araújo@email.com','98765432104','82955555555','cliente',19),(20,'Camila Pereira','camila.pereira@email.com','12345678907','82944444444','cliente',20),(21,'Raimunda Souza','raimunda.souza@email.com','10987654325','82933333333','cliente',21),(22,'Rosângela Costa','rosangela.costa@email.com','12398765436','82922222222','cliente',22),(23,'Cícero Fernandes','cicero.fernandes@email.com','98765432105','82911111111','cliente',23),(24,'Severino Lima','severino.lima@email.com','12345678908','83988888888','cliente',24),(25,'Damião Rocha','damiao.rocha@email.com','10987654326','83977777777','cliente',25),(26,'Genival Araújo','genival.araujo@email.com','12398765437','83966666666','cliente',26),(27,'Socorro Almeida','socorro.almeida@email.com','98765432106','83955555555','cliente',27),(28,'Zefinha Costa','zefinha.costa@email.com','12345678909','83944444444','cliente',28),(29,'Adalberto Santos','adalberto.santos@email.com','10987654327','83933333333','cliente',29),(30,'Joana Lima','joana.lima@email.com','12398765438','83922222222','cliente',30),(31,'Bruna Pereira','bruna.pereira@email.com','98765432107','84988888888','cliente',31),(32,'Felipe Barbosa','felipe.barbosa@email.com','12345678910','84977777777','cliente',32),(33,'Eduardo Souza','eduardo.souza@email.com','10987654328','84966666666','cliente',33),(34,'Vanessa Alves','vanessa.alves@email.com','12398765439','84955555555','cliente',34),(35,'Leonardo Ferreira','leonardo.ferreira@email.com','98765432108','84944444444','cliente',35),(36,'Daniela Martins','daniela.martins@email.com','12345678911','84933333333','cliente',36),(37,'Anderson Costa','anderson.costa@email.com','10987654329','84922222222','cliente',37),(38,'Tatiane Rocha','tatiane.rocha@email.com','12398765440','84911111111','cliente',38),(39,'Cristiane Alves','cristiane.alves@email.com','98765432109','85988888888','cliente',39),(40,'Alessandro Pereira','alessandro.pereira@email.com','12345678912','85977777777','cliente',40),(41,'Letícia Martins','leticia.martins@email.com','10987654330','85966666666','cliente',41),(42,'Paulo Henrique Silva','paulo.henrique@email.com','12398765441','85955555555','cliente',42),(43,'Roberta Oliveira','roberta.oliveira@email.com','98765432110','85944444444','cliente',43),(44,'Gustavo Costa','gustavo.costa@email.com','12345678913','85933333333','cliente',44),(45,'Tatiana Rocha','tatiana.rocha@email.com','10987654331','85922222222','cliente',45),(46,'Rodrigo Lima','rodrigo.lima@email.com','12398765442','85911111111','cliente',46),(47,'Flávia Pereira','flavia.pereira@email.com','98765432111','86988888888','cliente',47),(48,'Larissa Silva','larissa.silva@email.com','12345678914','86977777777','cliente',48),(49,'Thiago Santos','thiago.santos@email.com','10987654332','86966666666','cliente',49),(50,'Rafael Costa','rafael.costa@email.com','12398765443','86955555555','cliente',50),(51,'Luiza Martins','luiza.martins@email.com','98765432112','86944444444','cliente',51),(52,'Lucas Pereira','lucas.pereira@email.com','12345678915','86933333333','cliente',52),(53,'Marília Almeida','marilia.almeida@email.com','10987654333','86922222222','cliente',53),(54,'Davi Barbosa','davi.barbosa@email.com','12398765444','86911111111','cliente',54),(55,'Lorena Souza','lorena.souza@email.com','98765432113','87988888888','cliente',55),(56,'Cláudio Rodrigues','claudio.rodrigues@email.com','12345678916','87977777777','cliente',56),(57,'Fábio Silva','fabio.silva@email.com','10987654334','87966666666','cliente',57),(58,'Eduarda Costa','eduarda.costa@email.com','12398765445','87955555555','cliente',58),(59,'Ana Beatriz Pereira','ana.beatriz@email.com','98765432114','87944444444','cliente',59),(60,'Gustavo Martins','gustavo.martins@email.com','12345678917','87933333333','cliente',60),(61,'Marcos Antônio Rocha','marcos.rocha@email.com','10987654335','87922222222','cliente',61),(62,'Roberta Silva','roberta.silva@email.com','12398765446','87911111111','cliente',62),(63,'Wendell Barbosa','wendell.barbosa@email.com','98765432115','88988888888','cliente',63),(64,'Paula Costa','paula.costa@email.com','12345678918','88977777777','cliente',64),(65,'César Lima','cesar.lima@email.com','10987654336','88966666666','cliente',65),(66,'Gustavo Pereira','gustavo.pereira@email.com','12398765447','88955555555','cliente',66),(67,'Sara Silva','sara.silva@email.com','98765432116','88944444444','cliente',67),(68,'Flávia Barbosa','flavia.barbosa@email.com','12345678919','88933333333','cliente',68),(69,'Alexandre Souza','alexandre.souza@email.com','10987654337','88922222222','cliente',69),(70,'Davi Martins','davi.martins@email.com','12398765448','88911111111','cliente',70),(71,'Jessica Pereira','jessica.pereira@email.com','98765432117','89988888888','cliente',71),(72,'Victor Almeida','victor.almeida@email.com','12345678920','89977777777','cliente',72),(73,'Sofia Santos','sofia.santos@email.com','10987654338','89966666666','cliente',73),(74,'Eliane Costa','eliane.costa@email.com','12398765449','89955555555','cliente',74),(75,'Amanda Lima','amanda.lima@email.com','98765432118','89944444444','cliente',75),(76,'Tiago Rodrigues','tiago.rodrigues@email.com','12345678921','89933333333','cliente',76),(77,'Amanda Souza','amanda.souza@email.com','10987654339','89922222222','cliente',77),(78,'Mário Costa','mario.costa@email.com','12398765450','89911111111','cliente',78),(79,'Larissa Almeida','larissa.almeida@email.com','98765432119','90988888888','cliente',79),(80,'Simone Lima','simone.lima@email.com','12345678922','90977777777','cliente',80),(81,'Tatiane Pereira','tatiane.pereira@email.com','10987654340','90966666666','cliente',81),(82,'Sônia Barbosa','sonia.barbosa@email.com','12398765451','90955555555','cliente',82),(83,'Lucas Costa','lucas.costa@email.com','98765432120','90944444444','cliente',83),(84,'Marcela Silva','marcela.silva@email.com','12345678923','90933333333','cliente',84),(85,'Cintia Lima','cintia.lima@email.com','10987654341','90922222222','cliente',85),(86,'Viviane Pereira','viviane.pereira@email.com','12398765452','90911111111','cliente',86),(87,'Rodrigo Santos','rodrigo.santos@email.com','98765432121','91988888888','cliente',87),(88,'Adriana Souza','adriana.souza@email.com','12345678924','91977777777','cliente',88),(89,'Daniel Alves','daniel.alves@email.com','10987654342','91966666666','cliente',89),(90,'Paula Rocha','paula.rocha@email.com','12398765453','91955555555','cliente',90),(91,'Bárbara Costa','barbara.costa@email.com','98765432122','91944444444','cliente',91),(92,'Sabrina Pereira','sabrina.pereira@email.com','12345678925','91933333333','cliente',92),(93,'Aline Lima','aline.lima@email.com','10987654343','91922222222','cliente',93),(94,'Thiago Souza','thiago.souza@email.com','12398765454','91911111111','cliente',94),(95,'Juliana Almeida','juliana.almeida@email.com','98765432123','92988888888','cliente',95),(96,'Roberta Costa','roberta.costa@email.com','12345678926','92977777777','cliente',96),(97,'Érika Barbosa','erika.barbosa@email.com','10987654344','92966666666','cliente',97),(98,'Patrícia Lima','patricia.lima@email.com','12398765455','92955555555','cliente',98),(99,'Carlos Pereira','carlos.pereira@email.com','98765432124','92944444444','cliente',99),(100,'Tatiane Costa','tatiane.costa@email.com','12345678927','92933333333','cliente',100);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
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
