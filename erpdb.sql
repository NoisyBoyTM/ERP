-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: erpdb
-- ------------------------------------------------------
-- Server version	5.7.42-log

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `IDCLIENTE` int(11) NOT NULL,
  `NOME` varchar(30) DEFAULT NULL,
  `ATIVO` varchar(1) DEFAULT NULL,
  `CPF` varchar(14) DEFAULT NULL,
  `TELEFONE` varchar(15) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `SEXO` varchar(1) DEFAULT NULL,
  `ESTADO` varchar(2) DEFAULT NULL,
  `CIDADE` varchar(20) DEFAULT NULL,
  `BAIRRO` varchar(30) DEFAULT NULL,
  `RUA` varchar(50) DEFAULT NULL,
  `NUMERO` varchar(14) DEFAULT NULL,
  `COMPLEMENTO` varchar(20) DEFAULT NULL,
  `CEP` varchar(10) DEFAULT NULL,
  `DTNASCIMENTO` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `OBSERVACAO` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`IDCLIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (0,'CONSUMIDOR','T','','','','','','','','','','','','1999-01-01 03:00:00','');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config` (
  `IDCONFIG` int(11) NOT NULL,
  `TEMA` varchar(20) DEFAULT NULL,
  `SUFIXO` varchar(10) DEFAULT NULL,
  `VENDASEMITEM` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`IDCONFIG`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'Sapphire Kamri','2023','N');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conta`
--

DROP TABLE IF EXISTS `conta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conta` (
  `IDCONTA` int(11) NOT NULL,
  `NOMECONTA` varchar(50) DEFAULT NULL,
  `DESCRICAO` varchar(250) DEFAULT NULL,
  `CLASSIFICACAO` varchar(30) DEFAULT NULL,
  `VALOR` float DEFAULT NULL,
  `PARCELA` int(11) DEFAULT NULL,
  `DTVENCIMENTO` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `PAGO` char(1) DEFAULT NULL,
  `OBSERVACAO` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`IDCONTA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conta`
--

LOCK TABLES `conta` WRITE;
/*!40000 ALTER TABLE `conta` DISABLE KEYS */;
/*!40000 ALTER TABLE `conta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `IDEMPRESA` int(11) NOT NULL,
  `NOMEFANTASIA` varchar(30) DEFAULT NULL,
  `RAZAOSOCIAL` varchar(30) DEFAULT NULL,
  `ATIVO` varchar(1) DEFAULT NULL,
  `CNPJ` varchar(20) DEFAULT NULL,
  `TELEFONE` varchar(15) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `ESTADO` varchar(2) DEFAULT NULL,
  `CIDADE` varchar(20) DEFAULT NULL,
  `BAIRRO` varchar(30) DEFAULT NULL,
  `RUA` varchar(50) DEFAULT NULL,
  `NUMERO` varchar(10) DEFAULT NULL,
  `COMPLEMENTO` varchar(20) DEFAULT NULL,
  `CEP` varchar(10) DEFAULT NULL,
  `OBSERVACAO` varchar(1000) DEFAULT NULL,
  `IE` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`IDEMPRESA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (0,'EMPRESA PADRÃO','EMPRESA PADRÃO','T','','','','','','','','','','','',' ');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forma_pagamento`
--

