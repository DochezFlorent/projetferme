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
-- Table structure for table `employe`
--

DROP TABLE IF EXISTS `employe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employe` (
  `idemploye` int(10) unsigned NOT NULL,
  `nom` varchar(45) NOT NULL,
  `fkposte` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`idemploye`),
  KEY `poste_idx` (`fkposte`),
  CONSTRAINT `poste` FOREIGN KEY (`fkposte`) REFERENCES `poste` (`idposte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employe`
--

LOCK TABLES `employe` WRITE;
/*!40000 ALTER TABLE `employe` DISABLE KEYS */;
INSERT INTO `employe` VALUES (1,'Bennett',7),(2,'Gross',4),(3,'Burris',8),(4,'Solomon',4),(5,'Nash',3),(6,'David',5),(7,'Serrano',10),(8,'Wheeler',6),(9,'Perez',4),(10,'Stafford',3),(11,'Reeves',9),(12,'Santana',10),(13,'Hawkins',2),(14,'Dorsey',2),(15,'Hogan',6),(16,'Yates',4),(17,'Levine',1),(18,'Pope',7),(19,'Shields',1),(20,'Holland',9),(21,'Rocha',4),(22,'Boyd',3),(23,'Paul',3),(24,'Beck',10),(25,'Booth',1),(26,'Lancaster',3),(27,'Mclean',7),(28,'Crosby',2),(29,'Gibson',5),(30,'Horn',6),(31,'Hayden',10),(32,'Sanchez',7),(33,'Woods',5),(34,'Valencia',2),(35,'Patterson',8),(36,'Allen',10),(37,'Roach',9),(38,'Baird',6),(39,'Martinez',8),(40,'Gordon',8),(41,'Horne',1),(42,'Bender',1),(43,'Kim',4),(44,'Ayala',8),(45,'Nieves',8),(46,'Gamble',7),(47,'Mercado',1),(48,'Fletcher',3),(49,'Kirby',4),(50,'Mcneil',3),(51,'Harvey',1),(52,'Cherry',7),(53,'Waller',7),(54,'Hickman',7),(55,'Case',8),(56,'Levine',7),(57,'Mays',5),(58,'Dennis',9),(59,'England',2),(60,'Freeman',10),(61,'Callahan',7),(62,'Wolfe',9),(63,'Munoz',8),(64,'Barron',4),(65,'Ramirez',2),(66,'Rivers',1),(67,'Reid',2),(68,'Levy',8),(69,'Fletcher',5),(70,'Boyer',5),(71,'Jones',6),(72,'Haynes',10),(73,'Jackson',6),(74,'Hendrix',6),(75,'Paul',9),(76,'Casey',5),(77,'England',9),(78,'Slater',7),(79,'Dominguez',10),(80,'Clark',3),(81,'Glenn',7),(82,'Lamb',5),(83,'Morales',6),(84,'Walsh',1),(85,'Ewing',2),(86,'Frost',1),(87,'Grimes',8),(88,'Gilbert',9),(89,'Mann',2),(90,'Acevedo',4),(91,'Klein',10),(92,'Houston',4),(93,'Wolf',5),(94,'Carlson',1),(95,'Moses',9),(96,'Benson',4),(97,'Oneal',2),(98,'Mcdonald',4),(99,'Patterson',6),(100,'Kane',8);
/*!40000 ALTER TABLE `employe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-12 14:49:52
