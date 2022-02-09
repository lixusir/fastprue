-- MySQL dump 10.13  Distrib 8.0.24, for Linux (x86_64)
--
-- Host: localhost    Database: qyg_qinagpai
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `qp_admin`
--

DROP TABLE IF EXISTS `qp_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qp_admin` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '昵称',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '密码',
  `salt` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '头像',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `logintime` int DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '登录IP',
  `createtime` int DEFAULT NULL COMMENT '创建时间',
  `updatetime` int DEFAULT NULL COMMENT '更新时间',
  `token` varchar(59) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qp_admin`
--

LOCK TABLES `qp_admin` WRITE;
/*!40000 ALTER TABLE `qp_admin` DISABLE KEYS */;
INSERT INTO `qp_admin` VALUES (1,'admin','Admin','ed1dcb492139e880143e382be876fe66','73ea70','http://www.qp.com/assets/img/avatar.png','admin@admin.com',0,1644370087,'127.0.0.1',1491635035,1644370087,'1da5ede6-f957-45f7-bd16-a820e62327f2','normal');
/*!40000 ALTER TABLE `qp_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qp_admin_log`
--

DROP TABLE IF EXISTS `qp_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qp_admin_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '管理员名字',
  `url` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '日志标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'User-Agent',
  `createtime` int DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `name` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='管理员日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qp_admin_log`
--

