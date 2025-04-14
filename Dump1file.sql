-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ecomerce
-- ------------------------------------------------------
-- Server version	8.0.39

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

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `nome_categoria` varchar(50) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Casa Inteligente'),(2,'Beleza e Saúde'),(3,'Escritório'),(4,'Automotivo'),(5,'Eletrodomésticos'),(6,'Fotografia'),(7,'Brinquedos'),(8,'Esportes e Lazer'),(9,'Instrumentos Musicais'),(10,'Livros e Mídia');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedores` (
  `id_fornecedor` int NOT NULL AUTO_INCREMENT,
  `nome_fornecedor` varchar(100) NOT NULL,
  PRIMARY KEY (`id_fornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedores`
--

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
INSERT INTO `fornecedores` VALUES (1,'CasaTech Soluções Inteligentes'),(2,'Beleza Mais Distribuidora'),(3,'OfficePro Fornecimentos'),(4,'AutoParts Brasil'),(5,'EletroPrime Distribuidora'),(6,'FotoZoom Equipamentos'),(7,'ToyMania Importados'),(8,'Esportiva BR'),(9,'Música & Som Distribuidora'),(10,'Livraria Digital & Cia');
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itens_pedido`
--

DROP TABLE IF EXISTS `itens_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itens_pedido` (
  `id_item` int NOT NULL AUTO_INCREMENT,
  `fk_pedido` int DEFAULT NULL,
  `fk_produto` int DEFAULT NULL,
  `quantidade` int NOT NULL,
  `preco_unitario` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_item`),
  KEY `fk_pedido` (`fk_pedido`),
  KEY `fk_produto` (`fk_produto`),
  CONSTRAINT `itens_pedido_ibfk_1` FOREIGN KEY (`fk_pedido`) REFERENCES `pedidos` (`id_pedido`),
  CONSTRAINT `itens_pedido_ibfk_2` FOREIGN KEY (`fk_produto`) REFERENCES `produtos` (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itens_pedido`
--

LOCK TABLES `itens_pedido` WRITE;
/*!40000 ALTER TABLE `itens_pedido` DISABLE KEYS */;
INSERT INTO `itens_pedido` VALUES (1,1,3,2,100.00),(2,1,7,1,150.00),(3,2,12,1,50.00),(4,3,9,2,25.00),(5,4,8,1,300.00),(6,5,2,1,120.00),(7,6,4,2,99.99),(8,7,3,3,80.00),(9,8,10,1,70.00),(10,9,5,2,55.00),(11,10,6,3,60.00),(12,11,13,1,250.00),(13,12,11,2,40.00),(14,13,8,1,300.00),(15,14,3,2,100.00),(16,15,9,1,150.00),(17,16,7,3,120.00),(18,17,5,2,90.00),(19,18,12,1,60.00),(20,19,6,2,110.00),(21,20,4,3,90.00),(22,21,10,2,75.00),(23,22,2,1,160.00),(24,23,1,3,200.00),(25,24,8,1,400.00),(26,25,3,2,180.00),(27,26,13,2,230.00),(28,27,5,1,120.00),(29,28,6,3,75.00),(30,29,7,1,150.00),(31,30,12,2,55.00),(32,31,9,3,80.00),(33,32,11,2,40.00),(34,33,10,1,100.00),(35,34,2,1,120.00),(36,35,8,2,300.00),(37,36,13,3,250.00),(38,37,7,1,100.00),(39,38,4,2,99.99),(40,39,6,1,150.00),(41,40,5,2,60.00),(42,41,12,1,55.00),(43,42,10,3,80.00),(44,43,3,1,80.00),(45,44,6,2,120.00),(46,45,4,1,90.00),(47,46,7,3,180.00),(48,47,9,1,150.00),(49,48,11,2,40.00),(50,49,8,3,300.00),(51,50,13,2,230.00),(52,51,5,1,100.00),(53,52,12,2,60.00),(54,53,3,1,75.00),(55,54,2,3,120.00),(56,55,7,1,150.00),(57,56,6,2,90.00),(58,57,9,1,100.00),(59,58,8,3,220.00),(60,59,5,2,180.00),(61,60,10,1,80.00),(62,61,3,2,100.00),(63,62,2,1,200.00),(64,63,4,2,90.00),(65,64,13,1,250.00),(66,65,9,3,70.00),(67,66,7,1,150.00),(68,67,6,2,110.00),(69,68,5,1,75.00),(70,69,3,3,120.00),(71,70,12,1,60.00),(72,71,8,2,300.00),(73,72,13,2,230.00),(74,73,9,1,90.00),(75,74,4,1,100.00),(76,75,2,2,80.00),(77,76,6,3,120.00),(78,77,11,1,40.00),(79,78,8,1,350.00),(80,79,3,2,100.00),(81,80,10,1,100.00),(82,81,5,1,60.00),(83,82,13,2,220.00),(84,83,12,1,55.00),(85,84,7,2,150.00),(86,85,6,3,75.00),(87,86,9,1,80.00),(88,87,2,1,130.00),(89,88,4,3,90.00),(90,89,10,2,60.00),(91,90,8,1,300.00);
/*!40000 ALTER TABLE `itens_pedido` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id_pedido` int NOT NULL AUTO_INCREMENT,
  `data_pedido` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `fk_usuario` int DEFAULT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `fk_usuario` (`fk_usuario`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`fk_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'2025-04-01 10:00:00',120.50,6),(2,'2025-04-01 11:00:00',85.00,7),(3,'2025-04-01 12:00:00',45.30,8),(4,'2025-04-01 13:00:00',200.00,9),(5,'2025-04-01 14:00:00',98.75,10),(6,'2025-04-01 15:00:00',150.00,11),(7,'2025-04-01 16:00:00',60.00,12),(8,'2025-04-01 17:00:00',30.00,13),(9,'2025-04-01 18:00:00',78.40,14),(10,'2025-04-01 19:00:00',250.50,15),(11,'2025-04-02 10:00:00',110.20,16),(12,'2025-04-02 11:00:00',99.99,17),(13,'2025-04-02 12:00:00',210.60,18),(14,'2025-04-02 13:00:00',175.90,19),(15,'2025-04-02 14:00:00',125.45,20),(16,'2025-04-02 15:00:00',60.99,21),(17,'2025-04-02 16:00:00',80.10,22),(18,'2025-04-02 17:00:00',55.25,23),(19,'2025-04-02 18:00:00',130.30,24),(20,'2025-04-02 19:00:00',175.00,25),(21,'2025-04-03 10:00:00',92.80,26),(22,'2025-04-03 11:00:00',105.00,27),(23,'2025-04-03 12:00:00',145.50,28),(24,'2025-04-03 13:00:00',100.20,29),(25,'2025-04-03 14:00:00',110.75,30),(26,'2025-04-03 15:00:00',180.60,31),(27,'2025-04-03 16:00:00',95.80,32),(28,'2025-04-03 17:00:00',63.50,33),(29,'2025-04-03 18:00:00',130.00,34),(30,'2025-04-03 19:00:00',220.10,35),(31,'2025-04-04 10:00:00',140.00,36),(32,'2025-04-04 11:00:00',175.00,37),(33,'2025-04-04 12:00:00',95.60,38),(34,'2025-04-04 13:00:00',50.00,39),(35,'2025-04-04 14:00:00',135.75,40),(36,'2025-04-04 15:00:00',85.50,41),(37,'2025-04-04 16:00:00',70.10,42),(38,'2025-04-04 17:00:00',120.00,43),(39,'2025-04-04 18:00:00',160.00,44),(40,'2025-04-04 19:00:00',190.00,45),(41,'2025-04-05 10:00:00',99.99,46),(42,'2025-04-05 11:00:00',85.00,47),(43,'2025-04-05 12:00:00',150.00,48),(44,'2025-04-05 13:00:00',160.00,49),(45,'2025-04-05 14:00:00',70.10,50),(46,'2025-04-05 15:00:00',112.50,51),(47,'2025-04-05 16:00:00',80.30,52),(48,'2025-04-05 17:00:00',55.80,53),(49,'2025-04-05 18:00:00',130.00,54),(50,'2025-04-05 19:00:00',200.00,55),(51,'2025-04-06 10:00:00',180.00,56),(52,'2025-04-06 11:00:00',160.30,57),(53,'2025-04-06 12:00:00',140.00,58),(54,'2025-04-06 13:00:00',100.50,59),(55,'2025-04-06 14:00:00',75.00,60),(56,'2025-04-06 15:00:00',130.75,61),(57,'2025-04-06 16:00:00',110.00,62),(58,'2025-04-06 17:00:00',80.00,63),(59,'2025-04-06 18:00:00',65.00,64),(60,'2025-04-06 19:00:00',150.00,65),(61,'2025-04-07 10:00:00',50.00,66),(62,'2025-04-07 11:00:00',100.00,67),(63,'2025-04-07 12:00:00',150.00,68),(64,'2025-04-07 13:00:00',200.00,69),(65,'2025-04-07 14:00:00',50.00,70),(66,'2025-04-07 15:00:00',75.00,71),(67,'2025-04-07 16:00:00',110.00,72),(68,'2025-04-07 17:00:00',145.00,73),(69,'2025-04-07 18:00:00',95.00,74),(70,'2025-04-07 19:00:00',120.00,75),(71,'2025-04-08 10:00:00',150.00,76),(72,'2025-04-08 11:00:00',135.00,77),(73,'2025-04-08 12:00:00',200.00,78),(74,'2025-04-08 13:00:00',170.00,79),(75,'2025-04-08 14:00:00',130.00,80),(76,'2025-04-08 15:00:00',95.00,81),(77,'2025-04-08 16:00:00',110.00,82),(78,'2025-04-08 17:00:00',85.00,83),(79,'2025-04-08 18:00:00',90.00,84),(80,'2025-04-08 19:00:00',160.00,85),(81,'2025-04-09 10:00:00',140.00,86),(82,'2025-04-09 11:00:00',125.00,87),(83,'2025-04-09 12:00:00',180.00,88),(84,'2025-04-09 13:00:00',95.00,89),(85,'2025-04-09 14:00:00',105.00,90),(86,'2025-04-09 15:00:00',175.00,91),(87,'2025-04-09 16:00:00',140.00,92),(88,'2025-04-09 17:00:00',110.00,93),(89,'2025-04-09 18:00:00',160.00,94),(90,'2025-04-09 19:00:00',190.00,95),(91,'2025-04-10 10:00:00',120.50,96),(92,'2025-04-10 11:00:00',135.00,97),(93,'2025-04-10 12:00:00',100.20,98),(94,'2025-04-10 13:00:00',150.00,99),(95,'2025-04-10 14:00:00',180.00,100),(96,'2025-04-01 10:00:00',120.50,60),(97,'2025-04-02 14:20:00',220.75,27),(98,'2025-04-03 16:40:00',180.00,21),(99,'2025-04-02 14:20:00',220.75,27),(100,'2025-04-03 16:40:00',180.00,21),(101,'2025-04-02 14:20:00',220.75,27),(102,'2025-04-03 16:40:00',180.00,21),(103,'2025-04-02 14:20:00',220.75,27),(104,'2025-04-03 16:40:00',180.00,21),(105,'2025-04-04 11:10:00',90.99,53),(106,'2025-04-05 09:35:00',305.40,75),(107,'2025-04-06 17:25:00',220.00,65),(108,'2025-04-07 12:50:00',150.25,55),(109,'2025-04-05 09:35:00',305.40,75),(110,'2025-04-06 17:25:00',220.00,65),(111,'2025-04-07 12:50:00',150.25,55),(112,'2025-04-08 10:15:00',475.00,55),(113,'2025-04-05 09:35:00',305.40,75),(114,'2025-04-06 17:25:00',220.00,65),(115,'2025-04-07 12:50:00',150.25,55),(116,'2025-04-08 10:15:00',475.00,55),(117,'2025-04-08 10:15:00',475.00,55),(118,'2025-04-08 10:15:00',475.00,55),(119,'2025-04-09 15:30:00',210.10,76),(120,'2025-04-08 10:15:00',475.00,55),(121,'2025-04-09 15:30:00',210.10,76),(122,'2025-04-09 15:30:00',210.10,76),(123,'2025-04-10 13:05:00',399.99,76),(124,'2025-04-02 10:45:00',189.90,76),(125,'2025-04-05 14:00:00',250.00,76),(126,'2025-04-05 14:00:00',250.00,76),(127,'2025-04-08 09:20:00',175.50,33),(128,'2025-04-05 14:00:00',250.00,76),(129,'2025-04-08 09:20:00',175.50,33),(130,'2025-04-08 09:20:00',175.50,33),(131,'2025-04-11 11:55:00',210.75,33),(132,'2025-04-01 13:10:00',300.00,33),(133,'2025-04-04 10:40:00',225.50,33),(134,'2025-04-10 17:15:00',130.20,33),(135,'2025-04-03 12:30:00',199.99,33),(136,'2025-04-06 16:00:00',260.80,33),(137,'2025-04-09 15:50:00',185.30,33),(138,'2025-04-01 10:00:00',120.50,60),(139,'2025-04-02 14:20:00',220.75,27),(140,'2025-04-03 16:40:00',180.00,21),(141,'2025-04-04 11:10:00',90.99,53),(142,'2025-04-05 09:35:00',305.40,75),(143,'2025-04-06 17:25:00',220.00,65),(144,'2025-04-07 12:50:00',150.25,55),(145,'2025-04-08 10:15:00',475.00,55),(146,'2025-04-09 15:30:00',210.10,76),(147,'2025-04-10 13:05:00',399.99,76),(148,'2025-04-02 10:45:00',189.90,76),(149,'2025-04-05 14:00:00',250.00,76),(150,'2025-04-08 09:20:00',175.50,33),(151,'2025-04-11 11:55:00',210.75,33),(152,'2025-04-01 13:10:00',300.00,33),(153,'2025-04-04 10:40:00',225.50,33),(154,'2025-04-09 15:30:00',210.10,76),(155,'2025-04-10 13:05:00',399.99,76),(156,'2025-04-02 10:45:00',189.90,76),(157,'2025-04-05 14:00:00',250.00,76),(158,'2025-04-08 09:20:00',175.50,33),(159,'2025-04-11 11:55:00',210.75,33),(160,'2025-04-01 13:10:00',300.00,33),(161,'2025-04-04 10:40:00',225.50,33),(162,'2025-04-10 17:15:00',130.20,33),(163,'2025-04-03 12:30:00',199.99,33),(164,'2025-04-06 16:00:00',260.80,33),(165,'2025-04-09 15:50:00',185.30,33);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2025-04-14 19:43:04
