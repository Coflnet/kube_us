-- MySQL dump 10.19  Distrib 10.3.28-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: songvoter
-- ------------------------------------------------------
-- Server version	10.3.30-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ExternalSongs`
--

DROP TABLE IF EXISTS `ExternalSongs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExternalSongs` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Platform` int(11) NOT NULL,
  `Title` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `Artist` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `ThumbnailUrl` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `ExternalId` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `SongId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_ExternalSongs_SongId` (`SongId`),
  CONSTRAINT `FK_ExternalSongs_Songs_SongId` FOREIGN KEY (`SongId`) REFERENCES `Songs` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExternalSongs`
--

LOCK TABLES `ExternalSongs` WRITE;
/*!40000 ALTER TABLE `ExternalSongs` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExternalSongs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Invites`
--

DROP TABLE IF EXISTS `Invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Invites` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `PartyId` int(11) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  `CreatorId` int(11) NOT NULL,
  `ValidUntil` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Invites_PartyId` (`PartyId`),
  KEY `IX_Invites_UserId` (`UserId`),
  CONSTRAINT `FK_Invites_Parties_PartyId` FOREIGN KEY (`PartyId`) REFERENCES `Parties` (`Id`),
  CONSTRAINT `FK_Invites_Users_UserId` FOREIGN KEY (`UserId`) REFERENCES `Users` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Invites`
--

LOCK TABLES `Invites` WRITE;
/*!40000 ALTER TABLE `Invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `Invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Parties`
--

DROP TABLE IF EXISTS `Parties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Parties` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CreatorId` int(11) DEFAULT NULL,
  `Name` varchar(30) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Parties_CreatorId` (`CreatorId`),
  CONSTRAINT `FK_Parties_Users_CreatorId` FOREIGN KEY (`CreatorId`) REFERENCES `Users` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Parties`
--

LOCK TABLES `Parties` WRITE;
/*!40000 ALTER TABLE `Parties` DISABLE KEYS */;
/*!40000 ALTER TABLE `Parties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PartySongUser`
--

DROP TABLE IF EXISTS `PartySongUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PartySongUser` (
  `DownVotersId` int(11) NOT NULL,
  `DownvotesId` bigint(20) NOT NULL,
  PRIMARY KEY (`DownVotersId`,`DownvotesId`),
  KEY `IX_PartySongUser_DownvotesId` (`DownvotesId`),
  CONSTRAINT `FK_PartySongUser_PartySongs_DownvotesId` FOREIGN KEY (`DownvotesId`) REFERENCES `PartySongs` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_PartySongUser_Users_DownVotersId` FOREIGN KEY (`DownVotersId`) REFERENCES `Users` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PartySongUser`
--

LOCK TABLES `PartySongUser` WRITE;
/*!40000 ALTER TABLE `PartySongUser` DISABLE KEYS */;
/*!40000 ALTER TABLE `PartySongUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PartySongUser1`
--

DROP TABLE IF EXISTS `PartySongUser1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PartySongUser1` (
  `UpVotersId` int(11) NOT NULL,
  `UpvotesId` bigint(20) NOT NULL,
  PRIMARY KEY (`UpVotersId`,`UpvotesId`),
  KEY `IX_PartySongUser1_UpvotesId` (`UpvotesId`),
  CONSTRAINT `FK_PartySongUser1_PartySongs_UpvotesId` FOREIGN KEY (`UpvotesId`) REFERENCES `PartySongs` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_PartySongUser1_Users_UpVotersId` FOREIGN KEY (`UpVotersId`) REFERENCES `Users` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PartySongUser1`
--

LOCK TABLES `PartySongUser1` WRITE;
/*!40000 ALTER TABLE `PartySongUser1` DISABLE KEYS */;
/*!40000 ALTER TABLE `PartySongUser1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PartySongs`
--

DROP TABLE IF EXISTS `PartySongs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PartySongs` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `PartyId` int(11) NOT NULL,
  `PlayedTimes` smallint(6) NOT NULL,
  `SongId` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_PartySongs_PartyId` (`PartyId`),
  KEY `IX_PartySongs_SongId` (`SongId`),
  CONSTRAINT `FK_PartySongs_Parties_PartyId` FOREIGN KEY (`PartyId`) REFERENCES `Parties` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_PartySongs_Songs_SongId` FOREIGN KEY (`SongId`) REFERENCES `Songs` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PartySongs`
--

LOCK TABLES `PartySongs` WRITE;
/*!40000 ALTER TABLE `PartySongs` DISABLE KEYS */;
/*!40000 ALTER TABLE `PartySongs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PartyUser`
--

DROP TABLE IF EXISTS `PartyUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PartyUser` (
  `MembersId` int(11) NOT NULL,
  `PartiesId` int(11) NOT NULL,
  PRIMARY KEY (`MembersId`,`PartiesId`),
  KEY `IX_PartyUser_PartiesId` (`PartiesId`),
  CONSTRAINT `FK_PartyUser_Parties_PartiesId` FOREIGN KEY (`PartiesId`) REFERENCES `Parties` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_PartyUser_Users_MembersId` FOREIGN KEY (`MembersId`) REFERENCES `Users` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PartyUser`
--

LOCK TABLES `PartyUser` WRITE;
/*!40000 ALTER TABLE `PartyUser` DISABLE KEYS */;
/*!40000 ALTER TABLE `PartyUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PlayLists`
--

DROP TABLE IF EXISTS `PlayLists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PlayLists` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Owner` int(11) NOT NULL,
  `Title` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PlayLists`
--

LOCK TABLES `PlayLists` WRITE;
/*!40000 ALTER TABLE `PlayLists` DISABLE KEYS */;
/*!40000 ALTER TABLE `PlayLists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PlaylistSong`
--

DROP TABLE IF EXISTS `PlaylistSong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PlaylistSong` (
  `PlaylistsId` int(11) NOT NULL,
  `SongsId` int(11) NOT NULL,
  PRIMARY KEY (`PlaylistsId`,`SongsId`),
  KEY `IX_PlaylistSong_SongsId` (`SongsId`),
  CONSTRAINT `FK_PlaylistSong_PlayLists_PlaylistsId` FOREIGN KEY (`PlaylistsId`) REFERENCES `PlayLists` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_PlaylistSong_Songs_SongsId` FOREIGN KEY (`SongsId`) REFERENCES `Songs` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PlaylistSong`
--

LOCK TABLES `PlaylistSong` WRITE;
/*!40000 ALTER TABLE `PlaylistSong` DISABLE KEYS */;
/*!40000 ALTER TABLE `PlaylistSong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Songs`
--

DROP TABLE IF EXISTS `Songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Songs` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Songs`
--

LOCK TABLES `Songs` WRITE;
/*!40000 ALTER TABLE `Songs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `GoogleId` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'Flo M','103070302951183052958');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `__EFMigrationsHistory`
--

DROP TABLE IF EXISTS `__EFMigrationsHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__EFMigrationsHistory` (
  `MigrationId` varchar(95) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__EFMigrationsHistory`
--

LOCK TABLES `__EFMigrationsHistory` WRITE;
/*!40000 ALTER TABLE `__EFMigrationsHistory` DISABLE KEYS */;
INSERT INTO `__EFMigrationsHistory` VALUES ('20210401153725_Initial','5.0.4'),('20210508212232_invite','5.0.4');
/*!40000 ALTER TABLE `__EFMigrationsHistory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-07 17:44:15
