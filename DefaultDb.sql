CREATE DATABASE IF NOT EXISTS u312411968_happy2_db;
USE u312411968_happy2_db;

DROP TABLE IF EXISTS `HappyUsers`;
CREATE TABLE `HappyUsers` (
  `UserName` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserTitle` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserType` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `Links`;
CREATE TABLE `Links` (
  `LinkId` int NOT NULL,
  `LinkTitle` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `LinkValue` varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`LinkId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `Parameters`;
CREATE TABLE `Parameters` (
  `Id` int NOT NULL,
  `ParameterName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ParameterValue` varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `UsersLog`;
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



LOCK TABLES `HappyUsers` WRITE;
INSERT INTO `HappyUsers` VALUES 
('Admin','مدیر سایت','$2y$10$ILalxocUObYE577gnK1qqOdaGhegIduKbwyWtLxJugOoHqvT7T2HC','ADM'),
('Guest','کاربر میهمان','$2y$10$hvVWQGvGDiCzT8Ahy7rNQepmxZJt2IESM6Khb7hcHUkqz6LAffSoW','USR');
UNLOCK TABLES;

LOCK TABLES `Links` WRITE;
INSERT INTO `Links` VALUES 
(1,'Server 1','vless://abd87b55-afaf-4bc6-8dd2-2cce09c4272c@ifisnotin.website:47368?type=kcp&headerType=none&seed=twcK2jV0G4&security=none#Fast-Euro-01'),
(2,'Server 2','vless://c07e8407-319d-4f37-e4be-a60051851111@ifisnotin.website:56425?type=ws&path=%2F&security=none#Bossted-M1'),
(3,'Server 3','ss://MjAyMi1ibGFrZTMtYWVzLTI1Ni1nY206Z0Mza3hKcjZ6UUJNTzBYdm1jRGkrWFFieENpZUNzbHBwcDV0WVNJRXVOYz06YmtuT3NwWEJUUlRocmdJZDhtQWhXY3FTc0tNRXIyYTEydXRSUy9LQ0hRST0@ifisnotin.website:31711?type=tcp#Shadow-Euro-02'),
(4,'Server 96','nmsgs://wK+pu+qc6rvsgBXtlO+y75fjteGfwK6puD8564DtsO2XEOmT6J3qtO+4Feyx7pAX4InhnhDom+mVEuuR7JrthBDomema6b/qsu+57ZkW7rLgnxngt+m0EeqD65TvuO+a6JfotxLqlOub7JLss++wF+G94rXon+i26b7qtjk+xaq8iei06pjrh+6d7YTtuu6yyKe1gD066ZnqlRPrk+yG7ZrpsOmV6pzqsxTtku6EF+2R4b3ivOieEeu364DvuO2EEOm06r7qmeq87JLssO2775cY4Lzog+q96oMT65rtve2fEOmb6pUT65bsm+2H7bvuvhjgvOm46LPqi+i/7J4V7Z7puemd6oLqvBTthO6RF++Q4JHivOm36r7qnD4+7JrssuibEeib6rXvuO2aFu+175DhvRnol+mDEuuy64Dsku2BEOuY67bov+ybFe2e7pDstOCWGeic6r0S643ouBTtkuiDEeud67vrgO+5Fe6H75AY4IjguOiF6LQS6Zrshe2a6bcR6LoS6Zrtse65Fu6C75DgiBnqmei36b7rnBTsn+2XEOi067rqseyN7rnunBfvjOG84ZcQ6LTqhuud7IEV7YTpuemdPznrk+yC7LLukO+B4J7hmhDpnOqD6ZrsnhXtnum56Z3qguq8FOyy7ocX75fhu+K86bPotRoFAxTsnu2X6bfqvuu0GhTvue+f7p/vn+CIGeiY6ZbqgOud7bztkum26r0S67bouOyB7L7umDoy'),
(5,'Server 97','vmuss://1A1O7.qK0Kb.wi1#9a1T51CK8oj0BD0#9a2Rt5rT0Fv0#9a36NuQGklqfq2awyr0ksccitf.Fpc1noQtm#9a41z0#9a5Bx1ks2sS0#9a6y5tSkirlmZkesx.MYi6kr#9a7YXf0YaXxc1qeV0b0ioU2o4lkxm.qvcXaodVm#9a8FKTG1rWVuqGe#9a9hL2#9aaaA1#9abx88#9acOn4#9adLXK5DLUFxjItA3GBcvy4SSyya8z5UVoMyYjhpH1vyLpHyOh4ZG5R4F8UZwyUsmEKiS5MhKOFrg5YYCd4iw0mo4bnd36hEmUXgSbPrGWGGCF8qLz6UK2gQGbEiOAkEcnstwrNnRu00hUymIOZt4FMjRfhdScvxbuJbuHAEKVqHmwECKAjyETEsgzywNOSDVpPabUxKfIRNL7MNRUanaqZkfmndGtNYURuNqejBvsbQiYdnA6sm2rODqUABBMb5vaPld2wTws7cVkNYMaBN1S3bxXG7KAR4i7aTR'),
(6,'Server 98','vmoss://a2#902rsV2OasGspcq80KKCGbzBniG3TejPtVKgywUOKKoyzPstpTYztD2Gk2AfszGFWJGzx1GhzrDqGpqo5iJDzykPDxRLSksUrIlgfPl7gP34ul6apeE2cox3ESniGulxS3K1mHoquSpE5XiLT0xda27aPJJkdulCwCCL2Ya0aS3LlGqhHWJtFCJ7cGOqJC7iC16uG3MiC4XJxhsN3R8dt6tnVLnXGyHcavu57MbOPWj2UEUIJVxxgAnBkaM1xc3gLlSOuRYG21u7j7RJ1D8UzmyrBBfYtbbwT'),
(7,'Server 99','vmoss://fhhTFp1r2I7.l1m3Fuqzsw8tgdaXGnSegfN.48wI8eFKbiGsDfi8EtdmeZz/mChRBasEprLpotyfd2#9012OunN0nLP2BAYEaQ1Z42IxUkPplZ6iKHlhucnuz0wR2b1TNXTiqqLeucZoMdUiaAQZjmxjcq1oIrKg8N11kl4a0SHmjecrQpz864p6D1xMy1rMGhqpjYf1KtKl3PoXkCaWFQNAYKijWCNzvrg2fQHUzewuj5sd5Q');

UNLOCK TABLES;

LOCK TABLES `Parameters` WRITE;

INSERT INTO `Parameters` VALUES 
(1,'notificationId','1'),
(2,'notificationText','😊خوش آمدید😊\nشما آگهی ها را تا آخر ببینید ما هم رایگان ادامه میدهیم\n🌹متشکریم🌹'),
(3,'maxAcceptableDelay','5000'),
(4,'advertizeURL','UKkFarsi.com/adv.php'),
(5,'refreshServersMinutesMin','1'),
(6,'refreshServersMinutesMax','120'),
(7,'netDelayURL','time.ir'),
(8,'vpnDelayURL','facebook.com'),
(9,'measureDelayByPing','true'),
(10,'latestVersion','1.1.1'),
(11,'permittedConnectionSeconds','1200'),
(12,'getAdWaitSeconds','8'),
(13,'getAdRetryCount','4'),
(14,'domainNames0','hp2.mustang.website/happy2'),
(15,'domainNames1',''),
(16,'domainNames2',''),
(17,'domainNames3',''),
(18,'domainNames4',''),
(19,'domainNames5',''),
(101,'Inbound1','vless://abd87b55-afaf-4bc6-8dd2-2cce09c4272c@ifisnotin.website:47368?type=kcp&headerType=none&seed=twcK2jV0G4&security=none#Fast-Euro-01'),
(102,'Inbound2','vless://c07e8407-319d-4f37-e4be-a60051851111@ifisnotin.website:56425?type=ws&path=%2F&security=none#Bossted-M1'),
(103,'Inbound3','ss://MjAyMi1ibGFrZTMtYWVzLTI1Ni1nY206Z0Mza3hKcjZ6UUJNTzBYdm1jRGkrWFFieENpZUNzbHBwcDV0WVNJRXVOYz06YmtuT3NwWEJUUlRocmdJZDhtQWhXY3FTc0tNRXIyYTEydXRSUy9LQ0hRST0@ifisnotin.website:31711?type=tcp#Shadow-Euro-02'),
(104,'Inbound4',''),
(105,'Inbound5',''),
(106,'Inbound6','')
;


UNLOCK TABLES;

