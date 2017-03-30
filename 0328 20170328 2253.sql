-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.17


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema sl17_development
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ sl17_development;
USE sl17_development;

--
-- Table structure for table `sl17_development`.`activities`
--

DROP TABLE IF EXISTS `activities`;
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
  PRIMARY KEY (`id`),
  KEY `index_activities_on_person_id` (`person_id`),
  KEY `index_activities_on_place_id` (`place_id`),
  CONSTRAINT `fk_rails_83e177be83` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`),
  CONSTRAINT `fk_rails_ff1c4a3b0d` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sl17_development`.`activities`
--

/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` (`id`,`name`,`starttime`,`endtime`,`person_id`,`created_at`,`updated_at`,`number`,`place_id`,`deltbet`,`min_age`,`max_age`) VALUES
 (1,'Cafe telt','2017-07-23 17:00:00','2017-07-23 19:00:00',1097,'2017-03-23 21:25:43','2017-03-23 21:25:43',NULL,14,NULL,NULL,NULL),
 (2,'Spilletelt','2017-07-23 10:30:00','2017-07-23 12:30:00',1097,'2017-03-23 21:25:43','2017-03-23 21:25:43',NULL,14,NULL,NULL,NULL),
 (3,'Fordele møbler i teltene','2017-07-23 09:30:00','2017-07-23 11:30:00',1097,'2017-03-23 21:25:43','2017-03-23 21:25:43',NULL,2,NULL,NULL,NULL),
 (4,'Nedpakning','2017-07-30 09:00:00','2017-07-30 11:00:00',1097,'2017-03-23 21:25:43','2017-03-23 21:25:43',NULL,2,NULL,NULL,NULL),
 (5,'Afskedsfest 16+','2017-07-29 20:00:00','2017-07-29 22:00:00',1097,'2017-03-23 21:25:43','2017-03-23 21:25:43',NULL,10,125,NULL,NULL),
 (6,'Afskedsfest 16+','2017-07-29 20:00:00','2017-07-29 22:00:00',1097,'2017-03-23 21:25:43','2017-03-23 21:25:43',NULL,11,125,NULL,NULL),
 (7,'Afskedsfest 16+','2017-07-29 20:00:00','2017-07-29 22:00:00',1097,'2017-03-23 21:25:43','2017-03-23 21:25:43',NULL,12,125,NULL,NULL),
 (8,'Afskedsfest 16+','2017-07-29 20:00:00','2017-07-29 22:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,13,125,NULL,NULL);
INSERT INTO `activities` (`id`,`name`,`starttime`,`endtime`,`person_id`,`created_at`,`updated_at`,`number`,`place_id`,`deltbet`,`min_age`,`max_age`) VALUES
 (9,'Afskedsfest 16+','2017-07-29 20:00:00','2017-07-29 22:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,15,125,NULL,NULL),
 (10,'Afskedsfest for børn i alderen 2-12 år','2017-07-29 17:00:00','2017-07-29 19:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,10,50,NULL,NULL),
 (11,'Afskedsfest yngre teens','2017-07-29 20:00:00','2017-07-29 22:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,9,25,NULL,NULL),
 (12,'Afskedstale','2017-07-29 00:00:00','2017-07-29 02:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,2,NULL,NULL,NULL),
 (13,'Aftentur i havkajak','2017-07-26 20:00:00','2017-07-26 22:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,2,150,NULL,NULL),
 (14,'Animeaften (Ældre Teenagere)','2017-07-27 19:00:00','2017-07-27 21:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,2,NULL,NULL,NULL),
 (15,'Basketball for let øvede/øvede','2017-07-25 11:00:00','2017-07-25 13:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,1,NULL,NULL,NULL);
INSERT INTO `activities` (`id`,`name`,`starttime`,`endtime`,`person_id`,`created_at`,`updated_at`,`number`,`place_id`,`deltbet`,`min_age`,`max_age`) VALUES
 (16,'Beatles-quiz','2017-07-25 14:00:00','2017-07-25 16:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,11,NULL,NULL,NULL),
 (17,'Bordrollespil','2017-07-29 11:00:00','2017-07-29 13:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,9,NULL,NULL,NULL),
 (18,'Byg et sandslot - konkurrence på stranden - for hele familien','2017-07-26 14:00:00','2017-07-26 16:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,7,NULL,NULL,NULL),
 (19,'Byt lego minifigurer','2017-07-24 13:00:00','2017-07-24 15:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,10,NULL,NULL,NULL),
 (20,'Børneloppemarked','2017-07-24 09:00:00','2017-07-24 11:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,10,NULL,NULL,NULL),
 (21,'Børneloppemarked','2017-07-24 09:00:00','2017-07-24 11:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,11,NULL,NULL,NULL),
 (22,'Check-In','2017-07-23 12:00:00','2017-07-23 14:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,10,NULL,NULL,NULL);
INSERT INTO `activities` (`id`,`name`,`starttime`,`endtime`,`person_id`,`created_at`,`updated_at`,`number`,`place_id`,`deltbet`,`min_age`,`max_age`) VALUES
 (23,'Check-In for førstegangs-deltagere','2017-07-23 12:00:00','2017-07-23 14:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,11,NULL,NULL,NULL),
 (24,'Chokolade-smagning','2017-07-25 20:00:00','2017-07-25 22:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,11,80,NULL,NULL),
 (25,'Cola blindsmagning nr. 1','2017-07-25 16:00:00','2017-07-25 18:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,11,10,NULL,NULL),
 (26,'Cola blindsmagning nr. 2','2017-07-25 16:30:00','2017-07-25 18:30:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,11,10,NULL,NULL),
 (27,'Cola blindsmagning nr. 3','2017-07-25 17:00:00','2017-07-25 19:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,11,10,NULL,NULL),
 (28,'Dagens hovedbrud','2017-07-25 09:00:00','2017-07-25 11:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,11,NULL,NULL,NULL),
 (29,'Drenge-komsammen årg 2006','2017-07-25 10:30:00','2017-07-25 12:30:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,12,NULL,NULL,NULL);
INSERT INTO `activities` (`id`,`name`,`starttime`,`endtime`,`person_id`,`created_at`,`updated_at`,`number`,`place_id`,`deltbet`,`min_age`,`max_age`) VALUES
 (30,'Elektronik Workshop 1','2017-07-25 14:00:00','2017-07-25 16:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,12,160,NULL,NULL),
 (31,'Elektronik Workshop 2','2017-07-27 14:00:00','2017-07-27 16:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,12,160,NULL,NULL),
 (32,'Erfaringsudveksling af Google-kalender','2017-07-29 12:30:00','2017-07-29 14:30:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,12,NULL,NULL,NULL),
 (33,'Film for teens','2017-07-26 20:00:00','2017-07-26 22:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,9,NULL,NULL,NULL),
 (34,'Flette hår - hygge','2017-07-25 10:00:00','2017-07-25 12:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,16,NULL,NULL,NULL),
 (35,'fodbold for alle','2017-07-23 16:00:00','2017-07-23 18:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,3,NULL,NULL,NULL),
 (36,'Fodbold fra 7 år','2017-07-25 14:00:00','2017-07-25 16:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,3,NULL,NULL,NULL);
INSERT INTO `activities` (`id`,`name`,`starttime`,`endtime`,`person_id`,`created_at`,`updated_at`,`number`,`place_id`,`deltbet`,`min_age`,`max_age`) VALUES
 (37,'Foredrag om at være Clairvoyant medie','2017-07-25 10:00:00','2017-07-25 12:00:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,15,NULL,NULL,NULL),
 (38,'Foredrag om Copenhagen Suborbitals - bemandet amatørrumfart','2017-07-24 10:30:00','2017-07-24 12:30:00',1097,'2017-03-23 21:25:44','2017-03-23 21:25:44',NULL,4,NULL,NULL,NULL),
 (39,'Foredrag om Mindfulness - Bevidst Nærvær','2017-07-26 15:30:00','2017-07-26 17:30:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,12,NULL,NULL,NULL),
 (40,'Foredrag om Poker (Texas Hold\'em)','2017-07-25 16:00:00','2017-07-25 18:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,4,NULL,NULL,NULL),
 (41,'Foredrag om Regression og reinkarnation','2017-07-28 10:00:00','2017-07-28 12:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,15,NULL,NULL,NULL),
 (42,'Foredrag: Børn og unge og sikkerhed på nettet.','2017-07-26 11:00:00','2017-07-26 13:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,10,NULL,NULL,NULL),
 (43,'Foredrag: Enneagrammet - få større indsigt i dig selv og dine relationer','2017-07-28 10:00:00','2017-07-28 12:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,12,NULL,NULL,NULL);
INSERT INTO `activities` (`id`,`name`,`starttime`,`endtime`,`person_id`,`created_at`,`updated_at`,`number`,`place_id`,`deltbet`,`min_age`,`max_age`) VALUES
 (44,'Foredrag: Gør-det-selv Drug Discovery','2017-07-27 16:30:00','2017-07-27 18:30:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,4,NULL,NULL,NULL),
 (45,'Foredrag: Hvordan virker infrastruktur og netværk i erhvervslivet','2017-07-27 10:00:00','2017-07-27 12:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,10,NULL,NULL,NULL),
 (46,'Foredrag: Hvorfor er der ingen vulkaner og kun små jordskælv i Danmark?','2017-07-29 13:00:00','2017-07-29 15:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,4,NULL,NULL,NULL),
 (47,'FOREDRAG: Impostor-fænomenet - er du også bange for at blive afsløret','2017-07-28 15:30:00','2017-07-28 17:30:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,4,NULL,NULL,NULL),
 (48,'Foredrag: Udnyt dit potentiale','2017-07-26 11:00:00','2017-07-26 13:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,12,NULL,NULL,NULL),
 (49,'Fortæl en historie','2017-07-26 15:30:00','2017-07-26 17:30:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,10,NULL,NULL,NULL);
INSERT INTO `activities` (`id`,`name`,`starttime`,`endtime`,`person_id`,`created_at`,`updated_at`,`number`,`place_id`,`deltbet`,`min_age`,`max_age`) VALUES
 (50,'Frisbee og boldbat','2017-07-24 10:30:00','2017-07-24 12:30:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,15,50,NULL,NULL),
 (51,'Fælles morgenmad','2017-07-24 09:00:00','2017-07-24 11:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,13,NULL,NULL,NULL),
 (52,'Fælleskaffe','2017-07-25 14:00:00','2017-07-25 16:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,14,NULL,NULL,NULL),
 (53,'Fællessang','2017-07-25 20:00:00','2017-07-25 22:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,10,NULL,NULL,NULL),
 (54,'Fællesspisning','2017-07-24 18:00:00','2017-07-24 20:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,2,NULL,NULL,NULL),
 (55,'GC-Moms','2017-07-26 20:00:00','2017-07-26 22:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,10,NULL,NULL,NULL),
 (56,'GC-Moms','2017-07-26 20:00:00','2017-07-26 22:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,11,NULL,NULL,NULL),
 (57,'GC-Moms','2017-07-26 20:00:00','2017-07-26 22:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,13,NULL,NULL,NULL);
INSERT INTO `activities` (`id`,`name`,`starttime`,`endtime`,`person_id`,`created_at`,`updated_at`,`number`,`place_id`,`deltbet`,`min_age`,`max_age`) VALUES
 (58,'GC-Shoppen lørdag','2017-07-23 13:00:00','2017-07-23 15:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,13,NULL,NULL,NULL),
 (59,'Girl Talk – kys, krop, kærester og alt dét der','2017-07-26 10:30:00','2017-07-26 12:30:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,11,NULL,NULL,NULL),
 (60,'Gymnastik og leg for børn på 3-6 år + forældre mandag','2017-07-25 11:00:00','2017-07-25 13:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,2,NULL,NULL,NULL),
 (61,'Gymnastik og leg for børn på 3-6 år + forældre tirsdag','2017-07-26 11:00:00','2017-07-26 13:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,2,NULL,NULL,NULL),
 (62,'Gymnastik og leg for børn på 3-6 år + forældre onsdag','2017-07-27 11:00:00','2017-07-27 13:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,2,NULL,NULL,NULL),
 (63,'Gymnastik og leg for børn på 3-6 år + forældre torsdag','2017-07-28 11:00:00','2017-07-28 13:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,2,NULL,NULL,NULL);
INSERT INTO `activities` (`id`,`name`,`starttime`,`endtime`,`person_id`,`created_at`,`updated_at`,`number`,`place_id`,`deltbet`,`min_age`,`max_age`) VALUES
 (64,'Gymnastik og leg for børn på 3-6 år + forældre fredag','2017-07-29 11:00:00','2017-07-29 13:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,2,NULL,NULL,NULL),
 (65,'Harry Potter aktivitet','2017-07-26 10:00:00','2017-07-26 12:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,15,35,NULL,NULL),
 (66,'Havkajak mandag','2017-07-25 12:00:00','2017-07-25 14:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,2,150,NULL,NULL),
 (67,'Havkajak tirsdag','2017-07-26 10:00:00','2017-07-26 12:00:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,2,150,NULL,NULL),
 (68,'Heartfulness meditation.','2017-07-25 09:30:00','2017-07-25 11:30:00',1097,'2017-03-23 21:25:45','2017-03-23 21:25:45',NULL,4,NULL,NULL,NULL),
 (69,'Hearthstone for 10-14 Årige','2017-07-29 15:00:00','2017-07-29 17:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,4,NULL,NULL,NULL),
 (70,'Heartstone','2017-07-26 13:30:00','2017-07-26 15:30:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,4,NULL,NULL,NULL);
INSERT INTO `activities` (`id`,`name`,`starttime`,`endtime`,`person_id`,`created_at`,`updated_at`,`number`,`place_id`,`deltbet`,`min_age`,`max_age`) VALUES
 (71,'Husholdningskemi for ca. 5-10 årige','2017-07-27 11:00:00','2017-07-27 13:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,13,NULL,NULL,NULL),
 (72,'Hyg og byg med plus plus','2017-07-25 10:00:00','2017-07-25 12:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,13,NULL,NULL,NULL),
 (73,'Hygge med papir og saks','2017-07-24 10:00:00','2017-07-24 12:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,16,30,NULL,NULL),
 (74,'Hygge med samlekort','2017-07-26 16:00:00','2017-07-26 18:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,13,NULL,NULL,NULL),
 (75,'Hyggesjipning','2017-07-24 14:00:00','2017-07-24 16:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,2,NULL,NULL,NULL),
 (76,'Hyrdehund i aktion og klap et får','2017-07-29 10:00:00','2017-07-29 12:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,2,NULL,NULL,NULL),
 (77,'Intromøde til ældre teenagegruppe','2017-07-23 20:30:00','2017-07-23 22:30:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,9,NULL,NULL,NULL);
INSERT INTO `activities` (`id`,`name`,`starttime`,`endtime`,`person_id`,`created_at`,`updated_at`,`number`,`place_id`,`deltbet`,`min_age`,`max_age`) VALUES
 (78,'Intromøde yngre teenagegruppe','2017-07-23 19:30:00','2017-07-23 21:30:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,9,NULL,NULL,NULL),
 (79,'Karate og selvforsvar hold 1','2017-07-27 08:00:00','2017-07-27 10:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,2,NULL,NULL,NULL),
 (80,'Karate og selvforsvar hold 2','2017-07-27 10:00:00','2017-07-27 12:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,2,NULL,NULL,NULL),
 (81,'Knipling','2017-07-26 14:00:00','2017-07-26 16:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,16,NULL,NULL,NULL),
 (82,'Kogekunst på Trangia','2017-07-25 09:00:00','2017-07-25 11:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,10,100,NULL,NULL),
 (83,'Konsulentkaffe','2017-07-27 15:00:00','2017-07-27 17:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,11,NULL,NULL,NULL),
 (84,'Kontortid','2017-07-24 10:00:00','2017-07-24 12:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,5,NULL,NULL,NULL);
INSERT INTO `activities` (`id`,`name`,`starttime`,`endtime`,`person_id`,`created_at`,`updated_at`,`number`,`place_id`,`deltbet`,`min_age`,`max_age`) VALUES
 (85,'Lav din egen tegnefilm – for de yngste','2017-07-26 10:00:00','2017-07-26 12:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,4,NULL,NULL,NULL),
 (86,'Leg med Funlooms (små elastikker)','2017-07-24 15:30:00','2017-07-24 17:30:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,16,NULL,NULL,NULL),
 (87,'Ler-workshop','2017-07-27 14:00:00','2017-07-27 16:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,13,80,NULL,NULL),
 (88,'Lær at lave dit eget computerspil eller tegnefilm med Scratch','2017-07-24 13:00:00','2017-07-24 15:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,4,NULL,NULL,NULL),
 (89,'Magic Conspiracy Draft - For øvede/ avancerede magic spillere','2017-07-28 14:30:00','2017-07-28 16:30:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,16,75,NULL,NULL),
 (90,'Magic The Gathering - mød lejerens andre MTG-spillere.','2017-07-25 14:30:00','2017-07-25 16:30:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,13,NULL,NULL,NULL),
 (91,'Massage for teenagere 2003 og ældre','2017-07-25 13:00:00','2017-07-25 15:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,4,NULL,NULL,NULL);
INSERT INTO `activities` (`id`,`name`,`starttime`,`endtime`,`person_id`,`created_at`,`updated_at`,`number`,`place_id`,`deltbet`,`min_age`,`max_age`) VALUES
 (92,'Meditation og healing søndag','2017-07-24 10:00:00','2017-07-24 12:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,7,NULL,NULL,NULL),
 (93,'Mensa test 1','2017-07-26 10:00:00','2017-07-26 12:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,16,NULL,NULL,NULL),
 (94,'Mensa test 2','2017-07-26 11:00:00','2017-07-26 13:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,16,NULL,NULL,NULL),
 (95,'Mentorkaffe','2017-07-24 14:00:00','2017-07-24 16:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,15,NULL,NULL,NULL),
 (96,'Metalaften','2017-07-28 20:00:00','2017-07-28 22:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,12,NULL,NULL,NULL),
 (97,'Metalquiz','2017-07-29 14:00:00','2017-07-29 16:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,12,NULL,NULL,NULL),
 (98,'Minecraft 6-13 år','2017-07-28 10:00:00','2017-07-28 12:00:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,4,NULL,NULL,NULL),
 (99,'Minecraft - Der bliver sat to servere op til formålet.','2017-07-27 10:30:00','2017-07-27 12:30:00',1097,'2017-03-23 21:25:46','2017-03-23 21:25:46',NULL,4,NULL,NULL,NULL);
INSERT INTO `activities` (`id`,`name`,`starttime`,`endtime`,`person_id`,`created_at`,`updated_at`,`number`,`place_id`,`deltbet`,`min_age`,`max_age`) VALUES
 (100,'Modellervoks-værksted','2017-07-26 12:00:00','2017-07-26 14:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,13,NULL,NULL,NULL),
 (101,'Morgentur i havkajak','2017-07-28 08:00:00','2017-07-28 10:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,2,150,NULL,NULL),
 (102,'MOVING MOUNTAINS Japansk tuschmaleri samt kalligrafi workshop','2017-07-26 12:30:00','2017-07-26 14:30:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,10,125,NULL,NULL),
 (103,'Munchkin','2017-07-25 10:30:00','2017-07-25 12:30:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,11,NULL,NULL,NULL),
 (104,'Musikquiz på Feddet 2016 - Pop-Rock-og alt midt i mellem','2017-07-24 15:00:00','2017-07-24 17:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,12,NULL,NULL,NULL),
 (105,'Mød en mensaner - hvad er det der Mensa for noget?','2017-07-25 15:30:00','2017-07-25 17:30:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,16,NULL,NULL,NULL),
 (106,'Møde for poolvagter','2017-07-24 12:30:00','2017-07-24 14:30:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,12,NULL,NULL,NULL);
INSERT INTO `activities` (`id`,`name`,`starttime`,`endtime`,`person_id`,`created_at`,`updated_at`,`number`,`place_id`,`deltbet`,`min_age`,`max_age`) VALUES
 (107,'Møde for tovholdere','2017-07-24 13:15:00','2017-07-24 15:15:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,12,NULL,NULL,NULL),
 (108,'Nerf-mål','2017-07-24 10:00:00','2017-07-24 12:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,12,55,NULL,NULL),
 (109,'Oplæg om foreningen Head Quarters','2017-07-29 13:00:00','2017-07-29 15:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,15,NULL,NULL,NULL),
 (110,'Ostesmagning','2017-07-28 13:00:00','2017-07-28 15:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,10,75,NULL,NULL),
 (111,'Pandekagedag','2017-07-27 13:00:00','2017-07-27 15:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,10,NULL,NULL,NULL),
 (112,'Pen and Paper søndag','2017-07-24 10:00:00','2017-07-24 12:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,9,NULL,NULL,NULL),
 (113,'Pen and Paper torsdag','2017-07-28 10:00:00','2017-07-28 12:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,9,NULL,NULL,NULL);
INSERT INTO `activities` (`id`,`name`,`starttime`,`endtime`,`person_id`,`created_at`,`updated_at`,`number`,`place_id`,`deltbet`,`min_age`,`max_age`) VALUES
 (114,'Perleplader','2017-07-25 15:30:00','2017-07-25 17:30:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,10,NULL,NULL,NULL),
 (115,'Pokemon turnering på Nintendo 3DS','2017-07-29 13:00:00','2017-07-29 15:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,11,NULL,NULL,NULL),
 (116,'Pokerturnering i Texas Hold\'em','2017-07-25 20:00:00','2017-07-25 22:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,4,30,NULL,NULL),
 (117,'Pokken Turnament turnering','2017-07-28 13:00:00','2017-07-28 15:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,4,NULL,NULL,NULL),
 (118,'Poolparty efter-hygge','2017-07-25 21:30:00','2017-07-25 23:30:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,9,NULL,NULL,NULL),
 (119,'Poolparty teenagere 2000 og ældre','2017-07-27 19:00:00','2017-07-27 21:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,8,NULL,NULL,NULL),
 (120,'Poolparty teenagere 2000-2003','2017-07-25 19:00:00','2017-07-25 21:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,8,NULL,NULL,NULL);
INSERT INTO `activities` (`id`,`name`,`starttime`,`endtime`,`person_id`,`created_at`,`updated_at`,`number`,`place_id`,`deltbet`,`min_age`,`max_age`) VALUES
 (121,'Portrættegning','2017-07-24 14:30:00','2017-07-24 16:30:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,11,NULL,NULL,NULL),
 (122,'Portvinssmagning','2017-07-27 20:00:00','2017-07-27 22:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,10,150,NULL,NULL),
 (123,'Rollespil','2017-07-28 11:00:00','2017-07-28 13:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,2,NULL,NULL,NULL),
 (124,'Romsmagning','2017-07-28 20:30:00','2017-07-28 22:30:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,10,135,NULL,NULL),
 (125,'Rundbold på fodboldbanen','2017-07-29 11:00:00','2017-07-29 13:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,3,NULL,NULL,NULL),
 (126,'Sandkasseleg på stranden for 3-6 årige','2017-07-24 14:00:00','2017-07-24 16:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,7,NULL,NULL,NULL),
 (127,'Speak Out - 7. kl.-3.g','2017-07-26 13:00:00','2017-07-26 15:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,11,NULL,NULL,NULL);
INSERT INTO `activities` (`id`,`name`,`starttime`,`endtime`,`person_id`,`created_at`,`updated_at`,`number`,`place_id`,`deltbet`,`min_age`,`max_age`) VALUES
 (128,'Speak Out - unge og voksne','2017-07-28 13:00:00','2017-07-28 15:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,11,NULL,NULL,NULL),
 (129,'Stand-up','2017-07-24 20:00:00','2017-07-24 22:00:00',1097,'2017-03-23 21:25:47','2017-03-23 21:25:47',NULL,6,100,NULL,NULL),
 (130,'Stendyr','2017-07-28 13:00:00','2017-07-28 15:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,12,20,NULL,NULL),
 (131,'Stikbold','2017-07-27 15:00:00','2017-07-27 17:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,3,NULL,NULL,NULL),
 (132,'Strikkecafè aften','2017-07-28 20:00:00','2017-07-28 22:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,13,10,NULL,NULL),
 (133,'Strikkecafè fredag','2017-07-29 13:00:00','2017-07-29 15:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,13,NULL,NULL,NULL),
 (134,'Strikkecafè søndag','2017-07-24 13:00:00','2017-07-24 15:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,11,NULL,NULL,NULL),
 (135,'Strikkecafè tirsdag','2017-07-26 13:00:00','2017-07-26 15:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,12,NULL,NULL,NULL);
INSERT INTO `activities` (`id`,`name`,`starttime`,`endtime`,`person_id`,`created_at`,`updated_at`,`number`,`place_id`,`deltbet`,`min_age`,`max_age`) VALUES
 (136,'Strikkecafè torsdag','2017-07-28 13:00:00','2017-07-28 15:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,16,NULL,NULL,NULL),
 (137,'strikkeklub for mænd','2017-07-24 16:30:00','2017-07-24 18:30:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,15,NULL,NULL,NULL),
 (138,'SUGO - Symboler i traditionel og moderne japansk kunst/design','2017-07-27 11:00:00','2017-07-27 13:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,11,125,NULL,NULL),
 (139,'Super Smash Bros.-turnering (Wii U)','2017-07-27 13:30:00','2017-07-27 15:30:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,4,NULL,NULL,NULL),
 (140,'Teenage hygge, Hvem er vi?','2017-07-24 12:00:00','2017-07-24 14:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,16,NULL,NULL,NULL),
 (141,'Teenpiger taler med ung mensakvinde','2017-07-28 10:30:00','2017-07-28 12:30:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,11,NULL,NULL,NULL),
 (142,'Tegn og hyg lørdag','2017-07-23 16:00:00','2017-07-23 18:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,15,NULL,NULL,NULL);
INSERT INTO `activities` (`id`,`name`,`starttime`,`endtime`,`person_id`,`created_at`,`updated_at`,`number`,`place_id`,`deltbet`,`min_age`,`max_age`) VALUES
 (143,'Tegn og hyg torsdag','2017-07-28 14:00:00','2017-07-28 16:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,13,NULL,NULL,NULL),
 (144,'Tegne lære','2017-07-27 11:00:00','2017-07-27 13:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,16,NULL,NULL,NULL),
 (145,'Tegne workshop','2017-07-24 16:00:00','2017-07-24 18:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,13,NULL,NULL,NULL),
 (146,'Tysk Vininspiration','2017-07-23 20:00:00','2017-07-23 22:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,10,150,NULL,NULL),
 (147,'Velkomsttale','2017-07-23 18:30:00','2017-07-23 20:30:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,2,NULL,NULL,NULL),
 (148,'Vi kører med vores R/C biler. 12 år og op. Fra 10 år ifølgeskab med voksen.','2017-07-24 13:00:00','2017-07-24 15:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,2,NULL,NULL,NULL),
 (149,'Vindmøller','2017-07-26 13:30:00','2017-07-26 15:30:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,13,40,NULL,NULL);
INSERT INTO `activities` (`id`,`name`,`starttime`,`endtime`,`person_id`,`created_at`,`updated_at`,`number`,`place_id`,`deltbet`,`min_age`,`max_age`) VALUES
 (150,'Whiskysmagning.','2017-07-26 20:00:00','2017-07-26 22:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,11,150,NULL,NULL),
 (151,'Workshop: Hypersensitivity in Gifted Children','2017-07-25 13:00:00','2017-07-25 15:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,10,NULL,NULL,NULL),
 (152,'Workshop: Mindfulness mod tankemylder','2017-07-28 10:30:00','2017-07-28 12:30:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,16,NULL,NULL,NULL),
 (153,'Workshop: Motivation, underydelse og engagement','2017-07-27 09:00:00','2017-07-27 11:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,12,NULL,NULL,NULL),
 (154,'Workshop: Nurturing Your Child\'s Remarkable Mind','2017-07-28 16:00:00','2017-07-28 18:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,10,NULL,NULL,NULL),
 (155,'Workshop: Programmering / Spiludvikling','2017-07-24 16:30:00','2017-07-24 18:30:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,4,NULL,NULL,NULL),
 (156,'Zumba','2017-07-24 09:00:00','2017-07-24 11:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,4,NULL,NULL,NULL);
INSERT INTO `activities` (`id`,`name`,`starttime`,`endtime`,`person_id`,`created_at`,`updated_at`,`number`,`place_id`,`deltbet`,`min_age`,`max_age`) VALUES
 (157,'Ølsmagning','2017-07-27 20:00:00','2017-07-27 22:00:00',1097,'2017-03-23 21:25:48','2017-03-23 21:25:48',NULL,13,100,NULL,NULL);
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;


--
-- Table structure for table `sl17_development`.`ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sl17_development`.`ar_internal_metadata`
--

/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` (`key`,`value`,`created_at`,`updated_at`) VALUES
 ('environment','development','2017-02-07 09:23:17','2017-02-07 09:23:17');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;


