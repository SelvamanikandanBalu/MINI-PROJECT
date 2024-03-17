CREATE DATABASE  IF NOT EXISTS `selva` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `selva`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: selva
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `infra`
--

DROP TABLE IF EXISTS `infra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infra` (
  `Infrastructure_id` varchar(30) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Cost` int DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `type_0_or_1` int DEFAULT NULL,
  PRIMARY KEY (`Infrastructure_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infra`
--

LOCK TABLES `infra` WRITE;
/*!40000 ALTER TABLE `infra` DISABLE KEYS */;
INSERT INTO `infra` VALUES ('1001','Broom',30,'General',4,0),('1002','Washing Cloth',20,'General',5,0),('1003','Marker',50,'General',10,0),('1004','Shuttles',50,'Sports Specific',10,1),('1005','Racquets',500,'Sports Specific',2,1),('1006','Ball',20,'Sports Specific',10,1),('1007','TTBat',150,'Sports Specific',4,1),('1008','BasketBall',300,'Sports Specific',3,1),('1009','TennisRacquet',600,'Sports Specific',2,1),('1010','TennisBalls',100,'Sports Specific',6,1),('1011','TennisNet',300,'Sports Specific',1,1),('1012','CricketGloves',200,'Sports Specific',2,1),('1013','Pads',300,'Sports Specific',2,1),('1014','Bat',400,'Sports Specific',2,1);
/*!40000 ALTER TABLE `infra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `uname` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('deva','darsh');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `player_id` varchar(20) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `sport_name` varchar(40) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `contact` int DEFAULT NULL,
  `fee` int DEFAULT NULL,
  `fee_status` varchar(15) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `sports_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES ('BA001','Rahul','Badminton','M','Msr Nagar',41120789,1600,'paid','1994-09-09','2013-09-11','S2'),('BA002','Josh','Badminton','M','Malleswaram',41169282,1600,'paid','1996-02-02','2013-04-06','S2'),('BA003','Rishab','Badminton','M','JP Nagar',45954202,1600,'paid','1990-08-08','2012-09-08','S2'),('BA004','Sahit','Badminton','M','Express Colony',23417890,1600,'paid','1991-01-01','2013-06-07','S2'),('BA005','Pooja A','Badminton','F','Indira Nagar',45967812,1600,'paid','1995-12-25','2012-12-27','S2'),('BA006','Pooja','Badminton','F','Vijay Nagar',22443311,1600,'paid','1995-11-26','2012-04-05','S2'),('BB001','Sourav','BasketBall','M','MSR Nagar',99880044,1700,'not paid','1994-12-11','2013-02-02','S4'),('BB002','GreenLaw','BasketBall','M','MSR Nagar',99770022,1700,'paid','1992-11-12','2014-05-24','S4'),('BB003','Rishab','BasketBall','M','Jayanagar',22339797,1700,'not paid','1994-02-02','2015-03-08','S4'),('BB004','Rahul C','BasketBall','M','Vijay Nagar',44444455,1700,'paid','1997-01-01','2015-04-06','S4'),('BB005','John','BasketBall','M','ABC Colony',67899876,1700,'paid','1992-05-27','2012-04-26','S4'),('BB006','Michelle','BasketBall','F','Defence Colony',65431234,1700,'not paid','1990-03-03','2014-02-02','S4'),('BB007','Jane','BasketBall','F','Indhira Nagar',66667777,1700,'paid','1996-01-01','2012-12-31','S4'),('BB008','Laxmi','BasketBall','F','Peenya',67766776,1700,'not paid','1990-08-08','2013-09-09','S4'),('BB009','Vijaylaxmi','BasketBall','F','Jeevanbhima Nagar',81478888,1700,'not paid','1998-09-09','2014-11-09','S4'),('BB010','Swati','BasketBall','F','VV Puram',89781234,1700,'paid','1999-11-12','2014-09-09','S4'),('CR001','Vashisht','Cricket','M','ABC Colony',81470000,1900,'paid','1994-12-03','2013-04-05','S5'),('CR002','Sumit','Cricket','M','IT Nagar',99001265,1900,'not paid','1990-12-11','2012-11-11','S5'),('CR003','Ramesh','Cricket','M','Jayanagar',67986798,1900,'not paid','2004-12-12','2012-11-11','S5'),('CR004','Suresh','Cricket','M','RR Nagar',67546754,1900,'paid','1994-04-04','2013-05-05','S5'),('CR005','Sourav','Cricket','M','HK Colony',65346509,1900,'paid','2003-12-12','2013-12-12','S5'),('CR006','Michael','Cricket','M','Def Colony',56573931,1900,'not paid','2001-01-01','2013-02-02','S5'),('CR007','Saahit','Cricket','M','New Colony',23456543,1900,'paid','2002-11-12','2013-11-11','S5'),('CR008','Stuart','Cricket','M','Hebbal',23000032,1900,'paid','2004-12-12','2014-12-31','S5'),('CR009','Swamy','Cricket','M','Def Colony',65780912,1900,'not paid','2001-04-26','2014-05-15','S5'),('CR010','Madhavan','Cricket','M','MSR Nagar',21329870,1900,'not paid','2004-01-01','2013-12-31','S5'),('CR011','Shikhar','Cricket','M','Def Colony',98761234,1900,'paid','2004-12-14','2014-03-03','S5'),('FB001','Seben','Football','M','VV puram',23412233,1700,'not paid','1998-04-05','2012-02-03','S3'),('FB002','Prashanth','FootBall','M','RMZ Infinity',77885566,1700,'paid','1994-11-01','2013-02-02','S3'),('FB003','George','FootBall','M','Pulkeshi Nagar',22116655,1700,'paid','1996-06-07','2013-04-05','S3'),('FB004','Martin','FootBall','M','VV puram',43434345,1700,'not paid','1997-05-21','2013-06-12','S3'),('FB005','Rohit','FootBall','M','IT Nagar',23456123,1700,'not paid','1996-07-07','2013-07-07','S3'),('FB006','Ameen','FootBall','M','ABC Colony',22114595,1600,'paid','1991-12-13','2012-04-06','S3'),('FB007','Saravanan','FootBall','M','MSR Nagar',23556632,1700,'not paid','1995-12-11','2013-06-07','S3'),('FB008','Ameet','FootBall','M','RMZ Infinity',44550000,1700,'paid','1993-02-03','2014-12-25','S3'),('FB009','Pranjal','FootBall','M','IT Nagar',23679843,1700,'paid','1990-05-23','2012-09-04','S3'),('FB010','Clive','FootBall','M','VV Puram',99114400,1700,'not paid','1997-02-03','2012-03-03','S3'),('TE001','Joanne','Tennis','F','ANC Colony',22336677,2000,'paid','1992-12-13','2015-05-01','S6'),('TE002','Ayesha','Tennis','F','RMZ Colony',23034595,2000,'paid','1990-01-01','2012-03-03','S6'),('TE003','Amith','Tennis','M','RR Nagar',23145678,2000,'paid','1990-04-04','2014-09-11','S6'),('TE004','Suhas','Tennis','M','ABC Colony',98766789,2000,'paid','1994-11-26','2012-09-04','S6'),('TE005','Rahul','Tennis','M','RMZ Colony',98764567,2000,'not paid','1993-12-11','2013-11-12','S6'),('TE006','Mahesh','Tennis','M','Def Colony',41121342,2000,'not paid','1993-02-11','2015-03-21','S6'),('TT001','John','Table Tennis','M','ABC Colony',23541234,1600,'paid','1994-11-12','2012-10-11','S1'),('TT002','Josh','Table Tennis','M','IT Nagar',41982342,1600,'paid','1993-02-03','2013-04-05','S1'),('TT003','Rock','Table Tennis','M','MSR Nagar',45671234,1600,'paid','1994-06-04','2012-01-03','S1'),('TT004','Rohit','Table Tennis','M','Vivek Nagar',21142345,1600,'paid','1995-10-10','2014-02-03','S1'),('TT005','Jane','Table Tennis','F','IT Nagar',45126789,1600,'paid','1996-02-03','2013-06-07','S1'),('TT006','Nithya','Table Tennis','F','Vivek Nagar',23417890,1600,'paid','1993-06-06','2014-01-01','S1'),('TT007','Joanne','Table Tennis','F','Indhira Nagar',45675674,1600,'paid','1994-11-11','2014-05-06','S1');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prizes`
--

DROP TABLE IF EXISTS `prizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prizes` (
  `date` date DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `player_id` varchar(30) DEFAULT NULL,
  `player_name` varchar(40) DEFAULT NULL,
  `sport_name` varchar(30) DEFAULT NULL,
  `position` int DEFAULT NULL,
  `team_or_ind` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prizes`
--

LOCK TABLES `prizes` WRITE;
/*!40000 ALTER TABLE `prizes` DISABLE KEYS */;
INSERT INTO `prizes` VALUES ('2015-04-05','All Stars Trophy','TT007','Joanne','Table Tennis',1,'individual'),('2014-12-08','Champs league','BA002','Josh','Badminton',2,'individual'),('2014-06-06','Hero Champions Trophy','BB001','Sourav','BasketBall',2,'team'),('2014-06-06','Hero Champions Trophy','BB005','John','BasketBall',2,'team'),('2014-06-06','Hero Champions Trophy','BB008','Laxmi','BasketBall',2,'team'),('2015-03-03','Inter State Trophy','CR001','Vashisht','Cricket',2,'team'),('2015-03-03','Inter State Trophy','CR005','Sourav','Cricket',2,'team'),('2015-03-03','Inter State Trophy','CR009','Swamy','Cricket',2,'team'),('2015-09-09','ISL Trophy','FB003','George','FootBall',1,'team'),('2015-09-09','ISL Trophy','FB006','Ameen','FootBall',1,'team'),('2015-04-05','Millenium Sports Meet','TE005','Rahul','Tennis',2,'individual'),('2014-12-10','Paytm Trophy','TE005','Rahul','Tennis',1,'individual'),('2015-03-06','Phoenix Interstate Trophy','FB004','Martin','FootBall',3,'team'),('2015-03-06','Phoenix Interstate Trophy','FB010','Clive','FootBall',3,'team'),('2014-05-06','Premier League Trophy','CR005','Sourav','Cricket',1,'team'),('2014-12-24','South InterState Competition','TE006','Mahesh','Tennis',2,'individual'),('2015-02-02','Commonwealth Trophy','BA007','Pooja A','Badminton',2,'individual'),('2015-06-09','State Level Competition','TT007','Joanne','Table Tennis',2,'individual'),('2015-08-10','PPL Trophy','TT007','Joanne','Table Tennis',2,'individual');
/*!40000 ALTER TABLE `prizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsor`
--

DROP TABLE IF EXISTS `sponsor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sponsor` (
  `sponsor_id` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsor`
--

LOCK TABLES `sponsor` WRITE;
/*!40000 ALTER TABLE `sponsor` DISABLE KEYS */;
INSERT INTO `sponsor` VALUES ('SP001','HeroCorp'),('SP002','DLF'),('SP003','Bisleri'),('SP004','Pepsi'),('SP005','Red Bull'),('SP006','Maruti Suzuki');
/*!40000 ALTER TABLE `sponsor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsortoclub`
--

DROP TABLE IF EXISTS `sponsortoclub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sponsortoclub` (
  `sponsor_id` varchar(20) DEFAULT NULL,
  `sponsor_name` varchar(40) DEFAULT NULL,
  `money_spons` int DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsortoclub`
--

LOCK TABLES `sponsortoclub` WRITE;
/*!40000 ALTER TABLE `sponsortoclub` DISABLE KEYS */;
INSERT INTO `sponsortoclub` VALUES ('SP001','HeroCorp',12500,'2015-04-04'),('SP002','DLF',76000,'2014-04-11'),('SP002','DLF',12000,'2015-05-05'),('SP003','Bisleri',110000,'2014-12-12'),('SP004','Pepsi',70000,'2014-10-10'),('SP004','Pepsi',98000,'2015-06-06');
/*!40000 ALTER TABLE `sponsortoclub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsortoplay`
--

DROP TABLE IF EXISTS `sponsortoplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sponsortoplay` (
  `sponsor_id` varchar(20) DEFAULT NULL,
  `spons_name` varchar(40) DEFAULT NULL,
  `player_id` varchar(50) DEFAULT NULL,
  `player_name` varchar(50) DEFAULT NULL,
  `money_spons` int DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `sport_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsortoplay`
--

LOCK TABLES `sponsortoplay` WRITE;
/*!40000 ALTER TABLE `sponsortoplay` DISABLE KEYS */;
INSERT INTO `sponsortoplay` VALUES ('SP001','HeroCorp','BA001','Rahul',2000,'2014-12-11','S2'),('SP001','HeroCorp','BA006','Pooja',3000,'2015-02-03','S2'),('SP002','DLF','BA003','Rishab',3000,'2015-02-02','S2'),('SP002','DLF','TE004','Suhas',3000,'2015-04-04','S6'),('SP003','Bisleri','CR007','Saahit',2500,'2015-06-24','S5'),('SP003','Bisleri','FB004','Martin',2200,'2015-02-04','S3'),('SP004','Pepsi','FB002','Prashanth',2800,'2013-05-05','S3'),('SP004','Pepsi','TT005','Jane',2400,'2015-07-07','S1'),('SP005','Red Bull','BA007','Pooja A',2300,'2015-06-07','S2'),('SP005','Red Bull','CR009','Swamy',3000,'2015-06-06','S5'),('SP006','Maruti Suzuki','BA006','Pooja',2500,'2015-08-09','S2'),('SP006','Maruti Suzuki','FB004','Martin',2000,'2015-08-07','S3');
/*!40000 ALTER TABLE `sponsortoplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsortosport`
--

DROP TABLE IF EXISTS `sponsortosport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sponsortosport` (
  `sponsor_id` varchar(30) DEFAULT NULL,
  `spons_name` varchar(40) DEFAULT NULL,
  `sport_id` varchar(20) DEFAULT NULL,
  `sport_name` varchar(40) DEFAULT NULL,
  `money_spons` int DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsortosport`
--

LOCK TABLES `sponsortosport` WRITE;
/*!40000 ALTER TABLE `sponsortosport` DISABLE KEYS */;
INSERT INTO `sponsortosport` VALUES ('SP001','HeroCorp','S1','Table Tennis',20000,'2013-12-31'),('SP002','HeroCorp','S5','Cricket',15000,'2014-11-21'),('SP003','DLF','S2','Badminton',15000,'2014-02-03'),('SP002','DLF','S4','BasketBall',15000,'2014-08-09'),('SP003','Bisleri','S3','FootBall',40000,'2014-05-06'),('SP004','Pepsi','S1','Table Tennis',10000,'2014-10-10'),('SP004','Pepsi','S4','BasketBall',25000,'2014-04-04'),('SP005','Red Bull','S5','Cricket',22000,'2015-09-11'),('SP005','Red Bull','S6','Tennis',15000,'2014-08-09'),('SP006','Maruti Suzuki','S6','Tennis',25000,'2015-08-08');
/*!40000 ALTER TABLE `sponsortosport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sports`
--

DROP TABLE IF EXISTS `sports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sports` (
  `sports_id` varchar(20) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `fees` int DEFAULT NULL,
  `timings` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`sports_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sports`
--

LOCK TABLES `sports` WRITE;
/*!40000 ALTER TABLE `sports` DISABLE KEYS */;
INSERT INTO `sports` VALUES ('S1','Table Tennis',1600,'9am-4pm'),('S2','Badminton',1600,'7am-3pm'),('S3','Football',1700,'10am-6pm'),('S4','BasketBall',1700,'8.30am-5pm'),('S5','Cricket',1900,'8am-4pm'),('S6','Tennis',2000,'10am-5pm'),('S7','Chess',3000,'10am-3pm');
/*!40000 ALTER TABLE `sports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` varchar(30) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `contact` varchar(25) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `coach_sport` varchar(60) DEFAULT NULL,
  `join_date` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('ST001','Venkat',5000,'1990-02-02','45637890','IT Nagar','Admin','-','2012-01-01'),('ST002','Pritam',5000,'1991-03-03','45671234','vvpuram','Admin','-','2013-01-01'),('ST003','Ramu',1000,'1994-05-05','12344321','IT Nagar','General','-','2015-04-04'),('ST004','Raju',1000,'1992-01-01','45670987','IT Nagar','General','-','2012-06-07'),('ST005','Badrinath',5000,'1990-02-02','12349876','Abc Colony','Labour','-','2014-02-01'),('ST006','Shanmukh',5000,'1991-04-05','98764657','Def Colony','Labour','-','2014-01-02'),('ST007','Badri',7000,'1993-04-05','12345432','Def Colony','Sports Specific','BasketBall','2012-01-04'),('ST008','Ramesh',6000,'1990-04-23','12340965','IT Nagar','Sports Specific','Table Tennis','2013-01-05'),('ST009','Mahesh',7000,'1991-01-01','56789876','Def Colony','Sports Specific','Badminton','2012-01-02'),('ST010','Suresh',8000,'1993-04-26','12348765','VV Puram','Sports Specific','Tennis','2013-01-05'),('ST011','Dhawan',6000,'1990-05-25','12344365','IT Nagar','Sports Specific','FootBall','2012-01-03'),('ST012','Sharma',6000,'1994-06-16','98763456','ABC Colony','Sports Specific','Cricket','2014-01-02');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-17 21:51:48
