-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: cisi
-- ------------------------------------------------------
-- Server version	5.7.32

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
-- Current Database: `cisi`
--

/*!40000 DROP DATABASE IF EXISTS `cisi`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cisi` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `cisi`;

--
-- Table structure for table `active_storage_attachments`
--

DROP TABLE IF EXISTS `active_storage_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_storage_attachments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `record_type` varchar(255) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `blob_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_attachments_uniqueness` (`record_type`,`record_id`,`name`,`blob_id`),
  KEY `index_active_storage_attachments_on_blob_id` (`blob_id`),
  CONSTRAINT `fk_rails_c3b3935057` FOREIGN KEY (`blob_id`) REFERENCES `active_storage_blobs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_attachments`
--

LOCK TABLES `active_storage_attachments` WRITE;
/*!40000 ALTER TABLE `active_storage_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_storage_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `active_storage_blobs`
--

DROP TABLE IF EXISTS `active_storage_blobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_storage_blobs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `metadata` text,
  `byte_size` bigint(20) NOT NULL,
  `checksum` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_blobs_on_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_blobs`
--

LOCK TABLES `active_storage_blobs` WRITE;
/*!40000 ALTER TABLE `active_storage_blobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_storage_blobs` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2020-11-04 02:18:25','2020-11-04 02:18:25');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `benefits`
--

DROP TABLE IF EXISTS `benefits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `benefits` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `active_status` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benefits`
--

LOCK TABLES `benefits` WRITE;
/*!40000 ALTER TABLE `benefits` DISABLE KEYS */;
INSERT INTO `benefits` VALUES (1,'Cost Savings',NULL,NULL,'','2020-11-04 15:24:15','2020-11-04 20:42:09'),(2,'Health and Safety',NULL,NULL,NULL,'2020-11-05 00:23:16','2020-11-05 00:23:16'),(3,'Environmental',NULL,NULL,NULL,'2020-11-05 00:23:28','2020-11-05 00:23:28'),(4,'Quality',NULL,NULL,NULL,'2020-11-05 00:23:34','2020-11-05 00:23:34'),(5,'Employee Satisfaction',NULL,NULL,NULL,'2020-11-05 00:23:44','2020-11-05 00:23:44'),(6,'Production',NULL,NULL,NULL,'2020-11-05 00:23:57','2020-11-05 00:23:57');
/*!40000 ALTER TABLE `benefits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cilists`
--

DROP TABLE IF EXISTS `cilists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cilists` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cell_or_location` varchar(255) DEFAULT NULL,
  `waste_type_id` bigint(20) DEFAULT '8',
  `benefit_id` bigint(20) DEFAULT NULL,
  `current_state` text,
  `improvement_suggestion` text,
  `implementation_status_id` bigint(20) DEFAULT '1',
  `user_id` bigint(20) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `active_status` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `points_awarded` int(11) DEFAULT NULL,
  `responsible` varchar(255) DEFAULT NULL,
  `annual_savings` varchar(255) DEFAULT NULL,
  `cost_to_implement` varchar(255) DEFAULT NULL,
  `note_to_originator` text,
  `internal_note` text,
  `comment` text,
  PRIMARY KEY (`id`),
  KEY `index_cilists_on_waste_type_id` (`waste_type_id`),
  KEY `index_cilists_on_benefit_id` (`benefit_id`),
  KEY `index_cilists_on_implementation_status_id` (`implementation_status_id`),
  KEY `index_cilists_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_465680f0e6` FOREIGN KEY (`implementation_status_id`) REFERENCES `implementation_statuses` (`id`),
  CONSTRAINT `fk_rails_6cdf56269f` FOREIGN KEY (`waste_type_id`) REFERENCES `waste_types` (`id`),
  CONSTRAINT `fk_rails_78d1137d94` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_rails_e000e5057f` FOREIGN KEY (`benefit_id`) REFERENCES `benefits` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1019 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cilists`
--

LOCK TABLES `cilists` WRITE;
/*!40000 ALTER TABLE `cilists` DISABLE KEYS */;
INSERT INTO `cilists` VALUES (7,'Furnaces in Area 2',8,4,'Old load tables','Newly designed load tables',2,4,NULL,NULL,'2020-11-05 14:00:38','2020-11-10 18:26:27',4,NULL,NULL,NULL,NULL,NULL,'feedback to orginator:  this is x  x x x x  '),(8,'Implement an electronic',8,1,'Currently use paper','Develop an electronic ',3,5,NULL,NULL,'2020-11-05 14:19:51','2020-11-05 14:19:51',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'test from work desktop',8,5,'?','it works',4,1,NULL,NULL,'2020-11-06 15:29:29','2020-11-06 15:30:10',2,NULL,NULL,NULL,NULL,NULL,NULL),(1013,'Furnaces ',8,4,'No turntable','Add turntable for AB1V ',3,4,NULL,NULL,'2020-11-10 18:08:17','2020-11-10 18:08:17',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1015,'444',8,1,'a','bb',1,1,NULL,NULL,'2020-11-11 14:00:33','2020-11-11 14:00:33',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cilists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country_of_origins`
--

DROP TABLE IF EXISTS `country_of_origins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country_of_origins` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `ctype` varchar(255) DEFAULT NULL,
  `fdate` datetime DEFAULT NULL,
  `active_status` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_of_origins`
--

LOCK TABLES `country_of_origins` WRITE;
/*!40000 ALTER TABLE `country_of_origins` DISABLE KEYS */;
INSERT INTO `country_of_origins` VALUES (1,'Holand',NULL,NULL,NULL,NULL,'2020-11-03 21:44:08','2020-11-03 21:44:08'),(2,'Belgium',NULL,NULL,NULL,NULL,'2020-11-03 21:44:34','2020-11-03 21:44:34');
/*!40000 ALTER TABLE `country_of_origins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feasibilities`
--

DROP TABLE IF EXISTS `feasibilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feasibilities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `active_status` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feasibilities`
--

LOCK TABLES `feasibilities` WRITE;
/*!40000 ALTER TABLE `feasibilities` DISABLE KEYS */;
INSERT INTO `feasibilities` VALUES (1,'Feasible',NULL,NULL,NULL,'2020-11-05 00:20:31','2020-11-05 00:20:31'),(2,'Not Feasible',NULL,NULL,NULL,'2020-11-05 00:20:40','2020-11-05 00:20:40'),(3,'Not Immediately Feasible',NULL,NULL,NULL,'2020-11-05 00:20:59','2020-11-05 00:20:59'),(4,'Not yet evaluated',NULL,NULL,NULL,'2020-11-05 01:02:08','2020-11-05 01:02:08'),(5,'This field is not used',NULL,NULL,NULL,'2020-11-11 20:13:33','2020-11-11 20:13:33');
/*!40000 ALTER TABLE `feasibilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `implementation_statuses`
--

DROP TABLE IF EXISTS `implementation_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `implementation_statuses` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `active_status` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `implementation_statuses`
--

LOCK TABLES `implementation_statuses` WRITE;
/*!40000 ALTER TABLE `implementation_statuses` DISABLE KEYS */;
INSERT INTO `implementation_statuses` VALUES (1,'Not Yet Reviewed',NULL,NULL,NULL,'2020-11-05 00:18:17','2020-11-08 00:54:12'),(2,'Not a Continuous Improvement',NULL,NULL,NULL,'2020-11-05 00:18:36','2020-11-05 00:18:36'),(3,'Feasible',NULL,NULL,NULL,'2020-11-05 00:18:57','2020-11-08 00:54:44'),(4,'Not Feasible',NULL,NULL,NULL,'2020-11-05 00:19:13','2020-11-08 00:56:17'),(5,'For Future Followup',NULL,NULL,NULL,'2020-11-05 00:19:25','2020-11-05 00:19:25'),(6,'In Process',NULL,NULL,NULL,'2020-11-05 00:19:38','2020-11-08 00:56:30'),(7,'Completed',NULL,NULL,NULL,'2020-11-08 00:56:41','2020-11-08 00:56:41'),(8,'Closed',NULL,NULL,NULL,'2020-11-08 00:56:49','2020-11-08 00:56:49');
/*!40000 ALTER TABLE `implementation_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pfeatures`
--

DROP TABLE IF EXISTS `pfeatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pfeatures` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `fdate` datetime DEFAULT NULL,
  `active_status` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pfeatures`
--

LOCK TABLES `pfeatures` WRITE;
/*!40000 ALTER TABLE `pfeatures` DISABLE KEYS */;
/*!40000 ALTER TABLE `pfeatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `points`
--

DROP TABLE IF EXISTS `points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `points` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_claimed` varchar(255) DEFAULT NULL,
  `comment` text,
  `user_id` bigint(20) DEFAULT NULL,
  `points_spent` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `active_status` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_points_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_206a3ea05e` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `points`
--

LOCK TABLES `points` WRITE;
/*!40000 ALTER TABLE `points` DISABLE KEYS */;
INSERT INTO `points` VALUES (1,'mug','',1,2,NULL,NULL,'2020-11-05 01:41:02','2020-11-05 01:41:02'),(2,'e','',1,2,NULL,NULL,'2020-11-05 13:41:31','2020-11-05 13:46:37');
/*!40000 ALTER TABLE `points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_features`
--

DROP TABLE IF EXISTS `product_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_features` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `pfeature_id` bigint(20) DEFAULT NULL,
  `active_status` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_product_features_on_product_id` (`product_id`),
  KEY `index_product_features_on_pfeature_id` (`pfeature_id`),
  CONSTRAINT `fk_rails_3072cdc4bf` FOREIGN KEY (`pfeature_id`) REFERENCES `pfeatures` (`id`),
  CONSTRAINT `fk_rails_9019f50ede` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_features`
--

LOCK TABLES `product_features` WRITE;
/*!40000 ALTER TABLE `product_features` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pcolor` varchar(255) DEFAULT NULL,
  `country_of_origin_id` bigint(20) DEFAULT NULL,
  `pdate` datetime DEFAULT NULL,
  `active_status` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_products_on_country_of_origin_id` (`country_of_origin_id`),
  CONSTRAINT `fk_rails_a437fb316d` FOREIGN KEY (`country_of_origin_id`) REFERENCES `country_of_origins` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Synergistic Iron Clock','',1,'2020-11-04 02:45:00',NULL,NULL,'2020-11-04 02:46:03','2020-11-04 02:46:03');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `active_status` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'lr_minimal','Can\'t do much',NULL,NULL,'2020-11-04 02:18:30','2020-11-04 02:18:30'),(2,'lr_future1','',NULL,NULL,'2020-11-04 02:18:30','2020-11-04 02:18:30'),(3,'lr_readonly','',NULL,NULL,'2020-11-04 02:18:30','2020-11-04 02:18:30'),(4,'lr_future2','',NULL,NULL,'2020-11-04 02:18:30','2020-11-04 02:18:30'),(5,'lr_create','',NULL,NULL,'2020-11-04 02:18:30','2020-11-04 02:18:30'),(6,'lr_future3','',NULL,NULL,'2020-11-04 02:18:30','2020-11-04 02:18:30'),(7,'lr_regular','Can edit data, readonly lookup tables',NULL,NULL,'2020-11-04 02:18:30','2020-11-04 02:18:30'),(8,'lr_future4','',NULL,NULL,'2020-11-04 02:18:30','2020-11-04 02:18:30'),(9,'lr_supervisor','Can edit lookup tables',NULL,NULL,'2020-11-04 02:18:30','2020-11-04 02:18:30'),(10,'lr_future5','',NULL,NULL,'2020-11-04 02:18:30','2020-11-04 02:18:30'),(11,'lr_delete','',NULL,NULL,'2020-11-04 02:18:30','2020-11-04 02:18:30'),(12,'lr_future6','',NULL,NULL,'2020-11-04 02:18:30','2020-11-04 02:18:30'),(13,'lr_vip','',NULL,NULL,'2020-11-04 02:18:30','2020-11-04 02:18:30'),(14,'lr_future7','',NULL,NULL,'2020-11-04 02:18:30','2020-11-04 02:18:30'),(15,'lr_special1','',NULL,NULL,'2020-11-04 02:18:30','2020-11-04 02:18:30'),(16,'lr_seller','',NULL,NULL,'2020-11-04 02:18:30','2020-11-04 02:18:30'),(17,'lr_future8','',NULL,NULL,'2020-11-04 02:18:30','2020-11-04 02:18:30'),(18,'lr_admin','Can perform any CRUD operation on any resource',NULL,NULL,'2020-11-04 02:18:30','2020-11-04 02:18:30');
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
INSERT INTO `schema_migrations` VALUES ('20201026014721'),('30170101010101'),('30170101010102'),('30170101010103'),('30170101010104'),('30170101010105'),('30170101010106'),('30170101010107'),('30170101010108'),('30170101010109'),('30170101010110'),('30170101010111'),('40170101010105'),('50161230223302'),('50161230223311'),('50161230223312'),('50161230223313'),('50161230223314'),('50161230223315'),('50161230223316'),('50161230223317'),('50161230223318'),('50161230223319'),('50161230223320');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `clocknum` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  `unconfirmed_email` varchar(255) DEFAULT NULL,
  `failed_attempts` int(11) NOT NULL DEFAULT '0',
  `unlock_token` varchar(255) DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  UNIQUE KEY `index_users_on_confirmation_token` (`confirmation_token`),
  UNIQUE KEY `index_users_on_unlock_token` (`unlock_token`),
  KEY `index_users_on_role_id` (`role_id`),
  CONSTRAINT `fk_rails_642f17018b` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,18,'David','David','Gleba','826','dgleba@gmail.com','2020-11-20 13:37:39','2020-11-20 13:37:39','2020-11-04 02:41:04','$2a$12$ZUnjiHX/Vp6y2KidwWYa8OekUXM09qcr4uZEuRlTFR6MsNmwpsXnq','dbb502951cfb61ef595ae04bbb368ced7db50bec31a1a86170509369cd032cc2','2020-11-10 16:57:15',NULL,'k-Mr6G38kYVkBiaHcUzC','2020-11-07 03:19:57','2020-11-04 02:41:04',NULL,0,NULL,NULL,32,'2020-11-20 02:13:09','216.110.224.238','216.110.224.238'),(4,7,NULL,'Jim','McMaster','0279','jmcmaster@stackpole.com','2020-11-10 18:12:50','2020-11-10 18:38:55','2020-11-05 13:58:57','$2a$12$t3liOTDVvX7/3d8xw70SmONOuJOqkHVnw6xjbuvAWHJ2O4ZrURYku',NULL,NULL,NULL,'drH2pHVKg2rpqDqv2b6f','2020-11-10 18:07:14','2020-11-05 13:58:57',NULL,0,NULL,NULL,3,'2020-11-10 18:07:33','216.208.228.132','216.208.228.132'),(5,7,NULL,'Tara','Ross','5334','tross@stackpole.com','2020-11-05 14:11:33','2020-11-05 14:11:33','2020-11-05 14:11:31','$2a$12$rBrCxReQBlXUdQiQP5YyC.V.5An2ewhoZ93aFL.ZzWCYuSDOFtbaO',NULL,NULL,NULL,'PyvxuaMywxLfFjdqxCFa',NULL,'2020-11-05 14:11:31',NULL,0,NULL,NULL,1,'2020-11-05 14:11:33','167.100.67.12','167.100.67.12'),(12,7,NULL,'Dan','Brenneman','4083','dbrenneman@stackpole.com','2020-11-10 18:19:05','2020-11-10 18:19:05','2020-11-10 18:19:03','$2a$12$.dE0M.OAQZScVL6WduxsGOya3vB93y4JLIEpwopCkdEnsn8vBf1z.',NULL,NULL,NULL,'izybdYpc23CxYAZsuVzv',NULL,'2020-11-10 18:19:03',NULL,0,NULL,NULL,1,'2020-11-10 18:19:05','67.69.69.53','67.69.69.53');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_type` varchar(255) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `event` varchar(255) NOT NULL,
  `whodunnit` varchar(255) DEFAULT NULL,
  `object` longtext,
  `created_at` datetime DEFAULT NULL,
  `object_changes` longtext,
  PRIMARY KEY (`id`),
  KEY `index_versions_on_item_type_and_item_id` (`item_type`,`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` VALUES (70,'User',15,'update',NULL,'---\nrole_id: 7\nlocked_at: \nencrypted_password: \"$2a$12$v6zHh2RKDKFc6YvURvXbe.jquYrCHVTHwG2zuAtKqzVAP2EpX1ZwO\"\nid: 15\nconfirmed_at: 2020-11-12 01:04:32.000000000 Z\nfailed_attempts: 0\ncurrent_sign_in_at: \nlast_sign_in_at: \ncurrent_sign_in_ip: \nlast_sign_in_ip: \nsign_in_count: 0\nname: Dave\nfirst_name: David\nlast_name: Gleba\nclocknum: \'99999\'\nemail: david1212@gmail.com\nupdated_at: 2020-11-12 01:04:32.000000000 Z\ncreated_at: 2020-11-12 00:46:38.000000000 Z\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nconfirmation_token: ckNprhyDAszKL1HFMjz_\nconfirmation_sent_at: 2020-11-12 00:46:38.000000000 Z\nunconfirmed_email: \nunlock_token: \n','2020-11-12 01:09:00','---\ncurrent_sign_in_at:\n- \n- 2020-11-12 01:09:00.000000000 Z\nlast_sign_in_at:\n- \n- 2020-11-12 01:09:00.000000000 Z\ncurrent_sign_in_ip:\n- \n- 216.110.224.238\nlast_sign_in_ip:\n- \n- 216.110.224.238\nsign_in_count:\n- 0\n- 1\nupdated_at:\n- 2020-11-12 01:04:32.000000000 Z\n- 2020-11-12 01:09:00.000000000 Z\n'),(71,'User',1,'update',NULL,'---\nrole_id: 18\nlocked_at: \nencrypted_password: \"$2a$12$ZUnjiHX/Vp6y2KidwWYa8OekUXM09qcr4uZEuRlTFR6MsNmwpsXnq\"\nid: 1\nconfirmed_at: 2020-11-07 03:19:57.000000000 Z\nfailed_attempts: 0\ncurrent_sign_in_at: 2020-11-11 00:58:57.000000000 Z\nlast_sign_in_at: 2020-11-10 18:17:55.000000000 Z\ncurrent_sign_in_ip: 216.110.224.238\nlast_sign_in_ip: 216.208.228.132\nsign_in_count: 22\nname: David\nfirst_name: David\nlast_name: Gleba\nclocknum: \'826\'\nemail: dgleba@gmail.com\nupdated_at: 2020-11-11 00:58:57.000000000 Z\ncreated_at: 2020-11-04 02:41:04.000000000 Z\nreset_password_token: dbb502951cfb61ef595ae04bbb368ced7db50bec31a1a86170509369cd032cc2\nreset_password_sent_at: 2020-11-10 16:57:15.000000000 Z\nremember_created_at: \nconfirmation_token: k-Mr6G38kYVkBiaHcUzC\nconfirmation_sent_at: 2020-11-04 02:41:04.000000000 Z\nunconfirmed_email: \nunlock_token: \n','2020-11-12 01:35:14','---\ncurrent_sign_in_at:\n- 2020-11-11 00:58:57.000000000 Z\n- 2020-11-12 01:35:14.000000000 Z\nlast_sign_in_at:\n- 2020-11-10 18:17:55.000000000 Z\n- 2020-11-11 00:58:57.000000000 Z\nlast_sign_in_ip:\n- 216.208.228.132\n- 216.110.224.238\nsign_in_count:\n- 22\n- 23\nupdated_at:\n- 2020-11-11 00:58:57.000000000 Z\n- 2020-11-12 01:35:14.000000000 Z\n'),(72,'User',1,'update',NULL,'---\nrole_id: 18\nlocked_at: \nencrypted_password: \"$2a$12$ZUnjiHX/Vp6y2KidwWYa8OekUXM09qcr4uZEuRlTFR6MsNmwpsXnq\"\nid: 1\nconfirmed_at: 2020-11-07 03:19:57.000000000 Z\nfailed_attempts: 0\ncurrent_sign_in_at: 2020-11-12 01:35:14.000000000 Z\nlast_sign_in_at: 2020-11-11 00:58:57.000000000 Z\ncurrent_sign_in_ip: 216.110.224.238\nlast_sign_in_ip: 216.110.224.238\nsign_in_count: 23\nname: David\nfirst_name: David\nlast_name: Gleba\nclocknum: \'826\'\nemail: dgleba@gmail.com\nupdated_at: 2020-11-12 01:35:14.000000000 Z\ncreated_at: 2020-11-04 02:41:04.000000000 Z\nreset_password_token: dbb502951cfb61ef595ae04bbb368ced7db50bec31a1a86170509369cd032cc2\nreset_password_sent_at: 2020-11-10 16:57:15.000000000 Z\nremember_created_at: \nconfirmation_token: k-Mr6G38kYVkBiaHcUzC\nconfirmation_sent_at: 2020-11-04 02:41:04.000000000 Z\nunconfirmed_email: \nunlock_token: \n','2020-11-12 02:43:02','---\ncurrent_sign_in_at:\n- 2020-11-12 01:35:14.000000000 Z\n- 2020-11-12 02:43:02.000000000 Z\nlast_sign_in_at:\n- 2020-11-11 00:58:57.000000000 Z\n- 2020-11-12 01:35:14.000000000 Z\nsign_in_count:\n- 23\n- 24\nupdated_at:\n- 2020-11-12 01:35:14.000000000 Z\n- 2020-11-12 02:43:02.000000000 Z\n'),(73,'User',15,'update',NULL,'---\nrole_id: 7\nlocked_at: \nencrypted_password: \"$2a$12$v6zHh2RKDKFc6YvURvXbe.jquYrCHVTHwG2zuAtKqzVAP2EpX1ZwO\"\nid: 15\nconfirmed_at: 2020-11-12 01:04:32.000000000 Z\nfailed_attempts: 0\ncurrent_sign_in_at: 2020-11-12 01:09:00.000000000 Z\nlast_sign_in_at: 2020-11-12 01:09:00.000000000 Z\ncurrent_sign_in_ip: 216.110.224.238\nlast_sign_in_ip: 216.110.224.238\nsign_in_count: 1\nname: Dave\nfirst_name: David\nlast_name: Gleba\nclocknum: \'99999\'\nemail: david1212@gmail.com\nupdated_at: 2020-11-12 01:09:00.000000000 Z\ncreated_at: 2020-11-12 00:46:38.000000000 Z\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nconfirmation_token: ckNprhyDAszKL1HFMjz_\nconfirmation_sent_at: 2020-11-12 00:46:38.000000000 Z\nunconfirmed_email: \nunlock_token: \n','2020-11-12 03:53:20','---\ncurrent_sign_in_at:\n- 2020-11-12 01:09:00.000000000 Z\n- 2020-11-12 03:53:20.000000000 Z\nsign_in_count:\n- 1\n- 2\nupdated_at:\n- 2020-11-12 01:09:00.000000000 Z\n- 2020-11-12 03:53:20.000000000 Z\n'),(74,'User',1,'update',NULL,'---\nrole_id: 18\nlocked_at: \nencrypted_password: \"$2a$12$ZUnjiHX/Vp6y2KidwWYa8OekUXM09qcr4uZEuRlTFR6MsNmwpsXnq\"\nid: 1\nconfirmed_at: 2020-11-07 03:19:57.000000000 Z\nremember_created_at: \nname: David\nfirst_name: David\nlast_name: Gleba\nclocknum: \'826\'\nemail: dgleba@gmail.com\ncurrent_sign_in_at: 2020-11-12 02:43:02.000000000 Z\nupdated_at: 2020-11-12 02:43:02.000000000 Z\ncreated_at: 2020-11-04 02:41:04.000000000 Z\nreset_password_token: dbb502951cfb61ef595ae04bbb368ced7db50bec31a1a86170509369cd032cc2\nreset_password_sent_at: 2020-11-10 16:57:15.000000000 Z\nconfirmation_token: k-Mr6G38kYVkBiaHcUzC\nconfirmation_sent_at: 2020-11-04 02:41:04.000000000 Z\nunconfirmed_email: \nfailed_attempts: 0\nunlock_token: \nsign_in_count: 24\nlast_sign_in_at: 2020-11-12 01:35:14.000000000 Z\ncurrent_sign_in_ip: 216.110.224.238\nlast_sign_in_ip: 216.110.224.238\n','2020-11-12 12:08:28','---\nremember_created_at:\n- \n- 2020-11-12 12:08:28.000000000 Z\nupdated_at:\n- 2020-11-12 02:43:02.000000000 Z\n- 2020-11-12 12:08:28.000000000 Z\n'),(75,'User',1,'update',NULL,'---\nrole_id: 18\nlocked_at: \nencrypted_password: \"$2a$12$ZUnjiHX/Vp6y2KidwWYa8OekUXM09qcr4uZEuRlTFR6MsNmwpsXnq\"\nid: 1\nconfirmed_at: 2020-11-07 03:19:57.000000000 Z\nremember_created_at: 2020-11-12 12:08:28.000000000 Z\nname: David\nfirst_name: David\nlast_name: Gleba\nclocknum: \'826\'\nemail: dgleba@gmail.com\ncurrent_sign_in_at: 2020-11-12 02:43:02.000000000 Z\nupdated_at: 2020-11-12 12:08:28.000000000 Z\ncreated_at: 2020-11-04 02:41:04.000000000 Z\nreset_password_token: dbb502951cfb61ef595ae04bbb368ced7db50bec31a1a86170509369cd032cc2\nreset_password_sent_at: 2020-11-10 16:57:15.000000000 Z\nconfirmation_token: k-Mr6G38kYVkBiaHcUzC\nconfirmation_sent_at: 2020-11-04 02:41:04.000000000 Z\nunconfirmed_email: \nfailed_attempts: 0\nunlock_token: \nsign_in_count: 24\nlast_sign_in_at: 2020-11-12 01:35:14.000000000 Z\ncurrent_sign_in_ip: 216.110.224.238\nlast_sign_in_ip: 216.110.224.238\n','2020-11-12 12:08:28','---\ncurrent_sign_in_at:\n- 2020-11-12 02:43:02.000000000 Z\n- 2020-11-12 12:08:28.000000000 Z\nsign_in_count:\n- 24\n- 25\nlast_sign_in_at:\n- 2020-11-12 01:35:14.000000000 Z\n- 2020-11-12 02:43:02.000000000 Z\n'),(76,'User',1,'update',NULL,'---\nrole_id: 18\nlocked_at: \nencrypted_password: \"$2a$12$ZUnjiHX/Vp6y2KidwWYa8OekUXM09qcr4uZEuRlTFR6MsNmwpsXnq\"\nid: 1\nconfirmed_at: 2020-11-07 03:19:57.000000000 Z\nremember_created_at: 2020-11-12 12:08:28.000000000 Z\nname: David\nfirst_name: David\nlast_name: Gleba\nclocknum: \'826\'\nemail: dgleba@gmail.com\ncurrent_sign_in_at: 2020-11-12 12:08:28.000000000 Z\nupdated_at: 2020-11-12 12:08:28.000000000 Z\ncreated_at: 2020-11-04 02:41:04.000000000 Z\nreset_password_token: dbb502951cfb61ef595ae04bbb368ced7db50bec31a1a86170509369cd032cc2\nreset_password_sent_at: 2020-11-10 16:57:15.000000000 Z\nconfirmation_token: k-Mr6G38kYVkBiaHcUzC\nconfirmation_sent_at: 2020-11-04 02:41:04.000000000 Z\nunconfirmed_email: \nfailed_attempts: 0\nunlock_token: \nsign_in_count: 25\nlast_sign_in_at: 2020-11-12 02:43:02.000000000 Z\ncurrent_sign_in_ip: 216.110.224.238\nlast_sign_in_ip: 216.110.224.238\n','2020-11-12 12:33:16','---\ncurrent_sign_in_at:\n- 2020-11-12 12:08:28.000000000 Z\n- 2020-11-12 12:33:16.000000000 Z\nupdated_at:\n- 2020-11-12 12:08:28.000000000 Z\n- 2020-11-12 12:33:16.000000000 Z\nsign_in_count:\n- 25\n- 26\nlast_sign_in_at:\n- 2020-11-12 02:43:02.000000000 Z\n- 2020-11-12 12:08:28.000000000 Z\n'),(77,'User',1,'update',NULL,'---\nrole_id: 18\nremember_created_at: 2020-11-12 12:08:28.000000000 Z\nencrypted_password: \"$2a$12$ZUnjiHX/Vp6y2KidwWYa8OekUXM09qcr4uZEuRlTFR6MsNmwpsXnq\"\nlocked_at: \nid: 1\nconfirmed_at: 2020-11-07 03:19:57.000000000 Z\nname: David\nfirst_name: David\nlast_name: Gleba\nclocknum: \'826\'\nemail: dgleba@gmail.com\ncurrent_sign_in_at: 2020-11-12 12:33:16.000000000 Z\nupdated_at: 2020-11-12 12:33:16.000000000 Z\ncreated_at: 2020-11-04 02:41:04.000000000 Z\nreset_password_token: dbb502951cfb61ef595ae04bbb368ced7db50bec31a1a86170509369cd032cc2\nreset_password_sent_at: 2020-11-10 16:57:15.000000000 Z\nconfirmation_token: k-Mr6G38kYVkBiaHcUzC\nconfirmation_sent_at: 2020-11-04 02:41:04.000000000 Z\nunconfirmed_email: \nfailed_attempts: 0\nunlock_token: \nsign_in_count: 26\nlast_sign_in_at: 2020-11-12 12:08:28.000000000 Z\ncurrent_sign_in_ip: 216.110.224.238\nlast_sign_in_ip: 216.110.224.238\n','2020-11-13 12:53:29','---\ncurrent_sign_in_at:\n- 2020-11-12 12:33:16.000000000 Z\n- 2020-11-13 12:53:29.000000000 Z\nupdated_at:\n- 2020-11-12 12:33:16.000000000 Z\n- 2020-11-13 12:53:29.000000000 Z\nsign_in_count:\n- 26\n- 27\nlast_sign_in_at:\n- 2020-11-12 12:08:28.000000000 Z\n- 2020-11-12 12:33:16.000000000 Z\n'),(78,'User',1,'update','1','---\nrole_id: 18\nencrypted_password: \"$2a$12$ZUnjiHX/Vp6y2KidwWYa8OekUXM09qcr4uZEuRlTFR6MsNmwpsXnq\"\nid: 1\nremember_created_at: 2020-11-12 12:08:28.000000000 Z\nname: David\nfirst_name: David\nlast_name: Gleba\nclocknum: \'826\'\nemail: dgleba@gmail.com\ncurrent_sign_in_at: 2020-11-13 12:53:29.000000000 Z\nupdated_at: 2020-11-13 12:53:29.000000000 Z\ncreated_at: 2020-11-04 02:41:04.000000000 Z\nreset_password_token: dbb502951cfb61ef595ae04bbb368ced7db50bec31a1a86170509369cd032cc2\nreset_password_sent_at: 2020-11-10 16:57:15.000000000 Z\nconfirmation_token: k-Mr6G38kYVkBiaHcUzC\nconfirmed_at: 2020-11-07 03:19:57.000000000 Z\nconfirmation_sent_at: 2020-11-04 02:41:04.000000000 Z\nunconfirmed_email: \nfailed_attempts: 0\nunlock_token: \nlocked_at: \nsign_in_count: 27\nlast_sign_in_at: 2020-11-12 12:33:16.000000000 Z\ncurrent_sign_in_ip: 216.110.224.238\nlast_sign_in_ip: 216.110.224.238\n','2020-11-13 12:53:42','---\nremember_created_at:\n- 2020-11-12 12:08:28.000000000 Z\n- \nupdated_at:\n- 2020-11-13 12:53:29.000000000 Z\n- 2020-11-13 12:53:42.000000000 Z\n'),(79,'User',1,'update',NULL,'---\nrole_id: 18\nlocked_at: \nencrypted_password: \"$2a$12$ZUnjiHX/Vp6y2KidwWYa8OekUXM09qcr4uZEuRlTFR6MsNmwpsXnq\"\nid: 1\nconfirmed_at: 2020-11-07 03:19:57.000000000 Z\nfailed_attempts: 1\nname: David\nfirst_name: David\nlast_name: Gleba\nclocknum: \'826\'\nemail: dgleba@gmail.com\ncurrent_sign_in_at: 2020-11-13 12:53:29.000000000 Z\nupdated_at: 2020-11-13 12:53:42.000000000 Z\ncreated_at: 2020-11-04 02:41:04.000000000 Z\nreset_password_token: dbb502951cfb61ef595ae04bbb368ced7db50bec31a1a86170509369cd032cc2\nreset_password_sent_at: 2020-11-10 16:57:15.000000000 Z\nremember_created_at: \nconfirmation_token: k-Mr6G38kYVkBiaHcUzC\nconfirmation_sent_at: 2020-11-04 02:41:04.000000000 Z\nunconfirmed_email: \nunlock_token: \nsign_in_count: 27\nlast_sign_in_at: 2020-11-12 12:33:16.000000000 Z\ncurrent_sign_in_ip: 216.110.224.238\nlast_sign_in_ip: 216.110.224.238\n','2020-11-16 12:52:33','---\nfailed_attempts:\n- 1\n- 0\nupdated_at:\n- 2020-11-13 12:53:42.000000000 Z\n- 2020-11-16 12:52:33.000000000 Z\n'),(80,'User',1,'update',NULL,'---\nrole_id: 18\nlocked_at: \nencrypted_password: \"$2a$12$ZUnjiHX/Vp6y2KidwWYa8OekUXM09qcr4uZEuRlTFR6MsNmwpsXnq\"\nid: 1\nconfirmed_at: 2020-11-07 03:19:57.000000000 Z\nfailed_attempts: 0\nname: David\nfirst_name: David\nlast_name: Gleba\nclocknum: \'826\'\nemail: dgleba@gmail.com\ncurrent_sign_in_at: 2020-11-13 12:53:29.000000000 Z\nupdated_at: 2020-11-16 12:52:33.000000000 Z\ncreated_at: 2020-11-04 02:41:04.000000000 Z\nreset_password_token: dbb502951cfb61ef595ae04bbb368ced7db50bec31a1a86170509369cd032cc2\nreset_password_sent_at: 2020-11-10 16:57:15.000000000 Z\nremember_created_at: \nconfirmation_token: k-Mr6G38kYVkBiaHcUzC\nconfirmation_sent_at: 2020-11-04 02:41:04.000000000 Z\nunconfirmed_email: \nunlock_token: \nsign_in_count: 27\nlast_sign_in_at: 2020-11-12 12:33:16.000000000 Z\ncurrent_sign_in_ip: 216.110.224.238\nlast_sign_in_ip: 216.110.224.238\n','2020-11-16 12:52:33','---\ncurrent_sign_in_at:\n- 2020-11-13 12:53:29.000000000 Z\n- 2020-11-16 12:52:33.000000000 Z\nsign_in_count:\n- 27\n- 28\nlast_sign_in_at:\n- 2020-11-12 12:33:16.000000000 Z\n- 2020-11-13 12:53:29.000000000 Z\n'),(81,'User',1,'update',NULL,'---\nrole_id: 18\nlocked_at: \nencrypted_password: \"$2a$12$ZUnjiHX/Vp6y2KidwWYa8OekUXM09qcr4uZEuRlTFR6MsNmwpsXnq\"\nid: 1\nconfirmed_at: 2020-11-07 03:19:57.000000000 Z\nfailed_attempts: 0\ncurrent_sign_in_at: 2020-11-16 12:52:33.000000000 Z\nlast_sign_in_at: 2020-11-13 12:53:29.000000000 Z\ncurrent_sign_in_ip: 216.110.224.238\nlast_sign_in_ip: 216.110.224.238\nsign_in_count: 28\nname: David\nfirst_name: David\nlast_name: Gleba\nclocknum: \'826\'\nemail: dgleba@gmail.com\nupdated_at: 2020-11-16 12:52:33.000000000 Z\ncreated_at: 2020-11-04 02:41:04.000000000 Z\nreset_password_token: dbb502951cfb61ef595ae04bbb368ced7db50bec31a1a86170509369cd032cc2\nreset_password_sent_at: 2020-11-10 16:57:15.000000000 Z\nremember_created_at: \nconfirmation_token: k-Mr6G38kYVkBiaHcUzC\nconfirmation_sent_at: 2020-11-04 02:41:04.000000000 Z\nunconfirmed_email: \nunlock_token: \n','2020-11-17 15:26:30','---\ncurrent_sign_in_at:\n- 2020-11-16 12:52:33.000000000 Z\n- 2020-11-17 15:26:30.000000000 Z\nlast_sign_in_at:\n- 2020-11-13 12:53:29.000000000 Z\n- 2020-11-16 12:52:33.000000000 Z\nsign_in_count:\n- 28\n- 29\nupdated_at:\n- 2020-11-16 12:52:33.000000000 Z\n- 2020-11-17 15:26:30.000000000 Z\n'),(82,'User',1,'update',NULL,'---\nrole_id: 18\nlocked_at: \nencrypted_password: \"$2a$12$ZUnjiHX/Vp6y2KidwWYa8OekUXM09qcr4uZEuRlTFR6MsNmwpsXnq\"\nid: 1\nconfirmed_at: 2020-11-07 03:19:57.000000000 Z\nfailed_attempts: 0\ncurrent_sign_in_at: 2020-11-17 15:26:30.000000000 Z\nlast_sign_in_at: 2020-11-16 12:52:33.000000000 Z\ncurrent_sign_in_ip: 216.110.224.238\nlast_sign_in_ip: 216.110.224.238\nsign_in_count: 29\nname: David\nfirst_name: David\nlast_name: Gleba\nclocknum: \'826\'\nemail: dgleba@gmail.com\nupdated_at: 2020-11-17 15:26:30.000000000 Z\ncreated_at: 2020-11-04 02:41:04.000000000 Z\nreset_password_token: dbb502951cfb61ef595ae04bbb368ced7db50bec31a1a86170509369cd032cc2\nreset_password_sent_at: 2020-11-10 16:57:15.000000000 Z\nremember_created_at: \nconfirmation_token: k-Mr6G38kYVkBiaHcUzC\nconfirmation_sent_at: 2020-11-04 02:41:04.000000000 Z\nunconfirmed_email: \nunlock_token: \n','2020-11-18 13:42:42','---\ncurrent_sign_in_at:\n- 2020-11-17 15:26:30.000000000 Z\n- 2020-11-18 13:42:42.000000000 Z\nlast_sign_in_at:\n- 2020-11-16 12:52:33.000000000 Z\n- 2020-11-17 15:26:30.000000000 Z\nsign_in_count:\n- 29\n- 30\nupdated_at:\n- 2020-11-17 15:26:30.000000000 Z\n- 2020-11-18 13:42:42.000000000 Z\n'),(83,'User',1,'update',NULL,'---\nrole_id: 18\nlocked_at: \nencrypted_password: \"$2a$12$ZUnjiHX/Vp6y2KidwWYa8OekUXM09qcr4uZEuRlTFR6MsNmwpsXnq\"\nid: 1\nconfirmed_at: 2020-11-07 03:19:57.000000000 Z\nfailed_attempts: 0\ncurrent_sign_in_at: 2020-11-18 13:42:42.000000000 Z\nlast_sign_in_at: 2020-11-17 15:26:30.000000000 Z\ncurrent_sign_in_ip: 216.110.224.238\nlast_sign_in_ip: 216.110.224.238\nsign_in_count: 30\nname: David\nfirst_name: David\nlast_name: Gleba\nclocknum: \'826\'\nemail: dgleba@gmail.com\nupdated_at: 2020-11-18 13:42:42.000000000 Z\ncreated_at: 2020-11-04 02:41:04.000000000 Z\nreset_password_token: dbb502951cfb61ef595ae04bbb368ced7db50bec31a1a86170509369cd032cc2\nreset_password_sent_at: 2020-11-10 16:57:15.000000000 Z\nremember_created_at: \nconfirmation_token: k-Mr6G38kYVkBiaHcUzC\nconfirmation_sent_at: 2020-11-04 02:41:04.000000000 Z\nunconfirmed_email: \nunlock_token: \n','2020-11-20 02:13:09','---\ncurrent_sign_in_at:\n- 2020-11-18 13:42:42.000000000 Z\n- 2020-11-20 02:13:09.000000000 Z\nlast_sign_in_at:\n- 2020-11-17 15:26:30.000000000 Z\n- 2020-11-18 13:42:42.000000000 Z\nsign_in_count:\n- 30\n- 31\nupdated_at:\n- 2020-11-18 13:42:42.000000000 Z\n- 2020-11-20 02:13:09.000000000 Z\n'),(84,'User',1,'update',NULL,'---\nrole_id: 18\nlocked_at: \nencrypted_password: \"$2a$12$ZUnjiHX/Vp6y2KidwWYa8OekUXM09qcr4uZEuRlTFR6MsNmwpsXnq\"\nid: 1\nconfirmed_at: 2020-11-07 03:19:57.000000000 Z\nfailed_attempts: 0\ncurrent_sign_in_at: 2020-11-20 02:13:09.000000000 Z\nlast_sign_in_at: 2020-11-18 13:42:42.000000000 Z\ncurrent_sign_in_ip: 216.110.224.238\nlast_sign_in_ip: 216.110.224.238\nsign_in_count: 31\nname: David\nfirst_name: David\nlast_name: Gleba\nclocknum: \'826\'\nemail: dgleba@gmail.com\nupdated_at: 2020-11-20 02:13:09.000000000 Z\ncreated_at: 2020-11-04 02:41:04.000000000 Z\nreset_password_token: dbb502951cfb61ef595ae04bbb368ced7db50bec31a1a86170509369cd032cc2\nreset_password_sent_at: 2020-11-10 16:57:15.000000000 Z\nremember_created_at: \nconfirmation_token: k-Mr6G38kYVkBiaHcUzC\nconfirmation_sent_at: 2020-11-04 02:41:04.000000000 Z\nunconfirmed_email: \nunlock_token: \n','2020-11-20 13:37:39','---\ncurrent_sign_in_at:\n- 2020-11-20 02:13:09.000000000 Z\n- 2020-11-20 13:37:39.000000000 Z\nlast_sign_in_at:\n- 2020-11-18 13:42:42.000000000 Z\n- 2020-11-20 02:13:09.000000000 Z\nsign_in_count:\n- 31\n- 32\nupdated_at:\n- 2020-11-20 02:13:09.000000000 Z\n- 2020-11-20 13:37:39.000000000 Z\n'),(86,'User',15,'destroy','1','---\nid: 15\nrole_id: 7\nname: Dave\nfirst_name: David\nlast_name: Gleba\nclocknum: \'99999\'\nemail: david1212@gmail.com\ncurrent_sign_in_at: 2020-11-12 03:53:20.000000000 Z\nupdated_at: 2020-11-12 03:53:20.000000000 Z\ncreated_at: 2020-11-12 00:46:38.000000000 Z\nencrypted_password: \"$2a$12$v6zHh2RKDKFc6YvURvXbe.jquYrCHVTHwG2zuAtKqzVAP2EpX1ZwO\"\nreset_password_token: \nreset_password_sent_at: \nremember_created_at: \nconfirmation_token: ckNprhyDAszKL1HFMjz_\nconfirmed_at: 2020-11-12 01:04:32.000000000 Z\nconfirmation_sent_at: 2020-11-12 00:46:38.000000000 Z\nunconfirmed_email: \nfailed_attempts: 0\nunlock_token: \nlocked_at: \nsign_in_count: 2\nlast_sign_in_at: 2020-11-12 01:09:00.000000000 Z\ncurrent_sign_in_ip: 216.110.224.238\nlast_sign_in_ip: 216.110.224.238\n','2020-11-20 13:38:48','---\nid:\n- 15\n- \nrole_id:\n- 7\n- \nname:\n- Dave\n- \nfirst_name:\n- David\n- \nlast_name:\n- Gleba\n- \nclocknum:\n- \'99999\'\n- \nemail:\n- david1212@gmail.com\n- \ncurrent_sign_in_at:\n- 2020-11-12 03:53:20.000000000 Z\n- \nupdated_at:\n- 2020-11-12 03:53:20.000000000 Z\n- \ncreated_at:\n- 2020-11-12 00:46:38.000000000 Z\n- \nencrypted_password:\n- \"$2a$12$v6zHh2RKDKFc6YvURvXbe.jquYrCHVTHwG2zuAtKqzVAP2EpX1ZwO\"\n- \nreset_password_token:\n- \n- \nreset_password_sent_at:\n- \n- \nremember_created_at:\n- \n- \nconfirmation_token:\n- ckNprhyDAszKL1HFMjz_\n- \nconfirmed_at:\n- 2020-11-12 01:04:32.000000000 Z\n- \nconfirmation_sent_at:\n- 2020-11-12 00:46:38.000000000 Z\n- \nunconfirmed_email:\n- \n- \nfailed_attempts:\n- 0\n- \nunlock_token:\n- \n- \nlocked_at:\n- \n- \nsign_in_count:\n- 2\n- \nlast_sign_in_at:\n- 2020-11-12 01:09:00.000000000 Z\n- \ncurrent_sign_in_ip:\n- 216.110.224.238\n- \nlast_sign_in_ip:\n- 216.110.224.238\n- \n');
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vw_points_balance`
--

DROP TABLE IF EXISTS `vw_points_balance`;
/*!50001 DROP VIEW IF EXISTS `vw_points_balance`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_points_balance` AS SELECT 
 1 AS `user_id`,
 1 AS `clocknum`,
 1 AS `name`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `email`,
 1 AS `sum_points_awarded`,
 1 AS `sum_points_spent`,
 1 AS `points_balance`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_subqry_points_awarded`
--

DROP TABLE IF EXISTS `vw_subqry_points_awarded`;
/*!50001 DROP VIEW IF EXISTS `vw_subqry_points_awarded`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_subqry_points_awarded` AS SELECT 
 1 AS `user_id`,
 1 AS `sum_points_awarded`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_subqry_points_spent`
--

DROP TABLE IF EXISTS `vw_subqry_points_spent`;
/*!50001 DROP VIEW IF EXISTS `vw_subqry_points_spent`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_subqry_points_spent` AS SELECT 
 1 AS `user_id`,
 1 AS `sum_points_spent`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `waste_types`
--

DROP TABLE IF EXISTS `waste_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waste_types` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `active_status` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waste_types`
--

LOCK TABLES `waste_types` WRITE;
/*!40000 ALTER TABLE `waste_types` DISABLE KEYS */;
INSERT INTO `waste_types` VALUES (1,'Waiting',NULL,NULL,'','2020-11-04 20:41:34','2020-11-04 20:41:34'),(2,'Over-Production',NULL,NULL,NULL,'2020-11-05 00:24:19','2020-11-05 00:24:45'),(3,'Over-Processing',NULL,NULL,NULL,'2020-11-05 00:25:00','2020-11-05 00:25:00'),(4,'Defects',NULL,NULL,NULL,'2020-11-05 00:25:08','2020-11-05 00:25:08'),(5,'Motion',NULL,NULL,NULL,'2020-11-05 00:25:15','2020-11-05 00:25:15'),(6,'Inventory',NULL,NULL,NULL,'2020-11-05 00:25:23','2020-11-05 00:25:23'),(7,'Transportation',NULL,NULL,NULL,'2020-11-05 00:25:31','2020-11-05 00:25:31'),(8,'other',NULL,NULL,NULL,'2020-11-05 02:02:26','2020-11-05 02:02:26');
/*!40000 ALTER TABLE `waste_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'cisi'
--

--
-- Dumping routines for database 'cisi'
--

--
-- Current Database: `cisi`
--

USE `cisi`;

--
-- Final view structure for view `vw_points_balance`
--

/*!50001 DROP VIEW IF EXISTS `vw_points_balance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `vw_points_balance` AS select `pa`.`user_id` AS `user_id`,`u`.`clocknum` AS `clocknum`,`u`.`name` AS `name`,`u`.`first_name` AS `first_name`,`u`.`last_name` AS `last_name`,`u`.`email` AS `email`,`pa`.`sum_points_awarded` AS `sum_points_awarded`,`ps`.`sum_points_spent` AS `sum_points_spent`,(`pa`.`sum_points_awarded` - `ps`.`sum_points_spent`) AS `points_balance` from ((`vw_subqry_points_awarded` `pa` left join `vw_subqry_points_spent` `ps` on((`ps`.`user_id` = `pa`.`user_id`))) left join `users` `u` on((`u`.`id` = `pa`.`user_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_subqry_points_awarded`
--

/*!50001 DROP VIEW IF EXISTS `vw_subqry_points_awarded`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `vw_subqry_points_awarded` AS select `c`.`user_id` AS `user_id`,sum(`c`.`points_awarded`) AS `sum_points_awarded` from `cilists` `c` group by `c`.`user_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_subqry_points_spent`
--

/*!50001 DROP VIEW IF EXISTS `vw_subqry_points_spent`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `vw_subqry_points_spent` AS select `p`.`user_id` AS `user_id`,sum(`p`.`points_spent`) AS `sum_points_spent` from `points` `p` group by `p`.`user_id` */;
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

-- Dump completed on 2020-11-22 22:27:01
