CREATE DATABASE  IF NOT EXISTS `eccomerce-challange` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `eccomerce-challange`;
-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: localhost    Database: eccomerce-challange
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `Produtos`
--

DROP TABLE IF EXISTS `Produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(45) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(45) NOT NULL,
  `preco` int NOT NULL,
  `disponivel` enum('sim','não') NOT NULL,
  `destaque` enum('sim','não') NOT NULL,
  `departamentoID` int NOT NULL,
  KEY `departamentoID_idx` (`id`),
  CONSTRAINT `departamentoID` FOREIGN KEY (`id`) REFERENCES `departamentos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Produtos`
--

LOCK TABLES `Produtos` WRITE;
/*!40000 ALTER TABLE `Produtos` DISABLE KEYS */;
INSERT INTO `Produtos` VALUES (1,'4','Computador','computador 4GB RAM',1500,'sim','não',1),(2,'8','Shampoo','shampo monange',15,'sim','sim',2),(3,'5','Nootbook','DELL ISPIRION',4000,'sim','sim',1);
/*!40000 ALTER TABLE `Produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidadeEstado`
--

DROP TABLE IF EXISTS `cidadeEstado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidadeEstado` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cidade` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidadeEstado`
--

LOCK TABLES `cidadeEstado` WRITE;
/*!40000 ALTER TABLE `cidadeEstado` DISABLE KEYS */;
INSERT INTO `cidadeEstado` VALUES (1,'Belém','Pará'),(2,'Campinas','São Paulo'),(3,'Ananindeua','Pará'),(4,'Gramado','Rio grande do sul');
/*!40000 ALTER TABLE `cidadeEstado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `whatssap` int DEFAULT NULL,
  `senha` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'welisson',9345258,'123','welisson@gmail.com'),(2,'douglas',9854523,'145','douglas@gmail.com'),(3,'marcelo',84452345,'321','marcelocarioca@gmail.com'),(4,'mariana',9484848,'4444','mariana@gmail.com'),(5,'carla',999999,'212131','carla@gmail.com');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamentos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (1,'informática'),(2,'limpeza'),(3,'acessórios');
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enderecos`
--

DROP TABLE IF EXISTS `enderecos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enderecos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) NOT NULL,
  `tipologradouro` varchar(45) NOT NULL,
  `logradouro` varchar(45) NOT NULL,
  `numero` varchar(45) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `cep` varchar(45) NOT NULL,
  `cidadeEstado` varchar(45) NOT NULL,
  `fkCliente` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fkCidadeEstado` FOREIGN KEY (`id`) REFERENCES `cidadeEstado` (`id`),
  CONSTRAINT `fkCliente` FOREIGN KEY (`id`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enderecos`
--

LOCK TABLES `enderecos` WRITE;
/*!40000 ALTER TABLE `enderecos` DISABLE KEYS */;
INSERT INTO `enderecos` VALUES (1,'rua','Onze','Guajára','100','Coqueiro','67145370','3','1'),(2,'Residencial','Fit Coqueiro','Cidade nova 5','50','Coqueiro','657850','1','2'),(3,'Residencial','Vitoria','Maguari','60','Campinas','45555','2','5'),(4,'Rua','Olimpo','caxias','40','Caxias','774474','4','4');
/*!40000 ALTER TABLE `enderecos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estoque`
--

DROP TABLE IF EXISTS `estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estoque` (
  `id` int NOT NULL AUTO_INCREMENT,
  `produtoID` int NOT NULL,
  `quantidade` int NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `produto` FOREIGN KEY (`id`) REFERENCES `Produtos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoque`
--

LOCK TABLES `estoque` WRITE;
/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
INSERT INTO `estoque` VALUES (1,8,8),(2,4,3),(3,5,30);
/*!40000 ALTER TABLE `estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo` int NOT NULL,
  `data` varchar(45) NOT NULL,
  `status` enum('novo-pedido','cancelado','aguardando-pagamento','pagamento-autorizado','pagamento-negado','em-separacao','em-transporte','entregue') NOT NULL,
  `cliente` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `codigo_idx` (`codigo`),
  CONSTRAINT `cliente` FOREIGN KEY (`id`) REFERENCES `clientes` (`id`),
  CONSTRAINT `codigo` FOREIGN KEY (`codigo`) REFERENCES `Produtos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,4,'20/5/2021','entregue',1),(2,8,'21/05/2021','cancelado',3),(3,5,'22/05/2021','aguardando-pagamento',4);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 14:16:51
