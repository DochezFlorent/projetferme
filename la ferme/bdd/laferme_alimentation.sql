-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: laferme
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alimentation`
--

DROP TABLE IF EXISTS `alimentation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `alimentation` (
  `fkplante` int(10) unsigned NOT NULL,
  `fkanimal` int(10) unsigned NOT NULL,
  `annee` tinyint(4) NOT NULL,
  `qtx` smallint(6) NOT NULL COMMENT 'quantite de plante consommee par an, unite kg',
  PRIMARY KEY (`fkplante`,`fkanimal`,`annee`),
  KEY `plante_idx` (`fkplante`),
  KEY `animal_idx` (`fkanimal`),
  CONSTRAINT `idanimal` FOREIGN KEY (`fkanimal`) REFERENCES `animal` (`idanimal`),
  CONSTRAINT `idplante` FOREIGN KEY (`fkplante`) REFERENCES `plante` (`idplante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alimentation`
--

LOCK TABLES `alimentation` WRITE;
/*!40000 ALTER TABLE `alimentation` DISABLE KEYS */;
INSERT INTO `alimentation` VALUES (2,8,16,817),(4,3,17,42),(7,3,17,304),(10,4,15,70),(10,4,16,80),(10,4,17,100),(10,4,18,60),(17,7,17,72),(19,6,16,428),(30,1,15,81),(34,4,18,40),(71,5,16,863),(110,3,16,702),(122,8,18,979),(140,8,17,611),(150,2,15,693),(156,7,17,900),(158,2,18,635),(165,3,18,547),(165,8,18,550),(192,2,18,74),(195,3,18,786),(230,7,18,743);
/*!40000 ALTER TABLE `alimentation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-12 14:49:55
