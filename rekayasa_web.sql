-- MySQL dump 10.13  Distrib 5.7.24, for Win64 (x86_64)
--
-- Host: localhost    Database: rekayasa_web
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `status` varchar(16) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (4,'Judul','Update content','draft','2021-11-06 21:49:43','2022-01-14 19:37:20'),(5,'Test Create','Lorem ipsum dolor sit amet','draft','2021-11-06 21:50:10','2021-11-06 21:50:10'),(6,'Test Create','Lorem ipsum dolor sit amet','draft','2021-11-06 21:50:11','2021-11-06 21:50:11'),(7,'Test Create','Lorem ipsum dolor sit amet','draft','2021-11-06 21:50:12','2021-11-06 21:50:12'),(8,'Test Create','Lorem ipsum dolor sit amet','draft','2021-11-06 21:50:12','2021-11-06 21:50:12'),(9,'Test Create','Lorem ipsum dolor sit amet','draft','2021-11-06 21:50:13','2021-11-06 21:50:13'),(10,'Test Create','Lorem ipsum dolor sit amet','draft','2021-11-06 21:50:13','2021-11-06 21:50:13'),(11,'Test Create','Lorem ipsum dolor sit amet','draft','2021-11-06 21:50:14','2021-11-06 21:50:14'),(12,'Test Create','Lorem ipsum dolor sit amet','draft','2021-11-06 21:50:15','2021-11-06 21:50:15'),(14,'Test Create','Lorem ipsum dolor sit amet','draft','2021-11-06 21:50:16','2021-11-06 21:50:16'),(15,'Test Create','Lorem ipsum dolor sit amet','draft','2021-11-06 21:50:16','2021-11-06 21:50:16'),(16,'Test Create','Lorem ipsum dolor sit amet','draft','2021-11-06 21:50:17','2021-11-06 21:50:17'),(17,'Test Create','Lorem ipsum dolor sit amet','draft','2021-11-06 21:50:17','2021-11-06 21:50:17'),(18,'Test Create','Lorem ipsum dolor sit amet','draft','2021-11-06 21:50:18','2021-11-06 21:50:18'),(19,'Test Create','Lorem ipsum dolor sit amet','draft','2021-11-06 21:50:18','2021-11-06 21:50:18'),(20,'Test Create','Lorem ipsum dolor sit amet','draft','2021-11-06 21:50:19','2021-11-06 21:50:19'),(21,'Test Create','Lorem ipsum dolor sit amet','draft','2021-11-06 21:50:20','2021-11-06 21:50:20'),(22,'Test Create','Lorem ipsum dolor sit amet','draft','2021-11-06 21:50:20','2021-11-06 21:50:20'),(23,'Test Create','Lorem ipsum dolor sit amet','draft','2021-11-06 21:50:21','2021-11-06 21:50:21'),(24,'Test Create','Lorem ipsum dolor sit amet','draft','2022-01-14 19:36:53','2022-01-14 19:36:53');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2021-11-06-132417','App\\Database\\Migrations\\CreateArticlesTable','default','App',1636206036,1),(2,'2022-01-13-122915','App\\Database\\Migrations\\CreateUsersTable','default','App',1642077816,2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(16) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'John Doe','johndoe@example.com','$2y$10$eR7M4smjAoe61FJed8sZV.6D1mUiu8BataRp4QP0x4WijGAz9cidy','','2022-01-13 20:11:23','2022-01-13 20:11:23');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'rekayasa_web'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-14 19:55:32