--
-- Table structure for table `sl17_development`.`assignments`
--

DROP TABLE IF EXISTS `assignments`;
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

--
-- Dumping data for table `sl17_development`.`assignments`
--

/*!40000 ALTER TABLE `assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `assignments` ENABLE KEYS */;


--
-- Table structure for table `sl17_development`.`clearances`
--

DROP TABLE IF EXISTS `clearances`;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sl17_development`.`clearances`
--

/*!40000 ALTER TABLE `clearances` DISABLE KEYS */;
INSERT INTO `clearances` (`id`,`member_id`,`role_id`,`created_at`,`updated_at`) VALUES
 (1,354,1,'2017-03-15 08:05:38','2017-03-15 08:05:38');
/*!40000 ALTER TABLE `clearances` ENABLE KEYS */;


--
-- Table structure for table `sl17_development`.`housing_types`
--

DROP TABLE IF EXISTS `housing_types`;
CREATE TABLE `housing_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sl17_development`.`housing_types`
--

/*!40000 ALTER TABLE `housing_types` DISABLE KEYS */;
INSERT INTO `housing_types` (`id`,`name`,`created_at`,`updated_at`) VALUES
 (1,'Hytte','2017-03-06 06:34:45','2017-03-06 06:34:45');
/*!40000 ALTER TABLE `housing_types` ENABLE KEYS */;


--
-- Table structure for table `sl17_development`.`invoices`
--

DROP TABLE IF EXISTS `invoices`;
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sl17_development`.`invoices`
--

