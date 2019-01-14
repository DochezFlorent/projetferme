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
-- Table structure for table `plante`
--

DROP TABLE IF EXISTS `plante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `plante` (
  `idplante` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `fktype` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idplante`),
  UNIQUE KEY `nom_UNIQUE` (`nom`),
  KEY `type_idx` (`fktype`),
  CONSTRAINT `type` FOREIGN KEY (`fktype`) REFERENCES `type_plante` (`idtype_plante`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plante`
--

LOCK TABLES `plante` WRITE;
/*!40000 ALTER TABLE `plante` DISABLE KEYS */;
INSERT INTO `plante` VALUES (1,'Blé tendre dhiver',1),(2,'Blé tendre de printemps',1),(3,'Maïs doux',1),(4,'Maïs ensilage',1),(5,'Maïs',1),(6,'Orge d\'hiver',1),(7,'Orge de printemps',1),(8,'Avoine dhiver',1),(9,'Avoine de printemps',1),(10,'Blé dur dhiver',1),(11,'Blé dur de printemps',1),(12,'Blé dur de printemps semé tardivement ',1),(13,'Autre céréale dun autre genre',1),(14,'Fagopyrum',1),(15,'Phalaris',1),(16,'Sorghum',1),(17,'Panicum',1),(18,'Setaria',1),(19,'Avena',1),(20,'Hordeum',1),(21,'Secale',1),(22,'Triticum',1),(27,'Zea',1),(28,'Épeautre',1),(29,'Mélange de céréales',1),(30,'Millet',1),(31,'Seigle dhiver',1),(32,'Seigle de printemps',1),(33,'Sorgho',1),(34,'Sarrasin',1),(35,'Triticale dhiver',1),(36,'Triticale de printemps',1),(37,'Colza dhiver',1),(38,'Colza de printemps',1),(39,'Tournesol',1),(40,'Arachide ',1),(41,'Lin non textile dhiver',1),(42,'Lin non textile de printemps',1),(43,'Mélange doléagineux',1),(44,'Navette dété',1),(45,'Navette dhiver',1),(46,'Autre oléagineux dun autre genre',1),(47,'Autre oléagineux despèce Helianthus',1),(48,'illette',1),(49,'Soja',1),(50,'Fève',1),(51,'Lupin doux dhiver',1),(52,'Lupin doux de printemps ',1),(53,'Autre protéagineux dun autre genre',1),(54,'Pois dhiver',1),(55,'Pois de printemps semé avant le 31/05',1),(56,'Chanvre',1),(57,'Lin fibres',1),(58,'Jachère de 5 ans ou moins',1),(59,'Jachère de 6 ans ou plus',1),(60,'Jachère noire',1),(61,'Riz',1),(62,'Lentille cultivée (non fourragère)',1),(63,'Pois chiche',1),(64,'Betterave fourragère',1),(65,'Carotte fourragère',1),(66,'Chou fourrager',1),(67,'Dactyle de 5 ans ou moins',1),(68,'Autre fourrage annuel dun autre genre',1),(69,'Fétuque de 5 ans ou moins',1),(70,'Féverole fourragère ',1),(71,'Autre féverole fourragère',1),(72,'Fléole de 5 ans ou moins',1),(73,'Gaillet',1),(74,'Gesse',1),(75,'Jarosse ',1),(76,'Jarosse déshydratée',1),(77,'Autre jarosse',1),(78,'Lentille fourragère',1),(79,'Autre lupin fourrager dhiver',1),(80,'Autre lupin fourrager de printemps',1),(81,'Lupin fourrager dhiver ',1),(82,'Lotier',1),(83,'Lupin fourrager de printemps ',1),(84,'Luzerne ',1),(85,'Luzerne déshydratée',1),(86,'Autre luzerne',1),(87,'Mélilot ',1),(88,'Mélilot déshydraté',1),(89,'Autre mélilot',1),(90,'Minette',1),(91,'Moha',1),(92,'Navet fourrager',1),(93,'Pâturin commun de 5 ans ou moins',1),(94,'Autre pois fourrager dhiver',1),(95,'Autre pois fourrager de printemps',1),(96,'Pois fourrager dhiver ',1),(97,'Pois fourrager de printemps ',1),(98,'Radis fourrager',1),(99,'Sainfoin ',1),(100,'Sainfoin déshydraté',1),(101,'Autre sainfoin',1),(102,'Serradelle ',1),(103,'Serradelle déshydratée',1),(104,'Autre serradelle',1),(105,'Trèfle ',1),(106,'Trèfle déshydraté',1),(107,'Autre trèfle',1),(108,'Vesce ',1),(109,'Vesce déshydratée',1),(110,'Autre vesce',1),(111,'X-Felium de 5 ans ou moins',1),(112,'Bois pâturé',1),(113,'Prairie en rotation longue (6 ans ou plus)',1),(114,'Autre prairie temporaire de 5 ans ou moins',1),(115,'Ray-grass de 5 ans ou moins',1),(116,'Agrume',1),(117,'Ananas',1),(118,'Avocat',1),(119,'Banane créole',1),(120,'Banane',1),(121,'Café / Cacao',1),(122,'Cerise bigarreau ',1),(123,'Petit fruit rouge',1),(124,'Prune dEnte ',1),(125,'Pêche Pavie ',1),(126,'Poire Williams ',1),(127,'Verger (DOM)',1),(128,'Verger',1),(129,'Vigne : raisins de cuve',1),(130,'Vigne : raisins de table',1),(131,'Caroube',1),(132,'Châtaigne',1),(133,'Noisette',1),(134,'Noix',1),(135,'Pistache ',1),(136,'Oliveraie ',1),(137,'Aneth',1),(138,'Angélique',1),(139,'Anis',1),(140,'Bardane',1),(141,'Basilic',1),(142,'Bourrache de 5 ans ou moins',1),(143,'Betterave non fourragère / Bette',1),(144,'Carvi',1),(145,'Chardon Marie',1),(146,'Ciboulette',1),(147,'Cameline',1),(148,'Camomille',1),(149,'Coriandre',1),(150,'Cerfeuil',1),(151,'Cumin',1),(152,'Curcuma',1),(153,'Estragon',1),(154,'Fenouil',1),(155,'Fenugrec',1),(156,'Houblon',1),(157,'Lavande / Lavandin',1),(158,'Mauve',1),(159,'Mélisse',1),(160,'Millepertuis',1),(161,'Moutarde',1),(162,'Marjolaine / Origan',1),(163,'Menthe',1),(164,'Oseille',1),(165,'Plante aromatique (autre que vanille)',1),(166,'Plante médicinale',1),(167,'Autre plante à parfum',1),(168,'Persil',1),(169,'Psyllium noir de Provence',1),(170,'Plantain psyllium',1),(171,'Romarin',1),(172,'Sauge',1),(173,'Sarriette',1),(174,'Tabac',1),(175,'Thym',1),(176,'Tomate ',1),(177,'Valériane',1),(178,'Vanille sous bois',1),(179,'Vanille',1),(180,'Vanille verte',1),(181,'Ylang-ylang',1),(182,'Aïl',1),(183,'Artichaut ',1),(184,'Aubergine',1),(185,'Bleuet',1),(186,'Bugle rampante',1),(187,'Carotte',1),(188,'Concombre / Cornichon',1),(189,'Courgette / Citrouille',1),(190,'Céleri',1),(191,'Chicorée / Endive / Scarole',1),(192,'Chou',1),(193,'Courge musquée / Butternut',1),(194,'Cresson alénois de 5 ans ou moins',1),(195,'Cornille',1),(196,'Cresson',1),(197,'Culture sous serre hors sol',1),(198,'Dolique',1),(199,'Épinard',1),(200,'Autre légume ou fruit annuel',1),(201,'Autre légume ou fruit pérenne',1),(202,'Fraise',1),(203,'Géranium',1),(204,'Haricot / Flageolet',1),(205,'Horticulture ornementale de plein champ',1),(206,'Horticulture ornementale sous abri',1),(207,'Laitue / Batavia / Feuille de chêne',1),(208,'Légume sous abri',1),(209,'Mâche',1),(210,'Melon',1),(211,'Marguerite',1),(212,'Navet',1),(213,'Oignon / Échalote',1),(214,'Panais',1),(215,'Pâquerette',1),(216,'Pastèque',1),(217,'Primevère',1),(218,'Poireau',1),(219,'Potiron / Potimarron',1),(220,'Petits pois',1),(221,'Pensée',1),(222,'Pomme de terre de consommation',1),(223,'Pomme de terre féculière',1),(224,'Poivron / Piment',1),(225,'Radis',1),(226,'Roquette',1),(227,'Rutabaga',1),(228,'Salsifis',1),(229,'Tomate',1),(230,'Topinambour',1),(231,'Véronique',1),(232,'Canne à sucre - autre',1),(233,'Brome de 5 ans ou moins',1),(234,'Miscanthus',1),(235,'Autre mélange de plantes fixant lazote',1),(236,'Marais salant',1),(237,'Nyger',1),(238,'Phacélie de 5 ans ou moins',1),(239,'Pépinière',1),(240,'Roselière',1),(241,'Tubercule tropical',1),(242,'Truffière (chênaie de plants mycorhizés)',1),(243,'Vétiver',1),(244,'Culture inconnue',1);
/*!40000 ALTER TABLE `plante` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-12 14:49:53
