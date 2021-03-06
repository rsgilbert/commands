-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: birdwatchers
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `humans`
--

DROP TABLE IF EXISTS `humans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `humans` (
  `human_id` int NOT NULL AUTO_INCREMENT,
  `formal_title` enum('Mr','Ms','Ms.','Mr.') DEFAULT NULL,
  `name_first` varchar(25) DEFAULT NULL,
  `name_last` varchar(25) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `country_id` char(2) DEFAULT NULL,
  `membership_type` enum('basic','premium') DEFAULT NULL,
  `membership_expiration` date DEFAULT NULL,
  `better_birders_site` tinyint DEFAULT '0',
  `possible_duplicate` tinyint DEFAULT '0',
  PRIMARY KEY (`human_id`),
  KEY `human_names` (`name_last`,`name_first`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `humans`
--

LOCK TABLES `humans` WRITE;
/*!40000 ALTER TABLE `humans` DISABLE KEYS */;
INSERT INTO `humans` VALUES (1,'Mr','Russell','Dyer','russell@mysqlresources.com','ug',NULL,NULL,0,0),(2,'Mr','Richard','Stringer','richard@mysqlresources.com','ug',NULL,NULL,0,0),(3,'Ms','Rusty','Osborne','rusty@mysqlresources.com','ug',NULL,NULL,0,0),(4,'Ms','Lexi','Hollar','alexandra@mysqlresources.com','ug',NULL,NULL,0,1),(17,'Mr','Rusell','Dyer','russell@dyerhouse.com','ug',NULL,NULL,0,0),(26,'Ms','Katerina','Smirnova','katya@mail.ru','ug',NULL,NULL,0,0),(27,'Ms','Anahit','Vanetsyan','anahit@gmail.com','ug',NULL,NULL,0,0),(28,'Ms','Marie','Dyer','marie@gmail.com','ug',NULL,NULL,0,0),(29,'Mr','Geoffrey','Dyer',NULL,'ug',NULL,NULL,0,0),(30,'Ms','MICHAEL','STONE',NULL,'ug',NULL,NULL,0,0),(34,'Ms','Melissa','Lee',NULL,'ug',NULL,NULL,0,0),(35,'Mr','andy','oram',NULL,'ug',NULL,NULL,0,0),(36,'Mr','Michael','Zabalaoui',NULL,'ug',NULL,NULL,0,0),(40,'Mr','Jack','Bard','jack.bard@mysqlresources.com','ug',NULL,NULL,0,0),(41,'Mr','Oliver','Cromwell','ocrom@mysqlresources.com','ug',NULL,NULL,0,0),(42,'Mr','Sun','Tzu','mastersun@yahoo.com','ug',NULL,NULL,0,0),(43,'Mr','Joe','Samson','sam@mysqlresources.com','ug',NULL,NULL,0,0),(44,'Ms','Elizabeth','Stewart','lizstew@yahoo.com','ug',NULL,NULL,0,0),(45,'Mr','Barry','Pilson','barry@gomail.com','ug',NULL,NULL,1,0),(46,'Ms','Lexi','Hollar','alexandra@mysqlresources.com','ug',NULL,NULL,1,1),(47,'Mr','Ricky','Adams','ricky@gomail.com','ug',NULL,NULL,1,0);
/*!40000 ALTER TABLE `humans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prize_winners`
--

DROP TABLE IF EXISTS `prize_winners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prize_winners` (
  `winner_id` int NOT NULL AUTO_INCREMENT,
  `human_id` int DEFAULT NULL,
  `winner_date` date DEFAULT NULL,
  `prize_chosen` varchar(255) DEFAULT NULL,
  `prize_sent` date DEFAULT NULL,
  PRIMARY KEY (`winner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prize_winners`
--

LOCK TABLES `prize_winners` WRITE;
/*!40000 ALTER TABLE `prize_winners` DISABLE KEYS */;
INSERT INTO `prize_winners` VALUES (1,1,NULL,NULL,NULL),(2,2,NULL,NULL,NULL),(3,3,NULL,NULL,NULL),(4,4,NULL,NULL,NULL),(5,17,'2021-02-14',NULL,NULL),(6,26,NULL,NULL,NULL),(7,27,NULL,NULL,NULL),(8,28,'2021-02-14',NULL,NULL),(9,29,NULL,NULL,NULL),(10,30,'2021-02-14',NULL,NULL),(11,34,NULL,NULL,NULL),(12,35,NULL,NULL,NULL),(13,36,'2021-02-14',NULL,NULL),(14,40,NULL,NULL,NULL),(15,41,NULL,NULL,NULL),(16,42,NULL,NULL,NULL),(17,43,'2021-02-14',NULL,NULL),(18,44,'2021-02-14',NULL,NULL),(19,45,NULL,NULL,NULL),(20,46,NULL,NULL,NULL),(21,47,NULL,NULL,NULL);
/*!40000 ALTER TABLE `prize_winners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_answers`
--

DROP TABLE IF EXISTS `survey_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey_answers` (
  `answer_id` int NOT NULL AUTO_INCREMENT,
  `human_id` int DEFAULT NULL,
  `question_id` int DEFAULT NULL,
  `date_answered` datetime DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_answers`
--

LOCK TABLES `survey_answers` WRITE;
/*!40000 ALTER TABLE `survey_answers` DISABLE KEYS */;
INSERT INTO `survey_answers` VALUES (1,29,1,'2015-05-17 20:47:35','2'),(2,29,2,'2015-05-17 20:47:35','2'),(3,35,1,'2015-05-17 20:47:35','1'),(4,35,2,'2015-05-17 20:47:35','1'),(5,26,1,'2015-05-17 20:47:35','2'),(6,26,2,'2015-05-17 20:47:35','1'),(7,27,1,'2015-05-17 20:47:35','2'),(8,27,2,'2015-05-17 20:47:35','4'),(9,16,1,'2015-05-17 20:47:35','3'),(10,3,1,'2015-05-17 20:47:35','1'),(11,3,2,'2015-05-17 20:47:35','1');
/*!40000 ALTER TABLE `survey_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys`
--

DROP TABLE IF EXISTS `surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveys` (
  `survey_id` int NOT NULL AUTO_INCREMENT,
  `survey_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`survey_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys`
--

LOCK TABLES `surveys` WRITE;
/*!40000 ALTER TABLE `surveys` DISABLE KEYS */;
INSERT INTO `surveys` VALUES (1,'Favorite Birding Location'),(2,'Preferred Birds');
/*!40000 ALTER TABLE `surveys` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-25 17:18:14