DROP TABLE IF EXISTS `forma_pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forma_pagamento` (
  `IDPAGAMENTO` int(11) NOT NULL,
  `NMPAGAMENTO` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`IDPAGAMENTO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forma_pagamento`
--

LOCK TABLES `forma_pagamento` WRITE;
/*!40000 ALTER TABLE `forma_pagamento` DISABLE KEYS */;
INSERT INTO `forma_pagamento` VALUES (1,'DINHEIRO'),(2,'CRÉDITO'),(3,'DÉBITO'),(4,'PIX');
/*!40000 ALTER TABLE `forma_pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itensvenda`
--

DROP TABLE IF EXISTS `itensvenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itensvenda` (
  `IDITEMVENDA` int(11) NOT NULL,
  `IDVENDA` int(11) NOT NULL,
  `IDPRODUTO` int(11) DEFAULT NULL,
  `VALOR` float DEFAULT NULL,
  `QUANTIDADE` int(11) DEFAULT NULL,
  `NOMEPRODUTO` varchar(200) DEFAULT NULL,
  `CODIGOBARRAS` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`IDITEMVENDA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itensvenda`
--

LOCK TABLES `itensvenda` WRITE;
/*!40000 ALTER TABLE `itensvenda` DISABLE KEYS */;
INSERT INTO `itensvenda` VALUES (1,1,1,15,10,'PROD 1','234234234');
/*!40000 ALTER TABLE `itensvenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `IDPRODUTO` int(11) NOT NULL,
  `NOMEPRODUTO` varchar(200) DEFAULT NULL,
  `ATIVO` varchar(1) DEFAULT NULL,
  `CODIGO` varchar(128) DEFAULT NULL,
  `CUSTO` float DEFAULT NULL,
  `MARGEMLUCRO` int(11) DEFAULT NULL,
  `PRECO` float DEFAULT NULL,
  `QUANTIDADE` int(11) DEFAULT NULL,
  `FORNECEDOR` int(11) DEFAULT NULL,
  `DTENTRADA` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CDPERSONALIZADO1` int(11) DEFAULT NULL,
  `CDPERSONALIZADO2` int(11) DEFAULT NULL,
  `CDPERSONALIZADO3` int(11) DEFAULT NULL,
  `CDPERSONALIZADO4` int(11) DEFAULT NULL,
  `OBSERVACAO` varchar(1000) DEFAULT NULL,
  `NCM` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`IDPRODUTO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (0,'PRODUTO','T','0',0,0,0,0,0,'1999-01-01 03:00:00',0,0,0,0,'',''),(1,'PROD 1','T','123456',10,50,15,90,0,'2023-06-11 15:03:45',NULL,NULL,NULL,NULL,NULL,'00000000'),(2,'PROD 2','T','000000',NULL,NULL,NULL,10,NULL,'2023-06-11 03:00:00',NULL,NULL,NULL,NULL,NULL,'0000');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto_personalizado1`
--

DROP TABLE IF EXISTS `produto_personalizado1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto_personalizado1` (
  `CDPERSONALIZADO1` int(11) NOT NULL,
  `NMPERSONALIZADO1` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CDPERSONALIZADO1`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto_personalizado1`
--

LOCK TABLES `produto_personalizado1` WRITE;
/*!40000 ALTER TABLE `produto_personalizado1` DISABLE KEYS */;
INSERT INTO `produto_personalizado1` VALUES (0,'DEFAULT');
/*!40000 ALTER TABLE `produto_personalizado1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto_personalizado2`
--

DROP TABLE IF EXISTS `produto_personalizado2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto_personalizado2` (
  `CDPERSONALIZADO2` int(11) NOT NULL,
  `NMPERSONALIZADO2` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CDPERSONALIZADO2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto_personalizado2`
--

LOCK TABLES `produto_personalizado2` WRITE;
/*!40000 ALTER TABLE `produto_personalizado2` DISABLE KEYS */;
INSERT INTO `produto_personalizado2` VALUES (0,'DEFAULT');
/*!40000 ALTER TABLE `produto_personalizado2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto_personalizado3`
--

DROP TABLE IF EXISTS `produto_personalizado3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto_personalizado3` (
  `CDPERSONALIZADO3` int(11) NOT NULL,
  `NMPERSONALIZADO3` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CDPERSONALIZADO3`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto_personalizado3`
--

LOCK TABLES `produto_personalizado3` WRITE;
/*!40000 ALTER TABLE `produto_personalizado3` DISABLE KEYS */;
INSERT INTO `produto_personalizado3` VALUES (0,'DEFAULT');
/*!40000 ALTER TABLE `produto_personalizado3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto_personalizado4`
--

DROP TABLE IF EXISTS `produto_personalizado4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto_personalizado4` (
  `CDPERSONALIZADO4` int(11) NOT NULL,
  `NMPERSONALIZADO4` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CDPERSONALIZADO4`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto_personalizado4`
--

LOCK TABLES `produto_personalizado4` WRITE;
/*!40000 ALTER TABLE `produto_personalizado4` DISABLE KEYS */;
INSERT INTO `produto_personalizado4` VALUES (0,'DEFAULT');
/*!40000 ALTER TABLE `produto_personalizado4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguranca`
--

DROP TABLE IF EXISTS `seguranca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seguranca` (
  `IDUSUARIO` int(11) NOT NULL,
  `CREDENCIAL` int(11) DEFAULT NULL,
  `VENDA` char(1) DEFAULT NULL,
  `PRODUTO` char(1) DEFAULT NULL,
  `CLIENTE` char(1) DEFAULT NULL,
  `EMPRESA` char(1) DEFAULT NULL,
  `CONTA` char(1) DEFAULT NULL,
  `USUARIO` char(1) DEFAULT NULL,
  `RELATORIO` char(1) DEFAULT NULL,
  `SEGURANCA` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`IDUSUARIO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguranca`
--

LOCK TABLES `seguranca` WRITE;
/*!40000 ALTER TABLE `seguranca` DISABLE KEYS */;
INSERT INTO `seguranca` VALUES (0,2,'T','T','T','T','T','T','T','T'),(1,2,'T','T','T','T','T','T','T','F');
/*!40000 ALTER TABLE `seguranca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `IDUSUARIO` int(11) NOT NULL,
  `NOME` varchar(30) DEFAULT NULL,
  `SENHA` varchar(15) DEFAULT NULL,
  `ATIVO` varchar(1) DEFAULT NULL,
  `CPF` varchar(14) DEFAULT NULL,
  `TELEFONE` varchar(15) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `SEXO` varchar(1) DEFAULT NULL,
  `ESTADO` varchar(2) DEFAULT NULL,
  `CIDADE` varchar(20) DEFAULT NULL,
  `BAIRRO` varchar(30) DEFAULT NULL,
  `RUA` varchar(50) DEFAULT NULL,
  `NUMERO` varchar(14) DEFAULT NULL,
  `COMPLEMENTO` varchar(20) DEFAULT NULL,
  `CEP` varchar(10) DEFAULT NULL,
  `DTNASCIMENTO` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `OBSERVACAO` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`IDUSUARIO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (0,'ADMIN','HKTPU','T','','','','','','','','','','','','1999-01-01 03:00:00',''),(1,'DENISE','89:','T',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-05-30 23:30:46',NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda`
--

DROP TABLE IF EXISTS `venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venda` (
  `IDVENDA` int(11) NOT NULL,
  `IDEMPRESA` int(11) DEFAULT NULL,
  `IDCLIENTE` int(11) DEFAULT NULL,
  `IDFUNCIONARIO` int(11) DEFAULT NULL,
  `DTVENDA` date DEFAULT NULL,
  `VALORTOTAL` float DEFAULT NULL,
  `PARCELA` int(11) DEFAULT NULL,
  `PAGO` char(1) DEFAULT NULL,
  `OBSERVACAO` varchar(1000) DEFAULT NULL,
  `SUFIXO` varchar(10) DEFAULT NULL,
  `IDFORMAPAGAMENTO` int(11) DEFAULT NULL,
  `DESCONTO` float DEFAULT NULL,
  `DTVENCIMENTO` date DEFAULT NULL,
  PRIMARY KEY (`IDVENDA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
INSERT INTO `venda` VALUES (0,0,0,0,'2024-01-01',NULL,NULL,'F',NULL,NULL,NULL,NULL,'2024-01-01'),(1,0,0,0,'2023-06-11',15,0,'T',NULL,'2023',1,NULL,'2023-06-11');
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-11 12:05:07
