-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: myengine
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add user',7,'add_user'),(26,'Can change user',7,'change_user'),(27,'Can delete user',7,'delete_user'),(28,'Can view user',7,'view_user'),(29,'Can add gameinfo',8,'add_gameinfo'),(30,'Can change gameinfo',8,'change_gameinfo'),(31,'Can delete gameinfo',8,'delete_gameinfo'),(32,'Can view gameinfo',8,'view_gameinfo');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'main','gameinfo'),(7,'main','user'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-04-01 20:32:01.430362'),(2,'auth','0001_initial','2025-04-01 20:32:02.107053'),(3,'admin','0001_initial','2025-04-01 20:32:02.278575'),(4,'admin','0002_logentry_remove_auto_add','2025-04-01 20:32:02.286291'),(5,'admin','0003_logentry_add_action_flag_choices','2025-04-01 20:32:02.295165'),(6,'contenttypes','0002_remove_content_type_name','2025-04-01 20:32:02.425372'),(7,'auth','0002_alter_permission_name_max_length','2025-04-01 20:32:02.510735'),(8,'auth','0003_alter_user_email_max_length','2025-04-01 20:32:02.535623'),(9,'auth','0004_alter_user_username_opts','2025-04-01 20:32:02.545301'),(10,'auth','0005_alter_user_last_login_null','2025-04-01 20:32:02.615972'),(11,'auth','0006_require_contenttypes_0002','2025-04-01 20:32:02.619087'),(12,'auth','0007_alter_validators_add_error_messages','2025-04-01 20:32:02.626405'),(13,'auth','0008_alter_user_username_max_length','2025-04-01 20:32:02.705143'),(14,'auth','0009_alter_user_last_name_max_length','2025-04-01 20:32:02.783141'),(15,'auth','0010_alter_group_name_max_length','2025-04-01 20:32:02.807508'),(16,'auth','0011_update_proxy_permissions','2025-04-01 20:32:02.816092'),(17,'auth','0012_alter_user_first_name_max_length','2025-04-01 20:32:02.890661'),(18,'sessions','0001_initial','2025-04-01 20:32:02.931980'),(19,'main','0001_initial','2025-04-01 21:13:06.747547'),(20,'main','0002_user_username','2025-04-01 21:28:19.820501'),(21,'main','0003_alter_user_id','2025-04-01 21:53:34.830988'),(22,'main','0004_alter_user_password','2025-04-01 21:55:03.621218'),(23,'main','0005_alter_user_password','2025-04-01 21:57:19.919164'),(24,'main','0006_alter_user_id','2025-04-02 19:04:29.640739'),(26,'main','0008_rename_gener_gameinfo_genre','2025-04-04 15:32:08.439501'),(27,'main','0009_gameinfo_release_date_gameinfo_walk','2025-04-04 15:51:15.089527'),(28,'main','0010_alter_gameinfo_release_date','2025-04-04 15:51:15.093076'),(29,'main','0011_alter_gameinfo_release_date','2025-04-04 15:51:15.096281'),(30,'main','0012_alter_gameinfo_release_date','2025-04-04 15:51:15.098768'),(31,'main','0013_remove_gameinfo_release_date','2025-04-04 15:51:15.101370'),(32,'main','0007_gameinfo','2025-04-04 16:06:46.532827'),(33,'main','0008_gameinfo_deveoper_gameinfo_publisher_and_more','2025-04-05 13:04:49.887107'),(34,'main','0009_rename_deveoper_gameinfo_developer','2025-04-05 13:13:02.292399');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('9jyh3mrd78vhg3nsngpq42neidceg2qi','eyJ1c2VyX2lkIjoxLCJ1c2VybmFtZSI6Ik5laWwifQ:1u1iIP:MCjq2k66_r7Ek3SLzBi_enmseqsun9Ebhm1f1WLI_ks','2025-04-21 08:57:33.527207');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_gameinfo`
--

DROP TABLE IF EXISTS `main_gameinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_gameinfo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `release_date` date NOT NULL,
  `description` longtext NOT NULL,
  `video_url` varchar(200) NOT NULL,
  `genre` varchar(1000) NOT NULL,
  `image` varchar(100) NOT NULL,
  `topurch` varchar(200) NOT NULL,
  `walk` varchar(200) NOT NULL,
  `sys_req` longtext NOT NULL,
  `developer` longtext NOT NULL DEFAULT (_utf8mb3'unknown'),
  `publisher` longtext NOT NULL DEFAULT (_utf8mb3'unknown'),
  `summary` longtext NOT NULL DEFAULT (_utf8mb3'unknown'),
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_gameinfo`
--

LOCK TABLES `main_gameinfo` WRITE;
/*!40000 ALTER TABLE `main_gameinfo` DISABLE KEYS */;
INSERT INTO `main_gameinfo` VALUES (1,'Elden Ring','2022-02-25','THE CRITICALLY ACCLAIMED FANTASY ACTION RPG Rise, Tarnished, and be guided by grace to brandish the power of the Elden Ring. A Breathtaking World Full of Excitement and Mystery The Lands Between are part of a vast continent where magnificent open fields and huge dungeons with complex and three-dimensional designs are seamlessly connected. As you explore, the joy of discovering unknown and overwhelming threats awaits you. Mastery of the terrain and knowledge of its secrets can help you overcome enemies and defeat formidable bosses or lead invading players into traps.','https://www.youtube.com/embed/K_03kFqWfqs?si=v1Nr6Gh56FC0Y4k_','Souls-like Open-World Fantasy Adventure RPG Action Multiplayer Singleplayer Online Co-Op PvP Nonlinear','images/elden.jpeg','https://store.steampowered.com/app/1245620/ELDEN_RING/','https://youtube.com/playlist?list=PLfsmrw646ObU08G4mP8KH6O-mV43UKHAa&si=PqdgGp9w3PSj516v','MINIMUM: Requires a 64-bit processor and operating system OS: Windows 10 Processor: INTEL CORE I5-8400 or AMD RYZEN 3 3300X Memory: 12 GB RAM Graphics: NVIDIA GEFORCE GTX 1060 3 GB or AMD RADEON RX 580 4 GB DirectX: Version 12 Storage: 60 GB available space Sound Card: Windows Compatible Audio Device','FromSoftware, Inc.','FromSoftware, Inc., Bandai Namco Entertainment','THE CRITICALLY ACCLAIMED FANTASY ACTION RPG. Rise, Tarnished, and be guided by grace to brandish the power of the Elden Ring and become an Elden Lord in the Lands Between.'),(3,'Marvel\'s Spider-Man 2','2025-01-30','Spider-Sense tinglingâ€¦ Mask-up for more thrilling web-slinging heroics as Marvelâ€™s Spider-Man 2 swings onto PC. Developed by Insomniac Games in collaboration with Marvel, and optimized for PC by Nixxes Software. A city under siege! Spider-Men Peter Parker and Miles Morales face the ultimate test of strength inside and outside the mask as they fight to save the city, each other and the ones they love, from the monstrous Venom and the dangerous new symbiote threat. Traverse an expanded Marvelâ€™s New York Explore a larger Marvelâ€™s New York than ever before, featuring two new boroughs â€“ Brooklyn and Queens â€“ as well as locations like Coney Island, and more. Swing, jump, and utilize the new Web Wings to travel across the city, switching between Peter Parker and Miles Morales in open world exploration to experience different stories and epic new powers. Experience two playable Spider-Men Wield Peterâ€™s new symbiote abilities and Milesâ€™ explosive bio-electric venom powers, and discover upgradeable, high-tech equipment that enhances the combat experience for extensive gameplay depth and variety. Battle iconic Marvel Super Villains Fight against a variety of new and iconic villains, including an original take on the monstrous Venom, the ruthless Kraven the Hunter, the volatile Lizard, and many more! A more accessible Spider-Man experience Support for a range of accessibility features strives to create a Marvelâ€™s Spider-Man experience without barriers, that can be enjoyed by more players of different abilities.','https://www.youtube.com/embed/nq1M_Wc4FIc?si=swZgTGFA1bgN3gWw','Action Superhero Open-World Singleplayer Adventure','images/spiderman2.jpeg','https://store.steampowered.com/app/2651280/Marvels_SpiderMan_2/','https://youtube.com/playlist?list=PLs1-UdHIwbo6hrIalu0EPzcAMTskn-wZX&si=CQzxqarCJ4Lcvnpw','MINIMUM: Requires a 64-bit processor and operating system OS: Windows 10/11 (version 1909 or higher) Processor: Intel Core i3-8100 or AMD Ryzen 3 3100 Memory: 16 GB RAM Graphics: NVIDIA GeForce GTX 1650 or AMD Radeon RX 5500 XT Storage: 140 GB available space Additional Notes: SSD Required','Insomniac Games, Nixxes Software','PlayStation Publishing LLC','Be Greater. Together. The incredible power of the symbiote forces Peter Parker and Miles Morales into a desperate fight as they balance their lives, friendships, and their duty to protect in an exciting chapter of the critically acclaimed Spider-Man franchise on PC.'),(4,'Marvel\'s Spider-Man Remastered','2022-08-12','Be Greater When iconic Marvel villains threaten Marvelâ€™s New York, Peter Parker and Spider-Manâ€™s worlds collide. To save the city and those he loves, he must rise up and be greater. Feel like Spider-Man After eight years behind the mask, Peter Parker is a crime-fighting master. Feel the full power of a more experienced Spider-Man with improvisational combat, dynamic acrobatics, fluid urban traversal and environmental interactions. Worlds collide The worlds of Peter Parker and Spider-Man collide in an original action-packed story. In this new Spider-Man universe, iconic characters from Peter and Spider-Manâ€™s lives have been reimagined, placing familiar characters in unique roles. Marvelâ€™s New York is your playground The Big Apple comes to life in Marvelâ€™s Spider-Man. Swing through vibrant neighborhoods and catch breathtaking views of iconic Marvel and Manhattan landmarks. Use the environment to defeat villains with epic takedowns in true blockbuster action. Enjoy The City That Never Sleeps complete content Following the events of the main story of Marvelâ€™s Spider-Man Remastered, experience the continuation of Peter Parkerâ€™s journey in Marvelâ€™s Spider-Man: The City That Never Sleeps, three story chapters with additional missions and challenges to discover.','https://www.youtube.com/embed/mrT5q5xXb7Y?si=wDk2fY_mh4Yo2JXW','Open-World Superhero Action Singleplayer Adventure','images/spidrman1.jpeg','https://store.steampowered.com/app/1817070/Marvels_SpiderMan_Remastered/','https://youtube.com/playlist?list=PLHvnuL-DiXkgzBZW4oTR5evGHwoRn4FNB&si=PaJbym2avJUXOUKX','MINIMUM: Requires a 64-bit processor and operating system OS: Windows 10 64-bit Processor: Intel Core i3-4160, 3.6 GHz or AMD equivalent Memory: 8 GB RAM Graphics: NVIDIA GTX 950 or AMD Radeon RX 470 DirectX: Version 12 Storage: 75 GB available space','Insomniac Games, Nixxes Software','PlayStation Publishing LLC','In Marvel\'s Spider-Man Remastered, the worlds of Peter Parker and Spider-Man collide in an original action-packed story. Play as an experienced Peter Parker, fighting big crime and iconic villains in Marvel\'s New York. Web-swing through vibrant neighborhoods and defeat villains with epic'),(5,'Road 96','2021-08-16','Summer 1996, Today is the day! You hit the road. Adventure. Freedom. Escape. Run. Flee the Regime. Try to survive. On this risky road trip to the border, you\'ll meet incredible characters, and discover their intertwined stories and secrets in an ever-evolving adventure. But every mile opens up a choice to make. Your decisions will change your adventure, change the people you meet, maybe even change the world. There are thousands of roads across the authoritarian nation of Petria. Which one will you take?','https://www.youtube.com/embed/KEBkjL31Avw?si=99vGZS_-c7BnO0t1','Adventure Choice-based Singleplayer Action Nonlinear','images/road962.jpeg','https://store.steampowered.com/app/1466640/Road_96/','https://youtu.be/uFz-HWKSYbQ?si=EY6gJ1Wd-vQyWEGN','MINIMUM: OS: Windows 10 Processor: Intel Core i5 4460 or AMD Ryzen 3 2300U Memory: 8 GB RAM Graphics: NVIDIA GTX 1060 or AMD RX 5700 DirectX: Version 11 Storage: 15 GB available space Additional Notes: Road 96 does not support Intel Xe graphic chipset. The game needs a dedicated GPU in order to run correctly.','Digixart','Deep Silver','Hitchhike your way to freedom in this crazy procedurally generated road trip. No one\'s road is the same!'),(6,'DARK SOULS III','2016-04-11','As fires fade and the world falls into ruin, journey into a universe filled with more colossal enemies and environments. Players will be immersed into a world of epic atmosphere and darkness through faster gameplay and amplified combat intensity. Fans and newcomers alike will get lost in the game hallmark rewarding gameplay and immersive graphics.Now only embers remainâ€¦ Prepare yourself once more and Embrace The Darkness!','https://www.youtube.com/embed/_zDZYrIUgKE?si=svMbXaD8O27XjXch','Souls-like Fantasy RPG Action Co-op Adventure Multiplayer PvP Open-World Singleplayer Nonlinear','images/ds32.jpeg','https://store.steampowered.com/app/374320/DARK_SOULS_III/','https://youtube.com/playlist?list=PL7RtZMiaOk8gqctsEgBQ9IhQAnm_P5ILT&si=aZcn5gjtw-YjuLX8','MINIMUM: OS *: Windows 7 SP1 64bit, Windows 8.1 64bit Windows 10 64bit Processor: Intel Core i3-2100 / AMDÂ® FX-6300 Memory: 4 GB RAM Graphics: NVIDIAÂ® GeForce GTX 750 Ti / ATI Radeon HD 7950 DirectX: Version 11 Network: Broadband Internet connection Storage: 25 GB available space Sound Card: DirectX 11 sound device Additional Notes: Internet connection required for online play and product activation','FromSoftware, Inc.','FromSoftware, Inc., Bandai Namco Entertainment','Dark Souls continues to push the boundaries with the latest, ambitious chapter in the critically-acclaimed and genre-defining series. Prepare yourself and Embrace The Darkness!');
/*!40000 ALTER TABLE `main_gameinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_user`
--

DROP TABLE IF EXISTS `main_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `password` varchar(200) NOT NULL,
  `first_name` longtext NOT NULL,
  `last_name` longtext NOT NULL,
  `phone_no` varchar(13) NOT NULL,
  `DOB` date NOT NULL,
  `username` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone_no` (`phone_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_user`
--

LOCK TABLES `main_user` WRITE;
/*!40000 ALTER TABLE `main_user` DISABLE KEYS */;
INSERT INTO `main_user` VALUES (1,'neilpathak05@gmail.com','123456','Neil','Pathak','123-123-1234','2005-10-28','Neil'),(2,'neil.thats.it@gmail.com','12345','Neil','Pathak','930-704-1052','2005-10-28','Neil'),(3,'akhuntergod@gmail.com','12345678','Aman','Kumar','628-722-8111','2005-01-10','Aman');
/*!40000 ALTER TABLE `main_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-08  9:52:10