/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` (`id`,`member_id`,`created_at`,`updated_at`,`paid`,`payment_link`) VALUES
 (25,354,'2017-03-12 08:55:25','2017-03-13 06:14:07',1,NULL),
 (26,15,'2017-03-12 21:05:17','2017-03-12 21:05:17',0,NULL),
 (27,354,'2017-03-13 06:14:20','2017-03-13 06:17:04',1,NULL),
 (28,354,'2017-03-13 06:19:31','2017-03-13 07:33:16',1,NULL),
 (29,354,'2017-03-13 07:33:16','2017-03-13 07:33:16',0,NULL),
 (30,12,'2017-03-15 07:59:59','2017-03-15 07:59:59',0,NULL),
 (31,288,'2017-03-15 17:54:36','2017-03-15 17:54:36',0,NULL),
 (32,9,'2017-03-15 20:33:59','2017-03-15 20:33:59',0,NULL),
 (33,1033,'2017-03-17 06:25:49','2017-03-19 21:07:35',1,NULL),
 (34,14,'2017-03-17 07:04:21','2017-03-17 07:04:21',0,NULL),
 (35,288,'2017-03-19 06:46:03','2017-03-19 06:48:19',1,NULL),
 (36,75,'2017-03-21 16:34:07','2017-03-21 16:34:07',0,NULL),
 (37,850,'2017-03-21 19:41:09','2017-03-21 19:41:09',0,NULL),
 (38,288,'2017-03-28 20:01:39','2017-03-28 20:01:39',NULL,NULL);
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;


--
-- Table structure for table `sl17_development`.`members`
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `housing_type_id` int(11) DEFAULT NULL,
  `housing_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_members_on_housing_type_id` (`housing_type_id`),
  CONSTRAINT `fk_rails_d675ce8f7e` FOREIGN KEY (`housing_type_id`) REFERENCES `housing_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1062 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sl17_development`.`members`
--

/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (1,2,'Heidi Stolberg-Christensen','stolberg@baldursson.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (2,3,'Susanne Lund Pedersen','susanne@sulupe.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (3,4,'Annette Storm','annette@giftedchildren.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (4,7,'Margrethe Harlev','fam.harlev@mail.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (5,11,'Anne Sostack','thyholmslynger@gmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (6,23,'Mirete Keinicke','mirete.Keinicke@hotmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (7,28,'Karenlise Nielsen','k-nielsen@dbmail.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (8,30,'Karin Lind','karinlplind@mail.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (9,31,'Ulla Clausen','ulla.clausen@hotmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (10,38,'Grith Tschorn','grith@grith-tschorn.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (11,39,'Amrei K. Christensen','amrei.christensen@hotmail.com','2017-02-07 09:25:16','2017-03-08 06:48:57',1,'35'),
 (12,43,'Martin Agerskov Poulsen','martin.agerskov@gmail.com','2017-02-07 09:25:16','2017-03-21 20:51:24',1,'23'),
 (13,47,'Deborah Briggs','Andersen.bo@gmail.com','2017-02-07 09:25:16','2017-03-08 07:31:59',NULL,''),
 (14,50,'Dorte Larsen','dortenvk@yahoo.dk','2017-02-07 09:25:16','2017-03-08 13:38:22',NULL,''),
 (15,55,'Jette Kyllesbech','jette@thita.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (16,82,'Brita Søndergaard','brita-br@webspeed.dk','2017-02-07 09:25:16','2017-03-08 12:57:09',NULL,''),
 (17,83,'Pia Ryding','ryd@mail.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (18,84,'Caroline Karby','caroline.iben.karby@gmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (19,87,'Maria Wewer','maalw@yahoo.com','2017-02-07 09:25:16','2017-03-10 22:06:20',NULL,''),
 (20,89,'Camilla Bødker Thomsen','journamorten@hotmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (21,98,'Pernille Smalbro Hylleberg','kasper@smalbro.info','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (22,99,'Brith Engblad Greve','b-e-g@hotmail.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (23,116,'Thorbjørn Lau Christensen','thorbjoern.christensen@gmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (24,118,'Annette Jensen Holst','annettejensen@nypost.dk','2017-02-07 09:25:16','2017-03-10 15:37:03',NULL,''),
 (25,120,'Birgitte Rützou Klinting','brk66@outlook.dk','2017-02-07 09:25:16','2017-03-21 20:51:25',NULL,NULL),
 (26,140,'Mette Christiansen','simonemette9@gmail.com','2017-02-07 09:25:16','2017-03-21 20:51:25',NULL,NULL),
 (27,152,'Birgitte Hansen-Hoeck','bh.hoeck@gmail.com','2017-02-07 09:25:16','2017-03-21 20:51:25',NULL,NULL),
 (28,168,'Birgitte Arnvig','birgitte@arnvig.org','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (29,185,'Dorte Kubert','dkubert@mail.tele.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (30,191,'Rikke Strunge Krogsgaard','strunge@gmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (31,192,'Lonnie Bila','ziebila@hotmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (32,195,'Ditte Bernquist','D.Bernquist@ofir.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (33,204,'Camilla Teisen','vognserup@mail.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (34,211,'Suzette Grabenthin Jørgensen','suzettegkk@pc.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (35,216,'Ulla Albeck Johansen','comeon@comeon.as','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (36,221,'Sanne Wøhlk','s@wohlk-son.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (37,226,'Hanne Merete Lauritsen','Greve.Lauritsen@gmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (38,230,'Sussi Skov-Christensen','ssc@skovchristensen.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (39,235,'Helle Knudsen','Helle.frouvne@gmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (40,236,'Linda Kaysen Hansen','linda@bombibitt.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (41,238,'Jette Franks Hansen','Jette@frankshansen.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (42,247,'Pia Baumgarten','piabaumgarten@gmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (43,250,'Lene Lundin','mikael@lundinlind.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (44,266,'Heidi Schiøtz','snabela@vip.cybercity.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (45,271,'Charlotte Kring','charlotteogflemming@gmail.com','2017-02-07 09:25:16','2017-03-08 14:45:24',NULL,''),
 (46,273,'Dorthe Fisker','oysteinangen@gmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (47,276,'Lisbeth Lintz Christensen','henning@obinet.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (48,280,'Susanne Lund','sanne@coolpartners.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (49,291,'Ida Hovalt Jensen','toje@km.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (50,295,'Anne Maaløe','anne@maaloemail.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (51,296,'Jess Julin Ibsen','annettehibsen@gmail.com','2017-02-07 09:25:16','2017-03-21 20:51:25',NULL,NULL),
 (52,300,'Charlotte Østergaard','coestergaardgc@gmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (53,308,'Marianne Helledi Knudsen','mhelledi@gmail.com','2017-02-07 09:25:16','2017-03-21 20:51:25',NULL,NULL),
 (54,309,'Lise Marie Frohn','lise@frohn.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (55,317,'Annie Larsen','anders.annie@youmail.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (56,322,'Winnie Gade','wgade@me.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (57,323,'Birgitte Holm','biasholm@yahoo.co.uk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (58,325,'Anni Hvidberg Smed','j.smed@webspeed.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (59,332,'Connie Dydensborg','connie@dydensborg.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (60,334,'Iben Melballe Elmedal','Iben@elmedal.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (61,337,'Mette Gade','Mette.gade@mail.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (62,338,'Joan Alrøe','hugo.alroe@gmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (63,356,'Isa Karina Borch-Jensen','Isa.j@ofir.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (64,362,'Lizzi Cederskjold Kierans','cederskjold.kierans@privat.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (65,363,'Mikkel Pedersbæk Falkenberg','m.p.falkenberg@gmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (66,364,'Inge Krarup','kikrarup@hotmail.com','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (67,366,'Natasja Steen Laursen','nat@zun.dk','2017-02-07 09:25:16','2017-02-07 09:25:16',NULL,NULL),
 (68,375,'Anne Madsen','anne_madsen@yahoo.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (69,377,'Malene Moll Vandel','vandalerne@mail.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (70,387,'Connie Wilhjelm','conniewilhjelm@live.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (71,389,'Sofia Edsberg Rasmussen','athenedk@hotmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (72,394,'Stine Darmer','d@rmer.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (73,402,'Berit Johansen','berit72@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (74,404,'Rikke Munch Bendtsen','rikke@m-bendtsen.dk','2017-02-07 09:25:17','2017-03-21 20:51:25',NULL,NULL),
 (75,407,'Malene Jensen','malene.jensen.dk@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (76,408,'Nanna Buur Olesen','nannabuur@hotmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (77,410,'Sus Warming','S.warming@mail.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (78,414,'Lone Larsen','nybrovej@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (79,417,'Rikke Wedel Wester Fischer','rikke@wedel-fischer.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (80,421,'Jette Horn Brorholt','madshorn@mydsl.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (81,422,'Pernille Riber','riber@a.cirque.tv','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (82,426,'Diana Vaabengaard','Dianavaabengaard@sol.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (83,427,'Marie-Louise Bang','sban@privat.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (84,432,'Inga Thaysen','ingathaysen@live.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (85,433,'Lilian Nammour Thestrup','eventyrland@city.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (86,442,'Anne-Mette Anker Hansen','annemette.anker@get2net.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (87,443,'Helle Rauch','helle@rauch.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (88,445,'Helle Sune Jensen','helle@sensoriet.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (89,447,'Susan Byrdal Andersen','susan@sensitryk.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (90,449,'Lotte Spedtsberg Clausen','L8Clausen@hotmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (91,450,'Stine Løvind Thorsen','stine.lovind.thorsen@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (92,452,'Mette Vejen Eriksen','uglebakken@yahoo.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (93,454,'Mette Heide Temple','familien@temple.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (94,459,'Susie Nexø Holm Kristensen','holmsusie@hotmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (95,469,'Anette Munk','anette.munk@hotmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (96,471,'Rita Lyng Petersen','lyng.petersen@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (97,481,'Julie Secher Schultz','juss@knord.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (98,486,'Annette Forsberg de los Reyes','delosreyes2009@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (99,491,'Jo Mia Fray','jomiafray@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (100,496,'Mette Marklund','mettemarklund@hotmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (101,497,'Elisabeth Møllgaard','emollgaard@pt.lu','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (102,498,'Tina Fredenslund','kristianfredenslund@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (103,503,'Susanne Hedebo Lund','shedebo@hotmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (104,505,'Helle Birkholm-Buch','helle@birkholm-buch.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (105,506,'Mona Holm Poulsen','holmshp@hotmail.com','2017-02-07 09:25:17','2017-03-21 20:51:26',NULL,NULL),
 (106,512,'Bettina Baun Skovgaard Rathjen','bettina@rathjen.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (107,513,'Pernille Ravn','pnr@post.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (108,516,'Anne Mandrup Christensen','specialagentgts@hotmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (109,525,'Merete Bøye','merete@mereteland.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (110,527,'Henriette Dybdal Cajar','dybdal@cajar.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (111,530,'Dorte Rehm','andr@novonordisk.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (112,531,'Grith Kastorp','os@botka.dk','2017-02-07 09:25:17','2017-03-08 13:30:20',NULL,''),
 (113,533,'Solveig Nørgaard Johansen','Flesol@webspeed.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (114,547,'Mette Helver','mettehelver@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (115,550,'Janni Grubert','janni.grubert@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (116,551,'Kristine Drisdal Hansen','kdhhov@statsforvaltning.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (117,555,'Lene F. Kobbernagel','lene.fredslund@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (118,558,'Anne Breüner','sbh@nst.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (119,559,'Astrid Søe','astridsoe@mail.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (120,565,'Marlene Vikkelsø','Margaardvej14@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (121,577,'Katja Lehmann Nielsen','morten@paybackim.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (122,578,'Tine Kragelund','jsandvad@hotmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (123,579,'Charlotte Giehm','charlotte@giehm.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (124,580,'Lisa Nielsen','lisanielsen72@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (125,585,'Kenneth Vestergaard','info@sport-power.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (126,587,'Rikke Julie Mosekjær Weuder','weuder@weuder.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (127,589,'Mette Kongstad Welling','razmet2@get2net.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (128,595,'Annette Taudorf Ravn','annette.t.ravn@hotmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (129,596,'Kresten S. Gaub','Kresten.gaub@hotmail.com','2017-02-07 09:25:17','2017-03-21 20:51:26',NULL,NULL),
 (130,598,'Rikke Dawids','gifted@rikkerask.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (131,602,'Randi Hjorth','randi@hjorthlarsen.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (132,603,'Gre Stensgaard Gram','gre.stensgaard@get2net.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (133,612,'Ulla Kjældgaard','youkay@live.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (134,614,'Karin Kielberg Nielsen-Borup','nielsenborup@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (135,616,'Cecilia Møller Hansen','ceciliamansen@live.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (136,621,'Karin Bonde Johansen','karin@bondejohansen.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (137,627,'Lone Rysgaard','lonerysgaard@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (138,630,'Yolanda Galan Mogensen','Dannie@galanmogensen.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (139,635,'Birgitte Hilligsøe Lisby','btlisby@dlgmail.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (140,636,'Marianne Paavonen','MariannePaavonen@live.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (141,639,'Hanne Caroline Knudsen','hck@x-plan.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (142,642,'Christina D. Stoltenberg','cmstoltenberg@pc.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (143,643,'Turid Preuss','turid.preuss@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (144,649,'Janne Jung Andersen','Dirk.Bartelsen@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (145,650,'Mette Fogh Rasmussen','mettefoghrasmussen@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (146,652,'Nanna Fick','nf@nannafick.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (147,653,'Joan Schjødt-Thomsen','Joan.st@vip.cybercity.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (148,664,'Vibe Thorhauge','vibe@musikkons.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (149,665,'Gitte Anker Jakobsen','jakobsen2010@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (150,666,'Anja Baumann','Anjabaumann40@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (151,668,'Helle Stokholm Malmqvist','Malmqvist@live.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (152,675,'Regitze Christiansen','remc@get2net.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (153,680,'Kirsten Loft Bergstrand','ks.bergstrand@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (154,681,'Pernille Steinhauer Hedegaard','pernillesteinhauer@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (155,683,'Mette Bergqvist','mette.b.bergqvist@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (156,690,'Marianne Weilby Guss','marianne@guss.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (157,691,'Bettina Junker Kristiansen','mail@iq-coaching.dk','2017-02-07 09:25:17','2017-03-21 20:51:27',NULL,NULL),
 (158,692,'Hanne Stokholm','hannestokholm@hotmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (159,696,'Anne-Mette Neve Alsbjerg','am@alsbjerg.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (160,698,'Anette Panduro Falcher Preuss','mail@tanisjka.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (161,700,'Heidi Bonefeld Bladt','heidi@kokhaven41.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (162,704,'Ingelise Schrøder','ingelises@live.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (163,706,'Helle Kyhnau Steffensen','helleks@bomi.roskilde.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (164,711,'Carina Aaen','familienaaen@hotmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (165,712,'Helle B. Neiiendam','hellesfirst@icloud.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (166,713,'Cecilia Engelbrecht Heick','ceh@csille.dk','2017-02-07 09:25:17','2017-03-21 20:51:27',NULL,NULL),
 (167,718,'Randi Cederquist','ceder@kaus.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (168,720,'Eva Maria Jochimsen','eva.maria.jochimsen@mail.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (169,723,'Ulla Marie Wig','ullawig@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (170,729,'Helle Hassenkam','maknessah@yahoo.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (171,737,'Mette Dagmar Jakobsen','mettedagmar@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (172,738,'Tina Barbara Pryds','prydstina@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (173,740,'Tina Rønhøj','tinaronhoj@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (174,741,'Janne Mandahl-Friis','Janne@hvesager.com','2017-02-07 09:25:17','2017-03-21 20:51:27',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (175,744,'Gitte Krogh Madsen','Gitte.madsen@dadlnet.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (176,745,'Marie Katrine Storck Birkholm','mariebirkholm@hotmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (177,748,'Christiane Beith Pedersen','bragesgaard@dlgmail.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (178,749,'Anne Ahrenst','Anne.ahrenst@hotmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (179,750,'Ekaterina Gordeeva Bjerrum','EsbenJannik@rocketmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (180,758,'Majbriit Villum Jakobsen','Team.jakobsen@mvb.net','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (181,760,'Mai Rubin','rubinmai@yahoo.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (182,769,'Marianne Høi','m.hoi@stofanet.dk','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (183,771,'Bodil Agnete Kjær Christensen','bodilagnete@hotmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (184,773,'Irene Bandier','irenebandier@gmail.com','2017-02-07 09:25:17','2017-02-07 09:25:17',NULL,NULL),
 (185,780,'Sascha Tuborg Jensen','tuborg@privat.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (186,781,'Poula Patursson','hanuspoula@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (187,787,'Tine Arensbach Nielsen','tarensbach@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (188,793,'Winnie Steenfeldt Blem','blem@birman.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (189,797,'Britt Krogh Grønnebæk','tantegroen@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (190,798,'Gitte Grastveit Mølbæk','gitte.grastveit@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (191,802,'Bettina Nørskov Redder','bnrtgh@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (192,803,'Vivian Olesen','volesen@msn.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (193,807,'Jan Sørensen','sorensja2@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (194,809,'Niels Dybdahl','niels@dybdahl.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (195,814,'Birgit Højbjerg','birgit-h@outlook.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (196,816,'Mette Kold Andersen','Mette_kold_andersen@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (197,826,'Jenni Christiansen','jenni.christiansen@dadlnet.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (198,835,'Charlotte Jarshøj','chajar@outlook.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (199,837,'Lone Henriksen','Henrik.svantemann@get2net.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (200,839,'Stine Sylvestersen','Stsy@tv2lorry.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (201,840,'Elisabeth Witt','giftedchildren@lind-witt.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (202,842,'Anne-Mette Djernæs Secher','amdsecher@mail.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (203,846,'Helle Asmild','malmgrenasmild@msn.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (204,850,'Malene Bonde','malle@mensa.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (205,853,'Sidsel Sørensen','sidsel@vejbred.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (206,857,'Tanja Madsen','Tanjacogv@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (207,862,'Anette Matthisson','matthisson@mail.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (208,867,'Sarisha Mendes','sarisha@mail.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (209,872,'Sanne Thoudahl Lundqvist','satl@gentofte.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (210,875,'Tine Reinholt Jensen','Tine-reinholt@mail.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (211,876,'Birgitte Loizeau','birgitteloizeau@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (212,883,'Erica Køhnke','ericak@worldonline.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (213,884,'Charlotte Drewes','Charlotte.drewes@webspeed.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (214,890,'Monica Krenkel','teepee_dk@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (215,893,'Gitte Biermann','gc@biermann.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (216,897,'Bente Madsen','Bente.madsen@live.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (217,904,'Marie Brasholt','mariebrasholt@dadlnet.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (218,905,'Pia Christiansen','morc@stibosystems.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (219,908,'Iben Charlotte Aamann','ibencaa@it.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (220,915,'Helle B. J. Pasquinucci','hellegc@seqcom.it','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (221,916,'Charlotte Ferdinand','charlotteferdinand@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (222,918,'Solveig Odgaard Jakobsen','bsjakobsen@webspeed.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (223,926,'Henriette Døssing','henriettedossing@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (224,932,'Helle Dyrholm Lund','hdlund@mail.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (225,933,'Christina Rønn Ingvardsen','familienronn@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (226,937,'Henriette Skovholm','hskovholm@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (227,938,'Synne S. P. Petersen','synnepetersen@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (228,940,'Anja Camilla Reitzel','anjacreitzel@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (229,941,'Marianne Mikkelsen','mami@ltk.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (230,942,'Maj Sorin-Kristensen','mmkjds@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (231,944,'Lene Nørris Jensen','Lene_norris@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (232,948,'Signe Bonne Damgaard','sigdam@live.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (233,950,'Birgitte Venge Winter','birgitte.winter@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (234,951,'Tine Høier','Michael.holck@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (235,952,'Karen Riber','karenriber72@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (236,955,'Ea Bøhm Jepsen','eabj@dadlnet.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (237,960,'Ann Carina Schødt','anncarinaschoedt@sol.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (238,961,'Line Rasmussen','kenneth.osterballe@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (239,962,'Vesna Schneider','fugleparken@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (240,963,'Mette Binderup','mebi@eucsj.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (241,970,'Mai-Britt Beldam','maibeldam@yahoo.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (242,973,'Therese  Schiang-Franck','therese.schiang.franck@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (243,980,'Henriette Ærendal Mikkelsen','henrymik77@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (244,981,'Karen Hamer Langelund','karenlangelund@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (245,988,'Lone Munk Hansen','lone.munk.hansen@gmail.com','2017-02-07 09:25:18','2017-03-21 20:51:28',NULL,NULL),
 (246,992,'Sally Strate','sallystrate@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (247,995,'Rikke Bech Harning','rikke@harning.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (248,998,'Marije te Winkel','marije.winkel@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (249,1001,'Tina Pernille Aamann','tpaamann@gmail.com','2017-02-07 09:25:18','2017-03-21 20:51:28',NULL,NULL),
 (250,1002,'Anne-Mette Enoksen','amenoksen@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (251,1018,'Tine Daus','dktdb@coloplast.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (252,1019,'Lise Ulstrup Andersen','lise.ulstrup@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (253,1023,'Stine Elbrønd Riismøller','stine@oroi.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (254,1024,'Anja Kjærsgaard Andersen','anja@innayo.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (255,1026,'Dorthe bonde Madsen','bonde.dorthe@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (256,1027,'Vibeke Staal Madsen','Vibeke.staal@live.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (257,1029,'Stine Kjær Watkins','Stinwat@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (258,1040,'Hanne Duran Højlind','hojlind@live.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (259,1048,'Vibeke Sinkjær','vibeke@milter.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (260,1049,'Irene Wulff Christensen','irene@wulffc.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (261,1053,'Sara Winding','sara@mensa.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (262,1055,'Tine Sloth Bruun Andersen','sangfugl71@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (263,1059,'Sarah Højlund Wittig','sarah@wangaa.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (264,1062,'Nina Thérèse Rosenørn','mimiwuarr@yahoo.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (265,1068,'Tina Esmann','tina@motorikvejleder.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (266,1074,'Camilla Hvidtfeldt','mogens.fosgerau@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (267,1075,'Anne Hertz','anne@hz.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (268,1076,'Sidse Nørgaard','stayin@live.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (269,1077,'Rikke Hostrup Haugbølle','rikke@haugbolle.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (270,1078,'Karin Hulgaard','karin@hulgaard.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (271,1079,'Lene Bundgård Madsen','lene@bundgrd.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (272,1081,'Gudrun Fransen','gudrun.fransen@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (273,1083,'Sarah Nørgaard','Nagima88@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (274,1087,'Susanne Kindberg','Susanne_kindberg@yahoo.co.uk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (275,1089,'Stine Witt Østengaard','simon@ostengaard.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (276,1091,'Marnie Lai','Marnie.lai@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (277,1093,'Lita Nielsen','carstenbll@hafnet.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (278,1100,'Helle Lindtner','hellelindtner@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (279,1108,'Kamilla Ramsøe Møller','allimak@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (280,1109,'Annika Wiwe','aw@viauc.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (281,1112,'Carina Søndergaard','Cas0408@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (282,1116,'Birthe Lykkegaard Vedtofte','vedtofte@mail.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (283,1117,'Anne Majbrit Allerup','j@llerup.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (284,1119,'Margrethe Elgaard','Elgaarddk@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (285,1127,'Brigitte Harslund Løvenbalk','brigitte_64@yahoo.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (286,1128,'Lene Idun Hornstrup','Lene@hornstrup.org','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (287,1132,'Helle Harding Poulsen','helle@lilleskensved.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (288,1136,'Ann Baldus-Kunze','Balduskunze@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (289,1138,'Christina Lylloff','christina@happyboys.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (290,1140,'Elsebeth Watts','elsebeth@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (291,1141,'Mette Vork Guldager','vorkmette@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (292,1142,'Heidi Klug Pedersen','klugpedersen@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (293,1145,'Joan Falk Knudsen','joan@falkknudsen.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (294,1149,'Pernille Miller','bo@millernet.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (295,1150,'Lone Thoft','lonepthoft@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (296,1153,'Pernille Postgaard','postgaard@yahoo.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (297,1155,'Line Nyskov Storgaard','line.storgaard@hotmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (298,1157,'Anette Lynggaard','lynggaard@bee-com.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (299,1160,'Jane Skifte','janeskifte@gmail.com','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (300,1163,'Mette Kurir Bursell','mette@kurir.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (301,1166,'Mette Bille Neerbek','home@neerbek.dk','2017-02-07 09:25:18','2017-02-07 09:25:18',NULL,NULL),
 (302,1167,'Naja Lundgren','Najalundgren@jubii.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (303,1173,'Britt Nikolajsen','bnikolajsen@live.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (304,1180,'Dorte Buchmann','gc@kofoed.ws','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (305,1182,'Sine Hewel','simi@universus.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (306,1194,'Christina Rønmos','c@ronmos.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (307,1200,'Helle Foldbjerg Rasmussen','helle@foldbjerg.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (308,1205,'Tina Nielsen','Ikaros60@hotmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (309,1208,'Alicia Johansen','strid.vang@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (310,1210,'Espe Maria Kahler','espemariakahler@gmail.com','2017-02-07 09:25:19','2017-03-21 20:51:29',NULL,NULL),
 (311,1211,'Charlotte Baes Aaholst','chasbaes@hotmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (312,1212,'Pia Houmøller','Pia.houmoller@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (313,1213,'Mette Leidecker Jørgensen','henrik.joergensen@gmail.com','2017-02-07 09:25:19','2017-03-21 20:51:29',NULL,NULL),
 (314,1214,'Anne Leonhard Olsen','anneleonhard@live.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (315,1222,'Julie Storgaard Mortensen','pytti@hotmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (316,1230,'Birgit Rydder','rydder@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (317,1235,'Ulla Koch Gregersen','ulla-koch-gregersen@stofanet.dk','2017-02-07 09:25:19','2017-03-21 20:51:30',NULL,NULL),
 (318,1238,'Rie Debois','slaavensky@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (319,1241,'Lars Boris Hansen','Larsbh.lbh@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (320,1242,'Heidi Lollike Lund','heidilollike@yahoo.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (321,1244,'Louise Berg Krogsgaard','fam@krogsgaards.net','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (322,1245,'Charlotte Aaen Stampe','charlottestampe@yahoo.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (323,1246,'Marie Lumholtz','mariemus@mac.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (324,1249,'Heidi Hjorth Nielsen','Heidi.hjorth@youmail.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (325,1250,'Kirsten Dam Pedersen','kirstendampedersen@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (326,1253,'Dorthe Lærke Baun','dlb@ramboll.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (327,1264,'Sengül Kaya-Mortensen','jan@kaya-mortensen.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (328,1266,'Sussi Bechmann Nielsen','sussi.b.nielsen@mail.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (329,1267,'Line Marie Wibroe','privat@alipe.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (330,1272,'Hanne Søllingwraae Fjord','hsf@holstebro-vuc.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (331,1273,'Louise lønbæk Nilsson','llnilsson@me.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (332,1277,'Birgitte Skovgaard','birskjo@gmail.com','2017-02-07 09:25:19','2017-03-21 20:51:30',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (333,1280,'Rikke Høst Danielsen','rikke@danielsenonline.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (334,1282,'Louise Nøttrup Grotrian','grotrian@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (335,1287,'Larisa V. Kazantseva','pope@my.terminal.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (336,1288,'Helle Jacobsen','hellejanejacobsen@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (337,1290,'Lisbeth Arnbjerg','lisbeth.arnbjerg@stofanet.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (338,1291,'Susanne Tagge Jürgensen','sus@jensus.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (339,1292,'Karina Hansen','karinaemil@yahoo.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (340,1294,'Mette Høgsbjerg  Langkjær','asgaard@dlgmail.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (341,1295,'Rikke Bøgelund','info@hp-service.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (342,1298,'Lene Møller Yang','leneyang@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (343,1303,'Maria Østergaard-Nielsen','mm@mail.tdcadsl.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (344,1312,'Helle Stengaard Christensen','hellestc@icloud.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (345,1319,'Camilla Bille Thomsen','camillabillethomsen@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (346,1324,'Susanne Dithmer Gam','frejagam@city.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (347,1330,'Zosia Karoline Lav','zosia@lav.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (348,1332,'Dorthe Møller','Dorthe.moeller@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (349,1339,'Britt Herborg Hansen','britt@herborg-hansen.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (350,1343,'Taina Hvidlykke','familien@hvidlykke.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (351,1348,'Mette Boje','nb@isensus.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (352,1354,'Ulla Baasch Andersen','ca@klonk.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (353,1355,'Vickie Gammelgaard','vickie.gammelgaard@mail.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (354,1357,'Colette Josiassen','klaus.bech.jensen@mensa.dk','2017-02-07 09:25:19','2017-03-13 06:13:50',NULL,''),
 (355,1358,'Rikke Meyling','Familien@meyling.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (356,1368,'Ann Harpøth Thor','ann@FUTU.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (357,1371,'Bibbi Søgaard Visby','bibbivisby@live.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (358,1372,'Mette Riegels','familienriegels@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (359,1373,'Pia Okpara','fam.okpara@live.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (360,1377,'Karina Jonsson','karina@ejlbo.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (361,1381,'Trine Kornum Christiansen','gc@trineogkaare.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (362,1383,'Marianne Pihlmann Kronborg','kronborg1@tuknet.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (363,1390,'Elin Høymark','Cirkushoymark@hotmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (364,1391,'Nete Grøn Jacobsen','nete@familiengroen.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (365,1394,'Signe Marie Vesterdorf Iversen','signevi@hotmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (366,1396,'Anne Christine Urfe Bendt','mads@bendt.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (367,1397,'Aino Vonge Corry','aino@arbat.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (368,1400,'Tina Rasmussen Stilling','tina.stilling@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (369,1405,'Majbritt Fyhn Wilken','jesperwilken@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (370,1406,'Marie-Louise Frederiksen','marielouisefrederiksen@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (371,1407,'Bente Panduro','Pandurobente@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (372,1409,'Vibeke Elizabeth Sørensen','hvorforligenu@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (373,1410,'Chrestine Faurholt Laursen','Chrestine.laursen@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (374,1413,'Dorthe Nørhave Kjær','Dorthe.nkj@hotmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (375,1415,'Helene Damkjær','helene@hmq.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (376,1423,'Ellen Temwa Sørensen','ellenogcarsten@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (377,1424,'Sarah Fredberg','sarahfredberg@hotmail.com','2017-02-07 09:25:19','2017-03-21 20:51:31',NULL,NULL),
 (378,1431,'Heidi Brøgger Johnsen','Heidijohnsen@jubii.dk','2017-02-07 09:25:19','2017-03-21 20:51:31',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (379,1434,'Ingrid Margrethe Korsgaard','Mkorsgaard1@gmail.com','2017-02-07 09:25:19','2017-03-21 20:51:31',NULL,NULL),
 (380,1436,'Tirah Fischermann','info@modern-healing.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (381,1437,'Anne Vibeke Jensen','annevibj@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (382,1438,'Lene West Kristensen','kent.wk@kentus.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (383,1443,'Helene Madsen','hnmd@novonordisk.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (384,1445,'Tina Nørgaard','norgaard.tina@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (385,1448,'Lena Kasandra Stubkjær','lenakasandra@yahoo.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (386,1451,'Mette Lundø Sieg','kasper@sieg.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (387,1452,'Anne-Mette Steffensen','steffensenannemette@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (388,1454,'Sidsel Klarborg Hillgaard','sidsel@hillgaard.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (389,1460,'Pia Søgaard','sogaardpia@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (390,1461,'Louise Berg Puggaard','louisebergolesen@hotmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (391,1462,'Lotte Sligting Stannius','lotte@zenithgroup.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (392,1463,'Pia Enghild Christiansen','pia@enghild.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (393,1465,'Camilla Hansen','hansen_camilla@hotmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (394,1468,'Gitte Martina Oscarsson','go@newmail.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (395,1470,'Cecilie Eken','peter@heydenreich.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (396,1471,'Michael Brock','mbrock.dk@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (397,1475,'Juliette Gemzøe','katfalken1@live.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (398,1478,'Anna Bjørshol','info@abtekst.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (399,1479,'Sabine Lauge Olsen','solsen@newmail.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (400,1485,'Sisse Helle Njor','njor@vip.cybercity.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (401,1490,'Ann Hansen','annogeinar@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (402,1498,'Rikke Lindeberg Bille','rikke@bille.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (403,1500,'Stine Mølleskov','slut@moelleskov.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (404,1509,'Tine Neel Riber Teglbjærg','tineneelriber@gmail.com','2017-02-07 09:25:19','2017-03-21 20:51:31',NULL,NULL),
 (405,1510,'Camille Sommer','Tvistur@live.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (406,1511,'Carsten Holm Nikolajsen','c-nikolajsen@live.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (407,1514,'Louise Brown','louisebrown@mensa.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (408,1515,'Heidi Louise Hansen','claus@94k.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (409,1516,'Stine Nelke','stine.nelke@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (410,1518,'Jette Birkholm','birkholm@kirkebymail.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (411,1519,'Mette Brønnum Girsel Gjerløv','mggj@regionsjaelland.dk','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (412,1520,'Tine Birksholm Sejersen','tine_teol@yahoo.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (413,1528,'Lis Hedelund Thomsen','martin.quottrup@gmail.com','2017-02-07 09:25:19','2017-02-07 09:25:19',NULL,NULL),
 (414,1529,'Pernille Ridder Olsen','Ridder-olsen@mail.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (415,1530,'Stine Stenfatt West','stine@stenfatt.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (416,1533,'Maria Blaabjerg','mariablaabjerg@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (417,1538,'Inge Just Porse','porse@energimail.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (418,1540,'Signe Birk Lyne','signe74561@yahoo.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (419,1546,'Dorthe Dahlin Irvold','dorthe@irvold.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (420,1549,'Birgitte Svendsen','bs@pecuniaconsult.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (421,1552,'Lisbeth Barkholt Hansen','lisbethbarkholthansen@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (422,1558,'Jette Røgen','bondegaardsminde@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (423,1561,'Tina Rauff Tonnesen','Fam.mirabellevej@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (424,1563,'Charlotte U. Carlsen','Klaus.risager@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (425,1565,'Dorthe Nielsen','andedun@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (426,1566,'Helle Kjerside','Kjerside66@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (427,1570,'Ditte Risager Rønnest','ditte.ronnest@live.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (428,1579,'Kirstin Lovejoy','ideagon@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (429,1580,'Charlotte Ryberg Simonsen','charlotte@simonsen.info','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (430,1581,'Helle H. Rasmussen','Hhr145@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (431,1583,'Marianna Mikkelsen','maal@mikkelsen.mail.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (432,1584,'Charlotte Gaard','Charlotte.gaard@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (433,1587,'Christina Szankowski-Slidsborg','slidsborgc@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (434,1592,'Susanne Tylvad-Boesen','Lucas301205@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (435,1593,'Kristina Dorch Stauning Refstrup-Mortensen','kristina@refmor.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (436,1595,'Eva Schriver','evahansen900@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (437,1596,'Mona Hjorth Hansen','Mona.hjorth@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (438,1602,'Pixie Chrestine Schou','frederiksenpost@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (439,1605,'Mette Birk Gleisner','mettebirkgleisner@live.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (440,1606,'Heidi Dandanell','Heidi.dandanell@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (441,1608,'Maria C. Müller','muller@newmail.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (442,1609,'Birgitte Rønne','Birkroenne@ofir.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (443,1615,'Marianne Sommer Bielefeldt','Marianne_s_bielefeldt@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (444,1618,'Tine Buhl Andersen','tine_buhl@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (445,1619,'Janne Fredens','jfredens@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (446,1622,'Mette Hvilshøj Fabricius','mfabricius@mail.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (447,1625,'Margrethe Møller Thomsen','smat@smat.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (448,1629,'Bitten Friis Jensen','bittenfj@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (449,1631,'Lotte Poulsen','jan-lotte@mail.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (450,1636,'Helle Marie Pedersen','heped@dongenergy.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (451,1637,'Louise Tvebro','louise@tvebro.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (452,1638,'Margot Pedersen','margot.pedersen@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (453,1639,'Charlotte Scheel','nw@multiplex.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (454,1641,'Charlotte van Führen','chala@webspeed.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (455,1645,'Lone Holst','lone@celona.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (456,1649,'Ursula Breull Christensen','ubreull@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (457,1652,'Lucia Pihl','simon_pihl@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (458,1655,'Salina Lianne Høegh Hansen','salina.hoegh.hansen@sol.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (459,1662,'Christina Linea Sonne','Kevin.sonne@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (460,1667,'Susanne Fischer-Rasmussen','susannefischerrasmussen@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (461,1674,'Christine Sjøberg','c.sjoeberg@live.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (462,1676,'Mette Pilegaard Rasmussen','metteogklaus@pilegaard-rasmussen.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (463,1677,'Lene Carlson','lc.lenecarlson@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (464,1678,'Trine Nielsen','trineshop@yahoo.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (465,1680,'Tenna Petersen','Tennap@hotmail.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (466,1683,'Dorte Odde','dorteodde@ontheedge.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (467,1685,'Pernille Kops','pernillekops@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (468,1687,'Christina Munkgaard Kragh','munkgaardkragh@mail.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (469,1691,'Louise Rønne Green','louise@roennegreen.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (470,1696,'Jytte Frederiksen','Jytts@live.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (471,1704,'Julie Schmidt Matthiesen','2180julie@gmail.com','2017-02-07 09:25:20','2017-03-21 20:51:32',NULL,NULL),
 (472,1705,'Susie Meisler-Jones','s.meisler@mail.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (473,1706,'Heidi Koed Nielsen','heidikoed@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (474,1715,'Christina Jakobsen','chris@g-lock.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (475,1717,'Rikke Esberg Kirkfeldt','kirkfeldt@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (476,1720,'Birgitte Muff Poulsen','bmup@novonordisk.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (477,1722,'Ann-Sophie Khan','jacob@wkhan.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (478,1723,'Pia Sand','piarene@haslevnet.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (479,1726,'Line Raft Calum','raftcalum@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (480,1729,'Anne Marie Rønberg','annemarieogmichael@yahoo.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (481,1730,'Lonni Sølbæk Hansen','lonnichristiansen@yahoo.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (482,1732,'Malene Raben Jørgensen','mrabenj@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (483,1734,'Ulla Wolter','mullew@me.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (484,1736,'Josefine Gudmann','josefinegudmann@yahoo.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (485,1740,'Inki Mannstaedt','inkimann@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (486,1743,'Helene Agerskov Vindahl','heleneac@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (487,1745,'Lene Marie Ditlev','lene_ditlev@hotmail.com','2017-02-07 09:25:20','2017-03-21 20:51:32',NULL,NULL),
 (488,1746,'Sanne Bekkersted Dam','dam1969@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (489,1750,'Lotte Groth Jensen','grothjensen@yahoo.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (490,1751,'Charlotte Rasborg','crasborg@yahoo.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (491,1753,'Helle Bloch Jessen','Helle.bloch.jessen@LEGO.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (492,1754,'Mette Ribergaard Mai','MetteRMai@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (493,1759,'Signe Vorting','signe@loegumklosterfriskole.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (494,1768,'Ann Mikkelsen','annmikkelsen2@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (495,1772,'Johanne Riegels Østergård','nej@paradis.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (496,1776,'Merete Krogsgaard','mk@3top.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (497,1777,'Diana Lynee','dianalynee@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (498,1778,'Anne-Dorthe Hejn Brædder','ab@vaeverhuset.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (499,1779,'Anja Eske Rosenqvist','Anja.rosenqvist@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (500,1780,'Birgit Vig','sandvig@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (501,1781,'Mette Schmidt Ohlsen','msohlsen@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (502,1783,'Anya Winqvist','anya@mikromaude.se','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (503,1786,'Kamilla Hjortkjær','kamilla@hjortkjaer.net','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (504,1787,'Anne Mette Riber','post@rydskovgaard.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (505,1788,'Gitte Alberen','gitte.alberen@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (506,1789,'Mariann Bohnstedt','bohnstedtklanen@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (507,1791,'Tasha Buch','sunesloth@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (508,1793,'Britt Lindhardt Søndergaard','scsoendergaard@mail.tele.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (509,1794,'Louise Kærn Korsholm','soeren.korsholm@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (510,1795,'Stine Nim Nothlev','Stine@nothlev.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (511,1796,'Bella Marckmann','privatsociologen@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (512,1799,'Majbritt Birkebo Ravnholt','majbritt@birkebo.net','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (513,1801,'Ane Katrine Uldall Eiming','ane@eiming.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (514,1802,'Hanne Skipper Jørvang','hanne@jorvang.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (515,1803,'Louise Strøyberg','Louise.hougaard@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (516,1805,'Rebeca Suárez Alvarez Thostrup','thostrup@carlsbergfoundation.dk','2017-02-07 09:25:20','2017-03-21 20:51:33',NULL,NULL),
 (517,1809,'Christina Bjerre','christinabjerre@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (518,1810,'Susanne Wichmann Emde','post@susanneemde.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (519,1811,'Janne Wirenfeldt Sandbæk','jws7600@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (520,1815,'Tina Bundgaard Stäcker','musentina@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (521,1816,'Lene Grum-Schwensen','sofusgs@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (522,1820,'Bolette Nyrop','bolette.nyrop@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (523,1821,'Mette Stadsbjerg','Msb50@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (524,1823,'Marianne Rosendahl','Marianne.rosendahl@skolekom.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (525,1826,'Jonna Vestergaard Eriksen','eriksenjonna@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (526,1832,'Pernille Fog Svendsen','pernillefsvendsen@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (527,1835,'Synnøve Røysland','sroeysland@gmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (528,1836,'Pia Bak','Friisbak@hotmail.com','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (529,1837,'Andrea Staunsholm','haj@iexcel.dk','2017-02-07 09:25:20','2017-02-07 09:25:20',NULL,NULL),
 (530,1838,'Karin Christensen','krc@mail.tele.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (531,1843,'Mette Studsgaard Sørensen','mettesolsen@yahoo.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (532,1844,'Ane Marie Fabrin','amfroskilde@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (533,1848,'Mette Wistoft','mwistoft@yahoo.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (534,1849,'Sussi Karina Sørensen','Akubra1734@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (535,1851,'Pia Koustrup','pkou@viauc.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (536,1853,'Pia Aurdal Holmberg','p.aurdal@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (537,1856,'Lene Kjærem Nielsen','nielsen@langbach.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (538,1860,'Mie Bech Hanberg','mie@mensa.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (539,1862,'Stine Tholund','stine@tholund.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (540,1865,'Henriette Nielsen','henriette.hen.nielsen@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (541,1866,'Marianne Ingemann Sørensen','Marianne.ingemann@live.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (542,1867,'Louise Breiner Larsen','Louise_2@c.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (543,1868,'Jensine Ingerslev Nedergaard','Jensine.nedergaard@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (544,1872,'Line Sofie Welling Petersen','linesofiepetersen@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (545,1873,'Vibe Marie Laidlaw','onionchild@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (546,1876,'Tanja Wetterstein Simonsen','rolf@simonsen.tdcadsl.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (547,1877,'Anette Rosgaard','mks@therosgaards.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (548,1878,'Suzanne Steensen','suzannesteensen@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (549,1883,'Malene Guassora','mguassora@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (550,1884,'Camilla Suder','cogs@suder.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (551,1888,'Britta M. Hansen','brimh79@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (552,1892,'Rikke Sørensen','Rikke.o.sorensen@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (553,1896,'Xenia Pauli Jensen','jacoblorensen@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (554,1898,'Karna Riis Larsen','karnariis@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (555,1899,'Maria Leerberg','pauli.leerberg@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (556,1906,'Karina Maria Bruse','Karinamariabruse@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (557,1908,'Mie Normand Lauritzen','normand_sport@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (558,1911,'Christine Otterstrøm','Christine.otterstrom@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (559,1913,'Tina Wilson Torgersen','tinawilson20@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (560,1915,'Anne Ryder','Anneryder77@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (561,1919,'Vicki Slott-Petersen','lauslott@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (562,1921,'Carina Krarup Güllendorff','TheisKrarupHansen@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (563,1922,'Christina Ro Hansen','jacob@morrismini.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (564,1924,'Jannie Kirk','janniekirk@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (565,1925,'Inge Marie Melgaard','melgaard@altiboxmail.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (566,1931,'Anja Kristensen','anjak@braskhome.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (567,1932,'Mette Fiirgaard Schneefeldt','fiirgaard@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (568,1933,'Gitte B. Poulsen','gbpoulsen@yahoo.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (569,1934,'Karina Bograd','kale@legind.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (570,1938,'Lotte Stigsgaard Sørensen','lotte@stigsgaard.net','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (571,1946,'Lotte Rasmussen','mail@lotte-rasmussen.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (572,1949,'Ylva Rigner Freiesleben','rigner@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (573,1956,'Fadia Maria Frausing El-Tal','fadia@el-tal.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (574,1959,'Line Sikora Christiansen','Linasikora@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (575,1960,'Ditte Holm','stefanh@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (576,1964,'Heidi Bonke','niksvarrer@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (577,1966,'Lene G Madsen','fam@madsen.tm','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (578,1967,'Julie Pildal','danzahavi@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (579,1968,'Dorthe Skau Bramming','dbramming@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (580,1969,'Stinne Fruelund','stinne@playforlife.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (581,1972,'Runa Fenger','hjemmeemail@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (582,1973,'Valérie Parois Licht-Larsen','anders@licht-larsen.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (583,1975,'Gunnvá Staksberg','Gunnva2001@yahoo.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (584,1977,'Theresa Gregoriou','theresa_gregoriou@live.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (585,1980,'Elizabeth Juul Würtz','Elizabeth.wurtz@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (586,1983,'Michelle Charlton','charlton@vip.cybercity.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (587,1984,'Helle Rostkjær Brender','hellebrender@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (588,1985,'Tina B Kildentoft Christiansen','kildentoft.christiansen@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (589,1993,'Marie Ødum Hagedorn','mariehagedorn@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (590,1994,'Rosemarie Bødker','rboedker@yahoo.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (591,1995,'Marie Louise Dunker Nielsen','flemming@pless.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (592,1997,'Pernille Breum Steen','pernille.b.steen@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (593,1998,'Mette Frost Clausen','mc@toftlund.net','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (594,2002,'Dorte Bolgan Thomsen','doth@km.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (595,2004,'May-Britt Aaberg','may.britt.os@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (596,2006,'Eva Berengar','Berengar@Berengar.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (597,2007,'Margrethe Erbou Andersen','m_e_a@live.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (598,2008,'Christine Hollænder','christinehollaender@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (599,2009,'Pernille Hall Schou','Pernille.Schou@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (600,2011,'Mai-Britt Naumann Pedersen','maibrittnaumann@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (601,2013,'Livia Mogensen','livsen@mac.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (602,2014,'Signe Strudsholm Munch','Signe.munch@profibermail.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (603,2019,'Christina Stenberg Dam','Meier@youseeme.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (604,2022,'Charlotte Eir','Charlotte_eir@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (605,2026,'Charlotte Carl Larsen','Pilen@ishoejby.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (606,2027,'Annette Rosetti','annros@outlook.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (607,2031,'Heidi Lock','heidilock@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (608,2035,'Cathrine Sue Halle Peters','r.halle_peters@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (609,2036,'Pia Hallengreen Thunbo','Pia@thunbo.eu','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (610,2037,'Ann Nyby Rennison','Ann@nyby.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (611,2039,'Jane Bach Crewe','janebachcrewe@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (612,2040,'Maja Groth Granborg','maja@granborg.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (613,2042,'Gry Anna Hundebøl','g.hundeboel@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (614,2043,'Charlotte Sachmann Nielsen','Charlotte@get2net.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (615,2044,'Pernille Illum','Pernille.illum@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (616,2045,'Kristine Albrechtsen','Kreer83@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (617,2046,'Anette Prehn Eiken','anette@anetteprehn.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (618,2047,'Mads Engell','Mads.keys@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (619,2048,'Luise Bjerre Roesen','luise@bjerre.net','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (620,2049,'Fie Ørum','fie@nu-revi.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (621,2050,'Rikke Fabricius Mortensen','rialni@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (622,2051,'S. Emilie Hunderup Pedersen','familien@trf-data.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (623,2053,'Mette Frimann Brahm','mette@brahm.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (624,2056,'Dorota Beres','babyberes@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (625,2058,'Ditte Marie Blond','jeppebo68@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (626,2059,'Tina Stokvad Hansen','tina@togc.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (627,2065,'Sigrid Hedegaard Laursen','Sigrid.hedegaardlaursen@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (628,2066,'Louise Munk Rytter','louiserytter@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (629,2067,'Susanne Rosenberg Madsen','srm@live.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (630,2069,'Pernille Gericke Skjødt','henrikryan@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (631,2070,'Hanna Lund Struve','peroghanna@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (632,2071,'Karin Vels Hansen','karv@dtu.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (633,2074,'Malene Lynge Eskildsen','mge80@live.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (634,2075,'Dorthe Bierre','dorthebierre@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (635,2078,'Claus Jørgensen','Calus1206@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (636,2080,'Metine Bober Tønnersen','Metine10@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (637,2082,'Dorte Strobel','strobel@mail.tele.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (638,2084,'Nadja Berg','nadjasberg@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (639,2085,'Joan Ditlevsen','Joan@starup.eu','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (640,2090,'Christina Achton-Gråthen','olav@achton-graathen.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (641,2091,'Mia Aarsholm','kristian@duus.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (642,2094,'Monica Laustsen','Mathias@monicalarsen.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (643,2098,'Lene Amstrup Sørensen','leas1970@yahoo.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (644,2101,'Kirsten Lai Nørgaard','kirstenln@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (645,2106,'Maria Nørbygaard','maria@nrbygaard.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (646,2109,'Malene Raith','staalby@mac.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (647,2110,'Pia Egeberg','piaegeberg@email.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (648,2111,'Sigrid Ylva Høymann Dahlstrøm','fdp637@alumni.ku.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (649,2113,'Maria Oslo Rasmussen','maria@oslonet.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (650,2115,'Melina Kiwa Søderberg','kiwa@kiwa.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (651,2119,'Louise Kleis Axelsen','Kleis.jesper@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (652,2122,'Mia Gustafsson','miafrank@email.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (653,2124,'Benadikta Kruse','benadikta@yahoo.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (654,2126,'Dianna Z Vestergaard','dianna@zonebox.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (655,2128,'Karen Bjørnelund','karen.bjornelund@hotmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (656,2132,'Christina Therkildsen','2xtherkild@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (657,2133,'Louise Thorsager','louise@thorsager.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (658,2138,'Bettina Hansen','bettina@chin.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (659,2140,'Dorte Tersløse','tersloese@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (660,2141,'Maria Asmussen','asmussen@nypost.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (661,2142,'Katrine Joensen','kj@trouville.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (662,2145,'Ninna Meier','troels.johansen@clin.au.dk','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (663,2146,'Trine Gjesing Antvor','tgantvor@gmail.com','2017-02-07 09:25:21','2017-02-07 09:25:21',NULL,NULL),
 (664,2149,'Merete Lysberg','meretelysberg@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (665,2153,'Maria Koefoed','mariakoefoed@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (666,2155,'Kijo Cecilia Gylden','kijopii@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (667,2156,'Birgitte Dines Johansen','birgittedines@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (668,2157,'Kirsten Marie Brochorst Grønborg','Kirsten@oktopus.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (669,2163,'Pia Mai','Piamai888@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (670,2164,'Anne Benski Guldbjerg','Anne_b@sol.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (671,2165,'Birgitte Raben Sørensen','Birgittehenningsen@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (672,2174,'Mette Østergaard Söderlund','mosoderlund@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (673,2175,'Kristina Jørgensen','kristina@deedee.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (674,2176,'Irina Watts','irina@watts.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (675,2182,'Katja Jungfalk Andersen','katja@kardemommeby.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (676,2183,'Mette Bønneland','Mb_land@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (677,2185,'Lone Gregor Christensen','fam.gregor@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (678,2189,'Nadia Cespedes Stage','nadiacespedesstage@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (679,2192,'Karina Bjørk Andreasen','kban@regionsjaelland.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (680,2193,'Anna-Marie Esbjerg Christensen','vandgaarden@pc.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (681,2194,'Nicole Fiala Baar','Nicole.fiala@yahoo.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (682,2195,'Galina Chizhova','Galina.chizhova@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (683,2199,'Annette Louise Foltmann','af@spia.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (684,2200,'Mette Finderup','mette@finderup.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (685,2201,'Gry Segoli','gry@segoli.net','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (686,2204,'Sandra de Blécourt Dalsberg','blecourt@dalsberg.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (687,2205,'Anne Sofie Overgaard Lif','anne.sofie.overgaard.lif1@skolekom.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (688,2207,'Anja Bech-Jansen','Anja.bechjansen@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (689,2208,'Dida Grundtvig','didagb@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (690,2209,'Trine Brodzikowski','trine.brodzikowski@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (691,2210,'Christina Prytz Frandsen','prytz@live.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (692,2213,'Susanne Pia Arnsted','arnsted@privat.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (693,2214,'Monica Rasmussen','micas.ras@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (694,2216,'Hanne Tøndering Dam Sørensen','jeppe@damsorensen.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (695,2219,'Carina Jo Sivager','post@sivager.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (696,2220,'Jannie E. A. Hvilsted','rvhvilsted@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (697,2222,'Maria Jelstrup Munk','kenn@jelstrup-munk.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (698,2226,'Helle Maria Niemann','Niemann.hm@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (699,2229,'Naja Heiberg','urrsula.caroline@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (700,2230,'Kira Høegh','kira@itu.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (701,2231,'Stina Rie Klit Haubroe','Stephan.fly@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (702,2233,'Nina Konstantin Nissen','nknissen@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (703,2236,'Ina Høyer Zacho','skriv-til-ina@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (704,2241,'Christina Løwenstein','loewenstein@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (705,2244,'Charlotte Dujardin Weimann','s@weimann.se','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (706,2245,'Hanne Danielsen','hannedanielsen@mail.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (707,2246,'Martina Stendel','martina.stendel@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (708,2250,'Oksana Bugrii Attermann','henrik@attermann.net','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (709,2251,'Rikke Søltoft Laurittzen','Rikkelauritzen@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (710,2252,'Siri Wetlesen','netpsykolog@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (711,2253,'Rikke Bostrup Voss','Voss.kids@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (712,2254,'Line Lykke Jullien-Paletier','line@paletier.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (713,2255,'Frederik Bukhave Løwenstein','f.lowenstein@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (714,2256,'Louise Mejsig Brunsgaard','louise_brunsgaard@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (715,2258,'Åse Sørensen','aanv@ofir.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (716,2261,'Birthe Offer Knudsen','birthe@fam-knudsen.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (717,2262,'Hanne Stentoft Arp','h_arp@post1.dknet.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (718,2264,'Ulla Vang Jørgensen','Ulla@aeblevangen.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (719,2266,'Gitte Kieler','giki@tv2.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (720,2269,'Ketty Bartholin Pedersen','Tune.pedersen@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (721,2270,'Sara Barner Kappendrup','jkappendrup@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (722,2271,'Dorothea Ragoczy','DorotheaRagoczy@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (723,2273,'Eva Bonde Jacobsen','evabj@dadlnet.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (724,2277,'Lone Bovin','bovin@get2net.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (725,2278,'Anne Kristine Plauborg Brøndt Jørgensen','Annekristinepbj@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (726,2280,'Line Zard Hartkopf','linehartkopf@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (727,2281,'Katrine Bollmann','katrinebollmann@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (728,2282,'Anne Erichsen','Anne_erichsen@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (729,2285,'Britta Schlott Kristiansen','giftedchildren@bskristiansen.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (730,2292,'Bente Keis Neerbek','neerbek@mail.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (731,2293,'Jeppe Buhl Axelsen','jeppe.axelsen@image.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (732,2294,'Hanne Mette Lundorff','HanneM2804@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (733,2296,'Jeanne Halkjær Jensen','jeannehj@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (734,2298,'Katja Christensen','katja@dall-olsen.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (735,2304,'Helene Catharina Lindelöf','helene@cirquemerveille.com','2017-02-07 09:25:22','2017-03-21 20:51:36',NULL,NULL),
 (736,2305,'Dorthe Ebling','samueleddy@tdcadsl.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (737,2307,'Susanne Merete Østergaard','ernsto@mail.tele.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (738,2308,'Brit Thestrup Bach','britbo@ktbb.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (739,2309,'Kirsten Elkjær Schrøder','Kirsten_schroeder@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (740,2315,'Dorte Dalgaard','d@lgaard.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (741,2316,'Lili Lærke Nordstrøm','benny@3am.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (742,2319,'Trine Bechmann Funch','tk@bechmannfunch.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (743,2320,'Anya Palmkvist','Palmkvist76@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (744,2321,'Heidi Degn Grundsøe','heidi@sgtech.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (745,2323,'Lise Fabricius Wadskjær','lfc@syvstjerneskolen.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (746,2324,'Louise Lykke Olsen','louiselykke1975@yahoo.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (747,2325,'Mette Præst Knudsen','aspen@youmail.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (748,2326,'Erdenechimeg Minjuurdorj','hulemalerier@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (749,2328,'Pauline Vedderkop','line3112@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (750,2329,'Birgitte Bentzen','bb@bbentzen.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (751,2330,'Camilla Reventlow-Grinling','crg@krenkerup.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (752,2331,'Jeanette Astrup','Jeanetten@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (753,2332,'Thor August Selander','taselander@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (754,2333,'Ruut Peuhkuri','sp@passivhus.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (755,2334,'Anja Dalum Jensen','anja.dalum.jensen@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (756,2335,'Helle Lindblom Møller','Hellelindblom@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (757,2336,'Anna-Karina Dan','annakarinadan@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (758,2337,'Camilla Warhøi Skibsted','camillaskibsted@mail.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (759,2342,'Ulla Kirstine Dahlberg','bjoern.dahlberg@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (760,2343,'Henriette Ullerup-Aagaard','h_ullerup@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (761,2345,'Nana Folmann Hempler','nfolmann@yahoo.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (762,2346,'Julie Degn Nielsen','degnnielsen@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (763,2350,'Stine Rolle Hansen','stinerollehansen@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (764,2351,'Viviann Hansen','vbhansen@dlgmail.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (765,2352,'Karen Wibling Solgård','kaws@oticon.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (766,2353,'Helle Yorklai Christiansen','hychristiansen@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (767,2354,'Britt Grundal Ottesen','Morten1603@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (768,2356,'Sara Skaarup','mail@saraskaarup.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (769,2357,'Katja Dall Svendsen','storesult@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (770,2359,'Linda Nielsen','snorremor@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (771,2361,'Sofie Heller Lützen','peter@hellerlutzen.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (772,2363,'Hanna W. Grue','hanna@grue.eu','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (773,2365,'Lykke Rasmussen','lykkerasmussen@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (774,2367,'Kristine Mark Burne Sundby','sundbys@me.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (775,2368,'Kristine Bælum Thorvildsen','kristine@thorvildsen.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (776,2369,'Maisa Larsen dé Martino','maisademartino@yahoo.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (777,2370,'Janne Taule Andersen','smukkejanne@hotmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (778,2371,'Helle Doré Hansen','jdh@visiopharm.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (779,2372,'Rikke Havner Alrø','rialr03@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (780,2373,'Anne-Marie Jydegaard Axelsen','amax@live.dk','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL),
 (781,2375,'Gry Sølja Olsen','grysoelja@gmail.com','2017-02-07 09:25:22','2017-02-07 09:25:22',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (782,2376,'Mette Møller Jeppesen','mettejeppesen_30@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (783,2378,'Mari Overgaard Ringereide','solhjul@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (784,2379,'Grit Wessel','fam.wessel@outlook.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (785,2382,'Dorte Terkelsen','Dorte.terkelsen@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (786,2384,'Stine Lyholm','Stinelyholm@yahoo.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (787,2385,'Nina Raun','ninagregersen@yahoo.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (788,2389,'Eva Holm Kunckel Jørgensen','eva@kunckel.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (789,2391,'Rikke Gaba Lylover','kenneth@lylover.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (790,2392,'Bettina Rex','Andersrex@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (791,2394,'Kirsten Lundhøj Sørensen','familie@riki.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (792,2395,'Helle Lorenzen Riemke','bjarne_riemke@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (793,2400,'Maja Frendrup','majafrendrup@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (794,2401,'Jette Hansen','hansonjet@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (795,2402,'Tina Kissow Lildal','Kissow@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (796,2405,'Mia Lee Taarnhøj','mialeetaarnhoj@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (797,2409,'Dorte Wikborg Hartzner','dortehartzner@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (798,2411,'Mette Sloth Vogensen','mette@vogensen.net','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (799,2412,'Lene Grundsøe','lene@grundsoee.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (800,2413,'Tina Krabbenhøft','tinakrabbenhoft@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (801,2415,'Pernille Beltoft Rasmussen','Pernilleogjens@icloud.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (802,2416,'Lærke Andersen','laerkew@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (803,2417,'Rikke Brandt Broegaard','Rikke_broegaard@yahoo.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (804,2418,'Sanne Hansen','worsaaesvej22@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (805,2419,'Tanja Maria Hansen','hansen_tanja@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (806,2420,'Lene Hundborg Koss','Lene.hundborg@me.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (807,2422,'Hanne Riber','scandream@ofir.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (808,2423,'Ana Maria Garrido Lopez','Lopez_dk14@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (809,2424,'Maiken Engberg','je@cas.au.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (810,2425,'Troels Toft Nielsen','Troels.Toft@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (811,2428,'Lene Olsen','Lene.ballerup@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (812,2433,'Pia Nissen Olsen','pia.n.olsen@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (813,2434,'Kirsten Renstrøm','K.Renstroem@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (814,2437,'Maiken Christensen','majsle@yahoo.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (815,2438,'Dorthe Furstrand Lauritzen','furstrand@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (816,2439,'Majbritt Kold Bjørndal-Eskesen','makobe4@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (817,2441,'Helene Hartman Nielsen','Post@espejo.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (818,2442,'Caroline Clausen','p.astrup@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (819,2443,'Lise Kaiser','lika@kglteater.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (820,2444,'Pernille Dicte Bjernemose','pernilledicte@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (821,2446,'Trine Black Pedersen','jonas@vestfalen.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (822,2447,'Gepke Sønnichsen','gepke@soennichsen.biz','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (823,2448,'Verena Vanessa Irming-Pedersen','verena@irming-pedersen.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (824,2450,'Luise Ravnskjær','luipigen@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (825,2451,'Mette Geldersholt Nørkjær','mette@noerkjaer.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (826,2452,'Birgitte Escherich','be@kostkompagniet.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (827,2454,'Martine Vanden Eynde','vandeneynde.martine@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (828,2455,'Christine Dragsbæk Knudsen','Christine@ihd.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (829,2456,'Mette Karlshøj','mekarlshoej@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (830,2458,'Ida Franck Holm','kertemindevej77@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (831,2459,'Jette Silberbauer Gad','js@code5.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (832,2460,'Ann Stenbæk','annstenbaek@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (833,2461,'Louise Grosell','louise@grosell.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (834,2463,'Iben Hald Nørgaard','ibenraa@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (835,2464,'Lise Guldager Hoppe','Bjerg_lise@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (836,2465,'Britta Borup','britta@pfy.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (837,2466,'Vivi Lykkegaard','tilvivi@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (838,2467,'Stine Kristensen','siliks@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (839,2468,'Sandra Viig Seitzberg','sandraviigseitzberg@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (840,2469,'Sandra Højer Broge','sandra_broge@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (841,2470,'Christina Aaberg Warncke','GiftedChildren@aawa.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (842,2471,'Lise Skafte Jensen','liseskaftejensen@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (843,2473,'Solrun Bordoy Joensen','ronni.joensen@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (844,2474,'Lena Lee Skibye','lena@skibye.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (845,2475,'Eva Kyed Østerlind','bkyed@yahoo.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (846,2478,'Birgit Ravnholdt Christensen','b.ravnholdt@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (847,2479,'Kirstin Kring','Kirstinkring@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (848,2481,'Anna Ottesen Meidell','brian@mindflow.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (849,2482,'Gitte Vinding','gitte@vinding.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (850,2483,'Anja van Hauen','basa@live.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (851,2484,'Lee Tesone','leetesone@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (852,2486,'Pernille Diemer Reichmann','pernillediemer@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (853,2487,'Winnie Sørensen','Fam.s@rensen.se','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (854,2489,'Sascha Storm Siwmark','saschasiwmark@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (855,2492,'Josefine Christensen','josefine@josefine.me','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (856,2494,'Tinne Maibohm','tmaibohm@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (857,2495,'Rikke Lybæk Hansen','Rikke67@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (858,2496,'Kalina Cecilie Olsson Hans','giftedchildren@olzzon.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (859,2497,'Christina Schertiger','christina@schertiger.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (860,2501,'Malene Holm Johansen','maleneholmjohansen@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (861,2502,'Suzanne Klarskov Anthony','suzanne@anthony.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (862,2503,'Anita Gravgaard Lassen','Anita@homeplease.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (863,2504,'Trine Søberg','Trine@timt.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (864,2505,'Trine Buch','trinebuch@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (865,2507,'Lena Andersen','lena_nomade@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (866,2508,'Eline Holst Hansen','linehh@bbsyd.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (867,2509,'Joan Dahl Nielsen','joan.d.nielsen@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (868,2510,'Knud Hedegård Jensen','knud_hedegaard@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (869,2511,'Jan Rørgård Hansen','jan@jrha.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (870,2512,'Rikke Hjort Hansen','rikke.hjort@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (871,2513,'Ditte Svane','dittesvane@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (872,2514,'Lars Pallesen','lars.pallesen@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (873,2515,'Dorte Skouborg','Dorte@skouborg-web.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (874,2516,'Christina Krabbe Sommerlund','Krabbe.ck@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (875,2517,'Katrine Nørgaard Thulesen','olsenogthulesen@mail.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (876,2518,'Mandie Camara','mandlo2@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (877,2519,'Karin Storkholm','storkholm@bbsyd.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (878,2520,'Louise Thingholm','louiseth@tdcadsl.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (879,2521,'Lisa Mathilde Hvideg','Lisa.hvideg@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (880,2522,'Sessan Holmberg','sessanholmberg@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (881,2523,'Katrine Bredsdorff Bargisen','katrinebredsdorff@msn.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (882,2524,'Maria Nørgaard Søgaard','mariansoegaard@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (883,2525,'Gerda Lund','Jens.arnfelt@arnfelt.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (884,2527,'Mette Elise Zeruneith','mettezeruneith@yahoo.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (885,2529,'Trine Uldall','Trine@media-now.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (886,2530,'Joan Rytter','joan@joan-mads.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (887,2531,'Mona Heide Petersen','mona.heide@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (888,2532,'Niels Enersen','niels@enersen.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (889,2533,'Berit Lohse','beritlohse@icloud.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (890,2534,'Sasja Møller Jensen','martin@service-365.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (891,2535,'Bolette Louise Sig Mathiasen','bolettelouise@hotmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (892,2536,'Bitten Herbst Rønnow','bittenherbst@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (893,2537,'Charlotte Andersen','martin.preuss.nielsen@gmail.com','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (894,2538,'Maja Helena Riis','maja@majariis.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (895,2540,'Birgitta Bergström','kristian@lykkegaardsorensen.dk','2017-02-07 09:25:23','2017-02-07 09:25:23',NULL,NULL),
 (896,2541,'Milia Wagner','info@wagnerfotografi.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (897,2542,'Christina Kruse Hansen','Chris.raz@mail.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (898,2544,'Lotte Wahlun Olesen','Lotte.wahlun.olesen@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (899,2545,'Camilla Henriksen','camhen@mail.tele.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (900,2546,'Aimee Hansen','haac@post.tele.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (901,2549,'Charlotte Hviid Lauridsen','hviidlau@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (902,2550,'Camilla Lundin Overbeck','Camilla.overbeck@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (903,2551,'Anja Skjoldborg Hansen','anja.skjoldborg@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (904,2552,'Lillian Jespersen','lillian@jespersenmail.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (905,2554,'Khushboo Verma','Khushboo.verma84@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (906,2555,'Sisse Fog Odgaard','sissefog@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (907,2558,'Susanne Eiler','susanne@cumuli.net','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (908,2560,'Charlotte Hultberg','charlottehultberg@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (909,2562,'Katrina í Geil','Katrina.i.geil@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (910,2563,'Gitte Dyrholm Bech','henrikdbech@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (911,2564,'Julie Højlund Rasmussen','julieh.julie@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (912,2565,'Yanaba Rymark Sankoh','yanabasankoh@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (913,2566,'Christina Rask Thomsen','thomas_rask@mac.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (914,2567,'Anne-Mette Laage','annemettelaage@yahoo.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (915,2568,'Gitte Normann Munch-Petersen','gitte.normann@munch-petersen.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (916,2569,'Anna Freya Lykkegren','a.eistrup@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (917,2571,'Karina Nyegaard Møller','knp1610@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (918,2572,'Lene Tscherning Christensen','lene@rcglasogramme.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (919,2574,'Lisbeth Rasmussen','smedien@os.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (920,2575,'Lotte Grønborg','Jan.gronborg@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (921,2576,'Lis K. Gregersen','lis_gregersen@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (922,2578,'Ditte Bykærholm Nielsen','dittcheen@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (923,2580,'Torunn Laksafoss','torunn@likam.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (924,2581,'Dorthe Poulsen MacKay','dorthe@mackay.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (925,2582,'Camilla Poulsen','Camilla@peca.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (926,2583,'Joan Birk Nielsen','joanbirk@mail.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (927,2584,'Sofiia Ellisabet Bjerre','sofiiasays@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (928,2585,'Johanne Bundgaard Fleck Søder','JohanneBFS@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (929,2586,'Mona Munkebo Winkel','mona@provinsen.net','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (930,2587,'Maria Moesgaard Lauridsen','moesgaardlauridsen@jubii.dk','2017-02-07 09:25:24','2017-03-21 20:51:40',NULL,NULL),
 (931,2588,'Vibeke Lyngklip Svansø','vsvansoe@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (932,2589,'Anette Marcher','anettemarcher@mail.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (933,2590,'Maibritt Mark Hansen','kjo@agilease.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (934,2591,'Malene Faber-Rod Munch','martin@munchnet.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (935,2594,'Maja Reinhold Jensen','Majareinhold@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (936,2595,'Lise Mørup Dalsgaard','dalsgaardlm@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (937,2596,'Gitte Buchholtz','Gitte.buchholtz@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (938,2597,'Majken Falkenberg Dohn','mfd@rmig.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (939,2599,'Joan Anella Petersen','joan@jofpetersen.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (940,2600,'Winnie Juel Søndergaard','fjs@tornskovgaard.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (941,2601,'Stella Due','Due.villadsen@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (942,2602,'Trine Grønbek Hamborg','trine@hamborgdesign.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (943,2603,'Tania Natascha Ayla Annesen','Predatoria85@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (944,2604,'Helle Skibsted Nielsen','skibsen@privat.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (945,2605,'Mie Obel Thomsen','mieobel@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (946,2606,'Sidsel Toft Bossen','sidsel@rhodin.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (947,2607,'Susanne Andersen','susmorand@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (948,2609,'Rikke Birkedal Hansen','gc@paal.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (949,2610,'Anna Tolstrup Jensen','annatolstrup@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (950,2612,'Dorthe Clemens Pedersen','anders@tillebeck.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (951,2613,'Anne Marie Ahlefeldt-Laurvigen','Aahlen2@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (952,2615,'Sussie Thomsen','sussiethomsen@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (953,2617,'Dorthe Frydenlund','frydenlund30@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (954,2618,'Nina Husfeldt Clasen','david.clasen@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (955,2619,'Christine Bonnerup Byrgesen','christinebyrgesen@msn.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (956,2620,'Helene Sophie Spoor','Helene_Spoor@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (957,2621,'Anna Duus Hjortsø','annaduus@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (958,2622,'Sissel Moody Elsberg Jørgensen','sissel_moody@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (959,2623,'Marina Gundelach','marinagundelach@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (960,2624,'Muriel Lacomble Nielsen','muriel.lacomble@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (961,2625,'Annika Lion Kristensen','annikalion@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (962,2626,'Nina Sommer','mail@ninasommer.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (963,2627,'Pernille Hvid Tønder','familien@hvidtonder.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (964,2628,'Eva Heitmann Foster','eaheitmann@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (965,2629,'Johanne Schmith','johanneschmith@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (966,2630,'Maria Jansdal','maria@jansdal.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (967,2631,'Marianne Høgh','Homestylexx@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (968,2632,'Janne Kjærgaard Dahl','1andersdahl@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (969,2633,'Lollo Aarup Pedersen','Mads@aarup.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (970,2635,'Ida May','idakmay@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (971,2636,'Susanne Truelsen Kruse','bo.kruse@telia.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (972,2638,'Thea Marie Drachen','theadrachen@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (973,2640,'Maria Nouvel Buch-Jakobsen','mbj@numerus.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (974,2641,'Solveig Sturlaugsdottir','solveig_st@yahoo.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (975,2642,'Trine Heising','trineheising@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (976,2643,'Trine Jakobik Kolding','tk@trinekolding.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (977,2644,'Birgit Jordansen','bj@b-jordan.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (978,2645,'Henriette Lied Viskinge Jensen','erikkjaerhansen@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (979,2646,'Astrid Skjoldborg Glans','astrid@mandoe.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (980,2647,'Tania Borre','taniaborre@email.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (981,2648,'Susan Løvstad Holdt','susanholdt@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (982,2649,'Lisette Treu Lind','Ltpetersen@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (983,2650,'Kristian Buhl Axelsen','kax@plen.ku.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (984,2651,'Majken Jacobsen','Danielvandijklarsen@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (985,2652,'Linda Aagaard Thomsen','bjorn@aagaard-thomsen.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (986,2653,'Pernille Paaske  Autzen','pernille@pspa.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (987,2654,'Stine Money','Stinemoney79@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (988,2655,'Maibrit Jürs','jacob@stinkfoot.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (989,2656,'Xenia Kruse','mailmixe@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (990,2657,'Hanne Urlev Sørensen','urlev@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (991,2658,'Tina Ryom Zachariassen','per.zachariassen@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (992,2659,'Mette Vadsholt Lyster','sune.lyster@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (993,2660,'Malene Riegels Thisted','malene_riegels@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (994,2661,'Merete Guldberg','mereteguldberg@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (995,2662,'Stine Staunsager Larsen','stinestaunsager@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (996,2663,'Berit Kramer','beritkramer@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (997,2664,'Anita Ray','anita@ray.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (998,2665,'Karina Krog Rosendal','karinarosendal@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (999,2666,'Catherine D. Kjerulf','Catherine@kjerulf.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (1000,2667,'Anette Kjær','akj@dcscandinavia.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (1001,2668,'Pia Hyldebrandt Hansen','thomasbsander@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (1002,2669,'Lene Daugaard-Jensen','Lene_daugaard@hotmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (1003,2670,'Pia Brandt Danborg','piadanborg@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (1004,2671,'Signe Arrhenius','signearrhenius@gmail.com','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (1005,2673,'Maiken Weishaupt','mw@xot.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (1006,2674,'Ulla Irene Quantrill Hvilsom','ulla@hvilsom.net','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (1007,2675,'Mia Daniella Pedersen','miadp@hotmail.dk','2017-02-07 09:25:24','2017-02-07 09:25:24',NULL,NULL),
 (1008,2676,'Berit Pold','bpol@viborg.dk','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL),
 (1009,2677,'Anja Thormann','anjathormann@hotmail.com','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL),
 (1010,2678,'Iben Vransø','ibenvranso@me.com','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (1011,2679,'Heidi Nygaard Svendsen','lsvendsen@nordfiber.dk','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL),
 (1012,2680,'Lærke Christina Priergaard Morell','timpriergaard@live.dk','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL),
 (1013,2681,'Betina Dress Knøfler','betinadress@hotmail.com','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL),
 (1014,2682,'Line Dyrborg','familiendyrborg@gmail.com','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL),
 (1015,2683,'Melinda Trærup-Hansen','Meauxnopoly2@aol.co.uk','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL),
 (1016,2684,'Jette Lunddal Larsen','jette@lunddal.dk','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL),
 (1017,2685,'Nina Marie Callesen','nmcallesen@gmail.com','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL),
 (1018,2686,'Laila Franciska Buxbom Petersen','laila_franciska@hotmail.com','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL),
 (1019,2687,'Sofia Bartholin','sofiabartholin@gmail.com','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (1020,2688,'Sabina Jeanett Flensmark','sabinaflensmark@gmail.com','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL),
 (1021,2689,'Julia Buus Nicholson','Julia.nicholson83@gmail.com','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL),
 (1022,2690,'Helene Nielsen','helenebirger@gmail.com','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL),
 (1023,2691,'Lise Sofie Bislev','lisesofiebislev@gmail.com','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL),
 (1024,2692,'Asta Teilum','ateilum@yahoo.co.uk','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL),
 (1025,2693,'Henriette Hilding','henriette.hilding@gmail.com','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL),
 (1026,2694,'Anja Lemming Wittus','anjawittus@gmail.com','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL),
 (1027,2695,'Asta Halmøe','Claus.m.halmoe@privat.dk','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL),
 (1028,2696,'Anne Skovsby Toft','annetoft@image.dk','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (1029,2697,'Tine Vilandt Rasmussen','tinevilandt@gmail.com','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL),
 (1030,2698,'Rina Wachsberg','Rinwa@dongenergy.dk','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL),
 (1031,2699,'Henriette Høj Gharib','henriettegharib@yahoo.com','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL),
 (1032,2700,'Ditte Kruse Dalker','dittedalker@webspeed.dk','2017-02-07 09:25:25','2017-02-07 09:25:25',NULL,NULL),
 (1033,2701,'Anders Toxværd Nielsen','tox@xot.dk','2017-02-07 09:25:25','2017-03-19 20:32:17',NULL,''),
 (1035,1374,'Mette Kirk Mailand','mkm@cabh.dk','2017-03-21 20:51:30','2017-03-21 20:51:30',NULL,NULL),
 (1036,1797,'Anne Kirstine Waage Beck','akwaagebeck@gmail.com','2017-03-21 20:51:33','2017-03-21 20:51:33',NULL,NULL),
 (1037,1945,'Karin Tverelv Hjerresen','karinhjerresen@me.com','2017-03-21 20:51:34','2017-03-21 20:51:34',NULL,NULL),
 (1038,2099,'Maria Bernbom Svejstrup','maria@reflekt.dk','2017-03-21 20:51:35','2017-03-21 20:51:35',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (1039,2702,'Nadja Seetha Munk Tandrup','nadja.tandrup@gmail.com','2017-03-21 20:53:26','2017-03-21 20:53:26',NULL,NULL),
 (1040,2703,'Hanne Lunden Just','hannelunden@hotmail.dk','2017-03-21 20:53:26','2017-03-21 20:53:26',NULL,NULL),
 (1041,2704,'Solveig Grundtdal Grønborg','solveiggroenborg@live.dk','2017-03-21 20:53:26','2017-03-21 20:53:26',NULL,NULL),
 (1042,2705,'Sisse Malene Wesselhoff','Ssp.wesselhoff@hotmail.com','2017-03-21 20:53:26','2017-03-21 20:53:26',NULL,NULL),
 (1043,2706,'Micha Meedom','michameedom@gmail.com','2017-03-21 20:53:26','2017-03-21 20:53:26',NULL,NULL),
 (1044,2707,'Anne Jacobsen','engen10@turbopost.dk','2017-03-21 20:53:26','2017-03-21 20:53:26',NULL,NULL),
 (1045,2708,'Lise Nottelmann','lnottelmann@hotmail.com','2017-03-21 20:53:26','2017-03-21 20:53:26',NULL,NULL),
 (1046,2709,'Hanne Bun Thorsen','hanbuntho@gmail.com','2017-03-21 20:53:26','2017-03-21 20:53:26',NULL,NULL),
 (1047,2710,'Line Lillevang Nørregård Larsen','linenorregaard@hotmail.com','2017-03-21 20:53:26','2017-03-21 20:53:26',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (1048,2711,'Kirsten Brøde Manly','kirstenbj@yahoo.dk','2017-03-21 20:53:26','2017-03-21 20:53:26',NULL,NULL),
 (1049,2712,'Luise Bæk Bomme','luisebomme@gmail.com','2017-03-21 20:53:26','2017-03-21 20:53:26',NULL,NULL),
 (1050,2713,'Tanja Glückstadt Heien','tanja@henta.dk','2017-03-21 20:53:26','2017-03-21 20:53:26',NULL,NULL),
 (1051,2714,'Maj Daae Christensen','maj_sen@hotmail.com','2017-03-21 20:53:26','2017-03-21 20:53:26',NULL,NULL),
 (1052,2715,'Jenny Færch','jenny.faerch@gmail.com','2017-03-21 20:53:26','2017-03-21 20:53:26',NULL,NULL),
 (1053,2716,'Katrine Mollerup Birch','lily@elefantpost.dk','2017-03-21 20:53:27','2017-03-21 20:53:27',NULL,NULL),
 (1054,2717,'Gertrud Sander Fischer','Trutte77@gmail.com','2017-03-21 20:53:27','2017-03-21 20:53:27',NULL,NULL),
 (1055,2718,'Rosita Roos','rositaroos73@gmail.com','2017-03-21 20:53:27','2017-03-21 20:53:27',NULL,NULL),
 (1056,2719,'Charlotte Mikkelsen','mikkelsenorama@gmail.com','2017-03-21 20:53:27','2017-03-21 20:53:27',NULL,NULL);
INSERT INTO `members` (`id`,`number`,`name`,`email`,`created_at`,`updated_at`,`housing_type_id`,`housing_number`) VALUES
 (1057,2720,'Signe Rasmussen Ulnits','ulnits@gmail.com','2017-03-21 20:53:27','2017-03-21 20:53:27',NULL,NULL),
 (1058,2721,'Nana Jensen','nanahyo@gmail.com','2017-03-21 20:53:27','2017-03-21 20:53:27',NULL,NULL),
 (1059,2722,'Trine Brinks','trinebrinks0606@gmail.com','2017-03-21 20:53:27','2017-03-21 20:53:27',NULL,NULL),
 (1060,2723,'Mette Schou','mette.schou.dk@gmail.com','2017-03-21 20:53:27','2017-03-21 20:53:27',NULL,NULL),
 (1061,2724,'Karina C. Schlichtkrull','karina@schlichtkrull.org','2017-03-21 20:53:27','2017-03-21 20:53:27',NULL,NULL);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;


--
-- Table structure for table `sl17_development`.`passwords`
--

DROP TABLE IF EXISTS `passwords`;
CREATE TABLE `passwords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_passwords_on_member_id` (`member_id`),
  CONSTRAINT `fk_rails_b5695beacf` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sl17_development`.`passwords`
