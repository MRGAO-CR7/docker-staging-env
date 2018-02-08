CREATE DATABASE  IF NOT EXISTS `analytics` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `analytics`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: analytics
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
-- Table structure for table `acquisitions`
--

DROP TABLE IF EXISTS `acquisitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acquisitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `record_type` varchar(12) NOT NULL DEFAULT 'customer',
  `record_id` int(9) NOT NULL,
  `source` varchar(20) DEFAULT 'orbitremit',
  `keyword` varchar(55) DEFAULT NULL,
  `match_type` varchar(25) DEFAULT NULL,
  `device` varchar(25) DEFAULT NULL,
  `device_model` varchar(25) DEFAULT NULL,
  `placement` varchar(25) DEFAULT NULL,
  `creative` varchar(25) DEFAULT NULL,
  `network` varchar(25) DEFAULT NULL,
  `campaign_id` varchar(25) DEFAULT NULL,
  `adgroup_id` varchar(25) DEFAULT NULL,
  `gclid` varchar(125) DEFAULT NULL,
  `created` datetime NOT NULL,
  `feed_item_id` varchar(24) DEFAULT NULL,
  `target_id` varchar(24) DEFAULT NULL,
  `loc_physical_ms` int(24) DEFAULT NULL,
  `loc_interest_ms` int(24) DEFAULT NULL,
  `ad_position` varchar(45) DEFAULT NULL,
  `utm_medium` varchar(20) DEFAULT NULL,
  `utm_campaign` varchar(20) DEFAULT NULL,
  `utm_term` varchar(20) DEFAULT NULL,
  `utm_content` varchar(20) DEFAULT NULL,
  `gcamp` varchar(45) DEFAULT NULL,
  `ip_address` varchar(24) DEFAULT NULL,
  `country_code` varchar(4) DEFAULT NULL,
  `country_name` varchar(24) DEFAULT NULL,
  `city` varchar(24) DEFAULT NULL,
  `time_zone` varchar(24) DEFAULT NULL,
  `platform` varchar(24) DEFAULT NULL,
  `browser` varchar(24) DEFAULT NULL,
  `browser_version` varchar(12) DEFAULT NULL,
  `referrer_url` varchar(255) DEFAULT NULL,
  `referring_domain` varchar(55) DEFAULT NULL,
  `path_position` varchar(24) NOT NULL DEFAULT 'first',
  `cookie_string` text,
  `clicked` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16077 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acquisitions`
--

LOCK TABLES `acquisitions` WRITE;
/*!40000 ALTER TABLE `acquisitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `acquisitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_address_details`
--

DROP TABLE IF EXISTS `ip_address_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_address_details` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `record_type` varchar(12) NOT NULL,
  `record_id` int(12) NOT NULL,
  `ip_address` varchar(40) NOT NULL,
  `isp` varchar(40) DEFAULT NULL,
  `organization` varchar(40) DEFAULT NULL,
  `autonomous_system_organization` varchar(21) DEFAULT NULL,
  `domain` varchar(12) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `country_code` varchar(4) DEFAULT NULL,
  `country_name` varchar(21) DEFAULT NULL,
  `post_code` int(8) DEFAULT NULL,
  `continent` varchar(21) DEFAULT NULL,
  `geoname_id` varchar(12) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `location_accuracy_radius` int(5) DEFAULT NULL,
  `time_zone` varchar(21) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `record_id` (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_address_details`
--

LOCK TABLES `ip_address_details` WRITE;
/*!40000 ALTER TABLE `ip_address_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_address_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logins`
--

DROP TABLE IF EXISTS `logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logins` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `customer_id` int(8) NOT NULL,
  `ip_address` varchar(24) DEFAULT NULL,
  `country_code` varchar(4) DEFAULT NULL,
  `city` varchar(24) DEFAULT NULL,
  `timezone` varchar(12) DEFAULT NULL,
  `platform` varchar(12) DEFAULT NULL,
  `browser` varchar(12) DEFAULT NULL,
  `browser_version` varchar(200) DEFAULT NULL,
  `referring_domain` varchar(45) DEFAULT NULL,
  `referrer_url` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `client_application` varchar(45) NOT NULL DEFAULT 'customer-application',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48561 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `suspicious_ip_addresses`
--

DROP TABLE IF EXISTS `suspicious_ip_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suspicious_ip_addresses` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(36) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suspicious_ip_addresses`
--

LOCK TABLES `suspicious_ip_addresses` WRITE;
/*!40000 ALTER TABLE `suspicious_ip_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `suspicious_ip_addresses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-11 12:22:52
