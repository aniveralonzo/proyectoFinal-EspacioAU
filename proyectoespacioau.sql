-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: enquiry_poc_db
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `addressId` int NOT NULL AUTO_INCREMENT,
  `detail` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `zip` int DEFAULT NULL,
  PRIMARY KEY (`addressId`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (5,'hello st 348 subway','cityway','china',22334),(6,'city house 334 street','ockahoma','china',33441),(11,'holacity hghb parck cent','cityway','usa',3452),(12,'city parck kñhigh',NULL,NULL,NULL),(13,'sfity',NULL,NULL,NULL),(15,'city lucas',NULL,NULL,NULL),(18,'zapote ciudad de guatemala','citygt','guatemala',45653),(20,'ciudad de guatemala',NULL,NULL,NULL),(21,'23house 13st,zone 234','cityhighway','china',45673),(23,'city downtown best highway',NULL,NULL,NULL),(24,'plaza centro nearbay police center',NULL,NULL,NULL),(25,'plaza centro nearbay police center',NULL,NULL,NULL),(26,'calle real zona 7 centro edificion23',NULL,NULL,NULL),(27,'ciudad rich, zona medieval,central park',NULL,NULL,NULL),(28,'ciudad centro zona23 lote 45',NULL,NULL,NULL),(29,'calle 13,zona21, calzada la paz 23-12',NULL,NULL,NULL),(30,'place center,casa 23-12 ciudad norte',NULL,NULL,NULL),(31,'casa 23,zona real, area52 calle z',NULL,NULL,NULL),(32,'calle corona 23-1 calzada lapaz',NULL,NULL,NULL),(33,'calle 23 ave 45 ciudad centro 23-12',NULL,NULL,NULL),(34,'casa 34 plaza centro venida 34',NULL,NULL,NULL);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `contactId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `localAddress` int DEFAULT NULL,
  `permanentAddress` int DEFAULT NULL,
  PRIMARY KEY (`contactId`),
  KEY `localAddress` (`localAddress`),
  KEY `permanentAddress` (`permanentAddress`),
  CONSTRAINT `localAddress` FOREIGN KEY (`localAddress`) REFERENCES `address` (`addressId`),
  CONSTRAINT `permanentAddress` FOREIGN KEY (`permanentAddress`) REFERENCES `address` (`addressId`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (2,'HOLACRACK','alo@gmail.com','22331',NULL,5),(3,'HOLIDAY','ASDF@GMAIL.COM','8899',NULL,6),(8,'google','google@gmail.com','4478|',NULL,11),(9,'hola','z@gmail.com','44771',NULL,12),(10,'aniver','afsaf@gmail.com','22334',NULL,13),(12,'luis perez','luisi@gmail.com','8899933',NULL,15),(15,'U mariano galvez','umg@gmail.com','554433',NULL,18),(17,'martin lutero','martin@gmail.com','776622',NULL,20),(18,'U pekinChina','chinese@gmail.com','445566',NULL,21),(20,'marcelo guti','guti@icloud.com','33446666',NULL,23),(21,'putin gonzalez','gonzp@gmail.com','22554433',NULL,24),(22,'putin gonzalez','gonzp@gmail.com','22554433',NULL,25),(23,'zayra','zayra@gmail.com','998877',NULL,26),(24,'wuhan juarez','juarew@gmail.com','446677',NULL,27),(25,'oscar lopez','lopez@gmailcom','334455',NULL,28),(26,'aracely duran','duran@gmail.com','335544',NULL,29),(27,'bladimir size','size@gmail.com','117733',NULL,30),(28,'elon perez','eperez@gmail.com','998833',NULL,31),(29,'lucy hernaz','lucyh@gmail.com','884466',NULL,32),(30,'lucas creez','lucascr@gmail.com','44332',NULL,33),(31,'mariela gomez','magoz@gmail.co','33778822',NULL,34);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `courseId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `fees` double DEFAULT NULL,
  `instituteId` int DEFAULT NULL,
  PRIMARY KEY (`courseId`),
  KEY `instituteId` (`instituteId`),
  CONSTRAINT `instituteId` FOREIGN KEY (`instituteId`) REFERENCES `institute` (`instituteId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'ciencia',48,1),(2,'planos construccion',998,1),(4,'google onlin',435,3),(5,'progra arquitectonica',400,1),(6,'computacion',500,2),(7,'ingenieria sistem',700,4),(8,'medicina',499,5),(9,'software informatica',540,4),(10,'energia nuclear',999,2),(11,'paginasWeb',250,3),(12,'inteligencia artificial',845,5);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enquiry`
--

DROP TABLE IF EXISTS `enquiry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enquiry` (
  `enquiryId` int NOT NULL AUTO_INCREMENT,
  `doe` date DEFAULT NULL,
  `nextCallDate` date DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `committedFees` double DEFAULT NULL,
  `lastUpdate` date DEFAULT NULL,
  `contactId` int DEFAULT NULL,
  `instituteId` int DEFAULT NULL,
  `enquirySourceId` int DEFAULT NULL,
  PRIMARY KEY (`enquiryId`),
  KEY `contactId` (`contactId`),
  KEY `instituteId_id` (`instituteId`),
  KEY `enquirySourceId` (`enquirySourceId`),
  CONSTRAINT `contactId` FOREIGN KEY (`contactId`) REFERENCES `contact` (`contactId`),
  CONSTRAINT `enquirySourceId` FOREIGN KEY (`enquirySourceId`) REFERENCES `enquirysource` (`enquirySourceId`),
  CONSTRAINT `instituteId_id` FOREIGN KEY (`instituteId`) REFERENCES `institute` (`instituteId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquiry`
--

LOCK TABLES `enquiry` WRITE;
/*!40000 ALTER TABLE `enquiry` DISABLE KEYS */;
INSERT INTO `enquiry` VALUES (3,'2020-12-29',NULL,'rev',435,'2020-12-29',9,3,3),(4,'2020-12-29',NULL,'fssafsafd',998,'2020-12-29',10,1,3),(6,'2020-12-29',NULL,'rev',500,'2020-12-29',12,2,3),(9,'2020-12-30',NULL,'crack en ingenieria',700,'2020-12-30',17,4,8),(11,'2020-12-31',NULL,'check virus solution',499,'2020-12-31',20,5,10),(12,'2021-01-04',NULL,'proyecto de inteligencia',1499,'2021-01-04',21,2,12),(13,'2021-01-04',NULL,'proyecto de inteligencia',1499,'2021-01-04',22,2,12),(14,'2021-01-04',NULL,'hola yo',435,'2021-01-04',23,3,13),(15,'2021-01-04',NULL,'investigacion rev',499,'2021-01-04',24,5,14),(16,'2021-01-06',NULL,'estudiante1',540,'2021-01-06',25,4,13),(17,'2021-01-06',NULL,'construccion de edificions',998,'2021-01-06',26,1,17),(18,'2021-01-06',NULL,'hacker avanzado',500,'2021-01-06',27,2,13),(19,'2021-01-06',NULL,'creacion de paginas',250,'2021-01-06',28,3,15),(20,'2021-01-06',NULL,'mundo de la programacion',700,'2021-01-06',29,4,13),(21,'2021-01-06',NULL,'mundo digital',845,'2021-01-06',30,5,15),(22,'2021-01-06',NULL,'arquitectura digital',400,'2021-01-06',31,1,17);
/*!40000 ALTER TABLE `enquiry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enquirycourse`
--

DROP TABLE IF EXISTS `enquirycourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enquirycourse` (
  `enquiryCourseId` int NOT NULL AUTO_INCREMENT,
  `courseId` int DEFAULT NULL,
  `enquiryId` int DEFAULT NULL,
  PRIMARY KEY (`enquiryCourseId`),
  KEY `courseId` (`courseId`),
  KEY `enquiryId` (`enquiryId`),
  CONSTRAINT `courseId` FOREIGN KEY (`courseId`) REFERENCES `course` (`courseId`),
  CONSTRAINT `enquiryId` FOREIGN KEY (`enquiryId`) REFERENCES `enquiry` (`enquiryId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquirycourse`
--

LOCK TABLES `enquirycourse` WRITE;
/*!40000 ALTER TABLE `enquirycourse` DISABLE KEYS */;
INSERT INTO `enquirycourse` VALUES (1,4,3),(2,2,4),(3,6,6),(4,7,9),(5,8,11),(6,6,12),(7,10,12),(8,6,13),(9,10,13),(10,4,14),(11,8,15),(12,9,16),(13,2,17),(14,6,18),(15,11,19),(16,7,20),(17,12,21),(18,5,22);
/*!40000 ALTER TABLE `enquirycourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enquirysource`
--

DROP TABLE IF EXISTS `enquirysource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enquirysource` (
  `enquirySourceId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`enquirySourceId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquirysource`
--

LOCK TABLES `enquirysource` WRITE;
/*!40000 ALTER TABLE `enquirysource` DISABLE KEYS */;
INSERT INTO `enquirysource` VALUES (3,'astronomia.com'),(8,'launch.com'),(10,'google.com'),(11,'arquitectura.com'),(12,'espionaje.com.rs'),(13,'backend.com.mx'),(14,'biologia.com'),(15,'programacion.com'),(16,'medicina.com'),(17,'construccion.com'),(18,'robotica.com'),(19,'apps.com'),(20,'electronica.progra.com'),(21,'cienciamedicinal.com'),(22,'frontend.com');
/*!40000 ALTER TABLE `enquirysource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `followup`
--

DROP TABLE IF EXISTS `followup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `followup` (
  `followupId` int NOT NULL AUTO_INCREMENT,
  `doe` date DEFAULT NULL,
  `detail` varchar(45) DEFAULT NULL,
  `enquiryId` int DEFAULT NULL,
  PRIMARY KEY (`followupId`),
  KEY `enquiryId_id` (`enquiryId`),
  CONSTRAINT `enquiryId_id` FOREIGN KEY (`enquiryId`) REFERENCES `enquiry` (`enquiryId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `followup`
--

LOCK TABLES `followup` WRITE;
/*!40000 ALTER TABLE `followup` DISABLE KEYS */;
INSERT INTO `followup` VALUES (1,'2020-12-29','holaaa',3),(2,'2020-12-30','continuar con la investigacion',9),(3,'2020-12-31','revisar mas fuentes de investigacion',9),(4,'2020-12-31','adios recordatorio',3),(5,'2020-12-31','investigar estilos de bata para forences',11),(6,'2021-01-04','realizar plano en hoja mantequilla',4),(7,'2021-01-04','check proyecto1',12),(8,'2021-01-04','ver mas investigaciones de biologia',15),(9,'2021-01-06','biologia2',15),(10,'2021-01-06','estudiar microsoft office',14),(11,'2021-01-06','comprar materiales construccion',17),(12,'2021-01-06','crear softwares',6),(13,'2021-01-06','check proyecto2',12),(14,'2021-01-06','espionaje digital',18),(15,'2021-01-06','backend investigacion',19),(16,'2021-01-06','crear app',16),(17,'2021-01-06','investigar pasos para base de datos',20),(18,'2021-01-06','investiacion de progra y electronica',21),(19,'2021-01-06','programas para planos',22),(20,'2021-01-06','investigar medida para uso de plano',4),(21,'2021-01-06','investigar materiales necesarios',17),(22,'2021-01-06','investigar plugins softwares',6),(23,'2021-01-06','hola de nuevo',3),(24,'2021-01-06','investigar proyectos exposicion',9),(25,'2021-01-06','investigar materiales forences',11);
/*!40000 ALTER TABLE `followup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institute`
--

DROP TABLE IF EXISTS `institute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institute` (
  `instituteId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `doe` date DEFAULT NULL,
  `contactId` int DEFAULT NULL,
  PRIMARY KEY (`instituteId`),
  KEY `contactId_id` (`contactId`),
  CONSTRAINT `contactId_id` FOREIGN KEY (`contactId`) REFERENCES `contact` (`contactId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institute`
--

LOCK TABLES `institute` WRITE;
/*!40000 ALTER TABLE `institute` DISABLE KEYS */;
INSERT INTO `institute` VALUES (1,'Instituto de Arquitectura','2020-12-11',2),(2,'Instituto ingelligence Moscu','2020-12-11',3),(3,'U google center','2020-12-29',8),(4,'U mariano galvez','2020-12-30',15),(5,'U pekinChina','2020-12-31',18);
/*!40000 ALTER TABLE `institute` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-10 18:40:28
