-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: posts
-- ------------------------------------------------------
-- Server version	5.7.18

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
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2018-11-19 12:03:15','2018-11-19 12:03:15');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicacion_translations`
--

DROP TABLE IF EXISTS `publicacion_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publicacion_translations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `publicacion_id` int(11) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  PRIMARY KEY (`id`),
  KEY `index_publicacion_translations_on_publicacion_id` (`publicacion_id`),
  KEY `index_publicacion_translations_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacion_translations`
--

LOCK TABLES `publicacion_translations` WRITE;
/*!40000 ALTER TABLE `publicacion_translations` DISABLE KEYS */;
INSERT INTO `publicacion_translations` VALUES (1,1,'en','2018-11-19 15:32:54','2018-11-19 15:32:54','dog','white'),(2,1,'es','2018-11-19 15:32:54','2018-11-19 15:32:54','perro','blanco'),(3,1,'ca','2018-11-19 15:32:54','2018-11-19 15:32:54','gos','blanc'),(4,2,'ca','2018-11-19 15:33:53','2018-11-19 15:33:53','gat','negre'),(5,2,'es','2018-11-19 15:33:53','2018-11-19 15:33:53','gato','negro'),(6,2,'en','2018-11-19 15:33:53','2018-11-19 15:33:53','cat','black'),(7,3,'en','2018-11-19 15:34:25','2018-11-19 15:34:25','cat','black'),(8,3,'es','2018-11-19 15:34:25','2018-11-19 15:34:25','gato','negro'),(9,3,'ca','2018-11-19 15:34:25','2018-11-19 15:34:25','gat','negre'),(10,4,'ca','2018-11-19 15:35:14','2018-11-19 15:35:14','vaca','grissa'),(11,4,'es','2018-11-19 15:35:14','2018-11-19 15:35:14','vaca','gris'),(12,4,'en','2018-11-19 15:35:14','2018-11-19 15:35:14','cow','gray'),(13,5,'es','2018-11-19 15:37:28','2018-11-19 15:37:28','pollo','amarillo'),(14,5,'en','2018-11-19 15:37:28','2018-11-19 15:37:28','chicken',''),(15,5,'ca','2018-11-19 15:37:28','2018-11-19 15:37:28','pollastre',''),(16,6,'en','2018-11-19 15:38:08','2018-11-19 15:38:08','pig',''),(17,6,'es','2018-11-19 15:38:08','2018-11-19 15:38:08','cerdo',''),(18,6,'ca','2018-11-19 15:38:08','2018-11-19 15:38:08','porc',''),(19,7,'en','2018-11-19 15:44:28','2018-11-19 15:44:28','ostrich','red'),(20,7,'es','2018-11-19 15:44:28','2018-11-19 15:44:28','avestruz','rojo'),(21,7,'ca','2018-11-19 15:44:28','2018-11-19 15:44:28','avestrúz','vermell');
/*!40000 ALTER TABLE `publicacion_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicacions`
--

DROP TABLE IF EXISTS `publicacions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publicacions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) DEFAULT NULL,
  `text` text,
  `category` text,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacions`
--

LOCK TABLES `publicacions` WRITE;
/*!40000 ALTER TABLE `publicacions` DISABLE KEYS */;
INSERT INTO `publicacions` VALUES (1,NULL,NULL,'caninos','2018-11-19 14:32:54'),(2,NULL,NULL,'felino','2018-11-19 14:33:53'),(3,NULL,NULL,'felino','2018-11-19 14:34:25'),(4,NULL,NULL,'vacas','2018-11-19 14:35:14'),(5,NULL,NULL,'ave','2018-11-19 14:37:28'),(6,NULL,NULL,'cerdos','2018-11-19 14:38:08'),(7,NULL,NULL,'ave','2018-11-19 14:44:28');
/*!40000 ALTER TABLE `publicacions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20181116090906'),('20181116095137');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-19 16:47:03
