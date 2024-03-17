-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: mylabtest1
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
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_username` varchar(45) DEFAULT NULL,
  `appointment_type` varchar(100) DEFAULT NULL,
  `appointment_description` varchar(350) DEFAULT NULL,
  `doctor_id` int DEFAULT NULL,
  `technician_id` int DEFAULT NULL,
  `created_date_time` varchar(45) DEFAULT NULL,
  `checkup_date` varchar(45) DEFAULT NULL,
  `checkup_time` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `doctor_feedback` varchar(350) DEFAULT NULL,
  `test_results` varchar(3000) DEFAULT NULL,
  `payment` varchar(45) DEFAULT NULL,
  `issued_date_time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (20,'22','Complete Blood Count (CBC)','test',4,5,'2024-03-17 16:10:32','2024-03-20','16:30 PM','Completed',NULL,'[{\"ingradientName\":\"White Blood Cells (WBC)\",\"hint\":\"Normal: 4.0-11.0 x 10^9/L\",\"value\":\"8\"},{\"ingradientName\":\"Red Blood Cells (RBC)\",\"hint\":\"Normal: 4.5-5.9 x 10^12/L\",\"value\":\"5\"},{\"ingradientName\":\"Hemoglobin (Hgb)\",\"hint\":\"Normal: 13.5-17.5 g/dL\",\"value\":\"15\"},{\"ingradientName\":\"Hematocrit (Hct)\",\"hint\":\"Normal: 38.3-48.6%\",\"value\":\"42\"},{\"ingradientName\":\"Platelets\",\"hint\":\"Normal: 150-450 x 10^9/L\",\"value\":\"280\"}]','paid','2024-03-17 16:20:03'),(21,'22','Kidney Function Tests','test',3,5,'2024-03-17 16:13:25','2024-03-20','16:30 PM','Completed',NULL,'[{\"ingradientName\":\"Blood Urea Nitrogen (BUN)\",\"hint\":\"Normal: 6-20 mg/dL\",\"value\":\"15\"},{\"ingradientName\":\"Creatinine\",\"hint\":\"Normal: 0.7-1.3 mg/dL\",\"value\":\"1\"},{\"ingradientName\":\"Estimated Glomerular Filtration Rate (eGFR)\",\"hint\":\"Normal: >60 mL/min/1.73m^2\",\"value\":\"55\"}]','paid','2024-03-17 16:21:41');
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `contact_number` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `nic` varchar(45) DEFAULT NULL,
  `medical_category` varchar(45) DEFAULT NULL,
  `registered_date_time` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (3,'Dr Sophia','Brown','456487954','awanthibandara322@gmail.com','101 Pine Road','female','456954621v','cardiology','2024-03-17 15:32:02','576b'),(4,'Dr William','Jones','778944654','william@gmail.com','246 Maple Drive','male','456321852v','dermatology','2024-03-17 15:43:45','xi1k'),(5,'Dr Olivia','Garcia','766654342','olivia@gmail.com','369 Cedar Court','female','874651325v','cardiology','2024-03-17 15:45:35','8nxm');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lab_receptionists`
--

DROP TABLE IF EXISTS `lab_receptionists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lab_receptionists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `contact_number` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `nic` varchar(45) DEFAULT NULL,
  `registered_date_time` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab_receptionists`
--

LOCK TABLES `lab_receptionists` WRITE;
/*!40000 ALTER TABLE `lab_receptionists` DISABLE KEYS */;
INSERT INTO `lab_receptionists` VALUES (1,'Christine','Ronalds','0771197087','christine@gmail.com','No 24 Flower Lane','Female','65454354v',NULL,'1234');
/*!40000 ALTER TABLE `lab_receptionists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `contact_number` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `nic` varchar(45) DEFAULT NULL,
  `date_of_birth` varchar(45) DEFAULT NULL,
  `registered_date_time` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (22,'Alexander','Davis','789954123','awanthibandara322@gmail.com','802 Walnut Street','male','789456125v','1998-07-08','2024-03-17 15:52:04','d6q6'),(23,'Charlotte','Rodriguez','567567567','charlotte@gmail.com','555 Birch Way','male','567567567v','1996-07-22','2024-03-17 15:56:38','sbg1'),(24,'Michael','Martinez','98798987','michael@gmail.com','707 Spruce Lane','male','987987987v','1990-05-25','2024-03-17 15:58:54','tsxt');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technicians`
--

DROP TABLE IF EXISTS `technicians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technicians` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `contact_number` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `nic` varchar(45) DEFAULT NULL,
  `registered_date_time` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technicians`
--

LOCK TABLES `technicians` WRITE;
/*!40000 ALTER TABLE `technicians` DISABLE KEYS */;
INSERT INTO `technicians` VALUES (5,'James','Smith','123123123','awanthibandara322@gmail.com','123 Main Street','male','123123123v','2024-03-17 14:51:02','bcxp'),(6,'Emily','Johnson','123123123','emily@gmail.com','456 Elm Avenue','female','456545487v','2024-03-17 15:25:46','9ac6'),(7,'Benjamin','Williams','456456456','benjamin@gmail.com','789 Oak Lane','male','778945321v','2024-03-17 15:26:48','7sij');
/*!40000 ALTER TABLE `technicians` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-17 23:00:39
