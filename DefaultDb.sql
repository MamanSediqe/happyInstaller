-- Use the database
USE LinksDb;
--
-- Table structure for table `LinkUsers`
--

DROP TABLE IF EXISTS `LinkUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LinkUsers` (
  `UserName` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_persian_ci NOT NULL,
  `UserTitle` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_persian_ci NOT NULL,
  `Password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_persian_ci DEFAULT NULL,
  `UserType` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LinkUsers`
--

LOCK TABLES `LinkUsers` WRITE;
/*!40000 ALTER TABLE `LinkUsers` DISABLE KEYS */;
INSERT INTO `LinkUsers` VALUES ('Admin','مدیر سایت','$2y$10$ILalxocUObYE577gnK1qqOdaGhegIduKbwyWtLxJugOoHqvT7T2HC','ADM'),('Guest','کاربر میهمان','$2y$10$hvVWQGvGDiCzT8Ahy7rNQepmxZJt2IESM6Khb7hcHUkqz6LAffSoW','USR');
/*!40000 ALTER TABLE `LinkUsers` ENABLE KEYS */;
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
INSERT INTO `Links` VALUES (1,'Server 1','vless://abd87b55-afaf-4bc6-8dd2-2cce09c4272c@hp.mustang.website:47368?type=kcp&headerType=none&seed=twcK2jV0G4&security=none#Fast-Euro-01'),(2,'Server 2','vless://c07e8407-319d-4f37-e4be-a60051851111@hp.mustang.website:56425?type=ws&path=%2F&host=&security=none#Bossted-M1'),(3,'Server 3','ss://MjAyMi1ibGFrZTMtYWVzLTI1Ni1nY206Z0Mza3hKcjZ6UUJNTzBYdm1jRGkrWFFieENpZUNzbHBwcDV0WVNJRXVOYz06YmtuT3NwWEJUUlRocmdJZDhtQWhXY3FTc0tNRXIyYTEydXRSUy9LQ0hRST0@hp.mustang.website:31711?type=tcp#Shadow-Euro-02'),(4,'Server 97','vmuss://pi1T2.W306Y.eq2#9a1pa1ol8he0ne0#9a2wq5te0do0#9a3wourckvefbga.Urscsytiku.swctjo54m#9a4mw0su0pf2#9a5dr0ed1cs2bv0#9a6nkgyhotYonygx5lmnesu.yecuiowjm#9a7klfsladicqheyrbejohwokpkzj.rfcpfovum#9a8opodfjmxncvbhfdj'),(5,'Server 98','vmoss://Hchwhpbtlq5.MMmiSugnsjotjHaznn0WgTk.q4wybeVDbPesXyiLjtMRe#901HM1pZsR597oWAcvrmiJT4RBoVOG2ccTNR18Lixe3ady85PRpaJDtSC8hSYTwQi0ofBvjwINb9PljsuJIgVENU'),(6,'Server 99','vmoss://Hchwhpbt.MMmiSugnsjotjHaznn0WgTk.q4wybeVDbPesXyiLjtMRe#902HM1pZsR597oWAcvrmiJT4RBoVOG2ccTNR18Lixe3ady85PRpaJDtSC8hSYTwQi0ofBvjwINb9PljsuJIgVENU');
/*!40000 ALTER TABLE `Links` ENABLE KEYS */;
UNLOCK TABLES;
