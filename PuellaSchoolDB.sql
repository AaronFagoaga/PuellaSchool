-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: puellaschooldb
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `categoryId` int NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `picture` blob,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Beverages','Soft drinks, coffees, teas, beers, and ales',NULL),(2,'Condiments','Sweet and savory sauces, relishes, spreads, and seasonings',NULL),(3,'Confections','Desserts, candies, and sweet breads',NULL),(4,'Dairy Products','Cheeses',NULL),(5,'Grains/Cereals','Breads, crackers, pasta, and cereal',NULL),(6,'Meat/Poultry','Prepared meats',NULL),(7,'Produce','Dried fruit and bean curd',NULL),(8,'Seafood','Seaweed and fish',NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custcustdemographics`
--

DROP TABLE IF EXISTS `custcustdemographics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custcustdemographics` (
  `custId` int NOT NULL,
  `customerTypeId` int NOT NULL,
  PRIMARY KEY (`custId`,`customerTypeId`),
  KEY `customerTypeId` (`customerTypeId`),
  CONSTRAINT `custcustdemographics_ibfk_1` FOREIGN KEY (`custId`) REFERENCES `customer` (`custId`),
  CONSTRAINT `custcustdemographics_ibfk_2` FOREIGN KEY (`customerTypeId`) REFERENCES `customerdemographics` (`customerTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custcustdemographics`
--

LOCK TABLES `custcustdemographics` WRITE;
/*!40000 ALTER TABLE `custcustdemographics` DISABLE KEYS */;
/*!40000 ALTER TABLE `custcustdemographics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `custId` int NOT NULL AUTO_INCREMENT,
  `companyName` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `contactName` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `contactTitle` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `address` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `city` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `region` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `postalCode` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `country` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `phone` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `mobile` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `email` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `fax` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`custId`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Customer NRZBB','Allen, Michael','Sales Representative','Obere Str. 0123','Berlin',NULL,'10092','Germany','030-3456789',NULL,NULL,'030-0123456'),(2,'Customer MLTDN','Hassall, Mark','Owner','Avda. de la Constitución 5678','México D.F.',NULL,'10077','Mexico','(5) 789-0123',NULL,NULL,'(5) 456-7890'),(3,'Customer KBUDE','Peoples, John','Owner','Mataderos  7890','México D.F.',NULL,'10097','Mexico','(5) 123-4567',NULL,NULL,NULL),(4,'Customer HFBZG','Arndt, Torsten','Sales Representative','7890 Hanover Sq.','London',NULL,'10046','UK','(171) 456-7890',NULL,NULL,'(171) 456-7891'),(5,'Customer HGVLZ','Higginbotham, Tom','Order Administrator','Berguvsvägen  5678','Luleå',NULL,'10112','Sweden','0921-67 89 01',NULL,NULL,'0921-23 45 67'),(6,'Customer XHXJV','Poland, Carole','Sales Representative','Forsterstr. 7890','Mannheim',NULL,'10117','Germany','0621-67890',NULL,NULL,'0621-12345'),(7,'Customer QXVLA','Bansal, Dushyant','Marketing Manager','2345, place Kléber','Strasbourg',NULL,'10089','France','67.89.01.23',NULL,NULL,'67.89.01.24'),(8,'Customer QUHWH','Ilyina, Julia','Owner','C/ Araquil, 0123','Madrid',NULL,'10104','Spain','(91) 345 67 89',NULL,NULL,'(91) 012 34 56'),(9,'Customer RTXGC','Raghav, Amritansh','Owner','6789, rue des Bouchers','Marseille',NULL,'10105','France','23.45.67.89',NULL,NULL,'23.45.67.80'),(10,'Customer EEALV','Bassols, Pilar Colome','Accounting Manager','8901 Tsawassen Blvd.','Tsawassen','BC','10111','Canada','(604) 901-2345',NULL,NULL,'(604) 678-9012'),(11,'Customer UBHAU','Jaffe, David','Sales Representative','Fauntleroy Circus 4567','London',NULL,'10064','UK','(171) 789-0123',NULL,NULL,NULL),(12,'Customer PSNMQ','Ray, Mike','Sales Agent','Cerrito 3456','Buenos Aires',NULL,'10057','Argentina','(1) 890-1234',NULL,NULL,'(1) 567-8901'),(13,'Customer VMLOG','Benito, Almudena','Marketing Manager','Sierras de Granada 7890','México D.F.',NULL,'10056','Mexico','(5) 456-7890',NULL,NULL,'(5) 123-4567'),(14,'Customer WNMAF','Jelitto, Jacek','Owner','Hauptstr. 0123','Bern',NULL,'10065','Switzerland','0452-678901',NULL,NULL,NULL),(15,'Customer JUWXK','Richardson, Shawn','Sales Associate','Av. dos Lusíadas, 6789','Sao Paulo','SP','10087','Brazil','(11) 012-3456',NULL,NULL,NULL),(16,'Customer GYBBY','Birkby, Dana','Sales Representative','Berkeley Gardens 0123 Brewery','London',NULL,'10039','UK','(171) 234-5678',NULL,NULL,'(171) 234-5679'),(17,'Customer FEVNN','Jones, TiAnna','Order Administrator','Walserweg 4567','Aachen',NULL,'10067','Germany','0241-789012',NULL,NULL,'0241-345678'),(18,'Customer BSVAR','Rizaldy, Arif','Owner','3456, rue des Cinquante Otages','Nantes',NULL,'10041','France','89.01.23.45',NULL,NULL,'89.01.23.46'),(19,'Customer RFNQC','Boseman, Randall','Sales Agent','5678 King George','London',NULL,'10110','UK','(171) 345-6789',NULL,NULL,'(171) 345-6780'),(20,'Customer THHDP','Kane, John','Sales Manager','Kirchgasse 9012','Graz',NULL,'10059','Austria','1234-5678',NULL,NULL,'9012-3456'),(21,'Customer KIdPX','Russo, Giuseppe','Marketing Assistant','Rua Orós, 3456','Sao Paulo','SP','10096','Brazil','(11) 456-7890',NULL,NULL,NULL),(22,'Customer DTDMN','Bueno, Janaina Burdan, Neville','Accounting Manager','C/ Moralzarzal, 5678','Madrid',NULL,'10080','Spain','(91) 890 12 34',NULL,NULL,'(91) 567 89 01'),(23,'Customer WVFAF','Khanna, Karan','Assistant Sales Agent','4567, chaussée de Tournai','Lille',NULL,'10048','France','45.67.89.01',NULL,NULL,'45.67.89.02'),(24,'Customer CYZTN','San Juan, Patricia','Owner','Åkergatan 5678','Bräcke',NULL,'10114','Sweden','0695-67 89 01',NULL,NULL,NULL),(25,'Customer AZJED','Carlson, Jason','Marketing Manager','Berliner Platz 9012','München',NULL,'10091','Germany','089-8901234',NULL,NULL,'089-5678901'),(26,'Customer USDBG','Koch, Paul','Marketing Manager','9012, rue Royale','Nantes',NULL,'10101','France','34.56.78.90',NULL,NULL,'34.56.78.91'),(27,'Customer WMFEA','Schmöllerl, Martin','Sales Representative','Via Monte Bianco 4567','Torino',NULL,'10099','Italy','011-2345678',NULL,NULL,'011-9012345'),(28,'Customer XYUFB','Cavaglieri, Giorgio','Sales Manager','Jardim das rosas n. 8901','Lisboa',NULL,'10054','Portugal','(1) 456-7890',NULL,NULL,'(1) 123-4567'),(29,'Customer MDLWA','Kolesnikova, Katerina','Marketing Manager','Rambla de Cataluña, 8901','Barcelona',NULL,'10081','Spain','(93) 789 0123',NULL,NULL,'(93) 456 7890'),(30,'Customer KSLQF','Shabalin, Rostislav','Sales Manager','C/ Romero, 1234','Sevilla',NULL,'10075','Spain','(95) 901 23 45',NULL,NULL,NULL),(31,'Customer YJCBX','Cheng, Yao-Qiang','Sales Associate','Av. Brasil, 5678','Campinas','SP','10128','Brazil','(11) 567-8901',NULL,NULL,NULL),(32,'Customer YSIQX','Krishnan, Venky','Marketing Manager','6789 Baker Blvd.','Eugene','OR','10070','USA','(503) 555-0122',NULL,NULL,NULL),(33,'Customer FVXPQ','Sigurdarson, Hallur ','Owner','5ª Ave. Los Palos Grandes 3456','Caracas','DF','10043','Venezuela','(2) 789-0123',NULL,NULL,'(2) 456-7890'),(34,'Customer IBVRG','Cohen, Shy','Accounting Manager','Rua do Paço, 7890','Rio de Janeiro','RJ','10076','Brazil','(21) 789-0123',NULL,NULL,'(21) 789-0124'),(35,'Customer UMTLM','Langohr, Kris','Sales Representative','Carrera 1234 con Ave. Carlos Soublette #8-35','San Cristóbal','Táchira','10066','Venezuela','(5) 567-8901',NULL,NULL,'(5) 234-5678'),(36,'Customer LVJSO','Smith, Denise','Sales Representative','City Center Plaza 2345 Main St.','Elgin','OR','10103','USA','(503) 555-0126',NULL,NULL,'(503) 555-0135'),(37,'Customer FRXZL','Crăciun, Ovidiu V.','Sales Associate','9012 Johnstown Road','Cork','Co. Cork','10051','Ireland','8901 234',NULL,NULL,'5678 9012'),(38,'Customer LJUCA','Lee, Frank','Marketing Manager','Garden House Crowther Way 3456','Cowes','Isle of Wight','10063','UK','(198) 567-8901',NULL,NULL,NULL),(39,'Customer GLLAG','Song, Lolan','Sales Associate','Maubelstr. 8901','Brandenburg',NULL,'10060','Germany','0555-34567',NULL,NULL,NULL),(40,'Customer EFFTC','De Oliveira, Jose','Sales Representative','2345, avenue de l\'Europe','Versailles',NULL,'10108','France','12.34.56.78',NULL,NULL,'12.34.56.79'),(41,'Customer XIIWM','Litton, Tim','Sales Manager','3456 rue Alsace-Lorraine','Toulouse',NULL,'10053','France','90.12.34.56',NULL,NULL,'90.12.34.57'),(42,'Customer IAIJK','Steiner, Dominik','Marketing Assistant','2345 Oak St.','Vancouver','BC','10098','Canada','(604) 567-8901',NULL,NULL,'(604) 234-5678'),(43,'Customer UISOJ','Deshpande, Anu','Marketing Manager','8901 Orchestra Terrace','Walla Walla','WA','10069','USA','(509) 555-0119',NULL,NULL,'(509) 555-0130'),(44,'Customer OXFRU','Louverdis, George','Sales Representative','Magazinweg 8901','Frankfurt a.M.',NULL,'10095','Germany','069-7890123',NULL,NULL,'069-4567890'),(45,'Customer QXPPT','Sunkammurali,  Krishna','Owner','1234 Polk St. Suite 5','San Francisco','CA','10062','USA','(415) 555-0118',NULL,NULL,NULL),(46,'Customer XPNIK','Dressler, Marlies','Accounting Manager','Carrera 7890 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto','Lara','10093','Venezuela','(9) 789-0123',NULL,NULL,'(9) 456-7890'),(47,'Customer PSQUZ','Lupu, Cornel','Owner','Ave. 5 de Mayo Porlamar 5678','I. de Margarita','Nueva Esparta','10121','Venezuela','(8) 01-23-45',NULL,NULL,'(8) 67-89-01'),(48,'Customer DVFMB','Szymczak, Radosław','Sales Manager','9012 Chiaroscuro Rd.','Portland','OR','10073','USA','(503) 555-0117',NULL,NULL,'(503) 555-0129'),(49,'Customer CQRAA','Duerr, Bernard','Marketing Manager','Via Ludovico il Moro 6789','Bergamo',NULL,'10106','Italy','035-345678',NULL,NULL,'035-901234'),(50,'Customer JYPSC','Mace, Donald','Sales Agent','Rue Joseph-Bens 0123','Bruxelles',NULL,'10074','Belgium','(02) 890 12 34',NULL,NULL,'(02) 567 89 01'),(51,'Customer PVDZC','Taylor, Maurice','Marketing Assistant','8901 rue St. Laurent','Montréal','Québec','10040','Canada','(514) 345-6789',NULL,NULL,'(514) 012-3456'),(52,'Customer PZNLA','Dupont-Roc, Patrice','Marketing Assistant','Heerstr. 4567','Leipzig',NULL,'10125','Germany','0342-12345',NULL,NULL,NULL),(53,'Customer GCJSG','Mallit, Ken','Sales Associate','South House 1234 Queensbridge','London',NULL,'10061','UK','(171) 890-1234',NULL,NULL,'(171) 890-1235'),(54,'Customer TDKEG','Tiano, Mike','Sales Agent','Ing. Gustavo Moncada 0123 Piso 20-A','Buenos Aires',NULL,'10094','Argentina','(1) 123-4567',NULL,NULL,'(1) 890-1234'),(55,'Customer KZQZT','Egelund-Muller, Anja','Sales Representative','7890 Bering St.','Anchorage','AK','10050','USA','(907) 555-0115',NULL,NULL,'(907) 555-0128'),(56,'Customer QNIVZ','Marinova, Nadejda','Owner','Mehrheimerstr. 9012','Köln',NULL,'10047','Germany','0221-0123456',NULL,NULL,'0221-7890123'),(57,'Customer WVAXS','Tollevsen, Bjørn','Owner','5678, boulevard Charonne','Paris',NULL,'10085','France','(1) 89.01.23.45',NULL,NULL,'(1) 89.01.23.46'),(58,'Customer AHXHT','Fakhouri, Fadi','Sales Representative','Calle Dr. Jorge Cash 8901','México D.F.',NULL,'10116','Mexico','(5) 890-1234',NULL,NULL,'(5) 567-8901'),(59,'Customer LOLJO','Meston, Tosh','Sales Manager','Geislweg 2345','Salzburg',NULL,'10127','Austria','4567-8901',NULL,NULL,'2345-6789'),(60,'Customer QZURI','Uppal, Sunil','Sales Representative','Estrada da saúde n. 6789','Lisboa',NULL,'10083','Portugal','(1) 789-0123',NULL,NULL,NULL),(61,'Customer WULWD','Florczyk, Krzysztof','Accounting Manager','Rua da Panificadora, 1234','Rio de Janeiro','RJ','10115','Brazil','(21) 678-9012',NULL,NULL,'(21) 678-9013'),(62,'Customer WFIZJ','Misiec, Anna','Marketing Assistant','Alameda dos Canàrios, 1234','Sao Paulo','SP','10102','Brazil','(11) 901-2345',NULL,NULL,NULL),(63,'Customer IRRVL','Veronesi, Giorgio','Accounting Manager','Taucherstraße 1234','Cunewalde',NULL,'10126','Germany','0372-12345',NULL,NULL,NULL),(64,'Customer LWGMD','Gaffney, Lawrie','Sales Representative','Av. del Libertador 3456','Buenos Aires',NULL,'10124','Argentina','(1) 234-5678',NULL,NULL,'(1) 901-2345'),(65,'Customer NYUHS','Moore, Michael','Assistant Sales Representative','6789 Milton Dr.','Albuquerque','NM','10109','USA','(505) 555-0125',NULL,NULL,'(505) 555-0134'),(66,'Customer LHANT','Voss, Florian','Sales Associate','Strada Provinciale 7890','Reggio Emilia',NULL,'10038','Italy','0522-012345',NULL,NULL,'0522-678901'),(67,'Customer QVEPD','Garden, Euan','Assistant Sales Agent','Av. Copacabana, 6789','Rio de Janeiro','RJ','10052','Brazil','(21) 345-6789',NULL,NULL,NULL),(68,'Customer CCKOT','Myrcha, Jacek','Sales Manager','Grenzacherweg 0123','Genève',NULL,'10122','Switzerland','0897-012345',NULL,NULL,NULL),(69,'Customer SIUIH','Watters, Jason M.','Accounting Manager','Gran Vía, 4567','Madrid',NULL,'10071','Spain','(91) 567 8901',NULL,NULL,'(91) 234 5678'),(70,'Customer TMXGN','Ginters, Kaspars','Owner','Erling Skakkes gate 2345','Stavern',NULL,'10123','Norway','07-89 01 23',NULL,NULL,'07-45 67 89'),(71,'Customer LCOUJ','Navarro, Tomás','Sales Representative','9012 Suffolk Ln.','Boise','Id','10078','USA','(208) 555-0116',NULL,NULL,NULL),(72,'Customer AHPOP','Welcker, Brian','Sales Manager','4567 Wadhurst Rd.','London',NULL,'10088','UK','(171) 901-2345',NULL,NULL,'(171) 901-2346'),(73,'Customer JMIKW','Gonzalez, Nuria','Owner','Vinbæltet 3456','Kobenhavn',NULL,'10079','Denmark','12 34 56 78',NULL,NULL,'90 12 34 56'),(74,'Customer YSHXL','O’Brien, Dave','Marketing Manager','9012, rue Lauriston','Paris',NULL,'10058','France','(1) 23.45.67.89',NULL,NULL,'(1) 23.45.67.80'),(75,'Customer XOJYP','Wojciechowska, Agnieszka','Sales Manager','P.O. Box 1234','Lander','WY','10113','USA','(307) 555-0114',NULL,NULL,'(307) 555-0127'),(76,'Customer SFOGW','Gulbis, Katrin','Accounting Manager','Boulevard Tirou, 2345','Charleroi',NULL,'10100','Belgium','(071) 56 78 90 12',NULL,NULL,'(071) 34 56 78 90'),(77,'Customer LCYBZ','Osorio, Cristian','Marketing Manager','2345 Jefferson Way Suite 2','Portland','OR','10042','USA','(503) 555-0120',NULL,NULL,NULL),(78,'Customer NLTYP','Young, Robin','Marketing Assistant','0123 Grizzly Peak Rd.','Butte','MT','10107','USA','(406) 555-0121',NULL,NULL,'(406) 555-0131'),(79,'Customer FAPSM','Wickham, Jim','Marketing Manager','Luisenstr. 0123','Münster',NULL,'10118','Germany','0251-456789',NULL,NULL,'0251-012345'),(80,'Customer VONTK','Geschwandtner, Jens','Owner','Avda. Azteca 4567','México D.F.',NULL,'10044','Mexico','(5) 678-9012',NULL,NULL,NULL),(81,'Customer YQQWW','Nagel, Jean-Philippe','Sales Representative','Av. Inês de Castro, 1234','Sao Paulo','SP','10120','Brazil','(11) 123-4567',NULL,NULL,'(11) 234-5678'),(82,'Customer EYHKM','Veninga, Tjeerd','Sales Associate','1234 DaVinci Blvd.','Kirkland','WA','10119','USA','(206) 555-0124',NULL,NULL,'(206) 555-0133'),(83,'Customer ZRNDE','Fonteneau, Karl','Sales Manager','Smagsloget 3456','Århus',NULL,'10090','Denmark','23 45 67 89',NULL,NULL,'01 23 45 67'),(84,'Customer NRCSK','Tuntisangaroon, Sittichai','Sales Agent','6789, rue du Commerce','Lyon',NULL,'10072','France','78.90.12.34',NULL,NULL,'78.90.12.35'),(85,'Customer ENQZT','McLin, Nkenge','Accounting Manager','5678 rue de l\'Abbaye','Reims',NULL,'10082','France','56.78.90.12',NULL,NULL,'56.78.90.13'),(86,'Customer SNXOJ','Syamala, Manoj','Sales Representative','Adenauerallee 7890','Stuttgart',NULL,'10086','Germany','0711-345678',NULL,NULL,'0711-901234'),(87,'Customer ZHYOS','Ludwig, Michael','Accounting Manager','Torikatu 9012','Oulu',NULL,'10045','Finland','981-123456',NULL,NULL,'981-789012'),(88,'Customer SRQVM','Li, Yan','Sales Manager','Rua do Mercado, 4567','Resende','SP','10084','Brazil','(14) 234-5678',NULL,NULL,NULL),(89,'Customer YBQTI','Smith Jr., Ronaldo','Owner','8901 - 14th Ave. S. Suite 3B','Seattle','WA','10049','USA','(206) 555-0123',NULL,NULL,'(206) 555-0132'),(90,'Customer XBBVR','Larsson, Katarina','Owner/Marketing Assistant','Keskuskatu 2345','Helsinki',NULL,'10055','Finland','90-012 3456',NULL,NULL,'90-789 0123'),(91,'Customer CCFIZ','Conn, Steve','Owner','ul. Filtrowa 6789','Warszawa',NULL,'10068','Poland','(26) 234-5678',NULL,NULL,'(26) 901-2345');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerdemographics`
--

DROP TABLE IF EXISTS `customerdemographics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerdemographics` (
  `customerTypeId` int NOT NULL AUTO_INCREMENT,
  `customerDesc` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  PRIMARY KEY (`customerTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerdemographics`
--

LOCK TABLES `customerdemographics` WRITE;
/*!40000 ALTER TABLE `customerdemographics` DISABLE KEYS */;
/*!40000 ALTER TABLE `customerdemographics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employeeId` int NOT NULL AUTO_INCREMENT,
  `lastname` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `firstname` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `title` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `titleOfCourtesy` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `birthDate` datetime DEFAULT NULL,
  `hireDate` datetime DEFAULT NULL,
  `address` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `city` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `region` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `postalCode` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `country` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `phone` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `extension` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `mobile` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `email` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `photo` blob,
  `notes` blob,
  `mgrId` int DEFAULT NULL,
  `photoPath` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Davis','Sara','CEO','Ms.','1958-12-08 00:00:00','2002-05-01 00:00:00','7890 - 20th Ave. E., Apt. 2A','Seattle','WA','10003','USA','(206) 555-0101',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Funk','Don','Vice President, Sales','Dr.','1962-02-19 00:00:00','2002-08-14 00:00:00','9012 W. Capital Way','Tacoma','WA','10001','USA','(206) 555-0100',NULL,NULL,NULL,NULL,NULL,1,NULL),(3,'Lew','Judy','Sales Manager','Ms.','1973-08-30 00:00:00','2002-04-01 00:00:00','2345 Moss Bay Blvd.','Kirkland','WA','10007','USA','(206) 555-0103',NULL,NULL,NULL,NULL,NULL,2,NULL),(4,'Peled','Yael','Sales Representative','Mrs.','1947-09-19 00:00:00','2003-05-03 00:00:00','5678 Old Redmond Rd.','Redmond','WA','10009','USA','(206) 555-0104',NULL,NULL,NULL,NULL,NULL,3,NULL),(5,'Buck','Sven','Sales Manager','Mr.','1965-03-04 00:00:00','2003-10-17 00:00:00','8901 Garrett Hill','London',NULL,'10004','UK','(71) 234-5678',NULL,NULL,NULL,NULL,NULL,2,NULL),(6,'Suurs','Paul','Sales Representative','Mr.','1973-07-02 00:00:00','2003-10-17 00:00:00','3456 Coventry House, Miner Rd.','London',NULL,'10005','UK','(71) 345-6789',NULL,NULL,NULL,NULL,NULL,5,NULL),(7,'King','Russell','Sales Representative','Mr.','1970-05-29 00:00:00','2004-01-02 00:00:00','6789 Edgeham Hollow, Winchester Way','London',NULL,'10002','UK','(71) 123-4567',NULL,NULL,NULL,NULL,NULL,5,NULL),(8,'Cameron','Maria','Sales Representative','Ms.','1968-01-09 00:00:00','2004-03-05 00:00:00','4567 - 11th Ave. N.E.','Seattle','WA','10006','USA','(206) 555-0102',NULL,NULL,NULL,NULL,NULL,3,NULL),(9,'Dolgopyatova','Zoya','Sales Representative','Ms.','1976-01-27 00:00:00','2004-11-15 00:00:00','1234 Houndstooth Rd.','London',NULL,'10008','UK','(71) 456-7890',NULL,NULL,NULL,NULL,NULL,5,NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeeterritory`
--

DROP TABLE IF EXISTS `employeeterritory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeeterritory` (
  `employeeId` int NOT NULL AUTO_INCREMENT,
  `territoryId` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`employeeId`,`territoryId`),
  KEY `territoryId` (`territoryId`),
  CONSTRAINT `employeeterritory_ibfk_1` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`),
  CONSTRAINT `employeeterritory_ibfk_2` FOREIGN KEY (`territoryId`) REFERENCES `territory` (`territoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeterritory`
--

LOCK TABLES `employeeterritory` WRITE;
/*!40000 ALTER TABLE `employeeterritory` DISABLE KEYS */;
INSERT INTO `employeeterritory` VALUES (2,'01581'),(2,'01730'),(2,'01833'),(2,'02116'),(2,'02139'),(2,'02184'),(5,'02903'),(9,'03049'),(9,'03801'),(1,'06897'),(5,'07960'),(5,'08837'),(5,'10019'),(5,'10038'),(5,'11747'),(5,'14450'),(8,'19428'),(1,'19713'),(4,'20852'),(4,'27403'),(4,'27511'),(3,'30346'),(3,'31406'),(3,'32859'),(3,'33607'),(2,'40222'),(8,'44122'),(8,'45839'),(9,'48075'),(9,'48084'),(9,'48304'),(8,'53404'),(9,'55113'),(9,'55439'),(7,'60179'),(7,'60601'),(7,'80202'),(7,'80909'),(6,'85014'),(6,'85251'),(7,'90405'),(7,'94025'),(7,'94105'),(7,'95008'),(7,'95054'),(7,'95060'),(6,'98004'),(6,'98052'),(6,'98104');
/*!40000 ALTER TABLE `employeeterritory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetail`
--

DROP TABLE IF EXISTS `orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetail` (
  `orderDetailId` int NOT NULL AUTO_INCREMENT,
  `orderId` int NOT NULL,
  `productId` int NOT NULL,
  `unitPrice` decimal(10,2) NOT NULL,
  `quantity` smallint NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`orderDetailId`),
  KEY `orderId` (`orderId`),
  KEY `productId` (`productId`),
  CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `salesorder` (`orderId`),
  CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=2156 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetail`
--

LOCK TABLES `orderdetail` WRITE;
/*!40000 ALTER TABLE `orderdetail` DISABLE KEYS */;
INSERT INTO `orderdetail` VALUES (1,10248,11,14.00,12,0.00),(2,10248,42,9.80,10,0.00),(3,10248,72,34.80,5,0.00),(4,10249,14,18.60,9,0.00),(5,10249,51,42.40,40,0.00),(6,10250,41,7.70,10,0.00),(7,10250,51,42.40,35,0.15),(8,10250,65,16.80,15,0.15),(9,10251,22,16.80,6,0.05),(10,10251,57,15.60,15,0.05),(11,10251,65,16.80,20,0.00),(12,10252,20,64.80,40,0.05),(13,10252,33,2.00,25,0.05),(14,10252,60,27.20,40,0.00),(15,10253,31,10.00,20,0.00),(16,10253,39,14.40,42,0.00),(17,10253,49,16.00,40,0.00),(18,10254,24,3.60,15,0.15),(19,10254,55,19.20,21,0.15),(20,10254,74,8.00,21,0.00),(21,10255,2,15.20,20,0.00),(22,10255,16,13.90,35,0.00),(23,10255,36,15.20,25,0.00),(24,10255,59,44.00,30,0.00),(25,10256,53,26.20,15,0.00),(26,10256,77,10.40,12,0.00),(27,10257,27,35.10,25,0.00),(28,10257,39,14.40,6,0.00),(29,10257,77,10.40,15,0.00),(30,10258,2,15.20,50,0.20),(31,10258,5,17.00,65,0.20),(32,10258,32,25.60,6,0.20),(33,10259,21,8.00,10,0.00),(34,10259,37,20.80,1,0.00),(35,10260,41,7.70,16,0.25),(36,10260,57,15.60,50,0.00),(37,10260,62,39.40,15,0.25),(38,10260,70,12.00,21,0.25),(39,10261,21,8.00,20,0.00),(40,10261,35,14.40,20,0.00),(41,10262,5,17.00,12,0.20),(42,10262,7,24.00,15,0.00),(43,10262,56,30.40,2,0.00),(44,10263,16,13.90,60,0.25),(45,10263,24,3.60,28,0.00),(46,10263,30,20.70,60,0.25),(47,10263,74,8.00,36,0.25),(48,10264,2,15.20,35,0.00),(49,10264,41,7.70,25,0.15),(50,10265,17,31.20,30,0.00),(51,10265,70,12.00,20,0.00),(52,10266,12,30.40,12,0.05),(53,10267,40,14.70,50,0.00),(54,10267,59,44.00,70,0.15),(55,10267,76,14.40,15,0.15),(56,10268,29,99.00,10,0.00),(57,10268,72,27.80,4,0.00),(58,10269,33,2.00,60,0.05),(59,10269,72,27.80,20,0.05),(60,10270,36,15.20,30,0.00),(61,10270,43,36.80,25,0.00),(62,10271,33,2.00,24,0.00),(63,10272,20,64.80,6,0.00),(64,10272,31,10.00,40,0.00),(65,10272,72,27.80,24,0.00),(66,10273,10,24.80,24,0.05),(67,10273,31,10.00,15,0.05),(68,10273,33,2.00,20,0.00),(69,10273,40,14.70,60,0.05),(70,10273,76,14.40,33,0.05),(71,10274,71,17.20,20,0.00),(72,10274,72,27.80,7,0.00),(73,10275,24,3.60,12,0.05),(74,10275,59,44.00,6,0.05),(75,10276,10,24.80,15,0.00),(76,10276,13,4.80,10,0.00),(77,10277,28,36.40,20,0.00),(78,10277,62,39.40,12,0.00),(79,10278,44,15.50,16,0.00),(80,10278,59,44.00,15,0.00),(81,10278,63,35.10,8,0.00),(82,10278,73,12.00,25,0.00),(83,10279,17,31.20,15,0.25),(84,10280,24,3.60,12,0.00),(85,10280,55,19.20,20,0.00),(86,10280,75,6.20,30,0.00),(87,10281,19,7.30,1,0.00),(88,10281,24,3.60,6,0.00),(89,10281,35,14.40,4,0.00),(90,10282,30,20.70,6,0.00),(91,10282,57,15.60,2,0.00),(92,10283,15,12.40,20,0.00),(93,10283,19,7.30,18,0.00),(94,10283,60,27.20,35,0.00),(95,10283,72,27.80,3,0.00),(96,10284,27,35.10,15,0.25),(97,10284,44,15.50,21,0.00),(98,10284,60,27.20,20,0.25),(99,10284,67,11.20,5,0.25),(100,10285,1,14.40,45,0.20),(101,10285,40,14.70,40,0.20),(102,10285,53,26.20,36,0.20),(103,10286,35,14.40,100,0.00),(104,10286,62,39.40,40,0.00),(105,10287,16,13.90,40,0.15),(106,10287,34,11.20,20,0.00),(107,10287,46,9.60,15,0.15),(108,10288,54,5.90,10,0.10),(109,10288,68,10.00,3,0.10),(110,10289,3,8.00,30,0.00),(111,10289,64,26.60,9,0.00),(112,10290,5,17.00,20,0.00),(113,10290,29,99.00,15,0.00),(114,10290,49,16.00,15,0.00),(115,10290,77,10.40,10,0.00),(116,10291,13,4.80,20,0.10),(117,10291,44,15.50,24,0.10),(118,10291,51,42.40,2,0.10),(119,10292,20,64.80,20,0.00),(120,10293,18,50.00,12,0.00),(121,10293,24,3.60,10,0.00),(122,10293,63,35.10,5,0.00),(123,10293,75,6.20,6,0.00),(124,10294,1,14.40,18,0.00),(125,10294,17,31.20,15,0.00),(126,10294,43,36.80,15,0.00),(127,10294,60,27.20,21,0.00),(128,10294,75,6.20,6,0.00),(129,10295,56,30.40,4,0.00),(130,10296,11,16.80,12,0.00),(131,10296,16,13.90,30,0.00),(132,10296,69,28.80,15,0.00),(133,10297,39,14.40,60,0.00),(134,10297,72,27.80,20,0.00),(135,10298,2,15.20,40,0.00),(136,10298,36,15.20,40,0.25),(137,10298,59,44.00,30,0.25),(138,10298,62,39.40,15,0.00),(139,10299,19,7.30,15,0.00),(140,10299,70,12.00,20,0.00),(141,10300,66,13.60,30,0.00),(142,10300,68,10.00,20,0.00),(143,10301,40,14.70,10,0.00),(144,10301,56,30.40,20,0.00),(145,10302,17,31.20,40,0.00),(146,10302,28,36.40,28,0.00),(147,10302,43,36.80,12,0.00),(148,10303,40,14.70,40,0.10),(149,10303,65,16.80,30,0.10),(150,10303,68,10.00,15,0.10),(151,10304,49,16.00,30,0.00),(152,10304,59,44.00,10,0.00),(153,10304,71,17.20,2,0.00),(154,10305,18,50.00,25,0.10),(155,10305,29,99.00,25,0.10),(156,10305,39,14.40,30,0.10),(157,10306,30,20.70,10,0.00),(158,10306,53,26.20,10,0.00),(159,10306,54,5.90,5,0.00),(160,10307,62,39.40,10,0.00),(161,10307,68,10.00,3,0.00),(162,10308,69,28.80,1,0.00),(163,10308,70,12.00,5,0.00),(164,10309,4,17.60,20,0.00),(165,10309,6,20.00,30,0.00),(166,10309,42,11.20,2,0.00),(167,10309,43,36.80,20,0.00),(168,10309,71,17.20,3,0.00),(169,10310,16,13.90,10,0.00),(170,10310,62,39.40,5,0.00),(171,10311,42,11.20,6,0.00),(172,10311,69,28.80,7,0.00),(173,10312,28,36.40,4,0.00),(174,10312,43,36.80,24,0.00),(175,10312,53,26.20,20,0.00),(176,10312,75,6.20,10,0.00),(177,10313,36,15.20,12,0.00),(178,10314,32,25.60,40,0.10),(179,10314,58,10.60,30,0.10),(180,10314,62,39.40,25,0.10),(181,10315,34,11.20,14,0.00),(182,10315,70,12.00,30,0.00),(183,10316,41,7.70,10,0.00),(184,10316,62,39.40,70,0.00),(185,10317,1,14.40,20,0.00),(186,10318,41,7.70,20,0.00),(187,10318,76,14.40,6,0.00),(188,10319,17,31.20,8,0.00),(189,10319,28,36.40,14,0.00),(190,10319,76,14.40,30,0.00),(191,10320,71,17.20,30,0.00),(192,10321,35,14.40,10,0.00),(193,10322,52,5.60,20,0.00),(194,10323,15,12.40,5,0.00),(195,10323,25,11.20,4,0.00),(196,10323,39,14.40,4,0.00),(197,10324,16,13.90,21,0.15),(198,10324,35,14.40,70,0.15),(199,10324,46,9.60,30,0.00),(200,10324,59,44.00,40,0.15),(201,10324,63,35.10,80,0.15),(202,10325,6,20.00,6,0.00),(203,10325,13,4.80,12,0.00),(204,10325,14,18.60,9,0.00),(205,10325,31,10.00,4,0.00),(206,10325,72,27.80,40,0.00),(207,10326,4,17.60,24,0.00),(208,10326,57,15.60,16,0.00),(209,10326,75,6.20,50,0.00),(210,10327,2,15.20,25,0.20),(211,10327,11,16.80,50,0.20),(212,10327,30,20.70,35,0.20),(213,10327,58,10.60,30,0.20),(214,10328,59,44.00,9,0.00),(215,10328,65,16.80,40,0.00),(216,10328,68,10.00,10,0.00),(217,10329,19,7.30,10,0.05),(218,10329,30,20.70,8,0.05),(219,10329,38,210.80,20,0.05),(220,10329,56,30.40,12,0.05),(221,10330,26,24.90,50,0.15),(222,10330,72,27.80,25,0.15),(223,10331,54,5.90,15,0.00),(224,10332,18,50.00,40,0.20),(225,10332,42,11.20,10,0.20),(226,10332,47,7.60,16,0.20),(227,10333,14,18.60,10,0.00),(228,10333,21,8.00,10,0.10),(229,10333,71,17.20,40,0.10),(230,10334,52,5.60,8,0.00),(231,10334,68,10.00,10,0.00),(232,10335,2,15.20,7,0.20),(233,10335,31,10.00,25,0.20),(234,10335,32,25.60,6,0.20),(235,10335,51,42.40,48,0.20),(236,10336,4,17.60,18,0.10),(237,10337,23,7.20,40,0.00),(238,10337,26,24.90,24,0.00),(239,10337,36,15.20,20,0.00),(240,10337,37,20.80,28,0.00),(241,10337,72,27.80,25,0.00),(242,10338,17,31.20,20,0.00),(243,10338,30,20.70,15,0.00),(244,10339,4,17.60,10,0.00),(245,10339,17,31.20,70,0.05),(246,10339,62,39.40,28,0.00),(247,10340,18,50.00,20,0.05),(248,10340,41,7.70,12,0.05),(249,10340,43,36.80,40,0.05),(250,10341,33,2.00,8,0.00),(251,10341,59,44.00,9,0.15),(252,10342,2,15.20,24,0.20),(253,10342,31,10.00,56,0.20),(254,10342,36,15.20,40,0.20),(255,10342,55,19.20,40,0.20),(256,10343,64,26.60,50,0.00),(257,10343,68,10.00,4,0.05),(258,10343,76,14.40,15,0.00),(259,10344,4,17.60,35,0.00),(260,10344,8,32.00,70,0.25),(261,10345,8,32.00,70,0.00),(262,10345,19,7.30,80,0.00),(263,10345,42,11.20,9,0.00),(264,10346,17,31.20,36,0.10),(265,10346,56,30.40,20,0.00),(266,10347,25,11.20,10,0.00),(267,10347,39,14.40,50,0.15),(268,10347,40,14.70,4,0.00),(269,10347,75,6.20,6,0.15),(270,10348,1,14.40,15,0.15),(271,10348,23,7.20,25,0.00),(272,10349,54,5.90,24,0.00),(273,10350,50,13.00,15,0.10),(274,10350,69,28.80,18,0.10),(275,10351,38,210.80,20,0.05),(276,10351,41,7.70,13,0.00),(277,10351,44,15.50,77,0.05),(278,10351,65,16.80,10,0.05),(279,10352,24,3.60,10,0.00),(280,10352,54,5.90,20,0.15),(281,10353,11,16.80,12,0.20),(282,10353,38,210.80,50,0.20),(283,10354,1,14.40,12,0.00),(284,10354,29,99.00,4,0.00),(285,10355,24,3.60,25,0.00),(286,10355,57,15.60,25,0.00),(287,10356,31,10.00,30,0.00),(288,10356,55,19.20,12,0.00),(289,10356,69,28.80,20,0.00),(290,10357,10,24.80,30,0.20),(291,10357,26,24.90,16,0.00),(292,10357,60,27.20,8,0.20),(293,10358,24,3.60,10,0.05),(294,10358,34,11.20,10,0.05),(295,10358,36,15.20,20,0.05),(296,10359,16,13.90,56,0.05),(297,10359,31,10.00,70,0.05),(298,10359,60,27.20,80,0.05),(299,10360,28,36.40,30,0.00),(300,10360,29,99.00,35,0.00),(301,10360,38,210.80,10,0.00),(302,10360,49,16.00,35,0.00),(303,10360,54,5.90,28,0.00),(304,10361,39,14.40,54,0.10),(305,10361,60,27.20,55,0.10),(306,10362,25,11.20,50,0.00),(307,10362,51,42.40,20,0.00),(308,10362,54,5.90,24,0.00),(309,10363,31,10.00,20,0.00),(310,10363,75,6.20,12,0.00),(311,10363,76,14.40,12,0.00),(312,10364,69,28.80,30,0.00),(313,10364,71,17.20,5,0.00),(314,10365,11,16.80,24,0.00),(315,10366,65,16.80,5,0.00),(316,10366,77,10.40,5,0.00),(317,10367,34,11.20,36,0.00),(318,10367,54,5.90,18,0.00),(319,10367,65,16.80,15,0.00),(320,10367,77,10.40,7,0.00),(321,10368,21,8.00,5,0.10),(322,10368,28,36.40,13,0.10),(323,10368,57,15.60,25,0.00),(324,10368,64,26.60,35,0.10),(325,10369,29,99.00,20,0.00),(326,10369,56,30.40,18,0.25),(327,10370,1,14.40,15,0.15),(328,10370,64,26.60,30,0.00),(329,10370,74,8.00,20,0.15),(330,10371,36,15.20,6,0.20),(331,10372,20,64.80,12,0.25),(332,10372,38,210.80,40,0.25),(333,10372,60,27.20,70,0.25),(334,10372,72,27.80,42,0.25),(335,10373,58,10.60,80,0.20),(336,10373,71,17.20,50,0.20),(337,10374,31,10.00,30,0.00),(338,10374,58,10.60,15,0.00),(339,10375,14,18.60,15,0.00),(340,10375,54,5.90,10,0.00),(341,10376,31,10.00,42,0.05),(342,10377,28,36.40,20,0.15),(343,10377,39,14.40,20,0.15),(344,10378,71,17.20,6,0.00),(345,10379,41,7.70,8,0.10),(346,10379,63,35.10,16,0.10),(347,10379,65,16.80,20,0.10),(348,10380,30,20.70,18,0.10),(349,10380,53,26.20,20,0.10),(350,10380,60,27.20,6,0.10),(351,10380,70,12.00,30,0.00),(352,10381,74,8.00,14,0.00),(353,10382,5,17.00,32,0.00),(354,10382,18,50.00,9,0.00),(355,10382,29,99.00,14,0.00),(356,10382,33,2.00,60,0.00),(357,10382,74,8.00,50,0.00),(358,10383,13,4.80,20,0.00),(359,10383,50,13.00,15,0.00),(360,10383,56,30.40,20,0.00),(361,10384,20,64.80,28,0.00),(362,10384,60,27.20,15,0.00),(363,10385,7,24.00,10,0.20),(364,10385,60,27.20,20,0.20),(365,10385,68,10.00,8,0.20),(366,10386,24,3.60,15,0.00),(367,10386,34,11.20,10,0.00),(368,10387,24,3.60,15,0.00),(369,10387,28,36.40,6,0.00),(370,10387,59,44.00,12,0.00),(371,10387,71,17.20,15,0.00),(372,10388,45,7.60,15,0.20),(373,10388,52,5.60,20,0.20),(374,10388,53,26.20,40,0.00),(375,10389,10,24.80,16,0.00),(376,10389,55,19.20,15,0.00),(377,10389,62,39.40,20,0.00),(378,10389,70,12.00,30,0.00),(379,10390,31,10.00,60,0.10),(380,10390,35,14.40,40,0.10),(381,10390,46,9.60,45,0.00),(382,10390,72,27.80,24,0.10),(383,10391,13,4.80,18,0.00),(384,10392,69,28.80,50,0.00),(385,10393,2,15.20,25,0.25),(386,10393,14,18.60,42,0.25),(387,10393,25,11.20,7,0.25),(388,10393,26,24.90,70,0.25),(389,10393,31,10.00,32,0.00),(390,10394,13,4.80,10,0.00),(391,10394,62,39.40,10,0.00),(392,10395,46,9.60,28,0.10),(393,10395,53,26.20,70,0.10),(394,10395,69,28.80,8,0.00),(395,10396,23,7.20,40,0.00),(396,10396,71,17.20,60,0.00),(397,10396,72,27.80,21,0.00),(398,10397,21,8.00,10,0.15),(399,10397,51,42.40,18,0.15),(400,10398,35,14.40,30,0.00),(401,10398,55,19.20,120,0.10),(402,10399,68,10.00,60,0.00),(403,10399,71,17.20,30,0.00),(404,10399,76,14.40,35,0.00),(405,10399,77,10.40,14,0.00),(406,10400,29,99.00,21,0.00),(407,10400,35,14.40,35,0.00),(408,10400,49,16.00,30,0.00),(409,10401,30,20.70,18,0.00),(410,10401,56,30.40,70,0.00),(411,10401,65,16.80,20,0.00),(412,10401,71,17.20,60,0.00),(413,10402,23,7.20,60,0.00),(414,10402,63,35.10,65,0.00),(415,10403,16,13.90,21,0.15),(416,10403,48,10.20,70,0.15),(417,10404,26,24.90,30,0.05),(418,10404,42,11.20,40,0.05),(419,10404,49,16.00,30,0.05),(420,10405,3,8.00,50,0.00),(421,10406,1,14.40,10,0.00),(422,10406,21,8.00,30,0.10),(423,10406,28,36.40,42,0.10),(424,10406,36,15.20,5,0.10),(425,10406,40,14.70,2,0.10),(426,10407,11,16.80,30,0.00),(427,10407,69,28.80,15,0.00),(428,10407,71,17.20,15,0.00),(429,10408,37,20.80,10,0.00),(430,10408,54,5.90,6,0.00),(431,10408,62,39.40,35,0.00),(432,10409,14,18.60,12,0.00),(433,10409,21,8.00,12,0.00),(434,10410,33,2.00,49,0.00),(435,10410,59,44.00,16,0.00),(436,10411,41,7.70,25,0.20),(437,10411,44,15.50,40,0.20),(438,10411,59,44.00,9,0.20),(439,10412,14,18.60,20,0.10),(440,10413,1,14.40,24,0.00),(441,10413,62,39.40,40,0.00),(442,10413,76,14.40,14,0.00),(443,10414,19,7.30,18,0.05),(444,10414,33,2.00,50,0.00),(445,10415,17,31.20,2,0.00),(446,10415,33,2.00,20,0.00),(447,10416,19,7.30,20,0.00),(448,10416,53,26.20,10,0.00),(449,10416,57,15.60,20,0.00),(450,10417,38,210.80,50,0.00),(451,10417,46,9.60,2,0.25),(452,10417,68,10.00,36,0.25),(453,10417,77,10.40,35,0.00),(454,10418,2,15.20,60,0.00),(455,10418,47,7.60,55,0.00),(456,10418,61,22.80,16,0.00),(457,10418,74,8.00,15,0.00),(458,10419,60,27.20,60,0.05),(459,10419,69,28.80,20,0.05),(460,10420,9,77.60,20,0.10),(461,10420,13,4.80,2,0.10),(462,10420,70,12.00,8,0.10),(463,10420,73,12.00,20,0.10),(464,10421,19,7.30,4,0.15),(465,10421,26,24.90,30,0.00),(466,10421,53,26.20,15,0.15),(467,10421,77,10.40,10,0.15),(468,10422,26,24.90,2,0.00),(469,10423,31,10.00,14,0.00),(470,10423,59,44.00,20,0.00),(471,10424,35,14.40,60,0.20),(472,10424,38,210.80,49,0.20),(473,10424,68,10.00,30,0.20),(474,10425,55,19.20,10,0.25),(475,10425,76,14.40,20,0.25),(476,10426,56,30.40,5,0.00),(477,10426,64,26.60,7,0.00),(478,10427,14,18.60,35,0.00),(479,10428,46,9.60,20,0.00),(480,10429,50,13.00,40,0.00),(481,10429,63,35.10,35,0.25),(482,10430,17,31.20,45,0.20),(483,10430,21,8.00,50,0.00),(484,10430,56,30.40,30,0.00),(485,10430,59,44.00,70,0.20),(486,10431,17,31.20,50,0.25),(487,10431,40,14.70,50,0.25),(488,10431,47,7.60,30,0.25),(489,10432,26,24.90,10,0.00),(490,10432,54,5.90,40,0.00),(491,10433,56,30.40,28,0.00),(492,10434,11,16.80,6,0.00),(493,10434,76,14.40,18,0.15),(494,10435,2,15.20,10,0.00),(495,10435,22,16.80,12,0.00),(496,10435,72,27.80,10,0.00),(497,10436,46,9.60,5,0.00),(498,10436,56,30.40,40,0.10),(499,10436,64,26.60,30,0.10),(500,10436,75,6.20,24,0.10),(501,10437,53,26.20,15,0.00),(502,10438,19,7.30,15,0.20),(503,10438,34,11.20,20,0.20),(504,10438,57,15.60,15,0.20),(505,10439,12,30.40,15,0.00),(506,10439,16,13.90,16,0.00),(507,10439,64,26.60,6,0.00),(508,10439,74,8.00,30,0.00),(509,10440,2,15.20,45,0.15),(510,10440,16,13.90,49,0.15),(511,10440,29,99.00,24,0.15),(512,10440,61,22.80,90,0.15),(513,10441,27,35.10,50,0.00),(514,10442,11,16.80,30,0.00),(515,10442,54,5.90,80,0.00),(516,10442,66,13.60,60,0.00),(517,10443,11,16.80,6,0.20),(518,10443,28,36.40,12,0.00),(519,10444,17,31.20,10,0.00),(520,10444,26,24.90,15,0.00),(521,10444,35,14.40,8,0.00),(522,10444,41,7.70,30,0.00),(523,10445,39,14.40,6,0.00),(524,10445,54,5.90,15,0.00),(525,10446,19,7.30,12,0.10),(526,10446,24,3.60,20,0.10),(527,10446,31,10.00,3,0.10),(528,10446,52,5.60,15,0.10),(529,10447,19,7.30,40,0.00),(530,10447,65,16.80,35,0.00),(531,10447,71,17.20,2,0.00),(532,10448,26,24.90,6,0.00),(533,10448,40,14.70,20,0.00),(534,10449,10,24.80,14,0.00),(535,10449,52,5.60,20,0.00),(536,10449,62,39.40,35,0.00),(537,10450,10,24.80,20,0.20),(538,10450,54,5.90,6,0.20),(539,10451,55,19.20,120,0.10),(540,10451,64,26.60,35,0.10),(541,10451,65,16.80,28,0.10),(542,10451,77,10.40,55,0.10),(543,10452,28,36.40,15,0.00),(544,10452,44,15.50,100,0.05),(545,10453,48,10.20,15,0.10),(546,10453,70,12.00,25,0.10),(547,10454,16,13.90,20,0.20),(548,10454,33,2.00,20,0.20),(549,10454,46,9.60,10,0.20),(550,10455,39,14.40,20,0.00),(551,10455,53,26.20,50,0.00),(552,10455,61,22.80,25,0.00),(553,10455,71,17.20,30,0.00),(554,10456,21,8.00,40,0.15),(555,10456,49,16.00,21,0.15),(556,10457,59,44.00,36,0.00),(557,10458,26,24.90,30,0.00),(558,10458,28,36.40,30,0.00),(559,10458,43,36.80,20,0.00),(560,10458,56,30.40,15,0.00),(561,10458,71,17.20,50,0.00),(562,10459,7,24.00,16,0.05),(563,10459,46,9.60,20,0.05),(564,10459,72,27.80,40,0.00),(565,10460,68,10.00,21,0.25),(566,10460,75,6.20,4,0.25),(567,10461,21,8.00,40,0.25),(568,10461,30,20.70,28,0.25),(569,10461,55,19.20,60,0.25),(570,10462,13,4.80,1,0.00),(571,10462,23,7.20,21,0.00),(572,10463,19,7.30,21,0.00),(573,10463,42,11.20,50,0.00),(574,10464,4,17.60,16,0.20),(575,10464,43,36.80,3,0.00),(576,10464,56,30.40,30,0.20),(577,10464,60,27.20,20,0.00),(578,10465,24,3.60,25,0.00),(579,10465,29,99.00,18,0.10),(580,10465,40,14.70,20,0.00),(581,10465,45,7.60,30,0.10),(582,10465,50,13.00,25,0.00),(583,10466,11,16.80,10,0.00),(584,10466,46,9.60,5,0.00),(585,10467,24,3.60,28,0.00),(586,10467,25,11.20,12,0.00),(587,10468,30,20.70,8,0.00),(588,10468,43,36.80,15,0.00),(589,10469,2,15.20,40,0.15),(590,10469,16,13.90,35,0.15),(591,10469,44,15.50,2,0.15),(592,10470,18,50.00,30,0.00),(593,10470,23,7.20,15,0.00),(594,10470,64,26.60,8,0.00),(595,10471,7,24.00,30,0.00),(596,10471,56,30.40,20,0.00),(597,10472,24,3.60,80,0.05),(598,10472,51,42.40,18,0.00),(599,10473,33,2.00,12,0.00),(600,10473,71,17.20,12,0.00),(601,10474,14,18.60,12,0.00),(602,10474,28,36.40,18,0.00),(603,10474,40,14.70,21,0.00),(604,10474,75,6.20,10,0.00),(605,10475,31,10.00,35,0.15),(606,10475,66,13.60,60,0.15),(607,10475,76,14.40,42,0.15),(608,10476,55,19.20,2,0.05),(609,10476,70,12.00,12,0.00),(610,10477,1,14.40,15,0.00),(611,10477,21,8.00,21,0.25),(612,10477,39,14.40,20,0.25),(613,10478,10,24.80,20,0.05),(614,10479,38,210.80,30,0.00),(615,10479,53,26.20,28,0.00),(616,10479,59,44.00,60,0.00),(617,10479,64,26.60,30,0.00),(618,10480,47,7.60,30,0.00),(619,10480,59,44.00,12,0.00),(620,10481,49,16.00,24,0.00),(621,10481,60,27.20,40,0.00),(622,10482,40,14.70,10,0.00),(623,10483,34,11.20,35,0.05),(624,10483,77,10.40,30,0.05),(625,10484,21,8.00,14,0.00),(626,10484,40,14.70,10,0.00),(627,10484,51,42.40,3,0.00),(628,10485,2,15.20,20,0.10),(629,10485,3,8.00,20,0.10),(630,10485,55,19.20,30,0.10),(631,10485,70,12.00,60,0.10),(632,10486,11,16.80,5,0.00),(633,10486,51,42.40,25,0.00),(634,10486,74,8.00,16,0.00),(635,10487,19,7.30,5,0.00),(636,10487,26,24.90,30,0.00),(637,10487,54,5.90,24,0.25),(638,10488,59,44.00,30,0.00),(639,10488,73,12.00,20,0.20),(640,10489,11,16.80,15,0.25),(641,10489,16,13.90,18,0.00),(642,10490,59,44.00,60,0.00),(643,10490,68,10.00,30,0.00),(644,10490,75,6.20,36,0.00),(645,10491,44,15.50,15,0.15),(646,10491,77,10.40,7,0.15),(647,10492,25,11.20,60,0.05),(648,10492,42,11.20,20,0.05),(649,10493,65,16.80,15,0.10),(650,10493,66,13.60,10,0.10),(651,10493,69,28.80,10,0.10),(652,10494,56,30.40,30,0.00),(653,10495,23,7.20,10,0.00),(654,10495,41,7.70,20,0.00),(655,10495,77,10.40,5,0.00),(656,10496,31,10.00,20,0.05),(657,10497,56,30.40,14,0.00),(658,10497,72,27.80,25,0.00),(659,10497,77,10.40,25,0.00),(660,10498,24,4.50,14,0.00),(661,10498,40,18.40,5,0.00),(662,10498,42,14.00,30,0.00),(663,10499,28,45.60,20,0.00),(664,10499,49,20.00,25,0.00),(665,10500,15,15.50,12,0.05),(666,10500,28,45.60,8,0.05),(667,10501,54,7.45,20,0.00),(668,10502,45,9.50,21,0.00),(669,10502,53,32.80,6,0.00),(670,10502,67,14.00,30,0.00),(671,10503,14,23.25,70,0.00),(672,10503,65,21.05,20,0.00),(673,10504,2,19.00,12,0.00),(674,10504,21,10.00,12,0.00),(675,10504,53,32.80,10,0.00),(676,10504,61,28.50,25,0.00),(677,10505,62,49.30,3,0.00),(678,10506,25,14.00,18,0.10),(679,10506,70,15.00,14,0.10),(680,10507,43,46.00,15,0.15),(681,10507,48,12.75,15,0.15),(682,10508,13,6.00,10,0.00),(683,10508,39,18.00,10,0.00),(684,10509,28,45.60,3,0.00),(685,10510,29,123.79,36,0.00),(686,10510,75,7.75,36,0.10),(687,10511,4,22.00,50,0.15),(688,10511,7,30.00,50,0.15),(689,10511,8,40.00,10,0.15),(690,10512,24,4.50,10,0.15),(691,10512,46,12.00,9,0.15),(692,10512,47,9.50,6,0.15),(693,10512,60,34.00,12,0.15),(694,10513,21,10.00,40,0.20),(695,10513,32,32.00,50,0.20),(696,10513,61,28.50,15,0.20),(697,10514,20,81.00,39,0.00),(698,10514,28,45.60,35,0.00),(699,10514,56,38.00,70,0.00),(700,10514,65,21.05,39,0.00),(701,10514,75,7.75,50,0.00),(702,10515,9,97.00,16,0.15),(703,10515,16,17.45,50,0.00),(704,10515,27,43.90,120,0.00),(705,10515,33,2.50,16,0.15),(706,10515,60,34.00,84,0.15),(707,10516,18,62.50,25,0.10),(708,10516,41,9.65,80,0.10),(709,10516,42,14.00,20,0.00),(710,10517,52,7.00,6,0.00),(711,10517,59,55.00,4,0.00),(712,10517,70,15.00,6,0.00),(713,10518,24,4.50,5,0.00),(714,10518,38,263.50,15,0.00),(715,10518,44,19.45,9,0.00),(716,10519,10,31.00,16,0.05),(717,10519,56,38.00,40,0.00),(718,10519,60,34.00,10,0.05),(719,10520,24,4.50,8,0.00),(720,10520,53,32.80,5,0.00),(721,10521,35,18.00,3,0.00),(722,10521,41,9.65,10,0.00),(723,10521,68,12.50,6,0.00),(724,10522,1,18.00,40,0.20),(725,10522,8,40.00,24,0.00),(726,10522,30,25.89,20,0.20),(727,10522,40,18.40,25,0.20),(728,10523,17,39.00,25,0.10),(729,10523,20,81.00,15,0.10),(730,10523,37,26.00,18,0.10),(731,10523,41,9.65,6,0.10),(732,10524,10,31.00,2,0.00),(733,10524,30,25.89,10,0.00),(734,10524,43,46.00,60,0.00),(735,10524,54,7.45,15,0.00),(736,10525,36,19.00,30,0.00),(737,10525,40,18.40,15,0.10),(738,10526,1,18.00,8,0.15),(739,10526,13,6.00,10,0.00),(740,10526,56,38.00,30,0.15),(741,10527,4,22.00,50,0.10),(742,10527,36,19.00,30,0.10),(743,10528,11,21.00,3,0.00),(744,10528,33,2.50,8,0.20),(745,10528,72,34.80,9,0.00),(746,10529,55,24.00,14,0.00),(747,10529,68,12.50,20,0.00),(748,10529,69,36.00,10,0.00),(749,10530,17,39.00,40,0.00),(750,10530,43,46.00,25,0.00),(751,10530,61,28.50,20,0.00),(752,10530,76,18.00,50,0.00),(753,10531,59,55.00,2,0.00),(754,10532,30,25.89,15,0.00),(755,10532,66,17.00,24,0.00),(756,10533,4,22.00,50,0.05),(757,10533,72,34.80,24,0.00),(758,10533,73,15.00,24,0.05),(759,10534,30,25.89,10,0.00),(760,10534,40,18.40,10,0.20),(761,10534,54,7.45,10,0.20),(762,10535,11,21.00,50,0.10),(763,10535,40,18.40,10,0.10),(764,10535,57,19.50,5,0.10),(765,10535,59,55.00,15,0.10),(766,10536,12,38.00,15,0.25),(767,10536,31,12.50,20,0.00),(768,10536,33,2.50,30,0.00),(769,10536,60,34.00,35,0.25),(770,10537,31,12.50,30,0.00),(771,10537,51,53.00,6,0.00),(772,10537,58,13.25,20,0.00),(773,10537,72,34.80,21,0.00),(774,10537,73,15.00,9,0.00),(775,10538,70,15.00,7,0.00),(776,10538,72,34.80,1,0.00),(777,10539,13,6.00,8,0.00),(778,10539,21,10.00,15,0.00),(779,10539,33,2.50,15,0.00),(780,10539,49,20.00,6,0.00),(781,10540,3,10.00,60,0.00),(782,10540,26,31.23,40,0.00),(783,10540,38,263.50,30,0.00),(784,10540,68,12.50,35,0.00),(785,10541,24,4.50,35,0.10),(786,10541,38,263.50,4,0.10),(787,10541,65,21.05,36,0.10),(788,10541,71,21.50,9,0.10),(789,10542,11,21.00,15,0.05),(790,10542,54,7.45,24,0.05),(791,10543,12,38.00,30,0.15),(792,10543,23,9.00,70,0.15),(793,10544,28,45.60,7,0.00),(794,10544,67,14.00,7,0.00),(795,10545,11,21.00,10,0.00),(796,10546,7,30.00,10,0.00),(797,10546,35,18.00,30,0.00),(798,10546,62,49.30,40,0.00),(799,10547,32,32.00,24,0.15),(800,10547,36,19.00,60,0.00),(801,10548,34,14.00,10,0.25),(802,10548,41,9.65,14,0.00),(803,10549,31,12.50,55,0.15),(804,10549,45,9.50,100,0.15),(805,10549,51,53.00,48,0.15),(806,10550,17,39.00,8,0.10),(807,10550,19,9.20,10,0.00),(808,10550,21,10.00,6,0.10),(809,10550,61,28.50,10,0.10),(810,10551,16,17.45,40,0.15),(811,10551,35,18.00,20,0.15),(812,10551,44,19.45,40,0.00),(813,10552,69,36.00,18,0.00),(814,10552,75,7.75,30,0.00),(815,10553,11,21.00,15,0.00),(816,10553,16,17.45,14,0.00),(817,10553,22,21.00,24,0.00),(818,10553,31,12.50,30,0.00),(819,10553,35,18.00,6,0.00),(820,10554,16,17.45,30,0.05),(821,10554,23,9.00,20,0.05),(822,10554,62,49.30,20,0.05),(823,10554,77,13.00,10,0.05),(824,10555,14,23.25,30,0.20),(825,10555,19,9.20,35,0.20),(826,10555,24,4.50,18,0.20),(827,10555,51,53.00,20,0.20),(828,10555,56,38.00,40,0.20),(829,10556,72,34.80,24,0.00),(830,10557,64,33.25,30,0.00),(831,10557,75,7.75,20,0.00),(832,10558,47,9.50,25,0.00),(833,10558,51,53.00,20,0.00),(834,10558,52,7.00,30,0.00),(835,10558,53,32.80,18,0.00),(836,10558,73,15.00,3,0.00),(837,10559,41,9.65,12,0.05),(838,10559,55,24.00,18,0.05),(839,10560,30,25.89,20,0.00),(840,10560,62,49.30,15,0.25),(841,10561,44,19.45,10,0.00),(842,10561,51,53.00,50,0.00),(843,10562,33,2.50,20,0.10),(844,10562,62,49.30,10,0.10),(845,10563,36,19.00,25,0.00),(846,10563,52,7.00,70,0.00),(847,10564,17,39.00,16,0.05),(848,10564,31,12.50,6,0.05),(849,10564,55,24.00,25,0.05),(850,10565,24,4.50,25,0.10),(851,10565,64,33.25,18,0.10),(852,10566,11,21.00,35,0.15),(853,10566,18,62.50,18,0.15),(854,10566,76,18.00,10,0.00),(855,10567,31,12.50,60,0.20),(856,10567,51,53.00,3,0.00),(857,10567,59,55.00,40,0.20),(858,10568,10,31.00,5,0.00),(859,10569,31,12.50,35,0.20),(860,10569,76,18.00,30,0.00),(861,10570,11,21.00,15,0.05),(862,10570,56,38.00,60,0.05),(863,10571,14,23.25,11,0.15),(864,10571,42,14.00,28,0.15),(865,10572,16,17.45,12,0.10),(866,10572,32,32.00,10,0.10),(867,10572,40,18.40,50,0.00),(868,10572,75,7.75,15,0.10),(869,10573,17,39.00,18,0.00),(870,10573,34,14.00,40,0.00),(871,10573,53,32.80,25,0.00),(872,10574,33,2.50,14,0.00),(873,10574,40,18.40,2,0.00),(874,10574,62,49.30,10,0.00),(875,10574,64,33.25,6,0.00),(876,10575,59,55.00,12,0.00),(877,10575,63,43.90,6,0.00),(878,10575,72,34.80,30,0.00),(879,10575,76,18.00,10,0.00),(880,10576,1,18.00,10,0.00),(881,10576,31,12.50,20,0.00),(882,10576,44,19.45,21,0.00),(883,10577,39,18.00,10,0.00),(884,10577,75,7.75,20,0.00),(885,10577,77,13.00,18,0.00),(886,10578,35,18.00,20,0.00),(887,10578,57,19.50,6,0.00),(888,10579,15,15.50,10,0.00),(889,10579,75,7.75,21,0.00),(890,10580,14,23.25,15,0.05),(891,10580,41,9.65,9,0.05),(892,10580,65,21.05,30,0.05),(893,10581,75,7.75,50,0.20),(894,10582,57,19.50,4,0.00),(895,10582,76,18.00,14,0.00),(896,10583,29,123.79,10,0.00),(897,10583,60,34.00,24,0.15),(898,10583,69,36.00,10,0.15),(899,10584,31,12.50,50,0.05),(900,10585,47,9.50,15,0.00),(901,10586,52,7.00,4,0.15),(902,10587,26,31.23,6,0.00),(903,10587,35,18.00,20,0.00),(904,10587,77,13.00,20,0.00),(905,10588,18,62.50,40,0.20),(906,10588,42,14.00,100,0.20),(907,10589,35,18.00,4,0.00),(908,10590,1,18.00,20,0.00),(909,10590,77,13.00,60,0.05),(910,10591,3,10.00,14,0.00),(911,10591,7,30.00,10,0.00),(912,10591,54,7.45,50,0.00),(913,10592,15,15.50,25,0.05),(914,10592,26,31.23,5,0.05),(915,10593,20,81.00,21,0.20),(916,10593,69,36.00,20,0.20),(917,10593,76,18.00,4,0.20),(918,10594,52,7.00,24,0.00),(919,10594,58,13.25,30,0.00),(920,10595,35,18.00,30,0.25),(921,10595,61,28.50,120,0.25),(922,10595,69,36.00,65,0.25),(923,10596,56,38.00,5,0.20),(924,10596,63,43.90,24,0.20),(925,10596,75,7.75,30,0.20),(926,10597,24,4.50,35,0.20),(927,10597,57,19.50,20,0.00),(928,10597,65,21.05,12,0.20),(929,10598,27,43.90,50,0.00),(930,10598,71,21.50,9,0.00),(931,10599,62,49.30,10,0.00),(932,10600,54,7.45,4,0.00),(933,10600,73,15.00,30,0.00),(934,10601,13,6.00,60,0.00),(935,10601,59,55.00,35,0.00),(936,10602,77,13.00,5,0.25),(937,10603,22,21.00,48,0.00),(938,10603,49,20.00,25,0.05),(939,10604,48,12.75,6,0.10),(940,10604,76,18.00,10,0.10),(941,10605,16,17.45,30,0.05),(942,10605,59,55.00,20,0.05),(943,10605,60,34.00,70,0.05),(944,10605,71,21.50,15,0.05),(945,10606,4,22.00,20,0.20),(946,10606,55,24.00,20,0.20),(947,10606,62,49.30,10,0.20),(948,10607,7,30.00,45,0.00),(949,10607,17,39.00,100,0.00),(950,10607,33,2.50,14,0.00),(951,10607,40,18.40,42,0.00),(952,10607,72,34.80,12,0.00),(953,10608,56,38.00,28,0.00),(954,10609,1,18.00,3,0.00),(955,10609,10,31.00,10,0.00),(956,10609,21,10.00,6,0.00),(957,10610,36,19.00,21,0.25),(958,10611,1,18.00,6,0.00),(959,10611,2,19.00,10,0.00),(960,10611,60,34.00,15,0.00),(961,10612,10,31.00,70,0.00),(962,10612,36,19.00,55,0.00),(963,10612,49,20.00,18,0.00),(964,10612,60,34.00,40,0.00),(965,10612,76,18.00,80,0.00),(966,10613,13,6.00,8,0.10),(967,10613,75,7.75,40,0.00),(968,10614,11,21.00,14,0.00),(969,10614,21,10.00,8,0.00),(970,10614,39,18.00,5,0.00),(971,10615,55,24.00,5,0.00),(972,10616,38,263.50,15,0.05),(973,10616,56,38.00,14,0.00),(974,10616,70,15.00,15,0.05),(975,10616,71,21.50,15,0.05),(976,10617,59,55.00,30,0.15),(977,10618,6,25.00,70,0.00),(978,10618,56,38.00,20,0.00),(979,10618,68,12.50,15,0.00),(980,10619,21,10.00,42,0.00),(981,10619,22,21.00,40,0.00),(982,10620,24,4.50,5,0.00),(983,10620,52,7.00,5,0.00),(984,10621,19,9.20,5,0.00),(985,10621,23,9.00,10,0.00),(986,10621,70,15.00,20,0.00),(987,10621,71,21.50,15,0.00),(988,10622,2,19.00,20,0.00),(989,10622,68,12.50,18,0.20),(990,10623,14,23.25,21,0.00),(991,10623,19,9.20,15,0.10),(992,10623,21,10.00,25,0.10),(993,10623,24,4.50,3,0.00),(994,10623,35,18.00,30,0.10),(995,10624,28,45.60,10,0.00),(996,10624,29,123.79,6,0.00),(997,10624,44,19.45,10,0.00),(998,10625,14,23.25,3,0.00),(999,10625,42,14.00,5,0.00),(1000,10625,60,34.00,10,0.00),(1001,10626,53,32.80,12,0.00),(1002,10626,60,34.00,20,0.00),(1003,10626,71,21.50,20,0.00),(1004,10627,62,49.30,15,0.00),(1005,10627,73,15.00,35,0.15),(1006,10628,1,18.00,25,0.00),(1007,10629,29,123.79,20,0.00),(1008,10629,64,33.25,9,0.00),(1009,10630,55,24.00,12,0.05),(1010,10630,76,18.00,35,0.00),(1011,10631,75,7.75,8,0.10),(1012,10632,2,19.00,30,0.05),(1013,10632,33,2.50,20,0.05),(1014,10633,12,38.00,36,0.15),(1015,10633,13,6.00,13,0.15),(1016,10633,26,31.23,35,0.15),(1017,10633,62,49.30,80,0.15),(1018,10634,7,30.00,35,0.00),(1019,10634,18,62.50,50,0.00),(1020,10634,51,53.00,15,0.00),(1021,10634,75,7.75,2,0.00),(1022,10635,4,22.00,10,0.10),(1023,10635,5,21.35,15,0.10),(1024,10635,22,21.00,40,0.00),(1025,10636,4,22.00,25,0.00),(1026,10636,58,13.25,6,0.00),(1027,10637,11,21.00,10,0.00),(1028,10637,50,16.25,25,0.05),(1029,10637,56,38.00,60,0.05),(1030,10638,45,9.50,20,0.00),(1031,10638,65,21.05,21,0.00),(1032,10638,72,34.80,60,0.00),(1033,10639,18,62.50,8,0.00),(1034,10640,69,36.00,20,0.25),(1035,10640,70,15.00,15,0.25),(1036,10641,2,19.00,50,0.00),(1037,10641,40,18.40,60,0.00),(1038,10642,21,10.00,30,0.20),(1039,10642,61,28.50,20,0.20),(1040,10643,28,45.60,15,0.25),(1041,10643,39,18.00,21,0.25),(1042,10643,46,12.00,2,0.25),(1043,10644,18,62.50,4,0.10),(1044,10644,43,46.00,20,0.00),(1045,10644,46,12.00,21,0.10),(1046,10645,18,62.50,20,0.00),(1047,10645,36,19.00,15,0.00),(1048,10646,1,18.00,15,0.25),(1049,10646,10,31.00,18,0.25),(1050,10646,71,21.50,30,0.25),(1051,10646,77,13.00,35,0.25),(1052,10647,19,9.20,30,0.00),(1053,10647,39,18.00,20,0.00),(1054,10648,22,21.00,15,0.00),(1055,10648,24,4.50,15,0.15),(1056,10649,28,45.60,20,0.00),(1057,10649,72,34.80,15,0.00),(1058,10650,30,25.89,30,0.00),(1059,10650,53,32.80,25,0.05),(1060,10650,54,7.45,30,0.00),(1061,10651,19,9.20,12,0.25),(1062,10651,22,21.00,20,0.25),(1063,10652,30,25.89,2,0.25),(1064,10652,42,14.00,20,0.00),(1065,10653,16,17.45,30,0.10),(1066,10653,60,34.00,20,0.10),(1067,10654,4,22.00,12,0.10),(1068,10654,39,18.00,20,0.10),(1069,10654,54,7.45,6,0.10),(1070,10655,41,9.65,20,0.20),(1071,10656,14,23.25,3,0.10),(1072,10656,44,19.45,28,0.10),(1073,10656,47,9.50,6,0.10),(1074,10657,15,15.50,50,0.00),(1075,10657,41,9.65,24,0.00),(1076,10657,46,12.00,45,0.00),(1077,10657,47,9.50,10,0.00),(1078,10657,56,38.00,45,0.00),(1079,10657,60,34.00,30,0.00),(1080,10658,21,10.00,60,0.00),(1081,10658,40,18.40,70,0.05),(1082,10658,60,34.00,55,0.05),(1083,10658,77,13.00,70,0.05),(1084,10659,31,12.50,20,0.05),(1085,10659,40,18.40,24,0.05),(1086,10659,70,15.00,40,0.05),(1087,10660,20,81.00,21,0.00),(1088,10661,39,18.00,3,0.20),(1089,10661,58,13.25,49,0.20),(1090,10662,68,12.50,10,0.00),(1091,10663,40,18.40,30,0.05),(1092,10663,42,14.00,30,0.05),(1093,10663,51,53.00,20,0.05),(1094,10664,10,31.00,24,0.15),(1095,10664,56,38.00,12,0.15),(1096,10664,65,21.05,15,0.15),(1097,10665,51,53.00,20,0.00),(1098,10665,59,55.00,1,0.00),(1099,10665,76,18.00,10,0.00),(1100,10666,29,123.79,36,0.00),(1101,10666,65,21.05,10,0.00),(1102,10667,69,36.00,45,0.20),(1103,10667,71,21.50,14,0.20),(1104,10668,31,12.50,8,0.10),(1105,10668,55,24.00,4,0.10),(1106,10668,64,33.25,15,0.10),(1107,10669,36,19.00,30,0.00),(1108,10670,23,9.00,32,0.00),(1109,10670,46,12.00,60,0.00),(1110,10670,67,14.00,25,0.00),(1111,10670,73,15.00,50,0.00),(1112,10670,75,7.75,25,0.00),(1113,10671,16,17.45,10,0.00),(1114,10671,62,49.30,10,0.00),(1115,10671,65,21.05,12,0.00),(1116,10672,38,263.50,15,0.10),(1117,10672,71,21.50,12,0.00),(1118,10673,16,17.45,3,0.00),(1119,10673,42,14.00,6,0.00),(1120,10673,43,46.00,6,0.00),(1121,10674,23,9.00,5,0.00),(1122,10675,14,23.25,30,0.00),(1123,10675,53,32.80,10,0.00),(1124,10675,58,13.25,30,0.00),(1125,10676,10,31.00,2,0.00),(1126,10676,19,9.20,7,0.00),(1127,10676,44,19.45,21,0.00),(1128,10677,26,31.23,30,0.15),(1129,10677,33,2.50,8,0.15),(1130,10678,12,38.00,100,0.00),(1131,10678,33,2.50,30,0.00),(1132,10678,41,9.65,120,0.00),(1133,10678,54,7.45,30,0.00),(1134,10679,59,55.00,12,0.00),(1135,10680,16,17.45,50,0.25),(1136,10680,31,12.50,20,0.25),(1137,10680,42,14.00,40,0.25),(1138,10681,19,9.20,30,0.10),(1139,10681,21,10.00,12,0.10),(1140,10681,64,33.25,28,0.00),(1141,10682,33,2.50,30,0.00),(1142,10682,66,17.00,4,0.00),(1143,10682,75,7.75,30,0.00),(1144,10683,52,7.00,9,0.00),(1145,10684,40,18.40,20,0.00),(1146,10684,47,9.50,40,0.00),(1147,10684,60,34.00,30,0.00),(1148,10685,10,31.00,20,0.00),(1149,10685,41,9.65,4,0.00),(1150,10685,47,9.50,15,0.00),(1151,10686,17,39.00,30,0.20),(1152,10686,26,31.23,15,0.00),(1153,10687,9,97.00,50,0.25),(1154,10687,29,123.79,10,0.00),(1155,10687,36,19.00,6,0.25),(1156,10688,10,31.00,18,0.10),(1157,10688,28,45.60,60,0.10),(1158,10688,34,14.00,14,0.00),(1159,10689,1,18.00,35,0.25),(1160,10690,56,38.00,20,0.25),(1161,10690,77,13.00,30,0.25),(1162,10691,1,18.00,30,0.00),(1163,10691,29,123.79,40,0.00),(1164,10691,43,46.00,40,0.00),(1165,10691,44,19.45,24,0.00),(1166,10691,62,49.30,48,0.00),(1167,10692,63,43.90,20,0.00),(1168,10693,9,97.00,6,0.00),(1169,10693,54,7.45,60,0.15),(1170,10693,69,36.00,30,0.15),(1171,10693,73,15.00,15,0.15),(1172,10694,7,30.00,90,0.00),(1173,10694,59,55.00,25,0.00),(1174,10694,70,15.00,50,0.00),(1175,10695,8,40.00,10,0.00),(1176,10695,12,38.00,4,0.00),(1177,10695,24,4.50,20,0.00),(1178,10696,17,39.00,20,0.00),(1179,10696,46,12.00,18,0.00),(1180,10697,19,9.20,7,0.25),(1181,10697,35,18.00,9,0.25),(1182,10697,58,13.25,30,0.25),(1183,10697,70,15.00,30,0.25),(1184,10698,11,21.00,15,0.00),(1185,10698,17,39.00,8,0.05),(1186,10698,29,123.79,12,0.05),(1187,10698,65,21.05,65,0.05),(1188,10698,70,15.00,8,0.05),(1189,10699,47,9.50,12,0.00),(1190,10700,1,18.00,5,0.20),(1191,10700,34,14.00,12,0.20),(1192,10700,68,12.50,40,0.20),(1193,10700,71,21.50,60,0.20),(1194,10701,59,55.00,42,0.15),(1195,10701,71,21.50,20,0.15),(1196,10701,76,18.00,35,0.15),(1197,10702,3,10.00,6,0.00),(1198,10702,76,18.00,15,0.00),(1199,10703,2,19.00,5,0.00),(1200,10703,59,55.00,35,0.00),(1201,10703,73,15.00,35,0.00),(1202,10704,4,22.00,6,0.00),(1203,10704,24,4.50,35,0.00),(1204,10704,48,12.75,24,0.00),(1205,10705,31,12.50,20,0.00),(1206,10705,32,32.00,4,0.00),(1207,10706,16,17.45,20,0.00),(1208,10706,43,46.00,24,0.00),(1209,10706,59,55.00,8,0.00),(1210,10707,55,24.00,21,0.00),(1211,10707,57,19.50,40,0.00),(1212,10707,70,15.00,28,0.15),(1213,10708,5,21.35,4,0.00),(1214,10708,36,19.00,5,0.00),(1215,10709,8,40.00,40,0.00),(1216,10709,51,53.00,28,0.00),(1217,10709,60,34.00,10,0.00),(1218,10710,19,9.20,5,0.00),(1219,10710,47,9.50,5,0.00),(1220,10711,19,9.20,12,0.00),(1221,10711,41,9.65,42,0.00),(1222,10711,53,32.80,120,0.00),(1223,10712,53,32.80,3,0.05),(1224,10712,56,38.00,30,0.00),(1225,10713,10,31.00,18,0.00),(1226,10713,26,31.23,30,0.00),(1227,10713,45,9.50,110,0.00),(1228,10713,46,12.00,24,0.00),(1229,10714,2,19.00,30,0.25),(1230,10714,17,39.00,27,0.25),(1231,10714,47,9.50,50,0.25),(1232,10714,56,38.00,18,0.25),(1233,10714,58,13.25,12,0.25),(1234,10715,10,31.00,21,0.00),(1235,10715,71,21.50,30,0.00),(1236,10716,21,10.00,5,0.00),(1237,10716,51,53.00,7,0.00),(1238,10716,61,28.50,10,0.00),(1239,10717,21,10.00,32,0.05),(1240,10717,54,7.45,15,0.00),(1241,10717,69,36.00,25,0.05),(1242,10718,12,38.00,36,0.00),(1243,10718,16,17.45,20,0.00),(1244,10718,36,19.00,40,0.00),(1245,10718,62,49.30,20,0.00),(1246,10719,18,62.50,12,0.25),(1247,10719,30,25.89,3,0.25),(1248,10719,54,7.45,40,0.25),(1249,10720,35,18.00,21,0.00),(1250,10720,71,21.50,8,0.00),(1251,10721,44,19.45,50,0.05),(1252,10722,2,19.00,3,0.00),(1253,10722,31,12.50,50,0.00),(1254,10722,68,12.50,45,0.00),(1255,10722,75,7.75,42,0.00),(1256,10723,26,31.23,15,0.00),(1257,10724,10,31.00,16,0.00),(1258,10724,61,28.50,5,0.00),(1259,10725,41,9.65,12,0.00),(1260,10725,52,7.00,4,0.00),(1261,10725,55,24.00,6,0.00),(1262,10726,4,22.00,25,0.00),(1263,10726,11,21.00,5,0.00),(1264,10727,17,39.00,20,0.05),(1265,10727,56,38.00,10,0.05),(1266,10727,59,55.00,10,0.05),(1267,10728,30,25.89,15,0.00),(1268,10728,40,18.40,6,0.00),(1269,10728,55,24.00,12,0.00),(1270,10728,60,34.00,15,0.00),(1271,10729,1,18.00,50,0.00),(1272,10729,21,10.00,30,0.00),(1273,10729,50,16.25,40,0.00),(1274,10730,16,17.45,15,0.05),(1275,10730,31,12.50,3,0.05),(1276,10730,65,21.05,10,0.05),(1277,10731,21,10.00,40,0.05),(1278,10731,51,53.00,30,0.05),(1279,10732,76,18.00,20,0.00),(1280,10733,14,23.25,16,0.00),(1281,10733,28,45.60,20,0.00),(1282,10733,52,7.00,25,0.00),(1283,10734,6,25.00,30,0.00),(1284,10734,30,25.89,15,0.00),(1285,10734,76,18.00,20,0.00),(1286,10735,61,28.50,20,0.10),(1287,10735,77,13.00,2,0.10),(1288,10736,65,21.05,40,0.00),(1289,10736,75,7.75,20,0.00),(1290,10737,13,6.00,4,0.00),(1291,10737,41,9.65,12,0.00),(1292,10738,16,17.45,3,0.00),(1293,10739,36,19.00,6,0.00),(1294,10739,52,7.00,18,0.00),(1295,10740,28,45.60,5,0.20),(1296,10740,35,18.00,35,0.20),(1297,10740,45,9.50,40,0.20),(1298,10740,56,38.00,14,0.20),(1299,10741,2,19.00,15,0.20),(1300,10742,3,10.00,20,0.00),(1301,10742,60,34.00,50,0.00),(1302,10742,72,34.80,35,0.00),(1303,10743,46,12.00,28,0.05),(1304,10744,40,18.40,50,0.20),(1305,10745,18,62.50,24,0.00),(1306,10745,44,19.45,16,0.00),(1307,10745,59,55.00,45,0.00),(1308,10745,72,34.80,7,0.00),(1309,10746,13,6.00,6,0.00),(1310,10746,42,14.00,28,0.00),(1311,10746,62,49.30,9,0.00),(1312,10746,69,36.00,40,0.00),(1313,10747,31,12.50,8,0.00),(1314,10747,41,9.65,35,0.00),(1315,10747,63,43.90,9,0.00),(1316,10747,69,36.00,30,0.00),(1317,10748,23,9.00,44,0.00),(1318,10748,40,18.40,40,0.00),(1319,10748,56,38.00,28,0.00),(1320,10749,56,38.00,15,0.00),(1321,10749,59,55.00,6,0.00),(1322,10749,76,18.00,10,0.00),(1323,10750,14,23.25,5,0.15),(1324,10750,45,9.50,40,0.15),(1325,10750,59,55.00,25,0.15),(1326,10751,26,31.23,12,0.10),(1327,10751,30,25.89,30,0.00),(1328,10751,50,16.25,20,0.10),(1329,10751,73,15.00,15,0.00),(1330,10752,1,18.00,8,0.00),(1331,10752,69,36.00,3,0.00),(1332,10753,45,9.50,4,0.00),(1333,10753,74,10.00,5,0.00),(1334,10754,40,18.40,3,0.00),(1335,10755,47,9.50,30,0.25),(1336,10755,56,38.00,30,0.25),(1337,10755,57,19.50,14,0.25),(1338,10755,69,36.00,25,0.25),(1339,10756,18,62.50,21,0.20),(1340,10756,36,19.00,20,0.20),(1341,10756,68,12.50,6,0.20),(1342,10756,69,36.00,20,0.20),(1343,10757,34,14.00,30,0.00),(1344,10757,59,55.00,7,0.00),(1345,10757,62,49.30,30,0.00),(1346,10757,64,33.25,24,0.00),(1347,10758,26,31.23,20,0.00),(1348,10758,52,7.00,60,0.00),(1349,10758,70,15.00,40,0.00),(1350,10759,32,32.00,10,0.00),(1351,10760,25,14.00,12,0.25),(1352,10760,27,43.90,40,0.00),(1353,10760,43,46.00,30,0.25),(1354,10761,25,14.00,35,0.25),(1355,10761,75,7.75,18,0.00),(1356,10762,39,18.00,16,0.00),(1357,10762,47,9.50,30,0.00),(1358,10762,51,53.00,28,0.00),(1359,10762,56,38.00,60,0.00),(1360,10763,21,10.00,40,0.00),(1361,10763,22,21.00,6,0.00),(1362,10763,24,4.50,20,0.00),(1363,10764,3,10.00,20,0.10),(1364,10764,39,18.00,130,0.10),(1365,10765,65,21.05,80,0.10),(1366,10766,2,19.00,40,0.00),(1367,10766,7,30.00,35,0.00),(1368,10766,68,12.50,40,0.00),(1369,10767,42,14.00,2,0.00),(1370,10768,22,21.00,4,0.00),(1371,10768,31,12.50,50,0.00),(1372,10768,60,34.00,15,0.00),(1373,10768,71,21.50,12,0.00),(1374,10769,41,9.65,30,0.05),(1375,10769,52,7.00,15,0.05),(1376,10769,61,28.50,20,0.00),(1377,10769,62,49.30,15,0.00),(1378,10770,11,21.00,15,0.25),(1379,10771,71,21.50,16,0.00),(1380,10772,29,123.79,18,0.00),(1381,10772,59,55.00,25,0.00),(1382,10773,17,39.00,33,0.00),(1383,10773,31,12.50,70,0.20),(1384,10773,75,7.75,7,0.20),(1385,10774,31,12.50,2,0.25),(1386,10774,66,17.00,50,0.00),(1387,10775,10,31.00,6,0.00),(1388,10775,67,14.00,3,0.00),(1389,10776,31,12.50,16,0.05),(1390,10776,42,14.00,12,0.05),(1391,10776,45,9.50,27,0.05),(1392,10776,51,53.00,120,0.05),(1393,10777,42,14.00,20,0.20),(1394,10778,41,9.65,10,0.00),(1395,10779,16,17.45,20,0.00),(1396,10779,62,49.30,20,0.00),(1397,10780,70,15.00,35,0.00),(1398,10780,77,13.00,15,0.00),(1399,10781,54,7.45,3,0.20),(1400,10781,56,38.00,20,0.20),(1401,10781,74,10.00,35,0.00),(1402,10782,31,12.50,1,0.00),(1403,10783,31,12.50,10,0.00),(1404,10783,38,263.50,5,0.00),(1405,10784,36,19.00,30,0.00),(1406,10784,39,18.00,2,0.15),(1407,10784,72,34.80,30,0.15),(1408,10785,10,31.00,10,0.00),(1409,10785,75,7.75,10,0.00),(1410,10786,8,40.00,30,0.20),(1411,10786,30,25.89,15,0.20),(1412,10786,75,7.75,42,0.20),(1413,10787,2,19.00,15,0.05),(1414,10787,29,123.79,20,0.05),(1415,10788,19,9.20,50,0.05),(1416,10788,75,7.75,40,0.05),(1417,10789,18,62.50,30,0.00),(1418,10789,35,18.00,15,0.00),(1419,10789,63,43.90,30,0.00),(1420,10789,68,12.50,18,0.00),(1421,10790,7,30.00,3,0.15),(1422,10790,56,38.00,20,0.15),(1423,10791,29,123.79,14,0.05),(1424,10791,41,9.65,20,0.05),(1425,10792,2,19.00,10,0.00),(1426,10792,54,7.45,3,0.00),(1427,10792,68,12.50,15,0.00),(1428,10793,41,9.65,14,0.00),(1429,10793,52,7.00,8,0.00),(1430,10794,14,23.25,15,0.20),(1431,10794,54,7.45,6,0.20),(1432,10795,16,17.45,65,0.00),(1433,10795,17,39.00,35,0.25),(1434,10796,26,31.23,21,0.20),(1435,10796,44,19.45,10,0.00),(1436,10796,64,33.25,35,0.20),(1437,10796,69,36.00,24,0.20),(1438,10797,11,21.00,20,0.00),(1439,10798,62,49.30,2,0.00),(1440,10798,72,34.80,10,0.00),(1441,10799,13,6.00,20,0.15),(1442,10799,24,4.50,20,0.15),(1443,10799,59,55.00,25,0.00),(1444,10800,11,21.00,50,0.10),(1445,10800,51,53.00,10,0.10),(1446,10800,54,7.45,7,0.10),(1447,10801,17,39.00,40,0.25),(1448,10801,29,123.79,20,0.25),(1449,10802,30,25.89,25,0.25),(1450,10802,51,53.00,30,0.25),(1451,10802,55,24.00,60,0.25),(1452,10802,62,49.30,5,0.25),(1453,10803,19,9.20,24,0.05),(1454,10803,25,14.00,15,0.05),(1455,10803,59,55.00,15,0.05),(1456,10804,10,31.00,36,0.00),(1457,10804,28,45.60,24,0.00),(1458,10804,49,20.00,4,0.15),(1459,10805,34,14.00,10,0.00),(1460,10805,38,263.50,10,0.00),(1461,10806,2,19.00,20,0.25),(1462,10806,65,21.05,2,0.00),(1463,10806,74,10.00,15,0.25),(1464,10807,40,18.40,1,0.00),(1465,10808,56,38.00,20,0.15),(1466,10808,76,18.00,50,0.15),(1467,10809,52,7.00,20,0.00),(1468,10810,13,6.00,7,0.00),(1469,10810,25,14.00,5,0.00),(1470,10810,70,15.00,5,0.00),(1471,10811,19,9.20,15,0.00),(1472,10811,23,9.00,18,0.00),(1473,10811,40,18.40,30,0.00),(1474,10812,31,12.50,16,0.10),(1475,10812,72,34.80,40,0.10),(1476,10812,77,13.00,20,0.00),(1477,10813,2,19.00,12,0.20),(1478,10813,46,12.00,35,0.00),(1479,10814,41,9.65,20,0.00),(1480,10814,43,46.00,20,0.15),(1481,10814,48,12.75,8,0.15),(1482,10814,61,28.50,30,0.15),(1483,10815,33,2.50,16,0.00),(1484,10816,38,263.50,30,0.05),(1485,10816,62,49.30,20,0.05),(1486,10817,26,31.23,40,0.15),(1487,10817,38,263.50,30,0.00),(1488,10817,40,18.40,60,0.15),(1489,10817,62,49.30,25,0.15),(1490,10818,32,32.00,20,0.00),(1491,10818,41,9.65,20,0.00),(1492,10819,43,46.00,7,0.00),(1493,10819,75,7.75,20,0.00),(1494,10820,56,38.00,30,0.00),(1495,10821,35,18.00,20,0.00),(1496,10821,51,53.00,6,0.00),(1497,10822,62,49.30,3,0.00),(1498,10822,70,15.00,6,0.00),(1499,10823,11,21.00,20,0.10),(1500,10823,57,19.50,15,0.00),(1501,10823,59,55.00,40,0.10),(1502,10823,77,13.00,15,0.10),(1503,10824,41,9.65,12,0.00),(1504,10824,70,15.00,9,0.00),(1505,10825,26,31.23,12,0.00),(1506,10825,53,32.80,20,0.00),(1507,10826,31,12.50,35,0.00),(1508,10826,57,19.50,15,0.00),(1509,10827,10,31.00,15,0.00),(1510,10827,39,18.00,21,0.00),(1511,10828,20,81.00,5,0.00),(1512,10828,38,263.50,2,0.00),(1513,10829,2,19.00,10,0.00),(1514,10829,8,40.00,20,0.00),(1515,10829,13,6.00,10,0.00),(1516,10829,60,34.00,21,0.00),(1517,10830,6,25.00,6,0.00),(1518,10830,39,18.00,28,0.00),(1519,10830,60,34.00,30,0.00),(1520,10830,68,12.50,24,0.00),(1521,10831,19,9.20,2,0.00),(1522,10831,35,18.00,8,0.00),(1523,10831,38,263.50,8,0.00),(1524,10831,43,46.00,9,0.00),(1525,10832,13,6.00,3,0.20),(1526,10832,25,14.00,10,0.20),(1527,10832,44,19.45,16,0.20),(1528,10832,64,33.25,3,0.00),(1529,10833,7,30.00,20,0.10),(1530,10833,31,12.50,9,0.10),(1531,10833,53,32.80,9,0.10),(1532,10834,29,123.79,8,0.05),(1533,10834,30,25.89,20,0.05),(1534,10835,59,55.00,15,0.00),(1535,10835,77,13.00,2,0.20),(1536,10836,22,21.00,52,0.00),(1537,10836,35,18.00,6,0.00),(1538,10836,57,19.50,24,0.00),(1539,10836,60,34.00,60,0.00),(1540,10836,64,33.25,30,0.00),(1541,10837,13,6.00,6,0.00),(1542,10837,40,18.40,25,0.00),(1543,10837,47,9.50,40,0.25),(1544,10837,76,18.00,21,0.25),(1545,10838,1,18.00,4,0.25),(1546,10838,18,62.50,25,0.25),(1547,10838,36,19.00,50,0.25),(1548,10839,58,13.25,30,0.10),(1549,10839,72,34.80,15,0.10),(1550,10840,25,14.00,6,0.20),(1551,10840,39,18.00,10,0.20),(1552,10841,10,31.00,16,0.00),(1553,10841,56,38.00,30,0.00),(1554,10841,59,55.00,50,0.00),(1555,10841,77,13.00,15,0.00),(1556,10842,11,21.00,15,0.00),(1557,10842,43,46.00,5,0.00),(1558,10842,68,12.50,20,0.00),(1559,10842,70,15.00,12,0.00),(1560,10843,51,53.00,4,0.25),(1561,10844,22,21.00,35,0.00),(1562,10845,23,9.00,70,0.10),(1563,10845,35,18.00,25,0.10),(1564,10845,42,14.00,42,0.10),(1565,10845,58,13.25,60,0.10),(1566,10845,64,33.25,48,0.00),(1567,10846,4,22.00,21,0.00),(1568,10846,70,15.00,30,0.00),(1569,10846,74,10.00,20,0.00),(1570,10847,1,18.00,80,0.20),(1571,10847,19,9.20,12,0.20),(1572,10847,37,26.00,60,0.20),(1573,10847,45,9.50,36,0.20),(1574,10847,60,34.00,45,0.20),(1575,10847,71,21.50,55,0.20),(1576,10848,5,21.35,30,0.00),(1577,10848,9,97.00,3,0.00),(1578,10849,3,10.00,49,0.00),(1579,10849,26,31.23,18,0.15),(1580,10850,25,14.00,20,0.15),(1581,10850,33,2.50,4,0.15),(1582,10850,70,15.00,30,0.15),(1583,10851,2,19.00,5,0.05),(1584,10851,25,14.00,10,0.05),(1585,10851,57,19.50,10,0.05),(1586,10851,59,55.00,42,0.05),(1587,10852,2,19.00,15,0.00),(1588,10852,17,39.00,6,0.00),(1589,10852,62,49.30,50,0.00),(1590,10853,18,62.50,10,0.00),(1591,10854,10,31.00,100,0.15),(1592,10854,13,6.00,65,0.15),(1593,10855,16,17.45,50,0.00),(1594,10855,31,12.50,14,0.00),(1595,10855,56,38.00,24,0.00),(1596,10855,65,21.05,15,0.15),(1597,10856,2,19.00,20,0.00),(1598,10856,42,14.00,20,0.00),(1599,10857,3,10.00,30,0.00),(1600,10857,26,31.23,35,0.25),(1601,10857,29,123.79,10,0.25),(1602,10858,7,30.00,5,0.00),(1603,10858,27,43.90,10,0.00),(1604,10858,70,15.00,4,0.00),(1605,10859,24,4.50,40,0.25),(1606,10859,54,7.45,35,0.25),(1607,10859,64,33.25,30,0.25),(1608,10860,51,53.00,3,0.00),(1609,10860,76,18.00,20,0.00),(1610,10861,17,39.00,42,0.00),(1611,10861,18,62.50,20,0.00),(1612,10861,21,10.00,40,0.00),(1613,10861,33,2.50,35,0.00),(1614,10861,62,49.30,3,0.00),(1615,10862,11,21.00,25,0.00),(1616,10862,52,7.00,8,0.00),(1617,10863,1,18.00,20,0.15),(1618,10863,58,13.25,12,0.15),(1619,10864,35,18.00,4,0.00),(1620,10864,67,14.00,15,0.00),(1621,10865,38,263.50,60,0.05),(1622,10865,39,18.00,80,0.05),(1623,10866,2,19.00,21,0.25),(1624,10866,24,4.50,6,0.25),(1625,10866,30,25.89,40,0.25),(1626,10867,53,32.80,3,0.00),(1627,10868,26,31.23,20,0.00),(1628,10868,35,18.00,30,0.00),(1629,10868,49,20.00,42,0.10),(1630,10869,1,18.00,40,0.00),(1631,10869,11,21.00,10,0.00),(1632,10869,23,9.00,50,0.00),(1633,10869,68,12.50,20,0.00),(1634,10870,35,18.00,3,0.00),(1635,10870,51,53.00,2,0.00),(1636,10871,6,25.00,50,0.05),(1637,10871,16,17.45,12,0.05),(1638,10871,17,39.00,16,0.05),(1639,10872,55,24.00,10,0.05),(1640,10872,62,49.30,20,0.05),(1641,10872,64,33.25,15,0.05),(1642,10872,65,21.05,21,0.05),(1643,10873,21,10.00,20,0.00),(1644,10873,28,45.60,3,0.00),(1645,10874,10,31.00,10,0.00),(1646,10875,19,9.20,25,0.00),(1647,10875,47,9.50,21,0.10),(1648,10875,49,20.00,15,0.00),(1649,10876,46,12.00,21,0.00),(1650,10876,64,33.25,20,0.00),(1651,10877,16,17.45,30,0.25),(1652,10877,18,62.50,25,0.00),(1653,10878,20,81.00,20,0.05),(1654,10879,40,18.40,12,0.00),(1655,10879,65,21.05,10,0.00),(1656,10879,76,18.00,10,0.00),(1657,10880,23,9.00,30,0.20),(1658,10880,61,28.50,30,0.20),(1659,10880,70,15.00,50,0.20),(1660,10881,73,15.00,10,0.00),(1661,10882,42,14.00,25,0.00),(1662,10882,49,20.00,20,0.15),(1663,10882,54,7.45,32,0.15),(1664,10883,24,4.50,8,0.00),(1665,10884,21,10.00,40,0.05),(1666,10884,56,38.00,21,0.05),(1667,10884,65,21.05,12,0.05),(1668,10885,2,19.00,20,0.00),(1669,10885,24,4.50,12,0.00),(1670,10885,70,15.00,30,0.00),(1671,10885,77,13.00,25,0.00),(1672,10886,10,31.00,70,0.00),(1673,10886,31,12.50,35,0.00),(1674,10886,77,13.00,40,0.00),(1675,10887,25,14.00,5,0.00),(1676,10888,2,19.00,20,0.00),(1677,10888,68,12.50,18,0.00),(1678,10889,11,21.00,40,0.00),(1679,10889,38,263.50,40,0.00),(1680,10890,17,39.00,15,0.00),(1681,10890,34,14.00,10,0.00),(1682,10890,41,9.65,14,0.00),(1683,10891,30,25.89,15,0.05),(1684,10892,59,55.00,40,0.05),(1685,10893,8,40.00,30,0.00),(1686,10893,24,4.50,10,0.00),(1687,10893,29,123.79,24,0.00),(1688,10893,30,25.89,35,0.00),(1689,10893,36,19.00,20,0.00),(1690,10894,13,6.00,28,0.05),(1691,10894,69,36.00,50,0.05),(1692,10894,75,7.75,120,0.05),(1693,10895,24,4.50,110,0.00),(1694,10895,39,18.00,45,0.00),(1695,10895,40,18.40,91,0.00),(1696,10895,60,34.00,100,0.00),(1697,10896,45,9.50,15,0.00),(1698,10896,56,38.00,16,0.00),(1699,10897,29,123.79,80,0.00),(1700,10897,30,25.89,36,0.00),(1701,10898,13,6.00,5,0.00),(1702,10899,39,18.00,8,0.15),(1703,10900,70,15.00,3,0.25),(1704,10901,41,9.65,30,0.00),(1705,10901,71,21.50,30,0.00),(1706,10902,55,24.00,30,0.15),(1707,10902,62,49.30,6,0.15),(1708,10903,13,6.00,40,0.00),(1709,10903,65,21.05,21,0.00),(1710,10903,68,12.50,20,0.00),(1711,10904,58,13.25,15,0.00),(1712,10904,62,49.30,35,0.00),(1713,10905,1,18.00,20,0.05),(1714,10906,61,28.50,15,0.00),(1715,10907,75,7.75,14,0.00),(1716,10908,7,30.00,20,0.05),(1717,10908,52,7.00,14,0.05),(1718,10909,7,30.00,12,0.00),(1719,10909,16,17.45,15,0.00),(1720,10909,41,9.65,5,0.00),(1721,10910,19,9.20,12,0.00),(1722,10910,49,20.00,10,0.00),(1723,10910,61,28.50,5,0.00),(1724,10911,1,18.00,10,0.00),(1725,10911,17,39.00,12,0.00),(1726,10911,67,14.00,15,0.00),(1727,10912,11,21.00,40,0.25),(1728,10912,29,123.79,60,0.25),(1729,10913,4,22.00,30,0.25),(1730,10913,33,2.50,40,0.25),(1731,10913,58,13.25,15,0.00),(1732,10914,71,21.50,25,0.00),(1733,10915,17,39.00,10,0.00),(1734,10915,33,2.50,30,0.00),(1735,10915,54,7.45,10,0.00),(1736,10916,16,17.45,6,0.00),(1737,10916,32,32.00,6,0.00),(1738,10916,57,19.50,20,0.00),(1739,10917,30,25.89,1,0.00),(1740,10917,60,34.00,10,0.00),(1741,10918,1,18.00,60,0.25),(1742,10918,60,34.00,25,0.25),(1743,10919,16,17.45,24,0.00),(1744,10919,25,14.00,24,0.00),(1745,10919,40,18.40,20,0.00),(1746,10920,50,16.25,24,0.00),(1747,10921,35,18.00,10,0.00),(1748,10921,63,43.90,40,0.00),(1749,10922,17,39.00,15,0.00),(1750,10922,24,4.50,35,0.00),(1751,10923,42,14.00,10,0.20),(1752,10923,43,46.00,10,0.20),(1753,10923,67,14.00,24,0.20),(1754,10924,10,31.00,20,0.10),(1755,10924,28,45.60,30,0.10),(1756,10924,75,7.75,6,0.00),(1757,10925,36,19.00,25,0.15),(1758,10925,52,7.00,12,0.15),(1759,10926,11,21.00,2,0.00),(1760,10926,13,6.00,10,0.00),(1761,10926,19,9.20,7,0.00),(1762,10926,72,34.80,10,0.00),(1763,10927,20,81.00,5,0.00),(1764,10927,52,7.00,5,0.00),(1765,10927,76,18.00,20,0.00),(1766,10928,47,9.50,5,0.00),(1767,10928,76,18.00,5,0.00),(1768,10929,21,10.00,60,0.00),(1769,10929,75,7.75,49,0.00),(1770,10929,77,13.00,15,0.00),(1771,10930,21,10.00,36,0.00),(1772,10930,27,43.90,25,0.00),(1773,10930,55,24.00,25,0.20),(1774,10930,58,13.25,30,0.20),(1775,10931,13,6.00,42,0.15),(1776,10931,57,19.50,30,0.00),(1777,10932,16,17.45,30,0.10),(1778,10932,62,49.30,14,0.10),(1779,10932,72,34.80,16,0.00),(1780,10932,75,7.75,20,0.10),(1781,10933,53,32.80,2,0.00),(1782,10933,61,28.50,30,0.00),(1783,10934,6,25.00,20,0.00),(1784,10935,1,18.00,21,0.00),(1785,10935,18,62.50,4,0.25),(1786,10935,23,9.00,8,0.25),(1787,10936,36,19.00,30,0.20),(1788,10937,28,45.60,8,0.00),(1789,10937,34,14.00,20,0.00),(1790,10938,13,6.00,20,0.25),(1791,10938,43,46.00,24,0.25),(1792,10938,60,34.00,49,0.25),(1793,10938,71,21.50,35,0.25),(1794,10939,2,19.00,10,0.15),(1795,10939,67,14.00,40,0.15),(1796,10940,7,30.00,8,0.00),(1797,10940,13,6.00,20,0.00),(1798,10941,31,12.50,44,0.25),(1799,10941,62,49.30,30,0.25),(1800,10941,68,12.50,80,0.25),(1801,10941,72,34.80,50,0.00),(1802,10942,49,20.00,28,0.00),(1803,10943,13,6.00,15,0.00),(1804,10943,22,21.00,21,0.00),(1805,10943,46,12.00,15,0.00),(1806,10944,11,21.00,5,0.25),(1807,10944,44,19.45,18,0.25),(1808,10944,56,38.00,18,0.00),(1809,10945,13,6.00,20,0.00),(1810,10945,31,12.50,10,0.00),(1811,10946,10,31.00,25,0.00),(1812,10946,24,4.50,25,0.00),(1813,10946,77,13.00,40,0.00),(1814,10947,59,55.00,4,0.00),(1815,10948,50,16.25,9,0.00),(1816,10948,51,53.00,40,0.00),(1817,10948,55,24.00,4,0.00),(1818,10949,6,25.00,12,0.00),(1819,10949,10,31.00,30,0.00),(1820,10949,17,39.00,6,0.00),(1821,10949,62,49.30,60,0.00),(1822,10950,4,22.00,5,0.00),(1823,10951,33,2.50,15,0.05),(1824,10951,41,9.65,6,0.05),(1825,10951,75,7.75,50,0.05),(1826,10952,6,25.00,16,0.05),(1827,10952,28,45.60,2,0.00),(1828,10953,20,81.00,50,0.05),(1829,10953,31,12.50,50,0.05),(1830,10954,16,17.45,28,0.15),(1831,10954,31,12.50,25,0.15),(1832,10954,45,9.50,30,0.00),(1833,10954,60,34.00,24,0.15),(1834,10955,75,7.75,12,0.20),(1835,10956,21,10.00,12,0.00),(1836,10956,47,9.50,14,0.00),(1837,10956,51,53.00,8,0.00),(1838,10957,30,25.89,30,0.00),(1839,10957,35,18.00,40,0.00),(1840,10957,64,33.25,8,0.00),(1841,10958,5,21.35,20,0.00),(1842,10958,7,30.00,6,0.00),(1843,10958,72,34.80,5,0.00),(1844,10959,75,7.75,20,0.15),(1845,10960,24,4.50,10,0.25),(1846,10960,41,9.65,24,0.00),(1847,10961,52,7.00,6,0.05),(1848,10961,76,18.00,60,0.00),(1849,10962,7,30.00,45,0.00),(1850,10962,13,6.00,77,0.00),(1851,10962,53,32.80,20,0.00),(1852,10962,69,36.00,9,0.00),(1853,10962,76,18.00,44,0.00),(1854,10963,60,34.00,2,0.15),(1855,10964,18,62.50,6,0.00),(1856,10964,38,263.50,5,0.00),(1857,10964,69,36.00,10,0.00),(1858,10965,51,53.00,16,0.00),(1859,10966,37,26.00,8,0.00),(1860,10966,56,38.00,12,0.15),(1861,10966,62,49.30,12,0.15),(1862,10967,19,9.20,12,0.00),(1863,10967,49,20.00,40,0.00),(1864,10968,12,38.00,30,0.00),(1865,10968,24,4.50,30,0.00),(1866,10968,64,33.25,4,0.00),(1867,10969,46,12.00,9,0.00),(1868,10970,52,7.00,40,0.20),(1869,10971,29,123.79,14,0.00),(1870,10972,17,39.00,6,0.00),(1871,10972,33,2.50,7,0.00),(1872,10973,26,31.23,5,0.00),(1873,10973,41,9.65,6,0.00),(1874,10973,75,7.75,10,0.00),(1875,10974,63,43.90,10,0.00),(1876,10975,8,40.00,16,0.00),(1877,10975,75,7.75,10,0.00),(1878,10976,28,45.60,20,0.00),(1879,10977,39,18.00,30,0.00),(1880,10977,47,9.50,30,0.00),(1881,10977,51,53.00,10,0.00),(1882,10977,63,43.90,20,0.00),(1883,10978,8,40.00,20,0.15),(1884,10978,21,10.00,40,0.15),(1885,10978,40,18.40,10,0.00),(1886,10978,44,19.45,6,0.15),(1887,10979,7,30.00,18,0.00),(1888,10979,12,38.00,20,0.00),(1889,10979,24,4.50,80,0.00),(1890,10979,27,43.90,30,0.00),(1891,10979,31,12.50,24,0.00),(1892,10979,63,43.90,35,0.00),(1893,10980,75,7.75,40,0.20),(1894,10981,38,263.50,60,0.00),(1895,10982,7,30.00,20,0.00),(1896,10982,43,46.00,9,0.00),(1897,10983,13,6.00,84,0.15),(1898,10983,57,19.50,15,0.00),(1899,10984,16,17.45,55,0.00),(1900,10984,24,4.50,20,0.00),(1901,10984,36,19.00,40,0.00),(1902,10985,16,17.45,36,0.10),(1903,10985,18,62.50,8,0.10),(1904,10985,32,32.00,35,0.10),(1905,10986,11,21.00,30,0.00),(1906,10986,20,81.00,15,0.00),(1907,10986,76,18.00,10,0.00),(1908,10986,77,13.00,15,0.00),(1909,10987,7,30.00,60,0.00),(1910,10987,43,46.00,6,0.00),(1911,10987,72,34.80,20,0.00),(1912,10988,7,30.00,60,0.00),(1913,10988,62,49.30,40,0.10),(1914,10989,6,25.00,40,0.00),(1915,10989,11,21.00,15,0.00),(1916,10989,41,9.65,4,0.00),(1917,10990,21,10.00,65,0.00),(1918,10990,34,14.00,60,0.15),(1919,10990,55,24.00,65,0.15),(1920,10990,61,28.50,66,0.15),(1921,10991,2,19.00,50,0.20),(1922,10991,70,15.00,20,0.20),(1923,10991,76,18.00,90,0.20),(1924,10992,72,34.80,2,0.00),(1925,10993,29,123.79,50,0.25),(1926,10993,41,9.65,35,0.25),(1927,10994,59,55.00,18,0.05),(1928,10995,51,53.00,20,0.00),(1929,10995,60,34.00,4,0.00),(1930,10996,42,14.00,40,0.00),(1931,10997,32,32.00,50,0.00),(1932,10997,46,12.00,20,0.25),(1933,10997,52,7.00,20,0.25),(1934,10998,24,4.50,12,0.00),(1935,10998,61,28.50,7,0.00),(1936,10998,74,10.00,20,0.00),(1937,10998,75,7.75,30,0.00),(1938,10999,41,9.65,20,0.05),(1939,10999,51,53.00,15,0.05),(1940,10999,77,13.00,21,0.05),(1941,11000,4,22.00,25,0.25),(1942,11000,24,4.50,30,0.25),(1943,11000,77,13.00,30,0.00),(1944,11001,7,30.00,60,0.00),(1945,11001,22,21.00,25,0.00),(1946,11001,46,12.00,25,0.00),(1947,11001,55,24.00,6,0.00),(1948,11002,13,6.00,56,0.00),(1949,11002,35,18.00,15,0.15),(1950,11002,42,14.00,24,0.15),(1951,11002,55,24.00,40,0.00),(1952,11003,1,18.00,4,0.00),(1953,11003,40,18.40,10,0.00),(1954,11003,52,7.00,10,0.00),(1955,11004,26,31.23,6,0.00),(1956,11004,76,18.00,6,0.00),(1957,11005,1,18.00,2,0.00),(1958,11005,59,55.00,10,0.00),(1959,11006,1,18.00,8,0.00),(1960,11006,29,123.79,2,0.25),(1961,11007,8,40.00,30,0.00),(1962,11007,29,123.79,10,0.00),(1963,11007,42,14.00,14,0.00),(1964,11008,28,45.60,70,0.05),(1965,11008,34,14.00,90,0.05),(1966,11008,71,21.50,21,0.00),(1967,11009,24,4.50,12,0.00),(1968,11009,36,19.00,18,0.25),(1969,11009,60,34.00,9,0.00),(1970,11010,7,30.00,20,0.00),(1971,11010,24,4.50,10,0.00),(1972,11011,58,13.25,40,0.05),(1973,11011,71,21.50,20,0.00),(1974,11012,19,9.20,50,0.05),(1975,11012,60,34.00,36,0.05),(1976,11012,71,21.50,60,0.05),(1977,11013,23,9.00,10,0.00),(1978,11013,42,14.00,4,0.00),(1979,11013,45,9.50,20,0.00),(1980,11013,68,12.50,2,0.00),(1981,11014,41,9.65,28,0.10),(1982,11015,30,25.89,15,0.00),(1983,11015,77,13.00,18,0.00),(1984,11016,31,12.50,15,0.00),(1985,11016,36,19.00,16,0.00),(1986,11017,3,10.00,25,0.00),(1987,11017,59,55.00,110,0.00),(1988,11017,70,15.00,30,0.00),(1989,11018,12,38.00,20,0.00),(1990,11018,18,62.50,10,0.00),(1991,11018,56,38.00,5,0.00),(1992,11019,46,12.00,3,0.00),(1993,11019,49,20.00,2,0.00),(1994,11020,10,31.00,24,0.15),(1995,11021,2,19.00,11,0.25),(1996,11021,20,81.00,15,0.00),(1997,11021,26,31.23,63,0.00),(1998,11021,51,53.00,44,0.25),(1999,11021,72,34.80,35,0.00),(2000,11022,19,9.20,35,0.00),(2001,11022,69,36.00,30,0.00),(2002,11023,7,30.00,4,0.00),(2003,11023,43,46.00,30,0.00),(2004,11024,26,31.23,12,0.00),(2005,11024,33,2.50,30,0.00),(2006,11024,65,21.05,21,0.00),(2007,11024,71,21.50,50,0.00),(2008,11025,1,18.00,10,0.10),(2009,11025,13,6.00,20,0.10),(2010,11026,18,62.50,8,0.00),(2011,11026,51,53.00,10,0.00),(2012,11027,24,4.50,30,0.25),(2013,11027,62,49.30,21,0.25),(2014,11028,55,24.00,35,0.00),(2015,11028,59,55.00,24,0.00),(2016,11029,56,38.00,20,0.00),(2017,11029,63,43.90,12,0.00),(2018,11030,2,19.00,100,0.25),(2019,11030,5,21.35,70,0.00),(2020,11030,29,123.79,60,0.25),(2021,11030,59,55.00,100,0.25),(2022,11031,1,18.00,45,0.00),(2023,11031,13,6.00,80,0.00),(2024,11031,24,4.50,21,0.00),(2025,11031,64,33.25,20,0.00),(2026,11031,71,21.50,16,0.00),(2027,11032,36,19.00,35,0.00),(2028,11032,38,263.50,25,0.00),(2029,11032,59,55.00,30,0.00),(2030,11033,53,32.80,70,0.10),(2031,11033,69,36.00,36,0.10),(2032,11034,21,10.00,15,0.10),(2033,11034,44,19.45,12,0.00),(2034,11034,61,28.50,6,0.00),(2035,11035,1,18.00,10,0.00),(2036,11035,35,18.00,60,0.00),(2037,11035,42,14.00,30,0.00),(2038,11035,54,7.45,10,0.00),(2039,11036,13,6.00,7,0.00),(2040,11036,59,55.00,30,0.00),(2041,11037,70,15.00,4,0.00),(2042,11038,40,18.40,5,0.20),(2043,11038,52,7.00,2,0.00),(2044,11038,71,21.50,30,0.00),(2045,11039,28,45.60,20,0.00),(2046,11039,35,18.00,24,0.00),(2047,11039,49,20.00,60,0.00),(2048,11039,57,19.50,28,0.00),(2049,11040,21,10.00,20,0.00),(2050,11041,2,19.00,30,0.20),(2051,11041,63,43.90,30,0.00),(2052,11042,44,19.45,15,0.00),(2053,11042,61,28.50,4,0.00),(2054,11043,11,21.00,10,0.00),(2055,11044,62,49.30,12,0.00),(2056,11045,33,2.50,15,0.00),(2057,11045,51,53.00,24,0.00),(2058,11046,12,38.00,20,0.05),(2059,11046,32,32.00,15,0.05),(2060,11046,35,18.00,18,0.05),(2061,11047,1,18.00,25,0.25),(2062,11047,5,21.35,30,0.25),(2063,11048,68,12.50,42,0.00),(2064,11049,2,19.00,10,0.20),(2065,11049,12,38.00,4,0.20),(2066,11050,76,18.00,50,0.10),(2067,11051,24,4.50,10,0.20),(2068,11052,43,46.00,30,0.20),(2069,11052,61,28.50,10,0.20),(2070,11053,18,62.50,35,0.20),(2071,11053,32,32.00,20,0.00),(2072,11053,64,33.25,25,0.20),(2073,11054,33,2.50,10,0.00),(2074,11054,67,14.00,20,0.00),(2075,11055,24,4.50,15,0.00),(2076,11055,25,14.00,15,0.00),(2077,11055,51,53.00,20,0.00),(2078,11055,57,19.50,20,0.00),(2079,11056,7,30.00,40,0.00),(2080,11056,55,24.00,35,0.00),(2081,11056,60,34.00,50,0.00),(2082,11057,70,15.00,3,0.00),(2083,11058,21,10.00,3,0.00),(2084,11058,60,34.00,21,0.00),(2085,11058,61,28.50,4,0.00),(2086,11059,13,6.00,30,0.00),(2087,11059,17,39.00,12,0.00),(2088,11059,60,34.00,35,0.00),(2089,11060,60,34.00,4,0.00),(2090,11060,77,13.00,10,0.00),(2091,11061,60,34.00,15,0.00),(2092,11062,53,32.80,10,0.20),(2093,11062,70,15.00,12,0.20),(2094,11063,34,14.00,30,0.00),(2095,11063,40,18.40,40,0.10),(2096,11063,41,9.65,30,0.10),(2097,11064,17,39.00,77,0.10),(2098,11064,41,9.65,12,0.00),(2099,11064,53,32.80,25,0.10),(2100,11064,55,24.00,4,0.10),(2101,11064,68,12.50,55,0.00),(2102,11065,30,25.89,4,0.25),(2103,11065,54,7.45,20,0.25),(2104,11066,16,17.45,3,0.00),(2105,11066,19,9.20,42,0.00),(2106,11066,34,14.00,35,0.00),(2107,11067,41,9.65,9,0.00),(2108,11068,28,45.60,8,0.15),(2109,11068,43,46.00,36,0.15),(2110,11068,77,13.00,28,0.15),(2111,11069,39,18.00,20,0.00),(2112,11070,1,18.00,40,0.15),(2113,11070,2,19.00,20,0.15),(2114,11070,16,17.45,30,0.15),(2115,11070,31,12.50,20,0.00),(2116,11071,7,30.00,15,0.05),(2117,11071,13,6.00,10,0.05),(2118,11072,2,19.00,8,0.00),(2119,11072,41,9.65,40,0.00),(2120,11072,50,16.25,22,0.00),(2121,11072,64,33.25,130,0.00),(2122,11073,11,21.00,10,0.00),(2123,11073,24,4.50,20,0.00),(2124,11074,16,17.45,14,0.05),(2125,11075,2,19.00,10,0.15),(2126,11075,46,12.00,30,0.15),(2127,11075,76,18.00,2,0.15),(2128,11076,6,25.00,20,0.25),(2129,11076,14,23.25,20,0.25),(2130,11076,19,9.20,10,0.25),(2131,11077,2,19.00,24,0.20),(2132,11077,3,10.00,4,0.00),(2133,11077,4,22.00,1,0.00),(2134,11077,6,25.00,1,0.02),(2135,11077,7,30.00,1,0.05),(2136,11077,8,40.00,2,0.10),(2137,11077,10,31.00,1,0.00),(2138,11077,12,38.00,2,0.05),(2139,11077,13,6.00,4,0.00),(2140,11077,14,23.25,1,0.03),(2141,11077,16,17.45,2,0.03),(2142,11077,20,81.00,1,0.04),(2143,11077,23,9.00,2,0.00),(2144,11077,32,32.00,1,0.00),(2145,11077,39,18.00,2,0.05),(2146,11077,41,9.65,3,0.00),(2147,11077,46,12.00,3,0.02),(2148,11077,52,7.00,2,0.00),(2149,11077,55,24.00,2,0.00),(2150,11077,60,34.00,2,0.06),(2151,11077,64,33.25,2,0.03),(2152,11077,66,17.00,1,0.00),(2153,11077,73,15.00,2,0.01),(2154,11077,75,7.75,4,0.00),(2155,11077,77,13.00,2,0.00);
/*!40000 ALTER TABLE `orderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productId` int NOT NULL AUTO_INCREMENT,
  `productName` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `supplierId` int DEFAULT NULL,
  `categoryId` int DEFAULT NULL,
  `quantityPerUnit` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `unitPrice` decimal(10,2) DEFAULT NULL,
  `unitsInStock` smallint DEFAULT NULL,
  `unitsOnOrder` smallint DEFAULT NULL,
  `reorderLevel` smallint DEFAULT NULL,
  `discontinued` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`productId`),
  KEY `supplierId` (`supplierId`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`supplierId`) REFERENCES `supplier` (`supplierId`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`categoryId`) REFERENCES `category` (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Product HHYDP',1,1,NULL,18.00,NULL,NULL,NULL,'0'),(2,'Product RECZE',1,1,NULL,19.00,NULL,NULL,NULL,'0'),(3,'Product IMEHJ',1,2,NULL,10.00,NULL,NULL,NULL,'0'),(4,'Product KSBRM',2,2,NULL,22.00,NULL,NULL,NULL,'0'),(5,'Product EPEIM',2,2,NULL,21.35,NULL,NULL,NULL,'1'),(6,'Product VAIIV',3,2,NULL,25.00,NULL,NULL,NULL,'0'),(7,'Product HMLNI',3,7,NULL,30.00,NULL,NULL,NULL,'0'),(8,'Product WVJFP',3,2,NULL,40.00,NULL,NULL,NULL,'0'),(9,'Product AOZBW',4,6,NULL,97.00,NULL,NULL,NULL,'1'),(10,'Product YHXGE',4,8,NULL,31.00,NULL,NULL,NULL,'0'),(11,'Product QMVUN',5,4,NULL,21.00,NULL,NULL,NULL,'0'),(12,'Product OSFNS',5,4,NULL,38.00,NULL,NULL,NULL,'0'),(13,'Product POXFU',6,8,NULL,6.00,NULL,NULL,NULL,'0'),(14,'Product PWCJB',6,7,NULL,23.25,NULL,NULL,NULL,'0'),(15,'Product KSZOI',6,2,NULL,15.50,NULL,NULL,NULL,'0'),(16,'Product PAFRH',7,3,NULL,17.45,NULL,NULL,NULL,'0'),(17,'Product BLCAX',7,6,NULL,39.00,NULL,NULL,NULL,'1'),(18,'Product CKEDC',7,8,NULL,62.50,NULL,NULL,NULL,'0'),(19,'Product XKXDO',8,3,NULL,9.20,NULL,NULL,NULL,'0'),(20,'Product QHFFP',8,3,NULL,81.00,NULL,NULL,NULL,'0'),(21,'Product VJZZH',8,3,NULL,10.00,NULL,NULL,NULL,'0'),(22,'Product CPHFY',9,5,NULL,21.00,NULL,NULL,NULL,'0'),(23,'Product JLUDZ',9,5,NULL,9.00,NULL,NULL,NULL,'0'),(24,'Product QOGNU',10,1,NULL,4.50,NULL,NULL,NULL,'1'),(25,'Product LYLNI',11,3,NULL,14.00,NULL,NULL,NULL,'0'),(26,'Product HLGZA',11,3,NULL,31.23,NULL,NULL,NULL,'0'),(27,'Product SMIOH',11,3,NULL,43.90,NULL,NULL,NULL,'0'),(28,'Product OFBNT',12,7,NULL,45.60,NULL,NULL,NULL,'1'),(29,'Product VJXYN',12,6,NULL,123.79,NULL,NULL,NULL,'1'),(30,'Product LYERX',13,8,NULL,25.89,NULL,NULL,NULL,'0'),(31,'Product XWOXC',14,4,NULL,12.50,NULL,NULL,NULL,'0'),(32,'Product NUNAW',14,4,NULL,32.00,NULL,NULL,NULL,'0'),(33,'Product ASTMN',15,4,NULL,2.50,NULL,NULL,NULL,'0'),(34,'Product SWNJY',16,1,NULL,14.00,NULL,NULL,NULL,'0'),(35,'Product NEVTJ',16,1,NULL,18.00,NULL,NULL,NULL,'0'),(36,'Product GMKIJ',17,8,NULL,19.00,NULL,NULL,NULL,'0'),(37,'Product EVFFA',17,8,NULL,26.00,NULL,NULL,NULL,'0'),(38,'Product QDOMO',18,1,NULL,263.50,NULL,NULL,NULL,'0'),(39,'Product LSOFL',18,1,NULL,18.00,NULL,NULL,NULL,'0'),(40,'Product YZIXQ',19,8,NULL,18.40,NULL,NULL,NULL,'0'),(41,'Product TTEEX',19,8,NULL,9.65,NULL,NULL,NULL,'0'),(42,'Product RJVNM',20,5,NULL,14.00,NULL,NULL,NULL,'1'),(43,'Product ZZZHR',20,1,NULL,46.00,NULL,NULL,NULL,'0'),(44,'Product VJIEO',20,2,NULL,19.45,NULL,NULL,NULL,'0'),(45,'Product AQOKR',21,8,NULL,9.50,NULL,NULL,NULL,'0'),(46,'Product CBRRL',21,8,NULL,12.00,NULL,NULL,NULL,'0'),(47,'Product EZZPR',22,3,NULL,9.50,NULL,NULL,NULL,'0'),(48,'Product MYNXN',22,3,NULL,12.75,NULL,NULL,NULL,'0'),(49,'Product FPYPN',23,3,NULL,20.00,NULL,NULL,NULL,'0'),(50,'Product BIUDV',23,3,NULL,16.25,NULL,NULL,NULL,'0'),(51,'Product APITJ',24,7,NULL,53.00,NULL,NULL,NULL,'0'),(52,'Product QSRXF',24,5,NULL,7.00,NULL,NULL,NULL,'0'),(53,'Product BKGEA',24,6,NULL,32.80,NULL,NULL,NULL,'1'),(54,'Product QAQRL',25,6,NULL,7.45,NULL,NULL,NULL,'0'),(55,'Product YYWRT',25,6,NULL,24.00,NULL,NULL,NULL,'0'),(56,'Product VKCMF',26,5,NULL,38.00,NULL,NULL,NULL,'0'),(57,'Product OVLQI',26,5,NULL,19.50,NULL,NULL,NULL,'0'),(58,'Product ACRVI',27,8,NULL,13.25,NULL,NULL,NULL,'0'),(59,'Product UKXRI',28,4,NULL,55.00,NULL,NULL,NULL,'0'),(60,'Product WHBYK',28,4,NULL,34.00,NULL,NULL,NULL,'0'),(61,'Product XYZPE',29,2,NULL,28.50,NULL,NULL,NULL,'0'),(62,'Product WUXYK',29,3,NULL,49.30,NULL,NULL,NULL,'0'),(63,'Product ICKNK',7,2,NULL,43.90,NULL,NULL,NULL,'0'),(64,'Product HCQDE',12,5,NULL,33.25,NULL,NULL,NULL,'0'),(65,'Product XYWBZ',2,2,NULL,21.05,NULL,NULL,NULL,'0'),(66,'Product LQMGN',2,2,NULL,17.00,NULL,NULL,NULL,'0'),(67,'Product XLXQF',16,1,NULL,14.00,NULL,NULL,NULL,'0'),(68,'Product TBTBL',8,3,NULL,12.50,NULL,NULL,NULL,'0'),(69,'Product COAXA',15,4,NULL,36.00,NULL,NULL,NULL,'0'),(70,'Product TOONT',7,1,NULL,15.00,NULL,NULL,NULL,'0'),(71,'Product MYMOI',15,4,NULL,21.50,NULL,NULL,NULL,'0'),(72,'Product GEEOO',14,4,NULL,34.80,NULL,NULL,NULL,'0'),(73,'Product WEUJZ',17,8,NULL,15.00,NULL,NULL,NULL,'0'),(74,'Product BKAZJ',4,7,NULL,10.00,NULL,NULL,NULL,'0'),(75,'Product BWRLG',12,1,NULL,7.75,NULL,NULL,NULL,'0'),(76,'Product JYGFE',23,1,NULL,18.00,NULL,NULL,NULL,'0'),(77,'Product LUNZZ',12,2,NULL,13.00,NULL,NULL,NULL,'0');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region` (
  `regionId` int NOT NULL,
  `regiondescription` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`regionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'Eastern'),(2,'Western'),(3,'Northern'),(4,'Southern');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesorder`
--

DROP TABLE IF EXISTS `salesorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesorder` (
  `orderId` int NOT NULL AUTO_INCREMENT,
  `custId` int NOT NULL,
  `employeeId` int DEFAULT NULL,
  `orderDate` datetime DEFAULT NULL,
  `requiredDate` datetime DEFAULT NULL,
  `shippedDate` datetime DEFAULT NULL,
  `shipperid` int NOT NULL,
  `freight` decimal(10,2) DEFAULT NULL,
  `shipName` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `shipAddress` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `shipCity` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `shipRegion` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `shipPostalCode` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `shipCountry` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`orderId`,`custId`),
  KEY `shipperid` (`shipperid`),
  KEY `custId` (`custId`),
  CONSTRAINT `salesorder_ibfk_1` FOREIGN KEY (`shipperid`) REFERENCES `shipper` (`shipperId`),
  CONSTRAINT `salesorder_ibfk_2` FOREIGN KEY (`custId`) REFERENCES `customer` (`custId`)
) ENGINE=InnoDB AUTO_INCREMENT=11078 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesorder`
--

LOCK TABLES `salesorder` WRITE;
/*!40000 ALTER TABLE `salesorder` DISABLE KEYS */;
INSERT INTO `salesorder` VALUES (10248,85,5,'2006-07-04 00:00:00','2006-08-01 00:00:00','2006-07-16 00:00:00',3,32.38,'Ship to 85-B','6789 rue de l\'Abbaye','Reims',NULL,'10345','France'),(10249,79,6,'2006-07-05 00:00:00','2006-08-16 00:00:00','2006-07-10 00:00:00',1,11.61,'Ship to 79-C','Luisenstr. 9012','Münster',NULL,'10328','Germany'),(10250,34,4,'2006-07-08 00:00:00','2006-08-05 00:00:00','2006-07-12 00:00:00',2,65.83,'Destination SCQXA','Rua do Paço, 7890','Rio de Janeiro','RJ','10195','Brazil'),(10251,84,3,'2006-07-08 00:00:00','2006-08-05 00:00:00','2006-07-15 00:00:00',1,41.34,'Ship to 84-A','3456, rue du Commerce','Lyon',NULL,'10342','France'),(10252,76,4,'2006-07-09 00:00:00','2006-08-06 00:00:00','2006-07-11 00:00:00',2,51.30,'Ship to 76-B','Boulevard Tirou, 9012','Charleroi',NULL,'10318','Belgium'),(10253,34,3,'2006-07-10 00:00:00','2006-07-24 00:00:00','2006-07-16 00:00:00',2,58.17,'Destination JPAIY','Rua do Paço, 8901','Rio de Janeiro','RJ','10196','Brazil'),(10254,14,5,'2006-07-11 00:00:00','2006-08-08 00:00:00','2006-07-23 00:00:00',2,22.98,'Destination YUJRD','Hauptstr. 1234','Bern',NULL,'10139','Switzerland'),(10255,68,9,'2006-07-12 00:00:00','2006-08-09 00:00:00','2006-07-15 00:00:00',3,148.33,'Ship to 68-A','Starenweg 6789','Genève',NULL,'10294','Switzerland'),(10256,88,3,'2006-07-15 00:00:00','2006-08-12 00:00:00','2006-07-17 00:00:00',2,13.97,'Ship to 88-B','Rua do Mercado, 5678','Resende','SP','10354','Brazil'),(10257,35,4,'2006-07-16 00:00:00','2006-08-13 00:00:00','2006-07-22 00:00:00',3,81.91,'Destination JYDLM','Carrera1234 con Ave. Carlos Soublette #8-35','San Cristóbal','Táchira','10199','Venezuela'),(10258,20,1,'2006-07-17 00:00:00','2006-08-14 00:00:00','2006-07-23 00:00:00',1,140.51,'Destination RVDMF','Kirchgasse 9012','Graz',NULL,'10157','Austria'),(10259,13,4,'2006-07-18 00:00:00','2006-08-15 00:00:00','2006-07-25 00:00:00',3,3.25,'Destination LGGCH','Sierras de Granada 9012','México D.F.',NULL,'10137','Mexico'),(10260,56,4,'2006-07-19 00:00:00','2006-08-16 00:00:00','2006-07-29 00:00:00',1,55.09,'Ship to 56-A','Mehrheimerstr. 0123','Köln',NULL,'10258','Germany'),(10261,61,4,'2006-07-19 00:00:00','2006-08-16 00:00:00','2006-07-30 00:00:00',2,3.05,'Ship to 61-B','Rua da Panificadora, 6789','Rio de Janeiro','RJ','10274','Brazil'),(10262,65,8,'2006-07-22 00:00:00','2006-08-19 00:00:00','2006-07-25 00:00:00',3,48.29,'Ship to 65-B','8901 Milton Dr.','Albuquerque','NM','10286','USA'),(10263,20,9,'2006-07-23 00:00:00','2006-08-20 00:00:00','2006-07-31 00:00:00',3,146.06,'Destination FFXKT','Kirchgasse 0123','Graz',NULL,'10158','Austria'),(10264,24,6,'2006-07-24 00:00:00','2006-08-21 00:00:00','2006-08-23 00:00:00',3,3.67,'Destination KBSBN','Åkergatan 9012','Bräcke',NULL,'10167','Sweden'),(10265,7,2,'2006-07-25 00:00:00','2006-08-22 00:00:00','2006-08-12 00:00:00',1,55.28,'Ship to 7-A','0123, place Kléber','Strasbourg',NULL,'10329','France'),(10266,87,3,'2006-07-26 00:00:00','2006-09-06 00:00:00','2006-07-31 00:00:00',3,25.73,'Ship to 87-B','Torikatu 2345','Oulu',NULL,'10351','Finland'),(10267,25,4,'2006-07-29 00:00:00','2006-08-26 00:00:00','2006-08-06 00:00:00',1,208.58,'Destination VAPXU','Berliner Platz 0123','München',NULL,'10168','Germany'),(10268,33,8,'2006-07-30 00:00:00','2006-08-27 00:00:00','2006-08-02 00:00:00',3,66.29,'Destination QJVQH','5ª Ave. Los Palos Grandes 5678','Caracas','DF','10193','Venezuela'),(10269,89,5,'2006-07-31 00:00:00','2006-08-14 00:00:00','2006-08-09 00:00:00',1,4.56,'Ship to 89-B','8901 - 12th Ave. S.','Seattle','WA','10357','USA'),(10270,87,1,'2006-08-01 00:00:00','2006-08-29 00:00:00','2006-08-02 00:00:00',1,136.54,'Ship to 87-B','Torikatu 2345','Oulu',NULL,'10351','Finland'),(10271,75,6,'2006-08-01 00:00:00','2006-08-29 00:00:00','2006-08-30 00:00:00',2,4.54,'Ship to 75-C','P.O. Box 7890','Lander','WY','10316','USA'),(10272,65,6,'2006-08-02 00:00:00','2006-08-30 00:00:00','2006-08-06 00:00:00',2,98.03,'Ship to 65-A','7890 Milton Dr.','Albuquerque','NM','10285','USA'),(10273,63,3,'2006-08-05 00:00:00','2006-09-02 00:00:00','2006-08-12 00:00:00',3,76.07,'Ship to 63-A','Taucherstraße 1234','Cunewalde',NULL,'10279','Germany'),(10274,85,6,'2006-08-06 00:00:00','2006-09-03 00:00:00','2006-08-16 00:00:00',1,6.01,'Ship to 85-B','6789 rue de l\'Abbaye','Reims',NULL,'10345','France'),(10275,49,1,'2006-08-07 00:00:00','2006-09-04 00:00:00','2006-08-09 00:00:00',1,26.93,'Ship to 49-A','Via Ludovico il Moro 8901','Bergamo',NULL,'10235','Italy'),(10276,80,8,'2006-08-08 00:00:00','2006-08-22 00:00:00','2006-08-14 00:00:00',3,13.84,'Ship to 80-C','Avda. Azteca 5678','México D.F.',NULL,'10334','Mexico'),(10277,52,2,'2006-08-09 00:00:00','2006-09-06 00:00:00','2006-08-13 00:00:00',3,125.77,'Ship to 52-A','Heerstr. 9012','Leipzig',NULL,'10247','Germany'),(10278,5,8,'2006-08-12 00:00:00','2006-09-09 00:00:00','2006-08-16 00:00:00',2,92.69,'Ship to 5-C','Berguvsvägen  1234','Luleå',NULL,'10269','Sweden'),(10279,44,8,'2006-08-13 00:00:00','2006-09-10 00:00:00','2006-08-16 00:00:00',2,25.83,'Ship to 44-A','Magazinweg 4567','Frankfurt a.M.',NULL,'10222','Germany'),(10280,5,2,'2006-08-14 00:00:00','2006-09-11 00:00:00','2006-09-12 00:00:00',1,8.98,'Ship to 5-B','Berguvsvägen  0123','Luleå',NULL,'10268','Sweden'),(10281,69,4,'2006-08-14 00:00:00','2006-08-28 00:00:00','2006-08-21 00:00:00',1,2.94,'Ship to 69-A','Gran Vía, 9012','Madrid',NULL,'10297','Spain'),(10282,69,4,'2006-08-15 00:00:00','2006-09-12 00:00:00','2006-08-21 00:00:00',1,12.69,'Ship to 69-B','Gran Vía, 0123','Madrid',NULL,'10298','Spain'),(10283,46,3,'2006-08-16 00:00:00','2006-09-13 00:00:00','2006-08-23 00:00:00',3,84.81,'Ship to 46-A','Carrera 0123 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto','Lara','10227','Venezuela'),(10284,44,4,'2006-08-19 00:00:00','2006-09-16 00:00:00','2006-08-27 00:00:00',1,76.56,'Ship to 44-A','Magazinweg 4567','Frankfurt a.M.',NULL,'10222','Germany'),(10285,63,1,'2006-08-20 00:00:00','2006-09-17 00:00:00','2006-08-26 00:00:00',2,76.83,'Ship to 63-B','Taucherstraße 2345','Cunewalde',NULL,'10280','Germany'),(10286,63,8,'2006-08-21 00:00:00','2006-09-18 00:00:00','2006-08-30 00:00:00',3,229.24,'Ship to 63-B','Taucherstraße 2345','Cunewalde',NULL,'10280','Germany'),(10287,67,8,'2006-08-22 00:00:00','2006-09-19 00:00:00','2006-08-28 00:00:00',3,12.76,'Ship to 67-A','Av. Copacabana, 3456','Rio de Janeiro','RJ','10291','Brazil'),(10288,66,4,'2006-08-23 00:00:00','2006-09-20 00:00:00','2006-09-03 00:00:00',1,7.45,'Ship to 66-C','Strada Provinciale 2345','Reggio Emilia',NULL,'10290','Italy'),(10289,11,7,'2006-08-26 00:00:00','2006-09-23 00:00:00','2006-08-28 00:00:00',3,22.77,'Destination DLEUN','Fauntleroy Circus 4567','London',NULL,'10132','UK'),(10290,15,8,'2006-08-27 00:00:00','2006-09-24 00:00:00','2006-09-03 00:00:00',1,79.70,'Destination HQZHO','Av. dos Lusíadas, 4567','Sao Paulo','SP','10142','Brazil'),(10291,61,6,'2006-08-27 00:00:00','2006-09-24 00:00:00','2006-09-04 00:00:00',2,6.40,'Ship to 61-A','Rua da Panificadora, 5678','Rio de Janeiro','RJ','10273','Brazil'),(10292,81,1,'2006-08-28 00:00:00','2006-09-25 00:00:00','2006-09-02 00:00:00',2,1.35,'Ship to 81-A','Av. Inês de Castro, 6789','Sao Paulo','SP','10335','Brazil'),(10293,80,1,'2006-08-29 00:00:00','2006-09-26 00:00:00','2006-09-11 00:00:00',3,21.18,'Ship to 80-B','Avda. Azteca 4567','México D.F.',NULL,'10333','Mexico'),(10294,65,4,'2006-08-30 00:00:00','2006-09-27 00:00:00','2006-09-05 00:00:00',2,147.26,'Ship to 65-A','7890 Milton Dr.','Albuquerque','NM','10285','USA'),(10295,85,2,'2006-09-02 00:00:00','2006-09-30 00:00:00','2006-09-10 00:00:00',2,1.15,'Ship to 85-C','7890 rue de l\'Abbaye','Reims',NULL,'10346','France'),(10296,46,6,'2006-09-03 00:00:00','2006-10-01 00:00:00','2006-09-11 00:00:00',1,0.12,'Ship to 46-C','Carrera 2345 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto','Lara','10229','Venezuela'),(10297,7,5,'2006-09-04 00:00:00','2006-10-16 00:00:00','2006-09-10 00:00:00',2,5.74,'Ship to 7-C','2345, place Kléber','Strasbourg',NULL,'10331','France'),(10298,37,6,'2006-09-05 00:00:00','2006-10-03 00:00:00','2006-09-11 00:00:00',2,168.22,'Destination ATSOA','4567 Johnstown Road','Cork','Co. Cork','10202','Ireland'),(10299,67,4,'2006-09-06 00:00:00','2006-10-04 00:00:00','2006-09-13 00:00:00',2,29.76,'Ship to 67-A','Av. Copacabana, 3456','Rio de Janeiro','RJ','10291','Brazil'),(10300,49,2,'2006-09-09 00:00:00','2006-10-07 00:00:00','2006-09-18 00:00:00',2,17.68,'Ship to 49-A','Via Ludovico il Moro 8901','Bergamo',NULL,'10235','Italy'),(10301,86,8,'2006-09-09 00:00:00','2006-10-07 00:00:00','2006-09-17 00:00:00',2,45.08,'Ship to 86-A','Adenauerallee 8901','Stuttgart',NULL,'10347','Germany'),(10302,76,4,'2006-09-10 00:00:00','2006-10-08 00:00:00','2006-10-09 00:00:00',2,6.27,'Ship to 76-B','Boulevard Tirou, 9012','Charleroi',NULL,'10318','Belgium'),(10303,30,7,'2006-09-11 00:00:00','2006-10-09 00:00:00','2006-09-18 00:00:00',2,107.83,'Destination IIYDD','C/ Romero, 5678','Sevilla',NULL,'10183','Spain'),(10304,80,1,'2006-09-12 00:00:00','2006-10-10 00:00:00','2006-09-17 00:00:00',2,63.79,'Ship to 80-C','Avda. Azteca 5678','México D.F.',NULL,'10334','Mexico'),(10305,55,8,'2006-09-13 00:00:00','2006-10-11 00:00:00','2006-10-09 00:00:00',3,257.62,'Ship to 55-B','8901 Bering St.','Anchorage','AK','10256','USA'),(10306,69,1,'2006-09-16 00:00:00','2006-10-14 00:00:00','2006-09-23 00:00:00',3,7.56,'Ship to 69-B','Gran Vía, 0123','Madrid',NULL,'10298','Spain'),(10307,48,2,'2006-09-17 00:00:00','2006-10-15 00:00:00','2006-09-25 00:00:00',2,0.56,'Ship to 48-B','6789 Chiaroscuro Rd.','Portland','OR','10233','USA'),(10308,2,7,'2006-09-18 00:00:00','2006-10-16 00:00:00','2006-09-24 00:00:00',3,1.61,'Destination QMVCI','Avda. de la Constitución 2345','México D.F.',NULL,'10180','Mexico'),(10309,37,3,'2006-09-19 00:00:00','2006-10-17 00:00:00','2006-10-23 00:00:00',1,47.30,'Destination ATSOA','4567 Johnstown Road','Cork','Co. Cork','10202','Ireland'),(10310,77,8,'2006-09-20 00:00:00','2006-10-18 00:00:00','2006-09-27 00:00:00',2,17.52,'Ship to 77-B','2345 Jefferson Way Suite 2','Portland','OR','10321','USA'),(10311,18,1,'2006-09-20 00:00:00','2006-10-04 00:00:00','2006-09-26 00:00:00',3,24.69,'Destination SNPXM','0123, rue des Cinquante Otages','Nantes',NULL,'10148','France'),(10312,86,2,'2006-09-23 00:00:00','2006-10-21 00:00:00','2006-10-03 00:00:00',2,40.26,'Ship to 86-B','Adenauerallee 9012','Stuttgart',NULL,'10348','Germany'),(10313,63,2,'2006-09-24 00:00:00','2006-10-22 00:00:00','2006-10-04 00:00:00',2,1.96,'Ship to 63-A','Taucherstraße 1234','Cunewalde',NULL,'10279','Germany'),(10314,65,1,'2006-09-25 00:00:00','2006-10-23 00:00:00','2006-10-04 00:00:00',2,74.16,'Ship to 65-A','7890 Milton Dr.','Albuquerque','NM','10285','USA'),(10315,38,4,'2006-09-26 00:00:00','2006-10-24 00:00:00','2006-10-03 00:00:00',2,41.76,'Destination AXVHD','Garden House Crowther Way 9012','Cowes','Isle of Wight','10207','UK'),(10316,65,1,'2006-09-27 00:00:00','2006-10-25 00:00:00','2006-10-08 00:00:00',3,150.15,'Ship to 65-B','8901 Milton Dr.','Albuquerque','NM','10286','USA'),(10317,48,6,'2006-09-30 00:00:00','2006-10-28 00:00:00','2006-10-10 00:00:00',1,12.69,'Ship to 48-B','6789 Chiaroscuro Rd.','Portland','OR','10233','USA'),(10318,38,8,'2006-10-01 00:00:00','2006-10-29 00:00:00','2006-10-04 00:00:00',2,4.73,'Destination AXVHD','Garden House Crowther Way 9012','Cowes','Isle of Wight','10207','UK'),(10319,80,7,'2006-10-02 00:00:00','2006-10-30 00:00:00','2006-10-11 00:00:00',3,64.50,'Ship to 80-B','Avda. Azteca 4567','México D.F.',NULL,'10333','Mexico'),(10320,87,5,'2006-10-03 00:00:00','2006-10-17 00:00:00','2006-10-18 00:00:00',3,34.57,'Ship to 87-A','Torikatu 1234','Oulu',NULL,'10350','Finland'),(10321,38,3,'2006-10-03 00:00:00','2006-10-31 00:00:00','2006-10-11 00:00:00',2,3.43,'Destination LMVGS','Garden House Crowther Way 8901','Cowes','Isle of Wight','10206','UK'),(10322,58,7,'2006-10-04 00:00:00','2006-11-01 00:00:00','2006-10-23 00:00:00',3,0.40,'Ship to 58-A','Calle Dr. Jorge Cash 3456','México D.F.',NULL,'10261','Mexico'),(10323,39,4,'2006-10-07 00:00:00','2006-11-04 00:00:00','2006-10-14 00:00:00',1,4.88,'Destination RMBHM','Maubelstr. 1234','Brandenburg',NULL,'10209','Germany'),(10324,71,9,'2006-10-08 00:00:00','2006-11-05 00:00:00','2006-10-10 00:00:00',1,214.27,'Ship to 71-C','9012 Suffolk Ln.','Boise','Id','10307','USA'),(10325,39,1,'2006-10-09 00:00:00','2006-10-23 00:00:00','2006-10-14 00:00:00',3,64.86,'Destination RMBHM','Maubelstr. 1234','Brandenburg',NULL,'10209','Germany'),(10326,8,4,'2006-10-10 00:00:00','2006-11-07 00:00:00','2006-10-14 00:00:00',2,77.92,'Ship to 8-A','C/ Araquil, 0123','Madrid',NULL,'10359','Spain'),(10327,24,2,'2006-10-11 00:00:00','2006-11-08 00:00:00','2006-10-14 00:00:00',1,63.36,'Destination NCKKO','Åkergatan 7890','Bräcke',NULL,'10165','Sweden'),(10328,28,4,'2006-10-14 00:00:00','2006-11-11 00:00:00','2006-10-17 00:00:00',3,87.03,'Destination CIRQO','Jardim das rosas n. 8901','Lisboa',NULL,'10176','Portugal'),(10329,75,4,'2006-10-15 00:00:00','2006-11-26 00:00:00','2006-10-23 00:00:00',2,191.67,'Ship to 75-C','P.O. Box 7890','Lander','WY','10316','USA'),(10330,46,3,'2006-10-16 00:00:00','2006-11-13 00:00:00','2006-10-28 00:00:00',1,12.75,'Ship to 46-A','Carrera 0123 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto','Lara','10227','Venezuela'),(10331,9,9,'2006-10-16 00:00:00','2006-11-27 00:00:00','2006-10-21 00:00:00',1,10.19,'Ship to 9-C','0123, rue des Bouchers','Marseille',NULL,'10369','France'),(10332,51,3,'2006-10-17 00:00:00','2006-11-28 00:00:00','2006-10-21 00:00:00',2,52.84,'Ship to 51-B','7890 rue St. Laurent','Montréal','Québec','10245','Canada'),(10333,87,5,'2006-10-18 00:00:00','2006-11-15 00:00:00','2006-10-25 00:00:00',3,0.59,'Ship to 87-C','Torikatu 3456','Oulu',NULL,'10352','Finland'),(10334,84,8,'2006-10-21 00:00:00','2006-11-18 00:00:00','2006-10-28 00:00:00',2,8.56,'Ship to 84-B','4567, rue du Commerce','Lyon',NULL,'10343','France'),(10335,37,7,'2006-10-22 00:00:00','2006-11-19 00:00:00','2006-10-24 00:00:00',2,42.11,'Destination ATSOA','4567 Johnstown Road','Cork','Co. Cork','10202','Ireland'),(10336,60,7,'2006-10-23 00:00:00','2006-11-20 00:00:00','2006-10-25 00:00:00',2,15.51,'Ship to 60-B','Estrada da saúde n. 3456','Lisboa',NULL,'10271','Portugal'),(10337,25,4,'2006-10-24 00:00:00','2006-11-21 00:00:00','2006-10-29 00:00:00',3,108.26,'Destination QOCBL','Berliner Platz 1234','München',NULL,'10169','Germany'),(10338,55,4,'2006-10-25 00:00:00','2006-11-22 00:00:00','2006-10-29 00:00:00',3,84.21,'Ship to 55-C','9012 Bering St.','Anchorage','AK','10257','USA'),(10339,51,2,'2006-10-28 00:00:00','2006-11-25 00:00:00','2006-11-04 00:00:00',2,15.66,'Ship to 51-C','8901 rue St. Laurent','Montréal','Québec','10246','Canada'),(10340,9,1,'2006-10-29 00:00:00','2006-11-26 00:00:00','2006-11-08 00:00:00',3,166.31,'Ship to 9-A','8901, rue des Bouchers','Marseille',NULL,'10367','France'),(10341,73,7,'2006-10-29 00:00:00','2006-11-26 00:00:00','2006-11-05 00:00:00',3,26.78,'Ship to 73-A','Vinbæltet 1234','Kobenhavn',NULL,'10310','Denmark'),(10342,25,4,'2006-10-30 00:00:00','2006-11-13 00:00:00','2006-11-04 00:00:00',2,54.83,'Destination VAPXU','Berliner Platz 0123','München',NULL,'10168','Germany'),(10343,44,4,'2006-10-31 00:00:00','2006-11-28 00:00:00','2006-11-06 00:00:00',1,110.37,'Ship to 44-A','Magazinweg 4567','Frankfurt a.M.',NULL,'10222','Germany'),(10344,89,4,'2006-11-01 00:00:00','2006-11-29 00:00:00','2006-11-05 00:00:00',2,23.29,'Ship to 89-A','7890 - 12th Ave. S.','Seattle','WA','10356','USA'),(10345,63,2,'2006-11-04 00:00:00','2006-12-02 00:00:00','2006-11-11 00:00:00',2,249.06,'Ship to 63-B','Taucherstraße 2345','Cunewalde',NULL,'10280','Germany'),(10346,65,3,'2006-11-05 00:00:00','2006-12-17 00:00:00','2006-11-08 00:00:00',3,142.08,'Ship to 65-A','7890 Milton Dr.','Albuquerque','NM','10285','USA'),(10347,21,4,'2006-11-06 00:00:00','2006-12-04 00:00:00','2006-11-08 00:00:00',3,3.10,'Destination KKELL','Rua Orós, 4567','Sao Paulo','SP','10162','Brazil'),(10348,86,4,'2006-11-07 00:00:00','2006-12-05 00:00:00','2006-11-15 00:00:00',2,0.78,'Ship to 86-B','Adenauerallee 9012','Stuttgart',NULL,'10348','Germany'),(10349,75,7,'2006-11-08 00:00:00','2006-12-06 00:00:00','2006-11-15 00:00:00',1,8.63,'Ship to 75-C','P.O. Box 7890','Lander','WY','10316','USA'),(10350,41,6,'2006-11-11 00:00:00','2006-12-09 00:00:00','2006-12-03 00:00:00',2,64.19,'Destination DWJIO','9012 rue Alsace-Lorraine','Toulouse',NULL,'10217','France'),(10351,20,1,'2006-11-11 00:00:00','2006-12-09 00:00:00','2006-11-20 00:00:00',1,162.33,'Destination RVDMF','Kirchgasse 9012','Graz',NULL,'10157','Austria'),(10352,28,3,'2006-11-12 00:00:00','2006-11-26 00:00:00','2006-11-18 00:00:00',3,1.30,'Destination OTSWR','Jardim das rosas n. 9012','Lisboa',NULL,'10177','Portugal'),(10353,59,7,'2006-11-13 00:00:00','2006-12-11 00:00:00','2006-11-25 00:00:00',3,360.63,'Ship to 59-B','Geislweg 7890','Salzburg',NULL,'10265','Austria'),(10354,58,8,'2006-11-14 00:00:00','2006-12-12 00:00:00','2006-11-20 00:00:00',3,53.80,'Ship to 58-C','Calle Dr. Jorge Cash 5678','México D.F.',NULL,'10263','Mexico'),(10355,4,6,'2006-11-15 00:00:00','2006-12-13 00:00:00','2006-11-20 00:00:00',1,41.95,'Ship to 4-A','Brook Farm Stratford St. Mary 0123','Colchester','Essex','10238','UK'),(10356,86,6,'2006-11-18 00:00:00','2006-12-16 00:00:00','2006-11-27 00:00:00',2,36.71,'Ship to 86-A','Adenauerallee 8901','Stuttgart',NULL,'10347','Germany'),(10357,46,1,'2006-11-19 00:00:00','2006-12-17 00:00:00','2006-12-02 00:00:00',3,34.88,'Ship to 46-B','Carrera 1234 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto','Lara','10228','Venezuela'),(10358,41,5,'2006-11-20 00:00:00','2006-12-18 00:00:00','2006-11-27 00:00:00',1,19.64,'Ship to 41-C','0123 rue Alsace-Lorraine','Toulouse',NULL,'10218','France'),(10359,72,5,'2006-11-21 00:00:00','2006-12-19 00:00:00','2006-11-26 00:00:00',3,288.43,'Ship to 72-C','1234 Wadhurst Rd.','London',NULL,'10309','UK'),(10360,7,4,'2006-11-22 00:00:00','2006-12-20 00:00:00','2006-12-02 00:00:00',3,131.70,'Ship to 7-C','2345, place Kléber','Strasbourg',NULL,'10331','France'),(10361,63,1,'2006-11-22 00:00:00','2006-12-20 00:00:00','2006-12-03 00:00:00',2,183.17,'Ship to 63-C','Taucherstraße 3456','Cunewalde',NULL,'10281','Germany'),(10362,9,3,'2006-11-25 00:00:00','2006-12-23 00:00:00','2006-11-28 00:00:00',1,96.04,'Ship to 9-B','9012, rue des Bouchers','Marseille',NULL,'10368','France'),(10363,17,4,'2006-11-26 00:00:00','2006-12-24 00:00:00','2006-12-04 00:00:00',3,30.54,'Destination BJCXA','Walserweg 7890','Aachen',NULL,'10145','Germany'),(10364,19,1,'2006-11-26 00:00:00','2007-01-07 00:00:00','2006-12-04 00:00:00',1,71.97,'Destination QTKCU','3456 King George','London',NULL,'10151','UK'),(10365,3,3,'2006-11-27 00:00:00','2006-12-25 00:00:00','2006-12-02 00:00:00',2,22.00,'Destination FQFLS','Mataderos  3456','México D.F.',NULL,'10211','Mexico'),(10366,29,8,'2006-11-28 00:00:00','2007-01-09 00:00:00','2006-12-30 00:00:00',2,10.14,'Destination VPNNG','Rambla de Cataluña, 0123','Barcelona',NULL,'10178','Spain'),(10367,83,7,'2006-11-28 00:00:00','2006-12-26 00:00:00','2006-12-02 00:00:00',3,13.55,'Ship to 83-B','Smagsloget 1234','Århus',NULL,'10340','Denmark'),(10368,20,2,'2006-11-29 00:00:00','2006-12-27 00:00:00','2006-12-02 00:00:00',2,101.95,'Destination RVDMF','Kirchgasse 9012','Graz',NULL,'10157','Austria'),(10369,75,8,'2006-12-02 00:00:00','2006-12-30 00:00:00','2006-12-09 00:00:00',2,195.68,'Ship to 75-C','P.O. Box 7890','Lander','WY','10316','USA'),(10370,14,6,'2006-12-03 00:00:00','2006-12-31 00:00:00','2006-12-27 00:00:00',2,1.17,'Destination YUJRD','Hauptstr. 1234','Bern',NULL,'10139','Switzerland'),(10371,41,1,'2006-12-03 00:00:00','2006-12-31 00:00:00','2006-12-24 00:00:00',1,0.45,'Ship to 41-C','0123 rue Alsace-Lorraine','Toulouse',NULL,'10218','France'),(10372,62,5,'2006-12-04 00:00:00','2007-01-01 00:00:00','2006-12-09 00:00:00',2,890.78,'Ship to 62-A','Alameda dos Canàrios, 8901','Sao Paulo','SP','10276','Brazil'),(10373,37,4,'2006-12-05 00:00:00','2007-01-02 00:00:00','2006-12-11 00:00:00',3,124.12,'Destination KPVYJ','5678 Johnstown Road','Cork','Co. Cork','10203','Ireland'),(10374,91,1,'2006-12-05 00:00:00','2007-01-02 00:00:00','2006-12-09 00:00:00',3,3.94,'Ship to 91-A','ul. Filtrowa 5678','Warszawa',NULL,'10364','Poland'),(10375,36,3,'2006-12-06 00:00:00','2007-01-03 00:00:00','2006-12-09 00:00:00',2,20.12,'Destination HOHCR','City Center Plaza 3456 Main St.','Elgin','OR','10201','USA'),(10376,51,1,'2006-12-09 00:00:00','2007-01-06 00:00:00','2006-12-13 00:00:00',2,20.39,'Ship to 51-B','7890 rue St. Laurent','Montréal','Québec','10245','Canada'),(10377,72,1,'2006-12-09 00:00:00','2007-01-06 00:00:00','2006-12-13 00:00:00',3,22.21,'Ship to 72-C','1234 Wadhurst Rd.','London',NULL,'10309','UK'),(10378,24,5,'2006-12-10 00:00:00','2007-01-07 00:00:00','2006-12-19 00:00:00',3,5.44,'Destination KBSBN','Åkergatan 9012','Bräcke',NULL,'10167','Sweden'),(10379,61,2,'2006-12-11 00:00:00','2007-01-08 00:00:00','2006-12-13 00:00:00',1,45.03,'Ship to 61-B','Rua da Panificadora, 6789','Rio de Janeiro','RJ','10274','Brazil'),(10380,37,8,'2006-12-12 00:00:00','2007-01-09 00:00:00','2007-01-16 00:00:00',3,35.03,'Destination KPVYJ','5678 Johnstown Road','Cork','Co. Cork','10203','Ireland'),(10381,46,3,'2006-12-12 00:00:00','2007-01-09 00:00:00','2006-12-13 00:00:00',3,7.99,'Ship to 46-C','Carrera 2345 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto','Lara','10229','Venezuela'),(10382,20,4,'2006-12-13 00:00:00','2007-01-10 00:00:00','2006-12-16 00:00:00',1,94.77,'Destination FFXKT','Kirchgasse 0123','Graz',NULL,'10158','Austria'),(10383,4,8,'2006-12-16 00:00:00','2007-01-13 00:00:00','2006-12-18 00:00:00',3,34.24,'Ship to 4-B','Brook Farm Stratford St. Mary 1234','Colchester','Essex','10239','UK'),(10384,5,3,'2006-12-16 00:00:00','2007-01-13 00:00:00','2006-12-20 00:00:00',3,168.64,'Ship to 5-C','Berguvsvägen  1234','Luleå',NULL,'10269','Sweden'),(10385,75,1,'2006-12-17 00:00:00','2007-01-14 00:00:00','2006-12-23 00:00:00',2,30.96,'Ship to 75-B','P.O. Box 6789','Lander','WY','10315','USA'),(10386,21,9,'2006-12-18 00:00:00','2007-01-01 00:00:00','2006-12-25 00:00:00',3,13.99,'Destination RNSMS','Rua Orós, 2345','Sao Paulo','SP','10160','Brazil'),(10387,70,1,'2006-12-18 00:00:00','2007-01-15 00:00:00','2006-12-20 00:00:00',2,93.63,'Ship to 70-B','Erling Skakkes gate 5678','Stavern',NULL,'10303','Norway'),(10388,72,2,'2006-12-19 00:00:00','2007-01-16 00:00:00','2006-12-20 00:00:00',1,34.86,'Ship to 72-C','1234 Wadhurst Rd.','London',NULL,'10309','UK'),(10389,10,4,'2006-12-20 00:00:00','2007-01-17 00:00:00','2006-12-24 00:00:00',2,47.42,'Destination OLSSJ','2345 Tsawassen Blvd.','Tsawassen','BC','10130','Canada'),(10390,20,6,'2006-12-23 00:00:00','2007-01-20 00:00:00','2006-12-26 00:00:00',1,126.38,'Destination RVDMF','Kirchgasse 9012','Graz',NULL,'10157','Austria'),(10391,17,3,'2006-12-23 00:00:00','2007-01-20 00:00:00','2006-12-31 00:00:00',3,5.45,'Destination AJTHX','Walserweg 9012','Aachen',NULL,'10147','Germany'),(10392,59,2,'2006-12-24 00:00:00','2007-01-21 00:00:00','2007-01-01 00:00:00',3,122.46,'Ship to 59-A','Geislweg 6789','Salzburg',NULL,'10264','Austria'),(10393,71,1,'2006-12-25 00:00:00','2007-01-22 00:00:00','2007-01-03 00:00:00',3,126.56,'Ship to 71-B','8901 Suffolk Ln.','Boise','Id','10306','USA'),(10394,36,1,'2006-12-25 00:00:00','2007-01-22 00:00:00','2007-01-03 00:00:00',3,30.34,'Destination AWPJG','City Center Plaza 2345 Main St.','Elgin','OR','10200','USA'),(10395,35,6,'2006-12-26 00:00:00','2007-01-23 00:00:00','2007-01-03 00:00:00',1,184.41,'Destination JYDLM','Carrera1234 con Ave. Carlos Soublette #8-35','San Cristóbal','Táchira','10199','Venezuela'),(10396,25,1,'2006-12-27 00:00:00','2007-01-10 00:00:00','2007-01-06 00:00:00',3,135.35,'Destination VAPXU','Berliner Platz 0123','München',NULL,'10168','Germany'),(10397,60,5,'2006-12-27 00:00:00','2007-01-24 00:00:00','2007-01-02 00:00:00',1,60.26,'Ship to 60-A','Estrada da saúde n. 2345','Lisboa',NULL,'10270','Portugal'),(10398,71,2,'2006-12-30 00:00:00','2007-01-27 00:00:00','2007-01-09 00:00:00',3,89.16,'Ship to 71-C','9012 Suffolk Ln.','Boise','Id','10307','USA'),(10399,83,8,'2006-12-31 00:00:00','2007-01-14 00:00:00','2007-01-08 00:00:00',3,27.36,'Ship to 83-C','Smagsloget 2345','Århus',NULL,'10341','Denmark'),(10400,19,1,'2007-01-01 00:00:00','2007-01-29 00:00:00','2007-01-16 00:00:00',3,83.93,'Destination BBMRT','4567 King George','London',NULL,'10152','UK'),(10401,65,1,'2007-01-01 00:00:00','2007-01-29 00:00:00','2007-01-10 00:00:00',1,12.51,'Ship to 65-A','7890 Milton Dr.','Albuquerque','NM','10285','USA'),(10402,20,8,'2007-01-02 00:00:00','2007-02-13 00:00:00','2007-01-10 00:00:00',2,67.88,'Destination FFXKT','Kirchgasse 0123','Graz',NULL,'10158','Austria'),(10403,20,4,'2007-01-03 00:00:00','2007-01-31 00:00:00','2007-01-09 00:00:00',3,73.79,'Destination RVDMF','Kirchgasse 9012','Graz',NULL,'10157','Austria'),(10404,49,2,'2007-01-03 00:00:00','2007-01-31 00:00:00','2007-01-08 00:00:00',1,155.97,'Ship to 49-B','Via Ludovico il Moro 9012','Bergamo',NULL,'10236','Italy'),(10405,47,1,'2007-01-06 00:00:00','2007-02-03 00:00:00','2007-01-22 00:00:00',1,34.82,'Ship to 47-B','Ave. 5 de Mayo Porlamar 4567','I. de Margarita','Nueva Esparta','10231','Venezuela'),(10406,62,7,'2007-01-07 00:00:00','2007-02-18 00:00:00','2007-01-13 00:00:00',1,108.04,'Ship to 62-A','Alameda dos Canàrios, 8901','Sao Paulo','SP','10276','Brazil'),(10407,56,2,'2007-01-07 00:00:00','2007-02-04 00:00:00','2007-01-30 00:00:00',2,91.48,'Ship to 56-B','Mehrheimerstr. 1234','Köln',NULL,'10259','Germany'),(10408,23,8,'2007-01-08 00:00:00','2007-02-05 00:00:00','2007-01-14 00:00:00',1,11.26,'Destination PXQRR','5678, chaussée de Tournai','Lille',NULL,'10163','France'),(10409,54,3,'2007-01-09 00:00:00','2007-02-06 00:00:00','2007-01-14 00:00:00',1,29.83,'Ship to 54-C','Ing. Gustavo Moncada 6789 Piso 20-A','Buenos Aires',NULL,'10254','Argentina'),(10410,10,3,'2007-01-10 00:00:00','2007-02-07 00:00:00','2007-01-15 00:00:00',3,2.40,'Destination OLSSJ','2345 Tsawassen Blvd.','Tsawassen','BC','10130','Canada'),(10411,10,9,'2007-01-10 00:00:00','2007-02-07 00:00:00','2007-01-21 00:00:00',3,23.65,'Destination XJIBQ','1234 Tsawassen Blvd.','Tsawassen','BC','10129','Canada'),(10412,87,8,'2007-01-13 00:00:00','2007-02-10 00:00:00','2007-01-15 00:00:00',2,3.77,'Ship to 87-C','Torikatu 3456','Oulu',NULL,'10352','Finland'),(10413,41,3,'2007-01-14 00:00:00','2007-02-11 00:00:00','2007-01-16 00:00:00',2,95.66,'Destination DWJIO','9012 rue Alsace-Lorraine','Toulouse',NULL,'10217','France'),(10414,21,2,'2007-01-14 00:00:00','2007-02-11 00:00:00','2007-01-17 00:00:00',3,21.48,'Destination SSYXZ','Rua Orós, 3456','Sao Paulo','SP','10161','Brazil'),(10415,36,3,'2007-01-15 00:00:00','2007-02-12 00:00:00','2007-01-24 00:00:00',1,0.20,'Destination AWPJG','City Center Plaza 2345 Main St.','Elgin','OR','10200','USA'),(10416,87,8,'2007-01-16 00:00:00','2007-02-13 00:00:00','2007-01-27 00:00:00',3,22.72,'Ship to 87-A','Torikatu 1234','Oulu',NULL,'10350','Finland'),(10417,73,4,'2007-01-16 00:00:00','2007-02-13 00:00:00','2007-01-28 00:00:00',3,70.29,'Ship to 73-C','Vinbæltet 2345','Kobenhavn',NULL,'10311','Denmark'),(10418,63,4,'2007-01-17 00:00:00','2007-02-14 00:00:00','2007-01-24 00:00:00',1,17.55,'Ship to 63-B','Taucherstraße 2345','Cunewalde',NULL,'10280','Germany'),(10419,68,4,'2007-01-20 00:00:00','2007-02-17 00:00:00','2007-01-30 00:00:00',2,137.35,'Ship to 68-A','Starenweg 6789','Genève',NULL,'10294','Switzerland'),(10420,88,3,'2007-01-21 00:00:00','2007-02-18 00:00:00','2007-01-27 00:00:00',1,44.12,'Ship to 88-C','Rua do Mercado, 6789','Resende','SP','10355','Brazil'),(10421,61,8,'2007-01-21 00:00:00','2007-03-04 00:00:00','2007-01-27 00:00:00',1,99.23,'Ship to 61-C','Rua da Panificadora, 7890','Rio de Janeiro','RJ','10275','Brazil'),(10422,27,2,'2007-01-22 00:00:00','2007-02-19 00:00:00','2007-01-31 00:00:00',1,3.02,'Destination FFLQT','Via Monte Bianco 6789','Torino',NULL,'10174','Italy'),(10423,31,6,'2007-01-23 00:00:00','2007-02-06 00:00:00','2007-02-24 00:00:00',3,24.50,'Destination VNIAG','Av. Brasil, 9012','Campinas','SP','10187','Brazil'),(10424,51,7,'2007-01-23 00:00:00','2007-02-20 00:00:00','2007-01-27 00:00:00',2,370.61,'Ship to 51-C','8901 rue St. Laurent','Montréal','Québec','10246','Canada'),(10425,41,6,'2007-01-24 00:00:00','2007-02-21 00:00:00','2007-02-14 00:00:00',2,7.93,'Destination DWJIO','9012 rue Alsace-Lorraine','Toulouse',NULL,'10217','France'),(10426,29,4,'2007-01-27 00:00:00','2007-02-24 00:00:00','2007-02-06 00:00:00',1,18.69,'Destination WOFLH','Rambla de Cataluña, 1234','Barcelona',NULL,'10179','Spain'),(10427,59,4,'2007-01-27 00:00:00','2007-02-24 00:00:00','2007-03-03 00:00:00',2,31.29,'Ship to 59-C','Geislweg 8901','Salzburg',NULL,'10266','Austria'),(10428,66,7,'2007-01-28 00:00:00','2007-02-25 00:00:00','2007-02-04 00:00:00',1,11.09,'Ship to 66-C','Strada Provinciale 2345','Reggio Emilia',NULL,'10290','Italy'),(10429,37,3,'2007-01-29 00:00:00','2007-03-12 00:00:00','2007-02-07 00:00:00',2,56.63,'Destination DGKOU','6789 Johnstown Road','Cork','Co. Cork','10204','Ireland'),(10430,20,4,'2007-01-30 00:00:00','2007-02-13 00:00:00','2007-02-03 00:00:00',1,458.78,'Destination CUVPF','Kirchgasse 1234','Graz',NULL,'10159','Austria'),(10431,10,4,'2007-01-30 00:00:00','2007-02-13 00:00:00','2007-02-07 00:00:00',2,44.17,'Destination OLSSJ','2345 Tsawassen Blvd.','Tsawassen','BC','10130','Canada'),(10432,75,3,'2007-01-31 00:00:00','2007-02-14 00:00:00','2007-02-07 00:00:00',2,4.34,'Ship to 75-A','P.O. Box 5678','Lander','WY','10314','USA'),(10433,60,3,'2007-02-03 00:00:00','2007-03-03 00:00:00','2007-03-04 00:00:00',3,73.83,'Ship to 60-A','Estrada da saúde n. 2345','Lisboa',NULL,'10270','Portugal'),(10434,24,3,'2007-02-03 00:00:00','2007-03-03 00:00:00','2007-02-13 00:00:00',2,17.92,'Destination NCKKO','Åkergatan 7890','Bräcke',NULL,'10165','Sweden'),(10435,16,8,'2007-02-04 00:00:00','2007-03-18 00:00:00','2007-02-07 00:00:00',2,9.21,'Destination QKQNB','Berkeley Gardens 5678  Brewery','London',NULL,'10143','UK'),(10436,7,3,'2007-02-05 00:00:00','2007-03-05 00:00:00','2007-02-11 00:00:00',2,156.66,'Ship to 7-C','2345, place Kléber','Strasbourg',NULL,'10331','France'),(10437,87,8,'2007-02-05 00:00:00','2007-03-05 00:00:00','2007-02-12 00:00:00',1,19.97,'Ship to 87-A','Torikatu 1234','Oulu',NULL,'10350','Finland'),(10438,79,3,'2007-02-06 00:00:00','2007-03-06 00:00:00','2007-02-14 00:00:00',2,8.24,'Ship to 79-A','Luisenstr. 7890','Münster',NULL,'10326','Germany'),(10439,51,6,'2007-02-07 00:00:00','2007-03-07 00:00:00','2007-02-10 00:00:00',3,4.07,'Ship to 51-C','8901 rue St. Laurent','Montréal','Québec','10246','Canada'),(10440,71,4,'2007-02-10 00:00:00','2007-03-10 00:00:00','2007-02-28 00:00:00',2,86.53,'Ship to 71-B','8901 Suffolk Ln.','Boise','Id','10306','USA'),(10441,55,3,'2007-02-10 00:00:00','2007-03-24 00:00:00','2007-03-14 00:00:00',2,73.02,'Ship to 55-C','9012 Bering St.','Anchorage','AK','10257','USA'),(10442,20,3,'2007-02-11 00:00:00','2007-03-11 00:00:00','2007-02-18 00:00:00',2,47.94,'Destination RVDMF','Kirchgasse 9012','Graz',NULL,'10157','Austria'),(10443,66,8,'2007-02-12 00:00:00','2007-03-12 00:00:00','2007-02-14 00:00:00',1,13.95,'Ship to 66-C','Strada Provinciale 2345','Reggio Emilia',NULL,'10290','Italy'),(10444,5,3,'2007-02-12 00:00:00','2007-03-12 00:00:00','2007-02-21 00:00:00',3,3.50,'Ship to 5-B','Berguvsvägen  0123','Luleå',NULL,'10268','Sweden'),(10445,5,3,'2007-02-13 00:00:00','2007-03-13 00:00:00','2007-02-20 00:00:00',1,9.30,'Ship to 5-A','Berguvsvägen  9012','Luleå',NULL,'10267','Sweden'),(10446,79,6,'2007-02-14 00:00:00','2007-03-14 00:00:00','2007-02-19 00:00:00',1,14.68,'Ship to 79-C','Luisenstr. 9012','Münster',NULL,'10328','Germany'),(10447,67,4,'2007-02-14 00:00:00','2007-03-14 00:00:00','2007-03-07 00:00:00',2,68.66,'Ship to 67-C','Av. Copacabana, 5678','Rio de Janeiro','RJ','10293','Brazil'),(10448,64,4,'2007-02-17 00:00:00','2007-03-17 00:00:00','2007-02-24 00:00:00',2,38.82,'Ship to 64-A','Av. del Libertador 4567','Buenos Aires',NULL,'10282','Argentina'),(10449,7,3,'2007-02-18 00:00:00','2007-03-18 00:00:00','2007-02-27 00:00:00',2,53.30,'Ship to 7-C','2345, place Kléber','Strasbourg',NULL,'10331','France'),(10450,84,8,'2007-02-19 00:00:00','2007-03-19 00:00:00','2007-03-11 00:00:00',2,7.23,'Ship to 84-C','5678, rue du Commerce','Lyon',NULL,'10344','France'),(10451,63,4,'2007-02-19 00:00:00','2007-03-05 00:00:00','2007-03-12 00:00:00',3,189.09,'Ship to 63-C','Taucherstraße 3456','Cunewalde',NULL,'10281','Germany'),(10452,71,8,'2007-02-20 00:00:00','2007-03-20 00:00:00','2007-02-26 00:00:00',1,140.26,'Ship to 71-B','8901 Suffolk Ln.','Boise','Id','10306','USA'),(10453,4,1,'2007-02-21 00:00:00','2007-03-21 00:00:00','2007-02-26 00:00:00',2,25.36,'Ship to 4-C','Brook Farm Stratford St. Mary 2345','Colchester','Essex','10240','UK'),(10454,41,4,'2007-02-21 00:00:00','2007-03-21 00:00:00','2007-02-25 00:00:00',3,2.74,'Ship to 41-C','0123 rue Alsace-Lorraine','Toulouse',NULL,'10218','France'),(10455,87,8,'2007-02-24 00:00:00','2007-04-07 00:00:00','2007-03-03 00:00:00',2,180.45,'Ship to 87-B','Torikatu 2345','Oulu',NULL,'10351','Finland'),(10456,39,8,'2007-02-25 00:00:00','2007-04-08 00:00:00','2007-02-28 00:00:00',2,8.12,'Destination DKMQA','Maubelstr. 0123','Brandenburg',NULL,'10208','Germany'),(10457,39,2,'2007-02-25 00:00:00','2007-03-25 00:00:00','2007-03-03 00:00:00',1,11.57,'Destination RMBHM','Maubelstr. 1234','Brandenburg',NULL,'10209','Germany'),(10458,76,7,'2007-02-26 00:00:00','2007-03-26 00:00:00','2007-03-04 00:00:00',3,147.06,'Ship to 76-A','Boulevard Tirou, 8901','Charleroi',NULL,'10317','Belgium'),(10459,84,4,'2007-02-27 00:00:00','2007-03-27 00:00:00','2007-02-28 00:00:00',2,25.09,'Ship to 84-B','4567, rue du Commerce','Lyon',NULL,'10343','France'),(10460,24,8,'2007-02-28 00:00:00','2007-03-28 00:00:00','2007-03-03 00:00:00',1,16.27,'Destination YCMPK','Åkergatan 8901','Bräcke',NULL,'10166','Sweden'),(10461,46,1,'2007-02-28 00:00:00','2007-03-28 00:00:00','2007-03-05 00:00:00',3,148.61,'Ship to 46-A','Carrera 0123 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto','Lara','10227','Venezuela'),(10462,16,2,'2007-03-03 00:00:00','2007-03-31 00:00:00','2007-03-18 00:00:00',1,6.17,'Destination ARRMM','Berkeley Gardens 6789  Brewery','London',NULL,'10144','UK'),(10463,76,5,'2007-03-04 00:00:00','2007-04-01 00:00:00','2007-03-06 00:00:00',3,14.78,'Ship to 76-B','Boulevard Tirou, 9012','Charleroi',NULL,'10318','Belgium'),(10464,28,4,'2007-03-04 00:00:00','2007-04-01 00:00:00','2007-03-14 00:00:00',2,89.00,'Destination OTSWR','Jardim das rosas n. 9012','Lisboa',NULL,'10177','Portugal'),(10465,83,1,'2007-03-05 00:00:00','2007-04-02 00:00:00','2007-03-14 00:00:00',3,145.04,'Ship to 83-A','Smagsloget 0123','Århus',NULL,'10339','Denmark'),(10466,15,4,'2007-03-06 00:00:00','2007-04-03 00:00:00','2007-03-13 00:00:00',1,11.93,'Destination GGSQD','Av. dos Lusíadas, 2345','Sao Paulo','SP','10140','Brazil'),(10467,49,8,'2007-03-06 00:00:00','2007-04-03 00:00:00','2007-03-11 00:00:00',2,4.93,'Ship to 49-C','Via Ludovico il Moro 0123','Bergamo',NULL,'10237','Italy'),(10468,39,3,'2007-03-07 00:00:00','2007-04-04 00:00:00','2007-03-12 00:00:00',3,44.12,'Destination RMBHM','Maubelstr. 1234','Brandenburg',NULL,'10209','Germany'),(10469,89,1,'2007-03-10 00:00:00','2007-04-07 00:00:00','2007-03-14 00:00:00',1,60.18,'Ship to 89-C','9012 - 12th Ave. S.','Seattle','WA','10358','USA'),(10470,9,4,'2007-03-11 00:00:00','2007-04-08 00:00:00','2007-03-14 00:00:00',2,64.56,'Ship to 9-C','0123, rue des Bouchers','Marseille',NULL,'10369','France'),(10471,11,2,'2007-03-11 00:00:00','2007-04-08 00:00:00','2007-03-18 00:00:00',3,45.59,'Destination NZASL','Fauntleroy Circus 5678','London',NULL,'10133','UK'),(10472,72,8,'2007-03-12 00:00:00','2007-04-09 00:00:00','2007-03-19 00:00:00',1,4.20,'Ship to 72-A','0123 Wadhurst Rd.','London',NULL,'10308','UK'),(10473,38,1,'2007-03-13 00:00:00','2007-03-27 00:00:00','2007-03-21 00:00:00',3,16.37,'Destination AXVHD','Garden House Crowther Way 9012','Cowes','Isle of Wight','10207','UK'),(10474,58,5,'2007-03-13 00:00:00','2007-04-10 00:00:00','2007-03-21 00:00:00',2,83.49,'Ship to 58-C','Calle Dr. Jorge Cash 5678','México D.F.',NULL,'10263','Mexico'),(10475,76,9,'2007-03-14 00:00:00','2007-04-11 00:00:00','2007-04-04 00:00:00',1,68.52,'Ship to 76-C','Boulevard Tirou, 0123','Charleroi',NULL,'10319','Belgium'),(10476,35,8,'2007-03-17 00:00:00','2007-04-14 00:00:00','2007-03-24 00:00:00',3,4.41,'Destination SXYQX','Carrera 0123 con Ave. Carlos Soublette #8-35','San Cristóbal','Táchira','10198','Venezuela'),(10477,60,5,'2007-03-17 00:00:00','2007-04-14 00:00:00','2007-03-25 00:00:00',2,13.02,'Ship to 60-A','Estrada da saúde n. 2345','Lisboa',NULL,'10270','Portugal'),(10478,84,2,'2007-03-18 00:00:00','2007-04-01 00:00:00','2007-03-26 00:00:00',3,4.81,'Ship to 84-C','5678, rue du Commerce','Lyon',NULL,'10344','France'),(10479,65,3,'2007-03-19 00:00:00','2007-04-16 00:00:00','2007-03-21 00:00:00',3,708.95,'Ship to 65-C','9012 Milton Dr.','Albuquerque','NM','10287','USA'),(10480,23,6,'2007-03-20 00:00:00','2007-04-17 00:00:00','2007-03-24 00:00:00',2,1.35,'Destination AGPCO','6789, chaussée de Tournai','Lille',NULL,'10164','France'),(10481,67,8,'2007-03-20 00:00:00','2007-04-17 00:00:00','2007-03-25 00:00:00',2,64.33,'Ship to 67-A','Av. Copacabana, 3456','Rio de Janeiro','RJ','10291','Brazil'),(10482,43,1,'2007-03-21 00:00:00','2007-04-18 00:00:00','2007-04-10 00:00:00',3,7.48,'Ship to 43-B','3456 Orchestra Terrace','Walla Walla','WA','10221','USA'),(10483,89,7,'2007-03-24 00:00:00','2007-04-21 00:00:00','2007-04-25 00:00:00',2,15.28,'Ship to 89-A','7890 - 12th Ave. S.','Seattle','WA','10356','USA'),(10484,11,3,'2007-03-24 00:00:00','2007-04-21 00:00:00','2007-04-01 00:00:00',3,6.88,'Destination DLEUN','Fauntleroy Circus 4567','London',NULL,'10132','UK'),(10485,47,4,'2007-03-25 00:00:00','2007-04-08 00:00:00','2007-03-31 00:00:00',2,64.45,'Ship to 47-B','Ave. 5 de Mayo Porlamar 4567','I. de Margarita','Nueva Esparta','10231','Venezuela'),(10486,35,1,'2007-03-26 00:00:00','2007-04-23 00:00:00','2007-04-02 00:00:00',2,30.53,'Destination UOUWK','Carrera 9012 con Ave. Carlos Soublette #8-35','San Cristóbal','Táchira','10197','Venezuela'),(10487,62,2,'2007-03-26 00:00:00','2007-04-23 00:00:00','2007-03-28 00:00:00',2,71.07,'Ship to 62-B','Alameda dos Canàrios, 9012','Sao Paulo','SP','10277','Brazil'),(10488,25,8,'2007-03-27 00:00:00','2007-04-24 00:00:00','2007-04-02 00:00:00',2,4.93,'Destination VAPXU','Berliner Platz 0123','München',NULL,'10168','Germany'),(10489,59,6,'2007-03-28 00:00:00','2007-04-25 00:00:00','2007-04-09 00:00:00',2,5.29,'Ship to 59-C','Geislweg 8901','Salzburg',NULL,'10266','Austria'),(10490,35,7,'2007-03-31 00:00:00','2007-04-28 00:00:00','2007-04-03 00:00:00',2,210.19,'Destination JYDLM','Carrera1234 con Ave. Carlos Soublette #8-35','San Cristóbal','Táchira','10199','Venezuela'),(10491,28,8,'2007-03-31 00:00:00','2007-04-28 00:00:00','2007-04-08 00:00:00',3,16.96,'Destination OTSWR','Jardim das rosas n. 9012','Lisboa',NULL,'10177','Portugal'),(10492,10,3,'2007-04-01 00:00:00','2007-04-29 00:00:00','2007-04-11 00:00:00',1,62.89,'Destination XJIBQ','1234 Tsawassen Blvd.','Tsawassen','BC','10129','Canada'),(10493,41,4,'2007-04-02 00:00:00','2007-04-30 00:00:00','2007-04-10 00:00:00',3,10.64,'Destination OLJND','8901 rue Alsace-Lorraine','Toulouse',NULL,'10216','France'),(10494,15,4,'2007-04-02 00:00:00','2007-04-30 00:00:00','2007-04-09 00:00:00',2,65.99,'Destination EVHYA','Av. dos Lusíadas, 3456','Sao Paulo','SP','10141','Brazil'),(10495,42,3,'2007-04-03 00:00:00','2007-05-01 00:00:00','2007-04-11 00:00:00',3,4.65,'Ship to 42-C','2345 Elm St.','Vancouver','BC','10220','Canada'),(10496,81,7,'2007-04-04 00:00:00','2007-05-02 00:00:00','2007-04-07 00:00:00',2,46.77,'Ship to 81-C','Av. Inês de Castro, 7890','Sao Paulo','SP','10336','Brazil'),(10497,44,7,'2007-04-04 00:00:00','2007-05-02 00:00:00','2007-04-07 00:00:00',1,36.21,'Ship to 44-A','Magazinweg 4567','Frankfurt a.M.',NULL,'10222','Germany'),(10498,35,8,'2007-04-07 00:00:00','2007-05-05 00:00:00','2007-04-11 00:00:00',2,29.75,'Destination SXYQX','Carrera 0123 con Ave. Carlos Soublette #8-35','San Cristóbal','Táchira','10198','Venezuela'),(10499,46,4,'2007-04-08 00:00:00','2007-05-06 00:00:00','2007-04-16 00:00:00',2,102.02,'Ship to 46-C','Carrera 2345 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto','Lara','10229','Venezuela'),(10500,41,6,'2007-04-09 00:00:00','2007-05-07 00:00:00','2007-04-17 00:00:00',1,42.68,'Destination OLJND','8901 rue Alsace-Lorraine','Toulouse',NULL,'10216','France'),(10501,6,9,'2007-04-09 00:00:00','2007-05-07 00:00:00','2007-04-16 00:00:00',3,8.85,'Ship to 6-C','Forsterstr. 4567','Mannheim',NULL,'10302','Germany'),(10502,58,2,'2007-04-10 00:00:00','2007-05-08 00:00:00','2007-04-29 00:00:00',1,69.32,'Ship to 58-B','Calle Dr. Jorge Cash 4567','México D.F.',NULL,'10262','Mexico'),(10503,37,6,'2007-04-11 00:00:00','2007-05-09 00:00:00','2007-04-16 00:00:00',2,16.74,'Destination ATSOA','4567 Johnstown Road','Cork','Co. Cork','10202','Ireland'),(10504,89,4,'2007-04-11 00:00:00','2007-05-09 00:00:00','2007-04-18 00:00:00',3,59.13,'Ship to 89-B','8901 - 12th Ave. S.','Seattle','WA','10357','USA'),(10505,51,3,'2007-04-14 00:00:00','2007-05-12 00:00:00','2007-04-21 00:00:00',3,7.13,'Ship to 51-B','7890 rue St. Laurent','Montréal','Québec','10245','Canada'),(10506,39,9,'2007-04-15 00:00:00','2007-05-13 00:00:00','2007-05-02 00:00:00',2,21.19,'Destination DKMQA','Maubelstr. 0123','Brandenburg',NULL,'10208','Germany'),(10507,3,7,'2007-04-15 00:00:00','2007-05-13 00:00:00','2007-04-22 00:00:00',1,47.45,'Destination FQFLS','Mataderos  3456','México D.F.',NULL,'10211','Mexico'),(10508,56,1,'2007-04-16 00:00:00','2007-05-14 00:00:00','2007-05-13 00:00:00',2,4.99,'Ship to 56-C','Mehrheimerstr. 2345','Köln',NULL,'10260','Germany'),(10509,6,4,'2007-04-17 00:00:00','2007-05-15 00:00:00','2007-04-29 00:00:00',1,0.15,'Ship to 6-A','Forsterstr. 2345','Mannheim',NULL,'10300','Germany'),(10510,71,6,'2007-04-18 00:00:00','2007-05-16 00:00:00','2007-04-28 00:00:00',3,367.63,'Ship to 71-A','7890 Suffolk Ln.','Boise','Id','10305','USA'),(10511,9,4,'2007-04-18 00:00:00','2007-05-16 00:00:00','2007-04-21 00:00:00',3,350.64,'Ship to 9-B','9012, rue des Bouchers','Marseille',NULL,'10368','France'),(10512,21,7,'2007-04-21 00:00:00','2007-05-19 00:00:00','2007-04-24 00:00:00',2,3.53,'Destination RNSMS','Rua Orós, 2345','Sao Paulo','SP','10160','Brazil'),(10513,86,7,'2007-04-22 00:00:00','2007-06-03 00:00:00','2007-04-28 00:00:00',1,105.65,'Ship to 86-A','Adenauerallee 8901','Stuttgart',NULL,'10347','Germany'),(10514,20,3,'2007-04-22 00:00:00','2007-05-20 00:00:00','2007-05-16 00:00:00',2,789.95,'Destination CUVPF','Kirchgasse 1234','Graz',NULL,'10159','Austria'),(10515,63,2,'2007-04-23 00:00:00','2007-05-07 00:00:00','2007-05-23 00:00:00',1,204.47,'Ship to 63-B','Taucherstraße 2345','Cunewalde',NULL,'10280','Germany'),(10516,37,2,'2007-04-24 00:00:00','2007-05-22 00:00:00','2007-05-01 00:00:00',3,62.78,'Destination DGKOU','6789 Johnstown Road','Cork','Co. Cork','10204','Ireland'),(10517,53,3,'2007-04-24 00:00:00','2007-05-22 00:00:00','2007-04-29 00:00:00',3,32.07,'Ship to 53-A','South House 2345 Queensbridge','London',NULL,'10250','UK'),(10518,80,4,'2007-04-25 00:00:00','2007-05-09 00:00:00','2007-05-05 00:00:00',2,218.15,'Ship to 80-B','Avda. Azteca 4567','México D.F.',NULL,'10333','Mexico'),(10519,14,6,'2007-04-28 00:00:00','2007-05-26 00:00:00','2007-05-01 00:00:00',3,91.76,'Destination NRTZZ','Hauptstr. 0123','Bern',NULL,'10138','Switzerland'),(10520,70,7,'2007-04-29 00:00:00','2007-05-27 00:00:00','2007-05-01 00:00:00',1,13.37,'Ship to 70-B','Erling Skakkes gate 5678','Stavern',NULL,'10303','Norway'),(10521,12,8,'2007-04-29 00:00:00','2007-05-27 00:00:00','2007-05-02 00:00:00',2,17.22,'Destination QTHBC','Cerrito 6789','Buenos Aires',NULL,'10134','Argentina'),(10522,44,4,'2007-04-30 00:00:00','2007-05-28 00:00:00','2007-05-06 00:00:00',1,45.33,'Ship to 44-A','Magazinweg 4567','Frankfurt a.M.',NULL,'10222','Germany'),(10523,72,7,'2007-05-01 00:00:00','2007-05-29 00:00:00','2007-05-30 00:00:00',2,77.63,'Ship to 72-C','1234 Wadhurst Rd.','London',NULL,'10309','UK'),(10524,5,1,'2007-05-01 00:00:00','2007-05-29 00:00:00','2007-05-07 00:00:00',2,244.79,'Ship to 5-A','Berguvsvägen  9012','Luleå',NULL,'10267','Sweden'),(10525,9,1,'2007-05-02 00:00:00','2007-05-30 00:00:00','2007-05-23 00:00:00',2,11.06,'Ship to 9-B','9012, rue des Bouchers','Marseille',NULL,'10368','France'),(10526,87,4,'2007-05-05 00:00:00','2007-06-02 00:00:00','2007-05-15 00:00:00',2,58.59,'Ship to 87-C','Torikatu 3456','Oulu',NULL,'10352','Finland'),(10527,63,7,'2007-05-05 00:00:00','2007-06-02 00:00:00','2007-05-07 00:00:00',1,41.90,'Ship to 63-B','Taucherstraße 2345','Cunewalde',NULL,'10280','Germany'),(10528,32,6,'2007-05-06 00:00:00','2007-05-20 00:00:00','2007-05-09 00:00:00',2,3.35,'Destination LLUXZ','1234 Baker Blvd.','Eugene','OR','10189','USA'),(10529,50,5,'2007-05-07 00:00:00','2007-06-04 00:00:00','2007-05-09 00:00:00',2,66.69,'Ship to 50-B','Rue Joseph-Bens 4567','Bruxelles',NULL,'10242','Belgium'),(10530,59,3,'2007-05-08 00:00:00','2007-06-05 00:00:00','2007-05-12 00:00:00',2,339.22,'Ship to 59-C','Geislweg 8901','Salzburg',NULL,'10266','Austria'),(10531,54,7,'2007-05-08 00:00:00','2007-06-05 00:00:00','2007-05-19 00:00:00',1,8.12,'Ship to 54-A','Ing. Gustavo Moncada 4567 Piso 20-A','Buenos Aires',NULL,'10252','Argentina'),(10532,19,7,'2007-05-09 00:00:00','2007-06-06 00:00:00','2007-05-12 00:00:00',3,74.46,'Destination QTKCU','3456 King George','London',NULL,'10151','UK'),(10533,24,8,'2007-05-12 00:00:00','2007-06-09 00:00:00','2007-05-22 00:00:00',1,188.04,'Destination KBSBN','Åkergatan 9012','Bräcke',NULL,'10167','Sweden'),(10534,44,8,'2007-05-12 00:00:00','2007-06-09 00:00:00','2007-05-14 00:00:00',2,27.94,'Ship to 44-A','Magazinweg 4567','Frankfurt a.M.',NULL,'10222','Germany'),(10535,3,4,'2007-05-13 00:00:00','2007-06-10 00:00:00','2007-05-21 00:00:00',1,15.64,'Destination FQFLS','Mataderos  3456','México D.F.',NULL,'10211','Mexico'),(10536,44,3,'2007-05-14 00:00:00','2007-06-11 00:00:00','2007-06-06 00:00:00',2,58.88,'Ship to 44-B','Magazinweg 5678','Frankfurt a.M.',NULL,'10223','Germany'),(10537,68,1,'2007-05-14 00:00:00','2007-05-28 00:00:00','2007-05-19 00:00:00',1,78.85,'Ship to 68-B','Starenweg 7890','Genève',NULL,'10295','Switzerland'),(10538,11,9,'2007-05-15 00:00:00','2007-06-12 00:00:00','2007-05-16 00:00:00',3,4.87,'Destination DLEUN','Fauntleroy Circus 4567','London',NULL,'10132','UK'),(10539,11,6,'2007-05-16 00:00:00','2007-06-13 00:00:00','2007-05-23 00:00:00',3,12.36,'Destination DLEUN','Fauntleroy Circus 4567','London',NULL,'10132','UK'),(10540,63,3,'2007-05-19 00:00:00','2007-06-16 00:00:00','2007-06-13 00:00:00',3,1007.64,'Ship to 63-C','Taucherstraße 3456','Cunewalde',NULL,'10281','Germany'),(10541,34,2,'2007-05-19 00:00:00','2007-06-16 00:00:00','2007-05-29 00:00:00',1,68.65,'Destination SCQXA','Rua do Paço, 7890','Rio de Janeiro','RJ','10195','Brazil'),(10542,39,1,'2007-05-20 00:00:00','2007-06-17 00:00:00','2007-05-26 00:00:00',3,10.95,'Destination DKMQA','Maubelstr. 0123','Brandenburg',NULL,'10208','Germany'),(10543,46,8,'2007-05-21 00:00:00','2007-06-18 00:00:00','2007-05-23 00:00:00',2,48.17,'Ship to 46-B','Carrera 1234 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto','Lara','10228','Venezuela'),(10544,48,4,'2007-05-21 00:00:00','2007-06-18 00:00:00','2007-05-30 00:00:00',1,24.91,'Ship to 48-C','7890 Chiaroscuro Rd.','Portland','OR','10234','USA'),(10545,43,8,'2007-05-22 00:00:00','2007-06-19 00:00:00','2007-06-26 00:00:00',2,11.92,'Ship to 43-B','3456 Orchestra Terrace','Walla Walla','WA','10221','USA'),(10546,84,1,'2007-05-23 00:00:00','2007-06-20 00:00:00','2007-05-27 00:00:00',3,194.72,'Ship to 84-C','5678, rue du Commerce','Lyon',NULL,'10344','France'),(10547,72,3,'2007-05-23 00:00:00','2007-06-20 00:00:00','2007-06-02 00:00:00',2,178.43,'Ship to 72-C','1234 Wadhurst Rd.','London',NULL,'10309','UK'),(10548,79,3,'2007-05-26 00:00:00','2007-06-23 00:00:00','2007-06-02 00:00:00',2,1.43,'Ship to 79-A','Luisenstr. 7890','Münster',NULL,'10326','Germany'),(10549,63,5,'2007-05-27 00:00:00','2007-06-10 00:00:00','2007-05-30 00:00:00',1,171.24,'Ship to 63-C','Taucherstraße 3456','Cunewalde',NULL,'10281','Germany'),(10550,30,7,'2007-05-28 00:00:00','2007-06-25 00:00:00','2007-06-06 00:00:00',3,4.32,'Destination GGQIR','C/ Romero, 6789','Sevilla',NULL,'10184','Spain'),(10551,28,4,'2007-05-28 00:00:00','2007-07-09 00:00:00','2007-06-06 00:00:00',3,72.95,'Destination OTSWR','Jardim das rosas n. 9012','Lisboa',NULL,'10177','Portugal'),(10552,35,2,'2007-05-29 00:00:00','2007-06-26 00:00:00','2007-06-05 00:00:00',1,83.22,'Destination UOUWK','Carrera 9012 con Ave. Carlos Soublette #8-35','San Cristóbal','Táchira','10197','Venezuela'),(10553,87,2,'2007-05-30 00:00:00','2007-06-27 00:00:00','2007-06-03 00:00:00',2,149.49,'Ship to 87-B','Torikatu 2345','Oulu',NULL,'10351','Finland'),(10554,56,4,'2007-05-30 00:00:00','2007-06-27 00:00:00','2007-06-05 00:00:00',3,120.97,'Ship to 56-C','Mehrheimerstr. 2345','Köln',NULL,'10260','Germany'),(10555,71,6,'2007-06-02 00:00:00','2007-06-30 00:00:00','2007-06-04 00:00:00',3,252.49,'Ship to 71-B','8901 Suffolk Ln.','Boise','Id','10306','USA'),(10556,73,2,'2007-06-03 00:00:00','2007-07-15 00:00:00','2007-06-13 00:00:00',1,9.80,'Ship to 73-A','Vinbæltet 1234','Kobenhavn',NULL,'10310','Denmark'),(10557,44,9,'2007-06-03 00:00:00','2007-06-17 00:00:00','2007-06-06 00:00:00',2,96.72,'Ship to 44-C','Magazinweg 6789','Frankfurt a.M.',NULL,'10224','Germany'),(10558,4,1,'2007-06-04 00:00:00','2007-07-02 00:00:00','2007-06-10 00:00:00',2,72.97,'Ship to 4-B','Brook Farm Stratford St. Mary 1234','Colchester','Essex','10239','UK'),(10559,7,6,'2007-06-05 00:00:00','2007-07-03 00:00:00','2007-06-13 00:00:00',1,8.05,'Ship to 7-B','1234, place Kléber','Strasbourg',NULL,'10330','France'),(10560,25,8,'2007-06-06 00:00:00','2007-07-04 00:00:00','2007-06-09 00:00:00',1,36.65,'Destination QOCBL','Berliner Platz 1234','München',NULL,'10169','Germany'),(10561,24,2,'2007-06-06 00:00:00','2007-07-04 00:00:00','2007-06-09 00:00:00',2,242.21,'Destination YCMPK','Åkergatan 8901','Bräcke',NULL,'10166','Sweden'),(10562,66,1,'2007-06-09 00:00:00','2007-07-07 00:00:00','2007-06-12 00:00:00',1,22.95,'Ship to 66-B','Strada Provinciale 1234','Reggio Emilia',NULL,'10289','Italy'),(10563,67,2,'2007-06-10 00:00:00','2007-07-22 00:00:00','2007-06-24 00:00:00',2,60.43,'Ship to 67-B','Av. Copacabana, 4567','Rio de Janeiro','RJ','10292','Brazil'),(10564,65,4,'2007-06-10 00:00:00','2007-07-08 00:00:00','2007-06-16 00:00:00',3,13.75,'Ship to 65-B','8901 Milton Dr.','Albuquerque','NM','10286','USA'),(10565,51,8,'2007-06-11 00:00:00','2007-07-09 00:00:00','2007-06-18 00:00:00',2,7.15,'Ship to 51-C','8901 rue St. Laurent','Montréal','Québec','10246','Canada'),(10566,7,9,'2007-06-12 00:00:00','2007-07-10 00:00:00','2007-06-18 00:00:00',1,88.40,'Ship to 7-C','2345, place Kléber','Strasbourg',NULL,'10331','France'),(10567,37,1,'2007-06-12 00:00:00','2007-07-10 00:00:00','2007-06-17 00:00:00',1,33.97,'Destination DGKOU','6789 Johnstown Road','Cork','Co. Cork','10204','Ireland'),(10568,29,3,'2007-06-13 00:00:00','2007-07-11 00:00:00','2007-07-09 00:00:00',3,6.54,'Destination VPNNG','Rambla de Cataluña, 0123','Barcelona',NULL,'10178','Spain'),(10569,65,5,'2007-06-16 00:00:00','2007-07-14 00:00:00','2007-07-11 00:00:00',1,58.98,'Ship to 65-B','8901 Milton Dr.','Albuquerque','NM','10286','USA'),(10570,51,3,'2007-06-17 00:00:00','2007-07-15 00:00:00','2007-06-19 00:00:00',3,188.99,'Ship to 51-C','8901 rue St. Laurent','Montréal','Québec','10246','Canada'),(10571,20,8,'2007-06-17 00:00:00','2007-07-29 00:00:00','2007-07-04 00:00:00',3,26.06,'Destination RVDMF','Kirchgasse 9012','Graz',NULL,'10157','Austria'),(10572,5,3,'2007-06-18 00:00:00','2007-07-16 00:00:00','2007-06-25 00:00:00',2,116.43,'Ship to 5-B','Berguvsvägen  0123','Luleå',NULL,'10268','Sweden'),(10573,3,7,'2007-06-19 00:00:00','2007-07-17 00:00:00','2007-06-20 00:00:00',3,84.84,'Destination LANNN','Mataderos  4567','México D.F.',NULL,'10212','Mexico'),(10574,82,4,'2007-06-19 00:00:00','2007-07-17 00:00:00','2007-06-30 00:00:00',2,37.60,'Ship to 82-A','8901 DaVinci Blvd.','Kirkland','WA','10337','USA'),(10575,52,5,'2007-06-20 00:00:00','2007-07-04 00:00:00','2007-06-30 00:00:00',1,127.34,'Ship to 52-C','Heerstr. 1234','Leipzig',NULL,'10249','Germany'),(10576,80,3,'2007-06-23 00:00:00','2007-07-07 00:00:00','2007-06-30 00:00:00',3,18.56,'Ship to 80-C','Avda. Azteca 5678','México D.F.',NULL,'10334','Mexico'),(10577,82,9,'2007-06-23 00:00:00','2007-08-04 00:00:00','2007-06-30 00:00:00',2,25.41,'Ship to 82-B','9012 DaVinci Blvd.','Kirkland','WA','10338','USA'),(10578,11,4,'2007-06-24 00:00:00','2007-07-22 00:00:00','2007-07-25 00:00:00',3,29.60,'Destination NZASL','Fauntleroy Circus 5678','London',NULL,'10133','UK'),(10579,45,1,'2007-06-25 00:00:00','2007-07-23 00:00:00','2007-07-04 00:00:00',2,13.73,'Ship to 45-C','9012 Polk St. Suite 5','San Francisco','CA','10226','USA'),(10580,56,4,'2007-06-26 00:00:00','2007-07-24 00:00:00','2007-07-01 00:00:00',3,75.89,'Ship to 56-C','Mehrheimerstr. 2345','Köln',NULL,'10260','Germany'),(10581,21,3,'2007-06-26 00:00:00','2007-07-24 00:00:00','2007-07-02 00:00:00',1,3.01,'Destination SSYXZ','Rua Orós, 3456','Sao Paulo','SP','10161','Brazil'),(10582,6,3,'2007-06-27 00:00:00','2007-07-25 00:00:00','2007-07-14 00:00:00',2,27.71,'Ship to 6-A','Forsterstr. 2345','Mannheim',NULL,'10300','Germany'),(10583,87,2,'2007-06-30 00:00:00','2007-07-28 00:00:00','2007-07-04 00:00:00',2,7.28,'Ship to 87-C','Torikatu 3456','Oulu',NULL,'10352','Finland'),(10584,7,4,'2007-06-30 00:00:00','2007-07-28 00:00:00','2007-07-04 00:00:00',1,59.14,'Ship to 7-B','1234, place Kléber','Strasbourg',NULL,'10330','France'),(10585,88,7,'2007-07-01 00:00:00','2007-07-29 00:00:00','2007-07-10 00:00:00',1,13.41,'Ship to 88-A','Rua do Mercado, 4567','Resende','SP','10353','Brazil'),(10586,66,9,'2007-07-02 00:00:00','2007-07-30 00:00:00','2007-07-09 00:00:00',1,0.48,'Ship to 66-B','Strada Provinciale 1234','Reggio Emilia',NULL,'10289','Italy'),(10587,61,1,'2007-07-02 00:00:00','2007-07-30 00:00:00','2007-07-09 00:00:00',1,62.52,'Ship to 61-C','Rua da Panificadora, 7890','Rio de Janeiro','RJ','10275','Brazil'),(10588,63,2,'2007-07-03 00:00:00','2007-07-31 00:00:00','2007-07-10 00:00:00',3,194.67,'Ship to 63-A','Taucherstraße 1234','Cunewalde',NULL,'10279','Germany'),(10589,32,8,'2007-07-04 00:00:00','2007-08-01 00:00:00','2007-07-14 00:00:00',2,4.42,'Destination AVQUS','2345 Baker Blvd.','Eugene','OR','10190','USA'),(10590,51,4,'2007-07-07 00:00:00','2007-08-04 00:00:00','2007-07-14 00:00:00',3,44.77,'Ship to 51-B','7890 rue St. Laurent','Montréal','Québec','10245','Canada'),(10591,83,1,'2007-07-07 00:00:00','2007-07-21 00:00:00','2007-07-16 00:00:00',1,55.92,'Ship to 83-A','Smagsloget 0123','Århus',NULL,'10339','Denmark'),(10592,44,3,'2007-07-08 00:00:00','2007-08-05 00:00:00','2007-07-16 00:00:00',1,32.10,'Ship to 44-B','Magazinweg 5678','Frankfurt a.M.',NULL,'10223','Germany'),(10593,44,7,'2007-07-09 00:00:00','2007-08-06 00:00:00','2007-08-13 00:00:00',2,174.20,'Ship to 44-C','Magazinweg 6789','Frankfurt a.M.',NULL,'10224','Germany'),(10594,55,3,'2007-07-09 00:00:00','2007-08-06 00:00:00','2007-07-16 00:00:00',2,5.24,'Ship to 55-B','8901 Bering St.','Anchorage','AK','10256','USA'),(10595,20,2,'2007-07-10 00:00:00','2007-08-07 00:00:00','2007-07-14 00:00:00',1,96.78,'Destination CUVPF','Kirchgasse 1234','Graz',NULL,'10159','Austria'),(10596,89,8,'2007-07-11 00:00:00','2007-08-08 00:00:00','2007-08-12 00:00:00',1,16.34,'Ship to 89-C','9012 - 12th Ave. S.','Seattle','WA','10358','USA'),(10597,59,7,'2007-07-11 00:00:00','2007-08-08 00:00:00','2007-07-18 00:00:00',3,35.12,'Ship to 59-B','Geislweg 7890','Salzburg',NULL,'10265','Austria'),(10598,65,1,'2007-07-14 00:00:00','2007-08-11 00:00:00','2007-07-18 00:00:00',3,44.42,'Ship to 65-C','9012 Milton Dr.','Albuquerque','NM','10287','USA'),(10599,11,6,'2007-07-15 00:00:00','2007-08-26 00:00:00','2007-07-21 00:00:00',3,29.98,'Destination DLEUN','Fauntleroy Circus 4567','London',NULL,'10132','UK'),(10600,36,4,'2007-07-16 00:00:00','2007-08-13 00:00:00','2007-07-21 00:00:00',1,45.13,'Destination HOHCR','City Center Plaza 3456 Main St.','Elgin','OR','10201','USA'),(10601,35,7,'2007-07-16 00:00:00','2007-08-27 00:00:00','2007-07-22 00:00:00',1,58.30,'Destination UOUWK','Carrera 9012 con Ave. Carlos Soublette #8-35','San Cristóbal','Táchira','10197','Venezuela'),(10602,83,8,'2007-07-17 00:00:00','2007-08-14 00:00:00','2007-07-22 00:00:00',2,2.92,'Ship to 83-A','Smagsloget 0123','Århus',NULL,'10339','Denmark'),(10603,71,8,'2007-07-18 00:00:00','2007-08-15 00:00:00','2007-08-08 00:00:00',2,48.77,'Ship to 71-C','9012 Suffolk Ln.','Boise','Id','10307','USA'),(10604,28,1,'2007-07-18 00:00:00','2007-08-15 00:00:00','2007-07-29 00:00:00',1,7.46,'Destination CIRQO','Jardim das rosas n. 8901','Lisboa',NULL,'10176','Portugal'),(10605,51,1,'2007-07-21 00:00:00','2007-08-18 00:00:00','2007-07-29 00:00:00',2,379.13,'Ship to 51-B','7890 rue St. Laurent','Montréal','Québec','10245','Canada'),(10606,81,4,'2007-07-22 00:00:00','2007-08-19 00:00:00','2007-07-31 00:00:00',3,79.40,'Ship to 81-C','Av. Inês de Castro, 7890','Sao Paulo','SP','10336','Brazil'),(10607,71,5,'2007-07-22 00:00:00','2007-08-19 00:00:00','2007-07-25 00:00:00',1,200.24,'Ship to 71-C','9012 Suffolk Ln.','Boise','Id','10307','USA'),(10608,79,4,'2007-07-23 00:00:00','2007-08-20 00:00:00','2007-08-01 00:00:00',2,27.79,'Ship to 79-C','Luisenstr. 9012','Münster',NULL,'10328','Germany'),(10609,18,7,'2007-07-24 00:00:00','2007-08-21 00:00:00','2007-07-30 00:00:00',2,1.85,'Destination SNPXM','0123, rue des Cinquante Otages','Nantes',NULL,'10148','France'),(10610,41,8,'2007-07-25 00:00:00','2007-08-22 00:00:00','2007-08-06 00:00:00',1,26.78,'Ship to 41-C','0123 rue Alsace-Lorraine','Toulouse',NULL,'10218','France'),(10611,91,6,'2007-07-25 00:00:00','2007-08-22 00:00:00','2007-08-01 00:00:00',2,80.65,'Ship to 91-B','ul. Filtrowa 6789','Warszawa',NULL,'10365','Poland'),(10612,71,1,'2007-07-28 00:00:00','2007-08-25 00:00:00','2007-08-01 00:00:00',2,544.08,'Ship to 71-A','7890 Suffolk Ln.','Boise','Id','10305','USA'),(10613,35,4,'2007-07-29 00:00:00','2007-08-26 00:00:00','2007-08-01 00:00:00',2,8.11,'Destination JYDLM','Carrera1234 con Ave. Carlos Soublette #8-35','San Cristóbal','Táchira','10199','Venezuela'),(10614,6,8,'2007-07-29 00:00:00','2007-08-26 00:00:00','2007-08-01 00:00:00',3,1.93,'Ship to 6-A','Forsterstr. 2345','Mannheim',NULL,'10300','Germany'),(10615,90,2,'2007-07-30 00:00:00','2007-08-27 00:00:00','2007-08-06 00:00:00',3,0.75,'Ship to 90-B','Keskuskatu 3456','Helsinki',NULL,'10362','Finland'),(10616,32,1,'2007-07-31 00:00:00','2007-08-28 00:00:00','2007-08-05 00:00:00',2,116.53,'Destination LLUXZ','1234 Baker Blvd.','Eugene','OR','10189','USA'),(10617,32,4,'2007-07-31 00:00:00','2007-08-28 00:00:00','2007-08-04 00:00:00',2,18.53,'Destination AVQUS','2345 Baker Blvd.','Eugene','OR','10190','USA'),(10618,51,1,'2007-08-01 00:00:00','2007-09-12 00:00:00','2007-08-08 00:00:00',1,154.68,'Ship to 51-C','8901 rue St. Laurent','Montréal','Québec','10246','Canada'),(10619,51,3,'2007-08-04 00:00:00','2007-09-01 00:00:00','2007-08-07 00:00:00',3,91.05,'Ship to 51-B','7890 rue St. Laurent','Montréal','Québec','10245','Canada'),(10620,42,2,'2007-08-05 00:00:00','2007-09-02 00:00:00','2007-08-14 00:00:00',3,0.94,'Ship to 42-A','1234 Elm St.','Vancouver','BC','10219','Canada'),(10621,38,4,'2007-08-05 00:00:00','2007-09-02 00:00:00','2007-08-11 00:00:00',2,23.73,'Destination LMVGS','Garden House Crowther Way 8901','Cowes','Isle of Wight','10206','UK'),(10622,67,4,'2007-08-06 00:00:00','2007-09-03 00:00:00','2007-08-11 00:00:00',3,50.97,'Ship to 67-A','Av. Copacabana, 3456','Rio de Janeiro','RJ','10291','Brazil'),(10623,25,8,'2007-08-07 00:00:00','2007-09-04 00:00:00','2007-08-12 00:00:00',2,97.18,'Destination VAPXU','Berliner Platz 0123','München',NULL,'10168','Germany'),(10624,78,4,'2007-08-07 00:00:00','2007-09-04 00:00:00','2007-08-19 00:00:00',2,94.80,'Ship to 78-C','6789 Grizzly Peak Rd.','Butte','MT','10325','USA'),(10625,2,3,'2007-08-08 00:00:00','2007-09-05 00:00:00','2007-08-14 00:00:00',1,43.90,'Destination QOTQA','Avda. de la Constitución 3456','México D.F.',NULL,'10181','Mexico'),(10626,5,1,'2007-08-11 00:00:00','2007-09-08 00:00:00','2007-08-20 00:00:00',2,138.69,'Ship to 5-A','Berguvsvägen  9012','Luleå',NULL,'10267','Sweden'),(10627,71,8,'2007-08-11 00:00:00','2007-09-22 00:00:00','2007-08-21 00:00:00',3,107.46,'Ship to 71-B','8901 Suffolk Ln.','Boise','Id','10306','USA'),(10628,7,4,'2007-08-12 00:00:00','2007-09-09 00:00:00','2007-08-20 00:00:00',3,30.36,'Ship to 7-B','1234, place Kléber','Strasbourg',NULL,'10330','France'),(10629,30,4,'2007-08-12 00:00:00','2007-09-09 00:00:00','2007-08-20 00:00:00',3,85.46,'Destination IIYDD','C/ Romero, 5678','Sevilla',NULL,'10183','Spain'),(10630,39,1,'2007-08-13 00:00:00','2007-09-10 00:00:00','2007-08-19 00:00:00',2,32.35,'Destination RMBHM','Maubelstr. 1234','Brandenburg',NULL,'10209','Germany'),(10631,41,8,'2007-08-14 00:00:00','2007-09-11 00:00:00','2007-08-15 00:00:00',1,0.87,'Destination OLJND','8901 rue Alsace-Lorraine','Toulouse',NULL,'10216','France'),(10632,86,8,'2007-08-14 00:00:00','2007-09-11 00:00:00','2007-08-19 00:00:00',1,41.38,'Ship to 86-C','Adenauerallee 0123','Stuttgart',NULL,'10349','Germany'),(10633,20,7,'2007-08-15 00:00:00','2007-09-12 00:00:00','2007-08-18 00:00:00',3,477.90,'Destination FFXKT','Kirchgasse 0123','Graz',NULL,'10158','Austria'),(10634,23,4,'2007-08-15 00:00:00','2007-09-12 00:00:00','2007-08-21 00:00:00',3,487.38,'Destination AGPCO','6789, chaussée de Tournai','Lille',NULL,'10164','France'),(10635,49,8,'2007-08-18 00:00:00','2007-09-15 00:00:00','2007-08-21 00:00:00',3,47.46,'Ship to 49-A','Via Ludovico il Moro 8901','Bergamo',NULL,'10235','Italy'),(10636,87,4,'2007-08-19 00:00:00','2007-09-16 00:00:00','2007-08-26 00:00:00',1,1.15,'Ship to 87-A','Torikatu 1234','Oulu',NULL,'10350','Finland'),(10637,62,6,'2007-08-19 00:00:00','2007-09-16 00:00:00','2007-08-26 00:00:00',1,201.29,'Ship to 62-C','Alameda dos Canàrios, 0123','Sao Paulo','SP','10278','Brazil'),(10638,47,3,'2007-08-20 00:00:00','2007-09-17 00:00:00','2007-09-01 00:00:00',1,158.44,'Ship to 47-B','Ave. 5 de Mayo Porlamar 4567','I. de Margarita','Nueva Esparta','10231','Venezuela'),(10639,70,7,'2007-08-20 00:00:00','2007-09-17 00:00:00','2007-08-27 00:00:00',3,38.64,'Ship to 70-B','Erling Skakkes gate 5678','Stavern',NULL,'10303','Norway'),(10640,86,4,'2007-08-21 00:00:00','2007-09-18 00:00:00','2007-08-28 00:00:00',1,23.55,'Ship to 86-A','Adenauerallee 8901','Stuttgart',NULL,'10347','Germany'),(10641,35,4,'2007-08-22 00:00:00','2007-09-19 00:00:00','2007-08-26 00:00:00',2,179.61,'Destination JYDLM','Carrera1234 con Ave. Carlos Soublette #8-35','San Cristóbal','Táchira','10199','Venezuela'),(10642,73,7,'2007-08-22 00:00:00','2007-09-19 00:00:00','2007-09-05 00:00:00',3,41.89,'Ship to 73-C','Vinbæltet 2345','Kobenhavn',NULL,'10311','Denmark'),(10643,1,6,'2007-08-25 00:00:00','2007-09-22 00:00:00','2007-09-02 00:00:00',1,29.46,'Destination LOUIE','Obere Str. 6789','Berlin',NULL,'10154','Germany'),(10644,88,3,'2007-08-25 00:00:00','2007-09-22 00:00:00','2007-09-01 00:00:00',2,0.14,'Ship to 88-A','Rua do Mercado, 4567','Resende','SP','10353','Brazil'),(10645,34,4,'2007-08-26 00:00:00','2007-09-23 00:00:00','2007-09-02 00:00:00',1,12.41,'Destination DPCVR','Rua do Paço, 6789','Rio de Janeiro','RJ','10194','Brazil'),(10646,37,9,'2007-08-27 00:00:00','2007-10-08 00:00:00','2007-09-03 00:00:00',3,142.33,'Destination ATSOA','4567 Johnstown Road','Cork','Co. Cork','10202','Ireland'),(10647,61,4,'2007-08-27 00:00:00','2007-09-10 00:00:00','2007-09-03 00:00:00',2,45.54,'Ship to 61-B','Rua da Panificadora, 6789','Rio de Janeiro','RJ','10274','Brazil'),(10648,67,5,'2007-08-28 00:00:00','2007-10-09 00:00:00','2007-09-09 00:00:00',2,14.25,'Ship to 67-C','Av. Copacabana, 5678','Rio de Janeiro','RJ','10293','Brazil'),(10649,50,5,'2007-08-28 00:00:00','2007-09-25 00:00:00','2007-08-29 00:00:00',3,6.20,'Ship to 50-B','Rue Joseph-Bens 4567','Bruxelles',NULL,'10242','Belgium'),(10650,21,5,'2007-08-29 00:00:00','2007-09-26 00:00:00','2007-09-03 00:00:00',3,176.81,'Destination SSYXZ','Rua Orós, 3456','Sao Paulo','SP','10161','Brazil'),(10651,86,8,'2007-09-01 00:00:00','2007-09-29 00:00:00','2007-09-11 00:00:00',2,20.60,'Ship to 86-A','Adenauerallee 8901','Stuttgart',NULL,'10347','Germany'),(10652,31,4,'2007-09-01 00:00:00','2007-09-29 00:00:00','2007-09-08 00:00:00',2,7.14,'Destination VNIAG','Av. Brasil, 9012','Campinas','SP','10187','Brazil'),(10653,25,1,'2007-09-02 00:00:00','2007-09-30 00:00:00','2007-09-19 00:00:00',1,93.25,'Destination QOCBL','Berliner Platz 1234','München',NULL,'10169','Germany'),(10654,5,5,'2007-09-02 00:00:00','2007-09-30 00:00:00','2007-09-11 00:00:00',1,55.26,'Ship to 5-C','Berguvsvägen  1234','Luleå',NULL,'10269','Sweden'),(10655,66,1,'2007-09-03 00:00:00','2007-10-01 00:00:00','2007-09-11 00:00:00',2,4.41,'Ship to 66-B','Strada Provinciale 1234','Reggio Emilia',NULL,'10289','Italy'),(10656,32,6,'2007-09-04 00:00:00','2007-10-02 00:00:00','2007-09-10 00:00:00',1,57.15,'Destination AVQUS','2345 Baker Blvd.','Eugene','OR','10190','USA'),(10657,71,2,'2007-09-04 00:00:00','2007-10-02 00:00:00','2007-09-15 00:00:00',2,352.69,'Ship to 71-A','7890 Suffolk Ln.','Boise','Id','10305','USA'),(10658,63,4,'2007-09-05 00:00:00','2007-10-03 00:00:00','2007-09-08 00:00:00',1,364.15,'Ship to 63-C','Taucherstraße 3456','Cunewalde',NULL,'10281','Germany'),(10659,62,7,'2007-09-05 00:00:00','2007-10-03 00:00:00','2007-09-10 00:00:00',2,105.81,'Ship to 62-B','Alameda dos Canàrios, 9012','Sao Paulo','SP','10277','Brazil'),(10660,36,8,'2007-09-08 00:00:00','2007-10-06 00:00:00','2007-10-15 00:00:00',1,111.29,'Destination HOHCR','City Center Plaza 3456 Main St.','Elgin','OR','10201','USA'),(10661,37,7,'2007-09-09 00:00:00','2007-10-07 00:00:00','2007-09-15 00:00:00',3,17.55,'Destination ATSOA','4567 Johnstown Road','Cork','Co. Cork','10202','Ireland'),(10662,48,3,'2007-09-09 00:00:00','2007-10-07 00:00:00','2007-09-18 00:00:00',2,1.28,'Ship to 48-C','7890 Chiaroscuro Rd.','Portland','OR','10234','USA'),(10663,9,2,'2007-09-10 00:00:00','2007-09-24 00:00:00','2007-10-03 00:00:00',2,113.15,'Ship to 9-B','9012, rue des Bouchers','Marseille',NULL,'10368','France'),(10664,28,1,'2007-09-10 00:00:00','2007-10-08 00:00:00','2007-09-19 00:00:00',3,1.27,'Destination OTSWR','Jardim das rosas n. 9012','Lisboa',NULL,'10177','Portugal'),(10665,48,1,'2007-09-11 00:00:00','2007-10-09 00:00:00','2007-09-17 00:00:00',2,26.31,'Ship to 48-B','6789 Chiaroscuro Rd.','Portland','OR','10233','USA'),(10666,68,7,'2007-09-12 00:00:00','2007-10-10 00:00:00','2007-09-22 00:00:00',2,232.42,'Ship to 68-A','Starenweg 6789','Genève',NULL,'10294','Switzerland'),(10667,20,7,'2007-09-12 00:00:00','2007-10-10 00:00:00','2007-09-19 00:00:00',1,78.09,'Destination CUVPF','Kirchgasse 1234','Graz',NULL,'10159','Austria'),(10668,86,1,'2007-09-15 00:00:00','2007-10-13 00:00:00','2007-09-23 00:00:00',2,47.22,'Ship to 86-C','Adenauerallee 0123','Stuttgart',NULL,'10349','Germany'),(10669,73,2,'2007-09-15 00:00:00','2007-10-13 00:00:00','2007-09-22 00:00:00',1,24.39,'Ship to 73-A','Vinbæltet 1234','Kobenhavn',NULL,'10310','Denmark'),(10670,25,4,'2007-09-16 00:00:00','2007-10-14 00:00:00','2007-09-18 00:00:00',1,203.48,'Destination QOCBL','Berliner Platz 1234','München',NULL,'10169','Germany'),(10671,26,1,'2007-09-17 00:00:00','2007-10-15 00:00:00','2007-09-24 00:00:00',1,30.34,'Destination OPXJT','4567, rue Royale','Nantes',NULL,'10172','France'),(10672,5,9,'2007-09-17 00:00:00','2007-10-01 00:00:00','2007-09-26 00:00:00',2,95.75,'Ship to 5-C','Berguvsvägen  1234','Luleå',NULL,'10269','Sweden'),(10673,90,2,'2007-09-18 00:00:00','2007-10-16 00:00:00','2007-09-19 00:00:00',1,22.76,'Ship to 90-B','Keskuskatu 3456','Helsinki',NULL,'10362','Finland'),(10674,38,4,'2007-09-18 00:00:00','2007-10-16 00:00:00','2007-09-30 00:00:00',2,0.90,'Destination QVTLW','Garden House Crowther Way 7890','Cowes','Isle of Wight','10205','UK'),(10675,25,5,'2007-09-19 00:00:00','2007-10-17 00:00:00','2007-09-23 00:00:00',2,31.85,'Destination WEGWI','Berliner Platz 2345','München',NULL,'10170','Germany'),(10676,80,2,'2007-09-22 00:00:00','2007-10-20 00:00:00','2007-09-29 00:00:00',2,2.01,'Ship to 80-C','Avda. Azteca 5678','México D.F.',NULL,'10334','Mexico'),(10677,3,1,'2007-09-22 00:00:00','2007-10-20 00:00:00','2007-09-26 00:00:00',3,4.03,'Destination LANNN','Mataderos  4567','México D.F.',NULL,'10212','Mexico'),(10678,71,7,'2007-09-23 00:00:00','2007-10-21 00:00:00','2007-10-16 00:00:00',3,388.98,'Ship to 71-A','7890 Suffolk Ln.','Boise','Id','10305','USA'),(10679,7,8,'2007-09-23 00:00:00','2007-10-21 00:00:00','2007-09-30 00:00:00',3,27.94,'Ship to 7-A','0123, place Kléber','Strasbourg',NULL,'10329','France'),(10680,55,1,'2007-09-24 00:00:00','2007-10-22 00:00:00','2007-09-26 00:00:00',1,26.61,'Ship to 55-B','8901 Bering St.','Anchorage','AK','10256','USA'),(10681,32,3,'2007-09-25 00:00:00','2007-10-23 00:00:00','2007-09-30 00:00:00',3,76.13,'Destination AVQUS','2345 Baker Blvd.','Eugene','OR','10190','USA'),(10682,3,3,'2007-09-25 00:00:00','2007-10-23 00:00:00','2007-10-01 00:00:00',2,36.13,'Destination RTGIS','Mataderos  2345','México D.F.',NULL,'10210','Mexico'),(10683,18,2,'2007-09-26 00:00:00','2007-10-24 00:00:00','2007-10-01 00:00:00',1,4.40,'Destination FVRGC','2345, rue des Cinquante Otages','Nantes',NULL,'10150','France'),(10684,56,3,'2007-09-26 00:00:00','2007-10-24 00:00:00','2007-09-30 00:00:00',1,145.63,'Ship to 56-B','Mehrheimerstr. 1234','Köln',NULL,'10259','Germany'),(10685,31,4,'2007-09-29 00:00:00','2007-10-13 00:00:00','2007-10-03 00:00:00',2,33.75,'Destination VNIAG','Av. Brasil, 9012','Campinas','SP','10187','Brazil'),(10686,59,2,'2007-09-30 00:00:00','2007-10-28 00:00:00','2007-10-08 00:00:00',1,96.50,'Ship to 59-B','Geislweg 7890','Salzburg',NULL,'10265','Austria'),(10687,37,9,'2007-09-30 00:00:00','2007-10-28 00:00:00','2007-10-30 00:00:00',2,296.43,'Destination KPVYJ','5678 Johnstown Road','Cork','Co. Cork','10203','Ireland'),(10688,83,4,'2007-10-01 00:00:00','2007-10-15 00:00:00','2007-10-07 00:00:00',2,299.09,'Ship to 83-A','Smagsloget 0123','Århus',NULL,'10339','Denmark'),(10689,5,1,'2007-10-01 00:00:00','2007-10-29 00:00:00','2007-10-07 00:00:00',2,13.42,'Ship to 5-B','Berguvsvägen  0123','Luleå',NULL,'10268','Sweden'),(10690,34,1,'2007-10-02 00:00:00','2007-10-30 00:00:00','2007-10-03 00:00:00',1,15.80,'Destination JPAIY','Rua do Paço, 8901','Rio de Janeiro','RJ','10196','Brazil'),(10691,63,2,'2007-10-03 00:00:00','2007-11-14 00:00:00','2007-10-22 00:00:00',2,810.05,'Ship to 63-B','Taucherstraße 2345','Cunewalde',NULL,'10280','Germany'),(10692,1,4,'2007-10-03 00:00:00','2007-10-31 00:00:00','2007-10-13 00:00:00',2,61.02,'Destination RSVRP','Obere Str. 8901','Berlin',NULL,'10156','Germany'),(10693,89,3,'2007-10-06 00:00:00','2007-10-20 00:00:00','2007-10-10 00:00:00',3,139.34,'Ship to 89-C','9012 - 12th Ave. S.','Seattle','WA','10358','USA'),(10694,63,8,'2007-10-06 00:00:00','2007-11-03 00:00:00','2007-10-09 00:00:00',3,398.36,'Ship to 63-A','Taucherstraße 1234','Cunewalde',NULL,'10279','Germany'),(10695,90,7,'2007-10-07 00:00:00','2007-11-18 00:00:00','2007-10-14 00:00:00',1,16.72,'Ship to 90-C','Keskuskatu 4567','Helsinki',NULL,'10363','Finland'),(10696,89,8,'2007-10-08 00:00:00','2007-11-19 00:00:00','2007-10-14 00:00:00',3,102.55,'Ship to 89-A','7890 - 12th Ave. S.','Seattle','WA','10356','USA'),(10697,47,3,'2007-10-08 00:00:00','2007-11-05 00:00:00','2007-10-14 00:00:00',1,45.52,'Ship to 47-B','Ave. 5 de Mayo Porlamar 4567','I. de Margarita','Nueva Esparta','10231','Venezuela'),(10698,20,4,'2007-10-09 00:00:00','2007-11-06 00:00:00','2007-10-17 00:00:00',1,272.47,'Destination RVDMF','Kirchgasse 9012','Graz',NULL,'10157','Austria'),(10699,52,3,'2007-10-09 00:00:00','2007-11-06 00:00:00','2007-10-13 00:00:00',3,0.58,'Ship to 52-B','Heerstr. 0123','Leipzig',NULL,'10248','Germany'),(10700,71,3,'2007-10-10 00:00:00','2007-11-07 00:00:00','2007-10-16 00:00:00',1,65.10,'Ship to 71-C','9012 Suffolk Ln.','Boise','Id','10307','USA'),(10701,37,6,'2007-10-13 00:00:00','2007-10-27 00:00:00','2007-10-15 00:00:00',3,220.31,'Destination KPVYJ','5678 Johnstown Road','Cork','Co. Cork','10203','Ireland'),(10702,1,4,'2007-10-13 00:00:00','2007-11-24 00:00:00','2007-10-21 00:00:00',1,23.94,'Destination ZELZJ','Obere Str. 7890','Berlin',NULL,'10155','Germany'),(10703,24,6,'2007-10-14 00:00:00','2007-11-11 00:00:00','2007-10-20 00:00:00',2,152.30,'Destination KBSBN','Åkergatan 9012','Bräcke',NULL,'10167','Sweden'),(10704,62,6,'2007-10-14 00:00:00','2007-11-11 00:00:00','2007-11-07 00:00:00',1,4.78,'Ship to 62-C','Alameda dos Canàrios, 0123','Sao Paulo','SP','10278','Brazil'),(10705,35,9,'2007-10-15 00:00:00','2007-11-12 00:00:00','2007-11-18 00:00:00',2,3.52,'Destination JYDLM','Carrera1234 con Ave. Carlos Soublette #8-35','San Cristóbal','Táchira','10199','Venezuela'),(10706,55,8,'2007-10-16 00:00:00','2007-11-13 00:00:00','2007-10-21 00:00:00',3,135.63,'Ship to 55-C','9012 Bering St.','Anchorage','AK','10257','USA'),(10707,4,4,'2007-10-16 00:00:00','2007-10-30 00:00:00','2007-10-23 00:00:00',3,21.74,'Ship to 4-A','Brook Farm Stratford St. Mary 0123','Colchester','Essex','10238','UK'),(10708,77,6,'2007-10-17 00:00:00','2007-11-28 00:00:00','2007-11-05 00:00:00',2,2.96,'Ship to 77-C','3456 Jefferson Way Suite 2','Portland','OR','10322','USA'),(10709,31,1,'2007-10-17 00:00:00','2007-11-14 00:00:00','2007-11-20 00:00:00',3,210.80,'Destination GWPFK','Av. Brasil, 0123','Campinas','SP','10188','Brazil'),(10710,27,1,'2007-10-20 00:00:00','2007-11-17 00:00:00','2007-10-23 00:00:00',1,4.98,'Destination FFLQT','Via Monte Bianco 6789','Torino',NULL,'10174','Italy'),(10711,71,5,'2007-10-21 00:00:00','2007-12-02 00:00:00','2007-10-29 00:00:00',2,52.41,'Ship to 71-A','7890 Suffolk Ln.','Boise','Id','10305','USA'),(10712,37,3,'2007-10-21 00:00:00','2007-11-18 00:00:00','2007-10-31 00:00:00',1,89.93,'Destination KPVYJ','5678 Johnstown Road','Cork','Co. Cork','10203','Ireland'),(10713,71,1,'2007-10-22 00:00:00','2007-11-19 00:00:00','2007-10-24 00:00:00',1,167.05,'Ship to 71-C','9012 Suffolk Ln.','Boise','Id','10307','USA'),(10714,71,5,'2007-10-22 00:00:00','2007-11-19 00:00:00','2007-10-27 00:00:00',3,24.49,'Ship to 71-A','7890 Suffolk Ln.','Boise','Id','10305','USA'),(10715,9,3,'2007-10-23 00:00:00','2007-11-06 00:00:00','2007-10-29 00:00:00',1,63.20,'Ship to 9-B','9012, rue des Bouchers','Marseille',NULL,'10368','France'),(10716,64,4,'2007-10-24 00:00:00','2007-11-21 00:00:00','2007-10-27 00:00:00',2,22.57,'Ship to 64-B','Av. del Libertador 5678','Buenos Aires',NULL,'10283','Argentina'),(10717,25,1,'2007-10-24 00:00:00','2007-11-21 00:00:00','2007-10-29 00:00:00',2,59.25,'Destination QOCBL','Berliner Platz 1234','München',NULL,'10169','Germany'),(10718,39,1,'2007-10-27 00:00:00','2007-11-24 00:00:00','2007-10-29 00:00:00',3,170.88,'Destination DKMQA','Maubelstr. 0123','Brandenburg',NULL,'10208','Germany'),(10719,45,8,'2007-10-27 00:00:00','2007-11-24 00:00:00','2007-11-05 00:00:00',2,51.44,'Ship to 45-A','8901 Polk St. Suite 5','San Francisco','CA','10225','USA'),(10720,61,8,'2007-10-28 00:00:00','2007-11-11 00:00:00','2007-11-05 00:00:00',2,9.53,'Ship to 61-C','Rua da Panificadora, 7890','Rio de Janeiro','RJ','10275','Brazil'),(10721,63,5,'2007-10-29 00:00:00','2007-11-26 00:00:00','2007-10-31 00:00:00',3,48.92,'Ship to 63-A','Taucherstraße 1234','Cunewalde',NULL,'10279','Germany'),(10722,71,8,'2007-10-29 00:00:00','2007-12-10 00:00:00','2007-11-04 00:00:00',1,74.58,'Ship to 71-A','7890 Suffolk Ln.','Boise','Id','10305','USA'),(10723,89,3,'2007-10-30 00:00:00','2007-11-27 00:00:00','2007-11-25 00:00:00',1,21.72,'Ship to 89-C','9012 - 12th Ave. S.','Seattle','WA','10358','USA'),(10724,51,8,'2007-10-30 00:00:00','2007-12-11 00:00:00','2007-11-05 00:00:00',2,57.75,'Ship to 51-A','6789 rue St. Laurent','Montréal','Québec','10244','Canada'),(10725,21,4,'2007-10-31 00:00:00','2007-11-28 00:00:00','2007-11-05 00:00:00',3,10.83,'Destination KKELL','Rua Orós, 4567','Sao Paulo','SP','10162','Brazil'),(10726,19,4,'2007-11-03 00:00:00','2007-11-17 00:00:00','2007-12-05 00:00:00',1,16.56,'Destination FRCGJ','5678 King George','London',NULL,'10153','UK'),(10727,66,2,'2007-11-03 00:00:00','2007-12-01 00:00:00','2007-12-05 00:00:00',1,89.90,'Ship to 66-A','Strada Provinciale 0123','Reggio Emilia',NULL,'10288','Italy'),(10728,62,4,'2007-11-04 00:00:00','2007-12-02 00:00:00','2007-11-11 00:00:00',2,58.33,'Ship to 62-A','Alameda dos Canàrios, 8901','Sao Paulo','SP','10276','Brazil'),(10729,47,8,'2007-11-04 00:00:00','2007-12-16 00:00:00','2007-11-14 00:00:00',3,141.06,'Ship to 47-A','Ave. 5 de Mayo Porlamar 3456','I. de Margarita','Nueva Esparta','10230','Venezuela'),(10730,9,5,'2007-11-05 00:00:00','2007-12-03 00:00:00','2007-11-14 00:00:00',1,20.12,'Ship to 9-A','8901, rue des Bouchers','Marseille',NULL,'10367','France'),(10731,14,7,'2007-11-06 00:00:00','2007-12-04 00:00:00','2007-11-14 00:00:00',1,96.65,'Destination YUJRD','Hauptstr. 1234','Bern',NULL,'10139','Switzerland'),(10732,9,3,'2007-11-06 00:00:00','2007-12-04 00:00:00','2007-11-07 00:00:00',1,16.97,'Ship to 9-A','8901, rue des Bouchers','Marseille',NULL,'10367','France'),(10733,5,1,'2007-11-07 00:00:00','2007-12-05 00:00:00','2007-11-10 00:00:00',3,110.11,'Ship to 5-A','Berguvsvägen  9012','Luleå',NULL,'10267','Sweden'),(10734,31,2,'2007-11-07 00:00:00','2007-12-05 00:00:00','2007-11-12 00:00:00',3,1.63,'Destination VNIAG','Av. Brasil, 9012','Campinas','SP','10187','Brazil'),(10735,45,6,'2007-11-10 00:00:00','2007-12-08 00:00:00','2007-11-21 00:00:00',2,45.97,'Ship to 45-A','8901 Polk St. Suite 5','San Francisco','CA','10225','USA'),(10736,37,9,'2007-11-11 00:00:00','2007-12-09 00:00:00','2007-11-21 00:00:00',2,44.10,'Destination DGKOU','6789 Johnstown Road','Cork','Co. Cork','10204','Ireland'),(10737,85,2,'2007-11-11 00:00:00','2007-12-09 00:00:00','2007-11-18 00:00:00',2,7.79,'Ship to 85-C','7890 rue de l\'Abbaye','Reims',NULL,'10346','France'),(10738,74,2,'2007-11-12 00:00:00','2007-12-10 00:00:00','2007-11-18 00:00:00',1,2.91,'Ship to 74-A','3456, rue Lauriston','Paris',NULL,'10312','France'),(10739,85,3,'2007-11-12 00:00:00','2007-12-10 00:00:00','2007-11-17 00:00:00',3,11.08,'Ship to 85-C','7890 rue de l\'Abbaye','Reims',NULL,'10346','France'),(10740,89,4,'2007-11-13 00:00:00','2007-12-11 00:00:00','2007-11-25 00:00:00',2,81.88,'Ship to 89-B','8901 - 12th Ave. S.','Seattle','WA','10357','USA'),(10741,4,4,'2007-11-14 00:00:00','2007-11-28 00:00:00','2007-11-18 00:00:00',3,10.96,'Ship to 4-C','Brook Farm Stratford St. Mary 2345','Colchester','Essex','10240','UK'),(10742,10,3,'2007-11-14 00:00:00','2007-12-12 00:00:00','2007-11-18 00:00:00',3,243.73,'Destination LPHSI','3456 Tsawassen Blvd.','Tsawassen','BC','10131','Canada'),(10743,4,1,'2007-11-17 00:00:00','2007-12-15 00:00:00','2007-11-21 00:00:00',2,23.72,'Ship to 4-C','Brook Farm Stratford St. Mary 2345','Colchester','Essex','10240','UK'),(10744,83,6,'2007-11-17 00:00:00','2007-12-15 00:00:00','2007-11-24 00:00:00',1,69.19,'Ship to 83-A','Smagsloget 0123','Århus',NULL,'10339','Denmark'),(10745,63,9,'2007-11-18 00:00:00','2007-12-16 00:00:00','2007-11-27 00:00:00',1,3.52,'Ship to 63-C','Taucherstraße 3456','Cunewalde',NULL,'10281','Germany'),(10746,14,1,'2007-11-19 00:00:00','2007-12-17 00:00:00','2007-11-21 00:00:00',3,31.43,'Destination NRTZZ','Hauptstr. 0123','Bern',NULL,'10138','Switzerland'),(10747,59,6,'2007-11-19 00:00:00','2007-12-17 00:00:00','2007-11-26 00:00:00',1,117.33,'Ship to 59-B','Geislweg 7890','Salzburg',NULL,'10265','Austria'),(10748,71,3,'2007-11-20 00:00:00','2007-12-18 00:00:00','2007-11-28 00:00:00',1,232.55,'Ship to 71-B','8901 Suffolk Ln.','Boise','Id','10306','USA'),(10749,38,4,'2007-11-20 00:00:00','2007-12-18 00:00:00','2007-12-19 00:00:00',2,61.53,'Destination QVTLW','Garden House Crowther Way 7890','Cowes','Isle of Wight','10205','UK'),(10750,87,9,'2007-11-21 00:00:00','2007-12-19 00:00:00','2007-11-24 00:00:00',1,79.30,'Ship to 87-C','Torikatu 3456','Oulu',NULL,'10352','Finland'),(10751,68,3,'2007-11-24 00:00:00','2007-12-22 00:00:00','2007-12-03 00:00:00',3,130.79,'Ship to 68-A','Starenweg 6789','Genève',NULL,'10294','Switzerland'),(10752,53,2,'2007-11-24 00:00:00','2007-12-22 00:00:00','2007-11-28 00:00:00',3,1.39,'Ship to 53-C','South House 3456 Queensbridge','London',NULL,'10251','UK'),(10753,27,3,'2007-11-25 00:00:00','2007-12-23 00:00:00','2007-11-27 00:00:00',1,7.70,'Destination DICGM','Via Monte Bianco 7890','Torino',NULL,'10175','Italy'),(10754,49,6,'2007-11-25 00:00:00','2007-12-23 00:00:00','2007-11-27 00:00:00',3,2.38,'Ship to 49-B','Via Ludovico il Moro 9012','Bergamo',NULL,'10236','Italy'),(10755,9,4,'2007-11-26 00:00:00','2007-12-24 00:00:00','2007-11-28 00:00:00',2,16.71,'Ship to 9-C','0123, rue des Bouchers','Marseille',NULL,'10369','France'),(10756,75,8,'2007-11-27 00:00:00','2007-12-25 00:00:00','2007-12-02 00:00:00',2,73.21,'Ship to 75-C','P.O. Box 7890','Lander','WY','10316','USA'),(10757,71,6,'2007-11-27 00:00:00','2007-12-25 00:00:00','2007-12-15 00:00:00',1,8.19,'Ship to 71-B','8901 Suffolk Ln.','Boise','Id','10306','USA'),(10758,68,3,'2007-11-28 00:00:00','2007-12-26 00:00:00','2007-12-04 00:00:00',3,138.17,'Ship to 68-C','Starenweg 8901','Genève',NULL,'10296','Switzerland'),(10759,2,3,'2007-11-28 00:00:00','2007-12-26 00:00:00','2007-12-12 00:00:00',3,11.99,'Destination QOTQA','Avda. de la Constitución 3456','México D.F.',NULL,'10181','Mexico'),(10760,50,4,'2007-12-01 00:00:00','2007-12-29 00:00:00','2007-12-10 00:00:00',1,155.64,'Ship to 50-B','Rue Joseph-Bens 4567','Bruxelles',NULL,'10242','Belgium'),(10761,65,5,'2007-12-02 00:00:00','2007-12-30 00:00:00','2007-12-08 00:00:00',2,18.66,'Ship to 65-B','8901 Milton Dr.','Albuquerque','NM','10286','USA'),(10762,24,3,'2007-12-02 00:00:00','2007-12-30 00:00:00','2007-12-09 00:00:00',1,328.74,'Destination YCMPK','Åkergatan 8901','Bräcke',NULL,'10166','Sweden'),(10763,23,3,'2007-12-03 00:00:00','2007-12-31 00:00:00','2007-12-08 00:00:00',3,37.35,'Destination PXQRR','5678, chaussée de Tournai','Lille',NULL,'10163','France'),(10764,20,6,'2007-12-03 00:00:00','2007-12-31 00:00:00','2007-12-08 00:00:00',3,145.45,'Destination CUVPF','Kirchgasse 1234','Graz',NULL,'10159','Austria'),(10765,63,3,'2007-12-04 00:00:00','2008-01-01 00:00:00','2007-12-09 00:00:00',3,42.74,'Ship to 63-A','Taucherstraße 1234','Cunewalde',NULL,'10279','Germany'),(10766,56,4,'2007-12-05 00:00:00','2008-01-02 00:00:00','2007-12-09 00:00:00',1,157.55,'Ship to 56-C','Mehrheimerstr. 2345','Köln',NULL,'10260','Germany'),(10767,76,4,'2007-12-05 00:00:00','2008-01-02 00:00:00','2007-12-15 00:00:00',3,1.59,'Ship to 76-B','Boulevard Tirou, 9012','Charleroi',NULL,'10318','Belgium'),(10768,4,3,'2007-12-08 00:00:00','2008-01-05 00:00:00','2007-12-15 00:00:00',2,146.32,'Ship to 4-B','Brook Farm Stratford St. Mary 1234','Colchester','Essex','10239','UK'),(10769,83,3,'2007-12-08 00:00:00','2008-01-05 00:00:00','2007-12-12 00:00:00',1,65.06,'Ship to 83-C','Smagsloget 2345','Århus',NULL,'10341','Denmark'),(10770,34,8,'2007-12-09 00:00:00','2008-01-06 00:00:00','2007-12-17 00:00:00',3,5.32,'Destination JPAIY','Rua do Paço, 8901','Rio de Janeiro','RJ','10196','Brazil'),(10771,20,9,'2007-12-10 00:00:00','2008-01-07 00:00:00','2008-01-02 00:00:00',2,11.19,'Destination CUVPF','Kirchgasse 1234','Graz',NULL,'10159','Austria'),(10772,44,3,'2007-12-10 00:00:00','2008-01-07 00:00:00','2007-12-19 00:00:00',2,91.28,'Ship to 44-B','Magazinweg 5678','Frankfurt a.M.',NULL,'10223','Germany'),(10773,20,1,'2007-12-11 00:00:00','2008-01-08 00:00:00','2007-12-16 00:00:00',3,96.43,'Destination FFXKT','Kirchgasse 0123','Graz',NULL,'10158','Austria'),(10774,24,4,'2007-12-11 00:00:00','2007-12-25 00:00:00','2007-12-12 00:00:00',1,48.20,'Destination KBSBN','Åkergatan 9012','Bräcke',NULL,'10167','Sweden'),(10775,78,7,'2007-12-12 00:00:00','2008-01-09 00:00:00','2007-12-26 00:00:00',1,20.25,'Ship to 78-A','4567 Grizzly Peak Rd.','Butte','MT','10323','USA'),(10776,20,1,'2007-12-15 00:00:00','2008-01-12 00:00:00','2007-12-18 00:00:00',3,351.53,'Destination RVDMF','Kirchgasse 9012','Graz',NULL,'10157','Austria'),(10777,31,7,'2007-12-15 00:00:00','2007-12-29 00:00:00','2008-01-21 00:00:00',2,3.01,'Destination GWPFK','Av. Brasil, 0123','Campinas','SP','10188','Brazil'),(10778,5,3,'2007-12-16 00:00:00','2008-01-13 00:00:00','2007-12-24 00:00:00',1,6.79,'Ship to 5-A','Berguvsvägen  9012','Luleå',NULL,'10267','Sweden'),(10779,52,3,'2007-12-16 00:00:00','2008-01-13 00:00:00','2008-01-14 00:00:00',2,58.13,'Ship to 52-A','Heerstr. 9012','Leipzig',NULL,'10247','Germany'),(10780,46,2,'2007-12-16 00:00:00','2007-12-30 00:00:00','2007-12-25 00:00:00',1,42.13,'Ship to 46-C','Carrera 2345 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto','Lara','10229','Venezuela'),(10781,87,2,'2007-12-17 00:00:00','2008-01-14 00:00:00','2007-12-19 00:00:00',3,73.16,'Ship to 87-A','Torikatu 1234','Oulu',NULL,'10350','Finland'),(10782,12,9,'2007-12-17 00:00:00','2008-01-14 00:00:00','2007-12-22 00:00:00',3,1.10,'Destination CJDJB','Cerrito 8901','Buenos Aires',NULL,'10136','Argentina'),(10783,34,4,'2007-12-18 00:00:00','2008-01-15 00:00:00','2007-12-19 00:00:00',2,124.98,'Destination DPCVR','Rua do Paço, 6789','Rio de Janeiro','RJ','10194','Brazil'),(10784,49,4,'2007-12-18 00:00:00','2008-01-15 00:00:00','2007-12-22 00:00:00',3,70.09,'Ship to 49-A','Via Ludovico il Moro 8901','Bergamo',NULL,'10235','Italy'),(10785,33,1,'2007-12-18 00:00:00','2008-01-15 00:00:00','2007-12-24 00:00:00',3,1.51,'Destination FQJFJ','5ª Ave. Los Palos Grandes 4567','Caracas','DF','10192','Venezuela'),(10786,62,8,'2007-12-19 00:00:00','2008-01-16 00:00:00','2007-12-23 00:00:00',1,110.87,'Ship to 62-B','Alameda dos Canàrios, 9012','Sao Paulo','SP','10277','Brazil'),(10787,41,2,'2007-12-19 00:00:00','2008-01-02 00:00:00','2007-12-26 00:00:00',1,249.93,'Destination DWJIO','9012 rue Alsace-Lorraine','Toulouse',NULL,'10217','France'),(10788,63,1,'2007-12-22 00:00:00','2008-01-19 00:00:00','2008-01-19 00:00:00',2,42.70,'Ship to 63-C','Taucherstraße 3456','Cunewalde',NULL,'10281','Germany'),(10789,23,1,'2007-12-22 00:00:00','2008-01-19 00:00:00','2007-12-31 00:00:00',2,100.60,'Destination PXQRR','5678, chaussée de Tournai','Lille',NULL,'10163','France'),(10790,31,6,'2007-12-22 00:00:00','2008-01-19 00:00:00','2007-12-26 00:00:00',1,28.23,'Destination XOIGC','Av. Brasil, 8901','Campinas','SP','10186','Brazil'),(10791,25,6,'2007-12-23 00:00:00','2008-01-20 00:00:00','2008-01-01 00:00:00',2,16.85,'Destination QOCBL','Berliner Platz 1234','München',NULL,'10169','Germany'),(10792,91,1,'2007-12-23 00:00:00','2008-01-20 00:00:00','2007-12-31 00:00:00',3,23.79,'Ship to 91-C','ul. Filtrowa 7890','Warszawa',NULL,'10366','Poland'),(10793,4,3,'2007-12-24 00:00:00','2008-01-21 00:00:00','2008-01-08 00:00:00',3,4.52,'Ship to 4-B','Brook Farm Stratford St. Mary 1234','Colchester','Essex','10239','UK'),(10794,61,6,'2007-12-24 00:00:00','2008-01-21 00:00:00','2008-01-02 00:00:00',1,21.49,'Ship to 61-C','Rua da Panificadora, 7890','Rio de Janeiro','RJ','10275','Brazil'),(10795,20,8,'2007-12-24 00:00:00','2008-01-21 00:00:00','2008-01-20 00:00:00',2,126.66,'Destination FFXKT','Kirchgasse 0123','Graz',NULL,'10158','Austria'),(10796,35,3,'2007-12-25 00:00:00','2008-01-22 00:00:00','2008-01-14 00:00:00',1,26.52,'Destination UOUWK','Carrera 9012 con Ave. Carlos Soublette #8-35','San Cristóbal','Táchira','10197','Venezuela'),(10797,17,7,'2007-12-25 00:00:00','2008-01-22 00:00:00','2008-01-05 00:00:00',2,33.35,'Destination AJTHX','Walserweg 9012','Aachen',NULL,'10147','Germany'),(10798,38,2,'2007-12-26 00:00:00','2008-01-23 00:00:00','2008-01-05 00:00:00',1,2.33,'Destination AXVHD','Garden House Crowther Way 9012','Cowes','Isle of Wight','10207','UK'),(10799,39,9,'2007-12-26 00:00:00','2008-02-06 00:00:00','2008-01-05 00:00:00',3,30.76,'Destination DKMQA','Maubelstr. 0123','Brandenburg',NULL,'10208','Germany'),(10800,72,1,'2007-12-26 00:00:00','2008-01-23 00:00:00','2008-01-05 00:00:00',3,137.44,'Ship to 72-C','1234 Wadhurst Rd.','London',NULL,'10309','UK'),(10801,8,4,'2007-12-29 00:00:00','2008-01-26 00:00:00','2007-12-31 00:00:00',2,97.09,'Ship to 8-C','C/ Araquil, 1234','Madrid',NULL,'10360','Spain'),(10802,73,4,'2007-12-29 00:00:00','2008-01-26 00:00:00','2008-01-02 00:00:00',2,257.26,'Ship to 73-A','Vinbæltet 1234','Kobenhavn',NULL,'10310','Denmark'),(10803,88,4,'2007-12-30 00:00:00','2008-01-27 00:00:00','2008-01-06 00:00:00',1,55.23,'Ship to 88-B','Rua do Mercado, 5678','Resende','SP','10354','Brazil'),(10804,72,6,'2007-12-30 00:00:00','2008-01-27 00:00:00','2008-01-07 00:00:00',2,27.33,'Ship to 72-C','1234 Wadhurst Rd.','London',NULL,'10309','UK'),(10805,77,2,'2007-12-30 00:00:00','2008-01-27 00:00:00','2008-01-09 00:00:00',3,237.34,'Ship to 77-A','1234 Jefferson Way Suite 2','Portland','OR','10320','USA'),(10806,84,3,'2007-12-31 00:00:00','2008-01-28 00:00:00','2008-01-05 00:00:00',2,22.11,'Ship to 84-C','5678, rue du Commerce','Lyon',NULL,'10344','France'),(10807,27,4,'2007-12-31 00:00:00','2008-01-28 00:00:00','2008-01-30 00:00:00',1,1.36,'Destination XNLFB','Via Monte Bianco 5678','Torino',NULL,'10173','Italy'),(10808,55,2,'2008-01-01 00:00:00','2008-01-29 00:00:00','2008-01-09 00:00:00',3,45.53,'Ship to 55-B','8901 Bering St.','Anchorage','AK','10256','USA'),(10809,88,7,'2008-01-01 00:00:00','2008-01-29 00:00:00','2008-01-07 00:00:00',1,4.87,'Ship to 88-C','Rua do Mercado, 6789','Resende','SP','10355','Brazil'),(10810,42,2,'2008-01-01 00:00:00','2008-01-29 00:00:00','2008-01-07 00:00:00',3,4.33,'Ship to 42-A','1234 Elm St.','Vancouver','BC','10219','Canada'),(10811,47,8,'2008-01-02 00:00:00','2008-01-30 00:00:00','2008-01-08 00:00:00',1,31.22,'Ship to 47-B','Ave. 5 de Mayo Porlamar 4567','I. de Margarita','Nueva Esparta','10231','Venezuela'),(10812,66,5,'2008-01-02 00:00:00','2008-01-30 00:00:00','2008-01-12 00:00:00',1,59.78,'Ship to 66-B','Strada Provinciale 1234','Reggio Emilia',NULL,'10289','Italy'),(10813,67,1,'2008-01-05 00:00:00','2008-02-02 00:00:00','2008-01-09 00:00:00',1,47.38,'Ship to 67-C','Av. Copacabana, 5678','Rio de Janeiro','RJ','10293','Brazil'),(10814,84,3,'2008-01-05 00:00:00','2008-02-02 00:00:00','2008-01-14 00:00:00',3,130.94,'Ship to 84-B','4567, rue du Commerce','Lyon',NULL,'10343','France'),(10815,71,2,'2008-01-05 00:00:00','2008-02-02 00:00:00','2008-01-14 00:00:00',3,14.62,'Ship to 71-A','7890 Suffolk Ln.','Boise','Id','10305','USA'),(10816,32,4,'2008-01-06 00:00:00','2008-02-03 00:00:00','2008-02-04 00:00:00',2,719.78,'Destination AVQUS','2345 Baker Blvd.','Eugene','OR','10190','USA'),(10817,39,3,'2008-01-06 00:00:00','2008-01-20 00:00:00','2008-01-13 00:00:00',2,306.07,'Destination RMBHM','Maubelstr. 1234','Brandenburg',NULL,'10209','Germany'),(10818,49,7,'2008-01-07 00:00:00','2008-02-04 00:00:00','2008-01-12 00:00:00',3,65.48,'Ship to 49-B','Via Ludovico il Moro 9012','Bergamo',NULL,'10236','Italy'),(10819,12,2,'2008-01-07 00:00:00','2008-02-04 00:00:00','2008-01-16 00:00:00',3,19.76,'Destination QTHBC','Cerrito 6789','Buenos Aires',NULL,'10134','Argentina'),(10820,65,3,'2008-01-07 00:00:00','2008-02-04 00:00:00','2008-01-13 00:00:00',2,37.52,'Ship to 65-B','8901 Milton Dr.','Albuquerque','NM','10286','USA'),(10821,75,1,'2008-01-08 00:00:00','2008-02-05 00:00:00','2008-01-15 00:00:00',1,36.68,'Ship to 75-A','P.O. Box 5678','Lander','WY','10314','USA'),(10822,82,6,'2008-01-08 00:00:00','2008-02-05 00:00:00','2008-01-16 00:00:00',3,7.00,'Ship to 82-B','9012 DaVinci Blvd.','Kirkland','WA','10338','USA'),(10823,46,5,'2008-01-09 00:00:00','2008-02-06 00:00:00','2008-01-13 00:00:00',2,163.97,'Ship to 46-A','Carrera 0123 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto','Lara','10227','Venezuela'),(10824,24,8,'2008-01-09 00:00:00','2008-02-06 00:00:00','2008-01-30 00:00:00',1,1.23,'Destination NCKKO','Åkergatan 7890','Bräcke',NULL,'10165','Sweden'),(10825,17,1,'2008-01-09 00:00:00','2008-02-06 00:00:00','2008-01-14 00:00:00',1,79.25,'Destination BJCXA','Walserweg 7890','Aachen',NULL,'10145','Germany'),(10826,7,6,'2008-01-12 00:00:00','2008-02-09 00:00:00','2008-02-06 00:00:00',1,7.09,'Ship to 7-C','2345, place Kléber','Strasbourg',NULL,'10331','France'),(10827,9,1,'2008-01-12 00:00:00','2008-01-26 00:00:00','2008-02-06 00:00:00',2,63.54,'Ship to 9-B','9012, rue des Bouchers','Marseille',NULL,'10368','France'),(10828,64,9,'2008-01-13 00:00:00','2008-01-27 00:00:00','2008-02-04 00:00:00',1,90.85,'Ship to 64-B','Av. del Libertador 5678','Buenos Aires',NULL,'10283','Argentina'),(10829,38,9,'2008-01-13 00:00:00','2008-02-10 00:00:00','2008-01-23 00:00:00',1,154.72,'Destination QVTLW','Garden House Crowther Way 7890','Cowes','Isle of Wight','10205','UK'),(10830,81,4,'2008-01-13 00:00:00','2008-02-24 00:00:00','2008-01-21 00:00:00',2,81.83,'Ship to 81-C','Av. Inês de Castro, 7890','Sao Paulo','SP','10336','Brazil'),(10831,70,3,'2008-01-14 00:00:00','2008-02-11 00:00:00','2008-01-23 00:00:00',2,72.19,'Ship to 70-B','Erling Skakkes gate 5678','Stavern',NULL,'10303','Norway'),(10832,41,2,'2008-01-14 00:00:00','2008-02-11 00:00:00','2008-01-19 00:00:00',2,43.26,'Ship to 41-C','0123 rue Alsace-Lorraine','Toulouse',NULL,'10218','France'),(10833,56,6,'2008-01-15 00:00:00','2008-02-12 00:00:00','2008-01-23 00:00:00',2,71.49,'Ship to 56-B','Mehrheimerstr. 1234','Köln',NULL,'10259','Germany'),(10834,81,1,'2008-01-15 00:00:00','2008-02-12 00:00:00','2008-01-19 00:00:00',3,29.78,'Ship to 81-A','Av. Inês de Castro, 6789','Sao Paulo','SP','10335','Brazil'),(10835,1,1,'2008-01-15 00:00:00','2008-02-12 00:00:00','2008-01-21 00:00:00',3,69.53,'Destination LOUIE','Obere Str. 6789','Berlin',NULL,'10154','Germany'),(10836,20,7,'2008-01-16 00:00:00','2008-02-13 00:00:00','2008-01-21 00:00:00',1,411.88,'Destination CUVPF','Kirchgasse 1234','Graz',NULL,'10159','Austria'),(10837,5,9,'2008-01-16 00:00:00','2008-02-13 00:00:00','2008-01-23 00:00:00',3,13.32,'Ship to 5-A','Berguvsvägen  9012','Luleå',NULL,'10267','Sweden'),(10838,47,3,'2008-01-19 00:00:00','2008-02-16 00:00:00','2008-01-23 00:00:00',3,59.28,'Ship to 47-A','Ave. 5 de Mayo Porlamar 3456','I. de Margarita','Nueva Esparta','10230','Venezuela'),(10839,81,3,'2008-01-19 00:00:00','2008-02-16 00:00:00','2008-01-22 00:00:00',3,35.43,'Ship to 81-C','Av. Inês de Castro, 7890','Sao Paulo','SP','10336','Brazil'),(10840,47,4,'2008-01-19 00:00:00','2008-03-02 00:00:00','2008-02-16 00:00:00',2,2.71,'Ship to 47-A','Ave. 5 de Mayo Porlamar 3456','I. de Margarita','Nueva Esparta','10230','Venezuela'),(10841,76,5,'2008-01-20 00:00:00','2008-02-17 00:00:00','2008-01-29 00:00:00',2,424.30,'Ship to 76-B','Boulevard Tirou, 9012','Charleroi',NULL,'10318','Belgium'),(10842,80,1,'2008-01-20 00:00:00','2008-02-17 00:00:00','2008-01-29 00:00:00',3,54.42,'Ship to 80-A','Avda. Azteca 3456','México D.F.',NULL,'10332','Mexico'),(10843,84,4,'2008-01-21 00:00:00','2008-02-18 00:00:00','2008-01-26 00:00:00',2,9.26,'Ship to 84-C','5678, rue du Commerce','Lyon',NULL,'10344','France'),(10844,59,8,'2008-01-21 00:00:00','2008-02-18 00:00:00','2008-01-26 00:00:00',2,25.22,'Ship to 59-A','Geislweg 6789','Salzburg',NULL,'10264','Austria'),(10845,63,8,'2008-01-21 00:00:00','2008-02-04 00:00:00','2008-01-30 00:00:00',1,212.98,'Ship to 63-A','Taucherstraße 1234','Cunewalde',NULL,'10279','Germany'),(10846,76,2,'2008-01-22 00:00:00','2008-03-05 00:00:00','2008-01-23 00:00:00',3,56.46,'Ship to 76-C','Boulevard Tirou, 0123','Charleroi',NULL,'10319','Belgium'),(10847,71,4,'2008-01-22 00:00:00','2008-02-05 00:00:00','2008-02-10 00:00:00',3,487.57,'Ship to 71-A','7890 Suffolk Ln.','Boise','Id','10305','USA'),(10848,16,7,'2008-01-23 00:00:00','2008-02-20 00:00:00','2008-01-29 00:00:00',2,38.24,'Destination QKQNB','Berkeley Gardens 5678  Brewery','London',NULL,'10143','UK'),(10849,39,9,'2008-01-23 00:00:00','2008-02-20 00:00:00','2008-01-30 00:00:00',2,0.56,'Destination DKMQA','Maubelstr. 0123','Brandenburg',NULL,'10208','Germany'),(10850,84,1,'2008-01-23 00:00:00','2008-03-06 00:00:00','2008-01-30 00:00:00',1,49.19,'Ship to 84-C','5678, rue du Commerce','Lyon',NULL,'10344','France'),(10851,67,5,'2008-01-26 00:00:00','2008-02-23 00:00:00','2008-02-02 00:00:00',1,160.55,'Ship to 67-C','Av. Copacabana, 5678','Rio de Janeiro','RJ','10293','Brazil'),(10852,65,8,'2008-01-26 00:00:00','2008-02-09 00:00:00','2008-01-30 00:00:00',1,174.05,'Ship to 65-A','7890 Milton Dr.','Albuquerque','NM','10285','USA'),(10853,6,9,'2008-01-27 00:00:00','2008-02-24 00:00:00','2008-02-03 00:00:00',2,53.83,'Ship to 6-B','Forsterstr. 3456','Mannheim',NULL,'10301','Germany'),(10854,20,3,'2008-01-27 00:00:00','2008-02-24 00:00:00','2008-02-05 00:00:00',2,100.22,'Destination CUVPF','Kirchgasse 1234','Graz',NULL,'10159','Austria'),(10855,55,3,'2008-01-27 00:00:00','2008-02-24 00:00:00','2008-02-04 00:00:00',1,170.97,'Ship to 55-A','7890 Bering St.','Anchorage','AK','10255','USA'),(10856,3,3,'2008-01-28 00:00:00','2008-02-25 00:00:00','2008-02-10 00:00:00',2,58.43,'Destination FQFLS','Mataderos  3456','México D.F.',NULL,'10211','Mexico'),(10857,5,8,'2008-01-28 00:00:00','2008-02-25 00:00:00','2008-02-06 00:00:00',2,188.85,'Ship to 5-B','Berguvsvägen  0123','Luleå',NULL,'10268','Sweden'),(10858,40,2,'2008-01-29 00:00:00','2008-02-26 00:00:00','2008-02-03 00:00:00',1,52.51,'Destination POAEW','7890, avenue de l\'Europe','Versailles',NULL,'10215','France'),(10859,25,1,'2008-01-29 00:00:00','2008-02-26 00:00:00','2008-02-02 00:00:00',2,76.10,'Destination QOCBL','Berliner Platz 1234','München',NULL,'10169','Germany'),(10860,26,3,'2008-01-29 00:00:00','2008-02-26 00:00:00','2008-02-04 00:00:00',3,19.26,'Destination XBVKN','3456, rue Royale','Nantes',NULL,'10171','France'),(10861,89,4,'2008-01-30 00:00:00','2008-02-27 00:00:00','2008-02-17 00:00:00',2,14.93,'Ship to 89-C','9012 - 12th Ave. S.','Seattle','WA','10358','USA'),(10862,44,8,'2008-01-30 00:00:00','2008-03-13 00:00:00','2008-02-02 00:00:00',2,53.23,'Ship to 44-C','Magazinweg 6789','Frankfurt a.M.',NULL,'10224','Germany'),(10863,35,4,'2008-02-02 00:00:00','2008-03-02 00:00:00','2008-02-17 00:00:00',2,30.26,'Destination UOUWK','Carrera 9012 con Ave. Carlos Soublette #8-35','San Cristóbal','Táchira','10197','Venezuela'),(10864,4,4,'2008-02-02 00:00:00','2008-03-02 00:00:00','2008-02-09 00:00:00',2,3.04,'Ship to 4-C','Brook Farm Stratford St. Mary 2345','Colchester','Essex','10240','UK'),(10865,63,2,'2008-02-02 00:00:00','2008-02-16 00:00:00','2008-02-12 00:00:00',1,348.14,'Ship to 63-A','Taucherstraße 1234','Cunewalde',NULL,'10279','Germany'),(10866,5,5,'2008-02-03 00:00:00','2008-03-03 00:00:00','2008-02-12 00:00:00',1,109.11,'Ship to 5-B','Berguvsvägen  0123','Luleå',NULL,'10268','Sweden'),(10867,48,6,'2008-02-03 00:00:00','2008-03-17 00:00:00','2008-02-11 00:00:00',1,1.93,'Ship to 48-B','6789 Chiaroscuro Rd.','Portland','OR','10233','USA'),(10868,62,7,'2008-02-04 00:00:00','2008-03-04 00:00:00','2008-02-23 00:00:00',2,191.27,'Ship to 62-C','Alameda dos Canàrios, 0123','Sao Paulo','SP','10278','Brazil'),(10869,72,5,'2008-02-04 00:00:00','2008-03-04 00:00:00','2008-02-09 00:00:00',1,143.28,'Ship to 72-A','0123 Wadhurst Rd.','London',NULL,'10308','UK'),(10870,91,5,'2008-02-04 00:00:00','2008-03-04 00:00:00','2008-02-13 00:00:00',3,12.04,'Ship to 91-A','ul. Filtrowa 5678','Warszawa',NULL,'10364','Poland'),(10871,9,9,'2008-02-05 00:00:00','2008-03-05 00:00:00','2008-02-10 00:00:00',2,112.27,'Ship to 9-B','9012, rue des Bouchers','Marseille',NULL,'10368','France'),(10872,30,5,'2008-02-05 00:00:00','2008-03-05 00:00:00','2008-02-09 00:00:00',2,175.32,'Destination GGQIR','C/ Romero, 6789','Sevilla',NULL,'10184','Spain'),(10873,90,4,'2008-02-06 00:00:00','2008-03-06 00:00:00','2008-02-09 00:00:00',1,0.82,'Ship to 90-B','Keskuskatu 3456','Helsinki',NULL,'10362','Finland'),(10874,30,5,'2008-02-06 00:00:00','2008-03-06 00:00:00','2008-02-11 00:00:00',2,19.58,'Destination IIYDD','C/ Romero, 5678','Sevilla',NULL,'10183','Spain'),(10875,5,4,'2008-02-06 00:00:00','2008-03-06 00:00:00','2008-03-03 00:00:00',2,32.37,'Ship to 5-A','Berguvsvägen  9012','Luleå',NULL,'10267','Sweden'),(10876,9,7,'2008-02-09 00:00:00','2008-03-09 00:00:00','2008-02-12 00:00:00',3,60.42,'Ship to 9-A','8901, rue des Bouchers','Marseille',NULL,'10367','France'),(10877,67,1,'2008-02-09 00:00:00','2008-03-09 00:00:00','2008-02-19 00:00:00',1,38.06,'Ship to 67-B','Av. Copacabana, 4567','Rio de Janeiro','RJ','10292','Brazil'),(10878,63,4,'2008-02-10 00:00:00','2008-03-10 00:00:00','2008-02-12 00:00:00',1,46.69,'Ship to 63-B','Taucherstraße 2345','Cunewalde',NULL,'10280','Germany'),(10879,90,3,'2008-02-10 00:00:00','2008-03-10 00:00:00','2008-02-12 00:00:00',3,8.50,'Ship to 90-A','Keskuskatu 2345','Helsinki',NULL,'10361','Finland'),(10880,24,7,'2008-02-10 00:00:00','2008-03-24 00:00:00','2008-02-18 00:00:00',1,88.01,'Destination KBSBN','Åkergatan 9012','Bräcke',NULL,'10167','Sweden'),(10881,12,4,'2008-02-11 00:00:00','2008-03-11 00:00:00','2008-02-18 00:00:00',1,2.84,'Destination IGLOB','Cerrito 7890','Buenos Aires',NULL,'10135','Argentina'),(10882,71,4,'2008-02-11 00:00:00','2008-03-11 00:00:00','2008-02-20 00:00:00',3,23.10,'Ship to 71-B','8901 Suffolk Ln.','Boise','Id','10306','USA'),(10883,48,8,'2008-02-12 00:00:00','2008-03-12 00:00:00','2008-02-20 00:00:00',3,0.53,'Ship to 48-C','7890 Chiaroscuro Rd.','Portland','OR','10234','USA'),(10884,45,4,'2008-02-12 00:00:00','2008-03-12 00:00:00','2008-02-13 00:00:00',2,90.97,'Ship to 45-C','9012 Polk St. Suite 5','San Francisco','CA','10226','USA'),(10885,76,6,'2008-02-12 00:00:00','2008-03-12 00:00:00','2008-02-18 00:00:00',3,5.64,'Ship to 76-B','Boulevard Tirou, 9012','Charleroi',NULL,'10318','Belgium'),(10886,34,1,'2008-02-13 00:00:00','2008-03-13 00:00:00','2008-03-02 00:00:00',1,4.99,'Destination SCQXA','Rua do Paço, 7890','Rio de Janeiro','RJ','10195','Brazil'),(10887,29,8,'2008-02-13 00:00:00','2008-03-13 00:00:00','2008-02-16 00:00:00',3,1.25,'Destination VPNNG','Rambla de Cataluña, 0123','Barcelona',NULL,'10178','Spain'),(10888,30,1,'2008-02-16 00:00:00','2008-03-16 00:00:00','2008-02-23 00:00:00',2,51.87,'Destination IIYDD','C/ Romero, 5678','Sevilla',NULL,'10183','Spain'),(10889,65,9,'2008-02-16 00:00:00','2008-03-16 00:00:00','2008-02-23 00:00:00',3,280.61,'Ship to 65-C','9012 Milton Dr.','Albuquerque','NM','10287','USA'),(10890,18,7,'2008-02-16 00:00:00','2008-03-16 00:00:00','2008-02-18 00:00:00',1,32.76,'Destination JNSYI','1234, rue des Cinquante Otages','Nantes',NULL,'10149','France'),(10891,44,7,'2008-02-17 00:00:00','2008-03-17 00:00:00','2008-02-19 00:00:00',2,20.37,'Ship to 44-A','Magazinweg 4567','Frankfurt a.M.',NULL,'10222','Germany'),(10892,50,4,'2008-02-17 00:00:00','2008-03-17 00:00:00','2008-02-19 00:00:00',2,120.27,'Ship to 50-A','Rue Joseph-Bens 3456','Bruxelles',NULL,'10241','Belgium'),(10893,39,9,'2008-02-18 00:00:00','2008-03-18 00:00:00','2008-02-20 00:00:00',2,77.78,'Destination RMBHM','Maubelstr. 1234','Brandenburg',NULL,'10209','Germany'),(10894,71,1,'2008-02-18 00:00:00','2008-03-18 00:00:00','2008-02-20 00:00:00',1,116.13,'Ship to 71-A','7890 Suffolk Ln.','Boise','Id','10305','USA'),(10895,20,3,'2008-02-18 00:00:00','2008-03-18 00:00:00','2008-02-23 00:00:00',1,162.75,'Destination CUVPF','Kirchgasse 1234','Graz',NULL,'10159','Austria'),(10896,50,7,'2008-02-19 00:00:00','2008-03-19 00:00:00','2008-02-27 00:00:00',3,32.45,'Ship to 50-A','Rue Joseph-Bens 3456','Bruxelles',NULL,'10241','Belgium'),(10897,37,3,'2008-02-19 00:00:00','2008-03-19 00:00:00','2008-02-25 00:00:00',2,603.54,'Destination DGKOU','6789 Johnstown Road','Cork','Co. Cork','10204','Ireland'),(10898,54,4,'2008-02-20 00:00:00','2008-03-20 00:00:00','2008-03-06 00:00:00',2,1.27,'Ship to 54-B','Ing. Gustavo Moncada 5678 Piso 20-A','Buenos Aires',NULL,'10253','Argentina'),(10899,46,5,'2008-02-20 00:00:00','2008-03-20 00:00:00','2008-02-26 00:00:00',3,1.21,'Ship to 46-C','Carrera 2345 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto','Lara','10229','Venezuela'),(10900,88,1,'2008-02-20 00:00:00','2008-03-20 00:00:00','2008-03-04 00:00:00',2,1.66,'Ship to 88-A','Rua do Mercado, 4567','Resende','SP','10353','Brazil'),(10901,35,4,'2008-02-23 00:00:00','2008-03-23 00:00:00','2008-02-26 00:00:00',1,62.09,'Destination UOUWK','Carrera 9012 con Ave. Carlos Soublette #8-35','San Cristóbal','Táchira','10197','Venezuela'),(10902,24,1,'2008-02-23 00:00:00','2008-03-23 00:00:00','2008-03-03 00:00:00',1,44.15,'Destination NCKKO','Åkergatan 7890','Bräcke',NULL,'10165','Sweden'),(10903,34,3,'2008-02-24 00:00:00','2008-03-24 00:00:00','2008-03-04 00:00:00',3,36.71,'Destination DPCVR','Rua do Paço, 6789','Rio de Janeiro','RJ','10194','Brazil'),(10904,89,3,'2008-02-24 00:00:00','2008-03-24 00:00:00','2008-02-27 00:00:00',3,162.95,'Ship to 89-A','7890 - 12th Ave. S.','Seattle','WA','10356','USA'),(10905,88,9,'2008-02-24 00:00:00','2008-03-24 00:00:00','2008-03-06 00:00:00',2,13.72,'Ship to 88-A','Rua do Mercado, 4567','Resende','SP','10353','Brazil'),(10906,91,4,'2008-02-25 00:00:00','2008-03-11 00:00:00','2008-03-03 00:00:00',3,26.29,'Ship to 91-B','ul. Filtrowa 6789','Warszawa',NULL,'10365','Poland'),(10907,74,6,'2008-02-25 00:00:00','2008-03-25 00:00:00','2008-02-27 00:00:00',3,9.19,'Ship to 74-B','4567, rue Lauriston','Paris',NULL,'10313','France'),(10908,66,4,'2008-02-26 00:00:00','2008-03-26 00:00:00','2008-03-06 00:00:00',2,32.96,'Ship to 66-B','Strada Provinciale 1234','Reggio Emilia',NULL,'10289','Italy'),(10909,70,1,'2008-02-26 00:00:00','2008-03-26 00:00:00','2008-03-10 00:00:00',2,53.05,'Ship to 70-C','Erling Skakkes gate 6789','Stavern',NULL,'10304','Norway'),(10910,90,1,'2008-02-26 00:00:00','2008-03-26 00:00:00','2008-03-04 00:00:00',3,38.11,'Ship to 90-A','Keskuskatu 2345','Helsinki',NULL,'10361','Finland'),(10911,30,3,'2008-02-26 00:00:00','2008-03-26 00:00:00','2008-03-05 00:00:00',1,38.19,'Destination IIYDD','C/ Romero, 5678','Sevilla',NULL,'10183','Spain'),(10912,37,2,'2008-02-26 00:00:00','2008-03-26 00:00:00','2008-03-18 00:00:00',2,580.91,'Destination DGKOU','6789 Johnstown Road','Cork','Co. Cork','10204','Ireland'),(10913,62,4,'2008-02-26 00:00:00','2008-03-26 00:00:00','2008-03-04 00:00:00',1,33.05,'Ship to 62-A','Alameda dos Canàrios, 8901','Sao Paulo','SP','10276','Brazil'),(10914,62,6,'2008-02-27 00:00:00','2008-03-27 00:00:00','2008-03-02 00:00:00',1,21.19,'Ship to 62-B','Alameda dos Canàrios, 9012','Sao Paulo','SP','10277','Brazil'),(10915,80,2,'2008-02-27 00:00:00','2008-03-27 00:00:00','2008-03-02 00:00:00',2,3.51,'Ship to 80-C','Avda. Azteca 5678','México D.F.',NULL,'10334','Mexico'),(10916,64,1,'2008-02-27 00:00:00','2008-03-27 00:00:00','2008-03-09 00:00:00',2,63.77,'Ship to 64-C','Av. del Libertador 6789','Buenos Aires',NULL,'10284','Argentina'),(10917,69,4,'2008-03-02 00:00:00','2008-03-30 00:00:00','2008-03-11 00:00:00',2,8.29,'Ship to 69-C','Gran Vía, 1234','Madrid',NULL,'10299','Spain'),(10918,10,3,'2008-03-02 00:00:00','2008-03-30 00:00:00','2008-03-11 00:00:00',3,48.83,'Destination OLSSJ','2345 Tsawassen Blvd.','Tsawassen','BC','10130','Canada'),(10919,47,2,'2008-03-02 00:00:00','2008-03-30 00:00:00','2008-03-04 00:00:00',2,19.80,'Ship to 47-B','Ave. 5 de Mayo Porlamar 4567','I. de Margarita','Nueva Esparta','10231','Venezuela'),(10920,4,4,'2008-03-03 00:00:00','2008-03-31 00:00:00','2008-03-09 00:00:00',2,29.61,'Ship to 4-A','Brook Farm Stratford St. Mary 0123','Colchester','Essex','10238','UK'),(10921,83,1,'2008-03-03 00:00:00','2008-04-14 00:00:00','2008-03-09 00:00:00',1,176.48,'Ship to 83-A','Smagsloget 0123','Århus',NULL,'10339','Denmark'),(10922,34,5,'2008-03-03 00:00:00','2008-03-31 00:00:00','2008-03-05 00:00:00',3,62.74,'Destination DPCVR','Rua do Paço, 6789','Rio de Janeiro','RJ','10194','Brazil'),(10923,41,7,'2008-03-03 00:00:00','2008-04-14 00:00:00','2008-03-13 00:00:00',3,68.26,'Destination OLJND','8901 rue Alsace-Lorraine','Toulouse',NULL,'10216','France'),(10924,5,3,'2008-03-04 00:00:00','2008-04-01 00:00:00','2008-04-08 00:00:00',2,151.52,'Ship to 5-A','Berguvsvägen  9012','Luleå',NULL,'10267','Sweden'),(10925,34,3,'2008-03-04 00:00:00','2008-04-01 00:00:00','2008-03-13 00:00:00',1,2.27,'Destination JPAIY','Rua do Paço, 8901','Rio de Janeiro','RJ','10196','Brazil'),(10926,2,4,'2008-03-04 00:00:00','2008-04-01 00:00:00','2008-03-11 00:00:00',3,39.92,'Destination RAIGI','Avda. de la Constitución 4567','México D.F.',NULL,'10182','Mexico'),(10927,40,4,'2008-03-05 00:00:00','2008-04-02 00:00:00','2008-04-08 00:00:00',1,19.79,'Destination WWJLO','6789, avenue de l\'Europe','Versailles',NULL,'10214','France'),(10928,29,1,'2008-03-05 00:00:00','2008-04-02 00:00:00','2008-03-18 00:00:00',1,1.36,'Destination WOFLH','Rambla de Cataluña, 1234','Barcelona',NULL,'10179','Spain'),(10929,25,6,'2008-03-05 00:00:00','2008-04-02 00:00:00','2008-03-12 00:00:00',1,33.93,'Destination QOCBL','Berliner Platz 1234','München',NULL,'10169','Germany'),(10930,76,4,'2008-03-06 00:00:00','2008-04-17 00:00:00','2008-03-18 00:00:00',3,15.55,'Ship to 76-A','Boulevard Tirou, 8901','Charleroi',NULL,'10317','Belgium'),(10931,68,4,'2008-03-06 00:00:00','2008-03-20 00:00:00','2008-03-19 00:00:00',2,13.60,'Ship to 68-B','Starenweg 7890','Genève',NULL,'10295','Switzerland'),(10932,9,8,'2008-03-06 00:00:00','2008-04-03 00:00:00','2008-03-24 00:00:00',1,134.64,'Ship to 9-B','9012, rue des Bouchers','Marseille',NULL,'10368','France'),(10933,38,6,'2008-03-06 00:00:00','2008-04-03 00:00:00','2008-03-16 00:00:00',3,54.15,'Destination QVTLW','Garden House Crowther Way 7890','Cowes','Isle of Wight','10205','UK'),(10934,44,3,'2008-03-09 00:00:00','2008-04-06 00:00:00','2008-03-12 00:00:00',3,32.01,'Ship to 44-C','Magazinweg 6789','Frankfurt a.M.',NULL,'10224','Germany'),(10935,88,4,'2008-03-09 00:00:00','2008-04-06 00:00:00','2008-03-18 00:00:00',3,47.59,'Ship to 88-A','Rua do Mercado, 4567','Resende','SP','10353','Brazil'),(10936,32,3,'2008-03-09 00:00:00','2008-04-06 00:00:00','2008-03-18 00:00:00',2,33.68,'Destination AVQUS','2345 Baker Blvd.','Eugene','OR','10190','USA'),(10937,12,7,'2008-03-10 00:00:00','2008-03-24 00:00:00','2008-03-13 00:00:00',3,31.51,'Destination QTHBC','Cerrito 6789','Buenos Aires',NULL,'10134','Argentina'),(10938,63,3,'2008-03-10 00:00:00','2008-04-07 00:00:00','2008-03-16 00:00:00',2,31.89,'Ship to 63-C','Taucherstraße 3456','Cunewalde',NULL,'10281','Germany'),(10939,49,2,'2008-03-10 00:00:00','2008-04-07 00:00:00','2008-03-13 00:00:00',2,76.33,'Ship to 49-A','Via Ludovico il Moro 8901','Bergamo',NULL,'10235','Italy'),(10940,9,8,'2008-03-11 00:00:00','2008-04-08 00:00:00','2008-03-23 00:00:00',3,19.77,'Ship to 9-C','0123, rue des Bouchers','Marseille',NULL,'10369','France'),(10941,71,7,'2008-03-11 00:00:00','2008-04-08 00:00:00','2008-03-20 00:00:00',2,400.81,'Ship to 71-A','7890 Suffolk Ln.','Boise','Id','10305','USA'),(10942,66,9,'2008-03-11 00:00:00','2008-04-08 00:00:00','2008-03-18 00:00:00',3,17.95,'Ship to 66-C','Strada Provinciale 2345','Reggio Emilia',NULL,'10290','Italy'),(10943,11,4,'2008-03-11 00:00:00','2008-04-08 00:00:00','2008-03-19 00:00:00',2,2.17,'Destination NZASL','Fauntleroy Circus 5678','London',NULL,'10133','UK'),(10944,10,6,'2008-03-12 00:00:00','2008-03-26 00:00:00','2008-03-13 00:00:00',3,52.92,'Destination XJIBQ','1234 Tsawassen Blvd.','Tsawassen','BC','10129','Canada'),(10945,52,4,'2008-03-12 00:00:00','2008-04-09 00:00:00','2008-03-18 00:00:00',1,10.22,'Ship to 52-B','Heerstr. 0123','Leipzig',NULL,'10248','Germany'),(10946,83,1,'2008-03-12 00:00:00','2008-04-09 00:00:00','2008-03-19 00:00:00',2,27.20,'Ship to 83-B','Smagsloget 1234','Århus',NULL,'10340','Denmark'),(10947,11,3,'2008-03-13 00:00:00','2008-04-10 00:00:00','2008-03-16 00:00:00',2,3.26,'Destination NZASL','Fauntleroy Circus 5678','London',NULL,'10133','UK'),(10948,30,3,'2008-03-13 00:00:00','2008-04-10 00:00:00','2008-03-19 00:00:00',3,23.39,'Destination GGQIR','C/ Romero, 6789','Sevilla',NULL,'10184','Spain'),(10949,10,2,'2008-03-13 00:00:00','2008-04-10 00:00:00','2008-03-17 00:00:00',3,74.44,'Destination OLSSJ','2345 Tsawassen Blvd.','Tsawassen','BC','10130','Canada'),(10950,49,1,'2008-03-16 00:00:00','2008-04-13 00:00:00','2008-03-23 00:00:00',2,2.50,'Ship to 49-B','Via Ludovico il Moro 9012','Bergamo',NULL,'10236','Italy'),(10951,68,9,'2008-03-16 00:00:00','2008-04-27 00:00:00','2008-04-07 00:00:00',2,30.85,'Ship to 68-A','Starenweg 6789','Genève',NULL,'10294','Switzerland'),(10952,1,1,'2008-03-16 00:00:00','2008-04-27 00:00:00','2008-03-24 00:00:00',1,40.42,'Destination LOUIE','Obere Str. 6789','Berlin',NULL,'10154','Germany'),(10953,4,9,'2008-03-16 00:00:00','2008-03-30 00:00:00','2008-03-25 00:00:00',2,23.72,'Ship to 4-B','Brook Farm Stratford St. Mary 1234','Colchester','Essex','10239','UK'),(10954,47,5,'2008-03-17 00:00:00','2008-04-28 00:00:00','2008-03-20 00:00:00',1,27.91,'Ship to 47-B','Ave. 5 de Mayo Porlamar 4567','I. de Margarita','Nueva Esparta','10231','Venezuela'),(10955,24,8,'2008-03-17 00:00:00','2008-04-14 00:00:00','2008-03-20 00:00:00',2,3.26,'Destination YCMPK','Åkergatan 8901','Bräcke',NULL,'10166','Sweden'),(10956,6,6,'2008-03-17 00:00:00','2008-04-28 00:00:00','2008-03-20 00:00:00',2,44.65,'Ship to 6-B','Forsterstr. 3456','Mannheim',NULL,'10301','Germany'),(10957,35,8,'2008-03-18 00:00:00','2008-04-15 00:00:00','2008-03-27 00:00:00',3,105.36,'Destination UOUWK','Carrera 9012 con Ave. Carlos Soublette #8-35','San Cristóbal','Táchira','10197','Venezuela'),(10958,54,7,'2008-03-18 00:00:00','2008-04-15 00:00:00','2008-03-27 00:00:00',2,49.56,'Ship to 54-C','Ing. Gustavo Moncada 6789 Piso 20-A','Buenos Aires',NULL,'10254','Argentina'),(10959,31,6,'2008-03-18 00:00:00','2008-04-29 00:00:00','2008-03-23 00:00:00',2,4.98,'Destination GWPFK','Av. Brasil, 0123','Campinas','SP','10188','Brazil'),(10960,35,3,'2008-03-19 00:00:00','2008-04-02 00:00:00','2008-04-08 00:00:00',1,2.08,'Destination SXYQX','Carrera 0123 con Ave. Carlos Soublette #8-35','San Cristóbal','Táchira','10198','Venezuela'),(10961,62,8,'2008-03-19 00:00:00','2008-04-16 00:00:00','2008-03-30 00:00:00',1,104.47,'Ship to 62-A','Alameda dos Canàrios, 8901','Sao Paulo','SP','10276','Brazil'),(10962,63,8,'2008-03-19 00:00:00','2008-04-16 00:00:00','2008-03-23 00:00:00',2,275.79,'Ship to 63-B','Taucherstraße 2345','Cunewalde',NULL,'10280','Germany'),(10963,28,9,'2008-03-19 00:00:00','2008-04-16 00:00:00','2008-03-26 00:00:00',3,2.70,'Destination CIRQO','Jardim das rosas n. 8901','Lisboa',NULL,'10176','Portugal'),(10964,74,3,'2008-03-20 00:00:00','2008-04-17 00:00:00','2008-03-24 00:00:00',2,87.38,'Ship to 74-B','4567, rue Lauriston','Paris',NULL,'10313','France'),(10965,55,6,'2008-03-20 00:00:00','2008-04-17 00:00:00','2008-03-30 00:00:00',3,144.38,'Ship to 55-B','8901 Bering St.','Anchorage','AK','10256','USA'),(10966,14,4,'2008-03-20 00:00:00','2008-04-17 00:00:00','2008-04-08 00:00:00',1,27.19,'Destination NRTZZ','Hauptstr. 0123','Bern',NULL,'10138','Switzerland'),(10967,79,2,'2008-03-23 00:00:00','2008-04-20 00:00:00','2008-04-02 00:00:00',2,62.22,'Ship to 79-B','Luisenstr. 8901','Münster',NULL,'10327','Germany'),(10968,20,1,'2008-03-23 00:00:00','2008-04-20 00:00:00','2008-04-01 00:00:00',3,74.60,'Destination CUVPF','Kirchgasse 1234','Graz',NULL,'10159','Austria'),(10969,15,1,'2008-03-23 00:00:00','2008-04-20 00:00:00','2008-03-30 00:00:00',2,0.21,'Destination EVHYA','Av. dos Lusíadas, 3456','Sao Paulo','SP','10141','Brazil'),(10970,8,9,'2008-03-24 00:00:00','2008-04-07 00:00:00','2008-04-24 00:00:00',1,16.16,'Ship to 8-C','C/ Araquil, 1234','Madrid',NULL,'10360','Spain'),(10971,26,2,'2008-03-24 00:00:00','2008-04-21 00:00:00','2008-04-02 00:00:00',2,121.82,'Destination XBVKN','3456, rue Royale','Nantes',NULL,'10171','France'),(10972,40,4,'2008-03-24 00:00:00','2008-04-21 00:00:00','2008-03-26 00:00:00',2,0.02,'Destination MVTWX','5678, avenue de l\'Europe','Versailles',NULL,'10213','France'),(10973,40,6,'2008-03-24 00:00:00','2008-04-21 00:00:00','2008-03-27 00:00:00',2,15.17,'Destination WWJLO','6789, avenue de l\'Europe','Versailles',NULL,'10214','France'),(10974,75,3,'2008-03-25 00:00:00','2008-04-08 00:00:00','2008-04-03 00:00:00',3,12.96,'Ship to 75-B','P.O. Box 6789','Lander','WY','10315','USA'),(10975,10,1,'2008-03-25 00:00:00','2008-04-22 00:00:00','2008-03-27 00:00:00',3,32.27,'Destination OLSSJ','2345 Tsawassen Blvd.','Tsawassen','BC','10130','Canada'),(10976,35,1,'2008-03-25 00:00:00','2008-05-06 00:00:00','2008-04-03 00:00:00',1,37.97,'Destination SXYQX','Carrera 0123 con Ave. Carlos Soublette #8-35','San Cristóbal','Táchira','10198','Venezuela'),(10977,24,8,'2008-03-26 00:00:00','2008-04-23 00:00:00','2008-04-10 00:00:00',3,208.50,'Destination NCKKO','Åkergatan 7890','Bräcke',NULL,'10165','Sweden'),(10978,50,9,'2008-03-26 00:00:00','2008-04-23 00:00:00','2008-04-23 00:00:00',2,32.82,'Ship to 50-A','Rue Joseph-Bens 3456','Bruxelles',NULL,'10241','Belgium'),(10979,20,8,'2008-03-26 00:00:00','2008-04-23 00:00:00','2008-03-31 00:00:00',2,353.07,'Destination CUVPF','Kirchgasse 1234','Graz',NULL,'10159','Austria'),(10980,24,4,'2008-03-27 00:00:00','2008-05-08 00:00:00','2008-04-17 00:00:00',1,1.26,'Destination YCMPK','Åkergatan 8901','Bräcke',NULL,'10166','Sweden'),(10981,34,1,'2008-03-27 00:00:00','2008-04-24 00:00:00','2008-04-02 00:00:00',2,193.37,'Destination JPAIY','Rua do Paço, 8901','Rio de Janeiro','RJ','10196','Brazil'),(10982,10,2,'2008-03-27 00:00:00','2008-04-24 00:00:00','2008-04-08 00:00:00',1,14.01,'Destination XJIBQ','1234 Tsawassen Blvd.','Tsawassen','BC','10129','Canada'),(10983,71,2,'2008-03-27 00:00:00','2008-04-24 00:00:00','2008-04-06 00:00:00',2,657.54,'Ship to 71-B','8901 Suffolk Ln.','Boise','Id','10306','USA'),(10984,71,1,'2008-03-30 00:00:00','2008-04-27 00:00:00','2008-04-03 00:00:00',3,211.22,'Ship to 71-B','8901 Suffolk Ln.','Boise','Id','10306','USA'),(10985,37,2,'2008-03-30 00:00:00','2008-04-27 00:00:00','2008-04-02 00:00:00',1,91.51,'Destination ATSOA','4567 Johnstown Road','Cork','Co. Cork','10202','Ireland'),(10986,54,8,'2008-03-30 00:00:00','2008-04-27 00:00:00','2008-04-21 00:00:00',2,217.86,'Ship to 54-A','Ing. Gustavo Moncada 4567 Piso 20-A','Buenos Aires',NULL,'10252','Argentina'),(10987,19,8,'2008-03-31 00:00:00','2008-04-28 00:00:00','2008-04-06 00:00:00',1,185.48,'Destination FRCGJ','5678 King George','London',NULL,'10153','UK'),(10988,65,3,'2008-03-31 00:00:00','2008-04-28 00:00:00','2008-04-10 00:00:00',2,61.14,'Ship to 65-A','7890 Milton Dr.','Albuquerque','NM','10285','USA'),(10989,61,2,'2008-03-31 00:00:00','2008-04-28 00:00:00','2008-04-02 00:00:00',1,34.76,'Ship to 61-A','Rua da Panificadora, 5678','Rio de Janeiro','RJ','10273','Brazil'),(10990,20,2,'2008-04-01 00:00:00','2008-05-13 00:00:00','2008-04-07 00:00:00',3,117.61,'Destination RVDMF','Kirchgasse 9012','Graz',NULL,'10157','Austria'),(10991,63,1,'2008-04-01 00:00:00','2008-04-29 00:00:00','2008-04-07 00:00:00',1,38.51,'Ship to 63-A','Taucherstraße 1234','Cunewalde',NULL,'10279','Germany'),(10992,77,1,'2008-04-01 00:00:00','2008-04-29 00:00:00','2008-04-03 00:00:00',3,4.27,'Ship to 77-C','3456 Jefferson Way Suite 2','Portland','OR','10322','USA'),(10993,24,7,'2008-04-01 00:00:00','2008-04-29 00:00:00','2008-04-10 00:00:00',3,8.81,'Destination NCKKO','Åkergatan 7890','Bräcke',NULL,'10165','Sweden'),(10994,83,2,'2008-04-02 00:00:00','2008-04-16 00:00:00','2008-04-09 00:00:00',3,65.53,'Ship to 83-C','Smagsloget 2345','Århus',NULL,'10341','Denmark'),(10995,58,1,'2008-04-02 00:00:00','2008-04-30 00:00:00','2008-04-06 00:00:00',3,46.00,'Ship to 58-B','Calle Dr. Jorge Cash 4567','México D.F.',NULL,'10262','Mexico'),(10996,63,4,'2008-04-02 00:00:00','2008-04-30 00:00:00','2008-04-10 00:00:00',2,1.12,'Ship to 63-C','Taucherstraße 3456','Cunewalde',NULL,'10281','Germany'),(10997,46,8,'2008-04-03 00:00:00','2008-05-15 00:00:00','2008-04-13 00:00:00',2,73.91,'Ship to 46-A','Carrera 0123 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto','Lara','10227','Venezuela'),(10998,91,8,'2008-04-03 00:00:00','2008-04-17 00:00:00','2008-04-17 00:00:00',2,20.31,'Ship to 91-A','ul. Filtrowa 5678','Warszawa',NULL,'10364','Poland'),(10999,56,6,'2008-04-03 00:00:00','2008-05-01 00:00:00','2008-04-10 00:00:00',2,96.35,'Ship to 56-B','Mehrheimerstr. 1234','Köln',NULL,'10259','Germany'),(11000,65,2,'2008-04-06 00:00:00','2008-05-04 00:00:00','2008-04-14 00:00:00',3,55.12,'Ship to 65-A','7890 Milton Dr.','Albuquerque','NM','10285','USA'),(11001,24,2,'2008-04-06 00:00:00','2008-05-04 00:00:00','2008-04-14 00:00:00',2,197.30,'Destination YCMPK','Åkergatan 8901','Bräcke',NULL,'10166','Sweden'),(11002,71,4,'2008-04-06 00:00:00','2008-05-04 00:00:00','2008-04-16 00:00:00',1,141.16,'Ship to 71-A','7890 Suffolk Ln.','Boise','Id','10305','USA'),(11003,78,3,'2008-04-06 00:00:00','2008-05-04 00:00:00','2008-04-08 00:00:00',3,14.91,'Ship to 78-B','5678 Grizzly Peak Rd.','Butte','MT','10324','USA'),(11004,50,3,'2008-04-07 00:00:00','2008-05-05 00:00:00','2008-04-20 00:00:00',1,44.84,'Ship to 50-C','Rue Joseph-Bens 5678','Bruxelles',NULL,'10243','Belgium'),(11005,90,2,'2008-04-07 00:00:00','2008-05-05 00:00:00','2008-04-10 00:00:00',1,0.75,'Ship to 90-A','Keskuskatu 2345','Helsinki',NULL,'10361','Finland'),(11006,32,3,'2008-04-07 00:00:00','2008-05-05 00:00:00','2008-04-15 00:00:00',2,25.19,'Destination LLUXZ','1234 Baker Blvd.','Eugene','OR','10189','USA'),(11007,60,8,'2008-04-08 00:00:00','2008-05-06 00:00:00','2008-04-13 00:00:00',2,202.24,'Ship to 60-C','Estrada da saúde n. 4567','Lisboa',NULL,'10272','Portugal'),(11008,20,7,'2008-04-08 00:00:00','2008-05-06 00:00:00',NULL,3,79.46,'Destination CUVPF','Kirchgasse 1234','Graz',NULL,'10159','Austria'),(11009,30,2,'2008-04-08 00:00:00','2008-05-06 00:00:00','2008-04-10 00:00:00',1,59.11,'Destination WVLDH','C/ Romero, 7890','Sevilla',NULL,'10185','Spain'),(11010,66,2,'2008-04-09 00:00:00','2008-05-07 00:00:00','2008-04-21 00:00:00',2,28.71,'Ship to 66-A','Strada Provinciale 0123','Reggio Emilia',NULL,'10288','Italy'),(11011,1,3,'2008-04-09 00:00:00','2008-05-07 00:00:00','2008-04-13 00:00:00',1,1.21,'Destination LOUIE','Obere Str. 6789','Berlin',NULL,'10154','Germany'),(11012,25,1,'2008-04-09 00:00:00','2008-04-23 00:00:00','2008-04-17 00:00:00',3,242.95,'Destination WEGWI','Berliner Platz 2345','München',NULL,'10170','Germany'),(11013,69,2,'2008-04-09 00:00:00','2008-05-07 00:00:00','2008-04-10 00:00:00',1,32.99,'Ship to 69-A','Gran Vía, 9012','Madrid',NULL,'10297','Spain'),(11014,47,2,'2008-04-10 00:00:00','2008-05-08 00:00:00','2008-04-15 00:00:00',3,23.60,'Ship to 47-A','Ave. 5 de Mayo Porlamar 3456','I. de Margarita','Nueva Esparta','10230','Venezuela'),(11015,70,2,'2008-04-10 00:00:00','2008-04-24 00:00:00','2008-04-20 00:00:00',2,4.62,'Ship to 70-C','Erling Skakkes gate 6789','Stavern',NULL,'10304','Norway'),(11016,4,9,'2008-04-10 00:00:00','2008-05-08 00:00:00','2008-04-13 00:00:00',2,33.80,'Ship to 4-A','Brook Farm Stratford St. Mary 0123','Colchester','Essex','10238','UK'),(11017,20,9,'2008-04-13 00:00:00','2008-05-11 00:00:00','2008-04-20 00:00:00',2,754.26,'Destination CUVPF','Kirchgasse 1234','Graz',NULL,'10159','Austria'),(11018,48,4,'2008-04-13 00:00:00','2008-05-11 00:00:00','2008-04-16 00:00:00',2,11.65,'Ship to 48-B','6789 Chiaroscuro Rd.','Portland','OR','10233','USA'),(11019,64,6,'2008-04-13 00:00:00','2008-05-11 00:00:00',NULL,3,3.17,'Ship to 64-B','Av. del Libertador 5678','Buenos Aires',NULL,'10283','Argentina'),(11020,56,2,'2008-04-14 00:00:00','2008-05-12 00:00:00','2008-04-16 00:00:00',2,43.30,'Ship to 56-B','Mehrheimerstr. 1234','Köln',NULL,'10259','Germany'),(11021,63,3,'2008-04-14 00:00:00','2008-05-12 00:00:00','2008-04-21 00:00:00',1,297.18,'Ship to 63-B','Taucherstraße 2345','Cunewalde',NULL,'10280','Germany'),(11022,34,9,'2008-04-14 00:00:00','2008-05-12 00:00:00','2008-05-04 00:00:00',2,6.27,'Destination SCQXA','Rua do Paço, 7890','Rio de Janeiro','RJ','10195','Brazil'),(11023,11,1,'2008-04-14 00:00:00','2008-04-28 00:00:00','2008-04-24 00:00:00',2,123.83,'Destination NZASL','Fauntleroy Circus 5678','London',NULL,'10133','UK'),(11024,19,4,'2008-04-15 00:00:00','2008-05-13 00:00:00','2008-04-20 00:00:00',1,74.36,'Destination BBMRT','4567 King George','London',NULL,'10152','UK'),(11025,87,6,'2008-04-15 00:00:00','2008-05-13 00:00:00','2008-04-24 00:00:00',3,29.17,'Ship to 87-C','Torikatu 3456','Oulu',NULL,'10352','Finland'),(11026,27,4,'2008-04-15 00:00:00','2008-05-13 00:00:00','2008-04-28 00:00:00',1,47.09,'Destination DICGM','Via Monte Bianco 7890','Torino',NULL,'10175','Italy'),(11027,10,1,'2008-04-16 00:00:00','2008-05-14 00:00:00','2008-04-20 00:00:00',1,52.52,'Destination XJIBQ','1234 Tsawassen Blvd.','Tsawassen','BC','10129','Canada'),(11028,39,2,'2008-04-16 00:00:00','2008-05-14 00:00:00','2008-04-22 00:00:00',1,29.59,'Destination DKMQA','Maubelstr. 0123','Brandenburg',NULL,'10208','Germany'),(11029,14,4,'2008-04-16 00:00:00','2008-05-14 00:00:00','2008-04-27 00:00:00',1,47.84,'Destination YUJRD','Hauptstr. 1234','Bern',NULL,'10139','Switzerland'),(11030,71,7,'2008-04-17 00:00:00','2008-05-15 00:00:00','2008-04-27 00:00:00',2,830.75,'Ship to 71-C','9012 Suffolk Ln.','Boise','Id','10307','USA'),(11031,71,6,'2008-04-17 00:00:00','2008-05-15 00:00:00','2008-04-24 00:00:00',2,227.22,'Ship to 71-C','9012 Suffolk Ln.','Boise','Id','10307','USA'),(11032,89,2,'2008-04-17 00:00:00','2008-05-15 00:00:00','2008-04-23 00:00:00',3,606.19,'Ship to 89-B','8901 - 12th Ave. S.','Seattle','WA','10357','USA'),(11033,68,7,'2008-04-17 00:00:00','2008-05-15 00:00:00','2008-04-23 00:00:00',3,84.74,'Ship to 68-A','Starenweg 6789','Genève',NULL,'10294','Switzerland'),(11034,55,8,'2008-04-20 00:00:00','2008-06-01 00:00:00','2008-04-27 00:00:00',1,40.32,'Ship to 55-B','8901 Bering St.','Anchorage','AK','10256','USA'),(11035,76,2,'2008-04-20 00:00:00','2008-05-18 00:00:00','2008-04-24 00:00:00',2,0.17,'Ship to 76-B','Boulevard Tirou, 9012','Charleroi',NULL,'10318','Belgium'),(11036,17,8,'2008-04-20 00:00:00','2008-05-18 00:00:00','2008-04-22 00:00:00',3,149.47,'Destination YPUYI','Walserweg 8901','Aachen',NULL,'10146','Germany'),(11037,30,7,'2008-04-21 00:00:00','2008-05-19 00:00:00','2008-04-27 00:00:00',1,3.20,'Destination GGQIR','C/ Romero, 6789','Sevilla',NULL,'10184','Spain'),(11038,76,1,'2008-04-21 00:00:00','2008-05-19 00:00:00','2008-04-30 00:00:00',2,29.59,'Ship to 76-A','Boulevard Tirou, 8901','Charleroi',NULL,'10317','Belgium'),(11039,47,1,'2008-04-21 00:00:00','2008-05-19 00:00:00',NULL,2,65.00,'Ship to 47-C','Ave. 5 de Mayo Porlamar 5678','I. de Margarita','Nueva Esparta','10232','Venezuela'),(11040,32,4,'2008-04-22 00:00:00','2008-05-20 00:00:00',NULL,3,18.84,'Destination VYOBK','3456 Baker Blvd.','Eugene','OR','10191','USA'),(11041,14,3,'2008-04-22 00:00:00','2008-05-20 00:00:00','2008-04-28 00:00:00',2,48.22,'Destination YUJRD','Hauptstr. 1234','Bern',NULL,'10139','Switzerland'),(11042,15,2,'2008-04-22 00:00:00','2008-05-06 00:00:00','2008-05-01 00:00:00',1,29.99,'Destination EVHYA','Av. dos Lusíadas, 3456','Sao Paulo','SP','10141','Brazil'),(11043,74,5,'2008-04-22 00:00:00','2008-05-20 00:00:00','2008-04-29 00:00:00',2,8.80,'Ship to 74-B','4567, rue Lauriston','Paris',NULL,'10313','France'),(11044,91,4,'2008-04-23 00:00:00','2008-05-21 00:00:00','2008-05-01 00:00:00',1,8.72,'Ship to 91-B','ul. Filtrowa 6789','Warszawa',NULL,'10365','Poland'),(11045,10,6,'2008-04-23 00:00:00','2008-05-21 00:00:00',NULL,2,70.58,'Destination LPHSI','3456 Tsawassen Blvd.','Tsawassen','BC','10131','Canada'),(11046,86,8,'2008-04-23 00:00:00','2008-05-21 00:00:00','2008-04-24 00:00:00',2,71.64,'Ship to 86-C','Adenauerallee 0123','Stuttgart',NULL,'10349','Germany'),(11047,19,7,'2008-04-24 00:00:00','2008-05-22 00:00:00','2008-05-01 00:00:00',3,46.62,'Destination FRCGJ','5678 King George','London',NULL,'10153','UK'),(11048,10,7,'2008-04-24 00:00:00','2008-05-22 00:00:00','2008-04-30 00:00:00',3,24.12,'Destination XJIBQ','1234 Tsawassen Blvd.','Tsawassen','BC','10129','Canada'),(11049,31,3,'2008-04-24 00:00:00','2008-05-22 00:00:00','2008-05-04 00:00:00',1,8.34,'Destination XOIGC','Av. Brasil, 8901','Campinas','SP','10186','Brazil'),(11050,24,8,'2008-04-27 00:00:00','2008-05-25 00:00:00','2008-05-05 00:00:00',2,59.41,'Destination YCMPK','Åkergatan 8901','Bräcke',NULL,'10166','Sweden'),(11051,41,7,'2008-04-27 00:00:00','2008-05-25 00:00:00',NULL,3,2.79,'Destination OLJND','8901 rue Alsace-Lorraine','Toulouse',NULL,'10216','France'),(11052,34,3,'2008-04-27 00:00:00','2008-05-25 00:00:00','2008-05-01 00:00:00',1,67.26,'Destination DPCVR','Rua do Paço, 6789','Rio de Janeiro','RJ','10194','Brazil'),(11053,59,2,'2008-04-27 00:00:00','2008-05-25 00:00:00','2008-04-29 00:00:00',2,53.05,'Ship to 59-A','Geislweg 6789','Salzburg',NULL,'10264','Austria'),(11054,12,8,'2008-04-28 00:00:00','2008-05-26 00:00:00',NULL,1,0.33,'Destination QTHBC','Cerrito 6789','Buenos Aires',NULL,'10134','Argentina'),(11055,35,7,'2008-04-28 00:00:00','2008-05-26 00:00:00','2008-05-05 00:00:00',2,120.92,'Destination JYDLM','Carrera1234 con Ave. Carlos Soublette #8-35','San Cristóbal','Táchira','10199','Venezuela'),(11056,19,8,'2008-04-28 00:00:00','2008-05-12 00:00:00','2008-05-01 00:00:00',2,278.96,'Destination QTKCU','3456 King George','London',NULL,'10151','UK'),(11057,53,3,'2008-04-29 00:00:00','2008-05-27 00:00:00','2008-05-01 00:00:00',3,4.13,'Ship to 53-C','South House 3456 Queensbridge','London',NULL,'10251','UK'),(11058,6,9,'2008-04-29 00:00:00','2008-05-27 00:00:00',NULL,3,31.14,'Ship to 6-A','Forsterstr. 2345','Mannheim',NULL,'10300','Germany'),(11059,67,2,'2008-04-29 00:00:00','2008-06-10 00:00:00',NULL,2,85.80,'Ship to 67-A','Av. Copacabana, 3456','Rio de Janeiro','RJ','10291','Brazil'),(11060,27,2,'2008-04-30 00:00:00','2008-05-28 00:00:00','2008-05-04 00:00:00',2,10.98,'Destination DICGM','Via Monte Bianco 7890','Torino',NULL,'10175','Italy'),(11061,32,4,'2008-04-30 00:00:00','2008-06-11 00:00:00',NULL,3,14.01,'Destination VYOBK','3456 Baker Blvd.','Eugene','OR','10191','USA'),(11062,66,4,'2008-04-30 00:00:00','2008-05-28 00:00:00',NULL,2,29.93,'Ship to 66-B','Strada Provinciale 1234','Reggio Emilia',NULL,'10289','Italy'),(11063,37,3,'2008-04-30 00:00:00','2008-05-28 00:00:00','2008-05-06 00:00:00',2,81.73,'Destination KPVYJ','5678 Johnstown Road','Cork','Co. Cork','10203','Ireland'),(11064,71,1,'2008-05-01 00:00:00','2008-05-29 00:00:00','2008-05-04 00:00:00',1,30.09,'Ship to 71-C','9012 Suffolk Ln.','Boise','Id','10307','USA'),(11065,46,8,'2008-05-01 00:00:00','2008-05-29 00:00:00',NULL,1,12.91,'Ship to 46-C','Carrera 2345 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto','Lara','10229','Venezuela'),(11066,89,7,'2008-05-01 00:00:00','2008-05-29 00:00:00','2008-05-04 00:00:00',2,44.72,'Ship to 89-A','7890 - 12th Ave. S.','Seattle','WA','10356','USA'),(11067,17,1,'2008-05-04 00:00:00','2008-05-18 00:00:00','2008-05-06 00:00:00',2,7.98,'Destination BJCXA','Walserweg 7890','Aachen',NULL,'10145','Germany'),(11068,62,8,'2008-05-04 00:00:00','2008-06-01 00:00:00',NULL,2,81.75,'Ship to 62-A','Alameda dos Canàrios, 8901','Sao Paulo','SP','10276','Brazil'),(11069,80,1,'2008-05-04 00:00:00','2008-06-01 00:00:00','2008-05-06 00:00:00',2,15.67,'Ship to 80-B','Avda. Azteca 4567','México D.F.',NULL,'10333','Mexico'),(11070,44,2,'2008-05-05 00:00:00','2008-06-02 00:00:00',NULL,1,136.00,'Ship to 44-A','Magazinweg 4567','Frankfurt a.M.',NULL,'10222','Germany'),(11071,46,1,'2008-05-05 00:00:00','2008-06-02 00:00:00',NULL,1,0.93,'Ship to 46-B','Carrera 1234 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto','Lara','10228','Venezuela'),(11072,20,4,'2008-05-05 00:00:00','2008-06-02 00:00:00',NULL,2,258.64,'Destination RVDMF','Kirchgasse 9012','Graz',NULL,'10157','Austria'),(11073,58,2,'2008-05-05 00:00:00','2008-06-02 00:00:00',NULL,2,24.95,'Ship to 58-B','Calle Dr. Jorge Cash 4567','México D.F.',NULL,'10262','Mexico'),(11074,73,7,'2008-05-06 00:00:00','2008-06-03 00:00:00',NULL,2,18.44,'Ship to 73-A','Vinbæltet 1234','Kobenhavn',NULL,'10310','Denmark'),(11075,68,8,'2008-05-06 00:00:00','2008-06-03 00:00:00',NULL,2,6.19,'Ship to 68-A','Starenweg 6789','Genève',NULL,'10294','Switzerland'),(11076,9,4,'2008-05-06 00:00:00','2008-06-03 00:00:00',NULL,2,38.28,'Ship to 9-A','8901, rue des Bouchers','Marseille',NULL,'10367','France'),(11077,65,1,'2008-05-06 00:00:00','2008-06-03 00:00:00',NULL,2,8.53,'Ship to 65-A','7890 Milton Dr.','Albuquerque','NM','10285','USA');
/*!40000 ALTER TABLE `salesorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipper`
--

DROP TABLE IF EXISTS `shipper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipper` (
  `shipperId` int NOT NULL AUTO_INCREMENT,
  `companyName` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `phone` varchar(44) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`shipperId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipper`
--

LOCK TABLES `shipper` WRITE;
/*!40000 ALTER TABLE `shipper` DISABLE KEYS */;
INSERT INTO `shipper` VALUES (1,'Shipper GVSUA','(503) 555-0137'),(2,'Shipper ETYNR','(425) 555-0136'),(3,'Shipper ZHISN','(415) 555-0138');
/*!40000 ALTER TABLE `shipper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `supplierId` int NOT NULL AUTO_INCREMENT,
  `companyName` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `contactName` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `contactTitle` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `address` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `city` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `region` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `postalCode` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `country` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `phone` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `email` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `fax` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `HomePage` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  PRIMARY KEY (`supplierId`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Supplier SWRXU','Adolphi, Stephan','Purchasing Manager','2345 Gilbert St.','London',NULL,'10023','UK','(171) 456-7890',NULL,NULL,NULL),(2,'Supplier VHQZD','Hance, Jim','Order Administrator','P.O. Box 5678','New Orleans','LA','10013','USA','(100) 555-0111',NULL,NULL,NULL),(3,'Supplier STUAZ','Parovszky, Alfons','Sales Representative','1234 Oxford Rd.','Ann Arbor','MI','10026','USA','(313) 555-0109',NULL,'(313) 555-0112',NULL),(4,'Supplier QOVFD','Balázs, Erzsébet','Marketing Manager','7890 Sekimai Musashino-shi','Tokyo',NULL,'10011','Japan','(03) 6789-0123',NULL,NULL,NULL),(5,'Supplier EQPNC','Holm, Michael','Export Administrator','Calle del Rosal 4567','Oviedo','Asturias','10029','Spain','(98) 123 45 67',NULL,NULL,NULL),(6,'Supplier QWUSF','Popkova, Darya','Marketing Representative','8901 Setsuko Chuo-ku','Osaka',NULL,'10028','Japan','(06) 789-0123',NULL,NULL,NULL),(7,'Supplier GQRCV','Ræbild, Jesper','Marketing Manager','5678 Rose St. Moonie Ponds','Melbourne','Victoria','10018','Australia','(03) 123-4567',NULL,'(03) 456-7890',NULL),(8,'Supplier BWGYE','Iallo, Lucio','Sales Representative','9012 King\'s Way','Manchester',NULL,'10021','UK','(161) 567-8901',NULL,NULL,NULL),(9,'Supplier QQYEU','Basalik, Evan','Sales Agent','Kaloadagatan 4567','Göteborg',NULL,'10022','Sweden','031-345 67 89',NULL,'031-678 90 12',NULL),(10,'Supplier UNAHG','Barnett, Dave','Marketing Manager','Av. das Americanas 2345','Sao Paulo',NULL,'10034','Brazil','(11) 345 6789',NULL,NULL,NULL),(11,'Supplier ZPYVS','Jain, Mukesh','Sales Manager','Tiergartenstraße 3456','Berlin',NULL,'10016','Germany','(010) 3456789',NULL,NULL,NULL),(12,'Supplier SVIYA','Regev, Barak','International Marketing Mgr.','Bogenallee 9012','Frankfurt',NULL,'10024','Germany','(069) 234567',NULL,NULL,NULL),(13,'Supplier TEGSC','Brehm, Peter','Coordinator Foreign Markets','Frahmredder 3456','Cuxhaven',NULL,'10019','Germany','(04721) 1234',NULL,'(04721) 2345',NULL),(14,'Supplier KEREV','Keil, Kendall','Sales Representative','Viale Dante, 6789','Ravenna',NULL,'10015','Italy','(0544) 56789',NULL,'(0544) 34567',NULL),(15,'Supplier NZLIF','Sałas-Szlejter, Karolina','Marketing Manager','Hatlevegen 1234','Sandvika',NULL,'10025','Norway','(0)9-012345',NULL,NULL,NULL),(16,'Supplier UHZRG','Scholl, Thorsten','Regional Account Rep.','8901 - 8th Avenue Suite 210','Bend','OR','10035','USA','(503) 555-0108',NULL,NULL,NULL),(17,'Supplier QZGUF','Kleinerman, Christian','Sales Representative','Brovallavägen 0123','Stockholm',NULL,'10033','Sweden','08-234 56 78',NULL,NULL,NULL),(18,'Supplier LVJUA','Canel, Fabrice','Sales Manager','3456, Rue des Francs-Bourgeois','Paris',NULL,'10031','France','(1) 90.12.34.56',NULL,'(1) 01.23.45.67',NULL),(19,'Supplier JDNUG','Chapman, Greg','Wholesale Account Agent','Order Processing Dept. 7890 Paul Revere Blvd.','Boston','MA','10027','USA','(617) 555-0110',NULL,'(617) 555-0113',NULL),(20,'Supplier CIYNM','Köszegi, Emília','Owner','6789 Serangoon Loop, Suite #402','Singapore',NULL,'10037','Singapore','012-3456',NULL,NULL,NULL),(21,'Supplier XOXZA','Shakespear, Paul','Sales Manager','Lyngbysild Fiskebakken 9012','Lyngby',NULL,'10012','Denmark','67890123',NULL,'78901234',NULL),(22,'Supplier FNUXM','Skelly, Bonnie L.','Accounting Manager','Verkoop Rijnweg 8901','Zaandam',NULL,'10014','Netherlands','(12345) 8901',NULL,'(12345) 5678',NULL),(23,'Supplier ELCRN','LaMee, Brian','Product Manager','Valtakatu 1234','Lappeenranta',NULL,'10032','Finland','(953) 78901',NULL,NULL,NULL),(24,'Supplier JNNES','Clark, Molly','Sales Representative','6789 Prince Edward Parade Hunter\'s Hill','Sydney','NSW','10030','Australia','(02) 234-5678',NULL,'(02) 567-8901',NULL),(25,'Supplier ERVYZ','Sprenger, Christof','Marketing Manager','7890 Rue St. Laurent','Montréal','Québec','10017','Canada','(514) 456-7890',NULL,NULL,NULL),(26,'Supplier ZWZDM','Cunha, Gonçalo','Order Administrator','Via dei Gelsomini, 5678','Salerno',NULL,'10020','Italy','(089) 4567890',NULL,'(089) 4567890',NULL),(27,'Supplier ZRYDZ','Leoni, Alessandro','Sales Manager','4567, rue H. Voiron','Montceau',NULL,'10036','France','89.01.23.45',NULL,NULL,NULL),(28,'Supplier OAVQT','Teper, Jeff','Sales Representative','Bat. B 2345, rue des Alpes','Annecy',NULL,'10010','France','01.23.45.67',NULL,'89.01.23.45',NULL),(29,'Supplier OGLRK','Walters, Rob','Accounting Manager','0123 rue Chasseur','Ste-Hyacinthe','Québec','10009','Canada','(514) 567-890',NULL,'(514) 678-9012',NULL);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_report`
--

DROP TABLE IF EXISTS `tbl_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_report` (
  `ReportID` int NOT NULL AUTO_INCREMENT,
  `reportDate` date NOT NULL,
  `reportSubject` varchar(255) NOT NULL,
  `reportDetails` text NOT NULL,
  `StudentID` int DEFAULT NULL,
  `UserID` int NOT NULL,
  `SubjectID` int DEFAULT NULL,
  PRIMARY KEY (`ReportID`),
  KEY `StudentID` (`StudentID`),
  KEY `UserID` (`UserID`),
  KEY `SubjectID` (`SubjectID`),
  CONSTRAINT `tbl_report_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `tbl_student` (`StudentID`) ON DELETE SET NULL,
  CONSTRAINT `tbl_report_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `tbl_user` (`UserID`) ON DELETE CASCADE,
  CONSTRAINT `tbl_report_ibfk_3` FOREIGN KEY (`SubjectID`) REFERENCES `tbl_subject` (`SubjectID`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_report`
--

LOCK TABLES `tbl_report` WRITE;
/*!40000 ALTER TABLE `tbl_report` DISABLE KEYS */;
INSERT INTO `tbl_report` VALUES (1,'2024-10-03','Ah','Bonita',1,1,1),(5,'2024-10-03','ehhxxz','Exxxz',5,1,1),(6,'2024-10-06','Awas','NoNoNo',1,1,1),(11,'2024-10-06','12szz','2121212sssszzz',5,2,2),(12,'2024-10-12','1x','qqss',1,1,3),(13,'2024-10-12','Reporte','Reporte',3,2,1);
/*!40000 ALTER TABLE `tbl_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_role`
--

DROP TABLE IF EXISTS `tbl_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_role` (
  `RolID` int NOT NULL AUTO_INCREMENT,
  `rolName` varchar(50) NOT NULL,
  `rolInfo` varchar(255) NOT NULL,
  PRIMARY KEY (`RolID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_role`
--

LOCK TABLES `tbl_role` WRITE;
/*!40000 ALTER TABLE `tbl_role` DISABLE KEYS */;
INSERT INTO `tbl_role` VALUES (1,'Administrador','Administrador del sistema'),(2,'Maestro','Usuario con permisos de maestro');
/*!40000 ALTER TABLE `tbl_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_student`
--

DROP TABLE IF EXISTS `tbl_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_student` (
  `StudentID` int NOT NULL AUTO_INCREMENT,
  `studentCode` varchar(10) NOT NULL,
  `studentName` varchar(255) NOT NULL,
  `studentLastName` varchar(255) NOT NULL,
  `studentGender` varchar(50) NOT NULL,
  `studentPhone` varchar(50) NOT NULL,
  `studentEmail` varchar(100) NOT NULL,
  `studentAddress` varchar(255) NOT NULL,
  `studentModality` varchar(50) NOT NULL,
  `VocationID` int DEFAULT NULL,
  PRIMARY KEY (`StudentID`),
  UNIQUE KEY `studentCode` (`studentCode`),
  KEY `VocationID` (`VocationID`),
  CONSTRAINT `tbl_student_ibfk_1` FOREIGN KEY (`VocationID`) REFERENCES `tbl_vocation` (`VocationID`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_student`
--

LOCK TABLES `tbl_student` WRITE;
/*!40000 ALTER TABLE `tbl_student` DISABLE KEYS */;
INSERT INTO `tbl_student` VALUES (1,'U93768666','Paula Guadalupe','Dalu mi amor','Masculino','0745-3818','waluytomi@gmail.com','mi scorazón','Virtual',4),(3,'U79335787','Valentina Alexandra','Jein','Femenino','7745-3818','waluytomi@gmail.com','mi scorazón','Virtual',1),(4,'U25217875','Juan','Pérez','Masculino','987654321','juan@example.com','Calle Falsa 123','Presencial',1),(5,'U71644434','Ana','Gómez','Femenino','1234567890','ana@example.com','Calle Real 456','Virtual',2);
/*!40000 ALTER TABLE `tbl_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_subject`
--

DROP TABLE IF EXISTS `tbl_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_subject` (
  `SubjectID` int NOT NULL AUTO_INCREMENT,
  `subjectName` varchar(100) NOT NULL,
  `subjectInfo` varchar(255) NOT NULL,
  PRIMARY KEY (`SubjectID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_subject`
--

LOCK TABLES `tbl_subject` WRITE;
/*!40000 ALTER TABLE `tbl_subject` DISABLE KEYS */;
INSERT INTO `tbl_subject` VALUES (1,'Matemáticas','Prueba de info'),(2,'Lenguaje','Otra prueba'),(3,'Paulita','mi vida');
/*!40000 ALTER TABLE `tbl_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `userCode` varchar(10) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `userGender` varchar(50) NOT NULL,
  `userPhone` varchar(50) NOT NULL,
  `userEmail` varchar(100) NOT NULL,
  `userNickname` varchar(25) NOT NULL,
  `userPassword` varchar(500) NOT NULL,
  `userAddress` varchar(255) NOT NULL,
  `RolID` int DEFAULT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `userCode` (`userCode`),
  KEY `RolID` (`RolID`),
  CONSTRAINT `tbl_user_ibfk_1` FOREIGN KEY (`RolID`) REFERENCES `tbl_role` (`RolID`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (1,'U001','Juan Pérez','Masculino','5555-1234','juan@example.com','ariel','202cb962ac59075b964b07152d234b70','Calle 1, Ciudad',1),(2,'U002','Ana García','Femenino','5555-5678','ana@example.com','aaron','202cb962ac59075b964b07152d234b70','Calle 2, Ciudad',2),(3,'U003','Carlos López','Masculino','5555-9876','carlos@example.com','carlol','202cb962ac59075b964b07152d234b70','Calle 3, Ciudad',2),(6,'U22210154','Dalú','Femenino','77341732','daluytomi@gmail.com','Dalu','202cb962ac59075b964b07152d234b70','Col presita 2',1),(9,'U07602407','A','Masculino','A','xx@gmail.com','m','202cb962ac59075b964b07152d234b70','123',2);
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_vocation`
--

DROP TABLE IF EXISTS `tbl_vocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_vocation` (
  `VocationID` int NOT NULL AUTO_INCREMENT,
  `vocationName` varchar(100) NOT NULL,
  `vocationInfo` varchar(255) NOT NULL,
  PRIMARY KEY (`VocationID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_vocation`
--

LOCK TABLES `tbl_vocation` WRITE;
/*!40000 ALTER TABLE `tbl_vocation` DISABLE KEYS */;
INSERT INTO `tbl_vocation` VALUES (1,'Bachillerato técnico','Prueba'),(2,'Bachillerato general','Prueba 2'),(4,'Pruebas','Volveré');
/*!40000 ALTER TABLE `tbl_vocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `territory`
--

DROP TABLE IF EXISTS `territory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `territory` (
  `territoryId` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `territorydescription` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `regionId` int NOT NULL,
  PRIMARY KEY (`territoryId`),
  KEY `regionId` (`regionId`),
  CONSTRAINT `territory_ibfk_1` FOREIGN KEY (`regionId`) REFERENCES `region` (`regionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `territory`
--

LOCK TABLES `territory` WRITE;
/*!40000 ALTER TABLE `territory` DISABLE KEYS */;
INSERT INTO `territory` VALUES ('01581','Westboro',1),('01730','Bedford',1),('01833','Georgetow',1),('02116','Boston',1),('02139','Cambridge',1),('02184','Braintree',1),('02903','Providence',1),('03049','Hollis',3),('03801','Portsmouth',3),('06897','Wilton',1),('07960','Morristown',1),('08837','Edison',1),('10019','New York',1),('10038','New York',1),('11747','Mellvile',1),('14450','Fairport',1),('19428','Philadelphia',3),('19713','Neward',1),('20852','Rockville',1),('27403','Greensboro',1),('27511','Cary',1),('29202','Columbia',4),('30346','Atlanta',4),('31406','Savannah',4),('32859','Orlando',4),('33607','Tampa',4),('40222','Louisville',1),('44122','Beachwood',3),('45839','Findlay',3),('48075','Southfield',3),('48084','Troy',3),('48304','Bloomfield Hills',3),('53404','Racine',3),('55113','Roseville',3),('55439','Minneapolis',3),('60179','Hoffman Estates',2),('60601','Chicago',2),('72716','Bentonville',4),('75234','Dallas',4),('78759','Austin',4),('80202','Denver',2),('80909','Colorado Springs',2),('85014','Phoenix',2),('85251','Scottsdale',2),('90405','Santa Monica',2),('94025','Menlo Park',2),('94105','San Francisco',2),('95008','Campbell',2),('95054','Santa Clara',2),('95060','Santa Cruz',2),('98004','Bellevue',2),('98052','Redmond',2),('98104','Seattle',2);
/*!40000 ALTER TABLE `territory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'puellaschooldb'
--

--
-- Dumping routines for database 'puellaschooldb'
--
/*!50003 DROP FUNCTION IF EXISTS `GenerateUniqueCode` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GenerateUniqueCode`() RETURNS varchar(10) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE newCode VARCHAR(10);
    DECLARE codeExists INT DEFAULT 1;
    
    WHILE codeExists = 1 DO
        SET newCode = CONCAT('U', LPAD(FLOOR(RAND() * 100000000), 8, '0')); -- Generador de código
        
        -- Comprarador para evitar repetidos
        SELECT COUNT(*) INTO codeExists
        FROM (
            SELECT studentCode AS code FROM tbl_student
            UNION
            SELECT userCode AS code FROM tbl_user
        ) AS combinedCodes
        WHERE code = newCode;
    END WHILE;
    
    RETURN newCode;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_CreateReport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_CreateReport`(
    IN theReportSubject VARCHAR(255), IN theReportDetails TEXT, 
    IN sID INT, IN uID INT, IN subID INT
)
BEGIN
    INSERT INTO tbl_Report (reportDate, reportSubject, reportDetails, StudentID, UserID, SubjectID)
    VALUES (NOW(), theReportSubject, theReportDetails, sID, uID, subID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_CreateRole` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_CreateRole`( -- Crete
    IN theName VARCHAR(50),
    IN theInfo VARCHAR(255)
)
BEGIN
    INSERT INTO tbl_Role (rolName, rolInfo) VALUES (theName, theInfo);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_CreateStudent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_CreateStudent`(
    IN theName VARCHAR(255), IN theLastName VARCHAR(255), 
    IN theGender VARCHAR(50), IN thePhone VARCHAR(50), 
    IN theEmail VARCHAR(100), IN theAddress VARCHAR(255), 
    IN theModality VARCHAR(50), IN vID INT
)
BEGIN
    DECLARE newCode VARCHAR(10);
    SET newCode = GenerateUniqueCode();
    INSERT INTO tbl_Student (studentCode, studentName, studentLastName, studentGender, studentPhone, studentEmail, studentAddress, studentModality, VocationID)
    VALUES (newCode, theName, theLastName, theGender, thePhone, theEmail, theAddress, theModality, vID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_CreateSubject` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_CreateSubject`(-- Crear
    IN theName VARCHAR(100), IN theInfo VARCHAR(255)
)
BEGIN
    INSERT INTO tbl_Subject (subjectName, subjectInfo) VALUES (theName, theInfo);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_CreateUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_CreateUser`( -- create
    IN theName VARCHAR(255), IN theGender VARCHAR(50), 
    IN thePhone VARCHAR(50), IN theEmail VARCHAR(100), 
    IN theNickname VARCHAR(25), IN thePassword VARCHAR(500), 
    IN theAddress VARCHAR(255), IN rID INT
)
BEGIN
    DECLARE newCode VARCHAR(10);
    SET newCode = GenerateUniqueCode();
    INSERT INTO tbl_User (userCode, userName, userGender, userPhone, userEmail, userNickname, userPassword, userAddress, RolID)
    VALUES (newCode, theName, theGender, thePhone, theEmail, theNickname, thePassword, theAddress, rID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_CreateVocation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_CreateVocation`(
    IN theName VARCHAR(100), IN theInfo VARCHAR(255)
)
BEGIN
    INSERT INTO tbl_Vocation (vocationName, vocationInfo) VALUES (theName, theInfo);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DeleteReport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DeleteReport`(
    IN rID INT
)
BEGIN
    DELETE FROM tbl_Report WHERE ReportID = rID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DeleteRole` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DeleteRole`( -- delete
    IN rID INT
)
BEGIN
    DELETE FROM tbl_Role WHERE RolID = rID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DeleteStudent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DeleteStudent`(
    IN sID INT
)
BEGIN
    DELETE FROM tbl_Student WHERE StudentID = sID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DeleteSubject` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DeleteSubject`(
    IN sID INT
)
BEGIN
    DELETE FROM tbl_Subject WHERE SubjectID = sID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DeleteUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DeleteUser`( -- delete
    IN uID INT
)
BEGIN
    DELETE FROM tbl_User WHERE UserID = uID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DeleteVocation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DeleteVocation`(
    IN vID INT
)
BEGIN
    DELETE FROM tbl_Vocation WHERE VocationID = vID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ReportType1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ReportType1`(
	IN uID INT,
    IN subjectName VARCHAR(100),
    IN vocationName VARCHAR(100)
)
BEGIN
    SELECT ReportID, reportDate, reportSubject, reportDetails, studentName, userName, sub.subjectName, studentCode, s.StudentID AS 'StudentID', u.UserID AS 'UserID', sub.SubjectID AS 'SubjectID'  
    FROM tbl_Report r
    LEFT JOIN tbl_User u ON r.UserID = u.UserID
    LEFT JOIN tbl_Subject sub ON r.SubjectID = sub.SubjectID
    LEFT JOIN tbl_Student s ON r.StudentID = s.StudentID
    INNER JOIN tbl_vocation v ON s.VocationID = v.VocationID
    WHERE u.UserID = uID 
    AND (sub.subjectName = subjectName OR subjectName IS NULL OR subjectName = '')
    AND (v.vocationName = vocationName OR vocationName IS NULL OR vocationName = '');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ReportType2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ReportType2`(
	IN studentName VARCHAR(100),
    IN subjectName VARCHAR(100),
    IN vocationName VARCHAR(100)
)
BEGIN
    SELECT 
        ReportID, 
        reportDate, 
        reportSubject, 
        reportDetails, 
        s.studentName, 
        u.userName, 
        sub.subjectName, 
        s.studentCode, 
        s.StudentID AS 'StudentID', 
        u.UserID AS 'UserID', 
        sub.SubjectID AS 'SubjectID'  
    FROM tbl_Report r
    LEFT JOIN tbl_User u ON r.UserID = u.UserID
    LEFT JOIN tbl_Subject sub ON r.SubjectID = sub.SubjectID
    LEFT JOIN tbl_Student s ON r.StudentID = s.StudentID
    INNER JOIN tbl_vocation v ON s.VocationID = v.VocationID
    WHERE (studentName IS NULL OR studentName = '' OR s.studentName = studentName)
    AND (subjectName IS NULL OR subjectName = '' OR sub.subjectName = subjectName)
    AND (vocationName IS NULL OR vocationName = '' OR v.vocationName = vocationName);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ReportType3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ReportType3`(
	IN startDate DATE,
    IN endDate DATE
)
BEGIN
     SELECT 
        ReportID, 
        reportDate, 
        reportSubject, 
        reportDetails, 
        s.studentName, 
        u.userName, 
        sub.subjectName, 
        s.studentCode, 
        s.StudentID AS 'StudentID', 
        u.UserID AS 'UserID', 
        sub.SubjectID AS 'SubjectID'  
    FROM tbl_Report r
    LEFT JOIN tbl_User u ON r.UserID = u.UserID
    LEFT JOIN tbl_Subject sub ON r.SubjectID = sub.SubjectID
    LEFT JOIN tbl_Student s ON r.StudentID = s.StudentID
    INNER JOIN tbl_vocation v ON s.VocationID = v.VocationID
    WHERE r.reportDate BETWEEN startDate AND endDate 
    ORDER BY s.studentName ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ReportType4` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ReportType4`(
	IN startDate DATE,
    IN endDate DATE,
    IN subjectName VARCHAR(100),
    IN vocationName VARCHAR(100)
)
BEGIN
    SELECT r.reportDate, COUNT(reportSubject) AS ReportsQuantity 
    FROM tbl_Report r
    LEFT JOIN tbl_User u ON r.UserID = u.UserID
    LEFT JOIN tbl_Subject sub ON r.SubjectID = sub.SubjectID
    LEFT JOIN tbl_Student s ON r.StudentID = s.StudentID
    INNER JOIN tbl_vocation v ON s.VocationID = v.VocationID
    WHERE r.reportDate BETWEEN startDate AND endDate
    AND (sub.subjectName = subjectName OR subjectName IS NULL OR subjectName = '')
    AND (v.vocationName = vocationName OR vocationName IS NULL OR vocationName = '')
    GROUP BY r.reportDate;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_SelectReportById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SelectReportById`(
    IN rID INT
)
BEGIN
    SELECT ReportID, reportDate, reportSubject, reportDetails, studentName, userName, subjectName, studentCode,
    s.StudentID AS 'StudentID', u.UserID AS 'UserID', sub.SubjectID AS 'SubjectID'
    FROM tbl_Report r LEFT JOIN tbl_Student s ON r.StudentID = s.StudentID LEFT JOIN tbl_User u ON r.UserID = u.UserID 
    LEFT JOIN tbl_Subject sub ON r.SubjectID = sub.SubjectID WHERE r.ReportID = rID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_SelectReports` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SelectReports`(
	IN uID INT
)
BEGIN
    SELECT ReportID, reportDate, reportSubject, reportDetails, studentName, userName, subjectName, studentCode,
    s.StudentID AS 'StudentID', u.UserID AS 'UserID', sub.SubjectID AS 'SubjectID'  
    FROM tbl_Report r LEFT JOIN tbl_Student s ON r.StudentID = s.StudentID
    LEFT JOIN tbl_User u ON r.UserID = u.UserID LEFT JOIN tbl_Subject sub ON r.SubjectID = sub.SubjectID
    WHERE u.UserID = uID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_SelectReportsAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SelectReportsAdmin`()
BEGIN
	SELECT ReportID, reportDate, reportSubject, reportDetails, studentName, userName, subjectName, studentCode,
    s.StudentID AS 'StudentID', u.UserID AS 'UserID', sub.SubjectID AS 'SubjectID'  
    FROM tbl_Report r LEFT JOIN tbl_Student s ON r.StudentID = s.StudentID
    LEFT JOIN tbl_User u ON r.UserID = u.UserID LEFT JOIN tbl_Subject sub ON r.SubjectID = sub.SubjectID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_SelectRoleById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SelectRoleById`( -- select by id
    IN rID INT
)
BEGIN
    SELECT * FROM tbl_Role
    WHERE RolID = rID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_SelectRoles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SelectRoles`()
BEGIN
    SELECT * FROM tbl_Role;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_SelectStudentById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SelectStudentById`(
    IN sID INT
)
BEGIN
    SELECT StudentID, studentCode, studentName, studentLastName, studentGender, studentPhone, studentEmail, studentAddress, studentModality, v.VocationID AS 'VocationID', vocationName
    FROM tbl_Student s INNER JOIN tbl_Vocation v ON s.VocationID = v.VocationID WHERE s.StudentID = sID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_SelectStudents` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SelectStudents`()
BEGIN
    SELECT StudentID, studentCode, studentName, studentLastName, studentGender, studentPhone, studentEmail, studentAddress, studentModality, vocationName
    FROM tbl_Student s INNER JOIN tbl_Vocation v ON s.VocationID = v.VocationID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_SelectSubjectById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SelectSubjectById`(
    IN sID INT
)
BEGIN
    SELECT * FROM tbl_Subject WHERE SubjectID = sID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_SelectSubjects` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SelectSubjects`()
BEGIN
    SELECT * FROM tbl_Subject;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_SelectUserById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SelectUserById`(
    IN uID INT
)
BEGIN
    SELECT UserID, userCode, userName, userGender, userPhone, userEmail, userNickname, userPassword, userAddress, R.RolID AS 'RolID', rolName FROM tbl_User U INNER JOIN tbl_Role R ON U.RolID = R.RolID WHERE UserID = uID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_SelectUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SelectUsers`()
BEGIN
    SELECT UserID, userCode, userName, userGender, userPhone, userEmail, userNickname, userPassword, userAddress, rolName FROM tbl_User U INNER JOIN tbl_Role R ON U.RolID = R.RolID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_SelectVocationById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SelectVocationById`(
    IN vID INT
)
BEGIN
    SELECT * FROM tbl_Vocation WHERE VocationID = vID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_SelectVocations` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SelectVocations`()
BEGIN
    SELECT * FROM tbl_Vocation;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdateReport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpdateReport`(
    IN rID INT, IN theReportSubject VARCHAR(255), IN theReportDetails TEXT,
    IN sID INT, IN uID INT, IN subID INT
)
BEGIN
    UPDATE tbl_Report SET reportSubject = theReportSubject, reportDetails = theReportDetails,
	StudentID = sID, UserID = uID , SubjectID = subID WHERE ReportID = rID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdateRole` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpdateRole`( -- Update
    IN rID INT,
    IN pName VARCHAR(50),
    IN pInfo VARCHAR(255)
)
BEGIN
    UPDATE tbl_role
    SET rolName = pName,
        rolInfo = pInfo
    WHERE RolID = rID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdateStudent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpdateStudent`(
    IN sID INT, IN theName VARCHAR(255),
    IN theLastName VARCHAR(255), IN theGender VARCHAR(50), IN thePhone VARCHAR(50),
    IN theEmail VARCHAR(100), IN theAddress VARCHAR(255), IN theModality VARCHAR(50), IN vID INT
)
BEGIN
    UPDATE tbl_Student SET studentName = theName, studentLastName = theLastName, studentGender = theGender,
        studentPhone = thePhone, studentEmail = theEmail, studentAddress = theAddress, studentModality = theModality, VocationID = vID
    WHERE StudentID = sID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdateSubject` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpdateSubject`(
    IN sID INT, IN theName VARCHAR(100), IN theInfo VARCHAR(255)
)
BEGIN
    UPDATE tbl_Subject SET subjectName = theName, subjectInfo = theInfo WHERE SubjectID = sID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdateUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpdateUser`( -- Update
    IN uID INT,
    IN theName VARCHAR(255), IN theGender VARCHAR(50),
    IN thePhone VARCHAR(50), IN theEmail VARCHAR(100),
    IN theNickname VARCHAR(25), IN thePassword VARCHAR(500),
    IN theAddress VARCHAR(255), IN rID INT
)
BEGIN
    UPDATE tbl_User SET userName = theName, userGender = theGender, userPhone = thePhone, userEmail = theEmail,
        userNickname = theNickname, userPassword = thePassword, userAddress = theAddress, RolID = rID WHERE UserID = uID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdateVocation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpdateVocation`(
    IN vID INT, IN theName VARCHAR(100), IN theInfo VARCHAR(255)
)
BEGIN
    UPDATE tbl_Vocation SET vocationName = theName, vocationInfo = theInfo WHERE VocationID = vID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-13  7:14:55
