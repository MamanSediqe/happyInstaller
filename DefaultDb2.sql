-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: Happy2Db
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

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
-- Table structure for table `HappyUsers`
--

DROP TABLE IF EXISTS `HappyUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HappyUsers` (
  `UserName` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_persian_ci NOT NULL,
  `UserTitle` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_persian_ci NOT NULL,
  `Password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_persian_ci DEFAULT NULL,
  `UserType` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HappyUsers`
--

LOCK TABLES `HappyUsers` WRITE;
/*!40000 ALTER TABLE `HappyUsers` DISABLE KEYS */;
INSERT INTO `HappyUsers` VALUES 
('Admin','مدیر سایت','$2y$10$ILalxocUObYE577gnK1qqOdaGhegIduKbwyWtLxJugOoHqvT7T2HC','ADM'),
('Guest','کاربر میهمان','$2y$10$hvVWQGvGDiCzT8Ahy7rNQepmxZJt2IESM6Khb7hcHUkqz6LAffSoW','USR');
/*!40000 ALTER TABLE `HappyUsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Links`
--

DROP TABLE IF EXISTS `Links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Links` (
  `LinkId` int NOT NULL,
  `LinkTitle` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_persian_ci NOT NULL,
  `LinkValue` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_persian_ci DEFAULT NULL,
  PRIMARY KEY (`LinkId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES 
(1,'Server 1','vless://abd87b55-afaf-4bc6-8dd2-2cce09c4272c@ifisnotin.website:47368?type=kcp&headerType=none&seed=twcK2jV0G4&security=none#Fast-Euro-01'),
(2,'Server 2','vless://c07e8407-319d-4f37-e4be-a60051851111@ifisnotin.website:56425?type=ws&path=%2F&security=none#Bossted-M1'),
(3,'Server 3','ss://MjAyMi1ibGFrZTMtYWVzLTI1Ni1nY206Z0Mza3hKcjZ6UUJNTzBYdm1jRGkrWFFieENpZUNzbHBwcDV0WVNJRXVOYz06YmtuT3NwWEJUUlRocmdJZDhtQWhXY3FTc0tNRXIyYTEydXRSUy9LQ0hRST0@ifisnotin.website:31711?type=tcp#Shadow-Euro-02'),
(4,'Server 97','vmuss://pi1T2.W306Y.eq1#9a1pa1ol8he0ne0#9a2wq5te0do0#9a3wourckvefbga.Urscsytiku.swctjo54m#9a4mw0su0pf2#9a5dr0ed1cs2bv0#9a6nkgyhotYonygx5lmnesu.yecuiowjm#9a7klfsladicqheyrbejohwokpkzj.rfcpfovum#9a8opodfjmxncvbhfdj'),
(5,'Server 98','vmoss://Hchwhpbtlq5.MMmiSugnsjotjHaznn0WgTk.q4wybeVDbPesXyiLjtMRe#901HM1pZsR597oWAcvrmiJT4RBoVOG2ccTNR18Lixe3ady85PRpaJDtSC8hSYTwQi0ofBvjwINb9PljsuJIgVENU'),
(6,'Server 99','vmoss://Hchwhpbt.MMmiSugnsjotjHaznn0WgTk.q4wybeVDbPesXyiLjtMRe#902HM1pZsR597oWAcvrmiJT4RBoVOG2ccTNR18Lixe3ady85PRpaJDtSC8hSYTwQi0ofBvjwINb9PljsuJIgVENU'),
(7,'Server 4','vless://05519058-d2ac-4f28-9e4a-2b2a1386749e@15.188.13.15:22222?path=/telegram-channel-vlessconfig-ws&security=tls&encryption=none&host=telegram-channel-vlessconfig.sohala.uk&type=ws&sni=telegram-channel-vlessconfig.sohala.uk#Euro-04');
/*!40000 ALTER TABLE `Links` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `UsersLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UsersLog` (
  `LogId` int NOT NULL AUTO_INCREMENT,
  `LogTime` datetime NOT NULL,
  `UserIP` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `DeviceId` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `AppVersion` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `RefUrl` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Location` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`LogId`)
) ENGINE=InnoDB AUTO_INCREMENT=380 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsersLog`
--

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-07 20:46:16
