-- MySQL dump 10.13  Distrib 5.1.58, for debian-linux-gnu (i486)
--
-- Host: 127.0.0.1    Database: fastem
-- ------------------------------------------------------
-- Server version	5.1.58-1~dotdeb.1

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
-- Current Database: `fastem`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `fastem` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `fastem`;

--
-- Table structure for table `adbanner`
--

DROP TABLE IF EXISTS `adbanner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adbanner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `tracid` varchar(45) DEFAULT NULL,
  `zoneid` int(11) DEFAULT NULL,
  `uptime` int(11) DEFAULT NULL,
  `downtime` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `adtype` tinyint(4) DEFAULT '0' COMMENT '0: image\n1: iframe',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adbanner`
--

LOCK TABLES `adbanner` WRITE;
/*!40000 ALTER TABLE `adbanner` DISABLE KEYS */;
INSERT INTO `adbanner` VALUES (1,'QuickWeb','http://netroby.gocdn.info/images/quickweb.gif','http://www.netroby.com','quickweb_top_banner',1,-28800,1319731200,-1,728,90,0),(4,'亚马逊-728x90','#','http://rcm-cn.amazon.cn/e/cm?t=netroby-23&o=28&p=48&l=ez&f=ifr&f=ifr','#',1,1317225600,1317312000,0,728,90,1);
/*!40000 ALTER TABLE `adbanner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adzone`
--

DROP TABLE IF EXISTS `adzone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adzone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `width` varchar(45) DEFAULT NULL,
  `height` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adzone`
--

LOCK TABLES `adzone` WRITE;
/*!40000 ALTER TABLE `adzone` DISABLE KEYS */;
INSERT INTO `adzone` VALUES (1,'极致运维-博客-头部-banner','728','90','极致运维-博客-头部-banner');
/*!40000 ALTER TABLE `adzone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `salt` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'fastem','8bb2ad83f7d7cc7febaf3f7b2eef9783','bq1214');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-29  6:02:02
