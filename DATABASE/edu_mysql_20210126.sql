-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: edu
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_attach`
--

DROP TABLE IF EXISTS `tbl_attach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_attach` (
  `save_file_name` varchar(255) NOT NULL COMMENT '서버의  저장되는 파일명\n',
  `real_file_name` varchar(255) DEFAULT NULL COMMENT 'pc에서 한글로된 파일명\n',
  `bno` int(11) NOT NULL COMMENT '부모게시물의 일련번호\n',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일시\n',
  PRIMARY KEY (`save_file_name`),
  KEY `fk_tbl_attach_tbl_board_idx` (`bno`),
  CONSTRAINT `fk_tbl_attach_tbl_board` FOREIGN KEY (`bno`) REFERENCES `tbl_board` (`bno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='게시물첨부파일';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_attach`
--

LOCK TABLES `tbl_attach` WRITE;
/*!40000 ALTER TABLE `tbl_attach` DISABLE KEYS */;
INSERT INTO `tbl_attach` VALUES ('642eaecb-6317-4fca-b3bf-a060d1755cf6.jpg','고양이.jpg',125,'2021-01-13 02:12:54'),('b83d7250-2a29-4713-b913-686ed43b6b1b.jpg','slide_03.jpg',126,'2021-01-14 06:19:29'),('bc22f7eb-f00b-458b-966c-c08833c7b7d2.bmp','slide_03.bmp',125,'2021-01-13 02:12:54');
/*!40000 ALTER TABLE `tbl_attach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_board`
--

DROP TABLE IF EXISTS `tbl_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_board` (
  `bno` int(11) NOT NULL AUTO_INCREMENT COMMENT '게시물일련번호,AI(Auto Increament)일련번호를 자동증가기기능\n',
  `board_type` varchar(45) DEFAULT NULL COMMENT '게시판타입:tbl_board_type테이블의 값을 가져다 사용\n',
  `title` varchar(255) DEFAULT NULL COMMENT '게시물제목\n',
  `content` text DEFAULT NULL COMMENT '게시물내용\n',
  `writer` varchar(45) DEFAULT NULL COMMENT '작성자',
  `view_count` int(11) DEFAULT 0 COMMENT '게시글조회수\n\n',
  `reply_count` int(11) DEFAULT 0 COMMENT '댓글개수',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일시\n',
  `update_date` timestamp NULL DEFAULT current_timestamp() COMMENT '수정일시\n',
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 COMMENT='게시물관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_board`
--

