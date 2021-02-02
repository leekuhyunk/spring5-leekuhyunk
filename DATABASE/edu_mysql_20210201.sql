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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='게시물관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_board`
--

LOCK TABLES `tbl_board` WRITE;
/*!40000 ALTER TABLE `tbl_board` DISABLE KEYS */;
INSERT INTO `tbl_board` VALUES (1,'notice','1번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:12','2021-02-01 02:36:11'),(2,'notice','2번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:13','2021-02-01 02:36:11'),(3,'notice','3번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:14','2021-02-01 02:36:11'),(4,'notice','4번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:15','2021-02-01 02:36:11'),(5,'notice','5번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:16','2021-02-01 02:36:11'),(6,'notice','6번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:17','2021-02-01 02:36:11'),(7,'notice','7번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:18','2021-02-01 02:36:11'),(8,'notice','8번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:19','2021-02-01 02:36:11'),(9,'notice','9번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:20','2021-02-01 02:36:11'),(10,'notice','10번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:21','2021-02-01 02:36:11'),(11,'notice','11번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:22','2021-02-01 02:36:11'),(12,'notice','12번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:23','2021-02-01 02:36:11'),(13,'notice','13번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:24','2021-02-01 02:36:11'),(14,'notice','14번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:25','2021-02-01 02:36:11'),(15,'notice','15번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:26','2021-02-01 02:36:11'),(16,'notice','16번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:27','2021-02-01 02:36:11'),(17,'notice','17번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:28','2021-02-01 02:36:11'),(18,'notice','18번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:29','2021-02-01 02:36:11'),(19,'notice','19번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:30','2021-02-01 02:36:11'),(20,'notice','20번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:31','2021-02-01 02:36:11'),(21,'notice','21번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:32','2021-02-01 02:36:11'),(22,'notice','22번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:33','2021-02-01 02:36:11'),(23,'notice','23번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:34','2021-02-01 02:36:11'),(24,'notice','24번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:35','2021-02-01 02:36:11'),(25,'notice','25번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:36','2021-02-01 02:36:11'),(26,'notice','26번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:37','2021-02-01 02:36:11'),(27,'notice','27번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:38','2021-02-01 02:36:11'),(28,'notice','28번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:39','2021-02-01 02:36:11'),(29,'notice','29번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:40','2021-02-01 02:36:11'),(30,'notice','30번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:41','2021-02-01 02:36:11'),(31,'notice','31번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:42','2021-02-01 02:36:11'),(32,'notice','32번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:43','2021-02-01 02:36:11'),(33,'notice','33번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:44','2021-02-01 02:36:11'),(34,'notice','34번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:45','2021-02-01 02:36:11'),(35,'notice','35번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:46','2021-02-01 02:36:11'),(36,'notice','36번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:47','2021-02-01 02:36:11'),(37,'notice','37번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:48','2021-02-01 02:36:11'),(38,'notice','38번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:49','2021-02-01 02:36:11'),(39,'notice','39번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:50','2021-02-01 02:36:11'),(40,'notice','40번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:51','2021-02-01 02:36:11'),(41,'notice','41번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:52','2021-02-01 02:36:11'),(42,'notice','42번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:53','2021-02-01 02:36:11'),(43,'notice','43번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:54','2021-02-01 02:36:11'),(44,'notice','44번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:55','2021-02-01 02:36:11'),(45,'notice','45번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:56','2021-02-01 02:36:11'),(46,'notice','46번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:57','2021-02-01 02:36:11'),(47,'notice','47번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:58','2021-02-01 02:36:11'),(48,'notice','48번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:36:59','2021-02-01 02:36:11'),(49,'notice','49번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:00','2021-02-01 02:36:11'),(50,'notice','50번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:01','2021-02-01 02:36:11'),(51,'gallery','51번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:02','2021-02-01 02:36:11'),(52,'gallery','52번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:03','2021-02-01 02:36:11'),(53,'gallery','53번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:04','2021-02-01 02:36:11'),(54,'gallery','54번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:05','2021-02-01 02:36:11'),(55,'gallery','55번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:06','2021-02-01 02:36:11'),(56,'gallery','56번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:07','2021-02-01 02:36:11'),(57,'gallery','57번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:08','2021-02-01 02:36:11'),(58,'gallery','58번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:09','2021-02-01 02:36:11'),(59,'gallery','59번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:10','2021-02-01 02:36:11'),(60,'gallery','60번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:11','2021-02-01 02:36:11'),(61,'gallery','61번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:12','2021-02-01 02:36:11'),(62,'gallery','62번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:13','2021-02-01 02:36:11'),(63,'gallery','63번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:14','2021-02-01 02:36:11'),(64,'gallery','64번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:15','2021-02-01 02:36:11'),(65,'gallery','65번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:16','2021-02-01 02:36:11'),(66,'gallery','66번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:17','2021-02-01 02:36:11'),(67,'gallery','67번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:18','2021-02-01 02:36:11'),(68,'gallery','68번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:19','2021-02-01 02:36:11'),(69,'gallery','69번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:20','2021-02-01 02:36:11'),(70,'gallery','70번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:21','2021-02-01 02:36:11'),(71,'gallery','71번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:22','2021-02-01 02:36:11'),(72,'gallery','72번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:23','2021-02-01 02:36:11'),(73,'gallery','73번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:24','2021-02-01 02:36:11'),(74,'gallery','74번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:25','2021-02-01 02:36:11'),(75,'gallery','75번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:26','2021-02-01 02:36:11'),(76,'gallery','76번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:27','2021-02-01 02:36:11'),(77,'gallery','77번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:28','2021-02-01 02:36:11'),(78,'gallery','78번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:29','2021-02-01 02:36:11'),(79,'gallery','79번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:30','2021-02-01 02:36:11'),(80,'gallery','80번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:31','2021-02-01 02:36:11'),(81,'gallery','81번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:32','2021-02-01 02:36:11'),(82,'gallery','82번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:33','2021-02-01 02:36:11'),(83,'gallery','83번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:34','2021-02-01 02:36:11'),(84,'gallery','84번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:35','2021-02-01 02:36:11'),(85,'gallery','85번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:36','2021-02-01 02:36:11'),(86,'gallery','86번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:37','2021-02-01 02:36:11'),(87,'gallery','87번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:38','2021-02-01 02:36:11'),(88,'gallery','88번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:39','2021-02-01 02:36:11'),(89,'gallery','89번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:40','2021-02-01 02:36:11'),(90,'gallery','90번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:41','2021-02-01 02:36:11'),(91,'gallery','91번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:42','2021-02-01 02:36:11'),(92,'gallery','92번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:43','2021-02-01 02:36:11'),(93,'gallery','93번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:44','2021-02-01 02:36:11'),(94,'gallery','94번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:45','2021-02-01 02:36:11'),(95,'gallery','95번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:46','2021-02-01 02:36:11'),(96,'gallery','96번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:47','2021-02-01 02:36:11'),(97,'gallery','97번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:48','2021-02-01 02:36:11'),(98,'gallery','98번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:49','2021-02-01 02:36:11'),(99,'gallery','99번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:50','2021-02-01 02:36:11'),(100,'gallery','100번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2021-02-01 02:37:51','2021-02-01 02:36:11');
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
INSERT INTO `tbl_member` VALUES ('admin','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2021-02-01 02:29:47','2021-02-01 02:28:07'),('user1','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:08','2021-02-01 02:28:07'),('user10','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:17','2021-02-01 02:28:07'),('user11','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:18','2021-02-01 02:28:07'),('user12','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:19','2021-02-01 02:28:07'),('user13','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:20','2021-02-01 02:28:07'),('user14','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:21','2021-02-01 02:28:07'),('user15','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:22','2021-02-01 02:28:07'),('user16','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:23','2021-02-01 02:28:07'),('user17','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:24','2021-02-01 02:28:07'),('user18','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:25','2021-02-01 02:28:07'),('user19','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:26','2021-02-01 02:28:07'),('user2','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:09','2021-02-01 02:28:07'),('user20','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:27','2021-02-01 02:28:07'),('user21','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:28','2021-02-01 02:28:07'),('user22','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:29','2021-02-01 02:28:07'),('user23','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:30','2021-02-01 02:28:07'),('user24','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:31','2021-02-01 02:28:07'),('user25','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:32','2021-02-01 02:28:07'),('user26','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:33','2021-02-01 02:28:07'),('user27','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:34','2021-02-01 02:28:07'),('user28','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:35','2021-02-01 02:28:07'),('user29','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:36','2021-02-01 02:28:07'),('user3','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:10','2021-02-01 02:28:07'),('user30','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:37','2021-02-01 02:28:07'),('user31','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:38','2021-02-01 02:28:07'),('user32','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:39','2021-02-01 02:28:07'),('user33','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:40','2021-02-01 02:28:07'),('user34','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:41','2021-02-01 02:28:07'),('user35','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:42','2021-02-01 02:28:07'),('user36','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:43','2021-02-01 02:28:07'),('user37','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:44','2021-02-01 02:28:07'),('user38','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:45','2021-02-01 02:28:07'),('user39','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:46','2021-02-01 02:28:07'),('user4','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:11','2021-02-01 02:28:07'),('user40','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:47','2021-02-01 02:28:07'),('user41','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:48','2021-02-01 02:28:07'),('user42','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:49','2021-02-01 02:28:07'),('user43','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:50','2021-02-01 02:28:07'),('user44','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:51','2021-02-01 02:28:07'),('user45','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:52','2021-02-01 02:28:07'),('user46','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:53','2021-02-01 02:28:07'),('user47','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:54','2021-02-01 02:28:07'),('user48','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:55','2021-02-01 02:28:07'),('user49','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:56','2021-02-01 02:28:07'),('user5','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:12','2021-02-01 02:28:07'),('user50','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:57','2021-02-01 02:28:07'),('user51','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:58','2021-02-01 02:28:07'),('user52','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:59','2021-02-01 02:28:07'),('user53','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:00','2021-02-01 02:28:07'),('user54','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:01','2021-02-01 02:28:07'),('user55','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:02','2021-02-01 02:28:07'),('user56','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:03','2021-02-01 02:28:07'),('user57','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:04','2021-02-01 02:28:07'),('user58','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:05','2021-02-01 02:28:07'),('user59','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:06','2021-02-01 02:28:07'),('user6','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:13','2021-02-01 02:28:07'),('user60','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:07','2021-02-01 02:28:07'),('user61','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:08','2021-02-01 02:28:07'),('user62','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:09','2021-02-01 02:28:07'),('user63','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:10','2021-02-01 02:28:07'),('user64','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:11','2021-02-01 02:28:07'),('user65','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:12','2021-02-01 02:28:07'),('user66','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:13','2021-02-01 02:28:07'),('user67','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:14','2021-02-01 02:28:07'),('user68','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:15','2021-02-01 02:28:07'),('user69','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:16','2021-02-01 02:28:07'),('user7','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:14','2021-02-01 02:28:07'),('user70','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:17','2021-02-01 02:28:07'),('user71','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:18','2021-02-01 02:28:07'),('user72','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:19','2021-02-01 02:28:07'),('user73','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:20','2021-02-01 02:28:07'),('user74','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:21','2021-02-01 02:28:07'),('user75','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:22','2021-02-01 02:28:07'),('user76','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:23','2021-02-01 02:28:07'),('user77','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:24','2021-02-01 02:28:07'),('user78','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:25','2021-02-01 02:28:07'),('user79','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:26','2021-02-01 02:28:07'),('user8','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:15','2021-02-01 02:28:07'),('user80','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:27','2021-02-01 02:28:07'),('user81','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:28','2021-02-01 02:28:07'),('user82','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:29','2021-02-01 02:28:07'),('user83','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:30','2021-02-01 02:28:07'),('user84','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:31','2021-02-01 02:28:07'),('user85','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:32','2021-02-01 02:28:07'),('user86','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:33','2021-02-01 02:28:07'),('user87','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:34','2021-02-01 02:28:07'),('user88','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:35','2021-02-01 02:28:07'),('user89','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:36','2021-02-01 02:28:07'),('user9','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:28:16','2021-02-01 02:28:07'),('user90','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:37','2021-02-01 02:28:07'),('user91','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:38','2021-02-01 02:28:07'),('user92','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:39','2021-02-01 02:28:07'),('user93','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:40','2021-02-01 02:28:07'),('user94','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:41','2021-02-01 02:28:07'),('user95','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:42','2021-02-01 02:28:07'),('user96','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:43','2021-02-01 02:28:07'),('user97','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:44','2021-02-01 02:28:07'),('user98','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:45','2021-02-01 02:28:07'),('user99','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','사용자','admin@abc.com',0,1,'ROLE_USER','2021-02-01 02:29:46','2021-02-01 02:28:07');
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
/*!50003 DROP PROCEDURE IF EXISTS `PROC_BOARD_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_BOARD_INSERT`(IN p_loop int)
BEGIN
	declare cnt int default 1;
    -- delete from tbl_board where bno > 1;
    while cnt <= p_loop do
    if cnt <= (p_loop/2) then
		INSERT INTO tbl_board(board_type,title,content,writer,reg_date)
		VALUES
		('notice',concat(cnt,'번째 게시물 입니다.'), '게시물 내용 입니다.', 'admin',DATE_ADD(NOW(), INTERVAL cnt SECOND));
    else
		INSERT INTO tbl_board(board_type,title,content,writer,reg_date)
		VALUES
		('gallery',concat(cnt,'번째 게시물 입니다.'), '게시물 내용 입니다.', 'admin',DATE_ADD(NOW(), INTERVAL cnt SECOND));
    end if;
    set cnt = cnt + 1;
    end while;
    #실행전
	#truncate table tbl_attach;
	#truncate table tbl_reply;
    #SET FOREIGN_KEY_CHECKS = 0; -- 제약조건 Constraint 에러 발생시 비활성화
	#truncate table tbl_board;
	#SET FOREIGN_KEY_CHECKS = 1; -- 제약조건 다시 활성화
	#call PROC_BOARD_INSERT(100);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROC_MEMBER_INSERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_MEMBER_INSERT`(IN p_loop int)
BEGIN
	declare cnt int default 1;#반복문 변수선언
    while cnt <= p_loop do
    if cnt = p_loop then
		INSERT INTO tbl_member(user_id,user_pw,user_name,email,point,enabled,levels,reg_date) 
		VALUES 
		('admin','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO', '관리자', 'admin@abc.com', '0', '1', 'ROLE_ADMIN',DATE_ADD(NOW(), INTERVAL cnt SECOND));
	else
		INSERT INTO tbl_member(user_id,user_pw,user_name,email,point,enabled,levels,reg_date) 
		VALUES 
		(concat('user',cnt),'$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO', '사용자', 'admin@abc.com', '0', '1', 'ROLE_USER',DATE_ADD(NOW(), INTERVAL cnt SECOND));
    end if;
        set cnt = cnt + 1;
    end while;
    #실행 전 처리
	#truncate table tbl_member;
	#call PROC_MEMBER_INSERT(100);
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

-- Dump completed on 2021-02-01 11:37:51