--

/*!40000 ALTER TABLE `passwords` DISABLE KEYS */;
INSERT INTO `passwords` (`id`,`password`,`member_id`,`created_at`,`updated_at`) VALUES
 (1,'hakke94',354,'2017-03-11 22:07:56','2017-03-11 22:07:56'),
 (2,'hakke94',354,'2017-03-12 08:55:29','2017-03-12 08:55:29'),
 (3,'hakke94',354,'2017-03-12 20:36:41','2017-03-12 20:36:41'),
 (4,'hakke94',354,'2017-03-12 20:39:07','2017-03-12 20:39:07'),
 (5,'hakke94',354,'2017-03-12 20:40:10','2017-03-12 20:40:10'),
 (6,'hakke94',354,'2017-03-12 21:52:59','2017-03-12 21:52:59'),
 (7,'grus28',288,'2017-03-15 17:54:19','2017-03-15 17:54:19'),
 (8,'krukke53',1033,'2017-03-17 06:25:02','2017-03-17 06:25:02'),
 (9,'skrue42',32,'2017-03-21 16:18:53','2017-03-21 16:18:53'),
 (10,'spand85',75,'2017-03-21 16:28:53','2017-03-21 16:28:53'),
 (11,'spade86',76,'2017-03-21 16:34:16','2017-03-21 16:34:16'),
 (12,'spand50',850,'2017-03-21 19:40:53','2017-03-21 19:40:53');