LOCK TABLES `tbl_board` WRITE;
/*!40000 ALTER TABLE `tbl_board` DISABLE KEYS */;
INSERT INTO `tbl_board` VALUES (2,'gallery','2 번째 게시물 입니다.1234','게시물 내용 입니다.','admin',28,0,'2020-12-23 03:45:31','2021-01-25 02:14:09'),(3,'notice','3 번째 게시물 입니다.','게시물 내용 입니다.','admin',1,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(4,'notice','4 번째 게시물 입니다.','게시물 내용 입니다.','admin',2,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(5,'notice','5 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(6,'notice','6 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(7,'notice','7 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(8,'notice','8 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(9,'notice','9 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(11,'notice','11 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(12,'notice','12 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(13,'notice','13 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(14,'notice','14 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(15,'notice','15 번째 게시물 입니다.','게시물 내용 입니다.','admin',4,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(16,'notice','16 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(17,'notice','17 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(18,'notice','18 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(19,'notice','19 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(20,'notice','20 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(21,'notice','21 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(22,'notice','22 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(23,'notice','23 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(24,'notice','24 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(25,'notice','25 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(26,'notice','26 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(27,'notice','27 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(28,'notice','28 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(29,'notice','29 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(30,'notice','30 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(31,'notice','31 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(32,'notice','32 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(33,'notice','33 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(34,'notice','34 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(35,'notice','35 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(36,'notice','36 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(37,'notice','37 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(38,'notice','38 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(39,'notice','39 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(40,'notice','40 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(41,'notice','41 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(42,'notice','42 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(43,'notice','43 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(44,'notice','44 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(45,'notice','45 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(46,'notice','46 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(47,'notice','47 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(48,'notice','48 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(49,'notice','49 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(50,'notice','50 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(51,'notice','51 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(52,'notice','52 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(53,'notice','53 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(54,'notice','54 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(55,'notice','55 번째 게시물 입니다.','게시물 내용 입니다.','admin',7,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(56,'notice','56 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(57,'notice','57 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(58,'notice','58 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(59,'notice','59 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(60,'notice','60 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(61,'notice','61 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(62,'notice','62 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(63,'notice','63 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(64,'notice','64 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(65,'notice','65 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(66,'notice','66 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(67,'notice','67 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(68,'notice','68 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(69,'notice','69 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(70,'notice','70 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(71,'notice','71 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(72,'notice','72 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(73,'notice','73 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(74,'notice','74 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(75,'notice','75 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(76,'notice','76 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(77,'notice','77 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(78,'notice','78 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(79,'notice','79 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(80,'notice','80 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(81,'notice','81 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(82,'notice','82 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(83,'notice','83 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(84,'notice','84 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(85,'notice','85 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(86,'notice','86 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(87,'notice','87 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(88,'notice','88 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(89,'notice','89 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(90,'notice','90 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(91,'notice','91 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(92,'notice','92 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(93,'notice','93 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(94,'notice','94 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(95,'notice','95 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(96,'notice','96 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(97,'notice','97 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(98,'notice','98 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(99,'notice','99 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(100,'notice','100 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(101,'notice','101 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(102,'notice','102 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(103,'notice','103 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(104,'notice','104 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(105,'notice','105 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(106,'notice','106 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(107,'notice','107 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(108,'notice','108 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(109,'notice','109 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(110,'notice','110 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:45:31','2020-12-23 03:45:31'),(116,'notice','하하하','<p><span style=\'font-family: \"궁서\";\'>﻿하하하</span></p><p><span style=\'font-family: \"궁서\";\'><span style=\"font-size: 30px;\">하하하</span><br></span><br></p>','이규혁',15,0,'2020-12-29 06:00:45','2020-12-29 07:15:47'),(125,'notice','다중 첨부파일테스트','<p>입력 테스트1<br></p>','작성자',112,0,'2021-01-04 03:09:04','2021-01-13 02:12:54'),(126,NULL,'댓글테스트','<p>댓글테스트<br></p>','관리자',141,6,'2021-01-05 01:20:56','2021-01-22 08:12:03');
/*!40000 ALTER TABLE `tbl_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_board_type`
--

DROP TABLE IF EXISTS `tbl_board_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_board_type` (
  `board_type` varchar(45) NOT NULL COMMENT '게시판타입:notice, gallery, qna',
  `board_name` varchar(45) DEFAULT NULL COMMENT '게시판 이름\n',
  `board_sun` int(11) DEFAULT NULL COMMENT '게시판 출력 순서\n',
  PRIMARY KEY (`board_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='게시판생성:게시판타입생성';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_board_type`
--

LOCK TABLES `tbl_board_type` WRITE;
/*!40000 ALTER TABLE `tbl_board_type` DISABLE KEYS */;
INSERT INTO `tbl_board_type` VALUES ('gallery','갤러리',2),('notice','공지사항',1),('test','테스트',3);
/*!40000 ALTER TABLE `tbl_board_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_member`
--

DROP TABLE IF EXISTS `tbl_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_member` (
  `user_id` varchar(45) NOT NULL COMMENT '회원아이디',
  `user_pw` varchar(255) DEFAULT NULL COMMENT '회원 로그인 암호\n',
  `user_name` varchar(255) DEFAULT NULL COMMENT '회원 이름\n',
  `email` varchar(255) DEFAULT NULL COMMENT '회원 이메',
  `point` int(11) DEFAULT 0 COMMENT '회원 정립포인',
  `enabled` int(11) DEFAULT 1 COMMENT '활동 가능한 회원 여부,0로그인불가능,1로그인가능',
  `levels` varchar(45) DEFAULT 'ROLE_USER' COMMENT '인증값 2가지 레벨,ROLE_ADMIN(관리자),ROLE_USER(사용자)\n',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '권한값 등록일자,1970부터 초단위로 현재까지 계산한 값',
  `update_date` timestamp NULL DEFAULT current_timestamp() COMMENT '수정일자\n',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='회원관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_member`
--

LOCK TABLES `tbl_member` WRITE;
/*!40000 ALTER TABLE `tbl_member` DISABLE KEYS */;
INSERT INTO `tbl_member` VALUES ('admin','$2a$10$RwFepOcokC5WQns..gahVeFbm7OZW/qGi1ljXoZL5lXnDPvNF3mmG','최고관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:03:04','2021-01-22 05:35:06'),('dummy_10','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_100','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_101','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_102','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_103','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_104','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_105','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_106','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_107','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_108','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_109','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_11','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_110','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_12','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_13','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_14','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_15','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_16','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_17','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_18','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_19','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_2','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','홍길동','admin@abc.com',0,1,'ROLE_USER','2020-12-23 03:42:20','2021-01-12 07:26:21'),('dummy_20','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_21','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_22','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_23','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_24','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_25','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_26','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_27','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_28','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_29','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_3','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_30','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_31','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_32','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_33','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_34','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_35','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_36','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_37','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_38','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_39','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_4','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_40','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_41','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_42','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_43','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_44','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_45','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_46','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_47','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_48','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_49','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_5','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_50','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_51','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_52','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_53','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_54','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_55','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_56','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_57','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_58','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_59','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_6','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_60','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_61','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_62','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_63','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_64','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_65','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_66','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_67','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_68','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_69','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_7','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_70','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_71','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_72','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_73','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_74','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_75','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_76','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_77','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_78','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_79','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_8','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_80','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_81','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_82','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_83','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_84','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_85','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_86','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_87','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_88','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_89','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_9','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_90','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_91','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','수정관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-24 03:48:00'),('dummy_92','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_93','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_94','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_95','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_96','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_97','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_98','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('dummy_99','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:42:20','2020-12-23 03:42:20'),('user01','$2a$10$8d3p4aKBDk6C4cnMWWkGJub816JeGctBJODYNYqUcIFwQWsC6lfvi','일반사용자','user@user.com',0,1,'ROLE_USER','2021-01-12 07:27:27','2021-01-12 07:27:27');
/*!40000 ALTER TABLE `tbl_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reply`
--

DROP TABLE IF EXISTS `tbl_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_reply` (
  `rno` int(11) NOT NULL AUTO_INCREMENT COMMENT '댓글의 일련번',
  `bno` int(11) NOT NULL COMMENT '부모게시물의일련번호',
  `reply_text` varchar(1000) DEFAULT NULL,
  `replyer` varchar(45) DEFAULT NULL COMMENT '댓글내용',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일',
  `update_date` timestamp NULL DEFAULT current_timestamp() COMMENT '수정일',
  PRIMARY KEY (`rno`),
  KEY `fk_tbl_reply_tbl_board1_idx` (`bno`),
  CONSTRAINT `fk_tbl_reply_tbl_board1` FOREIGN KEY (`bno`) REFERENCES `tbl_board` (`bno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='댓글관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reply`
--

LOCK TABLES `tbl_reply` WRITE;
/*!40000 ALTER TABLE `tbl_reply` DISABLE KEYS */;
INSERT INTO `tbl_reply` VALUES (32,126,NULL,'aaa','2021-01-07 06:10:15','2021-01-07 06:14:31'),(36,126,'ㅁㅁㅁ','ㅁㅁㅁ','2021-01-14 02:38:42','2021-01-14 02:38:42'),(37,126,'ㅁㅁㅁ','ㅁㅁㅁ','2021-01-14 02:38:47','2021-01-14 02:38:47'),(38,126,'ㅁㅁㅁ','ㅁㅁㅁ','2021-01-14 02:38:49','2021-01-14 02:38:49'),(39,126,'ㅁㅁㅁ','ㅁㅁㅁ','2021-01-14 02:38:53','2021-01-14 02:38:53'),(40,126,'ㅁㅁㅁㅁ','ㅁㅁㅁ','2021-01-14 02:38:57','2021-01-14 02:41:30');
/*!40000 ALTER TABLE `tbl_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'edu'
--
/*!50003 DROP PROCEDURE IF EXISTS `dummyBoard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dummyBoard`(IN p_loop int)
BEGIN
	declare cnt int default 2;
    delete from tbl_board where bno > 1;
    while cnt <= p_loop do
    INSERT INTO tbl_board(bno,title,content,writer)
    VALUES
    (cnt, concat(cnt,'번째 게시물 입니다.'), '게시물 내용 입니다.', 'admin');
    set cnt = cnt + 1;
    end while;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `dummyMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dummyMember`(IN p_loop int)
BEGIN
	declare cnt int default 1;#반복문 변수선언
    delete from tbl_member where user_id like 'dummy%';
    while cnt <= p_loop do
		INSERT INTO tbl_member(user_id,user_pw,user_name,email,point,enabled,levels) 
		VALUES 
		(concat('dummy_',cnt) , '1234', '관리자', 'admin@abc.com', '0', '1', 'ROLE_ADMIN');
        set cnt = cnt + 1;
    end while;
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

-- Dump completed on 2021-01-26 15:55:55