LOCK TABLES `qp_admin_log` WRITE;
/*!40000 ALTER TABLE `qp_admin_log` DISABLE KEYS */;
INSERT INTO `qp_admin_log` VALUES (1,1,'admin','/SZJYwlOojC.php/index/login?url=%2FSZJYwlOojC.php%2Fdashboard%3Fref%3Daddtabs','登录','{\"url\":\"\\/SZJYwlOojC.php\\/dashboard?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"avxc\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644370087),(2,1,'admin','/SZJYwlOojC.php/addon/state','插件管理 / 禁用启用','{\"name\":\"mydemo\",\"action\":\"disable\",\"force\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644370104),(3,1,'admin','/SZJYwlOojC.php/addon/uninstall','插件管理','{\"name\":\"mydemo\",\"force\":\"0\",\"droptables\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644370119),(4,1,'admin','/SZJYwlOojC.php/addon/state','插件管理 / 禁用启用','{\"name\":\"mydemo\",\"action\":\"disable\",\"force\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644370250),(5,1,'admin','/SZJYwlOojC.php/addon/uninstall','插件管理','{\"name\":\"mydemo\",\"force\":\"0\",\"droptables\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644370253),(6,1,'admin','/SZJYwlOojC.php/addon/local','插件管理','{\"uid\":\"23926\",\"token\":\"***\",\"version\":\"1.3.3.20220121\",\"category\":\"\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644370296),(7,1,'admin','/SZJYwlOojC.php/addon/local','插件管理','{\"uid\":\"23926\",\"token\":\"***\",\"version\":\"1.3.3.20220121\",\"category\":\"\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644370307),(8,1,'admin','/SZJYwlOojC.php/addon/local','插件管理','{\"uid\":\"23926\",\"token\":\"***\",\"version\":\"1.3.3.20220121\",\"category\":\"\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644370393),(9,1,'admin','/SZJYwlOojC.php/addon/state','插件管理 / 禁用启用','{\"name\":\"mydemo\",\"action\":\"enable\",\"force\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644370393),(10,1,'admin','/SZJYwlOojC.php/addon/state','插件管理 / 禁用启用','{\"name\":\"mydemo\",\"action\":\"disable\",\"force\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644370971),(11,1,'admin','/SZJYwlOojC.php/addon/uninstall','插件管理','{\"name\":\"mydemo\",\"force\":\"0\",\"droptables\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644370974),(12,1,'admin','/SZJYwlOojC.php/addon/local','插件管理','{\"uid\":\"23926\",\"token\":\"***\",\"version\":\"1.3.3.20220121\",\"category\":\"\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644371057),(13,1,'admin','/SZJYwlOojC.php/addon/local','插件管理','{\"uid\":\"23926\",\"token\":\"***\",\"version\":\"1.3.3.20220121\",\"category\":\"\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644371067),(14,1,'admin','/SZJYwlOojC.php/addon/local','插件管理','{\"uid\":\"23926\",\"token\":\"***\",\"version\":\"1.3.3.20220121\",\"category\":\"\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644371083),(15,1,'admin','/SZJYwlOojC.php/addon/local','插件管理','{\"uid\":\"23926\",\"token\":\"***\",\"version\":\"1.3.3.20220121\",\"category\":\"\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644371089),(16,1,'admin','/SZJYwlOojC.php/addon/local','插件管理','{\"uid\":\"23926\",\"token\":\"***\",\"version\":\"1.3.3.20220121\",\"category\":\"\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644371116),(17,1,'admin','/SZJYwlOojC.php/addon/local','插件管理','{\"uid\":\"23926\",\"token\":\"***\",\"version\":\"1.3.3.20220121\",\"category\":\"\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644371326),(18,1,'admin','/SZJYwlOojC.php/addon/local','插件管理','{\"uid\":\"23926\",\"token\":\"***\",\"version\":\"1.3.3.20220121\",\"category\":\"\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644371509),(19,1,'admin','/SZJYwlOojC.php/addon/state','插件管理 / 禁用启用','{\"name\":\"mydemo\",\"action\":\"enable\",\"force\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644371509),(20,1,'admin','/SZJYwlOojC.php/addon/state','插件管理 / 禁用启用','{\"name\":\"mydemo\",\"action\":\"disable\",\"force\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644372491),(21,1,'admin','/SZJYwlOojC.php/addon/state','插件管理 / 禁用启用','{\"name\":\"mydemo\",\"action\":\"enable\",\"force\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644372494),(22,1,'admin','/SZJYwlOojC.php/addon/state','插件管理 / 禁用启用','{\"name\":\"mydemo\",\"action\":\"disable\",\"force\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644372502),(23,1,'admin','/SZJYwlOojC.php/addon/uninstall','插件管理','{\"name\":\"mydemo\",\"force\":\"0\",\"droptables\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644372504),(24,1,'admin','/SZJYwlOojC.php/addon/local','插件管理','{\"uid\":\"23926\",\"token\":\"***\",\"version\":\"1.3.3.20220121\",\"category\":\"\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644372510),(25,1,'admin','/SZJYwlOojC.php/addon/local','插件管理','{\"uid\":\"23926\",\"token\":\"***\",\"version\":\"1.3.3.20220121\",\"category\":\"\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644372526),(26,1,'admin','/SZJYwlOojC.php/addon/state','插件管理 / 禁用启用','{\"name\":\"mydemo\",\"action\":\"enable\",\"force\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644372527),(27,1,'admin','/SZJYwlOojC.php/addon/install','插件管理','{\"name\":\"development\",\"force\":\"0\",\"uid\":\"23926\",\"token\":\"***\",\"version\":\"1.0.2\",\"faversion\":\"1.3.3.20220121\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644373181),(28,1,'admin','/SZJYwlOojC.php/addon/isbuy','插件管理','{\"name\":\"development\",\"force\":\"0\",\"uid\":\"23926\",\"token\":\"***\",\"version\":\"1.0.2\",\"faversion\":\"1.3.3.20220121\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644373211),(29,1,'admin','/SZJYwlOojC.php/addon/install','插件管理','{\"name\":\"development\",\"force\":\"0\",\"uid\":\"23926\",\"token\":\"***\",\"version\":\"1.0.2\",\"faversion\":\"1.3.3.20220121\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644373216),(30,1,'admin','/SZJYwlOojC.php/addon/state','插件管理 / 禁用启用','{\"name\":\"development\",\"action\":\"enable\",\"force\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644373217),(31,1,'admin','/SZJYwlOojC.php/development/addons/datatables','插件开发 / 选择数据表','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644373292),(32,1,'admin','/SZJYwlOojC.php/development/addons/datatables','插件开发 / 选择数据表','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644373310),(33,1,'admin','/SZJYwlOojC.php/development/addons/add?dialog=1','插件开发 / 添加新的插件','{\"dialog\":\"1\",\"row\":{\"name\":\"mytest\",\"title\":\"测试\",\"author\":\"guosong\",\"intro\":\"测试\",\"version\":\"1.0.0\",\"website\":\"\\/addons\\/mytest\",\"state\":\"1\",\"copydirs\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644373393),(34,1,'admin','/SZJYwlOojC.php/development/addons/package?name=mytest&dialog=1','插件开发 / 插件打包','{\"name\":\"mytest\",\"dialog\":\"1\",\"row\":{\"self_path\":\"application\\/api\\/controller\\/mytest\",\"table_name\":\"\",\"update_data\":\"\",\"version\":\"1.0.0\",\"name\":\"mytest\"}}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644373713),(35,1,'admin','/SZJYwlOojC.php/addon/state','插件管理 / 禁用启用','{\"name\":\"mytest\",\"action\":\"disable\",\"force\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644373724),(36,1,'admin','/SZJYwlOojC.php/addon/uninstall','插件管理','{\"name\":\"mytest\",\"force\":\"0\",\"droptables\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644373726),(37,1,'admin','/SZJYwlOojC.php/addon/local','插件管理','{\"uid\":\"23926\",\"token\":\"***\",\"version\":\"1.3.3.20220121\",\"category\":\"\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644373733),(38,1,'admin','/SZJYwlOojC.php/addon/state','插件管理 / 禁用启用','{\"name\":\"mytest\",\"action\":\"enable\",\"force\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644373733),(39,1,'admin','/SZJYwlOojC.php/addon/state','插件管理 / 禁用启用','{\"name\":\"mytest\",\"action\":\"disable\",\"force\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644373744),(40,1,'admin','/SZJYwlOojC.php/addon/uninstall','插件管理','{\"name\":\"mytest\",\"force\":\"0\",\"droptables\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644373746),(41,1,'admin','/SZJYwlOojC.php/addon/local','插件管理','{\"uid\":\"23926\",\"token\":\"***\",\"version\":\"1.3.3.20220121\",\"category\":\"\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644373766),(42,1,'admin','/SZJYwlOojC.php/addon/state','插件管理 / 禁用启用','{\"name\":\"mytest\",\"action\":\"enable\",\"force\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644373766),(43,1,'admin','/SZJYwlOojC.php/addon/state','插件管理 / 禁用启用','{\"name\":\"mytest\",\"action\":\"disable\",\"force\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644373844),(44,1,'admin','/SZJYwlOojC.php/addon/uninstall','插件管理','{\"name\":\"mytest\",\"force\":\"0\",\"droptables\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644373846),(45,1,'admin','/SZJYwlOojC.php/addon/local','插件管理','{\"uid\":\"23926\",\"token\":\"***\",\"version\":\"1.3.3.20220121\",\"category\":\"\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644373868),(46,1,'admin','/SZJYwlOojC.php/addon/state','插件管理 / 禁用启用','{\"name\":\"mytest\",\"action\":\"enable\",\"force\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644373868),(47,1,'admin','/SZJYwlOojC.php/addon/state','插件管理 / 禁用启用','{\"name\":\"mydemo\",\"action\":\"disable\",\"force\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644374160),(48,1,'admin','/SZJYwlOojC.php/addon/state','插件管理 / 禁用启用','{\"name\":\"mytest\",\"action\":\"disable\",\"force\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644374160),(49,1,'admin','/SZJYwlOojC.php/addon/uninstall','插件管理','{\"name\":\"mydemo\",\"force\":\"0\",\"droptables\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644374162),(50,1,'admin','/SZJYwlOojC.php/addon/uninstall','插件管理','{\"name\":\"mytest\",\"force\":\"0\",\"droptables\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36',1644374165),(51,1,'admin','/SZJYwlOojC.php/command/get_field_list','在线命令管理','{\"table\":\"qp_admin\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36',1644374665),(52,1,'admin','/SZJYwlOojC.php/command/get_controller_list','在线命令管理','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36',1644374666),(53,1,'admin','/SZJYwlOojC.php/command/get_controller_list','在线命令管理','{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"OR \",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36',1644374669),(54,1,'admin','/SZJYwlOojC.php/command/command/action/command','在线命令管理','{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"development\\/Addons.php\",\"action\":\"command\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36',1644374672),(55,1,'admin','/SZJYwlOojC.php/command/command/action/execute','在线命令管理','{\"commandtype\":\"menu\",\"allcontroller\":\"0\",\"delete\":\"0\",\"force\":\"0\",\"controllerfile_text\":\"\",\"controllerfile\":\"development\\/Addons.php\",\"action\":\"execute\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36',1644374674),(56,1,'admin','/SZJYwlOojC.php/auth/rule/del','权限管理 / 菜单规则 / 删除','{\"action\":\"del\",\"ids\":\"167\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36',1644374719),(57,1,'admin','/SZJYwlOojC.php/auth/rule/edit/ids/166?dialog=1','权限管理 / 菜单规则 / 编辑','{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"development\\/addons\",\"title\":\"插件开发\",\"url\":\"\",\"icon\":\"fa fa-list\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"166\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36',1644374739),(58,1,'admin','/SZJYwlOojC.php/development/addons/add?dialog=1','插件开发','{\"dialog\":\"1\",\"row\":{\"name\":\"auction\",\"title\":\"竞拍\",\"author\":\"gd\",\"intro\":\"竞拍商城\",\"version\":\"1.0.0\",\"website\":\"\",\"state\":\"1\",\"copydirs\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36',1644374798),(59,1,'admin','/SZJYwlOojC.php/development/addons/package?name=auction&dialog=1','插件开发','{\"name\":\"auction\",\"dialog\":\"1\",\"row\":{\"self_path\":\"application\\/api\\/controller\\/auction\",\"table_name\":\"\",\"update_data\":\"\",\"version\":\"1.0.0\",\"name\":\"auction\"}}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36',1644374936),(60,1,'admin','/SZJYwlOojC.php/addon/state','插件管理 / 禁用启用','{\"name\":\"auction\",\"action\":\"disable\",\"force\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36',1644374948),(61,1,'admin','/SZJYwlOojC.php/addon/uninstall','插件管理','{\"name\":\"auction\",\"force\":\"0\",\"droptables\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36',1644374951),(62,1,'admin','/SZJYwlOojC.php/addon/local','插件管理','{\"uid\":\"38562\",\"token\":\"***\",\"version\":\"1.3.3.20220121\",\"category\":\"\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36',1644374965),(63,1,'admin','/SZJYwlOojC.php/addon/state','插件管理 / 禁用启用','{\"name\":\"auction\",\"action\":\"enable\",\"force\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36',1644374965),(64,1,'admin','/SZJYwlOojC.php/addon/state','插件管理 / 禁用启用','{\"name\":\"auction\",\"action\":\"disable\",\"force\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36',1644374979),(65,1,'admin','/SZJYwlOojC.php/addon/uninstall','插件管理','{\"name\":\"auction\",\"force\":\"0\",\"droptables\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36',1644374981),(66,1,'admin','/SZJYwlOojC.php/addon/local','插件管理','{\"uid\":\"38562\",\"token\":\"***\",\"version\":\"1.3.3.20220121\",\"category\":\"\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36',1644374991),(67,1,'admin','/SZJYwlOojC.php/addon/state','插件管理 / 禁用启用','{\"name\":\"auction\",\"action\":\"enable\",\"force\":\"0\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36',1644374991);
/*!40000 ALTER TABLE `qp_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qp_area`
--

DROP TABLE IF EXISTS `qp_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qp_area` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` int DEFAULT NULL COMMENT '父id',
  `shortname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '简称',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `mergename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '全称',
  `level` tinyint DEFAULT NULL COMMENT '层级:1=省,2=市,3=区/县',
  `pinyin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '拼音',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '长途区号',
  `zip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮编',
  `first` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '首字母',
  `lng` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经度',
  `lat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '纬度',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='地区表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qp_area`
--

LOCK TABLES `qp_area` WRITE;
/*!40000 ALTER TABLE `qp_area` DISABLE KEYS */;
/*!40000 ALTER TABLE `qp_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qp_attachment`
--

DROP TABLE IF EXISTS `qp_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qp_attachment` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '类别',
  `admin_id` int unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `user_id` int unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '高度',
  `imagetype` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图片类型',
  `imageframes` int unsigned NOT NULL DEFAULT '0' COMMENT '图片帧数',
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '文件名称',
  `filesize` int unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `mimetype` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '透传数据',
  `createtime` int DEFAULT NULL COMMENT '创建日期',
  `updatetime` int DEFAULT NULL COMMENT '更新时间',
  `uploadtime` int DEFAULT NULL COMMENT '上传时间',
  `storage` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '文件 sha1编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='附件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qp_attachment`
--

LOCK TABLES `qp_attachment` WRITE;
/*!40000 ALTER TABLE `qp_attachment` DISABLE KEYS */;
INSERT INTO `qp_attachment` VALUES (1,'',1,0,'/assets/img/qrcode.png','150','150','png',0,'qrcode.png',21859,'image/png','',1491635035,1491635035,1491635035,'local','17163603d0263e4838b9387ff2cd4877e8b018f6');
/*!40000 ALTER TABLE `qp_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qp_auth_group`
--

DROP TABLE IF EXISTS `qp_auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qp_auth_group` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0' COMMENT '父组别',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '组名',
  `rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '规则ID',
  `createtime` int DEFAULT NULL COMMENT '创建时间',
  `updatetime` int DEFAULT NULL COMMENT '更新时间',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='分组表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qp_auth_group`
--

LOCK TABLES `qp_auth_group` WRITE;
/*!40000 ALTER TABLE `qp_auth_group` DISABLE KEYS */;
INSERT INTO `qp_auth_group` VALUES (1,0,'Admin group','*',1491635035,1491635035,'normal'),(2,1,'Second group','13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,1,9,10,11,7,6,8,2,4,5',1491635035,1491635035,'normal'),(3,2,'Third group','1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5',1491635035,1491635035,'normal'),(4,1,'Second group 2','1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65',1491635035,1491635035,'normal'),(5,2,'Third group 2','1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34',1491635035,1491635035,'normal');
/*!40000 ALTER TABLE `qp_auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qp_auth_group_access`
--

DROP TABLE IF EXISTS `qp_auth_group_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qp_auth_group_access` (
  `uid` int unsigned NOT NULL COMMENT '会员ID',
  `group_id` int unsigned NOT NULL COMMENT '级别ID',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `group_id` (`group_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='权限分组表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qp_auth_group_access`
--

LOCK TABLES `qp_auth_group_access` WRITE;
/*!40000 ALTER TABLE `qp_auth_group_access` DISABLE KEYS */;
INSERT INTO `qp_auth_group_access` VALUES (1,1);
/*!40000 ALTER TABLE `qp_auth_group_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qp_auth_rule`
--

DROP TABLE IF EXISTS `qp_auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qp_auth_rule` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('menu','file') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图标',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '规则URL',
  `condition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '条件',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  `ismenu` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否为菜单',
  `menutype` enum('addtabs','blank','dialog','ajax') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '菜单类型',
  `extend` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '扩展属性',
  `py` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '拼音首字母',
  `pinyin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '拼音',
  `createtime` int DEFAULT NULL COMMENT '创建时间',
  `updatetime` int DEFAULT NULL COMMENT '更新时间',
  `weigh` int NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE,
  KEY `weigh` (`weigh`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='节点表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qp_auth_rule`
--

LOCK TABLES `qp_auth_rule` WRITE;
/*!40000 ALTER TABLE `qp_auth_rule` DISABLE KEYS */;
INSERT INTO `qp_auth_rule` VALUES (1,'file',0,'dashboard','Dashboard','fa fa-dashboard','','','Dashboard tips',1,NULL,'','kzt','kongzhitai',1491635035,1491635035,143,'normal'),(2,'file',0,'general','General','fa fa-cogs','','','',1,NULL,'','cggl','changguiguanli',1491635035,1491635035,137,'normal'),(3,'file',0,'category','Category','fa fa-leaf','','','Category tips',0,NULL,'','flgl','fenleiguanli',1491635035,1491635035,119,'normal'),(4,'file',0,'addon','Addon','fa fa-rocket','','','Addon tips',1,NULL,'','cjgl','chajianguanli',1491635035,1491635035,0,'normal'),(5,'file',0,'auth','Auth','fa fa-group','','','',1,NULL,'','qxgl','quanxianguanli',1491635035,1491635035,99,'normal'),(6,'file',2,'general/config','Config','fa fa-cog','','','Config tips',1,NULL,'','xtpz','xitongpeizhi',1491635035,1491635035,60,'normal'),(7,'file',2,'general/attachment','Attachment','fa fa-file-image-o','','','Attachment tips',1,NULL,'','fjgl','fujianguanli',1491635035,1491635035,53,'normal'),(8,'file',2,'general/profile','Profile','fa fa-user','','','',1,NULL,'','grzl','gerenziliao',1491635035,1491635035,34,'normal'),(9,'file',5,'auth/admin','Admin','fa fa-user','','','Admin tips',1,NULL,'','glygl','guanliyuanguanli',1491635035,1491635035,118,'normal'),(10,'file',5,'auth/adminlog','Admin log','fa fa-list-alt','','','Admin log tips',1,NULL,'','glyrz','guanliyuanrizhi',1491635035,1491635035,113,'normal'),(11,'file',5,'auth/group','Group','fa fa-group','','','Group tips',1,NULL,'','jsz','juesezu',1491635035,1491635035,109,'normal'),(12,'file',5,'auth/rule','Rule','fa fa-bars','','','Rule tips',1,NULL,'','cdgz','caidanguize',1491635035,1491635035,104,'normal'),(13,'file',1,'dashboard/index','View','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,136,'normal'),(14,'file',1,'dashboard/add','Add','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,135,'normal'),(15,'file',1,'dashboard/del','Delete','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,133,'normal'),(16,'file',1,'dashboard/edit','Edit','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,134,'normal'),(17,'file',1,'dashboard/multi','Multi','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,132,'normal'),(18,'file',6,'general/config/index','View','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,52,'normal'),(19,'file',6,'general/config/add','Add','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,51,'normal'),(20,'file',6,'general/config/edit','Edit','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,50,'normal'),(21,'file',6,'general/config/del','Delete','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,49,'normal'),(22,'file',6,'general/config/multi','Multi','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,48,'normal'),(23,'file',7,'general/attachment/index','View','fa fa-circle-o','','','Attachment tips',0,NULL,'','','',1491635035,1491635035,59,'normal'),(24,'file',7,'general/attachment/select','Select attachment','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,58,'normal'),(25,'file',7,'general/attachment/add','Add','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,57,'normal'),(26,'file',7,'general/attachment/edit','Edit','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,56,'normal'),(27,'file',7,'general/attachment/del','Delete','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,55,'normal'),(28,'file',7,'general/attachment/multi','Multi','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,54,'normal'),(29,'file',8,'general/profile/index','View','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,33,'normal'),(30,'file',8,'general/profile/update','Update profile','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,32,'normal'),(31,'file',8,'general/profile/add','Add','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,31,'normal'),(32,'file',8,'general/profile/edit','Edit','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,30,'normal'),(33,'file',8,'general/profile/del','Delete','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,29,'normal'),(34,'file',8,'general/profile/multi','Multi','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,28,'normal'),(35,'file',3,'category/index','View','fa fa-circle-o','','','Category tips',0,NULL,'','','',1491635035,1491635035,142,'normal'),(36,'file',3,'category/add','Add','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,141,'normal'),(37,'file',3,'category/edit','Edit','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,140,'normal'),(38,'file',3,'category/del','Delete','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,139,'normal'),(39,'file',3,'category/multi','Multi','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,138,'normal'),(40,'file',9,'auth/admin/index','View','fa fa-circle-o','','','Admin tips',0,NULL,'','','',1491635035,1491635035,117,'normal'),(41,'file',9,'auth/admin/add','Add','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,116,'normal'),(42,'file',9,'auth/admin/edit','Edit','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,115,'normal'),(43,'file',9,'auth/admin/del','Delete','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,114,'normal'),(44,'file',10,'auth/adminlog/index','View','fa fa-circle-o','','','Admin log tips',0,NULL,'','','',1491635035,1491635035,112,'normal'),(45,'file',10,'auth/adminlog/detail','Detail','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,111,'normal'),(46,'file',10,'auth/adminlog/del','Delete','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,110,'normal'),(47,'file',11,'auth/group/index','View','fa fa-circle-o','','','Group tips',0,NULL,'','','',1491635035,1491635035,108,'normal'),(48,'file',11,'auth/group/add','Add','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,107,'normal'),(49,'file',11,'auth/group/edit','Edit','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,106,'normal'),(50,'file',11,'auth/group/del','Delete','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,105,'normal'),(51,'file',12,'auth/rule/index','View','fa fa-circle-o','','','Rule tips',0,NULL,'','','',1491635035,1491635035,103,'normal'),(52,'file',12,'auth/rule/add','Add','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,102,'normal'),(53,'file',12,'auth/rule/edit','Edit','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,101,'normal'),(54,'file',12,'auth/rule/del','Delete','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,100,'normal'),(55,'file',4,'addon/index','View','fa fa-circle-o','','','Addon tips',0,NULL,'','','',1491635035,1491635035,0,'normal'),(56,'file',4,'addon/add','Add','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,0,'normal'),(57,'file',4,'addon/edit','Edit','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,0,'normal'),(58,'file',4,'addon/del','Delete','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,0,'normal'),(59,'file',4,'addon/downloaded','Local addon','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,0,'normal'),(60,'file',4,'addon/state','Update state','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,0,'normal'),(63,'file',4,'addon/config','Setting','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,0,'normal'),(64,'file',4,'addon/refresh','Refresh','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,0,'normal'),(65,'file',4,'addon/multi','Multi','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,0,'normal'),(66,'file',0,'user','User','fa fa-user-circle','','','',1,NULL,'','hygl','huiyuanguanli',1491635035,1491635035,0,'normal'),(67,'file',66,'user/user','User','fa fa-user','','','',1,NULL,'','hygl','huiyuanguanli',1491635035,1491635035,0,'normal'),(68,'file',67,'user/user/index','View','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,0,'normal'),(69,'file',67,'user/user/edit','Edit','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,0,'normal'),(70,'file',67,'user/user/add','Add','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,0,'normal'),(71,'file',67,'user/user/del','Del','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,0,'normal'),(72,'file',67,'user/user/multi','Multi','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,0,'normal'),(73,'file',66,'user/group','User group','fa fa-users','','','',1,NULL,'','hyfz','huiyuanfenzu',1491635035,1491635035,0,'normal'),(74,'file',73,'user/group/add','Add','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,0,'normal'),(75,'file',73,'user/group/edit','Edit','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,0,'normal'),(76,'file',73,'user/group/index','View','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,0,'normal'),(77,'file',73,'user/group/del','Del','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,0,'normal'),(78,'file',73,'user/group/multi','Multi','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,0,'normal'),(79,'file',66,'user/rule','User rule','fa fa-circle-o','','','',1,NULL,'','hygz','huiyuanguize',1491635035,1491635035,0,'normal'),(80,'file',79,'user/rule/index','View','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,0,'normal'),(81,'file',79,'user/rule/del','Del','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,0,'normal'),(82,'file',79,'user/rule/add','Add','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,0,'normal'),(83,'file',79,'user/rule/edit','Edit','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,0,'normal'),(84,'file',79,'user/rule/multi','Multi','fa fa-circle-o','','','',0,NULL,'','','',1491635035,1491635035,0,'normal'),(85,'file',0,'command','在线命令管理','fa fa-terminal','','','',1,NULL,'','zxmlgl','zaixianminglingguanli',1644300602,1644300602,0,'normal'),(86,'file',85,'command/index','查看','fa fa-circle-o','','','',0,NULL,'','zk','zhakan',1644300602,1644300602,0,'normal'),(87,'file',85,'command/add','添加','fa fa-circle-o','','','',0,NULL,'','tj','tianjia',1644300602,1644300602,0,'normal'),(88,'file',85,'command/detail','详情','fa fa-circle-o','','','',0,NULL,'','xq','xiangqing',1644300602,1644300602,0,'normal'),(89,'file',85,'command/execute','运行','fa fa-circle-o','','','',0,NULL,'','yx','yunxing',1644300603,1644300603,0,'normal'),(90,'file',85,'command/del','删除','fa fa-circle-o','','','',0,NULL,'','sc','shanchu',1644300603,1644300603,0,'normal'),(91,'file',85,'command/multi','批量更新','fa fa-circle-o','','','',0,NULL,'','plgx','pilianggengxin',1644300603,1644300603,0,'normal'),(92,'file',0,'example','开发示例管理','fa fa-magic','','','',1,NULL,'','kfslgl','kaifashiliguanli',1644300614,1644300614,0,'normal'),(93,'file',92,'example/bootstraptable','表格完整示例','fa fa-table','','','',1,NULL,'','bgwzsl','biaogewanzhengshili',1644300614,1644300614,0,'normal'),(94,'file',93,'example/bootstraptable/index','查看','fa fa-circle-o','','','',0,NULL,'','zk','zhakan',1644300614,1644300614,0,'normal'),(95,'file',93,'example/bootstraptable/detail','详情','fa fa-circle-o','','','',0,NULL,'','xq','xiangqing',1644300614,1644300614,0,'normal'),(96,'file',93,'example/bootstraptable/change','变更','fa fa-circle-o','','','',0,NULL,'','bg','biangeng',1644300614,1644300614,0,'normal'),(97,'file',93,'example/bootstraptable/del','删除','fa fa-circle-o','','','',0,NULL,'','sc','shanchu',1644300614,1644300614,0,'normal'),(98,'file',93,'example/bootstraptable/multi','批量更新','fa fa-circle-o','','','',0,NULL,'','plgx','pilianggengxin',1644300614,1644300614,0,'normal'),(99,'file',92,'example/customsearch','自定义搜索','fa fa-table','','','',1,NULL,'','zdyss','zidingyisousuo',1644300614,1644300614,0,'normal'),(100,'file',99,'example/customsearch/index','查看','fa fa-circle-o','','','',0,NULL,'','zk','zhakan',1644300614,1644300614,0,'normal'),(101,'file',99,'example/customsearch/del','删除','fa fa-circle-o','','','',0,NULL,'','sc','shanchu',1644300614,1644300614,0,'normal'),(102,'file',99,'example/customsearch/multi','批量更新','fa fa-circle-o','','','',0,NULL,'','plgx','pilianggengxin',1644300614,1644300614,0,'normal'),(103,'file',92,'example/customform','自定义表单示例','fa fa-edit','','','',1,NULL,'','zdybdsl','zidingyibiaodanshili',1644300614,1644300614,0,'normal'),(104,'file',103,'example/customform/index','查看','fa fa-circle-o','','','',0,NULL,'','zk','zhakan',1644300614,1644300614,0,'normal'),(105,'file',92,'example/tablelink','表格联动示例','fa fa-table','','','点击左侧日志列表，右侧的表格数据会显示指定管理员的日志列表',1,NULL,'','bgldsl','biaogeliandongshili',1644300614,1644300614,0,'normal'),(106,'file',105,'example/tablelink/index','查看','fa fa-circle-o','','','',0,NULL,'','zk','zhakan',1644300614,1644300614,0,'normal'),(107,'file',92,'example/colorbadge','彩色角标','fa fa-table','','','左侧彩色的角标会根据当前数据量的大小进行更新',1,NULL,'','csjb','caisejiaobiao',1644300614,1644300614,0,'normal'),(108,'file',107,'example/colorbadge/index','查看','fa fa-circle-o','','','',0,NULL,'','zk','zhakan',1644300614,1644300614,0,'normal'),(109,'file',107,'example/colorbadge/del','删除','fa fa-circle-o','','','',0,NULL,'','sc','shanchu',1644300614,1644300614,0,'normal'),(110,'file',107,'example/colorbadge/multi','批量更新','fa fa-circle-o','','','',0,NULL,'','plgx','pilianggengxin',1644300615,1644300615,0,'normal'),(111,'file',92,'example/controllerjump','控制器间跳转','fa fa-table','','','点击IP地址可以跳转到新的选项卡中查看指定IP的数据',1,NULL,'','kzqjtz','kongzhiqijiantiaozhuan',1644300615,1644300615,0,'normal'),(112,'file',111,'example/controllerjump/index','查看','fa fa-circle-o','','','',0,NULL,'','zk','zhakan',1644300615,1644300615,0,'normal'),(113,'file',111,'example/controllerjump/del','删除','fa fa-circle-o','','','',0,NULL,'','sc','shanchu',1644300615,1644300615,0,'normal'),(114,'file',111,'example/controllerjump/multi','批量更新','fa fa-circle-o','','','',0,NULL,'','plgx','pilianggengxin',1644300615,1644300615,0,'normal'),(115,'file',92,'example/cxselect','多级联动','fa fa-table','','','基于jquery.cxselect实现的多级联动',1,NULL,'','djld','duojiliandong',1644300615,1644300615,0,'normal'),(116,'file',115,'example/cxselect/index','查看','fa fa-circle-o','','','',0,NULL,'','zk','zhakan',1644300615,1644300615,0,'normal'),(117,'file',115,'example/cxselect/del','删除','fa fa-circle-o','','','',0,NULL,'','sc','shanchu',1644300615,1644300615,0,'normal'),(118,'file',115,'example/cxselect/multi','批量更新','fa fa-circle-o','','','',0,NULL,'','plgx','pilianggengxin',1644300615,1644300615,0,'normal'),(119,'file',92,'example/multitable','多表格示例','fa fa-table','','','展示在一个页面显示多个Bootstrap-table表格',1,NULL,'','dbgsl','duobiaogeshili',1644300615,1644300615,0,'normal'),(120,'file',119,'example/multitable/index','查看','fa fa-circle-o','','','',0,NULL,'','zk','zhakan',1644300615,1644300615,0,'normal'),(121,'file',119,'example/multitable/del','删除','fa fa-circle-o','','','',0,NULL,'','sc','shanchu',1644300615,1644300615,0,'normal'),(122,'file',119,'example/multitable/multi','批量更新','fa fa-circle-o','','','',0,NULL,'','plgx','pilianggengxin',1644300615,1644300615,0,'normal'),(123,'file',92,'example/relationmodel','关联模型示例','fa fa-table','','','列表中的头像、用户名和昵称字段均从关联表中取出',1,NULL,'','glmxsl','guanlianmoxingshili',1644300615,1644300615,0,'normal'),(124,'file',123,'example/relationmodel/index','查看','fa fa-circle-o','','','',0,NULL,'','zk','zhakan',1644300615,1644300615,0,'normal'),(125,'file',123,'example/relationmodel/del','删除','fa fa-circle-o','','','',0,NULL,'','sc','shanchu',1644300615,1644300615,0,'normal'),(126,'file',123,'example/relationmodel/multi','批量更新','fa fa-circle-o','','','',0,NULL,'','plgx','pilianggengxin',1644300615,1644300615,0,'normal'),(127,'file',92,'example/tabletemplate','表格模板示例','fa fa-table','','','',1,NULL,'','bgmbsl','biaogemubanshili',1644300615,1644300615,0,'normal'),(128,'file',127,'example/tabletemplate/index','查看','fa fa-circle-o','','','',0,NULL,'','zk','zhakan',1644300615,1644300615,0,'normal'),(129,'file',127,'example/tabletemplate/detail','详情','fa fa-circle-o','','','',0,NULL,'','xq','xiangqing',1644300615,1644300615,0,'normal'),(130,'file',127,'example/tabletemplate/del','删除','fa fa-circle-o','','','',0,NULL,'','sc','shanchu',1644300615,1644300615,0,'normal'),(131,'file',127,'example/tabletemplate/multi','批量更新','fa fa-circle-o','','','',0,NULL,'','plgx','pilianggengxin',1644300615,1644300615,0,'normal'),(132,'file',92,'example/baidumap','百度地图示例','fa fa-map-pin','','','',1,NULL,'','bddtsl','baiduditushili',1644300615,1644300615,0,'normal'),(133,'file',132,'example/baidumap/index','查看','fa fa-circle-o','','','',0,NULL,'','zk','zhakan',1644300616,1644300616,0,'normal'),(134,'file',132,'example/baidumap/map','详情','fa fa-circle-o','','','',0,NULL,'','xq','xiangqing',1644300616,1644300616,0,'normal'),(135,'file',132,'example/baidumap/del','删除','fa fa-circle-o','','','',0,NULL,'','sc','shanchu',1644300616,1644300616,0,'normal'),(136,'file',92,'example/echarts','统计图表示例','fa fa-bar-chart','','','',1,NULL,'','tjtbsl','tongjitubiaoshili',1644300616,1644300616,0,'normal'),(137,'file',136,'example/echarts/index','查看','fa fa-circle-o','','','',0,NULL,'','zk','zhakan',1644300616,1644300616,0,'normal'),(166,'file',0,'development/addons','插件开发','fa fa-list','','','',1,'addtabs','','cjkf','chajiankaifa',1644374673,1644374739,0,'normal');
/*!40000 ALTER TABLE `qp_auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qp_category`
--

DROP TABLE IF EXISTS `qp_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qp_category` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `flag` set('hot','index','recommend') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '关键字',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '自定义名称',
  `createtime` int DEFAULT NULL COMMENT '创建时间',
  `updatetime` int DEFAULT NULL COMMENT '更新时间',
  `weigh` int NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `weigh` (`weigh`,`id`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qp_category`
--

LOCK TABLES `qp_category` WRITE;
/*!40000 ALTER TABLE `qp_category` DISABLE KEYS */;
INSERT INTO `qp_category` VALUES (1,0,'page','官方新闻','news','recommend','/assets/img/qrcode.png','','','news',1491635035,1491635035,1,'normal'),(2,0,'page','移动应用','mobileapp','hot','/assets/img/qrcode.png','','','mobileapp',1491635035,1491635035,2,'normal'),(3,2,'page','微信公众号','wechatpublic','index','/assets/img/qrcode.png','','','wechatpublic',1491635035,1491635035,3,'normal'),(4,2,'page','Android开发','android','recommend','/assets/img/qrcode.png','','','android',1491635035,1491635035,4,'normal'),(5,0,'page','软件产品','software','recommend','/assets/img/qrcode.png','','','software',1491635035,1491635035,5,'normal'),(6,5,'page','网站建站','website','recommend','/assets/img/qrcode.png','','','website',1491635035,1491635035,6,'normal'),(7,5,'page','企业管理软件','company','index','/assets/img/qrcode.png','','','company',1491635035,1491635035,7,'normal'),(8,6,'page','PC端','website-pc','recommend','/assets/img/qrcode.png','','','website-pc',1491635035,1491635035,8,'normal'),(9,6,'page','移动端','website-mobile','recommend','/assets/img/qrcode.png','','','website-mobile',1491635035,1491635035,9,'normal'),(10,7,'page','CRM系统 ','company-crm','recommend','/assets/img/qrcode.png','','','company-crm',1491635035,1491635035,10,'normal'),(11,7,'page','SASS平台软件','company-sass','recommend','/assets/img/qrcode.png','','','company-sass',1491635035,1491635035,11,'normal'),(12,0,'test','测试1','test1','recommend','/assets/img/qrcode.png','','','test1',1491635035,1491635035,12,'normal'),(13,0,'test','测试2','test2','recommend','/assets/img/qrcode.png','','','test2',1491635035,1491635035,13,'normal');
/*!40000 ALTER TABLE `qp_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qp_command`
--

DROP TABLE IF EXISTS `qp_command`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qp_command` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '类型',
  `params` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '参数',
  `command` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '命令',
  `content` text COMMENT '返回结果',
  `executetime` int unsigned DEFAULT NULL COMMENT '执行时间',
  `createtime` int unsigned DEFAULT NULL COMMENT '创建时间',
  `updatetime` int unsigned DEFAULT NULL COMMENT '更新时间',
  `status` enum('successed','failured') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'failured' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='在线命令表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qp_command`
--

LOCK TABLES `qp_command` WRITE;
/*!40000 ALTER TABLE `qp_command` DISABLE KEYS */;
INSERT INTO `qp_command` VALUES (1,'menu','[\"--controller=development\\/Addons\"]','php think menu --controller=development/Addons','Build Successed!',1644374673,1644374673,1644374674,'successed');
/*!40000 ALTER TABLE `qp_command` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qp_config`
--

DROP TABLE IF EXISTS `qp_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qp_config` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '变量名',
  `group` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '分组',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `visible` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '可见条件',
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '变量值',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '变量字典数据',
  `rule` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '扩展属性',
  `setting` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '配置',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qp_config`
--

LOCK TABLES `qp_config` WRITE;
/*!40000 ALTER TABLE `qp_config` DISABLE KEYS */;
INSERT INTO `qp_config` VALUES (1,'name','basic','Site name','请填写站点名称','string','','我的网站','','required','',''),(2,'beian','basic','Beian','粤ICP备15000000号-1','string','','','','','',''),(3,'cdnurl','basic','Cdn url','如果全站静态资源使用第三方云储存请配置该值','string','','','','','',''),(4,'version','basic','Version','如果静态资源有变动请重新配置该值','string','','1.0.1','','required','',''),(5,'timezone','basic','Timezone','','string','','Asia/Shanghai','','required','',''),(6,'forbiddenip','basic','Forbidden ip','一行一条记录','text','','','','','',''),(7,'languages','basic','Languages','','array','','{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}','','required','',''),(8,'fixedpage','basic','Fixed page','请尽量输入左侧菜单栏存在的链接','string','','dashboard','','required','',''),(9,'categorytype','dictionary','Category type','','array','','{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}','','','',''),(10,'configgroup','dictionary','Config group','','array','','{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\"}','','','',''),(11,'mail_type','email','Mail type','选择邮件发送方式','select','','1','[\"请选择\",\"SMTP\"]','','',''),(12,'mail_smtp_host','email','Mail smtp host','错误的配置发送邮件会导致服务器超时','string','','smtp.qq.com','','','',''),(13,'mail_smtp_port','email','Mail smtp port','(不加密默认25,SSL默认465,TLS默认587)','string','','465','','','',''),(14,'mail_smtp_user','email','Mail smtp user','（填写完整用户名）','string','','10000','','','',''),(15,'mail_smtp_pass','email','Mail smtp password','（填写您的密码或授权码）','string','','password','','','',''),(16,'mail_verify_type','email','Mail vertify type','（SMTP验证方式[推荐SSL]）','select','','2','[\"无\",\"TLS\",\"SSL\"]','','',''),(17,'mail_from','email','Mail from','','string','','10000@qq.com','','','',''),(18,'attachmentcategory','dictionary','Attachment category','','array','','{\"category1\":\"Category1\",\"category2\":\"Category2\",\"custom\":\"Custom\"}','','','','');
/*!40000 ALTER TABLE `qp_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qp_ems`
--

DROP TABLE IF EXISTS `qp_ems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qp_ems` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '事件',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '邮箱',
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '验证码',
  `times` int unsigned NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'IP',
  `createtime` int DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='邮箱验证码表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qp_ems`
--

LOCK TABLES `qp_ems` WRITE;
/*!40000 ALTER TABLE `qp_ems` DISABLE KEYS */;
/*!40000 ALTER TABLE `qp_ems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qp_sms`
--

DROP TABLE IF EXISTS `qp_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qp_sms` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '事件',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '手机号',
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '验证码',
  `times` int unsigned NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'IP',
  `createtime` int unsigned DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='短信验证码表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qp_sms`
--

LOCK TABLES `qp_sms` WRITE;
/*!40000 ALTER TABLE `qp_sms` DISABLE KEYS */;
/*!40000 ALTER TABLE `qp_sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qp_test`
--

DROP TABLE IF EXISTS `qp_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qp_test` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int DEFAULT '0' COMMENT '会员ID',
  `admin_id` int DEFAULT '0' COMMENT '管理员ID',
  `category_id` int unsigned DEFAULT '0' COMMENT '分类ID(单选)',
  `category_ids` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '分类ID(多选)',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '标签',
  `week` enum('monday','tuesday','wednesday') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图片',
  `images` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '附件',
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '关键字',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '描述',
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '省市',
  `json` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '配置:key=名称,value=值',
  `multiplejson` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '二维数组:title=标题,intro=介绍,author=作者,age=年龄',
  `price` decimal(10,2) unsigned DEFAULT '0.00' COMMENT '价格',
  `views` int unsigned DEFAULT '0' COMMENT '点击',
  `workrange` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '时间区间',
  `startdate` date DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year DEFAULT NULL COMMENT '年',
  `times` time DEFAULT NULL COMMENT '时间',
  `refreshtime` int DEFAULT NULL COMMENT '刷新时间(int)',
  `createtime` int DEFAULT NULL COMMENT '创建时间',
  `updatetime` int DEFAULT NULL COMMENT '更新时间',
  `deletetime` int DEFAULT NULL COMMENT '删除时间',
  `weigh` int DEFAULT '0' COMMENT '权重',
  `switch` tinyint(1) DEFAULT '0' COMMENT '开关',
  `status` enum('normal','hidden') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='测试表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qp_test`
--

LOCK TABLES `qp_test` WRITE;
/*!40000 ALTER TABLE `qp_test` DISABLE KEYS */;
INSERT INTO `qp_test` VALUES (1,1,1,12,'12,13','互联网,计算机','monday','hot,index','male','music,reading','我是一篇测试文章','<p>我是测试内容</p>','/assets/img/avatar.png','/assets/img/avatar.png,/assets/img/qrcode.png','/assets/img/avatar.png','关键字','描述','广西壮族自治区/百色市/平果县','{\"a\":\"1\",\"b\":\"2\"}','[{\"title\":\"标题一\",\"intro\":\"介绍一\",\"author\":\"小明\",\"age\":\"21\"}]',0.00,0,'2020-10-01 00:00:00 - 2021-10-31 23:59:59','2017-07-10','2017-07-10 18:24:45',2017,'18:24:45',1491635035,1491635035,1491635035,NULL,0,1,'normal','1');
/*!40000 ALTER TABLE `qp_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qp_user`
--

DROP TABLE IF EXISTS `qp_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qp_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group_id` int unsigned NOT NULL DEFAULT '0' COMMENT '组别ID',
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '昵称',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '密码',
  `salt` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '密码盐',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '电子邮箱',
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '手机号',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '头像',
  `level` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `gender` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `bio` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '格言',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `score` int NOT NULL DEFAULT '0' COMMENT '积分',
  `successions` int unsigned NOT NULL DEFAULT '1' COMMENT '连续登录天数',
  `maxsuccessions` int unsigned NOT NULL DEFAULT '1' COMMENT '最大连续登录天数',
  `prevtime` int DEFAULT NULL COMMENT '上次登录时间',
  `logintime` int DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '登录IP',
  `loginfailure` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `joinip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '加入IP',
  `jointime` int DEFAULT NULL COMMENT '加入时间',
  `createtime` int DEFAULT NULL COMMENT '创建时间',
  `updatetime` int DEFAULT NULL COMMENT '更新时间',
  `token` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Token',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态',
  `verification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '验证',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `username` (`username`) USING BTREE,
  KEY `email` (`email`) USING BTREE,
  KEY `mobile` (`mobile`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qp_user`
--

LOCK TABLES `qp_user` WRITE;
/*!40000 ALTER TABLE `qp_user` DISABLE KEYS */;
INSERT INTO `qp_user` VALUES (1,1,'admin','admin','410dc4adbc24e46121bb7542a32b8fa5','f22b5f','admin@163.com','13888888888','http://www.qp.com/assets/img/avatar.png',0,0,'2017-04-08','',0.00,0,1,1,1491635035,1491635035,'127.0.0.1',0,'127.0.0.1',1491635035,0,1491635035,'','normal','');
/*!40000 ALTER TABLE `qp_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qp_user_group`
--

DROP TABLE IF EXISTS `qp_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qp_user_group` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '组名',
  `rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '权限节点',
  `createtime` int DEFAULT NULL COMMENT '添加时间',
  `updatetime` int DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员组表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qp_user_group`
--

LOCK TABLES `qp_user_group` WRITE;
/*!40000 ALTER TABLE `qp_user_group` DISABLE KEYS */;
INSERT INTO `qp_user_group` VALUES (1,'默认组','1,2,3,4,5,6,7,8,9,10,11,12',1491635035,1491635035,'normal');
/*!40000 ALTER TABLE `qp_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qp_user_money_log`
--

DROP TABLE IF EXISTS `qp_user_money_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qp_user_money_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更余额',
  `before` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更前余额',
  `after` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更后余额',
  `memo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  `createtime` int DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员余额变动表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qp_user_money_log`
--

LOCK TABLES `qp_user_money_log` WRITE;
/*!40000 ALTER TABLE `qp_user_money_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `qp_user_money_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qp_user_rule`
--

DROP TABLE IF EXISTS `qp_user_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qp_user_rule` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int DEFAULT NULL COMMENT '父ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '标题',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `ismenu` tinyint(1) DEFAULT NULL COMMENT '是否菜单',
  `createtime` int DEFAULT NULL COMMENT '创建时间',
  `updatetime` int DEFAULT NULL COMMENT '更新时间',
  `weigh` int DEFAULT '0' COMMENT '权重',
  `status` enum('normal','hidden') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员规则表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qp_user_rule`
--

LOCK TABLES `qp_user_rule` WRITE;
/*!40000 ALTER TABLE `qp_user_rule` DISABLE KEYS */;
INSERT INTO `qp_user_rule` VALUES (1,0,'index','Frontend','',1,1491635035,1491635035,1,'normal'),(2,0,'api','API Interface','',1,1491635035,1491635035,2,'normal'),(3,1,'user','User Module','',1,1491635035,1491635035,12,'normal'),(4,2,'user','User Module','',1,1491635035,1491635035,11,'normal'),(5,3,'index/user/login','Login','',0,1491635035,1491635035,5,'normal'),(6,3,'index/user/register','Register','',0,1491635035,1491635035,7,'normal'),(7,3,'index/user/index','User Center','',0,1491635035,1491635035,9,'normal'),(8,3,'index/user/profile','Profile','',0,1491635035,1491635035,4,'normal'),(9,4,'api/user/login','Login','',0,1491635035,1491635035,6,'normal'),(10,4,'api/user/register','Register','',0,1491635035,1491635035,8,'normal'),(11,4,'api/user/index','User Center','',0,1491635035,1491635035,10,'normal'),(12,4,'api/user/profile','Profile','',0,1491635035,1491635035,3,'normal');
/*!40000 ALTER TABLE `qp_user_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qp_user_score_log`
--

DROP TABLE IF EXISTS `qp_user_score_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qp_user_score_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `score` int NOT NULL DEFAULT '0' COMMENT '变更积分',
  `before` int NOT NULL DEFAULT '0' COMMENT '变更前积分',
  `after` int NOT NULL DEFAULT '0' COMMENT '变更后积分',
  `memo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  `createtime` int DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员积分变动表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qp_user_score_log`
--

LOCK TABLES `qp_user_score_log` WRITE;
/*!40000 ALTER TABLE `qp_user_score_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `qp_user_score_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qp_user_token`
--

DROP TABLE IF EXISTS `qp_user_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qp_user_token` (
  `token` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Token',
  `user_id` int unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `createtime` int DEFAULT NULL COMMENT '创建时间',
  `expiretime` int DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`token`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员Token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qp_user_token`
--

LOCK TABLES `qp_user_token` WRITE;
/*!40000 ALTER TABLE `qp_user_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `qp_user_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qp_version`
--

DROP TABLE IF EXISTS `qp_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qp_version` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `oldversion` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '旧版本号',
  `newversion` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '新版本号',
  `packagesize` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '包大小',
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '升级内容',
  `downloadurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '下载地址',
  `enforce` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '强制更新',
  `createtime` int DEFAULT NULL COMMENT '创建时间',
  `updatetime` int DEFAULT NULL COMMENT '更新时间',
  `weigh` int NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='版本表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qp_version`
--

LOCK TABLES `qp_version` WRITE;
/*!40000 ALTER TABLE `qp_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `qp_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'qyg_qinagpai'
--

--
-- Dumping routines for database 'qyg_qinagpai'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-09 10:54:26
