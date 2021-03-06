-- MySQL dump 10.13  Distrib 5.7.17, for Win32 (AMD64)
--
-- Host: localhost    Database: sl17_development
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Temporary view structure for view `active_invoices`
--

DROP TABLE IF EXISTS `active_invoices`;
/*!50001 DROP VIEW IF EXISTS `active_invoices`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `active_invoices` AS SELECT 
 1 AS `id`,
 1 AS `member_id`,
 1 AS `created_at`,
 1 AS `updated_at`,
 1 AS `paid`,
 1 AS `payment_link`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `active_tickets`
--

DROP TABLE IF EXISTS `active_tickets`;
/*!50001 DROP VIEW IF EXISTS `active_tickets`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `active_tickets` AS SELECT 
 1 AS `id`,
 1 AS `person_id`,
 1 AS `activity_id`,
 1 AS `created_at`,
 1 AS `updated_at`,
 1 AS `invoice_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `number` int(11) DEFAULT NULL,
  `place_id` int(11) DEFAULT NULL,
  `deltbet` int(11) DEFAULT NULL,
  `min_age` int(11) DEFAULT NULL,
  `max_age` int(11) DEFAULT NULL,
  `first_date` date DEFAULT NULL,
  `last_date` date DEFAULT NULL,
  `ptypes_ok` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_activities_on_person_id` (`person_id`),
  KEY `index_activities_on_place_id` (`place_id`),
  CONSTRAINT `fk_rails_83e177be83` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`),
  CONSTRAINT `fk_rails_ff1c4a3b0d` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` VALUES (1,'Cafe telt','2017-07-23 17:00:00','2017-07-23 19:00:00',1097,'2017-03-23 21:25:43','2017-04-30 20:53:15',NULL,14,NULL,NULL,NULL,NULL,NULL,'1,2,3,4'),(2,'Spilletelt','2017-07-23 10:30:00','2017-07-23 12:30:00',1097,'2017-03-23 21:25:43','2017-04-30 20:53:29',NULL,14,NULL,NULL,NULL,NULL,NULL,'1,2,3,4'),(3,'Fordele m├©bler i teltene','2017-07-23 09:30:00','2017-07-23 11:30:00',1097,'2017-03-23 21:25:43','2017-04-30 20:53:46',NULL,2,NULL,NULL,NULL,NULL,NULL,'1,2'),(4,'Nedpakning','2017-07-30 09:00:00','2017-07-30 11:00:00',1097,'2017-03-23 21:25:43','2017-04-30 20:54:05',NULL,2,NULL,NULL,NULL,NULL,NULL,'1,2'),(5,'Afskedsfest 16+','2017-07-29 20:00:00','2017-07-29 22:00:00',1097,'2017-03-23 21:25:43','2017-04-30 21:03:15',NULL,10,125,16,NULL,'1995-07-29','2001-07-29','1,2'),(6,'Afskedsfest 16+','2017-07-29 20:00:00','2017-07-29 22:00:00',1097,'2017-03-23 21:25:43','2017-04-30 20:59:20',NULL,11,125,NULL,NULL,'1995-07-29','2009-07-29','1,2'),(7,'Afskedsfest 16+','2017-07-29 20:00:00','2017-07-29 22:00:00',1097,'2017-03-23 21:25:43','2017-03-23 21:25:43',NULL,12,125,NULL,NULL,NULL,NULL,NULL),(8,'Afskedsfest 16+','2017-07-29 20:00:00','2017-07-29 22:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,13,125,NULL,NULL,NULL,NULL,NULL),(9,'Afskedsfest 16+','2017-07-29 20:00:00','2017-07-29 22:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,15,125,NULL,NULL,NULL,NULL,NULL),(10,'Afskedsfest for b├©rn i alderen 2-12 ├Ñr','2017-07-29 17:00:00','2017-07-29 19:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,10,50,NULL,NULL,NULL,NULL,NULL),(11,'Afskedsfest yngre teens','2017-07-29 20:00:00','2017-07-29 22:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,9,25,NULL,NULL,NULL,NULL,NULL),(12,'Afskedstale','2017-07-29 00:00:00','2017-07-29 02:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(13,'Aftentur i havkajak','2017-07-26 20:00:00','2017-07-26 22:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,2,150,NULL,NULL,NULL,NULL,NULL),(14,'Animeaften (├åldre Teenagere)','2017-07-27 19:00:00','2017-07-27 21:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(15,'Basketball for let ├©vede/├©vede','2017-07-25 11:00:00','2017-07-25 13:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(16,'Beatles-quiz','2017-07-25 14:00:00','2017-07-25 16:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,11,NULL,NULL,NULL,NULL,NULL,NULL),(17,'Bordrollespil','2017-07-29 11:00:00','2017-07-29 13:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,9,NULL,NULL,NULL,NULL,NULL,NULL),(18,'Byg et sandslot - konkurrence p├Ñ stranden - for hele familien','2017-07-26 14:00:00','2017-07-26 16:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,7,NULL,NULL,NULL,NULL,NULL,NULL),(19,'Byt lego minifigurer','2017-07-24 13:00:00','2017-07-24 15:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,10,NULL,NULL,NULL,NULL,NULL,NULL),(20,'B├©rneloppemarked','2017-07-24 09:00:00','2017-07-24 11:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,10,NULL,NULL,NULL,NULL,NULL,NULL),(21,'B├©rneloppemarked','2017-07-24 09:00:00','2017-07-24 11:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,11,NULL,NULL,NULL,NULL,NULL,NULL),(22,'Check-In','2017-07-23 12:00:00','2017-07-23 14:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,10,NULL,NULL,NULL,NULL,NULL,NULL),(23,'Check-In for f├©rstegangs-deltagere','2017-07-23 12:00:00','2017-07-23 14:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,11,NULL,NULL,NULL,NULL,NULL,NULL),(24,'Chokolade-smagning','2017-07-25 20:00:00','2017-07-25 22:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,11,80,NULL,NULL,NULL,NULL,NULL),(25,'Cola blindsmagning nr. 1','2017-07-25 16:00:00','2017-07-25 18:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,11,10,NULL,NULL,NULL,NULL,NULL),(26,'Cola blindsmagning nr. 2','2017-07-25 16:30:00','2017-07-25 18:30:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,11,10,NULL,NULL,NULL,NULL,NULL),(27,'Cola blindsmagning nr. 3','2017-07-25 17:00:00','2017-07-25 19:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,11,10,NULL,NULL,NULL,NULL,NULL),(28,'Dagens hovedbrud','2017-07-25 09:00:00','2017-07-25 11:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,11,NULL,NULL,NULL,NULL,NULL,NULL),(29,'Drenge-komsammen ├Ñrg 2006','2017-07-25 10:30:00','2017-07-25 12:30:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,12,NULL,NULL,NULL,NULL,NULL,NULL),(30,'Elektronik Workshop 1','2017-07-25 14:00:00','2017-07-25 16:00:00',1097,'2017-03-23 21:25:44','2017-04-16 12:25:13',2,12,160,NULL,NULL,NULL,NULL,NULL),(31,'Elektronik Workshop 2','2017-07-27 14:00:00','2017-07-27 16:00:00',1097,'2017-03-23 21:25:44','2017-04-14 20:44:04',3,12,160,NULL,NULL,NULL,NULL,NULL),(32,'Erfaringsudveksling af Google-kalender','2017-07-29 12:30:00','2017-07-29 14:30:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,12,NULL,NULL,NULL,NULL,NULL,NULL),(33,'Film for teens','2017-07-26 20:00:00','2017-07-26 22:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,9,NULL,NULL,NULL,NULL,NULL,NULL),(34,'Flette h├Ñr - hygge','2017-07-25 10:00:00','2017-07-25 12:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,16,NULL,NULL,NULL,NULL,NULL,NULL),(35,'fodbold for alle','2017-07-23 16:00:00','2017-07-23 18:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,3,NULL,NULL,NULL,NULL,NULL,NULL),(36,'Fodbold fra 7 ├Ñr','2017-07-25 14:00:00','2017-07-25 16:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,3,NULL,NULL,NULL,NULL,NULL,NULL),(37,'Foredrag om at v├ªre Clairvoyant medie','2017-07-25 10:00:00','2017-07-25 12:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,15,NULL,NULL,NULL,NULL,NULL,NULL),(38,'Foredrag om Copenhagen Suborbitals - bemandet amat├©rrumfart','2017-07-24 10:30:00','2017-07-24 12:30:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,4,NULL,NULL,NULL,NULL,NULL,NULL),(39,'Foredrag om Mindfulness - Bevidst N├ªrv├ªr','2017-07-26 15:30:00','2017-07-26 17:30:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,12,NULL,NULL,NULL,NULL,NULL,NULL),(40,'Foredrag om Poker (Texas Hold\'em)','2017-07-25 16:00:00','2017-07-25 18:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,4,NULL,NULL,NULL,NULL,NULL,NULL),(41,'Foredrag om Regression og reinkarnation','2017-07-28 10:00:00','2017-07-28 12:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,15,NULL,NULL,NULL,NULL,NULL,NULL),(42,'Foredrag: B├©rn og unge og sikkerhed p├Ñ nettet.','2017-07-26 11:00:00','2017-07-26 13:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,10,NULL,NULL,NULL,NULL,NULL,NULL),(43,'Foredrag: Enneagrammet - f├Ñ st├©rre indsigt i dig selv og dine relationer','2017-07-28 10:00:00','2017-07-28 12:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,12,NULL,NULL,NULL,NULL,NULL,NULL),(44,'Foredrag: G├©r-det-selv Drug Discovery','2017-07-27 16:30:00','2017-07-27 18:30:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,4,NULL,NULL,NULL,NULL,NULL,NULL),(45,'Foredrag: Hvordan virker infrastruktur og netv├ªrk i erhvervslivet','2017-07-27 10:00:00','2017-07-27 12:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,10,NULL,NULL,NULL,NULL,NULL,NULL),(46,'Foredrag: Hvorfor er der ingen vulkaner og kun sm├Ñ jordsk├ªlv i Danmark?','2017-07-29 13:00:00','2017-07-29 15:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,4,NULL,NULL,NULL,NULL,NULL,NULL),(47,'FOREDRAG: Impostor-f├ªnomenet - er du ogs├Ñ bange for at blive afsl├©ret','2017-07-28 15:30:00','2017-07-28 17:30:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,4,NULL,NULL,NULL,NULL,NULL,NULL),(48,'Foredrag: Udnyt dit potentiale','2017-07-26 11:00:00','2017-07-26 13:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,12,NULL,NULL,NULL,NULL,NULL,NULL),(49,'Fort├ªl en historie','2017-07-26 15:30:00','2017-07-26 17:30:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,10,NULL,NULL,NULL,NULL,NULL,NULL),(50,'Frisbee og boldbat','2017-07-24 10:30:00','2017-07-24 12:30:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,15,50,NULL,NULL,NULL,NULL,NULL),(51,'F├ªlles morgenmad','2017-07-24 09:00:00','2017-07-24 11:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,13,NULL,NULL,NULL,NULL,NULL,NULL),(52,'F├ªlleskaffe','2017-07-25 14:00:00','2017-07-25 16:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,14,NULL,NULL,NULL,NULL,NULL,NULL),(53,'F├ªllessang','2017-07-25 20:00:00','2017-07-25 22:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,10,NULL,NULL,NULL,NULL,NULL,NULL),(54,'F├ªllesspisning','2017-07-24 18:00:00','2017-07-24 20:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(55,'GC-Moms','2017-07-26 20:00:00','2017-07-26 22:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,10,NULL,NULL,NULL,NULL,NULL,NULL),(56,'GC-Moms','2017-07-26 20:00:00','2017-07-26 22:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,11,NULL,NULL,NULL,NULL,NULL,NULL),(57,'GC-Moms','2017-07-26 20:00:00','2017-07-26 22:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,13,NULL,NULL,NULL,NULL,NULL,NULL),(58,'GC-Shoppen l├©rdag','2017-07-23 13:00:00','2017-07-23 15:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,13,NULL,NULL,NULL,NULL,NULL,NULL),(59,'Girl Talk ÔÇô kys, krop, k├ªrester og alt d├®t der','2017-07-26 10:30:00','2017-07-26 12:30:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,11,NULL,NULL,NULL,NULL,NULL,NULL),(60,'Gymnastik og leg for b├©rn p├Ñ 3-6 ├Ñr + for├ªldre mandag','2017-07-25 11:00:00','2017-07-25 13:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(61,'Gymnastik og leg for b├©rn p├Ñ 3-6 ├Ñr + for├ªldre tirsdag','2017-07-26 11:00:00','2017-07-26 13:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(62,'Gymnastik og leg for b├©rn p├Ñ 3-6 ├Ñr + for├ªldre onsdag','2017-07-27 11:00:00','2017-07-27 13:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(63,'Gymnastik og leg for b├©rn p├Ñ 3-6 ├Ñr + for├ªldre torsdag','2017-07-28 11:00:00','2017-07-28 13:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(64,'Gymnastik og leg for b├©rn p├Ñ 3-6 ├Ñr + for├ªldre fredag','2017-07-29 11:00:00','2017-07-29 13:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(65,'Harry Potter aktivitet','2017-07-26 10:00:00','2017-07-26 12:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,15,35,NULL,NULL,NULL,NULL,NULL),(66,'Havkajak mandag','2017-07-25 12:00:00','2017-07-25 14:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,2,150,NULL,NULL,NULL,NULL,NULL),(67,'Havkajak tirsdag','2017-07-26 10:00:00','2017-07-26 12:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,2,150,NULL,NULL,NULL,NULL,NULL),(68,'Heartfulness meditation.','2017-07-25 09:30:00','2017-07-25 11:30:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,4,NULL,NULL,NULL,NULL,NULL,NULL),(69,'Hearthstone for 10-14 ├àrige','2017-07-29 15:00:00','2017-07-29 17:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,4,NULL,NULL,NULL,NULL,NULL,NULL),(70,'Heartstone','2017-07-26 13:30:00','2017-07-26 15:30:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,4,NULL,NULL,NULL,NULL,NULL,NULL),(71,'Husholdningskemi for ca. 5-10 ├Ñrige','2017-07-27 11:00:00','2017-07-27 13:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,13,NULL,NULL,NULL,NULL,NULL,NULL),(72,'Hyg og byg med plus plus','2017-07-25 10:00:00','2017-07-25 12:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,13,NULL,NULL,NULL,NULL,NULL,NULL),(73,'Hygge med papir og saks','2017-07-24 10:00:00','2017-07-24 12:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,16,30,NULL,NULL,NULL,NULL,NULL),(74,'Hygge med samlekort','2017-07-26 16:00:00','2017-07-26 18:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,13,NULL,NULL,NULL,NULL,NULL,NULL),(75,'Hyggesjipning','2017-07-24 14:00:00','2017-07-24 16:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(76,'Hyrdehund i aktion og klap et f├Ñr','2017-07-29 10:00:00','2017-07-29 12:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(77,'Introm├©de til ├ªldre teenagegruppe','2017-07-23 20:30:00','2017-07-23 22:30:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,9,NULL,NULL,NULL,NULL,NULL,NULL),(78,'Introm├©de yngre teenagegruppe','2017-07-23 19:30:00','2017-07-23 21:30:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,9,NULL,NULL,NULL,NULL,NULL,NULL),(79,'Karate og selvforsvar hold 1','2017-07-27 08:00:00','2017-07-27 10:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(80,'Karate og selvforsvar hold 2','2017-07-27 10:00:00','2017-07-27 12:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(81,'Knipling','2017-07-26 14:00:00','2017-07-26 16:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,16,NULL,NULL,NULL,NULL,NULL,NULL),(82,'Kogekunst p├Ñ Trangia','2017-07-25 09:00:00','2017-07-25 11:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,10,100,NULL,NULL,NULL,NULL,NULL),(83,'Konsulentkaffe','2017-07-27 15:00:00','2017-07-27 17:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,11,NULL,NULL,NULL,NULL,NULL,NULL),(84,'Kontortid','2017-07-24 10:00:00','2017-07-24 12:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,5,NULL,NULL,NULL,NULL,NULL,NULL),(85,'Lav din egen tegnefilm ÔÇô for de yngste','2017-07-26 10:00:00','2017-07-26 12:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,4,NULL,NULL,NULL,NULL,NULL,NULL),(86,'Leg med Funlooms (sm├Ñ elastikker)','2017-07-24 15:30:00','2017-07-24 17:30:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,16,NULL,NULL,NULL,NULL,NULL,NULL),(87,'Ler-workshop','2017-07-27 14:00:00','2017-07-27 16:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,13,80,NULL,NULL,NULL,NULL,NULL),(88,'L├ªr at lave dit eget computerspil eller tegnefilm med Scratch','2017-07-24 13:00:00','2017-07-24 15:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,4,NULL,NULL,NULL,NULL,NULL,NULL),(89,'Magic Conspiracy Draft - For ├©vede/ avancerede magic spillere','2017-07-28 14:30:00','2017-07-28 16:30:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,16,75,NULL,NULL,NULL,NULL,NULL),(90,'Magic The Gathering - m├©d lejerens andre MTG-spillere.','2017-07-25 14:30:00','2017-07-25 16:30:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,13,NULL,NULL,NULL,NULL,NULL,NULL),(91,'Massage for teenagere 2003 og ├ªldre','2017-07-25 13:00:00','2017-07-25 15:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,4,NULL,NULL,NULL,NULL,NULL,NULL),(92,'Meditation og healing s├©ndag','2017-07-24 10:00:00','2017-07-24 12:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,7,NULL,NULL,NULL,NULL,NULL,NULL),(93,'Mensa test 1','2017-07-26 10:00:00','2017-07-26 12:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,16,NULL,NULL,NULL,NULL,NULL,NULL),(94,'Mensa test 2','2017-07-26 11:00:00','2017-07-26 13:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,16,NULL,NULL,NULL,NULL,NULL,NULL),(95,'Mentorkaffe','2017-07-24 14:00:00','2017-07-24 16:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,15,NULL,NULL,NULL,NULL,NULL,NULL),(96,'Metalaften','2017-07-28 20:00:00','2017-07-28 22:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,12,NULL,NULL,NULL,NULL,NULL,NULL),(97,'Metalquiz','2017-07-29 14:00:00','2017-07-29 16:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,12,NULL,NULL,NULL,NULL,NULL,NULL),(98,'Minecraft 6-13 ├Ñr','2017-07-28 10:00:00','2017-07-28 12:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,4,NULL,NULL,NULL,NULL,NULL,NULL),(99,'Minecraft - Der bliver sat to servere op til form├Ñlet.','2017-07-27 10:30:00','2017-07-27 12:30:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,4,NULL,NULL,NULL,NULL,NULL,NULL),(100,'Modellervoks-v├ªrksted','2017-07-26 12:00:00','2017-07-26 14:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,13,NULL,NULL,NULL,NULL,NULL,NULL),(101,'Morgentur i havkajak','2017-07-28 08:00:00','2017-07-28 10:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,2,150,NULL,NULL,NULL,NULL,NULL),(102,'MOVING MOUNTAINS Japansk tuschmaleri samt kalligrafi workshop','2017-07-26 12:30:00','2017-07-26 14:30:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,10,125,NULL,NULL,NULL,NULL,NULL),(103,'Munchkin','2017-07-25 10:30:00','2017-07-25 12:30:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,11,NULL,NULL,NULL,NULL,NULL,NULL),(104,'Musikquiz p├Ñ Feddet 2016 - Pop-Rock-og alt midt i mellem','2017-07-24 15:00:00','2017-07-24 17:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,12,NULL,NULL,NULL,NULL,NULL,NULL),(105,'M├©d en mensaner - hvad er det der Mensa for noget?','2017-07-25 15:30:00','2017-07-25 17:30:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,16,NULL,NULL,NULL,NULL,NULL,NULL),(106,'M├©de for poolvagter','2017-07-24 12:30:00','2017-07-24 14:30:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,12,NULL,NULL,NULL,NULL,NULL,NULL),(107,'M├©de for tovholdere','2017-07-24 13:15:00','2017-07-24 15:15:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,12,NULL,NULL,NULL,NULL,NULL,NULL),(108,'Nerf-m├Ñl','2017-07-24 10:00:00','2017-07-24 12:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,12,55,NULL,NULL,NULL,NULL,NULL),(109,'Opl├ªg om foreningen Head Quarters','2017-07-29 13:00:00','2017-07-29 15:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,15,NULL,NULL,NULL,NULL,NULL,NULL),(110,'Ostesmagning','2017-07-28 13:00:00','2017-07-28 15:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,10,75,NULL,NULL,NULL,NULL,NULL),(111,'Pandekagedag','2017-07-27 13:00:00','2017-07-27 15:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,10,NULL,NULL,NULL,NULL,NULL,NULL),(112,'Pen and Paper s├©ndag','2017-07-24 10:00:00','2017-07-24 12:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,9,NULL,NULL,NULL,NULL,NULL,NULL),(113,'Pen and Paper torsdag','2017-07-28 10:00:00','2017-07-28 12:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,9,NULL,NULL,NULL,NULL,NULL,NULL),(114,'Perleplader','2017-07-25 15:30:00','2017-07-25 17:30:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,10,NULL,NULL,NULL,NULL,NULL,NULL),(115,'Pokemon turnering p├Ñ Nintendo 3DS','2017-07-29 13:00:00','2017-07-29 15:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,11,NULL,NULL,NULL,NULL,NULL,NULL),(116,'Pokerturnering i Texas Hold\'em','2017-07-25 20:00:00','2017-07-25 22:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,4,30,NULL,NULL,NULL,NULL,NULL),(117,'Pokken Turnament turnering','2017-07-28 13:00:00','2017-07-28 15:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,4,NULL,NULL,NULL,NULL,NULL,NULL),(118,'Poolparty efter-hygge','2017-07-25 21:30:00','2017-07-25 23:30:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,9,NULL,NULL,NULL,NULL,NULL,NULL),(119,'Poolparty teenagere 2000 og ├ªldre','2017-07-27 19:00:00','2017-07-27 21:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,8,NULL,NULL,NULL,NULL,NULL,NULL),(120,'Poolparty teenagere 2000-2003','2017-07-25 19:00:00','2017-07-25 21:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,8,NULL,NULL,NULL,NULL,NULL,NULL),(121,'Portr├ªttegning','2017-07-24 14:30:00','2017-07-24 16:30:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,11,NULL,NULL,NULL,NULL,NULL,NULL),(122,'Portvinssmagning','2017-07-27 20:00:00','2017-07-27 22:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,10,150,NULL,NULL,NULL,NULL,NULL),(123,'Rollespil','2017-07-28 11:00:00','2017-07-28 13:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(124,'Romsmagning','2017-07-28 20:30:00','2017-07-28 22:30:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,10,135,NULL,NULL,NULL,NULL,NULL),(125,'Rundbold p├Ñ fodboldbanen','2017-07-29 11:00:00','2017-07-29 13:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,3,NULL,NULL,NULL,NULL,NULL,NULL),(126,'Sandkasseleg p├Ñ stranden for 3-6 ├Ñrige','2017-07-24 14:00:00','2017-07-24 16:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,7,NULL,NULL,NULL,NULL,NULL,NULL),(127,'Speak Out - 7. kl.-3.g','2017-07-26 13:00:00','2017-07-26 15:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,11,NULL,NULL,NULL,NULL,NULL,NULL),(128,'Speak Out - unge og voksne','2017-07-28 13:00:00','2017-07-28 15:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,11,NULL,NULL,NULL,NULL,NULL,NULL),(129,'Stand-up','2017-07-24 20:00:00','2017-07-24 22:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,6,100,NULL,NULL,NULL,NULL,NULL),(130,'Stendyr','2017-07-28 13:00:00','2017-07-28 15:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,12,20,NULL,NULL,NULL,NULL,NULL),(131,'Stikbold','2017-07-27 15:00:00','2017-07-27 17:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,3,NULL,NULL,NULL,NULL,NULL,NULL),(132,'Strikkecaf├¿ aften','2017-07-28 20:00:00','2017-07-28 22:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,13,10,NULL,NULL,NULL,NULL,NULL),(133,'Strikkecaf├¿ fredag','2017-07-29 13:00:00','2017-07-29 15:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,13,NULL,NULL,NULL,NULL,NULL,NULL),(134,'Strikkecaf├¿ s├©ndag','2017-07-24 13:00:00','2017-07-24 15:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,11,NULL,NULL,NULL,NULL,NULL,NULL),(135,'Strikkecaf├¿ tirsdag','2017-07-26 13:00:00','2017-07-26 15:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,12,NULL,NULL,NULL,NULL,NULL,NULL),(136,'Strikkecaf├¿ torsdag','2017-07-28 13:00:00','2017-07-28 15:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,16,NULL,NULL,NULL,NULL,NULL,NULL),(137,'strikkeklub for m├ªnd','2017-07-24 16:30:00','2017-07-24 18:30:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,15,NULL,NULL,NULL,NULL,NULL,NULL),(138,'SUGO - Symboler i traditionel og moderne japansk kunst/design','2017-07-27 11:00:00','2017-07-27 13:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,11,125,NULL,NULL,NULL,NULL,NULL),(139,'Super Smash Bros.-turnering (Wii U)','2017-07-27 13:30:00','2017-07-27 15:30:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,4,NULL,NULL,NULL,NULL,NULL,NULL),(140,'Teenage hygge, Hvem er vi?','2017-07-24 12:00:00','2017-07-24 14:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,16,NULL,NULL,NULL,NULL,NULL,NULL),(141,'Teenpiger taler med ung mensakvinde','2017-07-28 10:30:00','2017-07-28 12:30:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,11,NULL,NULL,NULL,NULL,NULL,NULL),(142,'Tegn og hyg l├©rdag','2017-07-23 16:00:00','2017-07-23 18:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,15,NULL,NULL,NULL,NULL,NULL,NULL),(143,'Tegn og hyg torsdag','2017-07-28 14:00:00','2017-07-28 16:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,13,NULL,NULL,NULL,NULL,NULL,NULL),(144,'Tegne l├ªre','2017-07-27 11:00:00','2017-07-27 13:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,16,NULL,NULL,NULL,NULL,NULL,NULL),(145,'Tegne workshop','2017-07-24 16:00:00','2017-07-24 18:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,13,NULL,NULL,NULL,NULL,NULL,NULL),(146,'Tysk Vininspiration','2017-07-23 20:00:00','2017-07-23 22:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,10,150,NULL,NULL,NULL,NULL,NULL),(147,'Velkomsttale','2017-07-23 18:30:00','2017-07-23 20:30:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(148,'Vi k├©rer med vores R/C biler. 12 ├Ñr og op. Fra 10 ├Ñr if├©lgeskab med voksen.','2017-07-24 13:00:00','2017-07-24 15:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL),(149,'Vindm├©ller','2017-07-26 13:30:00','2017-07-26 15:30:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,13,40,NULL,NULL,NULL,NULL,NULL),(150,'Whiskysmagning.','2017-07-26 20:00:00','2017-07-26 22:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,11,150,NULL,NULL,NULL,NULL,NULL),(151,'Workshop: Hypersensitivity in Gifted Children','2017-07-25 13:00:00','2017-07-25 15:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,10,NULL,NULL,NULL,NULL,NULL,NULL),(152,'Workshop: Mindfulness mod tankemylder','2017-07-28 10:30:00','2017-07-28 12:30:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,16,NULL,NULL,NULL,NULL,NULL,NULL),(153,'Workshop: Motivation, underydelse og engagement','2017-07-27 09:00:00','2017-07-27 11:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,12,NULL,NULL,NULL,NULL,NULL,NULL),(154,'Workshop: Nurturing Your Child\'s Remarkable Mind','2017-07-28 16:00:00','2017-07-28 18:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,10,NULL,NULL,NULL,NULL,NULL,NULL),(155,'Workshop: Programmering / Spiludvikling','2017-07-24 16:30:00','2017-07-24 18:30:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,4,NULL,NULL,NULL,NULL,NULL,NULL),(156,'Zumba','2017-07-24 09:00:00','2017-07-24 11:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,4,NULL,NULL,NULL,NULL,NULL,NULL),(157,'├ÿlsmagning','2017-07-27 20:00:00','2017-07-27 22:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,13,100,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `acts_blocked_by`
--

DROP TABLE IF EXISTS `acts_blocked_by`;
/*!50001 DROP VIEW IF EXISTS `acts_blocked_by`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `acts_blocked_by` AS SELECT 
 1 AS `id`,
 1 AS `person_id`,
 1 AS `blocked_by`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `acts_confs`
--

DROP TABLE IF EXISTS `acts_confs`;
/*!50001 DROP VIEW IF EXISTS `acts_confs`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `acts_confs` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `starttime`,
 1 AS `endtime`,
 1 AS `person_id`,
 1 AS `created_at`,
 1 AS `updated_at`,
 1 AS `number`,
 1 AS `place_id`,
 1 AS `deltbet`,
 1 AS `min_age`,
 1 AS `max_age`,
 1 AS `first_date`,
 1 AS `last_date`,
 1 AS `ptypes_ok`,
 1 AS `conflict_ids`,
 1 AS `conflict_names`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `acts_free`
--

DROP TABLE IF EXISTS `acts_free`;
/*!50001 DROP VIEW IF EXISTS `acts_free`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `acts_free` AS SELECT 
 1 AS `id`,
 1 AS `free`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `acts_optimized`
--

DROP TABLE IF EXISTS `acts_optimized`;
/*!50001 DROP VIEW IF EXISTS `acts_optimized`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `acts_optimized` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `starttime`,
 1 AS `endtime`,
 1 AS `person_id`,
 1 AS `created_at`,
 1 AS `updated_at`,
 1 AS `number`,
 1 AS `place_id`,
 1 AS `deltbet`,
 1 AS `min_age`,
 1 AS `max_age`,
 1 AS `first_date`,
 1 AS `last_date`,
 1 AS `ptypes_ok`,
 1 AS `conflict_ids`,
 1 AS `conflict_names`,
 1 AS `free`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `acts_reserved`
--

DROP TABLE IF EXISTS `acts_reserved`;
/*!50001 DROP VIEW IF EXISTS `acts_reserved`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `acts_reserved` AS SELECT 
 1 AS `id`,
 1 AS `reserved`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `acts_sold_out`
--

DROP TABLE IF EXISTS `acts_sold_out`;
/*!50001 DROP VIEW IF EXISTS `acts_sold_out`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `acts_sold_out` AS SELECT 
 1 AS `id`,
 1 AS `sold_out`*/;