/*!40000 ALTER TABLE `passwords` ENABLE KEYS */;


--
-- Table structure for table `sl17_development`.`people`
--

DROP TABLE IF EXISTS `people`;
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
) ENGINE=InnoDB AUTO_INCREMENT=1104 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sl17_development`.`people`
--

/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` (`id`,`name`,`member_id`,`ptype_id`,`created_at`,`updated_at`,`aargang`,`koen`,`invoice_id`,`housing_type_id`,`housing_number`,`phone`,`host_member`) VALUES
 (1097,'Klaus',354,1,'2017-03-13 06:13:50','2017-03-13 06:13:50',NULL,'M',25,NULL,NULL,'',NULL),
 (1098,'Victoria',354,3,'2017-03-13 06:14:45','2017-03-13 06:14:45','2004-06-05','K',27,NULL,NULL,'',NULL),
 (1099,'Colette',354,4,'2017-03-13 06:19:51','2017-03-13 07:30:23','2015-06-18','K',28,NULL,NULL,'',NULL),
 (1101,'Hans',354,2,'2017-03-18 08:29:02','2017-03-18 08:29:02',NULL,'M',29,NULL,NULL,'',NULL),
 (1102,'Brian',288,1,'2017-03-19 06:47:52','2017-03-19 06:47:52',NULL,'M',35,NULL,NULL,NULL,NULL),
 (1103,'Heine',1033,2,'2017-03-19 20:32:17','2017-03-19 20:45:26',NULL,'M',33,NULL,NULL,'',1357);
