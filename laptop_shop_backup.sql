-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: laptop_shop
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `city` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `street_address` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKda8tuywtf0gb6sedwk7la1pgi` (`user_id`),
  CONSTRAINT `FKda8tuywtf0gb6sedwk7la1pgi` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (2,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(3,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(4,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(5,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(6,'hn','T','0988251497',2,'0988251497'),(7,'hn','T','0988251497',2,'0988251497'),(8,'hn','T','0988251497',2,'0988251497'),(9,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(10,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(11,'hn','T','0988251497',2,'0988251497'),(12,'hn','T','0988251497',2,'0988251497'),(13,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(14,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(15,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(16,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(17,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(18,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(19,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(20,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(21,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(22,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(23,'hn','T','0988251497',2,'0988251497'),(24,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(25,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(27,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(28,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(29,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(30,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(31,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(32,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(33,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(34,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(35,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(36,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(37,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(38,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(39,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(40,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(41,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(42,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(43,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(44,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(45,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(46,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(47,'gggggggggggg','Alice','0123456789',1,'ccccccccc'),(48,'gggggggggggg','Alice','0123456789',1,'ccccccccc');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `id` tinyint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKrdxh7tq2xs66r485cc8dkxt77` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'Sử dụng cho trường hợp không rõ thương hiệu','Unknown'),(2,'Hãng Laptop, đồng thời cũng có CPU, GPU riêng','Apple'),(3,'Hãng Laptop','Asus'),(4,'Hãng Laptop','Acer'),(5,'Hãng Laptop','Dell'),(6,'Hãng Laptop','Huawei'),(7,'Hãng Laptop','VAIO'),(8,'Hãng Laptop','Lenovo'),(9,'Hãng Laptop','MSI'),(10,'Hãng Laptop','HP'),(11,'Hãng Laptop','Gigabyte'),(12,'Hãng Laptop','Masstel'),(13,'Hãng CPU, GPU','Intel'),(14,'Hãng CPU, GPU ','NVIDIA'),(15,'Hãng CPU, GPU ','AMD');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK9emlp6m95v5er2bcqkjsw48he` (`user_id`),
  CONSTRAINT `FKl70asp4l4w0jmbm1tqyofho4o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_item`
--

DROP TABLE IF EXISTS `cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_item` (
  `id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `add_at` datetime(6) DEFAULT NULL,
  `quantity` smallint NOT NULL,
  `cart_id` bigint DEFAULT NULL,
  `color_id` tinyint DEFAULT NULL,
  `laptop_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1uobyhgl1wvgt1jpccia8xxs3` (`cart_id`),
  KEY `FK1ie133dv128h82bugogdcn4j8` (`color_id`),
  KEY `FKr19hdw1esdinja4x3x7bmeo5w` (`laptop_id`),
  CONSTRAINT `FK1ie133dv128h82bugogdcn4j8` FOREIGN KEY (`color_id`) REFERENCES `color` (`id`),
  CONSTRAINT `FK1uobyhgl1wvgt1jpccia8xxs3` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  CONSTRAINT `FKr19hdw1esdinja4x3x7bmeo5w` FOREIGN KEY (`laptop_id`) REFERENCES `laptop` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_item`
--

LOCK TABLES `cart_item` WRITE;
/*!40000 ALTER TABLE `cart_item` DISABLE KEYS */;
INSERT INTO `cart_item` VALUES ('2_1_6','2025-01-07 10:36:45.832786',2,2,6,1),('2_6_1','2025-01-08 18:29:10.899038',8,2,1,6);
/*!40000 ALTER TABLE `cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` tinyint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK46ccwnsi9409t36lurvtyljak` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (5,'Doanh nhân'),(2,'Gaming - đồ họa'),(1,'Laptop AI'),(4,'Mỏng nhẹ'),(3,'Văn phòng'),(6,'Workstation');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `color` (
  `id` tinyint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (1,'Đen'),(2,'Hồng'),(3,'Trắng'),(4,'Xám'),(5,'Vàng'),(6,'Bạc'),(7,'Xanh');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpu`
--

DROP TABLE IF EXISTS `cpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cpu` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `cache` float DEFAULT NULL,
  `core` tinyint DEFAULT NULL,
  `max_speed` float DEFAULT NULL,
  `model` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `speed` float DEFAULT NULL,
  `thread` tinyint DEFAULT NULL,
  `tops` smallint DEFAULT NULL,
  `technology_id` smallint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfmgx9n73ftdacjq6bed97ydhi` (`technology_id`),
  CONSTRAINT `FKfmgx9n73ftdacjq6bed97ydhi` FOREIGN KEY (`technology_id`) REFERENCES `cpu_tech` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpu`
--

LOCK TABLES `cpu` WRITE;
/*!40000 ALTER TABLE `cpu` DISABLE KEYS */;
INSERT INTO `cpu` VALUES (1,4,4,4.3,'7520U',2.8,8,NULL,18),(2,NULL,NULL,4.5,'7640HS',4.3,NULL,NULL,18),(3,16,6,4.5,'7535HS',3.3,12,NULL,18),(4,16,6,4.3,'7530U',2,12,NULL,18),(5,16,6,4.3,'7430U',2.3,12,NULL,18),(6,NULL,6,4,'5500U',2.1,12,NULL,18),(7,16,6,4.3,'5625U',2.3,12,NULL,18),(8,20,8,4.5,'7435HS',3.1,16,NULL,19),(9,8,8,4.6,'5700U',1.8,16,NULL,19),(10,16,8,4.5,'7730U',2,16,NULL,19),(11,16,8,4.7,'7735U',2.7,16,NULL,19),(12,16,8,4.7,'7735HS',3.2,16,NULL,19),(13,16,8,5.1,'8845HS',3.8,16,NULL,19),(14,NULL,8,4.7,'6800H',2.7,16,NULL,19),(15,NULL,NULL,NULL,'8840HS',3.3,NULL,10,19),(16,NULL,NULL,3.8,'N305',1.8,NULL,NULL,9),(17,10,6,4.4,'1215U',1.2,8,NULL,9),(18,18,12,4.5,'12500H',2.5,16,NULL,10),(19,12,10,4.6,'1335U',3.4,12,NULL,10),(20,NULL,NULL,4.6,'1334U',1.3,NULL,NULL,10),(21,6.5,10,4.4,'1235U',3.3,12,NULL,10),(22,12,8,4.4,'12450H',3.3,12,NULL,10),(23,18,12,4.7,'13500H',2.6,16,NULL,10),(24,12,8,4.6,'13420H',3.4,12,NULL,10),(25,12,8,4.4,'12450HX',2.4,12,NULL,10),(26,8,4,4.5,'11320H',3.2,8,NULL,10),(27,8,4,4.2,'1135G7',2.4,8,NULL,10),(28,NULL,NULL,NULL,'1340P',1.9,NULL,NULL,10),(29,NULL,NULL,4.6,'1155G7',1,NULL,NULL,10),(30,12,NULL,5,'120U',NULL,NULL,NULL,10),(31,NULL,NULL,4.3,'12650H',2.3,NULL,NULL,11),(32,NULL,NULL,4.7,'12700H',3.5,NULL,NULL,11),(33,24,10,4.9,'13620H',2.4,16,NULL,11),(34,NULL,10,5,'1355U',3.7,12,NULL,11),(35,NULL,NULL,4.7,'1255U',3.5,NULL,NULL,11),(36,18,12,4.7,'1260P',3.3,16,NULL,11),(37,24,14,5,'13700H',2.4,20,NULL,11),(38,24,14,4.9,'13650HX',2.6,20,NULL,11),(39,30,26,5.2,'14650HX',2.2,24,NULL,11),(40,NULL,NULL,NULL,'1360P',2.2,NULL,NULL,11),(41,33,20,5.5,'14700HX',2.1,28,NULL,11),(42,NULL,16,5,'13700HX',2.1,24,NULL,11),(43,NULL,4,2.6,'N4120',1.1,4,NULL,13),(44,NULL,NULL,4.3,'125U',3.6,NULL,10,14),(45,18,14,4.5,'125H',1.2,18,10,14),(46,8,NULL,4.5,'226V',1.6,NULL,40,14),(47,24,16,4.8,'155H',1.4,22,10,15),(48,NULL,NULL,3.8,'155U',1.7,NULL,10,15),(49,12,NULL,4.8,'258V',3.7,NULL,47,15),(50,NULL,NULL,5.1,'185H',2.3,NULL,10,16),(51,NULL,NULL,NULL,'8-Core',NULL,NULL,NULL,5);
/*!40000 ALTER TABLE `cpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpu_tech`
--

DROP TABLE IF EXISTS `cpu_tech`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cpu_tech` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `brand_id` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhdm68heqbrkjof5ysdi7k5dgk` (`brand_id`),
  CONSTRAINT `FKhdm68heqbrkjof5ysdi7k5dgk` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpu_tech`
--

LOCK TABLES `cpu_tech` WRITE;
/*!40000 ALTER TABLE `cpu_tech` DISABLE KEYS */;
INSERT INTO `cpu_tech` VALUES (1,'M3 Max',2),(2,'M4 Max',2),(3,'M4 Pro',2),(4,'M3 Pro',2),(5,'M3',2),(6,'M4',2),(7,'M2',2),(8,'M1',2),(9,'Core i3',13),(10,'Core i5',13),(11,'Core i7',13),(12,'Core i9',13),(13,'Celeron',13),(14,'Core Ultra 5',13),(15,'Core Ultra 7',13),(16,'Core Ultra 9',13),(17,'Ryzen 3',15),(18,'Ryzen 5',15),(19,'Ryzen 7',15),(20,'Ryzen 9',15);
/*!40000 ALTER TABLE `cpu_tech` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gpu`
--

DROP TABLE IF EXISTS `gpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gpu` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `memory` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `model` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `tops` smallint DEFAULT NULL,
  `type` tinyint NOT NULL,
  `brand_id` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKl6d1sg27kxeeog17x7aqh0r6r` (`brand_id`),
  CONSTRAINT `FKl6d1sg27kxeeog17x7aqh0r6r` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`),
  CONSTRAINT `gpu_chk_1` CHECK ((`type` between 0 and 1))
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gpu`
--

LOCK TABLES `gpu` WRITE;
/*!40000 ALTER TABLE `gpu` DISABLE KEYS */;
INSERT INTO `gpu` VALUES (1,'Unknown','Unknown',NULL,0,1),(2,'4GB GDDR6','GeForce GTX 1650',143,1,14),(3,'4GB GDDR6','Geforce RTX 2050 ',104,1,14),(4,'4GB GDDR6','GeForce RTX 3050',143,1,14),(5,'Unknown','GeForce MX550',NULL,1,14),(6,'6GB GDDR6','GeForce RTX 4050',194,1,14),(7,'8GB GDDR6','GeForce RTX 4060',233,1,14),(8,'8GB GDDR6','GeForce RTX 4070',321,1,14),(9,'12GB GDDR6','GeForce RTX 4080',542,1,14),(10,'16GB GDDR6','GeForce RTX 4090',686,1,14),(11,'8GB GDDR6','RTX A1000',NULL,1,14),(12,'4GB GDDR6','RTX A500',NULL,1,14),(13,'Share','Radeon Graphics',NULL,0,15),(14,'4GB','AMD Radeon RX 5700M',25,1,15),(15,'Unknown','Radeon 760M Graphics',NULL,0,15),(16,'Unknown','UHD Graphics',NULL,0,13),(17,'Unknown','Arc Graphics',NULL,0,13),(18,'Unknown','Iris Plus Graphics',NULL,0,13),(19,'Unknown','Iris Xe Graphics',NULL,0,13),(20,'Unknown','M3 Max 30-core',NULL,0,2),(21,'Unknown','M3 Max 40-core',NULL,0,2),(22,'Unknown',' M3 Pro 18-core',NULL,0,2),(23,'Unknown','M3 Pro 14-core',NULL,0,2),(24,'Unknown','M3 8-core',NULL,0,2),(25,'Unknown','M2 10-core',NULL,0,2),(26,'Unknown','M2 8-core',NULL,0,2),(27,'Unknown','M1 7-core',NULL,0,2);
/*!40000 ALTER TABLE `gpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laptop`
--

DROP TABLE IF EXISTS `laptop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laptop` (
  `id` int NOT NULL AUTO_INCREMENT,
  `battery_charger` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `design` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `discount_percent` float DEFAULT NULL,
  `disk_capacity` smallint DEFAULT NULL,
  `disk_detail` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `keyboard_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `model` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `num_ratings` int DEFAULT NULL,
  `origin` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `price` bigint DEFAULT NULL,
  `ram_detail` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `ram_memory` tinyint DEFAULT NULL,
  `screen_detail` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `screen_size` float DEFAULT NULL,
  `warranty` tinyint NOT NULL,
  `brand_id` tinyint DEFAULT NULL,
  `cpu_id` smallint DEFAULT NULL,
  `os_version_id` smallint DEFAULT NULL,
  `status` smallint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK95ebn1pgu93shntpxbfrshpe5` (`brand_id`),
  KEY `FK5hbjue7jfk0luk7x2ev37v0ka` (`cpu_id`),
  KEY `FKth6efy7qul0pextldksdli77w` (`os_version_id`),
  CONSTRAINT `FK5hbjue7jfk0luk7x2ev37v0ka` FOREIGN KEY (`cpu_id`) REFERENCES `cpu` (`id`),
  CONSTRAINT `FK95ebn1pgu93shntpxbfrshpe5` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`),
  CONSTRAINT `FKth6efy7qul0pextldksdli77w` FOREIGN KEY (`os_version_id`) REFERENCES `os_version` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laptop`
--

LOCK TABLES `laptop` WRITE;
/*!40000 ALTER TABLE `laptop` DISABLE KEYS */;
INSERT INTO `laptop` VALUES (1,'Dung lượng 45W','2024-12-21 19:46:43.422860','32.4 x 22.5 x 1.79 cm, nặng 1.36 kg, mặt lưng nhựa',14,512,'SSD 1 M2 PCIe, không hỗ trợ nâng cấp',' Chiclet Keyboard','14s-dq5121TU',0,'Trung Quốc',12990000,'DDR4, 2 khe cắm rời, hỗ trợ tối đa 32 GB',8,' Anti-glare LED-backlit, 1920 x 1080 pixels (16:9)',14,12,10,17,2,NULL),(2,'Dung lượng 90W, Sạc 240W','2024-12-21 19:57:03.608893',' 35.97 x 23.25 x 1.79 ~ 1.79 cm, nặng 2.2 kg, mặt lưng kim loại',16,512,'SSD 1 M2 NVMe, 2 khe cắm, hỗ trợ nâng cấp tối đa 1TB',' Backlit Chiclet Keyboard','TUF Gaming FA507NUR LP101W',0,'Trung Quốc',28490000,'DDR5, 2 khe cắm rời, hỗ trợ tối đa 32 GB',16,' Anti-glare LED, 1920 x 1080 pixels (16:9), tần số quét 144, tấm nền IPS',15.6,24,3,8,2,NULL),(3,'Dung lượng 30W','2024-12-21 20:10:29.961999','30.41 x 21.5 x 1.13 cm, 1.24 kg, vỏ nhôm',14,256,'SSD',' English International Backlit Keyboard','Macbook Air M3 13 2024',0,'Trung Quốc',28490000,'LPDDR4, hỗ trợ tối đa 16GB',16,'Liquid Retina  2560 x 1644 pixels, tần số quét 60Hz, tầm nền IPS',13.6,12,2,51,11,NULL),(4,'Dung lượng 90Wh, sạc 65W','2024-12-23 16:36:14.287132',' 324.3 x 213.8 x 17.9 mm, nặng 1.37 kg, vỏ nhựa ',17,512,'SSD M2. PCIe1 ',' Bàn phím cứng','IdeaPad 3 14IAH8',0,'Trung Quốc',15990000,'DDR5, 2 khe cắm, hỗ trợ tối đa 16GB',16,'Anti-Glare 1920 x 1080 pixels, tần số quét 60Hz, tầm nền IPS ',14,24,8,22,2,NULL),(5,'Dung lượng 52.4Wh, sạc 120W','2024-12-23 16:49:07.002058','359 x 254 x 21.7 mm, nặng 1.86 kg, vỏ nhựa + kim loại ',20,512,'SSD 1 M.2 NVMe ','Single Backlit Keyboard','Gaming Thin A15 B7UC-261VN',0,'Trung Quốc',21990000,'DDR5, 2 khe cắm, hỗ trợ tối đa 64GB',16,'Anti-Glare LED-Backlit Display 1920 x 1080 pixels, tần số quét 144, tấm nền IPSHz, tầm nền IPS ',15.6,24,9,3,2,NULL),(6,'Pin Lithium-ion 4 cells','2024-12-23 17:06:22.338815',' 360.4 x 271.09 x 25.9 mm, nặng 2.5kg, vỏ nhựa',28,512,'SSD M.2 NVMe, 1 khe cắm HDD + 2 khe SSD, nâng cấp tối đa 1TB (HDD) và 2TB (SSD)',' English International Backlit Keyboard, RGB 4 Zone','Nitro 5 Tiger Gaming AN515-58-5193',0,'Trung Quốc',26990000,'DDR5, 2 khe cắm, hỗ trợ tối đa 32GB',16,' Acer ComfyView LED-backlit  1920 x 1200 pixels, tần số quét 144Hz, tấm nền IPS',15.6,24,4,22,2,NULL),(8,'Pin Lithium-ion 3 cells','2024-12-23 17:29:44.112814',' 358.50 x 235.56 x 18.99 mm, nặng 1.66 kg, vỏ nhựa',10,512,'SSD M.2 PCIe',' English International Non-backlit Keyboard','Inspiron N3530',0,'Trung Quốc',19990000,'DDR4, hỗ trợ tối đa 16GB',16,' Anti-Glare LED Backlit, 1920 x 1080 pixels, tần số quét 120 Hz, tấm nền WVA',15.6,12,5,20,2,NULL),(9,'','2025-01-05 11:34:10.585510','',20,512,'','','Aspire 3 A315-44P-R5QG',0,'',14990000,'',16,'',15.6,12,4,9,2,NULL),(10,'','2025-01-05 11:39:42.228094','',36,512,'','','Nitro 5 Tiger Gaming AN515-58-52SP',0,'',29490000,'',32,'',15.6,12,4,18,2,NULL),(11,'','2025-01-05 11:47:27.871098','',34,512,'','','Swift 3 SF314-512-741L',0,'',29490000,'',16,'',14,12,4,36,2,NULL),(12,'','2025-01-05 11:52:32.210887','',17,512,'','','Vivobook E1404FA-NK186W',0,'',14990000,'',16,'',14,12,3,1,2,NULL),(13,'','2025-01-05 12:05:34.751791','',15,512,'','','Aspire Go AG15-31P-32U6',0,'',10990000,'',8,'',15.6,12,4,16,2,NULL),(14,'','2025-01-05 12:37:07.383475','',21,512,'','','Gaming Victus 16-s0173AX',0,'',27390000,'',16,'',16.1,12,10,2,2,NULL),(15,'','2025-01-05 12:41:32.222467','',12,1024,'','','Gaming Katana 15 B13UDXK-2213VN',0,'',21990000,'',16,'',16.1,24,9,23,2,NULL),(16,'','2025-01-05 12:46:07.654490','',13,512,'','','Gaming Thin15 B13UC-2044VN',0,'',22990000,'',16,'',15.6,24,9,33,2,NULL),(17,'','2025-01-05 12:51:40.971967','',27,512,'','','Nitro 16 Phoenix Gaming AN16-41-R50Z',0,'',30990000,'',16,'',16.1,12,4,2,2,NULL),(18,'','2025-01-05 12:55:58.012692','',5,512,'','','Inspiron 14 N5440',0,'',20990000,'',16,'',14,12,5,20,2,NULL),(19,'','2025-01-05 12:59:34.865514','',5,512,'','','Vostro V3520',0,'',17290000,'',16,'',15.6,12,5,21,2,NULL),(20,'','2025-01-05 13:03:13.833179','',25,512,'','','Nitro V Gaming ANV15-51-53NE',0,'',23990000,'',16,'',15.6,12,4,24,2,NULL),(21,'fffff','2025-01-05 23:22:17.225273','vvvvvv',0.2,10,'11111','ddd','ccccccccccc',0,'111',111111111,'11vvvv',5,'1111111',12,11,3,2,2,1),(22,'1111','2025-01-06 09:42:26.169062','1111',1,4,'ffff','1111','ggggg',0,'re',199,'fffff',3,'1gggg',16,12,2,2,2,1);
/*!40000 ALTER TABLE `laptop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laptop_category`
--

DROP TABLE IF EXISTS `laptop_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laptop_category` (
  `laptop_id` int NOT NULL,
  `category_id` tinyint NOT NULL,
  PRIMARY KEY (`laptop_id`,`category_id`),
  KEY `FKsyliq2wfw7urfgs07b7kfescp` (`category_id`),
  CONSTRAINT `FKsyliq2wfw7urfgs07b7kfescp` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FKtlp6kds8vt66jqdm9ieg6cjji` FOREIGN KEY (`laptop_id`) REFERENCES `laptop` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laptop_category`
--

LOCK TABLES `laptop_category` WRITE;
/*!40000 ALTER TABLE `laptop_category` DISABLE KEYS */;
INSERT INTO `laptop_category` VALUES (21,1),(22,1),(2,2),(5,2),(6,2),(10,2),(11,2),(14,2),(15,2),(16,2),(17,2),(20,2),(21,2),(1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(8,3),(9,3),(10,3),(11,3),(12,3),(13,3),(14,3),(15,3),(16,3),(17,3),(18,3),(19,3),(20,3),(1,4),(3,4),(4,4),(8,4),(9,4),(12,4),(13,4),(18,4),(19,4),(22,4),(3,5);
/*!40000 ALTER TABLE `laptop_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laptop_color`
--

DROP TABLE IF EXISTS `laptop_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laptop_color` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` smallint NOT NULL,
  `color_id` tinyint NOT NULL,
  `laptop_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmt3fxdw0ya8s8j4rbwrwn6os6` (`color_id`),
  KEY `FKk2px0wb0kbe7ufidvlyncpx82` (`laptop_id`),
  CONSTRAINT `FKk2px0wb0kbe7ufidvlyncpx82` FOREIGN KEY (`laptop_id`) REFERENCES `laptop` (`id`),
  CONSTRAINT `FKmt3fxdw0ya8s8j4rbwrwn6os6` FOREIGN KEY (`color_id`) REFERENCES `color` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laptop_color`
--

LOCK TABLES `laptop_color` WRITE;
/*!40000 ALTER TABLE `laptop_color` DISABLE KEYS */;
INSERT INTO `laptop_color` VALUES (1,98,6,1),(2,96,4,2),(3,100,1,3),(4,100,5,3),(5,99,4,3),(6,100,6,3),(7,99,4,4),(8,98,4,5),(9,89,1,6),(11,99,6,8),(12,98,6,9),(13,87,1,10),(14,88,1,11),(15,98,1,12),(16,97,6,13),(17,100,1,14),(18,100,1,15),(19,97,4,16),(20,92,1,17),(21,100,7,18),(22,100,4,19),(23,100,1,20),(24,111,1,21),(25,995,4,22);
/*!40000 ALTER TABLE `laptop_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laptop_gpu`
--

DROP TABLE IF EXISTS `laptop_gpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laptop_gpu` (
  `laptop_id` int NOT NULL,
  `gpu_id` smallint NOT NULL,
  PRIMARY KEY (`laptop_id`,`gpu_id`),
  KEY `FK6seg409eedjj0rvh5mq1c08yp` (`gpu_id`),
  CONSTRAINT `FK6seg409eedjj0rvh5mq1c08yp` FOREIGN KEY (`gpu_id`) REFERENCES `gpu` (`id`),
  CONSTRAINT `FKn5y2j6x0mhi0ilhe8psi6vrd5` FOREIGN KEY (`laptop_id`) REFERENCES `laptop` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laptop_gpu`
--

LOCK TABLES `laptop_gpu` WRITE;
/*!40000 ALTER TABLE `laptop_gpu` DISABLE KEYS */;
INSERT INTO `laptop_gpu` VALUES (2,1),(3,1),(5,1),(15,1),(16,1),(21,1),(22,1),(21,2),(22,2),(20,3),(5,4),(10,4),(14,4),(15,4),(16,4),(2,6),(6,6),(17,6),(9,13),(12,13),(14,13),(17,15),(1,16),(4,16),(13,16),(20,16),(6,19),(8,19),(10,19),(11,19),(18,19),(19,19);
/*!40000 ALTER TABLE `laptop_gpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laptop_images`
--

DROP TABLE IF EXISTS `laptop_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laptop_images` (
  `laptop_id` int NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  KEY `FKmnmdullw7da8qdn5vl0k5uyhd` (`laptop_id`),
  CONSTRAINT `FKmnmdullw7da8qdn5vl0k5uyhd` FOREIGN KEY (`laptop_id`) REFERENCES `laptop` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laptop_images`
--

LOCK TABLES `laptop_images` WRITE;
/*!40000 ALTER TABLE `laptop_images` DISABLE KEYS */;
INSERT INTO `laptop_images` VALUES (1,'/images/laptop/1/1734785204230_2022_12_7_638060331277213439_hp-14s-dq-bac-4.jpg'),(1,'/images/laptop/1/1734785204227_2022_12_7_638060331277213439_hp-14s-dq-bac-2.jpg'),(1,'/images/laptop/1/1734785204233_2022_12_7_638060331277536556_hp-14s-dq-bac-1.jpg'),(1,'/images/laptop/1/1734785204225_2022_12_7_638060331276811554_hp-14s-dq-bac-3.jpg'),(1,'/images/laptop/1/1734785204092_2022_12_7_638060331276179591_hp-14s-dq-bac-5.jpg'),(2,'/images/laptop/2/1734785824072_asus_tuf_gaming_a15_2023_jaeger_gray_4_fa6ce482eb.png'),(2,'/images/laptop/2/1734785824067_asus_tuf_gaming_a15_2023_jaeger_gray_3_32c5f07d59.png'),(2,'/images/laptop/2/1734785824055_asus_tuf_gaming_a15_2023_jaeger_gray_1_d406d0a91a.png'),(2,'/images/laptop/2/1734785824073_asus_tuf_gaming_a15_2023_jaeger_gray_5_a548ec117e.png'),(2,'/images/laptop/2/1734785824075_asus_tuf_gaming_a15_2023_jaeger_gray_22b3a74a4b.png'),(2,'/images/laptop/2/1734785824064_asus_tuf_gaming_a15_2023_jaeger_gray_2_a8ae42d3a3.png'),(3,'/images/laptop/3/1734786630496_2024_3_20_638465302395359512_macbook-air-m3-13-2024-5.jpg'),(3,'/images/laptop/3/1734786630514_2024_3_20_638465309414918305_macbook-air-m3-13-2024-xanh-1.jpg'),(3,'/images/laptop/3/1734786630498_2024_3_20_638465302396608901_macbook-air-m3-13-2024-6.jpg'),(3,'/images/laptop/3/1734786630512_2024_3_20_638465309414449371_macbook-air-m3-13-2024-xanh-2.jpg'),(3,'/images/laptop/3/1734786630501_2024_3_20_638465309414130328_macbook-air-m3-13-2024-xanh-9.jpg'),(3,'/images/laptop/3/1734786630505_2024_3_20_638465309414292284_macbook-air-m3-13-2024-xanh-7.jpg'),(3,'/images/laptop/3/1734786630487_2024_3_20_638465302394266202_macbook-air-m3-13-2024-4.jpg'),(4,'/images/laptop/4/1734946577690_2023_8_15_638276943814922316_lenovo-ideapad-3-14iah8-xam-1.jpg'),(4,'/images/laptop/4/1734946577686_2023_8_15_638276943814453136_lenovo-ideapad-3-14iah8-xam-3.jpg'),(4,'/images/laptop/4/1734946577618_2023_8_15_638276943814296264_lenovo-ideapad-3-14iah8-xam-2.jpg'),(5,'/images/laptop/5/1734947347511_msi_thin_a15_b7u_4_d76e6974b3.png'),(5,'/images/laptop/5/1734947347497_msi_thin_a15_b7u_2_22b97279ed.png'),(5,'/images/laptop/5/1734947347462_msi_thin_a15_b7u_1_502129b847.png'),(5,'/images/laptop/5/1734947347500_msi_thin_a15_b7u_3_617d4028ff.png'),(5,'/images/laptop/5/1734947347518_msi_thin_a15_b7u_61070ff9c3.png'),(6,'/images/laptop/6/1734948382693_acer_nitro_5_tiger_an515_58_3_6c3ef189b6.png'),(6,'/images/laptop/6/1734948382689_acer_nitro_5_tiger_an515_58_2_a5385bfde2.png'),(6,'/images/laptop/6/1734948382691_acer_nitro_5_tiger_an515_58_2a10078adb.png'),(6,'/images/laptop/6/1734948382699_acer_nitro_5_tiger_an515_58_6_bc97c6b2ec.png'),(6,'/images/laptop/6/1734948382697_acer_nitro_5_tiger_an515_58_5_57c244f8c2.png'),(6,'/images/laptop/6/1734948382686_acer_nitro_5_tiger_an515_58_1_9235f94842.png'),(6,'/images/laptop/6/1734948382695_acer_nitro_5_tiger_an515_58_4_a60c9e8c34.png'),(8,'/images/laptop/8/1734949784527_dell_inspiron_15_3530_sliver_3_d9d5396a56.png'),(8,'/images/laptop/8/1734949784528_dell_inspiron_15_3530_sliver_4_1c60362d3c.png'),(8,'/images/laptop/8/1734949784525_dell_inspiron_15_3530_sliver_2_73ec35c560.png'),(8,'/images/laptop/8/1734949784531_dell_inspiron_15_3530_sliver_049b98a1a0.png'),(8,'/images/laptop/8/1734949784521_dell_inspiron_15_3530_sliver_1_10d5c22c4e.png'),(9,'/images/laptop/9/1736051651425_2022_3_7_637822560588227307_acer-aspire-3-a315-58-bac-4.jpg'),(9,'/images/laptop/9/1736051651432_2022_3_7_637822560589321092_acer-aspire-3-a315-58-bac-5.jpg'),(9,'/images/laptop/9/1736051651434_2022_3_7_637822560591977278_acer-aspire-3-a315-58-bac-3.jpg'),(9,'/images/laptop/9/1736051651429_2022_3_7_637822560588852335_acer-aspire-3-a315-58-bac-1.jpg'),(9,'/images/laptop/9/1736051651306_2022_3_7_637822560587914821_acer-aspire-3-a315-58-bac-6.jpg'),(10,'/images/laptop/10/1736051982553_2022_3_1_637817435459912672_acer-nitro-gaming-an515-58-den-2.jpg'),(10,'/images/laptop/10/1736051982562_2022_3_1_637817435465226004_acer-nitro-gaming-an515-58-den-3.jpg'),(10,'/images/laptop/10/1736051982556_2022_3_1_637817435460381731_acer-nitro-gaming-an515-58-den-5.jpg'),(10,'/images/laptop/10/1736051982548_2022_3_1_637817435459600384_acer-nitro-gaming-an515-58-den-6.jpg'),(10,'/images/laptop/10/1736051982559_2022_3_1_637817435462881696_acer-nitro-gaming-an515-58-den-4.jpg'),(10,'/images/laptop/10/1736051982564_2022_3_1_637817435466475076_acer-nitro-gaming-an515-58-den-1.jpg'),(11,'/images/laptop/11/1736052448199_2023_7_6_638242339490771203_acer-swift-3-sf314-512-vang-2.jpg'),(11,'/images/laptop/11/1736052448186_2023_7_6_638242339490357092_acer-swift-3-sf314-512-vang-4.jpg'),(11,'/images/laptop/11/1736052448196_2023_7_6_638242339490670389_acer-swift-3-sf314-512-vang-1.jpg'),(11,'/images/laptop/11/1736052448182_2023_7_6_638242339490221885_acer-swift-3-sf314-512-vang-3.jpg'),(11,'/images/laptop/11/1736052448193_2023_7_6_638242339490357092_acer-swift-3-sf314-512-vang-5.jpg'),(12,'/images/laptop/12/1736052752578_2023_4_11_638168280594255882_asus-vivobook-e1404fa-nk186w-r5-7520u-den-2.jpg'),(12,'/images/laptop/12/1736052752575_2023_4_11_638168280593483331_asus-vivobook-e1404fa-nk186w-r5-7520u-den-3.jpg'),(12,'/images/laptop/12/1736052752589_2023_4_11_638168280594574722_asus-vivobook-e1404fa-nk186w-r5-7520u-den-5.jpg'),(12,'/images/laptop/12/1736052752583_2023_4_11_638168280594574722_asus-vivobook-e1404fa-nk186w-r5-7520u-den-4.jpg'),(12,'/images/laptop/12/1736052752580_2023_4_11_638168280594574722_asus-vivobook-e1404fa-nk186w-r5-7520u-den-1.jpg'),(13,'/images/laptop/13/1736053535098_2024_5_24_638521377578632423_ag15-31p-32u6-1.jpg'),(13,'/images/laptop/13/1736053535103_2024_5_24_638521377580507442_ag15-31p-32u6-6.jpg'),(13,'/images/laptop/13/1736053535086_2024_5_24_638521377578163669_ag15-31p-32u6-4.jpg'),(13,'/images/laptop/13/1736053535101_2024_5_24_638521377578632423_ag15-31p-32u6-2.jpg'),(13,'/images/laptop/13/1736053535108_ag15_31p_32u6_3_95703529f5.png'),(13,'/images/laptop/13/1736053535105_2024_5_24_638521377582069921_ag15-31p-32u6.jpg'),(13,'/images/laptop/13/1736053535092_2024_5_24_638521377578476174_ag15-31p-32u6-5.jpg'),(14,'/images/laptop/14/1736055427778_hp_victus_gaming_16_s0173ax_a9lg9pa_2_3af9898363.png'),(14,'/images/laptop/14/1736055427769_hp_victus_gaming_16_s0173ax_a9lg9pa_1_bbc3fef79f.png'),(14,'/images/laptop/14/1736055427781_hp_victus_gaming_16_s0173ax_a9lg9pa_3_0187b3407b.png'),(14,'/images/laptop/14/1736055427783_hp_victus_gaming_16_s0173ax_a9lg9pa_54d2839682.png'),(15,'/images/laptop/15/1736055692600_msi_katana_15_b13_1_68d2fbd2bd.png'),(15,'/images/laptop/15/1736055692609_msi_katana_15_b13_3_b371536ef9.png'),(15,'/images/laptop/15/1736055692615_msi_katana_15_b13_60fefcc66a.png'),(15,'/images/laptop/15/1736055692605_msi_katana_15_b13_2_5690324ebc.png'),(15,'/images/laptop/15/1736055692612_msi_katana_15_b13_4_a398d49c2b.png'),(16,'/images/laptop/16/1736055968052_msi_thin_15_b13u_3_326f0553b2.png'),(16,'/images/laptop/16/1736055968062_msi_thin_15_b13u_abbb0dcf12.png'),(16,'/images/laptop/16/1736055968057_msi_thin_15_b13u_4_fddd93d9aa.png'),(16,'/images/laptop/16/1736055968044_msi_thin_15_b13u_1_9865fbe7af.png'),(16,'/images/laptop/16/1736055968049_msi_thin_15_b13u_2_7a2679b396.png'),(17,'/images/laptop/17/1736056301335_acer_nitro_16_phoenix_an16_41_6_163b8e52c9.png'),(17,'/images/laptop/17/1736056301321_acer_nitro_16_phoenix_an16_41_2_04f126e4fb.png'),(17,'/images/laptop/17/1736056301330_acer_nitro_16_phoenix_an16_41_4_e663442fe5.png'),(17,'/images/laptop/17/1736056301332_acer_nitro_16_phoenix_an16_41_5_0800644afe.png'),(17,'/images/laptop/17/1736056301313_acer_nitro_16_phoenix_an16_41_1_6bad70c49f.png'),(17,'/images/laptop/17/1736056301326_acer_nitro_16_phoenix_an16_41_3_631e200b66.png'),(18,'/images/laptop/18/1736056558289_dell_inspiron_5440_blue_2_1fb4af49bc.png'),(18,'/images/laptop/18/1736056558306_dell_inspiron_5440_blue_ee119867e4.png'),(18,'/images/laptop/18/1736056558282_dell_inspiron_5440_blue_1_6accb20099.png'),(18,'/images/laptop/18/1736056558295_dell_inspiron_5440_blue_4_558ce78fff.png'),(18,'/images/laptop/18/1736056558300_dell_inspiron_5440_blue_5_36c9a6ab51.png'),(18,'/images/laptop/18/1736056558293_dell_inspiron_5440_blue_3_26fb936be7.png'),(18,'/images/laptop/18/1736056558303_dell_inspiron_5440_blue_6_de0cc99b72.png'),(19,'/images/laptop/19/1736056775217_dell_vostro_3520_gray_4_4584d5f642.png'),(19,'/images/laptop/19/1736056775215_dell_vostro_3520_gray_3_e0cf92f422.png'),(19,'/images/laptop/19/1736056775222_dell_vostro_3520_gray_60d290041f.png'),(19,'/images/laptop/19/1736056775212_dell_vostro_3520_gray_2_6a6afa781b.png'),(19,'/images/laptop/19/1736056775206_dell_vostro_3520_gray_1_9839f74c13.png'),(20,'/images/laptop/20/1736056994191_2023_11_8_638350517639494080_acer-nitro-v-gaming-anv15-51-55ca-i5-13420h-1.jpg'),(20,'/images/laptop/20/1736056994183_2023_11_8_638350517639181628_acer-nitro-v-gaming-anv15-51-55ca-i5-13420h-4.jpg'),(20,'/images/laptop/20/1736056994194_2023_11_8_638350517639494080_acer-nitro-v-gaming-anv15-51-55ca-i5-13420h-2.jpg'),(20,'/images/laptop/20/1736056994178_2023_11_8_638350517639025354_acer-nitro-v-gaming-anv15-51-55ca-i5-13420h-3.jpg'),(20,'/images/laptop/20/1736056994185_2023_11_8_638350517639337847_acer-nitro-v-gaming-anv15-51-55ca-i5-13420h-5.jpg'),(21,'/images/laptop/21/1736094138154_87064057_2528849077384391_7155072729501138944_n.jpg'),(21,'/images/laptop/21/1736094138074_87043649_655515281924884_498040688202481664_n.jpg'),(21,'/images/laptop/21/1736094138157_87066136_1048579645540688_4988374905352355840_n.jpg'),(21,'/images/laptop/21/1736094138159_87069520_190277792319386_5532254757302829056_n.jpg'),(22,'/images/laptop/22/1736131346643_295688078_596855852067536_1861079375750695787_n.jpg'),(22,'/images/laptop/22/1736131346614_280371669_409733427718205_2775194075417483880_n.png');
/*!40000 ALTER TABLE `laptop_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` smallint NOT NULL,
  `color_id` tinyint DEFAULT NULL,
  `laptop_id` int DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5le3et9evitic5shrvmuenkli` (`color_id`),
  KEY `FKl827ou4jgpyyndpq5s39p0tpy` (`laptop_id`),
  KEY `FKbcgvja3wes9hj726jlb3n7rc` (`order_id`),
  CONSTRAINT `FK5le3et9evitic5shrvmuenkli` FOREIGN KEY (`color_id`) REFERENCES `color` (`id`),
  CONSTRAINT `FKbcgvja3wes9hj726jlb3n7rc` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`id`),
  CONSTRAINT `FKl827ou4jgpyyndpq5s39p0tpy` FOREIGN KEY (`laptop_id`) REFERENCES `laptop` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (1,1,1,11,1),(2,1,1,10,2),(3,1,1,10,3),(4,1,1,10,4),(5,1,4,3,5),(6,1,1,11,6),(7,1,1,10,7),(8,1,1,10,8),(9,1,1,11,9),(10,1,6,1,10),(11,1,4,2,10),(12,2,4,5,11),(13,1,4,4,11),(14,2,1,12,11),(15,1,1,10,11),(16,1,4,2,11),(17,1,1,11,11),(18,1,6,9,12),(19,1,6,9,13),(20,1,6,8,14),(21,6,1,17,15),(22,1,1,17,16),(23,1,1,11,17),(24,1,1,11,18),(25,1,1,10,19),(26,1,1,10,20),(27,1,6,1,21),(28,1,1,10,22),(29,1,1,6,23),(30,3,4,16,23),(31,2,1,6,24),(32,2,4,2,24),(33,6,1,6,25),(34,1,6,13,26),(35,1,1,17,27),(36,1,1,11,28),(37,1,6,13,29),(38,1,4,22,30),(39,1,1,6,31),(40,1,1,6,32),(41,1,1,11,33),(42,1,1,11,34),(43,1,1,10,35),(44,1,1,11,36),(45,1,1,10,37),(46,1,4,22,38),(47,1,1,10,39),(48,1,4,22,40),(49,1,1,10,41),(50,1,4,22,42),(51,1,4,22,43),(52,1,6,13,44),(53,1,1,11,45),(54,1,1,11,46);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_version`
--

DROP TABLE IF EXISTS `os_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `os_version` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `version` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_version`
--

LOCK TABLES `os_version` WRITE;
/*!40000 ALTER TABLE `os_version` DISABLE KEYS */;
INSERT INTO `os_version` VALUES (1,'Windows 10 Home'),(2,'Windows 11 Home'),(3,'macOS 10.10 Yosemite'),(4,'macOS 10.11 El Capitan'),(5,'macOS 10.12 Sierra'),(6,'macOS 10.13 High Sierra'),(7,'macOS 10.14 Mojave'),(8,'macOS 10.15 Catalina'),(9,'macOS 11 Big Sur'),(10,'macOS 12 Monterey'),(11,'macOS 13 Ventura');
/*!40000 ALTER TABLE `os_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `laptop_id` int NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbde4bm2clevfyglo43eb2tmpt` (`laptop_id`),
  KEY `FKpn05vbx6usw0c65tcyuce4dw5` (`user_id`),
  CONSTRAINT `FKbde4bm2clevfyglo43eb2tmpt` FOREIGN KEY (`laptop_id`) REFERENCES `laptop` (`id`),
  CONSTRAINT `FKpn05vbx6usw0c65tcyuce4dw5` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (1,'2025-01-05 23:30:07.019922',5,11,1),(2,'2025-01-05 23:30:28.820451',5,11,1),(3,'2025-01-05 23:31:17.990084',5,11,1),(4,'2025-01-05 23:32:27.005567',5,11,1),(5,'2025-01-05 23:32:48.789504',5,11,1),(6,'2025-01-05 23:35:38.614335',5,11,1),(7,'2025-01-05 23:35:38.477481',5,11,1),(8,'2025-01-05 23:35:38.852363',5,11,1),(9,'2025-01-05 23:35:38.878583',5,11,1),(10,'2025-01-05 23:35:39.050935',5,11,1),(11,'2025-01-05 23:35:52.077942',5,11,1),(12,'2025-01-05 23:36:06.932691',5,11,1),(13,'2025-01-05 23:37:35.533087',5,11,1),(14,'2025-01-05 23:37:54.309563',0,11,1),(15,'2025-01-05 23:38:02.202820',0,11,1),(16,'2025-01-08 09:28:06.623643',5,11,1),(17,'2025-01-08 11:48:43.440080',5,10,1),(18,'2025-01-08 16:44:34.431280',5,11,2),(19,'2025-01-08 16:49:52.644726',5,11,2),(20,'2025-01-09 08:17:19.471335',5,6,1),(21,'2025-01-09 08:39:45.500963',0,10,1),(22,'2025-01-09 08:40:01.567864',5,10,1),(23,'2025-01-09 08:41:22.654672',5,10,1),(24,'2025-01-10 16:13:56.133546',5,17,1);
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `review` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `laptop_id` int DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbkkctwme6w0nq8qqgt7np9xbd` (`laptop_id`),
  KEY `FKiyf57dy48lyiftdrf7y87rnxi` (`user_id`),
  CONSTRAINT `FKbkkctwme6w0nq8qqgt7np9xbd` FOREIGN KEY (`laptop_id`) REFERENCES `laptop` (`id`),
  CONSTRAINT `FKiyf57dy48lyiftdrf7y87rnxi` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'2025-01-08 09:28:05.648960','máy xịn',11,1),(2,'2025-01-08 11:48:42.418796','Máy nhanh',10,1),(3,'2025-01-08 16:44:33.816480','Test cmt',11,2),(4,'2025-01-08 16:49:52.466046','Test cmt',11,2),(5,'2025-01-09 08:17:19.141981','Tệ',6,1),(6,'2025-01-09 08:39:45.225214','resr',10,1),(7,'2025-01-09 08:40:01.507717','Test',10,1),(8,'2025-01-09 08:41:22.480636','Test',10,1),(9,'2025-01-10 16:13:54.854695','Sản phẩm quá tệ\n',17,1);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `delivery_date` datetime(6) DEFAULT NULL,
  `order_status` tinyint DEFAULT NULL,
  `payment_method` tinyint NOT NULL,
  `payment_status` tinyint NOT NULL,
  `total_item` int DEFAULT NULL,
  `total_price` float DEFAULT NULL,
  `shipping_address_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `total_discounted_price` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9madb4jc4gsdo2c5bl7uyc2n3` (`shipping_address_id`),
  KEY `FKhl89ss10q9grw8w9oke9y6d45` (`user_id`),
  CONSTRAINT `FK9madb4jc4gsdo2c5bl7uyc2n3` FOREIGN KEY (`shipping_address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `FKhl89ss10q9grw8w9oke9y6d45` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `tbl_order_chk_1` CHECK ((`order_status` between 0 and 5)),
  CONSTRAINT `tbl_order_chk_2` CHECK ((`payment_method` between 0 and 5)),
  CONSTRAINT `tbl_order_chk_3` CHECK ((`payment_status` between 0 and 3))
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_order`
--

LOCK TABLES `tbl_order` WRITE;
/*!40000 ALTER TABLE `tbl_order` DISABLE KEYS */;
INSERT INTO `tbl_order` VALUES (1,'2025-01-05 23:42:45.547561',NULL,4,0,1,1,29490000,2,1,19463400),(2,'2025-01-05 23:52:10.123163',NULL,4,0,1,1,29490000,3,1,18873600),(3,'2025-01-05 23:53:48.448659',NULL,4,0,1,1,29490000,4,1,18873600),(4,'2025-01-06 00:06:08.778684',NULL,NULL,0,2,1,29490000,5,1,18873600),(5,'2025-01-06 10:09:57.574268',NULL,4,0,1,1,28490000,6,2,24501400),(6,'2025-01-06 10:12:42.441898',NULL,4,0,1,1,29490000,7,2,19463400),(7,'2025-01-06 21:30:03.230500',NULL,4,0,1,1,29490000,8,2,18873600),(8,'2025-01-06 21:41:00.983766',NULL,4,0,1,1,29490000,9,1,18873600),(9,'2025-01-06 22:09:25.209025',NULL,4,0,1,1,29490000,10,1,19463400),(10,'2025-01-06 22:20:17.963544',NULL,4,0,1,2,41480000,11,2,46014600),(11,'2025-01-06 22:41:24.433918',NULL,4,0,1,8,177420000,12,2,477418000),(12,'2025-01-07 14:34:55.650659',NULL,4,0,1,1,14990000,13,1,11992000),(13,'2025-01-07 19:51:36.410244',NULL,4,0,1,1,14990000,14,1,11992000),(14,'2025-01-07 23:47:26.337290',NULL,4,0,0,1,19990000,15,1,17991000),(15,'2025-01-07 23:52:23.412099',NULL,4,0,0,6,185940000,16,1,135736000),(16,'2025-01-08 00:47:21.735573',NULL,4,0,1,1,30990000,17,1,22622700),(17,'2025-01-08 00:55:04.514724',NULL,4,0,1,1,29490000,18,1,19463400),(18,'2025-01-08 01:01:50.365603',NULL,0,0,1,1,29490000,19,1,19463400),(19,'2025-01-08 01:11:52.467173',NULL,0,0,1,1,29490000,20,1,18873600),(20,'2025-01-08 01:20:12.469940',NULL,0,0,1,1,29490000,21,1,18873600),(21,'2025-01-08 01:37:18.519659',NULL,4,0,2,1,12990000,22,1,11171400),(22,'2025-01-08 16:27:57.325758',NULL,0,0,0,1,29490000,23,2,18873600),(23,'2025-01-08 22:24:29.446684',NULL,0,0,0,4,95960000,24,1,102918000),(24,'2025-01-08 22:41:15.617850',NULL,0,0,1,4,110960000,25,1,86728800),(25,'2025-01-09 08:33:19.123281',NULL,0,5,0,6,161940000,27,1,116597000),(26,'2025-01-09 09:02:57.436053',NULL,0,0,1,1,10990000,28,1,9341500),(27,'2025-01-10 16:24:12.574936',NULL,0,0,1,1,30990000,29,1,22622700),(28,'2025-01-10 20:24:16.531489',NULL,0,5,0,1,29490000,30,1,19463400),(29,'2025-01-10 20:24:48.265126',NULL,0,0,1,1,10990000,31,1,9341500),(30,'2025-01-10 20:39:50.220707',NULL,0,0,1,1,199,32,1,197.01),(31,'2025-01-10 20:48:52.575192',NULL,0,0,1,1,26990000,33,1,19432800),(32,'2025-01-10 21:01:28.478042',NULL,0,0,1,1,26990000,34,1,19432800),(33,'2025-01-10 21:12:02.462265',NULL,NULL,0,2,1,29490000,35,1,19463400),(34,'2025-01-10 21:44:08.857866',NULL,0,5,0,1,29490000,36,1,19463400),(35,'2025-01-10 21:44:56.792466',NULL,NULL,0,1,1,29490000,37,1,18873600),(36,'2025-01-10 21:55:52.752386',NULL,NULL,0,1,1,29490000,38,1,19463400),(37,'2025-01-10 21:59:00.268530',NULL,0,0,1,1,29490000,39,1,18873600),(38,'2025-01-10 22:03:13.036627',NULL,0,0,0,1,199,40,1,197.01),(39,'2025-01-10 22:10:03.072006',NULL,0,0,1,1,29490000,41,1,18873600),(40,'2025-01-10 22:17:30.494682',NULL,0,0,0,1,199,42,1,197.01),(41,'2025-01-10 22:28:37.318093',NULL,0,0,0,1,29490000,43,1,18873600),(42,'2025-01-10 22:30:33.195994',NULL,0,0,1,1,199,44,1,197.01),(43,'2025-01-11 10:42:11.835412',NULL,0,5,0,1,199,45,1,197.01),(44,'2025-01-11 10:55:09.166187',NULL,NULL,0,2,1,10990000,46,1,9341500),(45,'2025-01-11 11:15:54.004297',NULL,NULL,0,2,1,29490000,47,1,19463400),(46,'2025-01-11 11:18:12.549761',NULL,0,0,1,1,29490000,48,1,19463400);
/*!40000 ALTER TABLE `tbl_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `birthday` date DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `gender` enum('FEMALE','MALE') CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `role` enum('ADMIN','USER') CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,NULL,'2024-12-21 19:32:23.634383','olympic963@gmail.com',NULL,'Nguyễn Anh Tú','$2a$10$3/eJJjiHZinYzhyySwmJtei7K1W5ShTjoU1iv8A0N.BDZyUd50gCu','0357851596','ADMIN'),(2,'2002-12-01','2025-01-06 09:36:23.287483','nguyenanhtu01122002@gmail.com','MALE','Nguyễn Anh Tú','$2a$10$7PV9Nimr..BPdyqAIydY6eSClDHPtsuQW4gVPMNqGsNWHOeuBaEum','0988251497','USER');
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

-- Dump completed on 2025-05-12 12:11:54