SET character_set_client = @saved_cs_client;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2017-02-07 09:23:17','2017-02-07 09:23:17');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignments`
--

DROP TABLE IF EXISTS `assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_assignments_on_person_id` (`person_id`),
  KEY `index_assignments_on_task_id` (`task_id`),
  CONSTRAINT `fk_rails_52f37556f9` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`),
  CONSTRAINT `fk_rails_b7c53ee3b6` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignments`
--

LOCK TABLES `assignments` WRITE;
/*!40000 ALTER TABLE `assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clearances`
--

DROP TABLE IF EXISTS `clearances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clearances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_clearances_on_member_id` (`member_id`),
  KEY `index_clearances_on_role_id` (`role_id`),
  CONSTRAINT `fk_rails_31d9cc7d6b` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `fk_rails_dce4e495ca` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clearances`
--

LOCK TABLES `clearances` WRITE;
/*!40000 ALTER TABLE `clearances` DISABLE KEYS */;
INSERT INTO `clearances` VALUES (1,354,1,'2017-03-15 08:05:38','2017-03-15 08:05:38'),(2,1,2,'2017-04-05 20:02:40','2017-04-05 20:02:40');
/*!40000 ALTER TABLE `clearances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `conf`
--

DROP TABLE IF EXISTS `conf`;
/*!50001 DROP VIEW IF EXISTS `conf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `conf` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `starttime`,
 1 AS `endtime`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `conflicts`
--

DROP TABLE IF EXISTS `conflicts`;
/*!50001 DROP VIEW IF EXISTS `conflicts`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `conflicts` AS SELECT 
 1 AS `group_concat(id)`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `housing_types`
--

DROP TABLE IF EXISTS `housing_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `housing_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `housing_types`
--

LOCK TABLES `housing_types` WRITE;
/*!40000 ALTER TABLE `housing_types` DISABLE KEYS */;
INSERT INTO `housing_types` VALUES (1,'Hytte','2017-03-06 06:34:45','2017-03-06 06:34:45');
/*!40000 ALTER TABLE `housing_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  `payment_link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_invoices_on_member_id` (`member_id`),
  CONSTRAINT `fk_rails_5cf95fcf83` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (25,354,'2017-03-12 08:55:25','2017-04-25 06:41:41',1,NULL),(26,15,'2017-03-12 21:05:17','2017-04-30 20:23:10',0,NULL),(27,354,'2017-03-13 06:14:20','2017-04-25 06:41:41',1,NULL),(28,354,'2017-03-13 06:19:31','2017-04-25 06:41:41',1,NULL),(29,354,'2017-03-13 07:33:16','2017-05-02 20:45:10',0,NULL),(30,12,'2017-03-15 07:59:59','2017-04-30 20:23:10',0,NULL),(31,288,'2017-03-15 17:54:36','2017-04-30 20:23:10',0,NULL),(32,9,'2017-03-15 20:33:59','2017-04-30 20:23:10',0,NULL),(33,1033,'2017-03-17 06:25:49','2017-04-25 06:41:41',1,NULL),(34,14,'2017-03-17 07:04:21','2017-04-30 20:23:10',0,NULL),(35,288,'2017-03-19 06:46:03','2017-04-25 06:41:41',1,NULL),(36,75,'2017-03-21 16:34:07','2017-04-30 20:23:10',0,NULL),(37,850,'2017-03-21 19:41:09','2017-04-30 20:23:10',0,NULL),(38,288,'2017-03-28 20:01:39','2017-04-25 06:41:41',NULL,NULL),(39,1,'2017-04-05 20:08:51','2017-04-25 06:41:41',1,NULL),(40,1,'2017-04-15 17:25:08','2017-04-30 20:23:10',0,NULL),(41,22,'2017-05-02 18:28:02','2017-05-02 19:03:00',0,NULL),(42,3,'2017-05-02 19:41:42','2017-05-02 19:46:28',0,NULL);
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `member_activities`
--

DROP TABLE IF EXISTS `member_activities`;
/*!50001 DROP VIEW IF EXISTS `member_activities`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `member_activities` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `starttime`,
 1 AS `endtime`,
 1 AS `person_id`,
 1 AS `created_at`,
 1 AS `updated_at`,
 1 AS `number`,
 1 AS `place_id`,
 1 AS `deltbet`,
 1 AS `min_age`,
 1 AS `max_age`,
 1 AS `first_date`,
 1 AS `last_date`,
 1 AS `ptypes_ok`,
 1 AS `member_id`,
 1 AS `s_out`,
 1 AS `conflict_ids`,
 1 AS `p_ids`,
 1 AS `p_names`,
 1 AS `blckd_by`,
 1 AS `t_ids`,
 1 AS `i_paid`,
 1 AS `age_ok`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `member_people`
--

DROP TABLE IF EXISTS `member_people`;
/*!50001 DROP VIEW IF EXISTS `member_people`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `member_people` AS SELECT 
 1 AS `member_id`,
 1 AS `person_ids`,
 1 AS `person_names`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `member_people_paid`
--

DROP TABLE IF EXISTS `member_people_paid`;
/*!50001 DROP VIEW IF EXISTS `member_people_paid`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `member_people_paid` AS SELECT 
 1 AS `id`,
 1 AS `number`,
 1 AS `name`,
 1 AS `email`,
 1 AS `created_at`,
 1 AS `updated_at`,
 1 AS `housing_type_id`,
 1 AS `housing_number`,
 1 AS `sold_out`,
 1 AS `m_people`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `housing_type_id` int(11) DEFAULT NULL,
  `housing_number` varchar(255) DEFAULT NULL,
  `sold_out` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_members_on_housing_type_id` (`housing_type_id`),
  CONSTRAINT `fk_rails_d675ce8f7e` FOREIGN KEY (`housing_type_id`) REFERENCES `housing_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1062 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,2,'Heidi Stolberg-Christensen','stolberg@baldursson.dk','2017-02-07 09:25:16','2017-04-20 22:53:15',NULL,'',''),(2,3,'Susanne Lund Pedersen','susanne@sulupe.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(3,4,'Annette Storm','annette@giftedchildren.dk','2017-02-07 09:25:16','2017-05-02 19:41:42',NULL,NULL,'30'),(4,7,'Margrethe Harlev','fam.harlev@mail.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(5,11,'Anne Sostack','thyholmslynger@gmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(6,23,'Mirete Keinicke','mirete.Keinicke@hotmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(7,28,'Karenlise Nielsen','k-nielsen@dbmail.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(8,30,'Karin Lind','karinlplind@mail.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(9,31,'Ulla Clausen','ulla.clausen@hotmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(10,38,'Grith Tschorn','grith@grith-tschorn.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(11,39,'Amrei K. Christensen','amrei.christensen@hotmail.com','2017-02-07 09:25:16','2017-03-08 06:48:57',1,'35',NULL),(12,43,'Martin Agerskov Poulsen','martin.agerskov@gmail.com','2017-02-07 09:25:16','2017-03-21 20:51:24',1,'23',NULL),(13,47,'Deborah Briggs','Andersen.bo@gmail.com','2017-02-07 09:25:16','2017-03-08 07:31:59',NULL,'',NULL),(14,50,'Dorte Larsen','dortenvk@yahoo.dk','2017-02-07 09:25:16','2017-03-08 13:38:22',NULL,'',NULL),(15,55,'Jette Kyllesbech','jette@thita.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(16,82,'Brita S├©ndergaard','brita-br@webspeed.dk','2017-02-07 09:25:16','2017-03-08 12:57:09',NULL,'',NULL),(17,83,'Pia Ryding','ryd@mail.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(18,84,'Caroline Karby','caroline.iben.karby@gmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(19,87,'Maria Wewer','maalw@yahoo.com','2017-02-07 09:25:16','2017-03-10 22:06:20',NULL,'',NULL),(20,89,'Camilla B├©dker Thomsen','journamorten@hotmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(21,98,'Pernille Smalbro Hylleberg','kasper@smalbro.info','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(22,99,'Brith Engblad Greve','b-e-g@hotmail.dk','2017-02-07 09:25:16','2017-05-02 18:30:15',NULL,NULL,'30'),(23,116,'Thorbj├©rn Lau Christensen','thorbjoern.christensen@gmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(24,118,'Annette Jensen Holst','annettejensen@nypost.dk','2017-02-07 09:25:16','2017-03-10 15:37:03',NULL,'',NULL),(25,120,'Birgitte R├╝tzou Klinting','brk66@outlook.dk','2017-02-07 09:25:16','2017-03-21 20:51:25',NULL,NULL,NULL),(26,140,'Mette Christiansen','simonemette9@gmail.com','2017-02-07 09:25:16','2017-03-21 20:51:25',NULL,NULL,NULL),(27,152,'Birgitte Hansen-Hoeck','bh.hoeck@gmail.com','2017-02-07 09:25:16','2017-03-21 20:51:25',NULL,NULL,NULL),(28,168,'Birgitte Arnvig','birgitte@arnvig.org','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(29,185,'Dorte Kubert','dkubert@mail.tele.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(30,191,'Rikke Strunge Krogsgaard','strunge@gmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(31,192,'Lonnie Bila','ziebila@hotmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(32,195,'Ditte Bernquist','D.Bernquist@ofir.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(33,204,'Camilla Teisen','vognserup@mail.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(34,211,'Suzette Grabenthin J├©rgensen','suzettegkk@pc.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(35,216,'Ulla Albeck Johansen','comeon@comeon.as','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(36,221,'Sanne W├©hlk','s@wohlk-son.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(37,226,'Hanne Merete Lauritsen','Greve.Lauritsen@gmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(38,230,'Sussi Skov-Christensen','ssc@skovchristensen.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(39,235,'Helle Knudsen','Helle.frouvne@gmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(40,236,'Linda Kaysen Hansen','linda@bombibitt.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(41,238,'Jette Franks Hansen','Jette@frankshansen.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(42,247,'Pia Baumgarten','piabaumgarten@gmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(43,250,'Lene Lundin','mikael@lundinlind.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(44,266,'Heidi Schi├©tz','snabela@vip.cybercity.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(45,271,'Charlotte Kring','charlotteogflemming@gmail.com','2017-02-07 09:25:16','2017-03-08 14:45:24',NULL,'',NULL),(46,273,'Dorthe Fisker','oysteinangen@gmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(47,276,'Lisbeth Lintz Christensen','henning@obinet.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(48,280,'Susanne Lund','sanne@coolpartners.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(49,291,'Ida Hovalt Jensen','toje@km.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(50,295,'Anne Maal├©e','anne@maaloemail.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(51,296,'Jess Julin Ibsen','annettehibsen@gmail.com','2017-02-07 09:25:16','2017-03-21 20:51:25',NULL,NULL,NULL),(52,300,'Charlotte ├ÿstergaard','coestergaardgc@gmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(53,308,'Marianne Helledi Knudsen','mhelledi@gmail.com','2017-02-07 09:25:16','2017-03-21 20:51:25',NULL,NULL,NULL),(54,309,'Lise Marie Frohn','lise@frohn.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(55,317,'Annie Larsen','anders.annie@youmail.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(56,322,'Winnie Gade','wgade@me.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(57,323,'Birgitte Holm','biasholm@yahoo.co.uk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(58,325,'Anni Hvidberg Smed','j.smed@webspeed.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(59,332,'Connie Dydensborg','connie@dydensborg.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(60,334,'Iben Melballe Elmedal','Iben@elmedal.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(61,337,'Mette Gade','Mette.gade@mail.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(62,338,'Joan Alr├©e','hugo.alroe@gmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(63,356,'Isa Karina Borch-Jensen','Isa.j@ofir.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(64,362,'Lizzi Cederskjold Kierans','cederskjold.kierans@privat.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(65,363,'Mikkel Pedersb├ªk Falkenberg','m.p.falkenberg@gmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(66,364,'Inge Krarup','kikrarup@hotmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(67,366,'Natasja Steen Laursen','nat@zun.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL,NULL),(68,375,'Anne Madsen','anne_madsen@yahoo.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(69,377,'Malene Moll Vandel','vandalerne@mail.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(70,387,'Connie Wilhjelm','conniewilhjelm@live.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(71,389,'Sofia Edsberg Rasmussen','athenedk@hotmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(72,394,'Stine Darmer','d@rmer.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(73,402,'Berit Johansen','berit72@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(74,404,'Rikke Munch Bendtsen','rikke@m-bendtsen.dk','2017-02-07 09:25:17','2017-03-21 20:51:25',NULL,NULL,NULL),(75,407,'Malene Jensen','malene.jensen.dk@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(76,408,'Nanna Buur Olesen','nannabuur@hotmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(77,410,'Sus Warming','S.warming@mail.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(78,414,'Lone Larsen','nybrovej@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(79,417,'Rikke Wedel Wester Fischer','rikke@wedel-fischer.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(80,421,'Jette Horn Brorholt','madshorn@mydsl.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(81,422,'Pernille Riber','riber@a.cirque.tv','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(82,426,'Diana Vaabengaard','Dianavaabengaard@sol.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(83,427,'Marie-Louise Bang','sban@privat.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(84,432,'Inga Thaysen','ingathaysen@live.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(85,433,'Lilian Nammour Thestrup','eventyrland@city.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(86,442,'Anne-Mette Anker Hansen','annemette.anker@get2net.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(87,443,'Helle Rauch','helle@rauch.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(88,445,'Helle Sune Jensen','helle@sensoriet.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(89,447,'Susan Byrdal Andersen','susan@sensitryk.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(90,449,'Lotte Spedtsberg Clausen','L8Clausen@hotmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(91,450,'Stine L├©vind Thorsen','stine.lovind.thorsen@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(92,452,'Mette Vejen Eriksen','uglebakken@yahoo.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(93,454,'Mette Heide Temple','familien@temple.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(94,459,'Susie Nex├© Holm Kristensen','holmsusie@hotmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(95,469,'Anette Munk','anette.munk@hotmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(96,471,'Rita Lyng Petersen','lyng.petersen@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(97,481,'Julie Secher Schultz','juss@knord.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(98,486,'Annette Forsberg de los Reyes','delosreyes2009@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(99,491,'Jo Mia Fray','jomiafray@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(100,496,'Mette Marklund','mettemarklund@hotmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(101,497,'Elisabeth M├©llgaard','emollgaard@pt.lu','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(102,498,'Tina Fredenslund','kristianfredenslund@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(103,503,'Susanne Hedebo Lund','shedebo@hotmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(104,505,'Helle Birkholm-Buch','helle@birkholm-buch.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(105,506,'Mona Holm Poulsen','holmshp@hotmail.com','2017-02-07 09:25:17','2017-03-21 20:51:26',NULL,NULL,NULL),(106,512,'Bettina Baun Skovgaard Rathjen','bettina@rathjen.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(107,513,'Pernille Ravn','pnr@post.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(108,516,'Anne Mandrup Christensen','specialagentgts@hotmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(109,525,'Merete B├©ye','merete@mereteland.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(110,527,'Henriette Dybdal Cajar','dybdal@cajar.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(111,530,'Dorte Rehm','andr@novonordisk.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(112,531,'Grith Kastorp','os@botka.dk','2017-02-07 09:25:17','2017-03-08 13:30:20',NULL,'',NULL),(113,533,'Solveig N├©rgaard Johansen','Flesol@webspeed.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(114,547,'Mette Helver','mettehelver@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(115,550,'Janni Grubert','janni.grubert@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(116,551,'Kristine Drisdal Hansen','kdhhov@statsforvaltning.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(117,555,'Lene F. Kobbernagel','lene.fredslund@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(118,558,'Anne Bre├╝ner','sbh@nst.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(119,559,'Astrid S├©e','astridsoe@mail.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(120,565,'Marlene Vikkels├©','Margaardvej14@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(121,577,'Katja Lehmann Nielsen','morten@paybackim.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(122,578,'Tine Kragelund','jsandvad@hotmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(123,579,'Charlotte Giehm','charlotte@giehm.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(124,580,'Lisa Nielsen','lisanielsen72@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(125,585,'Kenneth Vestergaard','info@sport-power.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(126,587,'Rikke Julie Mosekj├ªr Weuder','weuder@weuder.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(127,589,'Mette Kongstad Welling','razmet2@get2net.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(128,595,'Annette Taudorf Ravn','annette.t.ravn@hotmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(129,596,'Kresten S. Gaub','Kresten.gaub@hotmail.com','2017-02-07 09:25:17','2017-03-21 20:51:26',NULL,NULL,NULL),(130,598,'Rikke Dawids','gifted@rikkerask.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(131,602,'Randi Hjorth','randi@hjorthlarsen.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(132,603,'Gre Stensgaard Gram','gre.stensgaard@get2net.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(133,612,'Ulla Kj├ªldgaard','youkay@live.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(134,614,'Karin Kielberg Nielsen-Borup','nielsenborup@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(135,616,'Cecilia M├©ller Hansen','ceciliamansen@live.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(136,621,'Karin Bonde Johansen','karin@bondejohansen.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(137,627,'Lone Rysgaard','lonerysgaard@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(138,630,'Yolanda Galan Mogensen','Dannie@galanmogensen.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(139,635,'Birgitte Hilligs├©e Lisby','btlisby@dlgmail.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(140,636,'Marianne Paavonen','MariannePaavonen@live.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(141,639,'Hanne Caroline Knudsen','hck@x-plan.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(142,642,'Christina D. Stoltenberg','cmstoltenberg@pc.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(143,643,'Turid Preuss','turid.preuss@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(144,649,'Janne Jung Andersen','Dirk.Bartelsen@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(145,650,'Mette Fogh Rasmussen','mettefoghrasmussen@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(146,652,'Nanna Fick','nf@nannafick.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(147,653,'Joan Schj├©dt-Thomsen','Joan.st@vip.cybercity.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(148,664,'Vibe Thorhauge','vibe@musikkons.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(149,665,'Gitte Anker Jakobsen','jakobsen2010@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(150,666,'Anja Baumann','Anjabaumann40@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(151,668,'Helle Stokholm Malmqvist','Malmqvist@live.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(152,675,'Regitze Christiansen','remc@get2net.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(153,680,'Kirsten Loft Bergstrand','ks.bergstrand@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(154,681,'Pernille Steinhauer Hedegaard','pernillesteinhauer@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(155,683,'Mette Bergqvist','mette.b.bergqvist@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(156,690,'Marianne Weilby Guss','marianne@guss.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(157,691,'Bettina Junker Kristiansen','mail@iq-coaching.dk','2017-02-07 09:25:17','2017-03-21 20:51:27',NULL,NULL,NULL),(158,692,'Hanne Stokholm','hannestokholm@hotmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(159,696,'Anne-Mette Neve Alsbjerg','am@alsbjerg.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(160,698,'Anette Panduro Falcher Preuss','mail@tanisjka.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(161,700,'Heidi Bonefeld Bladt','heidi@kokhaven41.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(162,704,'Ingelise Schr├©der','ingelises@live.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(163,706,'Helle Kyhnau Steffensen','helleks@bomi.roskilde.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(164,711,'Carina Aaen','familienaaen@hotmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(165,712,'Helle B. Neiiendam','hellesfirst@icloud.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(166,713,'Cecilia Engelbrecht Heick','ceh@csille.dk','2017-02-07 09:25:17','2017-03-21 20:51:27',NULL,NULL,NULL),(167,718,'Randi Cederquist','ceder@kaus.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(168,720,'Eva Maria Jochimsen','eva.maria.jochimsen@mail.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(169,723,'Ulla Marie Wig','ullawig@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(170,729,'Helle Hassenkam','maknessah@yahoo.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(171,737,'Mette Dagmar Jakobsen','mettedagmar@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(172,738,'Tina Barbara Pryds','prydstina@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(173,740,'Tina R├©nh├©j','tinaronhoj@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(174,741,'Janne Mandahl-Friis','Janne@hvesager.com','2017-02-07 09:25:17','2017-03-21 20:51:27',NULL,NULL,NULL),(175,744,'Gitte Krogh Madsen','Gitte.madsen@dadlnet.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(176,745,'Marie Katrine Storck Birkholm','mariebirkholm@hotmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(177,748,'Christiane Beith Pedersen','bragesgaard@dlgmail.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(178,749,'Anne Ahrenst','Anne.ahrenst@hotmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(179,750,'Ekaterina Gordeeva Bjerrum','EsbenJannik@rocketmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(180,758,'Majbriit Villum Jakobsen','Team.jakobsen@mvb.net','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(181,760,'Mai Rubin','rubinmai@yahoo.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(182,769,'Marianne H├©i','m.hoi@stofanet.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(183,771,'Bodil Agnete Kj├ªr Christensen','bodilagnete@hotmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(184,773,'Irene Bandier','irenebandier@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL,NULL),(185,780,'Sascha Tuborg Jensen','tuborg@privat.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(186,781,'Poula Patursson','hanuspoula@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(187,787,'Tine Arensbach Nielsen','tarensbach@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(188,793,'Winnie Steenfeldt Blem','blem@birman.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(189,797,'Britt Krogh Gr├©nneb├ªk','tantegroen@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(190,798,'Gitte Grastveit M├©lb├ªk','gitte.grastveit@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(191,802,'Bettina N├©rskov Redder','bnrtgh@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(192,803,'Vivian Olesen','volesen@msn.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(193,807,'Jan S├©rensen','sorensja2@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(194,809,'Niels Dybdahl','niels@dybdahl.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(195,814,'Birgit H├©jbjerg','birgit-h@outlook.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(196,816,'Mette Kold Andersen','Mette_kold_andersen@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(197,826,'Jenni Christiansen','jenni.christiansen@dadlnet.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(198,835,'Charlotte Jarsh├©j','chajar@outlook.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(199,837,'Lone Henriksen','Henrik.svantemann@get2net.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(200,839,'Stine Sylvestersen','Stsy@tv2lorry.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(201,840,'Elisabeth Witt','giftedchildren@lind-witt.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(202,842,'Anne-Mette Djern├ªs Secher','amdsecher@mail.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(203,846,'Helle Asmild','malmgrenasmild@msn.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(204,850,'Malene Bonde','malle@mensa.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(205,853,'Sidsel S├©rensen','sidsel@vejbred.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(206,857,'Tanja Madsen','Tanjacogv@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(207,862,'Anette Matthisson','matthisson@mail.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(208,867,'Sarisha Mendes','sarisha@mail.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(209,872,'Sanne Thoudahl Lundqvist','satl@gentofte.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(210,875,'Tine Reinholt Jensen','Tine-reinholt@mail.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(211,876,'Birgitte Loizeau','birgitteloizeau@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(212,883,'Erica K├©hnke','ericak@worldonline.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(213,884,'Charlotte Drewes','Charlotte.drewes@webspeed.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(214,890,'Monica Krenkel','teepee_dk@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(215,893,'Gitte Biermann','gc@biermann.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(216,897,'Bente Madsen','Bente.madsen@live.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(217,904,'Marie Brasholt','mariebrasholt@dadlnet.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(218,905,'Pia Christiansen','morc@stibosystems.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(219,908,'Iben Charlotte Aamann','ibencaa@it.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(220,915,'Helle B. J. Pasquinucci','hellegc@seqcom.it','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(221,916,'Charlotte Ferdinand','charlotteferdinand@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(222,918,'Solveig Odgaard Jakobsen','bsjakobsen@webspeed.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(223,926,'Henriette D├©ssing','henriettedossing@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(224,932,'Helle Dyrholm Lund','hdlund@mail.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(225,933,'Christina R├©nn Ingvardsen','familienronn@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(226,937,'Henriette Skovholm','hskovholm@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(227,938,'Synne S. P. Petersen','synnepetersen@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(228,940,'Anja Camilla Reitzel','anjacreitzel@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(229,941,'Marianne Mikkelsen','mami@ltk.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(230,942,'Maj Sorin-Kristensen','mmkjds@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(231,944,'Lene N├©rris Jensen','Lene_norris@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(232,948,'Signe Bonne Damgaard','sigdam@live.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(233,950,'Birgitte Venge Winter','birgitte.winter@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(234,951,'Tine H├©ier','Michael.holck@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(235,952,'Karen Riber','karenriber72@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(236,955,'Ea B├©hm Jepsen','eabj@dadlnet.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(237,960,'Ann Carina Sch├©dt','anncarinaschoedt@sol.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(238,961,'Line Rasmussen','kenneth.osterballe@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(239,962,'Vesna Schneider','fugleparken@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(240,963,'Mette Binderup','mebi@eucsj.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(241,970,'Mai-Britt Beldam','maibeldam@yahoo.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(242,973,'Therese  Schiang-Franck','therese.schiang.franck@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(243,980,'Henriette ├årendal Mikkelsen','henrymik77@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(244,981,'Karen Hamer Langelund','karenlangelund@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(245,988,'Lone Munk Hansen','lone.munk.hansen@gmail.com','2017-02-07 09:25:18','2017-03-21 20:51:28',NULL,NULL,NULL),(246,992,'Sally Strate','sallystrate@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(247,995,'Rikke Bech Harning','rikke@harning.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(248,998,'Marije te Winkel','marije.winkel@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(249,1001,'Tina Pernille Aamann','tpaamann@gmail.com','2017-02-07 09:25:18','2017-03-21 20:51:28',NULL,NULL,NULL),(250,1002,'Anne-Mette Enoksen','amenoksen@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(251,1018,'Tine Daus','dktdb@coloplast.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(252,1019,'Lise Ulstrup Andersen','lise.ulstrup@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(253,1023,'Stine Elbr├©nd Riism├©ller','stine@oroi.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(254,1024,'Anja Kj├ªrsgaard Andersen','anja@innayo.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(255,1026,'Dorthe bonde Madsen','bonde.dorthe@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(256,1027,'Vibeke Staal Madsen','Vibeke.staal@live.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(257,1029,'Stine Kj├ªr Watkins','Stinwat@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(258,1040,'Hanne Duran H├©jlind','hojlind@live.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(259,1048,'Vibeke Sinkj├ªr','vibeke@milter.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(260,1049,'Irene Wulff Christensen','irene@wulffc.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(261,1053,'Sara Winding','sara@mensa.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(262,1055,'Tine Sloth Bruun Andersen','sangfugl71@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(263,1059,'Sarah H├©jlund Wittig','sarah@wangaa.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(264,1062,'Nina Th├®r├¿se Rosen├©rn','mimiwuarr@yahoo.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(265,1068,'Tina Esmann','tina@motorikvejleder.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(266,1074,'Camilla Hvidtfeldt','mogens.fosgerau@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(267,1075,'Anne Hertz','anne@hz.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(268,1076,'Sidse N├©rgaard','stayin@live.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(269,1077,'Rikke Hostrup Haugb├©lle','rikke@haugbolle.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(270,1078,'Karin Hulgaard','karin@hulgaard.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(271,1079,'Lene Bundg├Ñrd Madsen','lene@bundgrd.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(272,1081,'Gudrun Fransen','gudrun.fransen@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(273,1083,'Sarah N├©rgaard','Nagima88@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(274,1087,'Susanne Kindberg','Susanne_kindberg@yahoo.co.uk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(275,1089,'Stine Witt ├ÿstengaard','simon@ostengaard.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(276,1091,'Marnie Lai','Marnie.lai@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(277,1093,'Lita Nielsen','carstenbll@hafnet.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(278,1100,'Helle Lindtner','hellelindtner@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(279,1108,'Kamilla Rams├©e M├©ller','allimak@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(280,1109,'Annika Wiwe','aw@viauc.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(281,1112,'Carina S├©ndergaard','Cas0408@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(282,1116,'Birthe Lykkegaard Vedtofte','vedtofte@mail.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(283,1117,'Anne Majbrit Allerup','j@llerup.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(284,1119,'Margrethe Elgaard','Elgaarddk@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(285,1127,'Brigitte Harslund L├©venbalk','brigitte_64@yahoo.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(286,1128,'Lene Idun Hornstrup','Lene@hornstrup.org','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(287,1132,'Helle Harding Poulsen','helle@lilleskensved.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(288,1136,'Ann Baldus-Kunze','Balduskunze@gmail.com','2017-02-07 09:25:18','2017-04-20 22:13:26',NULL,NULL,'31'),(289,1138,'Christina Lylloff','christina@happyboys.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(290,1140,'Elsebeth Watts','elsebeth@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(291,1141,'Mette Vork Guldager','vorkmette@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(292,1142,'Heidi Klug Pedersen','klugpedersen@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(293,1145,'Joan Falk Knudsen','joan@falkknudsen.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(294,1149,'Pernille Miller','bo@millernet.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(295,1150,'Lone Thoft','lonepthoft@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(296,1153,'Pernille Postgaard','postgaard@yahoo.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(297,1155,'Line Nyskov Storgaard','line.storgaard@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(298,1157,'Anette Lynggaard','lynggaard@bee-com.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(299,1160,'Jane Skifte','janeskifte@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(300,1163,'Mette Kurir Bursell','mette@kurir.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(301,1166,'Mette Bille Neerbek','home@neerbek.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL,NULL),(302,1167,'Naja Lundgren','Najalundgren@jubii.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(303,1173,'Britt Nikolajsen','bnikolajsen@live.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(304,1180,'Dorte Buchmann','gc@kofoed.ws','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(305,1182,'Sine Hewel','simi@universus.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(306,1194,'Christina R├©nmos','c@ronmos.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(307,1200,'Helle Foldbjerg Rasmussen','helle@foldbjerg.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(308,1205,'Tina Nielsen','Ikaros60@hotmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(309,1208,'Alicia Johansen','strid.vang@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(310,1210,'Espe Maria Kahler','espemariakahler@gmail.com','2017-02-07 09:25:19','2017-03-21 20:51:29',NULL,NULL,NULL),(311,1211,'Charlotte Baes Aaholst','chasbaes@hotmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(312,1212,'Pia Houm├©ller','Pia.houmoller@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(313,1213,'Mette Leidecker J├©rgensen','henrik.joergensen@gmail.com','2017-02-07 09:25:19','2017-03-21 20:51:29',NULL,NULL,NULL),(314,1214,'Anne Leonhard Olsen','anneleonhard@live.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(315,1222,'Julie Storgaard Mortensen','pytti@hotmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(316,1230,'Birgit Rydder','rydder@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(317,1235,'Ulla Koch Gregersen','ulla-koch-gregersen@stofanet.dk','2017-02-07 09:25:19','2017-03-21 20:51:30',NULL,NULL,NULL),(318,1238,'Rie Debois','slaavensky@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(319,1241,'Lars Boris Hansen','Larsbh.lbh@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(320,1242,'Heidi Lollike Lund','heidilollike@yahoo.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(321,1244,'Louise Berg Krogsgaard','fam@krogsgaards.net','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(322,1245,'Charlotte Aaen Stampe','charlottestampe@yahoo.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(323,1246,'Marie Lumholtz','mariemus@mac.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(324,1249,'Heidi Hjorth Nielsen','Heidi.hjorth@youmail.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(325,1250,'Kirsten Dam Pedersen','kirstendampedersen@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(326,1253,'Dorthe L├ªrke Baun','dlb@ramboll.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(327,1264,'Seng├╝l Kaya-Mortensen','jan@kaya-mortensen.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(328,1266,'Sussi Bechmann Nielsen','sussi.b.nielsen@mail.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(329,1267,'Line Marie Wibroe','privat@alipe.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(330,1272,'Hanne S├©llingwraae Fjord','hsf@holstebro-vuc.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(331,1273,'Louise l├©nb├ªk Nilsson','llnilsson@me.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(332,1277,'Birgitte Skovgaard','birskjo@gmail.com','2017-02-07 09:25:19','2017-03-21 20:51:30',NULL,NULL,NULL),(333,1280,'Rikke H├©st Danielsen','rikke@danielsenonline.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(334,1282,'Louise N├©ttrup Grotrian','grotrian@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(335,1287,'Larisa V. Kazantseva','pope@my.terminal.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(336,1288,'Helle Jacobsen','hellejanejacobsen@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(337,1290,'Lisbeth Arnbjerg','lisbeth.arnbjerg@stofanet.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(338,1291,'Susanne Tagge J├╝rgensen','sus@jensus.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(339,1292,'Karina Hansen','karinaemil@yahoo.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(340,1294,'Mette H├©gsbjerg  Langkj├ªr','asgaard@dlgmail.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(341,1295,'Rikke B├©gelund','info@hp-service.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(342,1298,'Lene M├©ller Yang','leneyang@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(343,1303,'Maria ├ÿstergaard-Nielsen','mm@mail.tdcadsl.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(344,1312,'Helle Stengaard Christensen','hellestc@icloud.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(345,1319,'Camilla Bille Thomsen','camillabillethomsen@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(346,1324,'Susanne Dithmer Gam','frejagam@city.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(347,1330,'Zosia Karoline Lav','zosia@lav.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(348,1332,'Dorthe M├©ller','Dorthe.moeller@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(349,1339,'Britt Herborg Hansen','britt@herborg-hansen.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(350,1343,'Taina Hvidlykke','familien@hvidlykke.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(351,1348,'Mette Boje','nb@isensus.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(352,1354,'Ulla Baasch Andersen','ca@klonk.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(353,1355,'Vickie Gammelgaard','vickie.gammelgaard@mail.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(354,1357,'Colette Josiassen','klaus.bech.jensen@mensa.dk','2017-02-07 09:25:19','2017-05-02 20:21:35',NULL,'','30'),(355,1358,'Rikke Meyling','Familien@meyling.dk','2017-02-07 09:25:19','2017-04-20 21:30:12',NULL,NULL,'31'),(356,1368,'Ann Harp├©th Thor','ann@FUTU.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(357,1371,'Bibbi S├©gaard Visby','bibbivisby@live.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(358,1372,'Mette Riegels','familienriegels@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(359,1373,'Pia Okpara','fam.okpara@live.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(360,1377,'Karina Jonsson','karina@ejlbo.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(361,1381,'Trine Kornum Christiansen','gc@trineogkaare.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(362,1383,'Marianne Pihlmann Kronborg','kronborg1@tuknet.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(363,1390,'Elin H├©ymark','Cirkushoymark@hotmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(364,1391,'Nete Gr├©n Jacobsen','nete@familiengroen.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(365,1394,'Signe Marie Vesterdorf Iversen','signevi@hotmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(366,1396,'Anne Christine Urfe Bendt','mads@bendt.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(367,1397,'Aino Vonge Corry','aino@arbat.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(368,1400,'Tina Rasmussen Stilling','tina.stilling@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(369,1405,'Majbritt Fyhn Wilken','jesperwilken@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(370,1406,'Marie-Louise Frederiksen','marielouisefrederiksen@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(371,1407,'Bente Panduro','Pandurobente@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(372,1409,'Vibeke Elizabeth S├©rensen','hvorforligenu@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(373,1410,'Chrestine Faurholt Laursen','Chrestine.laursen@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(374,1413,'Dorthe N├©rhave Kj├ªr','Dorthe.nkj@hotmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(375,1415,'Helene Damkj├ªr','helene@hmq.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(376,1423,'Ellen Temwa S├©rensen','ellenogcarsten@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(377,1424,'Sarah Fredberg','sarahfredberg@hotmail.com','2017-02-07 09:25:19','2017-03-21 20:51:31',NULL,NULL,NULL),(378,1431,'Heidi Br├©gger Johnsen','Heidijohnsen@jubii.dk','2017-02-07 09:25:19','2017-03-21 20:51:31',NULL,NULL,NULL),(379,1434,'Ingrid Margrethe Korsgaard','Mkorsgaard1@gmail.com','2017-02-07 09:25:19','2017-03-21 20:51:31',NULL,NULL,NULL),(380,1436,'Tirah Fischermann','info@modern-healing.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(381,1437,'Anne Vibeke Jensen','annevibj@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(382,1438,'Lene West Kristensen','kent.wk@kentus.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(383,1443,'Helene Madsen','hnmd@novonordisk.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(384,1445,'Tina N├©rgaard','norgaard.tina@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(385,1448,'Lena Kasandra Stubkj├ªr','lenakasandra@yahoo.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(386,1451,'Mette Lund├© Sieg','kasper@sieg.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(387,1452,'Anne-Mette Steffensen','steffensenannemette@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(388,1454,'Sidsel Klarborg Hillgaard','sidsel@hillgaard.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(389,1460,'Pia S├©gaard','sogaardpia@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(390,1461,'Louise Berg Puggaard','louisebergolesen@hotmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(391,1462,'Lotte Sligting Stannius','lotte@zenithgroup.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(392,1463,'Pia Enghild Christiansen','pia@enghild.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(393,1465,'Camilla Hansen','hansen_camilla@hotmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(394,1468,'Gitte Martina Oscarsson','go@newmail.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(395,1470,'Cecilie Eken','peter@heydenreich.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(396,1471,'Michael Brock','mbrock.dk@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(397,1475,'Juliette Gemz├©e','katfalken1@live.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(398,1478,'Anna Bj├©rshol','info@abtekst.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(399,1479,'Sabine Lauge Olsen','solsen@newmail.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(400,1485,'Sisse Helle Njor','njor@vip.cybercity.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(401,1490,'Ann Hansen','annogeinar@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(402,1498,'Rikke Lindeberg Bille','rikke@bille.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(403,1500,'Stine M├©lleskov','slut@moelleskov.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(404,1509,'Tine Neel Riber Teglbj├ªrg','tineneelriber@gmail.com','2017-02-07 09:25:19','2017-03-21 20:51:31',NULL,NULL,NULL),(405,1510,'Camille Sommer','Tvistur@live.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(406,1511,'Carsten Holm Nikolajsen','c-nikolajsen@live.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(407,1514,'Louise Brown','louisebrown@mensa.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(408,1515,'Heidi Louise Hansen','claus@94k.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(409,1516,'Stine Nelke','stine.nelke@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(410,1518,'Jette Birkholm','birkholm@kirkebymail.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(411,1519,'Mette Br├©nnum Girsel Gjerl├©v','mggj@regionsjaelland.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(412,1520,'Tine Birksholm Sejersen','tine_teol@yahoo.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(413,1528,'Lis Hedelund Thomsen','martin.quottrup@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL,NULL),(414,1529,'Pernille Ridder Olsen','Ridder-olsen@mail.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(415,1530,'Stine Stenfatt West','stine@stenfatt.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(416,1533,'Maria Blaabjerg','mariablaabjerg@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(417,1538,'Inge Just Porse','porse@energimail.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(418,1540,'Signe Birk Lyne','signe74561@yahoo.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(419,1546,'Dorthe Dahlin Irvold','dorthe@irvold.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(420,1549,'Birgitte Svendsen','bs@pecuniaconsult.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(421,1552,'Lisbeth Barkholt Hansen','lisbethbarkholthansen@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(422,1558,'Jette R├©gen','bondegaardsminde@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(423,1561,'Tina Rauff Tonnesen','Fam.mirabellevej@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(424,1563,'Charlotte U. Carlsen','Klaus.risager@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(425,1565,'Dorthe Nielsen','andedun@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(426,1566,'Helle Kjerside','Kjerside66@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(427,1570,'Ditte Risager R├©nnest','ditte.ronnest@live.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(428,1579,'Kirstin Lovejoy','ideagon@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(429,1580,'Charlotte Ryberg Simonsen','charlotte@simonsen.info','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(430,1581,'Helle H. Rasmussen','Hhr145@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(431,1583,'Marianna Mikkelsen','maal@mikkelsen.mail.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(432,1584,'Charlotte Gaard','Charlotte.gaard@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(433,1587,'Christina Szankowski-Slidsborg','slidsborgc@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(434,1592,'Susanne Tylvad-Boesen','Lucas301205@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(435,1593,'Kristina Dorch Stauning Refstrup-Mortensen','kristina@refmor.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(436,1595,'Eva Schriver','evahansen900@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(437,1596,'Mona Hjorth Hansen','Mona.hjorth@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(438,1602,'Pixie Chrestine Schou','frederiksenpost@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(439,1605,'Mette Birk Gleisner','mettebirkgleisner@live.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(440,1606,'Heidi Dandanell','Heidi.dandanell@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(441,1608,'Maria C. M├╝ller','muller@newmail.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(442,1609,'Birgitte R├©nne','Birkroenne@ofir.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(443,1615,'Marianne Sommer Bielefeldt','Marianne_s_bielefeldt@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(444,1618,'Tine Buhl Andersen','tine_buhl@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(445,1619,'Janne Fredens','jfredens@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(446,1622,'Mette Hvilsh├©j Fabricius','mfabricius@mail.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(447,1625,'Margrethe M├©ller Thomsen','smat@smat.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(448,1629,'Bitten Friis Jensen','bittenfj@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(449,1631,'Lotte Poulsen','jan-lotte@mail.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(450,1636,'Helle Marie Pedersen','heped@dongenergy.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(451,1637,'Louise Tvebro','louise@tvebro.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(452,1638,'Margot Pedersen','margot.pedersen@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(453,1639,'Charlotte Scheel','nw@multiplex.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(454,1641,'Charlotte van F├╝hren','chala@webspeed.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(455,1645,'Lone Holst','lone@celona.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(456,1649,'Ursula Breull Christensen','ubreull@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(457,1652,'Lucia Pihl','simon_pihl@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(458,1655,'Salina Lianne H├©egh Hansen','salina.hoegh.hansen@sol.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(459,1662,'Christina Linea Sonne','Kevin.sonne@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(460,1667,'Susanne Fischer-Rasmussen','susannefischerrasmussen@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(461,1674,'Christine Sj├©berg','c.sjoeberg@live.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(462,1676,'Mette Pilegaard Rasmussen','metteogklaus@pilegaard-rasmussen.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(463,1677,'Lene Carlson','lc.lenecarlson@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(464,1678,'Trine Nielsen','trineshop@yahoo.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(465,1680,'Tenna Petersen','Tennap@hotmail.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(466,1683,'Dorte Odde','dorteodde@ontheedge.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(467,1685,'Pernille Kops','pernillekops@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(468,1687,'Christina Munkgaard Kragh','munkgaardkragh@mail.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(469,1691,'Louise R├©nne Green','louise@roennegreen.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(470,1696,'Jytte Frederiksen','Jytts@live.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(471,1704,'Julie Schmidt Matthiesen','2180julie@gmail.com','2017-02-07 09:25:20','2017-03-21 20:51:32',NULL,NULL,NULL),(472,1705,'Susie Meisler-Jones','s.meisler@mail.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(473,1706,'Heidi Koed Nielsen','heidikoed@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(474,1715,'Christina Jakobsen','chris@g-lock.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(475,1717,'Rikke Esberg Kirkfeldt','kirkfeldt@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(476,1720,'Birgitte Muff Poulsen','bmup@novonordisk.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(477,1722,'Ann-Sophie Khan','jacob@wkhan.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(478,1723,'Pia Sand','piarene@haslevnet.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(479,1726,'Line Raft Calum','raftcalum@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(480,1729,'Anne Marie R├©nberg','annemarieogmichael@yahoo.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(481,1730,'Lonni S├©lb├ªk Hansen','lonnichristiansen@yahoo.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(482,1732,'Malene Raben J├©rgensen','mrabenj@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(483,1734,'Ulla Wolter','mullew@me.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(484,1736,'Josefine Gudmann','josefinegudmann@yahoo.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(485,1740,'Inki Mannstaedt','inkimann@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(486,1743,'Helene Agerskov Vindahl','heleneac@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(487,1745,'Lene Marie Ditlev','lene_ditlev@hotmail.com','2017-02-07 09:25:20','2017-03-21 20:51:32',NULL,NULL,NULL),(488,1746,'Sanne Bekkersted Dam','dam1969@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(489,1750,'Lotte Groth Jensen','grothjensen@yahoo.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(490,1751,'Charlotte Rasborg','crasborg@yahoo.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(491,1753,'Helle Bloch Jessen','Helle.bloch.jessen@LEGO.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(492,1754,'Mette Ribergaard Mai','MetteRMai@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(493,1759,'Signe Vorting','signe@loegumklosterfriskole.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(494,1768,'Ann Mikkelsen','annmikkelsen2@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(495,1772,'Johanne Riegels ├ÿsterg├Ñrd','nej@paradis.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(496,1776,'Merete Krogsgaard','mk@3top.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(497,1777,'Diana Lynee','dianalynee@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(498,1778,'Anne-Dorthe Hejn Br├ªdder','ab@vaeverhuset.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(499,1779,'Anja Eske Rosenqvist','Anja.rosenqvist@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(500,1780,'Birgit Vig','sandvig@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(501,1781,'Mette Schmidt Ohlsen','msohlsen@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(502,1783,'Anya Winqvist','anya@mikromaude.se','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(503,1786,'Kamilla Hjortkj├ªr','kamilla@hjortkjaer.net','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(504,1787,'Anne Mette Riber','post@rydskovgaard.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(505,1788,'Gitte Alberen','gitte.alberen@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(506,1789,'Mariann Bohnstedt','bohnstedtklanen@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(507,1791,'Tasha Buch','sunesloth@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(508,1793,'Britt Lindhardt S├©ndergaard','scsoendergaard@mail.tele.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(509,1794,'Louise K├ªrn Korsholm','soeren.korsholm@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(510,1795,'Stine Nim Nothlev','Stine@nothlev.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(511,1796,'Bella Marckmann','privatsociologen@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(512,1799,'Majbritt Birkebo Ravnholt','majbritt@birkebo.net','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(513,1801,'Ane Katrine Uldall Eiming','ane@eiming.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(514,1802,'Hanne Skipper J├©rvang','hanne@jorvang.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(515,1803,'Louise Str├©yberg','Louise.hougaard@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(516,1805,'Rebeca Su├írez Alvarez Thostrup','thostrup@carlsbergfoundation.dk','2017-02-07 09:25:20','2017-03-21 20:51:33',NULL,NULL,NULL),(517,1809,'Christina Bjerre','christinabjerre@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(518,1810,'Susanne Wichmann Emde','post@susanneemde.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(519,1811,'Janne Wirenfeldt Sandb├ªk','jws7600@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(520,1815,'Tina Bundgaard St├ñcker','musentina@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(521,1816,'Lene Grum-Schwensen','sofusgs@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(522,1820,'Bolette Nyrop','bolette.nyrop@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(523,1821,'Mette Stadsbjerg','Msb50@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(524,1823,'Marianne Rosendahl','Marianne.rosendahl@skolekom.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(525,1826,'Jonna Vestergaard Eriksen','eriksenjonna@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(526,1832,'Pernille Fog Svendsen','pernillefsvendsen@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(527,1835,'Synn├©ve R├©ysland','sroeysland@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(528,1836,'Pia Bak','Friisbak@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(529,1837,'Andrea Staunsholm','haj@iexcel.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL,NULL),(530,1838,'Karin Christensen','krc@mail.tele.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(531,1843,'Mette Studsgaard S├©rensen','mettesolsen@yahoo.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(532,1844,'Ane Marie Fabrin','amfroskilde@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(533,1848,'Mette Wistoft','mwistoft@yahoo.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(534,1849,'Sussi Karina S├©rensen','Akubra1734@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(535,1851,'Pia Koustrup','pkou@viauc.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(536,1853,'Pia Aurdal Holmberg','p.aurdal@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(537,1856,'Lene Kj├ªrem Nielsen','nielsen@langbach.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(538,1860,'Mie Bech Hanberg','mie@mensa.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(539,1862,'Stine Tholund','stine@tholund.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(540,1865,'Henriette Nielsen','henriette.hen.nielsen@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(541,1866,'Marianne Ingemann S├©rensen','Marianne.ingemann@live.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(542,1867,'Louise Breiner Larsen','Louise_2@c.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(543,1868,'Jensine Ingerslev Nedergaard','Jensine.nedergaard@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(544,1872,'Line Sofie Welling Petersen','linesofiepetersen@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(545,1873,'Vibe Marie Laidlaw','onionchild@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(546,1876,'Tanja Wetterstein Simonsen','rolf@simonsen.tdcadsl.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(547,1877,'Anette Rosgaard','mks@therosgaards.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(548,1878,'Suzanne Steensen','suzannesteensen@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(549,1883,'Malene Guassora','mguassora@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(550,1884,'Camilla Suder','cogs@suder.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(551,1888,'Britta M. Hansen','brimh79@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(552,1892,'Rikke S├©rensen','Rikke.o.sorensen@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(553,1896,'Xenia Pauli Jensen','jacoblorensen@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(554,1898,'Karna Riis Larsen','karnariis@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(555,1899,'Maria Leerberg','pauli.leerberg@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(556,1906,'Karina Maria Bruse','Karinamariabruse@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(557,1908,'Mie Normand Lauritzen','normand_sport@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(558,1911,'Christine Otterstr├©m','Christine.otterstrom@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(559,1913,'Tina Wilson Torgersen','tinawilson20@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(560,1915,'Anne Ryder','Anneryder77@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(561,1919,'Vicki Slott-Petersen','lauslott@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(562,1921,'Carina Krarup G├╝llendorff','TheisKrarupHansen@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(563,1922,'Christina Ro Hansen','jacob@morrismini.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(564,1924,'Jannie Kirk','janniekirk@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(565,1925,'Inge Marie Melgaard','melgaard@altiboxmail.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(566,1931,'Anja Kristensen','anjak@braskhome.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(567,1932,'Mette Fiirgaard Schneefeldt','fiirgaard@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(568,1933,'Gitte B. Poulsen','gbpoulsen@yahoo.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(569,1934,'Karina Bograd','kale@legind.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(570,1938,'Lotte Stigsgaard S├©rensen','lotte@stigsgaard.net','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(571,1946,'Lotte Rasmussen','mail@lotte-rasmussen.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(572,1949,'Ylva Rigner Freiesleben','rigner@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(573,1956,'Fadia Maria Frausing El-Tal','fadia@el-tal.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(574,1959,'Line Sikora Christiansen','Linasikora@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(575,1960,'Ditte Holm','stefanh@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(576,1964,'Heidi Bonke','niksvarrer@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(577,1966,'Lene G Madsen','fam@madsen.tm','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(578,1967,'Julie Pildal','danzahavi@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(579,1968,'Dorthe Skau Bramming','dbramming@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(580,1969,'Stinne Fruelund','stinne@playforlife.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(581,1972,'Runa Fenger','hjemmeemail@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(582,1973,'Val├®rie Parois Licht-Larsen','anders@licht-larsen.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(583,1975,'Gunnv├í Staksberg','Gunnva2001@yahoo.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(584,1977,'Theresa Gregoriou','theresa_gregoriou@live.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(585,1980,'Elizabeth Juul W├╝rtz','Elizabeth.wurtz@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(586,1983,'Michelle Charlton','charlton@vip.cybercity.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(587,1984,'Helle Rostkj├ªr Brender','hellebrender@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(588,1985,'Tina B Kildentoft Christiansen','kildentoft.christiansen@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(589,1993,'Marie ├ÿdum Hagedorn','mariehagedorn@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(590,1994,'Rosemarie B├©dker','rboedker@yahoo.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(591,1995,'Marie Louise Dunker Nielsen','flemming@pless.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(592,1997,'Pernille Breum Steen','pernille.b.steen@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(593,1998,'Mette Frost Clausen','mc@toftlund.net','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(594,2002,'Dorte Bolgan Thomsen','doth@km.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(595,2004,'May-Britt Aaberg','may.britt.os@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(596,2006,'Eva Berengar','Berengar@Berengar.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(597,2007,'Margrethe Erbou Andersen','m_e_a@live.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(598,2008,'Christine Holl├ªnder','christinehollaender@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(599,2009,'Pernille Hall Schou','Pernille.Schou@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(600,2011,'Mai-Britt Naumann Pedersen','maibrittnaumann@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(601,2013,'Livia Mogensen','livsen@mac.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(602,2014,'Signe Strudsholm Munch','Signe.munch@profibermail.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(603,2019,'Christina Stenberg Dam','Meier@youseeme.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(604,2022,'Charlotte Eir','Charlotte_eir@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(605,2026,'Charlotte Carl Larsen','Pilen@ishoejby.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(606,2027,'Annette Rosetti','annros@outlook.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(607,2031,'Heidi Lock','heidilock@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(608,2035,'Cathrine Sue Halle Peters','r.halle_peters@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(609,2036,'Pia Hallengreen Thunbo','Pia@thunbo.eu','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(610,2037,'Ann Nyby Rennison','Ann@nyby.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(611,2039,'Jane Bach Crewe','janebachcrewe@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(612,2040,'Maja Groth Granborg','maja@granborg.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(613,2042,'Gry Anna Hundeb├©l','g.hundeboel@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(614,2043,'Charlotte Sachmann Nielsen','Charlotte@get2net.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(615,2044,'Pernille Illum','Pernille.illum@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(616,2045,'Kristine Albrechtsen','Kreer83@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(617,2046,'Anette Prehn Eiken','anette@anetteprehn.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(618,2047,'Mads Engell','Mads.keys@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(619,2048,'Luise Bjerre Roesen','luise@bjerre.net','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(620,2049,'Fie ├ÿrum','fie@nu-revi.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(621,2050,'Rikke Fabricius Mortensen','rialni@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(622,2051,'S. Emilie Hunderup Pedersen','familien@trf-data.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(623,2053,'Mette Frimann Brahm','mette@brahm.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(624,2056,'Dorota Beres','babyberes@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(625,2058,'Ditte Marie Blond','jeppebo68@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(626,2059,'Tina Stokvad Hansen','tina@togc.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(627,2065,'Sigrid Hedegaard Laursen','Sigrid.hedegaardlaursen@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(628,2066,'Louise Munk Rytter','louiserytter@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(629,2067,'Susanne Rosenberg Madsen','srm@live.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(630,2069,'Pernille Gericke Skj├©dt','henrikryan@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(631,2070,'Hanna Lund Struve','peroghanna@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(632,2071,'Karin Vels Hansen','karv@dtu.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(633,2074,'Malene Lynge Eskildsen','mge80@live.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(634,2075,'Dorthe Bierre','dorthebierre@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(635,2078,'Claus J├©rgensen','Calus1206@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(636,2080,'Metine Bober T├©nnersen','Metine10@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(637,2082,'Dorte Strobel','strobel@mail.tele.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(638,2084,'Nadja Berg','nadjasberg@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(639,2085,'Joan Ditlevsen','Joan@starup.eu','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(640,2090,'Christina Achton-Gr├Ñthen','olav@achton-graathen.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(641,2091,'Mia Aarsholm','kristian@duus.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(642,2094,'Monica Laustsen','Mathias@monicalarsen.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(643,2098,'Lene Amstrup S├©rensen','leas1970@yahoo.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(644,2101,'Kirsten Lai N├©rgaard','kirstenln@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(645,2106,'Maria N├©rbygaard','maria@nrbygaard.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(646,2109,'Malene Raith','staalby@mac.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(647,2110,'Pia Egeberg','piaegeberg@email.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(648,2111,'Sigrid Ylva H├©ymann Dahlstr├©m','fdp637@alumni.ku.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(649,2113,'Maria Oslo Rasmussen','maria@oslonet.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(650,2115,'Melina Kiwa S├©derberg','kiwa@kiwa.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(651,2119,'Louise Kleis Axelsen','Kleis.jesper@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(652,2122,'Mia Gustafsson','miafrank@email.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(653,2124,'Benadikta Kruse','benadikta@yahoo.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(654,2126,'Dianna Z Vestergaard','dianna@zonebox.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(655,2128,'Karen Bj├©rnelund','karen.bjornelund@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(656,2132,'Christina Therkildsen','2xtherkild@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(657,2133,'Louise Thorsager','louise@thorsager.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(658,2138,'Bettina Hansen','bettina@chin.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(659,2140,'Dorte Tersl├©se','tersloese@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(660,2141,'Maria Asmussen','asmussen@nypost.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(661,2142,'Katrine Joensen','kj@trouville.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(662,2145,'Ninna Meier','troels.johansen@clin.au.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(663,2146,'Trine Gjesing Antvor','tgantvor@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL,NULL),(664,2149,'Merete Lysberg','meretelysberg@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(665,2153,'Maria Koefoed','mariakoefoed@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(666,2155,'Kijo Cecilia Gylden','kijopii@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(667,2156,'Birgitte Dines Johansen','birgittedines@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(668,2157,'Kirsten Marie Brochorst Gr├©nborg','Kirsten@oktopus.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(669,2163,'Pia Mai','Piamai888@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(670,2164,'Anne Benski Guldbjerg','Anne_b@sol.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(671,2165,'Birgitte Raben S├©rensen','Birgittehenningsen@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(672,2174,'Mette ├ÿstergaard S├Âderlund','mosoderlund@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(673,2175,'Kristina J├©rgensen','kristina@deedee.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(674,2176,'Irina Watts','irina@watts.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(675,2182,'Katja Jungfalk Andersen','katja@kardemommeby.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(676,2183,'Mette B├©nneland','Mb_land@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(677,2185,'Lone Gregor Christensen','fam.gregor@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(678,2189,'Nadia Cespedes Stage','nadiacespedesstage@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(679,2192,'Karina Bj├©rk Andreasen','kban@regionsjaelland.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(680,2193,'Anna-Marie Esbjerg Christensen','vandgaarden@pc.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(681,2194,'Nicole Fiala Baar','Nicole.fiala@yahoo.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(682,2195,'Galina Chizhova','Galina.chizhova@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(683,2199,'Annette Louise Foltmann','af@spia.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(684,2200,'Mette Finderup','mette@finderup.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(685,2201,'Gry Segoli','gry@segoli.net','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(686,2204,'Sandra de Bl├®court Dalsberg','blecourt@dalsberg.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(687,2205,'Anne Sofie Overgaard Lif','anne.sofie.overgaard.lif1@skolekom.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(688,2207,'Anja Bech-Jansen','Anja.bechjansen@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(689,2208,'Dida Grundtvig','didagb@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(690,2209,'Trine Brodzikowski','trine.brodzikowski@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(691,2210,'Christina Prytz Frandsen','prytz@live.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(692,2213,'Susanne Pia Arnsted','arnsted@privat.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(693,2214,'Monica Rasmussen','micas.ras@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(694,2216,'Hanne T├©ndering Dam S├©rensen','jeppe@damsorensen.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(695,2219,'Carina Jo Sivager','post@sivager.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(696,2220,'Jannie E. A. Hvilsted','rvhvilsted@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(697,2222,'Maria Jelstrup Munk','kenn@jelstrup-munk.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(698,2226,'Helle Maria Niemann','Niemann.hm@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(699,2229,'Naja Heiberg','urrsula.caroline@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(700,2230,'Kira H├©egh','kira@itu.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(701,2231,'Stina Rie Klit Haubroe','Stephan.fly@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(702,2233,'Nina Konstantin Nissen','nknissen@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(703,2236,'Ina H├©yer Zacho','skriv-til-ina@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(704,2241,'Christina L├©wenstein','loewenstein@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(705,2244,'Charlotte Dujardin Weimann','s@weimann.se','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(706,2245,'Hanne Danielsen','hannedanielsen@mail.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(707,2246,'Martina Stendel','martina.stendel@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(708,2250,'Oksana Bugrii Attermann','henrik@attermann.net','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(709,2251,'Rikke S├©ltoft Laurittzen','Rikkelauritzen@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(710,2252,'Siri Wetlesen','netpsykolog@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(711,2253,'Rikke Bostrup Voss','Voss.kids@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(712,2254,'Line Lykke Jullien-Paletier','line@paletier.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(713,2255,'Frederik Bukhave L├©wenstein','f.lowenstein@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(714,2256,'Louise Mejsig Brunsgaard','louise_brunsgaard@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(715,2258,'├àse S├©rensen','aanv@ofir.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(716,2261,'Birthe Offer Knudsen','birthe@fam-knudsen.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(717,2262,'Hanne Stentoft Arp','h_arp@post1.dknet.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(718,2264,'Ulla Vang J├©rgensen','Ulla@aeblevangen.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(719,2266,'Gitte Kieler','giki@tv2.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(720,2269,'Ketty Bartholin Pedersen','Tune.pedersen@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(721,2270,'Sara Barner Kappendrup','jkappendrup@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(722,2271,'Dorothea Ragoczy','DorotheaRagoczy@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(723,2273,'Eva Bonde Jacobsen','evabj@dadlnet.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(724,2277,'Lone Bovin','bovin@get2net.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(725,2278,'Anne Kristine Plauborg Br├©ndt J├©rgensen','Annekristinepbj@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(726,2280,'Line Zard Hartkopf','linehartkopf@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(727,2281,'Katrine Bollmann','katrinebollmann@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(728,2282,'Anne Erichsen','Anne_erichsen@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(729,2285,'Britta Schlott Kristiansen','giftedchildren@bskristiansen.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(730,2292,'Bente Keis Neerbek','neerbek@mail.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(731,2293,'Jeppe Buhl Axelsen','jeppe.axelsen@image.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(732,2294,'Hanne Mette Lundorff','HanneM2804@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(733,2296,'Jeanne Halkj├ªr Jensen','jeannehj@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(734,2298,'Katja Christensen','katja@dall-olsen.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(735,2304,'Helene Catharina Lindel├Âf','helene@cirquemerveille.com','2017-02-07 09:25:22','2017-03-21 20:51:36',NULL,NULL,NULL),(736,2305,'Dorthe Ebling','samueleddy@tdcadsl.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(737,2307,'Susanne Merete ├ÿstergaard','ernsto@mail.tele.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(738,2308,'Brit Thestrup Bach','britbo@ktbb.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(739,2309,'Kirsten Elkj├ªr Schr├©der','Kirsten_schroeder@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(740,2315,'Dorte Dalgaard','d@lgaard.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(741,2316,'Lili L├ªrke Nordstr├©m','benny@3am.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(742,2319,'Trine Bechmann Funch','tk@bechmannfunch.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(743,2320,'Anya Palmkvist','Palmkvist76@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(744,2321,'Heidi Degn Grunds├©e','heidi@sgtech.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(745,2323,'Lise Fabricius Wadskj├ªr','lfc@syvstjerneskolen.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(746,2324,'Louise Lykke Olsen','louiselykke1975@yahoo.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(747,2325,'Mette Pr├ªst Knudsen','aspen@youmail.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(748,2326,'Erdenechimeg Minjuurdorj','hulemalerier@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(749,2328,'Pauline Vedderkop','line3112@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(750,2329,'Birgitte Bentzen','bb@bbentzen.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(751,2330,'Camilla Reventlow-Grinling','crg@krenkerup.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(752,2331,'Jeanette Astrup','Jeanetten@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(753,2332,'Thor August Selander','taselander@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(754,2333,'Ruut Peuhkuri','sp@passivhus.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(755,2334,'Anja Dalum Jensen','anja.dalum.jensen@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(756,2335,'Helle Lindblom M├©ller','Hellelindblom@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(757,2336,'Anna-Karina Dan','annakarinadan@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(758,2337,'Camilla Warh├©i Skibsted','camillaskibsted@mail.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(759,2342,'Ulla Kirstine Dahlberg','bjoern.dahlberg@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(760,2343,'Henriette Ullerup-Aagaard','h_ullerup@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(761,2345,'Nana Folmann Hempler','nfolmann@yahoo.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(762,2346,'Julie Degn Nielsen','degnnielsen@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(763,2350,'Stine Rolle Hansen','stinerollehansen@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(764,2351,'Viviann Hansen','vbhansen@dlgmail.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(765,2352,'Karen Wibling Solg├Ñrd','kaws@oticon.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(766,2353,'Helle Yorklai Christiansen','hychristiansen@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(767,2354,'Britt Grundal Ottesen','Morten1603@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(768,2356,'Sara Skaarup','mail@saraskaarup.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(769,2357,'Katja Dall Svendsen','storesult@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(770,2359,'Linda Nielsen','snorremor@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(771,2361,'Sofie Heller L├╝tzen','peter@hellerlutzen.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(772,2363,'Hanna W. Grue','hanna@grue.eu','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(773,2365,'Lykke Rasmussen','lykkerasmussen@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(774,2367,'Kristine Mark Burne Sundby','sundbys@me.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(775,2368,'Kristine B├ªlum Thorvildsen','kristine@thorvildsen.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(776,2369,'Maisa Larsen d├® Martino','maisademartino@yahoo.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(777,2370,'Janne Taule Andersen','smukkejanne@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(778,2371,'Helle Dor├® Hansen','jdh@visiopharm.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(779,2372,'Rikke Havner Alr├©','rialr03@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(780,2373,'Anne-Marie Jydegaard Axelsen','amax@live.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(781,2375,'Gry S├©lja Olsen','grysoelja@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL,NULL),(782,2376,'Mette M├©ller Jeppesen','mettejeppesen_30@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(783,2378,'Mari Overgaard Ringereide','solhjul@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(784,2379,'Grit Wessel','fam.wessel@outlook.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(785,2382,'Dorte Terkelsen','Dorte.terkelsen@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(786,2384,'Stine Lyholm','Stinelyholm@yahoo.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(787,2385,'Nina Raun','ninagregersen@yahoo.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(788,2389,'Eva Holm Kunckel J├©rgensen','eva@kunckel.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(789,2391,'Rikke Gaba Lylover','kenneth@lylover.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(790,2392,'Bettina Rex','Andersrex@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(791,2394,'Kirsten Lundh├©j S├©rensen','familie@riki.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(792,2395,'Helle Lorenzen Riemke','bjarne_riemke@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(793,2400,'Maja Frendrup','majafrendrup@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(794,2401,'Jette Hansen','hansonjet@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(795,2402,'Tina Kissow Lildal','Kissow@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(796,2405,'Mia Lee Taarnh├©j','mialeetaarnhoj@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(797,2409,'Dorte Wikborg Hartzner','dortehartzner@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(798,2411,'Mette Sloth Vogensen','mette@vogensen.net','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(799,2412,'Lene Grunds├©e','lene@grundsoee.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(800,2413,'Tina Krabbenh├©ft','tinakrabbenhoft@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(801,2415,'Pernille Beltoft Rasmussen','Pernilleogjens@icloud.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(802,2416,'L├ªrke Andersen','laerkew@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(803,2417,'Rikke Brandt Broegaard','Rikke_broegaard@yahoo.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(804,2418,'Sanne Hansen','worsaaesvej22@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(805,2419,'Tanja Maria Hansen','hansen_tanja@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(806,2420,'Lene Hundborg Koss','Lene.hundborg@me.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(807,2422,'Hanne Riber','scandream@ofir.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(808,2423,'Ana Maria Garrido Lopez','Lopez_dk14@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(809,2424,'Maiken Engberg','je@cas.au.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(810,2425,'Troels Toft Nielsen','Troels.Toft@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(811,2428,'Lene Olsen','Lene.ballerup@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(812,2433,'Pia Nissen Olsen','pia.n.olsen@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(813,2434,'Kirsten Renstr├©m','K.Renstroem@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(814,2437,'Maiken Christensen','majsle@yahoo.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(815,2438,'Dorthe Furstrand Lauritzen','furstrand@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(816,2439,'Majbritt Kold Bj├©rndal-Eskesen','makobe4@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(817,2441,'Helene Hartman Nielsen','Post@espejo.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(818,2442,'Caroline Clausen','p.astrup@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(819,2443,'Lise Kaiser','lika@kglteater.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(820,2444,'Pernille Dicte Bjernemose','pernilledicte@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(821,2446,'Trine Black Pedersen','jonas@vestfalen.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(822,2447,'Gepke S├©nnichsen','gepke@soennichsen.biz','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(823,2448,'Verena Vanessa Irming-Pedersen','verena@irming-pedersen.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(824,2450,'Luise Ravnskj├ªr','luipigen@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(825,2451,'Mette Geldersholt N├©rkj├ªr','mette@noerkjaer.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(826,2452,'Birgitte Escherich','be@kostkompagniet.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(827,2454,'Martine Vanden Eynde','vandeneynde.martine@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(828,2455,'Christine Dragsb├ªk Knudsen','Christine@ihd.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(829,2456,'Mette Karlsh├©j','mekarlshoej@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(830,2458,'Ida Franck Holm','kertemindevej77@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(831,2459,'Jette Silberbauer Gad','js@code5.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(832,2460,'Ann Stenb├ªk','annstenbaek@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(833,2461,'Louise Grosell','louise@grosell.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(834,2463,'Iben Hald N├©rgaard','ibenraa@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(835,2464,'Lise Guldager Hoppe','Bjerg_lise@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(836,2465,'Britta Borup','britta@pfy.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(837,2466,'Vivi Lykkegaard','tilvivi@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(838,2467,'Stine Kristensen','siliks@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(839,2468,'Sandra Viig Seitzberg','sandraviigseitzberg@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(840,2469,'Sandra H├©jer Broge','sandra_broge@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(841,2470,'Christina Aaberg Warncke','GiftedChildren@aawa.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(842,2471,'Lise Skafte Jensen','liseskaftejensen@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(843,2473,'Solrun Bordoy Joensen','ronni.joensen@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(844,2474,'Lena Lee Skibye','lena@skibye.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(845,2475,'Eva Kyed ├ÿsterlind','bkyed@yahoo.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(846,2478,'Birgit Ravnholdt Christensen','b.ravnholdt@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(847,2479,'Kirstin Kring','Kirstinkring@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(848,2481,'Anna Ottesen Meidell','brian@mindflow.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(849,2482,'Gitte Vinding','gitte@vinding.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(850,2483,'Anja van Hauen','basa@live.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(851,2484,'Lee Tesone','leetesone@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(852,2486,'Pernille Diemer Reichmann','pernillediemer@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(853,2487,'Winnie S├©rensen','Fam.s@rensen.se','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(854,2489,'Sascha Storm Siwmark','saschasiwmark@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(855,2492,'Josefine Christensen','josefine@josefine.me','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(856,2494,'Tinne Maibohm','tmaibohm@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(857,2495,'Rikke Lyb├ªk Hansen','Rikke67@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(858,2496,'Kalina Cecilie Olsson Hans','giftedchildren@olzzon.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(859,2497,'Christina Schertiger','christina@schertiger.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(860,2501,'Malene Holm Johansen','maleneholmjohansen@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(861,2502,'Suzanne Klarskov Anthony','suzanne@anthony.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(862,2503,'Anita Gravgaard Lassen','Anita@homeplease.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(863,2504,'Trine S├©berg','Trine@timt.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(864,2505,'Trine Buch','trinebuch@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(865,2507,'Lena Andersen','lena_nomade@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(866,2508,'Eline Holst Hansen','linehh@bbsyd.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(867,2509,'Joan Dahl Nielsen','joan.d.nielsen@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(868,2510,'Knud Hedeg├Ñrd Jensen','knud_hedegaard@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(869,2511,'Jan R├©rg├Ñrd Hansen','jan@jrha.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(870,2512,'Rikke Hjort Hansen','rikke.hjort@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(871,2513,'Ditte Svane','dittesvane@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(872,2514,'Lars Pallesen','lars.pallesen@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(873,2515,'Dorte Skouborg','Dorte@skouborg-web.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(874,2516,'Christina Krabbe Sommerlund','Krabbe.ck@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(875,2517,'Katrine N├©rgaard Thulesen','olsenogthulesen@mail.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(876,2518,'Mandie Camara','mandlo2@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(877,2519,'Karin Storkholm','storkholm@bbsyd.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(878,2520,'Louise Thingholm','louiseth@tdcadsl.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(879,2521,'Lisa Mathilde Hvideg','Lisa.hvideg@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(880,2522,'Sessan Holmberg','sessanholmberg@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(881,2523,'Katrine Bredsdorff Bargisen','katrinebredsdorff@msn.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(882,2524,'Maria N├©rgaard S├©gaard','mariansoegaard@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(883,2525,'Gerda Lund','Jens.arnfelt@arnfelt.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(884,2527,'Mette Elise Zeruneith','mettezeruneith@yahoo.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(885,2529,'Trine Uldall','Trine@media-now.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(886,2530,'Joan Rytter','joan@joan-mads.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(887,2531,'Mona Heide Petersen','mona.heide@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(888,2532,'Niels Enersen','niels@enersen.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(889,2533,'Berit Lohse','beritlohse@icloud.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(890,2534,'Sasja M├©ller Jensen','martin@service-365.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(891,2535,'Bolette Louise Sig Mathiasen','bolettelouise@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(892,2536,'Bitten Herbst R├©nnow','bittenherbst@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(893,2537,'Charlotte Andersen','martin.preuss.nielsen@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(894,2538,'Maja Helena Riis','maja@majariis.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(895,2540,'Birgitta Bergstr├Âm','kristian@lykkegaardsorensen.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL,NULL),(896,2541,'Milia Wagner','info@wagnerfotografi.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(897,2542,'Christina Kruse Hansen','Chris.raz@mail.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(898,2544,'Lotte Wahlun Olesen','Lotte.wahlun.olesen@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(899,2545,'Camilla Henriksen','camhen@mail.tele.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(900,2546,'Aimee Hansen','haac@post.tele.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(901,2549,'Charlotte Hviid Lauridsen','hviidlau@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(902,2550,'Camilla Lundin Overbeck','Camilla.overbeck@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(903,2551,'Anja Skjoldborg Hansen','anja.skjoldborg@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(904,2552,'Lillian Jespersen','lillian@jespersenmail.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(905,2554,'Khushboo Verma','Khushboo.verma84@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(906,2555,'Sisse Fog Odgaard','sissefog@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(907,2558,'Susanne Eiler','susanne@cumuli.net','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(908,2560,'Charlotte Hultberg','charlottehultberg@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(909,2562,'Katrina ├¡ Geil','Katrina.i.geil@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(910,2563,'Gitte Dyrholm Bech','henrikdbech@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(911,2564,'Julie H├©jlund Rasmussen','julieh.julie@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(912,2565,'Yanaba Rymark Sankoh','yanabasankoh@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(913,2566,'Christina Rask Thomsen','thomas_rask@mac.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(914,2567,'Anne-Mette Laage','annemettelaage@yahoo.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(915,2568,'Gitte Normann Munch-Petersen','gitte.normann@munch-petersen.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(916,2569,'Anna Freya Lykkegren','a.eistrup@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(917,2571,'Karina Nyegaard M├©ller','knp1610@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(918,2572,'Lene Tscherning Christensen','lene@rcglasogramme.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(919,2574,'Lisbeth Rasmussen','smedien@os.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(920,2575,'Lotte Gr├©nborg','Jan.gronborg@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(921,2576,'Lis K. Gregersen','lis_gregersen@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(922,2578,'Ditte Byk├ªrholm Nielsen','dittcheen@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(923,2580,'Torunn Laksafoss','torunn@likam.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(924,2581,'Dorthe Poulsen MacKay','dorthe@mackay.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(925,2582,'Camilla Poulsen','Camilla@peca.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(926,2583,'Joan Birk Nielsen','joanbirk@mail.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(927,2584,'Sofiia Ellisabet Bjerre','sofiiasays@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(928,2585,'Johanne Bundgaard Fleck S├©der','JohanneBFS@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(929,2586,'Mona Munkebo Winkel','mona@provinsen.net','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(930,2587,'Maria Moesgaard Lauridsen','moesgaardlauridsen@jubii.dk','2017-02-07 09:25:24','2017-03-21 20:51:40',NULL,NULL,NULL),(931,2588,'Vibeke Lyngklip Svans├©','vsvansoe@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(932,2589,'Anette Marcher','anettemarcher@mail.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(933,2590,'Maibritt Mark Hansen','kjo@agilease.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(934,2591,'Malene Faber-Rod Munch','martin@munchnet.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(935,2594,'Maja Reinhold Jensen','Majareinhold@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(936,2595,'Lise M├©rup Dalsgaard','dalsgaardlm@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(937,2596,'Gitte Buchholtz','Gitte.buchholtz@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(938,2597,'Majken Falkenberg Dohn','mfd@rmig.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(939,2599,'Joan Anella Petersen','joan@jofpetersen.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(940,2600,'Winnie Juel S├©ndergaard','fjs@tornskovgaard.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(941,2601,'Stella Due','Due.villadsen@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(942,2602,'Trine Gr├©nbek Hamborg','trine@hamborgdesign.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(943,2603,'Tania Natascha Ayla Annesen','Predatoria85@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(944,2604,'Helle Skibsted Nielsen','skibsen@privat.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(945,2605,'Mie Obel Thomsen','mieobel@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(946,2606,'Sidsel Toft Bossen','sidsel@rhodin.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(947,2607,'Susanne Andersen','susmorand@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(948,2609,'Rikke Birkedal Hansen','gc@paal.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(949,2610,'Anna Tolstrup Jensen','annatolstrup@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(950,2612,'Dorthe Clemens Pedersen','anders@tillebeck.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(951,2613,'Anne Marie Ahlefeldt-Laurvigen','Aahlen2@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(952,2615,'Sussie Thomsen','sussiethomsen@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(953,2617,'Dorthe Frydenlund','frydenlund30@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(954,2618,'Nina Husfeldt Clasen','david.clasen@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(955,2619,'Christine Bonnerup Byrgesen','christinebyrgesen@msn.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(956,2620,'Helene Sophie Spoor','Helene_Spoor@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(957,2621,'Anna Duus Hjorts├©','annaduus@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(958,2622,'Sissel Moody Elsberg J├©rgensen','sissel_moody@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(959,2623,'Marina Gundelach','marinagundelach@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(960,2624,'Muriel Lacomble Nielsen','muriel.lacomble@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(961,2625,'Annika Lion Kristensen','annikalion@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(962,2626,'Nina Sommer','mail@ninasommer.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(963,2627,'Pernille Hvid T├©nder','familien@hvidtonder.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(964,2628,'Eva Heitmann Foster','eaheitmann@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(965,2629,'Johanne Schmith','johanneschmith@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(966,2630,'Maria Jansdal','maria@jansdal.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(967,2631,'Marianne H├©gh','Homestylexx@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(968,2632,'Janne Kj├ªrgaard Dahl','1andersdahl@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(969,2633,'Lollo Aarup Pedersen','Mads@aarup.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(970,2635,'Ida May','idakmay@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(971,2636,'Susanne Truelsen Kruse','bo.kruse@telia.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(972,2638,'Thea Marie Drachen','theadrachen@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(973,2640,'Maria Nouvel Buch-Jakobsen','mbj@numerus.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(974,2641,'Solveig Sturlaugsdottir','solveig_st@yahoo.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(975,2642,'Trine Heising','trineheising@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(976,2643,'Trine Jakobik Kolding','tk@trinekolding.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(977,2644,'Birgit Jordansen','bj@b-jordan.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(978,2645,'Henriette Lied Viskinge Jensen','erikkjaerhansen@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(979,2646,'Astrid Skjoldborg Glans','astrid@mandoe.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(980,2647,'Tania Borre','taniaborre@email.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(981,2648,'Susan L├©vstad Holdt','susanholdt@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(982,2649,'Lisette Treu Lind','Ltpetersen@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(983,2650,'Kristian Buhl Axelsen','kax@plen.ku.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(984,2651,'Majken Jacobsen','Danielvandijklarsen@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(985,2652,'Linda Aagaard Thomsen','bjorn@aagaard-thomsen.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(986,2653,'Pernille Paaske  Autzen','pernille@pspa.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(987,2654,'Stine Money','Stinemoney79@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(988,2655,'Maibrit J├╝rs','jacob@stinkfoot.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(989,2656,'Xenia Kruse','mailmixe@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(990,2657,'Hanne Urlev S├©rensen','urlev@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(991,2658,'Tina Ryom Zachariassen','per.zachariassen@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(992,2659,'Mette Vadsholt Lyster','sune.lyster@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(993,2660,'Malene Riegels Thisted','malene_riegels@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(994,2661,'Merete Guldberg','mereteguldberg@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(995,2662,'Stine Staunsager Larsen','stinestaunsager@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(996,2663,'Berit Kramer','beritkramer@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(997,2664,'Anita Ray','anita@ray.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(998,2665,'Karina Krog Rosendal','karinarosendal@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(999,2666,'Catherine D. Kjerulf','Catherine@kjerulf.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(1000,2667,'Anette Kj├ªr','akj@dcscandinavia.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(1001,2668,'Pia Hyldebrandt Hansen','thomasbsander@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(1002,2669,'Lene Daugaard-Jensen','Lene_daugaard@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(1003,2670,'Pia Brandt Danborg','piadanborg@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(1004,2671,'Signe Arrhenius','signearrhenius@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(1005,2673,'Maiken Weishaupt','mw@xot.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(1006,2674,'Ulla Irene Quantrill Hvilsom','ulla@hvilsom.net','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(1007,2675,'Mia Daniella Pedersen','miadp@hotmail.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL,NULL),(1008,2676,'Berit Pold','bpol@viborg.dk','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL,NULL),(1009,2677,'Anja Thormann','anjathormann@hotmail.com','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL,NULL),(1010,2678,'Iben Vrans├©','ibenvranso@me.com','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL,NULL),(1011,2679,'Heidi Nygaard Svendsen','lsvendsen@nordfiber.dk','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL,NULL),(1012,2680,'L├ªrke Christina Priergaard Morell','timpriergaard@live.dk','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL,NULL),(1013,2681,'Betina Dress Kn├©fler','betinadress@hotmail.com','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL,NULL),(1014,2682,'Line Dyrborg','familiendyrborg@gmail.com','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL,NULL),(1015,2683,'Melinda Tr├ªrup-Hansen','Meauxnopoly2@aol.co.uk','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL,NULL),(1016,2684,'Jette Lunddal Larsen','jette@lunddal.dk','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL,NULL),(1017,2685,'Nina Marie Callesen','nmcallesen@gmail.com','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL,NULL),(1018,2686,'Laila Franciska Buxbom Petersen','laila_franciska@hotmail.com','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL,NULL),(1019,2687,'Sofia Bartholin','sofiabartholin@gmail.com','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL,NULL),(1020,2688,'Sabina Jeanett Flensmark','sabinaflensmark@gmail.com','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL,NULL),(1021,2689,'Julia Buus Nicholson','Julia.nicholson83@gmail.com','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL,NULL),(1022,2690,'Helene Nielsen','helenebirger@gmail.com','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL,NULL),(1023,2691,'Lise Sofie Bislev','lisesofiebislev@gmail.com','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL,NULL),(1024,2692,'Asta Teilum','ateilum@yahoo.co.uk','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL,NULL),(1025,2693,'Henriette Hilding','henriette.hilding@gmail.com','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL,NULL),(1026,2694,'Anja Lemming Wittus','anjawittus@gmail.com','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL,NULL),(1027,2695,'Asta Halm├©e','Claus.m.halmoe@privat.dk','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL,NULL),(1028,2696,'Anne Skovsby Toft','annetoft@image.dk','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL,NULL),(1029,2697,'Tine Vilandt Rasmussen','tinevilandt@gmail.com','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL,NULL),(1030,2698,'Rina Wachsberg','Rinwa@dongenergy.dk','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL,NULL),(1031,2699,'Henriette H├©j Gharib','henriettegharib@yahoo.com','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL,NULL),(1032,2700,'Ditte Kruse Dalker','dittedalker@webspeed.dk','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL,NULL),(1033,2701,'Anders Toxv├ªrd Nielsen','tox@xot.dk','2017-02-07 09:25:25','2017-04-20 22:14:07',NULL,'','31'),(1035,1374,'Mette Kirk Mailand','mkm@cabh.dk','2017-03-21 20:51:30','2017-03-21 20:51:30',NULL,NULL,NULL),(1036,1797,'Anne Kirstine Waage Beck','akwaagebeck@gmail.com','2017-03-21 20:51:33','2017-03-21 20:51:33',NULL,NULL,NULL),(1037,1945,'Karin Tverelv Hjerresen','karinhjerresen@me.com','2017-03-21 20:51:34','2017-03-21 20:51:34',NULL,NULL,NULL),(1038,2099,'Maria Bernbom Svejstrup','maria@reflekt.dk','2017-03-21 20:51:35','2017-03-21 20:51:35',NULL,NULL,NULL),(1039,2702,'Nadja Seetha Munk Tandrup','nadja.tandrup@gmail.com','2017-03-21 20:53:26','2017-03-21 20:53:26',NULL,NULL,NULL),(1040,2703,'Hanne Lunden Just','hannelunden@hotmail.dk','2017-03-21 20:53:26','2017-03-21 20:53:26',NULL,NULL,NULL),(1041,2704,'Solveig Grundtdal Gr├©nborg','solveiggroenborg@live.dk','2017-03-21 20:53:26','2017-03-21 20:53:26',NULL,NULL,NULL),(1042,2705,'Sisse Malene Wesselhoff','Ssp.wesselhoff@hotmail.com','2017-03-21 20:53:26','2017-03-21 20:53:26',NULL,NULL,NULL),(1043,2706,'Micha Meedom','michameedom@gmail.com','2017-03-21 20:53:26','2017-03-21 20:53:26',NULL,NULL,NULL),(1044,2707,'Anne Jacobsen','engen10@turbopost.dk','2017-03-21 20:53:26','2017-03-21 20:53:26',NULL,NULL,NULL),(1045,2708,'Lise Nottelmann','lnottelmann@hotmail.com','2017-03-21 20:53:26','2017-03-21 20:53:26',NULL,NULL,NULL),(1046,2709,'Hanne Bun Thorsen','hanbuntho@gmail.com','2017-03-21 20:53:26','2017-03-21 20:53:26',NULL,NULL,NULL),(1047,2710,'Line Lillevang N├©rreg├Ñrd Larsen','linenorregaard@hotmail.com','2017-03-21 20:53:26','2017-03-21 20:53:26',NULL,NULL,NULL),(1048,2711,'Kirsten Br├©de Manly','kirstenbj@yahoo.dk','2017-03-21 20:53:26','2017-03-21 20:53:26',NULL,NULL,NULL),(1049,2712,'Luise B├ªk Bomme','luisebomme@gmail.com','2017-03-21 20:53:26','2017-03-21 20:53:26',NULL,NULL,NULL),(1050,2713,'Tanja Gl├╝ckstadt Heien','tanja@henta.dk','2017-03-21 20:53:26','2017-03-21 20:53:26',NULL,NULL,NULL),(1051,2714,'Maj Daae Christensen','maj_sen@hotmail.com','2017-03-21 20:53:26','2017-03-21 20:53:26',NULL,NULL,NULL),(1052,2715,'Jenny F├ªrch','jenny.faerch@gmail.com','2017-03-21 20:53:26','2017-03-21 20:53:26',NULL,NULL,NULL),(1053,2716,'Katrine Mollerup Birch','lily@elefantpost.dk','2017-03-21 20:53:27','2017-03-21 20:53:27',NULL,NULL,NULL),(1054,2717,'Gertrud Sander Fischer','Trutte77@gmail.com','2017-03-21 20:53:27','2017-03-21 20:53:27',NULL,NULL,NULL),(1055,2718,'Rosita Roos','rositaroos73@gmail.com','2017-03-21 20:53:27','2017-03-21 20:53:27',NULL,NULL,NULL),(1056,2719,'Charlotte Mikkelsen','mikkelsenorama@gmail.com','2017-03-21 20:53:27','2017-03-21 20:53:27',NULL,NULL,NULL),(1057,2720,'Signe Rasmussen Ulnits','ulnits@gmail.com','2017-03-21 20:53:27','2017-03-21 20:53:27',NULL,NULL,NULL),(1058,2721,'Nana Jensen','nanahyo@gmail.com','2017-03-21 20:53:27','2017-03-21 20:53:27',NULL,NULL,NULL),(1059,2722,'Trine Brinks','trinebrinks0606@gmail.com','2017-03-21 20:53:27','2017-03-21 20:53:27',NULL,NULL,NULL),(1060,2723,'Mette Schou','mette.schou.dk@gmail.com','2017-03-21 20:53:27','2017-03-21 20:53:27',NULL,NULL,NULL),(1061,2724,'Karina C. Schlichtkrull','karina@schlichtkrull.org','2017-03-21 20:53:27','2017-03-21 20:53:27',NULL,NULL,NULL);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passwords`
--

DROP TABLE IF EXISTS `passwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passwords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_passwords_on_member_id` (`member_id`),
  CONSTRAINT `fk_rails_b5695beacf` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passwords`
--

LOCK TABLES `passwords` WRITE;
/*!40000 ALTER TABLE `passwords` DISABLE KEYS */;
INSERT INTO `passwords` VALUES (1,'hakke94',354,'2017-03-11 22:07:56','2017-03-11 22:07:56'),(2,'hakke94',354,'2017-03-12 08:55:29','2017-03-12 08:55:29'),(3,'hakke94',354,'2017-03-12 20:36:41','2017-03-12 20:36:41'),(4,'hakke94',354,'2017-03-12 20:39:07','2017-03-12 20:39:07'),(5,'hakke94',354,'2017-03-12 20:40:10','2017-03-12 20:40:10'),(6,'hakke94',354,'2017-03-12 21:52:59','2017-03-12 21:52:59'),(7,'grus28',288,'2017-03-15 17:54:19','2017-03-15 17:54:19'),(8,'krukke53',1033,'2017-03-17 06:25:02','2017-03-17 06:25:02'),(9,'skrue42',32,'2017-03-21 16:18:53','2017-03-21 16:18:53'),(10,'spand85',75,'2017-03-21 16:28:53','2017-03-21 16:28:53'),(11,'spade86',76,'2017-03-21 16:34:16','2017-03-21 16:34:16'),(12,'spand50',850,'2017-03-21 19:40:53','2017-03-21 19:40:53'),(13,'spade11',1,'2017-04-02 20:34:10','2017-04-02 20:34:10'),(14,'plov95',355,'2017-04-20 21:30:12','2017-04-20 21:30:12'),(15,'rive13',3,'2017-04-20 22:11:51','2017-04-20 22:11:51');
/*!40000 ALTER TABLE `passwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `ptype_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `aargang` date DEFAULT NULL,
  `koen` varchar(255) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `housing_type_id` int(11) DEFAULT NULL,
  `housing_number` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `host_member` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_people_on_member_id` (`member_id`),
  KEY `index_people_on_ptype_id` (`ptype_id`),
  KEY `index_people_on_invoice_id` (`invoice_id`),
  KEY `index_people_on_housing_type_id` (`housing_type_id`),
  CONSTRAINT `fk_rails_39d925b3e7` FOREIGN KEY (`ptype_id`) REFERENCES `ptypes` (`id`),
  CONSTRAINT `fk_rails_a015c28b8a` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`),
  CONSTRAINT `fk_rails_d9a23a7745` FOREIGN KEY (`housing_type_id`) REFERENCES `housing_types` (`id`),
  CONSTRAINT `fk_rails_e43c40456f` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1111 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (1097,'Klaus',354,1,'2017-03-13 06:13:50','2017-03-13 06:13:50',NULL,'M',25,NULL,NULL,'',NULL),(1098,'Victoria',354,3,'2017-03-13 06:14:45','2017-03-13 06:14:45','2004-06-05','K',27,NULL,NULL,'',NULL),(1099,'Colette',354,4,'2017-03-13 06:19:51','2017-03-13 07:30:23','2015-06-18','K',28,NULL,NULL,'',NULL),(1101,'Hans',354,2,'2017-03-18 08:29:02','2017-03-18 08:29:02',NULL,'M',29,NULL,NULL,'',NULL),(1102,'Brian',288,1,'2017-03-19 06:47:52','2017-03-19 06:47:52',NULL,'M',35,NULL,NULL,NULL,NULL),(1103,'Heine',1033,2,'2017-03-19 20:32:17','2017-03-19 20:45:26',NULL,'M',33,NULL,NULL,'',1357),(1104,'Heidi',1,1,'2017-04-05 20:15:13','2017-04-05 20:15:13',NULL,'K',39,NULL,NULL,'',NULL),(1105,'Kristjan',1,1,'2017-04-05 20:15:44','2017-04-05 20:15:44',NULL,'M',39,NULL,NULL,'',NULL),(1106,'Kjartan',1,2,'2017-04-05 20:16:12','2017-04-05 20:16:12',NULL,'M',39,NULL,NULL,'',NULL),(1107,'Maria',1,3,'2017-04-05 20:25:08','2017-04-05 20:25:08','2001-08-15','K',39,NULL,NULL,'',NULL),(1108,'Hest',1,1,'2017-04-14 20:21:42','2017-04-14 20:21:42',NULL,NULL,39,NULL,NULL,NULL,NULL),(1109,'Hest2',1,1,'2017-04-14 20:22:45','2017-04-14 20:22:45',NULL,NULL,39,NULL,NULL,NULL,NULL),(1110,'Hest3',1,1,'2017-04-14 20:23:37','2017-04-14 20:23:37',NULL,NULL,39,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `people_index`
--

DROP TABLE IF EXISTS `people_index`;
/*!50001 DROP VIEW IF EXISTS `people_index`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `people_index` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `member_id`,
 1 AS `ptype_id`,
 1 AS `created_at`,
 1 AS `updated_at`,
 1 AS `aargang`,
 1 AS `koen`,
 1 AS `invoice_id`,
 1 AS `housing_type_id`,
 1 AS `housing_number`,
 1 AS `phone`,
 1 AS `host_member`,
 1 AS `member_number`,
 1 AS `member_housing`,
 1 AS `person_housing`,
 1 AS `ptype_name`,
 1 AS `invoice_paid`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `places` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `limited` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` VALUES (1,'Basketballbanen','','','2017-03-23 20:50:59','2017-03-23 20:50:59'),(2,'F├ªllesomr├Ñdet','','','2017-03-23 20:51:15','2017-03-23 20:51:15'),(3,'Fodboldbanen','','','2017-03-23 20:51:32','2017-03-23 20:51:32'),(4,'Konferencen','','','2017-03-23 20:51:46','2017-03-23 20:51:46'),(5,'Kontorvognen','','','2017-03-23 20:51:59','2017-03-23 20:51:59'),(6,'Laden','','','2017-03-23 20:52:10','2017-03-23 20:52:10'),(7,'Stranden','','','2017-03-23 20:52:21','2017-03-23 20:52:21'),(8,'Sv├©mmehallen','','','2017-03-23 20:52:40','2017-03-23 20:52:40'),(9,'Teenage-teltet','','','2017-03-23 20:52:59','2017-03-23 20:52:59'),(10,'Telt 1','','','2017-03-23 20:53:13','2017-03-23 20:53:13'),(11,'Telt 2','','','2017-03-23 20:53:21','2017-03-23 20:53:21'),(12,'Telt 3','','','2017-03-23 20:53:30','2017-03-23 20:53:30'),(13,'Telt 4','','','2017-03-23 20:53:40','2017-03-23 20:53:40'),(14,'Telt 5','','','2017-03-23 20:53:50','2017-03-23 20:53:50'),(15,'Telt 6','','','2017-03-23 20:54:06','2017-03-23 20:54:06'),(16,'TV-Hytten','','','2017-03-23 20:54:20','2017-03-23 20:54:20');
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ptypes`
--

DROP TABLE IF EXISTS `ptypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ptypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `price` int(11) DEFAULT NULL,
  `datereq` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ptypes`
--

LOCK TABLES `ptypes` WRITE;
/*!40000 ALTER TABLE `ptypes` DISABLE KEYS */;
INSERT INTO `ptypes` VALUES (1,'Voksen 21-','2017-02-07 09:34:29','2017-02-07 09:34:29',250,0),(2,'Myndig 18-20','2017-02-07 09:34:57','2017-02-07 09:34:57',250,0),(3,'Barn 4-17','2017-02-07 09:35:34','2017-02-07 09:35:34',125,1),(4,'Barn 0-3','2017-02-07 09:35:48','2017-02-07 09:35:48',0,1);
/*!40000 ALTER TABLE `ptypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','2017-03-15 08:02:36','2017-03-17 06:05:13'),(2,'tester','2017-04-05 17:58:58','2017-04-05 17:58:58');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20170128095607'),('20170128100502'),('20170128100733'),('20170128103705'),('20170128103927'),('20170128104253'),('20170128104348'),('20170128113806'),('20170128113854'),('20170128142304'),('20170128142603'),('20170128164203'),('20170128164348'),('20170128164555'),('20170128165636'),('20170128165705'),('20170128200947'),('20170204094407'),('20170204141518'),('20170207135917'),('20170225095709'),('20170225101222'),('20170227130738'),('20170227131030'),('20170303204241'),('20170305180151'),('20170305210156'),('20170305210212'),('20170305210302'),('20170305210315'),('20170306060915'),('20170307173318'),('20170307175633'),('20170315064051'),('20170315071955'),('20170328103611'),('20170328103630'),('20170416135108'),('20170422221555'),('20170422221616'),('20170422221649');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `activity_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `number` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tasks_on_activity_id` (`activity_id`),
  CONSTRAINT `fk_rails_a6e8c4c2d5` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tickets_on_person_id` (`person_id`),
  KEY `index_tickets_on_activity_id` (`activity_id`),
  KEY `index_tickets_on_invoice_id` (`invoice_id`),
  CONSTRAINT `fk_rails_7253d782cc` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`),
  CONSTRAINT `fk_rails_8abe208f86` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`),
  CONSTRAINT `fk_rails_a25f92925e` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=496 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (3,1102,157,'2017-03-28 20:07:00','2017-03-28 20:07:00',38),(7,1097,157,'2017-03-31 21:38:49','2017-03-31 21:38:49',29),(10,1098,157,'2017-03-31 21:39:44','2017-03-31 21:39:44',29),(11,1101,157,'2017-04-01 08:10:55','2017-04-01 08:10:55',29),(29,1097,98,'2017-04-03 21:07:28','2017-04-03 21:07:28',29),(30,1098,99,'2017-04-03 21:07:32','2017-04-03 21:07:32',29),(43,1099,101,'2017-04-04 05:45:18','2017-04-04 05:45:18',29),(44,1099,157,'2017-04-04 05:47:56','2017-04-04 05:47:56',29),(45,1099,145,'2017-04-04 05:48:09','2017-04-04 05:48:09',29),(46,1099,146,'2017-04-04 05:48:17','2017-04-04 05:48:17',29),(52,1101,149,'2017-04-04 11:51:31','2017-04-04 11:51:31',29),(53,1101,141,'2017-04-04 11:51:40','2017-04-04 11:51:40',29),(55,1101,101,'2017-04-04 13:42:46','2017-04-04 13:42:46',29),(60,1097,81,'2017-04-04 14:24:58','2017-04-04 14:24:58',29),(65,1099,103,'2017-04-04 14:29:29','2017-04-04 14:29:29',29),(69,1099,138,'2017-04-04 14:34:17','2017-04-04 14:34:17',29),(70,1098,155,'2017-04-04 14:44:13','2017-04-04 14:44:13',29),(71,1097,137,'2017-04-04 14:53:28','2017-04-04 14:53:28',29),(72,1098,136,'2017-04-04 14:53:48','2017-04-04 14:53:48',29),(73,1097,120,'2017-04-04 14:54:13','2017-04-04 14:54:13',29),(74,1098,118,'2017-04-04 14:54:21','2017-04-04 14:54:21',29),(76,1097,144,'2017-04-04 15:39:33','2017-04-04 15:39:33',29),(77,1099,140,'2017-04-04 15:39:46','2017-04-04 15:39:46',29),(78,1098,133,'2017-04-04 15:39:50','2017-04-04 15:39:50',29),(97,1098,74,'2017-04-04 17:06:05','2017-04-04 17:06:05',29),(110,1104,23,'2017-04-05 20:37:19','2017-04-05 20:37:19',39),(151,1109,31,'2017-04-16 13:56:34','2017-04-16 13:56:34',40),(185,1099,102,'2017-04-17 09:20:33','2017-04-17 09:20:33',29),(260,1101,113,'2017-04-18 23:48:35','2017-04-18 23:48:35',29),(261,1101,152,'2017-04-18 23:48:40','2017-04-18 23:48:40',29),(264,1099,147,'2017-04-18 23:49:04','2017-04-18 23:49:04',29),(303,1101,120,'2017-04-19 20:22:26','2017-04-19 20:22:26',29),(304,1099,26,'2017-04-19 20:22:30','2017-04-19 20:22:30',29),(322,1110,103,'2017-04-20 21:29:30','2017-04-20 21:29:30',40),(323,1107,103,'2017-04-20 21:29:45','2017-04-20 21:29:45',40),(327,1109,20,'2017-04-20 22:03:39','2017-04-20 22:03:39',40),(328,1108,156,'2017-04-20 22:03:42','2017-04-20 22:03:42',40),(329,1106,84,'2017-04-20 22:03:46','2017-04-20 22:03:46',40),(330,1108,28,'2017-04-20 22:03:53','2017-04-20 22:03:53',40),(331,1109,82,'2017-04-20 22:03:58','2017-04-20 22:03:58',40),(332,1104,16,'2017-04-20 22:04:09','2017-04-20 22:04:09',40),(333,1108,150,'2017-04-20 22:04:21','2017-04-20 22:04:21',40),(334,1110,56,'2017-04-20 22:04:24','2017-04-20 22:04:24',40),(335,1110,31,'2017-04-20 22:04:39','2017-04-20 22:04:39',40),(338,1101,112,'2017-04-21 16:08:27','2017-04-21 16:08:27',29),(340,1101,66,'2017-04-21 16:11:46','2017-04-21 16:11:46',29),(342,1099,25,'2017-04-28 20:54:49','2017-04-28 20:54:49',29),(343,1099,40,'2017-04-28 20:54:54','2017-04-28 20:54:54',29),(347,1099,69,'2017-04-28 20:55:40','2017-04-28 20:55:40',29),(353,1099,46,'2017-04-28 21:30:09','2017-04-28 21:30:09',29),(366,1101,151,'2017-04-29 19:13:29','2017-04-29 19:13:29',29),(425,1098,30,'2017-05-02 16:30:09','2017-05-02 16:30:09',29),(427,1099,30,'2017-05-02 16:36:08','2017-05-02 16:36:08',29),(428,1099,52,'2017-05-02 16:38:07','2017-05-02 16:38:07',29),(485,1098,1,'2017-05-02 20:39:56','2017-05-02 20:39:56',29),(486,1097,58,'2017-05-02 20:39:57','2017-05-02 20:39:57',29),(487,1099,23,'2017-05-02 20:39:59','2017-05-02 20:39:59',29),(488,1098,23,'2017-05-02 20:40:02','2017-05-02 20:40:02',29);
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `words`
--

DROP TABLE IF EXISTS `words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `words` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `words`
--

LOCK TABLES `words` WRITE;
/*!40000 ALTER TABLE `words` DISABLE KEYS */;
INSERT INTO `words` VALUES (1,'spand','2017-02-25 10:15:06','2017-02-25 10:15:06'),(2,'spade','2017-02-25 10:15:48','2017-02-25 10:15:48'),(3,'skovl','2017-02-25 10:15:55','2017-02-25 10:15:55'),(4,'rive','2017-02-25 10:16:56','2017-02-25 10:16:56'),(5,'hakke','2017-02-25 10:17:27','2017-02-25 10:17:27'),(6,'plov','2017-02-25 10:21:41','2017-02-25 10:21:41'),(7,'hammer','2017-02-25 10:25:10','2017-02-25 10:25:10'),(8,'skrue','2017-02-25 10:27:04','2017-02-25 10:27:04'),(9,'krukke','2017-02-25 10:28:16','2017-02-25 10:28:16'),(10,'glas','2017-02-25 10:28:22','2017-02-25 10:28:22'),(11,'bord','2017-02-25 10:29:22','2017-02-25 10:29:22'),(12,'stol','2017-02-25 10:29:27','2017-02-25 10:29:27'),(13,'flise','2017-02-25 10:30:13','2017-02-25 10:30:13'),(14,'grus','2017-02-25 10:30:34','2017-02-25 10:30:34'),(15,'hegn','2017-02-25 10:30:45','2017-02-25 10:30:45'),(16,'vindue','2017-02-25 10:34:47','2017-02-25 10:34:47'),(17,'stige','2017-02-25 10:35:04','2017-02-25 10:35:04'),(18,'telt','2017-02-25 10:39:47','2017-02-25 10:39:47'),(19,'hytte','2017-02-25 10:40:26','2017-02-25 10:40:26'),(20,'kost','2017-02-25 10:43:58','2017-02-25 10:43:58'),(21,'port','2017-02-25 10:47:23','2017-02-25 10:47:23'),(22,'kande','2017-02-25 10:51:00','2017-02-25 10:51:00'),(23,'sofa','2017-02-25 10:55:34','2017-02-25 10:55:34'),(24,'gryde','2017-02-25 10:56:26','2017-02-25 10:56:26'),(25,'pande','2017-02-25 10:56:36','2017-02-25 10:56:36');
/*!40000 ALTER TABLE `words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `active_invoices` ***
--

/*!50001 DROP VIEW IF EXISTS `active_invoices`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `active_invoices` AS select `invoices`.`id` AS `id`,`invoices`.`member_id` AS `member_id`,`invoices`.`created_at` AS `created_at`,`invoices`.`updated_at` AS `updated_at`,`invoices`.`paid` AS `paid`,`invoices`.`payment_link` AS `payment_link` from `invoices` where ((`invoices`.`paid` = TRUE) or (`invoices`.`updated_at` > (now() - interval 10 minute))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `active_tickets` ***
--

/*!50001 DROP VIEW IF EXISTS `active_tickets`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `active_tickets` AS select `tickets`.`id` AS `id`,`tickets`.`person_id` AS `person_id`,`tickets`.`activity_id` AS `activity_id`,`tickets`.`created_at` AS `created_at`,`tickets`.`updated_at` AS `updated_at`,`tickets`.`invoice_id` AS `invoice_id` from (`tickets` join `invoices` on((`tickets`.`invoice_id` = `invoices`.`id`))) where ((`invoices`.`paid` = TRUE) or (`invoices`.`updated_at` > (now() - interval 20 minute))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `acts_blocked_by` ***
--

/*!50001 DROP VIEW IF EXISTS `acts_blocked_by`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `acts_blocked_by` AS select `activities`.`id` AS `id`,`tickets`.`person_id` AS `person_id`,group_concat(`conf`.`name` separator ';') AS `blocked_by` from (((`activities` join `conf` on(((`activities`.`starttime` < `conf`.`endtime`) and (`conf`.`starttime` < `activities`.`endtime`) and (`activities`.`id` <> `conf`.`id`)))) join `tickets` on((`tickets`.`activity_id` = `conf`.`id`))) join `invoices` on((`tickets`.`invoice_id` = `invoices`.`id`))) group by `activities`.`id`,`tickets`.`person_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `acts_confs` ***
--

/*!50001 DROP VIEW IF EXISTS `acts_confs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `acts_confs` AS select `activities`.`id` AS `id`,`activities`.`name` AS `name`,`activities`.`starttime` AS `starttime`,`activities`.`endtime` AS `endtime`,`activities`.`person_id` AS `person_id`,`activities`.`created_at` AS `created_at`,`activities`.`updated_at` AS `updated_at`,`activities`.`number` AS `number`,`activities`.`place_id` AS `place_id`,`activities`.`deltbet` AS `deltbet`,`activities`.`min_age` AS `min_age`,`activities`.`max_age` AS `max_age`,`activities`.`first_date` AS `first_date`,`activities`.`last_date` AS `last_date`,`activities`.`ptypes_ok` AS `ptypes_ok`,group_concat(`conf`.`id` separator ',') AS `conflict_ids`,group_concat(`conf`.`name` separator ',') AS `conflict_names` from (`activities` left join `conf` on(((`activities`.`starttime` < `conf`.`endtime`) and (`conf`.`starttime` < `activities`.`endtime`) and (`activities`.`id` <> `conf`.`id`)))) group by `activities`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `acts_free`
--

/*!50001 DROP VIEW IF EXISTS `acts_free`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `acts_free` AS select `sl17_development`.`activities`.`id` AS `id`,(`sl17_development`.`activities`.`number` - count(`sl17_development`.`tickets`.`id`)) AS `free` from ((`sl17_development`.`activities` left join `sl17_development`.`tickets` on((`sl17_development`.`tickets`.`activity_id` = `sl17_development`.`activities`.`id`))) left join (select `sl17_development`.`invoices`.`id` AS `id`,`sl17_development`.`invoices`.`member_id` AS `member_id`,`sl17_development`.`invoices`.`created_at` AS `created_at`,`sl17_development`.`invoices`.`updated_at` AS `updated_at`,`sl17_development`.`invoices`.`paid` AS `paid`,`sl17_development`.`invoices`.`payment_link` AS `payment_link` from `sl17_development`.`invoices` where ((`sl17_development`.`invoices`.`paid` = TRUE) or (`sl17_development`.`invoices`.`updated_at` < (now() - interval 10 minute)))) `active_invoices` on((`sl17_development`.`tickets`.`invoice_id` = `active_invoices`.`id`))) group by `sl17_development`.`activities`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `acts_optimized`
--

/*!50001 DROP VIEW IF EXISTS `acts_optimized`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `acts_optimized` AS select `acts_confs`.`id` AS `id`,`acts_confs`.`name` AS `name`,`acts_confs`.`starttime` AS `starttime`,`acts_confs`.`endtime` AS `endtime`,`acts_confs`.`person_id` AS `person_id`,`acts_confs`.`created_at` AS `created_at`,`acts_confs`.`updated_at` AS `updated_at`,`acts_confs`.`number` AS `number`,`acts_confs`.`place_id` AS `place_id`,`acts_confs`.`deltbet` AS `deltbet`,`acts_confs`.`min_age` AS `min_age`,`acts_confs`.`max_age` AS `max_age`,`acts_confs`.`first_date` AS `first_date`,`acts_confs`.`last_date` AS `last_date`,`acts_confs`.`ptypes_ok` AS `ptypes_ok`,`acts_confs`.`conflict_ids` AS `conflict_ids`,`acts_confs`.`conflict_names` AS `conflict_names`,`acts_free`.`free` AS `free` from (`sl17_development`.`acts_confs` join `sl17_development`.`acts_free` on((`acts_confs`.`id` = `acts_free`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `acts_reserved`
--

/*!50001 DROP VIEW IF EXISTS `acts_reserved`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `acts_reserved` AS select `sl17_development`.`activities`.`id` AS `id`,count(`sl17_development`.`tickets`.`id`) AS `reserved` from ((`sl17_development`.`activities` left join `sl17_development`.`tickets` on((`sl17_development`.`tickets`.`activity_id` = `sl17_development`.`activities`.`id`))) left join (select `sl17_development`.`invoices`.`id` AS `id`,`sl17_development`.`invoices`.`member_id` AS `member_id`,`sl17_development`.`invoices`.`created_at` AS `created_at`,`sl17_development`.`invoices`.`updated_at` AS `updated_at`,`sl17_development`.`invoices`.`paid` AS `paid`,`sl17_development`.`invoices`.`payment_link` AS `payment_link` from `sl17_development`.`invoices` where ((`sl17_development`.`invoices`.`paid` = TRUE) or (`sl17_development`.`invoices`.`updated_at` < (now() - interval 10 minute)))) `active_invoices` on((`sl17_development`.`tickets`.`invoice_id` = `active_invoices`.`id`))) group by `sl17_development`.`activities`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `acts_sold_out` ***
--

/*!50001 DROP VIEW IF EXISTS `acts_sold_out`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `acts_sold_out` AS select `activities`.`id` AS `id`,((`activities`.`number` is not null) and (`activities`.`number` <= count(`active_tickets`.`person_id`))) AS `sold_out` from (`activities` left join `active_tickets` on((`activities`.`id` = `active_tickets`.`activity_id`))) group by `activities`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `conf` ***
--

/*!50001 DROP VIEW IF EXISTS `conf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `conf` AS select `activities`.`id` AS `id`,`activities`.`name` AS `name`,`activities`.`starttime` AS `starttime`,`activities`.`endtime` AS `endtime` from `activities` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `conflicts`
--

/*!50001 DROP VIEW IF EXISTS `conflicts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `conflicts` AS select group_concat(`activities`.`id` separator ',') AS `group_concat(id)` from `activities` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `member_activities`
--

/*!50001 DROP VIEW IF EXISTS `member_activities`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `member_activities` AS select `activities`.`id` AS `id`,`activities`.`name` AS `name`,`activities`.`starttime` AS `starttime`,`activities`.`endtime` AS `endtime`,`activities`.`person_id` AS `person_id`,`activities`.`created_at` AS `created_at`,`activities`.`updated_at` AS `updated_at`,`activities`.`number` AS `number`,`activities`.`place_id` AS `place_id`,`activities`.`deltbet` AS `deltbet`,`activities`.`min_age` AS `min_age`,`activities`.`max_age` AS `max_age`,`activities`.`first_date` AS `first_date`,`activities`.`last_date` AS `last_date`,`activities`.`ptypes_ok` AS `ptypes_ok`,`people`.`member_id` AS `member_id`,`acts_sold_out`.`sold_out` AS `s_out`,`acts_confs`.`conflict_ids` AS `conflict_ids`,group_concat(`people`.`id` separator ',') AS `p_ids`,group_concat(`people`.`name` separator ',') AS `p_names`,group_concat(ifnull(`acts_blocked_by`.`blocked_by`,'-') separator ',') AS `blckd_by`,group_concat(ifnull(`tickets`.`id`,'-') separator ',') AS `t_ids`,group_concat(ifnull(`invoices`.`paid`,'0') separator ',') AS `i_paid`,group_concat((case when (convert(concat('0,',`activities`.`ptypes_ok`,',0') using utf8mb4) like concat('%,',cast(`people`.`ptype_id` as char(10) charset utf8mb4),',%')) then TRUE when ((`people`.`ptype_id` > 2) and (`activities`.`first_date` < `people`.`aargang`) and (`activities`.`last_date` > `people`.`aargang`)) then TRUE when (isnull(`activities`.`min_age`) and isnull(`activities`.`max_age`)) then TRUE else FALSE end) separator ',') AS `age_ok` from ((((((`activities` join `people`) left join `acts_sold_out` on((`activities`.`id` = `acts_sold_out`.`id`))) left join `acts_confs` on((`activities`.`id` = `acts_confs`.`id`))) left join `acts_blocked_by` on(((`people`.`id` = `acts_blocked_by`.`person_id`) and (`activities`.`id` = `acts_blocked_by`.`id`)))) left join `tickets` on(((`activities`.`id` = `tickets`.`activity_id`) and (`people`.`id` = `tickets`.`person_id`)))) left join `invoices` on((`tickets`.`invoice_id` = `invoices`.`id`))) group by `activities`.`id`,`people`.`member_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `member_people`
--

/*!50001 DROP VIEW IF EXISTS `member_people`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `member_people` AS select `members`.`id` AS `member_id`,group_concat(`people`.`id` separator ',') AS `person_ids`,group_concat(`people`.`name` separator ',') AS `person_names` from (`members` left join `people` on((`members`.`id` = `people`.`member_id`))) group by `members`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `member_people_paid`
--

/*!50001 DROP VIEW IF EXISTS `member_people_paid`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `member_people_paid` AS select `members`.`id` AS `id`,`members`.`number` AS `number`,`members`.`name` AS `name`,`members`.`email` AS `email`,`members`.`created_at` AS `created_at`,`members`.`updated_at` AS `updated_at`,`members`.`housing_type_id` AS `housing_type_id`,`members`.`housing_number` AS `housing_number`,`members`.`sold_out` AS `sold_out`,count(`people`.`id`) AS `m_people` from ((`members` left join `people` on((`members`.`id` = `people`.`member_id`))) left join `invoices` on(((`people`.`invoice_id` = `invoices`.`id`) and (`invoices`.`paid` = TRUE)))) group by `members`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `people_index`
--

/*!50001 DROP VIEW IF EXISTS `people_index`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `people_index` AS select `people`.`id` AS `id`,`people`.`name` AS `name`,`people`.`member_id` AS `member_id`,`people`.`ptype_id` AS `ptype_id`,`people`.`created_at` AS `created_at`,`people`.`updated_at` AS `updated_at`,`people`.`aargang` AS `aargang`,`people`.`koen` AS `koen`,`people`.`invoice_id` AS `invoice_id`,`people`.`housing_type_id` AS `housing_type_id`,`people`.`housing_number` AS `housing_number`,`people`.`phone` AS `phone`,`people`.`host_member` AS `host_member`,`members`.`number` AS `member_number`,concat(`ht2`.`name`,' ',`members`.`housing_number`) AS `member_housing`,concat(`housing_types`.`name`,' ',`people`.`housing_number`) AS `person_housing`,`ptypes`.`name` AS `ptype_name`,`invoices`.`paid` AS `invoice_paid` from (((((`people` join `members` on((`people`.`member_id` = `members`.`id`))) join `ptypes` on((`people`.`ptype_id` = `ptypes`.`id`))) join `invoices` on((`people`.`invoice_id` = `invoices`.`id`))) left join `housing_types` on((`people`.`housing_type_id` = `housing_types`.`id`))) left join `housing_types` `ht2` on((`members`.`housing_type_id` = `housing_types`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-03  7:13:37
