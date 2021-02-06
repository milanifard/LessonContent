-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: sadaf
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `accountspecs`
--

DROP TABLE IF EXISTS `accountspecs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accountspecs` (
  `AccountSpecID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `UserPassword` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `PersonID` int(11) DEFAULT NULL,
  PRIMARY KEY (`AccountSpecID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountspecs`
--

LOCK TABLES `accountspecs` WRITE;
/*!40000 ALTER TABLE `accountspecs` DISABLE KEYS */;
INSERT INTO `accountspecs` VALUES (1,'omid','omid3000',1),(2,'nazanin','nazi123',2),(3,'ali','ali123',3);
/*!40000 ALTER TABLE `accountspecs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachment`
--

DROP TABLE IF EXISTS `attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `description` text COLLATE utf8_persian_ci NOT NULL,
  `attachment` text COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachment`
--

LOCK TABLES `attachment` WRITE;
/*!40000 ALTER TABLE `attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communicationhall`
--

DROP TABLE IF EXISTS `communicationhall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communicationhall` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `description` varchar(120) COLLATE utf8_persian_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communicationhall`
--

LOCK TABLES `communicationhall` WRITE;
/*!40000 ALTER TABLE `communicationhall` DISABLE KEYS */;
INSERT INTO `communicationhall` VALUES (1,'تست','نمرات از 100',1),(2,'تست','نمرات از 100',1),(3,'تست','نمرات از 100',0),(4,'تالار گسسته','گسسته',1);
/*!40000 ALTER TABLE `communicationhall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emonarray`
--

DROP TABLE IF EXISTS `emonarray`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emonarray` (
  `_id` int(11) NOT NULL,
  `emon` int(11) DEFAULT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emonarray`
--

LOCK TABLES `emonarray` WRITE;
/*!40000 ALTER TABLE `emonarray` DISABLE KEYS */;
INSERT INTO `emonarray` VALUES (1,31),(2,28),(3,31),(4,30),(5,31),(6,30),(7,31),(8,31),(9,30),(10,31),(11,30),(12,31);
/*!40000 ALTER TABLE `emonarray` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilitypages`
--

DROP TABLE IF EXISTS `facilitypages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facilitypages` (
  `FacilityPageID` int(11) NOT NULL AUTO_INCREMENT,
  `FacilityID` int(11) DEFAULT NULL,
  `PageName` varchar(145) COLLATE utf8_persian_ci DEFAULT NULL,
  PRIMARY KEY (`FacilityPageID`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilitypages`
--

LOCK TABLES `facilitypages` WRITE;
/*!40000 ALTER TABLE `facilitypages` DISABLE KEYS */;
INSERT INTO `facilitypages` VALUES (3,3,'/ManageSystemFacilities.php'),(4,3,'/ManageFacilityPages.php'),(5,3,'/ManageSystemFacilities.php'),(6,3,'/ManageUserFacilities.php'),(7,4,'/ManageSystemFacilityGroups.php'),(8,1,'/Managepersons.php'),(9,5,'/ManageAccountSpecs.php'),(25,5,'/ManageUserPermissions.php'),(50,7,'/lessonList.php'),(51,8,'/subject.php'),(52,9,'/forum.php'),(53,10,'/LessonContent.php'),(54,11,'/post.php'),(58,12,'/source.php');
/*!40000 ALTER TABLE `facilitypages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `description` text COLLATE utf8_persian_ci NOT NULL,
  `src` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file`
--

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
/*!40000 ALTER TABLE `file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fmonarray`
--

DROP TABLE IF EXISTS `fmonarray`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fmonarray` (
  `_id` int(11) NOT NULL,
  `fmon` int(11) DEFAULT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fmonarray`
--

LOCK TABLES `fmonarray` WRITE;
/*!40000 ALTER TABLE `fmonarray` DISABLE KEYS */;
INSERT INTO `fmonarray` VALUES (1,31),(2,31),(3,31),(4,31),(5,31),(6,31),(7,30),(8,30),(9,30),(10,30),(11,30),(12,29);
/*!40000 ALTER TABLE `fmonarray` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folder`
--

DROP TABLE IF EXISTS `folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `folder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `description` text COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folder`
--

LOCK TABLES `folder` WRITE;
/*!40000 ALTER TABLE `folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forums`
--

DROP TABLE IF EXISTS `forums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forums` (
  `forum_id` int(8) NOT NULL AUTO_INCREMENT,
  `forum_subject` int(8) NOT NULL,
  `forum_date` datetime NOT NULL,
  `forum_by` int(8) NOT NULL,
  `forum_status` varchar(3) COLLATE utf8_persian_ci NOT NULL,
  `forum_title` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `forum_description` varchar(45) COLLATE utf8_persian_ci DEFAULT NULL,
  PRIMARY KEY (`forum_id`),
  KEY `forum_by` (`forum_by`),
  KEY `forum_subject` (`forum_subject`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forums`
--

LOCK TABLES `forums` WRITE;
/*!40000 ALTER TABLE `forums` DISABLE KEYS */;
INSERT INTO `forums` VALUES (59,7,'2021-02-06 01:22:38',1,'on','hii',''),(60,7,'2021-02-06 01:22:45',1,'off','کمک درسی',''),(61,7,'2021-02-06 01:37:20',1,'on','','well hello there'),(62,7,'2021-02-06 01:37:36',1,'on','hello','well hello there'),(63,8,'2021-02-06 01:54:39',1,'on','کمک درسی','کمک'),(64,6,'2021-02-06 01:56:23',1,'on','کمک درسی','hi');
/*!40000 ALTER TABLE `forums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson`
--

DROP TABLE IF EXISTS `lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson`
--

LOCK TABLES `lesson` WRITE;
/*!40000 ALTER TABLE `lesson` DISABLE KEYS */;
INSERT INTO `lesson` VALUES (1,105,'مبانی برنامه نویسی'),(3,140,'امنیت شبکه'),(4,150,'ریزپردازنده'),(5,160,'سیگنال'),(6,120,'معماری کامپیوتر'),(7,130,'برنامه نویسی وب'),(8,10,'hey'),(9,115,'jk');
/*!40000 ALTER TABLE `lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `description` text COLLATE utf8_persian_ci NOT NULL,
  `content` text COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page`
--

LOCK TABLES `page` WRITE;
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
INSERT INTO `page` VALUES (1,'تست','نمرات از 100','<p>محتوای خود را وارد کنید.</p>');
/*!40000 ALTER TABLE `page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_lesson`
--

DROP TABLE IF EXISTS `person_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `personid` int(11) NOT NULL,
  `lessonid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `personid` (`personid`),
  KEY `lessonid` (`lessonid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_lesson`
--

LOCK TABLES `person_lesson` WRITE;
/*!40000 ALTER TABLE `person_lesson` DISABLE KEYS */;
INSERT INTO `person_lesson` VALUES (1,1,1),(2,1,9);
/*!40000 ALTER TABLE `person_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persons` (
  `PersonID` int(11) NOT NULL AUTO_INCREMENT,
  `pfname` varchar(45) COLLATE utf8_persian_ci DEFAULT NULL,
  `plname` varchar(45) COLLATE utf8_persian_ci DEFAULT NULL,
  `CardNumber` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`PersonID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons`
--

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
INSERT INTO `persons` VALUES (1,'اميد','ميلاني فرد','0'),(2,'نازنین','مهرگان','0'),(3,'علی','علیزاده','0');
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `post_id` int(8) NOT NULL AUTO_INCREMENT,
  `post_content` text COLLATE utf8_persian_ci NOT NULL,
  `post_date` datetime NOT NULL,
  `post_topic` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `post_by` int(8) NOT NULL,
  `post_forum` int(8) NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `post_by` (`post_by`),
  KEY `post_topic` (`post_topic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialpages`
--

DROP TABLE IF EXISTS `specialpages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specialpages` (
  `SpecialPageID` int(11) NOT NULL AUTO_INCREMENT,
  `PageName` varchar(245) COLLATE utf8_persian_ci DEFAULT NULL,
  PRIMARY KEY (`SpecialPageID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialpages`
--

LOCK TABLES `specialpages` WRITE;
/*!40000 ALTER TABLE `specialpages` DISABLE KEYS */;
INSERT INTO `specialpages` VALUES (1,'main.php'),(2,'/main.php'),(3,'/Menu.php'),(4,'/MainContent.php'),(5,'/ChangePassword.php'),(6,'/MyActions.php'),(7,'/SelectPersonel.php'),(8,'/SelectCustomer.php'),(9,'/SelectStaff.php'),(10,'/GetExamItemPrice.php');
/*!40000 ALTER TABLE `specialpages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (1,''),(2,'هی'),(3,'s1'),(4,'ji'),(5,'uuu'),(6,'hiiiii'),(7,'mabani'),(8,'تمارین'),(9,'ui'),(10,'موضوع     درس'),(11,'تست41');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_attachmebt`
--

DROP TABLE IF EXISTS `subject_attachmebt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject_attachmebt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subjectId` int(11) NOT NULL,
  `attachmentId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subjectId` (`subjectId`),
  KEY `attachmentId` (`attachmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_attachmebt`
--

LOCK TABLES `subject_attachmebt` WRITE;
/*!40000 ALTER TABLE `subject_attachmebt` DISABLE KEYS */;
/*!40000 ALTER TABLE `subject_attachmebt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_attachment`
--

DROP TABLE IF EXISTS `subject_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subjectId` int(11) NOT NULL,
  `attachmentId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subjectId` (`subjectId`),
  KEY `attachmentId` (`attachmentId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_attachment`
--

LOCK TABLES `subject_attachment` WRITE;
/*!40000 ALTER TABLE `subject_attachment` DISABLE KEYS */;
INSERT INTO `subject_attachment` VALUES (1,3,2),(2,4,2),(3,5,2);
/*!40000 ALTER TABLE `subject_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_file`
--

DROP TABLE IF EXISTS `subject_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subjectId` int(11) NOT NULL,
  `fileId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subjectId` (`subjectId`),
  KEY `fileId` (`fileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_file`
--

LOCK TABLES `subject_file` WRITE;
/*!40000 ALTER TABLE `subject_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `subject_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_folder`
--

DROP TABLE IF EXISTS `subject_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject_folder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subjectId` int(11) NOT NULL,
  `folderId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subjectId` (`subjectId`),
  KEY `folderId` (`folderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_folder`
--

LOCK TABLES `subject_folder` WRITE;
/*!40000 ALTER TABLE `subject_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `subject_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_hall`
--

DROP TABLE IF EXISTS `subject_hall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject_hall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subjectId` int(11) DEFAULT NULL,
  `hallId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_hall`
--

LOCK TABLES `subject_hall` WRITE;
/*!40000 ALTER TABLE `subject_hall` DISABLE KEYS */;
INSERT INTO `subject_hall` VALUES (1,2,0),(2,3,2),(3,4,1);
/*!40000 ALTER TABLE `subject_hall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_lesson`
--

DROP TABLE IF EXISTS `subject_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subjectId` int(11) NOT NULL,
  `lessonId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subjectId` (`subjectId`),
  KEY `lessonId` (`lessonId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_lesson`
--

LOCK TABLES `subject_lesson` WRITE;
/*!40000 ALTER TABLE `subject_lesson` DISABLE KEYS */;
INSERT INTO `subject_lesson` VALUES (2,1,3),(3,2,4),(4,1,5),(5,1,5),(6,1,5),(7,1,5),(8,1,5),(9,1,5),(10,1,5),(11,1,5),(12,1,5),(13,1,5),(14,1,5),(15,6,1),(16,7,1),(17,8,1),(18,9,1),(19,10,1),(20,11,9);
/*!40000 ALTER TABLE `subject_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_page`
--

DROP TABLE IF EXISTS `subject_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subjectId` int(11) NOT NULL,
  `pageId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subjectId` (`subjectId`),
  KEY `pageId` (`pageId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_page`
--

LOCK TABLES `subject_page` WRITE;
/*!40000 ALTER TABLE `subject_page` DISABLE KEYS */;
INSERT INTO `subject_page` VALUES (1,1,6);
/*!40000 ALTER TABLE `subject_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_tag`
--

DROP TABLE IF EXISTS `subject_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subjectId` int(11) NOT NULL,
  `tagId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subjectId` (`subjectId`),
  KEY `tagId` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_tag`
--

LOCK TABLES `subject_tag` WRITE;
/*!40000 ALTER TABLE `subject_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `subject_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sysaudit`
--

DROP TABLE IF EXISTS `sysaudit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sysaudit` (
  `RecID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `UserID` varchar(15) COLLATE utf8_persian_ci DEFAULT NULL,
  `ActionType` tinyint(3) unsigned DEFAULT NULL,
  `ActionDesc` varchar(500) COLLATE utf8_persian_ci DEFAULT NULL,
  `IPAddress` bigint(20) DEFAULT NULL,
  `SysCode` tinyint(3) unsigned DEFAULT NULL,
  `IsSecure` tinyint(3) unsigned DEFAULT NULL,
  `ATS` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`RecID`),
  KEY `UserID` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysaudit`
--

LOCK TABLES `sysaudit` WRITE;
/*!40000 ALTER TABLE `sysaudit` DISABLE KEYS */;
INSERT INTO `sysaudit` VALUES (1,'omid',NULL,'بروز رسانی داده با شماره شناسایی 6 در  - موارد تغییر داده شده: ',0,0,NULL,'2021-02-03 07:31:23'),(2,'omid',NULL,'بروز رسانی داده با شماره شناسایی 6 در  - موارد تغییر داده شده: ',0,0,NULL,'2021-02-03 07:34:21'),(3,'omid',NULL,'بروز رسانی داده با شماره شناسایی 6 در  - موارد تغییر داده شده: گروه',0,0,NULL,'2021-02-03 07:35:03'),(4,'omid',NULL,'ثبت داده جدید در  با کد 5',2130706433,0,NULL,'2021-02-03 07:45:31'),(5,'omid',NULL,'بروز رسانی داده با شماره شناسایی 6 در  - موارد تغییر داده شده: گروه',2130706433,0,NULL,'2021-02-03 07:45:45'),(6,'omid',NULL,'ثبت داده جدید در  با کد 6',2130706433,0,NULL,'2021-02-03 07:46:35'),(7,'omid',NULL,'حذف داده با شماره شناسایی 6 از ',2130706433,0,NULL,'2021-02-03 07:46:37'),(8,'omid',NULL,'ثبت داده جدید در  با کد 7',0,0,NULL,'2021-02-03 07:54:40'),(9,'omid',NULL,'ثبت داده جدید در  با کد 50',0,0,NULL,'2021-02-03 07:54:58'),(10,'omid',NULL,'ثبت داده جدید در  با کد 7',0,0,NULL,'2021-02-03 07:55:13'),(11,'omid',NULL,'ثبت داده جدید در  با کد 8',0,0,NULL,'2021-02-03 10:45:58'),(12,'omid',NULL,'ثبت داده جدید در  با کد 8',0,0,NULL,'2021-02-03 10:46:04'),(13,'omid',NULL,'ثبت داده جدید در  با کد 51',0,0,NULL,'2021-02-03 10:46:18'),(14,'omid',NULL,'بروز رسانی داده با شماره شناسایی 50 در  - موارد تغییر داده شده: صفحه',0,0,NULL,'2021-02-03 11:06:29'),(15,'omid',NULL,'بروز رسانی داده با شماره شناسایی 7 در  - موارد تغییر داده شده: آدرس صفحه',0,0,NULL,'2021-02-03 11:08:00'),(16,'omid',NULL,'بروز رسانی داده با شماره شناسایی 7 در  - موارد تغییر داده شده: آدرس صفحه',0,0,NULL,'2021-02-03 14:09:27'),(17,'omid',NULL,'بروز رسانی داده با شماره شناسایی 50 در  - موارد تغییر داده شده: صفحه',0,0,NULL,'2021-02-03 14:09:43'),(18,'omid',NULL,'بروز رسانی داده با شماره شناسایی 1 در  - موارد تغییر داده شده: نام ',0,0,NULL,'2021-02-03 19:51:34'),(19,'omid',NULL,'بروز رسانی داده با شماره شناسایی 1 در  - موارد تغییر داده شده: نام ',0,0,NULL,'2021-02-03 19:51:57'),(20,'omid',NULL,'ثبت داده جدید در  با کد 9',0,0,NULL,'2021-02-05 07:40:08'),(21,'omid',NULL,'ثبت داده جدید در  با کد 9',0,0,NULL,'2021-02-05 07:40:17'),(22,'omid',NULL,'ثبت داده جدید در  با کد 52',0,0,NULL,'2021-02-05 07:40:32'),(23,'omid',NULL,'ثبت داده جدید در  با کد 10',0,0,NULL,'2021-02-05 10:03:44'),(24,'omid',NULL,'ثبت داده جدید در  با کد 10',0,0,NULL,'2021-02-05 10:03:59'),(25,'omid',NULL,'ثبت داده جدید در  با کد 53',0,0,NULL,'2021-02-05 10:04:19'),(26,'omid',NULL,'ثبت داده جدید در  با کد 11',0,0,NULL,'2021-02-05 20:22:00'),(27,'omid',NULL,'ثبت داده جدید در  با کد 54',0,0,NULL,'2021-02-05 20:22:10'),(28,'omid',NULL,'ثبت داده جدید در  با کد 11',0,0,NULL,'2021-02-05 20:22:25'),(29,'omid',NULL,'حذف داده با شماره شناسایی 50 از ',0,0,NULL,'2021-02-06 07:40:27'),(30,'omid',NULL,'حذف داده با شماره شناسایی 51 از ',0,0,NULL,'2021-02-06 07:41:24'),(31,'omid',NULL,'حذف داده با شماره شناسایی 49 از ',0,0,NULL,'2021-02-06 07:42:10'),(32,'omid',NULL,'بروز رسانی داده با شماره شناسایی 8 در  - موارد تغییر داده شده: عنوان',0,0,NULL,'2021-02-06 17:50:17'),(33,'omid',NULL,'حذف داده با شماره شناسایی 6 از ',0,0,NULL,'2021-02-06 17:50:26'),(34,'omid',NULL,'ثبت داده جدید در  با کد 12',0,0,NULL,'2021-02-06 17:51:19'),(35,'omid',NULL,'حذف داده با شماره شناسایی 48 از ',0,0,NULL,'2021-02-06 17:51:29'),(36,'omid',NULL,'ثبت داده جدید در  با کد 58',0,0,NULL,'2021-02-06 17:51:32');
/*!40000 ALTER TABLE `sysaudit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemdblog`
--

DROP TABLE IF EXISTS `systemdblog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `systemdblog` (
  `RecID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `page` varchar(200) COLLATE utf8_persian_ci DEFAULT NULL COMMENT 'صفحه',
  `query` text COLLATE utf8_persian_ci COMMENT 'پرس و جو',
  `SerializedParam` text COLLATE utf8_persian_ci COMMENT 'پارامتر پرس و جو',
  `UserID` varchar(15) COLLATE utf8_persian_ci DEFAULT NULL COMMENT 'شناسه کاربر',
  `IPAddress` bigint(20) DEFAULT NULL COMMENT 'آدرس IP',
  `SysCode` tinyint(3) unsigned DEFAULT NULL COMMENT 'کد سیستم',
  `ATS` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'تاریخ اجرا',
  `ExecuteTime` float(14,10) NOT NULL COMMENT 'مدت زمان اجرا',
  `QueryStatus` enum('SUCCESS','FAILED') COLLATE utf8_persian_ci DEFAULT 'SUCCESS' COMMENT 'وضعیت پرس و جو',
  `DBName` varchar(30) COLLATE utf8_persian_ci DEFAULT '' COMMENT 'نام پایگاه داده',
  PRIMARY KEY (`RecID`),
  KEY `UserID` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemdblog`
--

LOCK TABLES `systemdblog` WRITE;
/*!40000 ALTER TABLE `systemdblog` DISABLE KEYS */;
INSERT INTO `systemdblog` VALUES (1,'localhost/sadaf/www/sadaf/ManageSystemFacilities.php','insert into sadaf.SystemFacilities ( FacilityName, GroupID, OrderNo, PageAddress) values (? , ? , ? , ? )HY000,1366,Incorrect integer value: \'\' for column \'OrderNo\' at row 1','a:4:{i:0;s:6:\"تست\";i:1;s:1:\"2\";i:2;s:0:\"\";i:3;s:0:\"\";}','omid',0,0,'2021-02-03 07:27:57',0.0008530617,'FAILED','sadaf'),(2,'localhost/LessonContent/www/sadaf/ManageSystemFacilities.php','insert into sadaf.SystemFacilities ( FacilityName, GroupID, OrderNo, PageAddress) values (? , ? , ? , ? )HY000,1366,Incorrect integer value: \'\' for column \'OrderNo\' at row 1','a:4:{i:0;s:0:\"\";i:1;s:1:\"0\";i:2;s:0:\"\";i:3;s:0:\"\";}','omid',0,0,'2021-02-03 10:45:33',0.0002238750,'FAILED','sadaf'),(3,'localhost/LessonContent/www/sadaf/forum.php','insert into sadaf.categories ( cat_name, cat_description) values (? , ? )23000,1062,Duplicate entry \'first\' for key \'cat_name_unique\'','a:2:{i:0;s:5:\"first\";i:1;s:2:\"hi\";}','omid',0,0,'2021-02-05 07:42:57',0.1083080769,'FAILED','sadaf'),(4,'localhost/LessonContent/www/sadaf/forum.php','insert into sadaf.categories ( cat_name, cat_description) values (? , ? )23000,1062,Duplicate entry \'first\' for key \'cat_name_unique\'','a:2:{i:0;s:5:\"first\";i:1;s:2:\"hi\";}','omid',0,0,'2021-02-05 07:43:37',0.0004279613,'FAILED','sadaf'),(5,'localhost/LessonContent/www/sadaf/subject.php','insert into sadaf.subject_lesson ( id, subjectId, lessonId) values (? , ? )HY093,,','a:3:{i:0;s:1:\"6\";i:1;s:1:\"3\";i:2;s:1:\"1\";}','omid',0,0,'2021-02-05 11:19:20',0.1474251747,'FAILED','sadaf'),(6,'localhost/LessonContent/www/sadaf/forum.php','select subject.title from sadaf.lesson\r\n		where subject.id = ?; 42S22,1054,Unknown column \'subject.title\' in \'field list\'','a:1:{i:0;s:1:\"7\";}','omid',0,0,'2021-02-05 15:25:02',0.0002410412,'FAILED','sadaf'),(7,'localhost/LessonContent/www/sadaf/lessonList.php','insert into sadaf.lesson ( id, code, title) values (? , ? ,?)HY000,1366,Incorrect integer value: \'درس جدید\' for column \'code\' at row 1','a:3:{i:0;s:1:\"8\";i:1;s:15:\"درس جدید\";i:2;s:3:\"160\";}','omid',0,0,'2021-02-05 17:03:10',0.0001571178,'FAILED','sadaf'),(8,'localhost/LessonContent/www/sadaf/lessonList.php','insert into sadaf.lesson ( id, code, title) values (? , ? ,?)HY000,1366,Incorrect integer value: \'درس جدید\' for column \'code\' at row 1','a:3:{i:0;s:1:\"8\";i:1;s:15:\"درس جدید\";i:2;s:3:\"160\";}','omid',0,0,'2021-02-05 17:06:01',0.0001599789,'FAILED','sadaf'),(9,'localhost/LessonContent/www/sadaf/lessonList.php','insert into sadaf.lesson ( id, code, title) values (? , ? ,?)HY000,1366,Incorrect integer value: \'درس جدید\' for column \'code\' at row 1','a:3:{i:0;s:1:\"8\";i:1;s:15:\"درس جدید\";i:2;s:3:\"160\";}','omid',0,0,'2021-02-05 17:06:15',0.0001349449,'FAILED','sadaf'),(10,'localhost/LessonContent/www/sadaf/lessonList.php','insert into sadaf.lesson ( id, code, title) values (? , ? ,?)HY000,1366,Incorrect integer value: \'hey\' for column \'code\' at row 1','a:3:{i:0;s:1:\"8\";i:1;s:3:\"hey\";i:2;s:3:\"102\";}','omid',0,0,'2021-02-05 17:06:38',0.0001161098,'FAILED','sadaf'),(11,'localhost/LessonContent/www/sadaf/lessonList.php','insert into sadaf.lesson ( id, code, title) values (? , ? ,?)HY000,1366,Incorrect integer value: \'hey\' for column \'code\' at row 1','a:3:{i:0;s:1:\"8\";i:1;s:3:\"hey\";i:2;s:1:\"9\";}','omid',0,0,'2021-02-05 17:06:52',0.0027270317,'FAILED','sadaf'),(12,'localhost/LessonContent/www/sadaf/forum.php','insert into sadaf.forums \r\n        (forum_subject,forum_date,forum_by,forum_status,forum_title)\r\n        values(?,NOW(),?,?,?);HY093,,','a:5:{i:0;s:0:\"\";i:1;s:1:\"7\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:3:\"jjo\";}','omid',0,0,'2021-02-05 18:01:26',0.0849578381,'FAILED','sadaf'),(13,'localhost/LessonContent/www/sadaf/forum.php','select forums.forum_title , forums.forum_date , persons.plname from sadaf.forums\r\n		join sadaf.persons on persons.id = forums.forum_by\r\n		join sadaf.subject on subject.id = forums.forum_subject\r\n		where forums.forum_subject = ?; 42S22,1054,Unknown column \'persons.id\' in \'on clause\'','a:1:{i:0;s:0:\"\";}','omid',0,0,'2021-02-05 19:49:06',0.0005481243,'FAILED','sadaf'),(14,'localhost/LessonContent/www/sadaf/forum.php','select forums.forum_title , forums.forum_date , persons.plname from sadaf.forums\r\n		join sadaf.persons on persons.id = forums.forum_by\r\n		join sadaf.subject on subject.id = forums.forum_subject\r\n		where forums.forum_subject = ?; 42S22,1054,Unknown column \'persons.id\' in \'on clause\'','a:1:{i:0;s:1:\"8\";}','omid',0,0,'2021-02-05 19:49:53',0.0003728867,'FAILED','sadaf'),(15,'localhost/LessonContent/www/sadaf/forum.php','select forums.forum_title , forums.forum_date , persons.plname from sadaf.forums\r\n		join sadaf.persons on persons.id = forums.forum_by\r\n		join sadaf.subject on subject.id = forums.forum_subject\r\n		where forums.forum_subject = ?; 42S22,1054,Unknown column \'persons.id\' in \'on clause\'','a:1:{i:0;s:1:\"7\";}','omid',0,0,'2021-02-05 19:50:38',0.0002038479,'FAILED','sadaf'),(16,'localhost/LessonContent/www/sadaf/forum.php','select forums.forum_title , forums.forum_date , persons.plname,persons.pfname,forum.forum_id from sadaf.forums\r\n		join sadaf.persons on persons.PersonID = forums.forum_by\r\n		join sadaf.subject on subject.id = forums.forum_subject\r\n		where forums.forum_subject = ?; 42S22,1054,Unknown column \'forum.forum_id\' in \'field list\'','a:1:{i:0;s:1:\"7\";}','omid',0,0,'2021-02-05 20:08:51',0.0101320744,'FAILED','sadaf'),(17,'localhost/LessonContent/www/sadaf/post.php','select posts.posts_topic,posts.post_description , posts.post_date , persons.plname,persons.pfname,posts.post_id from sadaf.posts\r\n		join sadaf.persons on persons.PersonID = posts.post_by\r\n		join sadaf.forums on forums.forum_id = posts.post_forum\r\n		where posts.post_forum = ?; 42S22,1054,Unknown column \'posts.posts_topic\' in \'field list\'','a:1:{i:0;s:2:\"60\";}','omid',0,0,'2021-02-05 22:25:26',0.0004169941,'FAILED','sadaf'),(18,'localhost/LessonContent/www/sadaf/post.php','select posts.post_topic,posts.post_description , posts.post_date , persons.plname,persons.pfname,posts.post_id from sadaf.posts\r\n		join sadaf.persons on persons.PersonID = posts.post_by\r\n		join sadaf.forums on forums.forum_id = posts.post_forum\r\n		where posts.post_forum = ?; 42S22,1054,Unknown column \'posts.post_description\' in \'field list\'','a:1:{i:0;s:2:\"60\";}','omid',0,0,'2021-02-05 22:25:59',0.0002050400,'FAILED','sadaf'),(19,'localhost/LessonContent/www/sadaf/post.php','select posts.post_topic,posts.post_content , posts.post_date , persons.plname,persons.pfname,posts.post_id from sadaf.posts\r\n		join sadaf.persons on persons.PersonID = posts.post_by\r\n		join sadaf.forums on forums.forum_id = posts.post_forum\r\n		where posts.post_forum = ?; 42S22,1054,Unknown column \'posts.post_forum\' in \'where clause\'','a:1:{i:0;s:2:\"64\";}','omid',0,0,'2021-02-05 22:26:25',0.0004301071,'FAILED','sadaf');
/*!40000 ALTER TABLE `systemdblog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemfacilities`
--

DROP TABLE IF EXISTS `systemfacilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `systemfacilities` (
  `FacilityID` int(11) NOT NULL AUTO_INCREMENT,
  `FacilityName` varchar(245) COLLATE utf8_persian_ci DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `OrderNo` int(11) DEFAULT NULL,
  `PageAddress` varchar(345) COLLATE utf8_persian_ci DEFAULT NULL,
  PRIMARY KEY (`FacilityID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemfacilities`
--

LOCK TABLES `systemfacilities` WRITE;
/*!40000 ALTER TABLE `systemfacilities` DISABLE KEYS */;
INSERT INTO `systemfacilities` VALUES (1,'مدیریت افراد',1,3,'Managepersons.php'),(3,'مدیریت امکانات',1,2,'ManageSystemFacilities.php'),(4,'مدیریت گروه های منو',1,1,'ManageSystemFacilityGroups.php'),(5,'مدیریت کاربران',1,4,'ManageAccountSpecs.php'),(7,'درس ها',2,2,'lessonList.php'),(8,'موضوع ها',2,1,'subject.php'),(9,'تالار گفتگو',2,1,'forum.php'),(10,'محتوا درس',2,3,'LessonContent.php'),(11,'پست',2,1,'/post.php'),(12,'منابع',2,1,'source.php');
/*!40000 ALTER TABLE `systemfacilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemfacilitygroups`
--

DROP TABLE IF EXISTS `systemfacilitygroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `systemfacilitygroups` (
  `GroupID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupName` varchar(145) COLLATE utf8_persian_ci DEFAULT NULL,
  `OrderNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`GroupID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemfacilitygroups`
--

LOCK TABLES `systemfacilitygroups` WRITE;
/*!40000 ALTER TABLE `systemfacilitygroups` DISABLE KEYS */;
INSERT INTO `systemfacilitygroups` VALUES (1,'مدیریت گروه های منو',1),(2,'عملیات کاری',3),(3,'گزارشات',4);
/*!40000 ALTER TABLE `systemfacilitygroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userfacilities`
--

DROP TABLE IF EXISTS `userfacilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userfacilities` (
  `FacilityPageID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `FacilityID` int(11) DEFAULT NULL,
  PRIMARY KEY (`FacilityPageID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userfacilities`
--

LOCK TABLES `userfacilities` WRITE;
/*!40000 ALTER TABLE `userfacilities` DISABLE KEYS */;
INSERT INTO `userfacilities` VALUES (1,'omid',1),(2,'omid',3),(3,'omid',4),(4,'omid',5),(7,'omid',7),(8,'omid',8),(9,'omid',9),(10,'omid',10),(11,'omid',11),(12,'omid',12);
/*!40000 ALTER TABLE `userfacilities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-06 21:23:05
