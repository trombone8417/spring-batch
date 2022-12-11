-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: spring_batch
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `batch_job_execution`
--

DROP TABLE IF EXISTS `batch_job_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `batch_job_execution` (
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `VERSION` bigint(20) DEFAULT NULL,
  `JOB_INSTANCE_ID` bigint(20) NOT NULL,
  `CREATE_TIME` datetime(6) NOT NULL,
  `START_TIME` datetime(6) DEFAULT NULL,
  `END_TIME` datetime(6) DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `EXIT_CODE` varchar(2500) DEFAULT NULL,
  `EXIT_MESSAGE` varchar(2500) DEFAULT NULL,
  `LAST_UPDATED` datetime(6) DEFAULT NULL,
  `JOB_CONFIGURATION_LOCATION` varchar(2500) DEFAULT NULL,
  PRIMARY KEY (`JOB_EXECUTION_ID`),
  KEY `JOB_INST_EXEC_FK` (`JOB_INSTANCE_ID`),
  CONSTRAINT `JOB_INST_EXEC_FK` FOREIGN KEY (`JOB_INSTANCE_ID`) REFERENCES `batch_job_instance` (`job_instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_job_execution`
--

LOCK TABLES `batch_job_execution` WRITE;
/*!40000 ALTER TABLE `batch_job_execution` DISABLE KEYS */;
INSERT INTO `batch_job_execution` VALUES (1,2,1,'2022-11-22 19:55:07.000000','2022-11-22 19:55:07.000000','2022-11-22 19:55:07.000000','COMPLETED','COMPLETED','','2022-11-22 19:55:07.000000',NULL),(2,2,1,'2022-12-10 08:29:00.596000','2022-12-10 08:29:00.848000','2022-12-10 08:29:00.919000','COMPLETED','NOOP','All steps already completed or no steps configured for this job.','2022-12-10 08:29:00.920000',NULL),(3,2,2,'2022-12-10 08:29:01.037000','2022-12-10 08:29:01.158000','2022-12-10 08:29:01.973000','COMPLETED','COMPLETED','','2022-12-10 08:29:01.973000',NULL),(4,2,1,'2022-12-10 11:39:38.946000','2022-12-10 11:39:39.096000','2022-12-10 11:39:39.130000','COMPLETED','NOOP','All steps already completed or no steps configured for this job.','2022-12-10 11:39:39.131000',NULL),(5,2,3,'2022-12-10 11:39:39.178000','2022-12-10 11:39:39.199000','2022-12-10 11:39:39.422000','COMPLETED','COMPLETED','','2022-12-10 11:39:39.423000',NULL),(6,2,4,'2022-12-10 13:06:23.547000','2022-12-10 13:06:23.611000','2022-12-10 13:06:23.850000','COMPLETED','COMPLETED','','2022-12-10 13:06:23.851000',NULL),(7,2,5,'2022-12-10 13:06:23.888000','2022-12-10 13:06:23.914000','2022-12-10 13:06:24.180000','COMPLETED','COMPLETED','','2022-12-10 13:06:24.181000',NULL),(8,2,6,'2022-12-10 13:08:22.441000','2022-12-10 13:08:22.503000','2022-12-10 13:08:22.719000','COMPLETED','COMPLETED','','2022-12-10 13:08:22.720000',NULL),(9,2,7,'2022-12-10 13:08:22.775000','2022-12-10 13:08:22.795000','2022-12-10 13:08:23.028000','COMPLETED','COMPLETED','','2022-12-10 13:08:23.028000',NULL);
/*!40000 ALTER TABLE `batch_job_execution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_job_execution_context`
--

DROP TABLE IF EXISTS `batch_job_execution_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `batch_job_execution_context` (
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `SHORT_CONTEXT` varchar(2500) NOT NULL,
  `SERIALIZED_CONTEXT` text,
  PRIMARY KEY (`JOB_EXECUTION_ID`),
  CONSTRAINT `JOB_EXEC_CTX_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `batch_job_execution` (`job_execution_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_job_execution_context`
--

LOCK TABLES `batch_job_execution_context` WRITE;
/*!40000 ALTER TABLE `batch_job_execution_context` DISABLE KEYS */;
INSERT INTO `batch_job_execution_context` VALUES (1,'{\"@class\":\"java.util.HashMap\"}',NULL),(2,'{\"@class\":\"java.util.HashMap\"}',NULL),(3,'{\"@class\":\"java.util.HashMap\"}',NULL),(4,'{\"@class\":\"java.util.HashMap\"}',NULL),(5,'{\"@class\":\"java.util.HashMap\"}',NULL),(6,'{\"@class\":\"java.util.HashMap\",\"jec\":\"jec value\"}',NULL),(7,'{\"@class\":\"java.util.HashMap\"}',NULL),(8,'{\"@class\":\"java.util.HashMap\",\"jec\":\"jec value\"}',NULL),(9,'{\"@class\":\"java.util.HashMap\"}',NULL);
/*!40000 ALTER TABLE `batch_job_execution_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_job_execution_params`
--

DROP TABLE IF EXISTS `batch_job_execution_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `batch_job_execution_params` (
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `TYPE_CD` varchar(6) NOT NULL,
  `KEY_NAME` varchar(100) NOT NULL,
  `STRING_VAL` varchar(250) DEFAULT NULL,
  `DATE_VAL` datetime(6) DEFAULT NULL,
  `LONG_VAL` bigint(20) DEFAULT NULL,
  `DOUBLE_VAL` double DEFAULT NULL,
  `IDENTIFYING` char(1) NOT NULL,
  KEY `JOB_EXEC_PARAMS_FK` (`JOB_EXECUTION_ID`),
  CONSTRAINT `JOB_EXEC_PARAMS_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `batch_job_execution` (`job_execution_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_job_execution_params`
--

LOCK TABLES `batch_job_execution_params` WRITE;
/*!40000 ALTER TABLE `batch_job_execution_params` DISABLE KEYS */;
INSERT INTO `batch_job_execution_params` VALUES (3,'LONG','run.id','','1970-01-01 08:00:00.000000',1,0,'Y'),(5,'LONG','run.id','','1970-01-01 08:00:00.000000',2,0,'Y'),(6,'STRING','a','b','1970-01-01 08:00:00.000000',0,0,'Y'),(6,'STRING','outputFile','D:\\桌面\\github\\spring-batch\\spring-batch\\OutputFiles','1970-01-01 08:00:00.000000',0,0,'Y'),(6,'STRING','run','three','1970-01-01 08:00:00.000000',0,0,'Y'),(6,'LONG','run.id','','1970-01-01 08:00:00.000000',1,0,'Y'),(7,'STRING','a','b','1970-01-01 08:00:00.000000',0,0,'Y'),(7,'STRING','outputFile','D:\\桌面\\github\\spring-batch\\spring-batch\\OutputFiles','1970-01-01 08:00:00.000000',0,0,'Y'),(7,'STRING','run','three','1970-01-01 08:00:00.000000',0,0,'Y'),(7,'LONG','run.id','','1970-01-01 08:00:00.000000',3,0,'Y'),(8,'STRING','a','b','1970-01-01 08:00:00.000000',0,0,'Y'),(8,'STRING','outputFile','D:\\桌面\\github\\spring-batch\\spring-batch\\OutputFiles\\students.csv','1970-01-01 08:00:00.000000',0,0,'Y'),(8,'STRING','run','three','1970-01-01 08:00:00.000000',0,0,'Y'),(8,'LONG','run.id','','1970-01-01 08:00:00.000000',2,0,'Y'),(9,'STRING','a','b','1970-01-01 08:00:00.000000',0,0,'Y'),(9,'STRING','outputFile','D:\\桌面\\github\\spring-batch\\spring-batch\\OutputFiles\\students.csv','1970-01-01 08:00:00.000000',0,0,'Y'),(9,'STRING','run','three','1970-01-01 08:00:00.000000',0,0,'Y'),(9,'LONG','run.id','','1970-01-01 08:00:00.000000',4,0,'Y');
/*!40000 ALTER TABLE `batch_job_execution_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_job_execution_seq`
--

DROP TABLE IF EXISTS `batch_job_execution_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `batch_job_execution_seq` (
  `ID` bigint(20) NOT NULL,
  `UNIQUE_KEY` char(1) NOT NULL,
  UNIQUE KEY `UNIQUE_KEY_UN` (`UNIQUE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_job_execution_seq`
--

LOCK TABLES `batch_job_execution_seq` WRITE;
/*!40000 ALTER TABLE `batch_job_execution_seq` DISABLE KEYS */;
INSERT INTO `batch_job_execution_seq` VALUES (9,'0');
/*!40000 ALTER TABLE `batch_job_execution_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_job_instance`
--

DROP TABLE IF EXISTS `batch_job_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `batch_job_instance` (
  `JOB_INSTANCE_ID` bigint(20) NOT NULL,
  `VERSION` bigint(20) DEFAULT NULL,
  `JOB_NAME` varchar(100) NOT NULL,
  `JOB_KEY` varchar(32) NOT NULL,
  PRIMARY KEY (`JOB_INSTANCE_ID`),
  UNIQUE KEY `JOB_INST_UN` (`JOB_NAME`,`JOB_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_job_instance`
--

LOCK TABLES `batch_job_instance` WRITE;
/*!40000 ALTER TABLE `batch_job_instance` DISABLE KEYS */;
INSERT INTO `batch_job_instance` VALUES (1,0,'First Job','d41d8cd98f00b204e9800998ecf8427e'),(2,0,'Second Job','853d3449e311f40366811cbefb3d93d7'),(3,0,'Second Job','e070bff4379694c0210a51d9f6c6a564'),(4,0,'First Job','7ac2fc549d73d19b2205693ba672cd4f'),(5,0,'Second Job','4668d06d9bdc26e952d2158c854355fb'),(6,0,'First Job','38bb0f38a4732778d940361e11b8a187'),(7,0,'Second Job','f3d415a2e030be807e554792948d2668');
/*!40000 ALTER TABLE `batch_job_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_job_seq`
--

DROP TABLE IF EXISTS `batch_job_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `batch_job_seq` (
  `ID` bigint(20) NOT NULL,
  `UNIQUE_KEY` char(1) NOT NULL,
  UNIQUE KEY `UNIQUE_KEY_UN` (`UNIQUE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_job_seq`
--

LOCK TABLES `batch_job_seq` WRITE;
/*!40000 ALTER TABLE `batch_job_seq` DISABLE KEYS */;
INSERT INTO `batch_job_seq` VALUES (7,'0');
/*!40000 ALTER TABLE `batch_job_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_step_execution`
--

DROP TABLE IF EXISTS `batch_step_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `batch_step_execution` (
  `STEP_EXECUTION_ID` bigint(20) NOT NULL,
  `VERSION` bigint(20) NOT NULL,
  `STEP_NAME` varchar(100) NOT NULL,
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `START_TIME` datetime(6) NOT NULL,
  `END_TIME` datetime(6) DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `COMMIT_COUNT` bigint(20) DEFAULT NULL,
  `READ_COUNT` bigint(20) DEFAULT NULL,
  `FILTER_COUNT` bigint(20) DEFAULT NULL,
  `WRITE_COUNT` bigint(20) DEFAULT NULL,
  `READ_SKIP_COUNT` bigint(20) DEFAULT NULL,
  `WRITE_SKIP_COUNT` bigint(20) DEFAULT NULL,
  `PROCESS_SKIP_COUNT` bigint(20) DEFAULT NULL,
  `ROLLBACK_COUNT` bigint(20) DEFAULT NULL,
  `EXIT_CODE` varchar(2500) DEFAULT NULL,
  `EXIT_MESSAGE` varchar(2500) DEFAULT NULL,
  `LAST_UPDATED` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`STEP_EXECUTION_ID`),
  KEY `JOB_EXEC_STEP_FK` (`JOB_EXECUTION_ID`),
  CONSTRAINT `JOB_EXEC_STEP_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `batch_job_execution` (`job_execution_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_step_execution`
--

LOCK TABLES `batch_step_execution` WRITE;
/*!40000 ALTER TABLE `batch_step_execution` DISABLE KEYS */;
INSERT INTO `batch_step_execution` VALUES (1,3,'First Step',1,'2022-11-22 19:55:07.000000','2022-11-22 19:55:07.000000','COMPLETED',1,0,0,0,0,0,0,0,'COMPLETED','','2022-11-22 19:55:07.000000'),(2,3,'Second Step',1,'2022-11-22 19:55:07.000000','2022-11-22 19:55:07.000000','COMPLETED',1,0,0,0,0,0,0,0,'COMPLETED','','2022-11-22 19:55:07.000000'),(3,6,'First Chunk Step',3,'2022-12-10 08:29:01.345000','2022-12-10 08:29:01.924000','COMPLETED',4,10,0,10,0,0,0,0,'COMPLETED','','2022-12-10 08:29:01.924000'),(4,6,'First Chunk Step',5,'2022-12-10 11:39:39.228000','2022-12-10 11:39:39.396000','COMPLETED',4,10,0,10,0,0,0,0,'COMPLETED','','2022-12-10 11:39:39.396000'),(5,3,'First Step',6,'2022-12-10 13:06:23.654000','2022-12-10 13:06:23.719000','COMPLETED',1,0,0,0,0,0,0,0,'COMPLETED','','2022-12-10 13:06:23.720000'),(6,3,'Second Step',6,'2022-12-10 13:06:23.786000','2022-12-10 13:06:23.825000','COMPLETED',1,0,0,0,0,0,0,0,'COMPLETED','','2022-12-10 13:06:23.825000'),(7,6,'First Chunk Step',7,'2022-12-10 13:06:23.949000','2022-12-10 13:06:24.164000','COMPLETED',4,10,0,10,0,0,0,0,'COMPLETED','','2022-12-10 13:06:24.165000'),(8,3,'First Step',8,'2022-12-10 13:08:22.552000','2022-12-10 13:08:22.597000','COMPLETED',1,0,0,0,0,0,0,0,'COMPLETED','','2022-12-10 13:08:22.598000'),(9,3,'Second Step',8,'2022-12-10 13:08:22.656000','2022-12-10 13:08:22.709000','COMPLETED',1,0,0,0,0,0,0,0,'COMPLETED','','2022-12-10 13:08:22.709000'),(10,6,'First Chunk Step',9,'2022-12-10 13:08:22.851000','2022-12-10 13:08:23.017000','COMPLETED',4,10,0,10,0,0,0,0,'COMPLETED','','2022-12-10 13:08:23.017000');
/*!40000 ALTER TABLE `batch_step_execution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_step_execution_context`
--

DROP TABLE IF EXISTS `batch_step_execution_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `batch_step_execution_context` (
  `STEP_EXECUTION_ID` bigint(20) NOT NULL,
  `SHORT_CONTEXT` varchar(2500) NOT NULL,
  `SERIALIZED_CONTEXT` text,
  PRIMARY KEY (`STEP_EXECUTION_ID`),
  CONSTRAINT `STEP_EXEC_CTX_FK` FOREIGN KEY (`STEP_EXECUTION_ID`) REFERENCES `batch_step_execution` (`step_execution_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_step_execution_context`
--

LOCK TABLES `batch_step_execution_context` WRITE;
/*!40000 ALTER TABLE `batch_step_execution_context` DISABLE KEYS */;
INSERT INTO `batch_step_execution_context` VALUES (1,'{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"com.infybuzz.config.SampleJob$1\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(2,'{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"com.infybuzz.service.SecondTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(3,'{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(4,'{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(5,'{\"@class\":\"java.util.HashMap\",\"sec\":\"sec value\",\"batch.taskletType\":\"com.infybuzz.config.SampleJob$1\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(6,'{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"com.infybuzz.service.SecondTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(7,'{\"@class\":\"java.util.HashMap\",\"FlatFileItemWriter.current.count\":[\"java.lang.Long\",341],\"JdbcCursorItemReader.read.count\":11,\"FlatFileItemWriter.written\":[\"java.lang.Long\",10],\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(8,'{\"@class\":\"java.util.HashMap\",\"sec\":\"sec value\",\"batch.taskletType\":\"com.infybuzz.config.SampleJob$1\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(9,'{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"com.infybuzz.service.SecondTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(10,'{\"@class\":\"java.util.HashMap\",\"FlatFileItemWriter.current.count\":[\"java.lang.Long\",341],\"JdbcCursorItemReader.read.count\":11,\"FlatFileItemWriter.written\":[\"java.lang.Long\",10],\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL);
/*!40000 ALTER TABLE `batch_step_execution_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_step_execution_seq`
--

DROP TABLE IF EXISTS `batch_step_execution_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `batch_step_execution_seq` (
  `ID` bigint(20) NOT NULL,
  `UNIQUE_KEY` char(1) NOT NULL,
  UNIQUE KEY `UNIQUE_KEY_UN` (`UNIQUE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_step_execution_seq`
--

LOCK TABLES `batch_step_execution_seq` WRITE;
/*!40000 ALTER TABLE `batch_step_execution_seq` DISABLE KEYS */;
INSERT INTO `batch_step_execution_seq` VALUES (10,'0');
/*!40000 ALTER TABLE `batch_step_execution_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'John','Smith','john@gmail.com'),(2,'Sachin','Dave','sachin@gmail.com'),(3,'Peter','Mark','peter@gmail.com'),(4,'Martin','Smith','martin@gmail.com'),(5,'Raj','Patel','raj@gmail.com'),(6,'Virat','Yadav','virat@gmail.com'),(7,'Prabhas','Shirke','prabhas@gmail.com'),(8,'Tina','Kapoor','tina@gmail.com'),(9,'Mona','Sharma','mona@gmail.com'),(10,'Rahul','Varma','rahul@gmail.com');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-10 16:43:42