/*!40000 ALTER TABLE `people` ENABLE KEYS */;


--
-- Table structure for table `sl17_development`.`places`
--

DROP TABLE IF EXISTS `places`;
CREATE TABLE `places` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `limited` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sl17_development`.`places`
--

/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` (`id`,`name`,`description`,`limited`,`created_at`,`updated_at`) VALUES
 (1,'Basketballbanen','','','2017-03-23 20:50:59','2017-03-23 20:50:59'),
 (2,'Fællesområdet','','','2017-03-23 20:51:15','2017-03-23 20:51:15'),
 (3,'Fodboldbanen','','','2017-03-23 20:51:32','2017-03-23 20:51:32'),
 (4,'Konferencen','','','2017-03-23 20:51:46','2017-03-23 20:51:46'),
 (5,'Kontorvognen','','','2017-03-23 20:51:59','2017-03-23 20:51:59'),
 (6,'Laden','','','2017-03-23 20:52:10','2017-03-23 20:52:10'),
 (7,'Stranden','','','2017-03-23 20:52:21','2017-03-23 20:52:21'),
 (8,'Svømmehallen','','','2017-03-23 20:52:40','2017-03-23 20:52:40'),
 (9,'Teenage-teltet','','','2017-03-23 20:52:59','2017-03-23 20:52:59'),
 (10,'Telt 1','','','2017-03-23 20:53:13','2017-03-23 20:53:13'),
 (11,'Telt 2','','','2017-03-23 20:53:21','2017-03-23 20:53:21'),
 (12,'Telt 3','','','2017-03-23 20:53:30','2017-03-23 20:53:30'),
 (13,'Telt 4','','','2017-03-23 20:53:40','2017-03-23 20:53:40'),
 (14,'Telt 5','','','2017-03-23 20:53:50','2017-03-23 20:53:50'),
 (15,'Telt 6','','','2017-03-23 20:54:06','2017-03-23 20:54:06');
