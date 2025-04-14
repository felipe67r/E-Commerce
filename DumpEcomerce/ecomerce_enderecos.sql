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
-- Table structure for table `enderecos`
--

DROP TABLE IF EXISTS `enderecos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enderecos` (
  `id_endereco` int NOT NULL AUTO_INCREMENT,
  `logradouro` varchar(100) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `cep` varchar(9) NOT NULL,
  PRIMARY KEY (`id_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enderecos`
--

LOCK TABLES `enderecos` WRITE;
/*!40000 ALTER TABLE `enderecos` DISABLE KEYS */;
INSERT INTO `enderecos` VALUES (1,'Rua do Futuro','Boa Viagem','Recife','PE','51010-250'),(2,'Rua Henrique de Holanda','Aflitos','Recife','PE','52030-110'),(3,'Rua Brigadeiro Rocha','Espinheiro','Recife','PE','52020-190'),(4,'Rua dos Corais','Vasco da Gama','Recife','PE','52070-020'),(5,'Rua Ribeiro de Brito','Casa Forte','Recife','PE','52060-100'),(6,'Rua do Sol','Graças','Recife','PE','52070-280'),(7,'Rua da Hora','Cajueiro','Recife','PE','52060-420'),(8,'Rua 15 de Novembro','Ibura','Recife','PE','51210-110'),(9,'Rua das Acácias','Arruda','Recife','PE','52081-280'),(10,'Rua Marechal Floriano','Bomba do Hemetério','Recife','PE','52081-180'),(11,'Rua do Hospício','Dois Unidos','Recife','PE','52060-370'),(12,'Rua João Pessoa','Campo Grande','Recife','PE','52030-350'),(13,'Rua São Jorge','Jardim São Paulo','Recife','PE','52050-110'),(14,'Rua Estácio Coimbra','Tamareira','Recife','PE','52080-160'),(15,'Rua das Pedrinhas','Rosarinho','Recife','PE','52060-100'),(16,'Rua dos Três Irmãos','Torre','Recife','PE','52040-080'),(17,'Rua Xangô','Várzea','Recife','PE','52071-040'),(18,'Rua Floriano Peixoto','Peixinhos','Recife','PE','51010-420'),(19,'Rua Zumbi dos Palmares','Mustardinha','Recife','PE','52010-160'),(20,'Rua do Prado','Prado','Recife','PE','52080-010'),(21,'Rua São João','Casa Amarela','Recife','PE','52060-110'),(22,'Rua das Palmeiras','Imbiribeira','Recife','PE','51310-050'),(23,'Rua Doutor Paes Barreto','Jordão','Recife','PE','51220-070'),(24,'Rua do Futuro','Alto José Bonifácio','Recife','PE','52090-040'),(25,'Rua do Sol','Aflitos','Recife','PE','52030-210'),(26,'Rua da Luz','Rosarinho','Recife','PE','52060-300'),(27,'Rua Joaquim Nabuco','Campo Grande','Recife','PE','52030-270'),(28,'Rua da Liberdade','Beberibe','Recife','PE','52020-220'),(29,'Rua Cláudio Manoel','Bairro Novo','Olinda','PE','53020-040'),(30,'Rua Santo Amaro','Amparo','Olinda','PE','53010-150'),(31,'Rua do Rio','Sapucaia','Olinda','PE','53060-100'),(32,'Rua Célia Cabral','Ouro Preto','Olinda','PE','53050-010'),(33,'Rua Américo Brandão','Salgadinho','Olinda','PE','53030-060'),(34,'Rua Santa Teresa','Rio Doce','Olinda','PE','53020-370'),(35,'Rua dos Passos','Peixinhos','Olinda','PE','53070-040'),(36,'Rua das Acácias','Jardim Brasil','Olinda','PE','53070-100'),(37,'Rua da Paz','Sítio Novo','Olinda','PE','53070-120'),(38,'Rua João Alves','Alto da Bondade','Olinda','PE','53030-090'),(39,'Rua do Coração','Alto da Conquista','Olinda','PE','53030-150'),(40,'Rua do Sol','Águas Compridas','Olinda','PE','53050-050'),(41,'Rua Dos Limoeiros','Caixa d’Água','Olinda','PE','53080-110'),(42,'Rua Flor do Campo','Casa Caiada','Olinda','PE','53020-300'),(43,'Rua da Liberdade','Caixa d’Água','Olinda','PE','53050-080'),(44,'Rua São Luiz','Ouro Preto','Olinda','PE','53070-180'),(45,'Rua Boa Vista','Salgadinho','Olinda','PE','53040-120'),(46,'Rua Dr. Moraes','Rio Doce','Olinda','PE','53020-340'),(47,'Rua das Palmeiras','Milagres','Olinda','PE','53060-040'),(48,'Rua José da Silva','Alto da Bondade','Olinda','PE','53030-170'),(49,'Rua do Triunfo','Rio Doce','Olinda','PE','53020-060'),(50,'Rua Bonfim','Salgadinho','Olinda','PE','53060-120'),(51,'Rua da Paz','Águas Compridas','Olinda','PE','53040-140'),(52,'Rua Santa Maria','Peixinhos','Olinda','PE','53080-080'),(53,'Rua São Pedro','Jardim Brasil','Olinda','PE','53070-090'),(54,'Rua Lídia Gomes','Alto da Bondade','Olinda','PE','53050-030'),(55,'Rua do Carmo','Ouro Preto','Olinda','PE','53020-140'),(56,'Rua da Liberdade','Centro','Maceió','AL','57010-050'),(57,'Avenida Visconde de Marechal','Pajuçara','Maceió','AL','57030-180'),(58,'Rua da Paz','Jatiúca','Maceió','AL','57035-080'),(59,'Rua São Gonçalo','Jaraguá','Maceió','AL','57022-110'),(60,'Rua da Esperança','Cruz das Almas','Salvador','BA','41905-000'),(61,'Rua Antônio da Silva','Pelourinho','Salvador','BA','40026-060'),(62,'Rua Borges de Barros','Graça','Salvador','BA','40015-050'),(63,'Rua do Carmo','Cajazeiras','Salvador','BA','41710-110'),(64,'Avenida 13 de Maio','Centro','Fortaleza','CE','60060-000'),(65,'Rua Silveira Martins','Aldeota','Fortaleza','CE','60150-000'),(66,'Rua do Sol','Meireles','Fortaleza','CE','60125-040'),(67,'Rua José de Alencar','Bairro de Fátima','Fortaleza','CE','60325-040'),(68,'Rua Antônio Baião','Centro','São Luís','MA','65010-190'),(69,'Rua do Sol','Cohama','São Luís','MA','65060-050'),(70,'Rua Nossa Senhora de Nazaré','Vila Palmeira','São Luís','MA','65072-030'),(71,'Rua Padre Ângelo','Turu','São Luís','MA','65050-270'),(72,'Rua das Margaridas','Tambaú','João Pessoa','PB','58039-040'),(73,'Rua Dona Laura','Cabo Branco','João Pessoa','PB','58045-100'),(74,'Rua Oswaldo Cruz','Centro','João Pessoa','PB','58010-070'),(75,'Rua Professor Francisco Leal','Manaíra','João Pessoa','PB','58038-080'),(76,'Avenida Presidente Vargas','Centro','Rio de Janeiro','RJ','20071-001'),(77,'Rua das Laranjeiras','Laranjeiras','Rio de Janeiro','RJ','22240-000'),(78,'Rua do Catete','Catete','Rio de Janeiro','RJ','22220-020'),(79,'Rua Visconde de Silva','Botafogo','Rio de Janeiro','RJ','22271-080'),(80,'Avenida Domingos Ferreira','Boa Viagem','Recife','PE','51020-030'),(81,'Rua dos Três Rios','Copacabana','Rio de Janeiro','RJ','22040-002'),(82,'Avenida Atlântica','Copacabana','Rio de Janeiro','RJ','22070-000'),(83,'Rua Voluntários da Pátria','Botafogo','Rio de Janeiro','RJ','22270-100'),(84,'Rua Direita','Centro','São Paulo','SP','01050-000'),(85,'Avenida Paulista','Bela Vista','São Paulo','SP','01310-000'),(86,'Rua da Consolação','Consolação','São Paulo','SP','01301-000'),(87,'Rua 25 de Março','Centro','São Paulo','SP','01021-000'),(88,'Rua Riachuelo','Santa Teresa','Rio de Janeiro','RJ','20230-001'),(89,'Rua Visconde de Pirajá','Ipanema','Rio de Janeiro','RJ','22410-001'),(90,'Rua Capitão Salomão','Moinhos de Vento','Porto Alegre','RS','90510-090'),(91,'Rua José do Patrocínio','Cidade Baixa','Porto Alegre','RS','90050-140'),(92,'Rua Marques do Herval','Floresta','Porto Alegre','RS','90230-180'),(93,'Rua Doutor Timóteo','Azenha','Porto Alegre','RS','90440-230'),(94,'Rua Goiás','Vila Nova','São Paulo','SP','03057-030'),(95,'Rua dos Três Irmãos','Vila Progredior','São Paulo','SP','03326-000'),(96,'Rua São Benedito','Liberdade','São Paulo','SP','01501-020'),(97,'Rua dos Três Irmãos','Vila Nova','São Paulo','SP','03326-010'),(98,'Avenida Anhanguera','Bairro do Limão','São Paulo','SP','02072-000'),(99,'Rua Vinte e Cinco de Março','Centro','São Paulo','SP','01021-000'),(100,'Rua dos Tatuapés','Tatuapé','São Paulo','SP','03310-000'),(101,'Rua da Paz','Centro','São Paulo','SP','01030-000'),(102,'Rua Luz','Centro','São Paulo','SP','01000-030'),(103,'Rua do Matoso','Grajau','São Paulo','SP','04336-030'),(104,'Rua da Constituição','Cidade São Francisco','São Paulo','SP','03321-000'),(105,'Rua Altares','São João','Manaus','AM','69015-000'),(106,'Rua Rio Negro','Compensa','Manaus','AM','69020-120'),(107,'Rua Eduardo Ribeiro','Centro','Manaus','AM','69010-160'),(108,'Rua dos Estudantes','Mindu','Manaus','AM','69073-010'),(109,'Rua João Pessoa','Centro','Aracaju','SE','49010-010'),(110,'Rua do Sol','Farolândia','Aracaju','SE','49050-050');
/*!40000 ALTER TABLE `enderecos` ENABLE KEYS */;
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
