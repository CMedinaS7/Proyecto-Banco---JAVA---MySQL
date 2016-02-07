CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 5.1.40, for Win32 (ia32)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	5.1.48-community

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `operacion_bancaria`
--

DROP TABLE IF EXISTS `operacion_bancaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operacion_bancaria` (
  `IdOperacionBancaria` char(5) NOT NULL,
  `Fecha` date NOT NULL,
  `Monto` double NOT NULL,
  `Tipo` varchar(45) NOT NULL,
  `Servicio` varchar(50) DEFAULT NULL,
  `Cuenta` varchar(45) DEFAULT NULL,
  `IdCliente` char(5) NOT NULL,
  `IdCuentaBancaria` char(5) NOT NULL,
  PRIMARY KEY (`IdOperacionBancaria`),
  KEY `fk_operacion_bancaria_cliente1` (`IdCliente`),
  KEY `fk_operacion_bancaria_cuenta_bancaria1` (`IdCuentaBancaria`),
  CONSTRAINT `fk_operacion_bancaria_cliente1` FOREIGN KEY (`IdCliente`) REFERENCES `cliente` (`IdCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_operacion_bancaria_cuenta_bancaria1` FOREIGN KEY (`IdCuentaBancaria`) REFERENCES `cuenta_bancaria` (`IdCuentaBancaria`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operacion_bancaria`
--

LOCK TABLES `operacion_bancaria` WRITE;
/*!40000 ALTER TABLE `operacion_bancaria` DISABLE KEYS */;
INSERT INTO `operacion_bancaria` VALUES ('OB001','2012-06-28',68.7,'-','Telefono','570-19653197-0-60','C0001','CB001'),('OB002','2012-06-28',227764.73,'-','Transaccion','564-56456456-4-56','C0001','CB001'),('OB003','2012-06-28',71732.52,'-','Transaccion','454-56456456-4-65','C0001','CB001');
/*!40000 ALTER TABLE `operacion_bancaria` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-06-29 19:49:57