INSERT INTO `places` (`id`,`name`,`description`,`limited`,`created_at`,`updated_at`) VALUES
 (16,'TV-Hytten','','','2017-03-23 20:54:20','2017-03-23 20:54:20');
/*!40000 ALTER TABLE `places` ENABLE KEYS */;


--
-- Table structure for table `sl17_development`.`ptypes`
--

DROP TABLE IF EXISTS `ptypes`;
CREATE TABLE `ptypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `price` int(11) DEFAULT NULL,
  `datereq` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sl17_development`.`ptypes`
--

/*!40000 ALTER TABLE `ptypes` DISABLE KEYS */;
INSERT INTO `ptypes` (`id`,`name`,`created_at`,`updated_at`,`price`,`datereq`) VALUES
 (1,'Voksen 21-','2017-02-07 09:34:29','2017-02-07 09:34:29',250,0),
 (2,'Myndig 18-20','2017-02-07 09:34:57','2017-02-07 09:34:57',250,0),
 (3,'Barn 4-17','2017-02-07 09:35:34','2017-02-07 09:35:34',125,1),
 (4,'Barn 0-3','2017-02-07 09:35:48','2017-02-07 09:35:48',0,1),
 (5,'Ukendt','2017-02-07 09:36:02','2017-02-07 09:36:02',0,0);
/*!40000 ALTER TABLE `ptypes` ENABLE KEYS */;


--
-- Table structure for table `sl17_development`.`roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sl17_development`.`roles`
--

/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`,`name`,`created_at`,`updated_at`) VALUES
 (1,'admin','2017-03-15 08:02:36','2017-03-17 06:05:13');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;


--
-- Table structure for table `sl17_development`.`schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sl17_development`.`schema_migrations`
--

/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` (`version`) VALUES
 ('20170128095607'),
 ('20170128100502'),
 ('20170128100733'),
 ('20170128103705'),
 ('20170128103927'),
 ('20170128104253'),
 ('20170128104348'),
 ('20170128113806'),
 ('20170128113854'),
 ('20170128142304'),
 ('20170128142603'),
 ('20170128164203'),
 ('20170128164348'),
 ('20170128164555'),
 ('20170128165636'),
 ('20170128165705'),
 ('20170128200947'),
 ('20170204094407'),
 ('20170204141518'),
 ('20170207135917'),
 ('20170225095709'),
 ('20170225101222'),
 ('20170227130738'),
 ('20170227131030'),
 ('20170303204241'),
 ('20170305180151'),
 ('20170305210156'),
 ('20170305210212'),
 ('20170305210302'),
 ('20170305210315'),
 ('20170306060915'),
 ('20170307173318'),
 ('20170307175633'),
 ('20170315064051'),
 ('20170315071955'),
 ('20170328103611'),
 ('20170328103630');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;


--
-- Table structure for table `sl17_development`.`tasks`
--

DROP TABLE IF EXISTS `tasks`;
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

--
-- Dumping data for table `sl17_development`.`tasks`
--

/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;


--
-- Table structure for table `sl17_development`.`tickets`
--

DROP TABLE IF EXISTS `tickets`;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sl17_development`.`tickets`
--

/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` (`id`,`person_id`,`activity_id`,`created_at`,`updated_at`,`invoice_id`) VALUES
 (1,1101,157,'2017-03-28 19:59:08','2017-03-28 19:59:08',29),
 (2,1097,157,'2017-03-28 19:59:22','2017-03-28 19:59:22',29),
 (3,1102,157,'2017-03-28 20:07:00','2017-03-28 20:07:00',38);
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;


--
-- Table structure for table `sl17_development`.`words`
--

DROP TABLE IF EXISTS `words`;
CREATE TABLE `words` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sl17_development`.`words`
--

/*!40000 ALTER TABLE `words` DISABLE KEYS */;
INSERT INTO `words` (`id`,`word`,`created_at`,`updated_at`) VALUES
 (1,'spand','2017-02-25 10:15:06','2017-02-25 10:15:06'),
 (2,'spade','2017-02-25 10:15:48','2017-02-25 10:15:48'),
 (3,'skovl','2017-02-25 10:15:55','2017-02-25 10:15:55'),
 (4,'rive','2017-02-25 10:16:56','2017-02-25 10:16:56'),
 (5,'hakke','2017-02-25 10:17:27','2017-02-25 10:17:27'),
 (6,'plov','2017-02-25 10:21:41','2017-02-25 10:21:41'),
 (7,'hammer','2017-02-25 10:25:10','2017-02-25 10:25:10'),
 (8,'skrue','2017-02-25 10:27:04','2017-02-25 10:27:04'),
 (9,'krukke','2017-02-25 10:28:16','2017-02-25 10:28:16'),
 (10,'glas','2017-02-25 10:28:22','2017-02-25 10:28:22'),
 (11,'bord','2017-02-25 10:29:22','2017-02-25 10:29:22'),
 (12,'stol','2017-02-25 10:29:27','2017-02-25 10:29:27'),
 (13,'flise','2017-02-25 10:30:13','2017-02-25 10:30:13'),
 (14,'grus','2017-02-25 10:30:34','2017-02-25 10:30:34'),
 (15,'hegn','2017-02-25 10:30:45','2017-02-25 10:30:45'),
 (16,'vindue','2017-02-25 10:34:47','2017-02-25 10:34:47'),
 (17,'stige','2017-02-25 10:35:04','2017-02-25 10:35:04'),
 (18,'telt','2017-02-25 10:39:47','2017-02-25 10:39:47');
INSERT INTO `words` (`id`,`word`,`created_at`,`updated_at`) VALUES
 (19,'hytte','2017-02-25 10:40:26','2017-02-25 10:40:26'),
 (20,'kost','2017-02-25 10:43:58','2017-02-25 10:43:58'),
 (21,'port','2017-02-25 10:47:23','2017-02-25 10:47:23'),
 (22,'kande','2017-02-25 10:51:00','2017-02-25 10:51:00'),
 (23,'sofa','2017-02-25 10:55:34','2017-02-25 10:55:34'),
 (24,'gryde','2017-02-25 10:56:26','2017-02-25 10:56:26'),
 (25,'pande','2017-02-25 10:56:36','2017-02-25 10:56:36');
/*!40000 ALTER TABLE `words` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
