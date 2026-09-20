-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl27359140
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `cl27359140`
--

/*!40000 DROP DATABASE IF EXISTS `cl27359140`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl27359140` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl27359140`;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) DEFAULT NULL COMMENT '收货人',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `isdefault` varchar(200) DEFAULT NULL COMMENT '是否默认地址',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710782369099 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2024-03-18 16:31:08','地址1','张三','19819881111','是',11),(2,'2024-03-18 16:31:08','地址2','李四','19819882222','是',12),(3,'2024-03-18 16:31:08','地址3','王五','19819883333','是',13),(4,'2024-03-18 16:31:08','地址4','赵六','19819884444','是',14),(5,'2024-03-18 16:31:08','地址5','孙七','19819885555','是',15),(6,'2024-03-18 16:31:08','地址6','周八','19819886666','是',16),(1710782369098,'2024-03-18 17:19:28','2222222','222','19999999999','否',1710782335065);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT NULL COMMENT '商品表名',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `buynumber` int(11) DEFAULT NULL COMMENT '购买数量',
  `price` double DEFAULT NULL COMMENT '单价',
  `discountprice` double DEFAULT NULL COMMENT '折扣价',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710782349478 DEFAULT CHARSET=utf8 COMMENT='购物车';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1710782349477,'2024-03-18 17:19:08','shangpinxinxi',1710782283877,'222222','file/1710782261753.png',1,30,NULL,1710782335065,'111');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangpinxinxi`
--

DROP TABLE IF EXISTS `discussshangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangpinxinxi`
--

LOCK TABLES `discussshangpinxinxi` WRITE;
/*!40000 ALTER TABLE `discussshangpinxinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussshangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-03-18 16:31:08','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\"],\"menu\":\"全部订单\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\",\"删除\",\"修改\"],\"menu\":\"未支付订单\",\"menuJump\":\"未支付\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\"],\"menu\":\"已支付订单\",\"menuJump\":\"已支付\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已完成订单\",\"menuJump\":\"已完成\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已取消订单\",\"menuJump\":\"已取消\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已退款订单\",\"menuJump\":\"已退款\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已发货订单\",\"menuJump\":\"已发货\",\"tableName\":\"orders\"}],\"fontClass\":\"icon-common39\",\"menu\":\"订单管理\",\"unicode\":\"&#xeeba;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"查看\",\"删除\",\"修改\",\"查看评论\"],\"menu\":\"商品信息\",\"menuJump\":\"列表\",\"tableName\":\"shangpinxinxi\"}],\"fontClass\":\"icon-common5\",\"menu\":\"商品信息管理\",\"unicode\":\"&#xedae;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"商品类型\",\"menuJump\":\"列表\",\"tableName\":\"shangpinleixing\"}],\"fontClass\":\"icon-common39\",\"menu\":\"商品类型管理\",\"unicode\":\"&#xeeba;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"}],\"fontClass\":\"icon-user8\",\"menu\":\"用户管理\",\"unicode\":\"&#xef9e;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"查看\",\"修改\"],\"menu\":\"管理员\",\"menuJump\":\"列表\",\"tableName\":\"users\"}],\"fontClass\":\"icon-common43\",\"menu\":\"管理员管理\",\"unicode\":\"&#xef27;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"}],\"fontClass\":\"icon-common7\",\"menu\":\"轮播图管理\",\"unicode\":\"&#xedb4;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看评论\"],\"fontClass\":\"icon-common44\",\"menu\":\"商品信息\",\"menuJump\":\"列表\",\"tableName\":\"shangpinxinxi\",\"unicode\":\"&#xef28;\"}],\"fontClass\":\"icon-common44\",\"menu\":\"商品信息管理\",\"unicode\":\"&#xef28;\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\"],\"menu\":\"全部订单\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\",\"删除\",\"修改\"],\"menu\":\"未支付订单\",\"menuJump\":\"未支付\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\",\"物流\",\"发货\"],\"menu\":\"已支付订单\",\"menuJump\":\"已支付\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\",\"删除\",\"物流\"],\"menu\":\"已完成订单\",\"menuJump\":\"已完成\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已取消订单\",\"menuJump\":\"已取消\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已退款订单\",\"menuJump\":\"已退款\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\",\"删除\",\"确认收货\"],\"menu\":\"已发货订单\",\"menuJump\":\"已发货\",\"tableName\":\"orders\"}],\"fontClass\":\"icon-common39\",\"menu\":\"订单管理\",\"unicode\":\"&#xeeba;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"地址\",\"menuJump\":\"列表\",\"tableName\":\"address\"}],\"fontClass\":\"icon-common29\",\"menu\":\"地址管理\",\"unicode\":\"&#xee2e;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"购物车\",\"menuJump\":\"列表\",\"tableName\":\"cart\"}],\"fontClass\":\"icon-common2\",\"menu\":\"购物车管理\",\"unicode\":\"&#xeda4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\"}],\"fontClass\":\"icon-common4\",\"menu\":\"我的收藏管理\",\"unicode\":\"&#xedab;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"商品信息\",\"menuJump\":\"列表\",\"tableName\":\"shangpinxinxi\"}],\"fontClass\":\"icon-common5\",\"menu\":\"商品信息管理\",\"unicode\":\"&#xedae;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"商品类型\",\"menuJump\":\"列表\",\"tableName\":\"shangpinleixing\"}],\"fontClass\":\"icon-common39\",\"menu\":\"商品类型管理\",\"unicode\":\"&#xeeba;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看评论\"],\"fontClass\":\"icon-common44\",\"menu\":\"商品信息\",\"menuJump\":\"列表\",\"tableName\":\"shangpinxinxi\",\"unicode\":\"&#xef28;\"}],\"fontClass\":\"icon-common44\",\"menu\":\"商品信息管理\",\"unicode\":\"&#xef28;\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `picture` longtext NOT NULL COMMENT '图片',
  `buynumber` int(11) DEFAULT NULL COMMENT '购买数量',
  `price` double DEFAULT NULL COMMENT '单价',
  `discountprice` double DEFAULT NULL COMMENT '折扣价',
  `total` double DEFAULT NULL COMMENT '总价',
  `discounttotal` double DEFAULT NULL COMMENT '折扣总价格',
  `type` varchar(200) DEFAULT NULL COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '订单状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `logistics` longtext COMMENT '物流',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT NULL COMMENT '商品表名',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1710782376274 DEFAULT CHARSET=utf8 COMMENT='商品订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1710782376273,'2024-03-18 17:19:35','file/1710782261753.png',1,30,30,30,30,'1','已完成','2222222','19999999999','222','222','<p>已签收</p>',1710782335065,'20243191193527040077','shangpinxinxi',1710782283877,'222222','111');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinleixing`
--

DROP TABLE IF EXISTS `shangpinleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710782236702 DEFAULT CHARSET=utf8 COMMENT='商品类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinleixing`
--

LOCK TABLES `shangpinleixing` WRITE;
/*!40000 ALTER TABLE `shangpinleixing` DISABLE KEYS */;
INSERT INTO `shangpinleixing` VALUES (41,'2024-03-18 16:31:08','类型1'),(42,'2024-03-18 16:31:08','类型2'),(43,'2024-03-18 16:31:08','类型3'),(44,'2024-03-18 16:31:08','类型4'),(45,'2024-03-18 16:31:08','类型5'),(46,'2024-03-18 16:31:08','类型6'),(1710782236701,'2024-03-18 17:17:16','化妆品');
/*!40000 ALTER TABLE `shangpinleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `shangpinbiaoti` varchar(200) DEFAULT NULL COMMENT '商品标题',
  `shangpinchengse` varchar(200) DEFAULT NULL COMMENT '商品成色',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `shangpintupian` longtext COMMENT '商品图片',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  `price` double DEFAULT NULL COMMENT '价格',
  `onelimittimes` int(11) DEFAULT NULL COMMENT '单限',
  `alllimittimes` int(11) DEFAULT NULL COMMENT '库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710782283878 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (51,'2024-03-18 16:31:08','账号1','商品标题1','全新','品牌1','商品类型1','file/shangpinxinxiShangpintupian1.jpg,file/shangpinxinxiShangpintupian2.jpg,file/shangpinxinxiShangpintupian3.jpg','商品详情1',1,99.9,1,99),(52,'2024-03-18 16:31:08','账号2','商品标题2','全新','品牌2','商品类型2','file/shangpinxinxiShangpintupian2.jpg,file/shangpinxinxiShangpintupian3.jpg,file/shangpinxinxiShangpintupian4.jpg','商品详情2',2,99.9,2,99),(53,'2024-03-18 16:31:08','账号3','商品标题3','全新','品牌3','商品类型3','file/shangpinxinxiShangpintupian3.jpg,file/shangpinxinxiShangpintupian4.jpg,file/shangpinxinxiShangpintupian5.jpg','商品详情3',3,99.9,3,99),(54,'2024-03-18 16:31:08','账号4','商品标题4','全新','品牌4','商品类型4','file/shangpinxinxiShangpintupian4.jpg,file/shangpinxinxiShangpintupian5.jpg,file/shangpinxinxiShangpintupian6.jpg','商品详情4',4,99.9,4,99),(55,'2024-03-18 16:31:08','账号5','商品标题5','全新','品牌5','商品类型5','file/shangpinxinxiShangpintupian5.jpg,file/shangpinxinxiShangpintupian6.jpg,file/shangpinxinxiShangpintupian7.jpg','商品详情5',5,99.9,5,99),(56,'2024-03-18 16:31:08','账号6','商品标题6','全新','品牌6','商品类型6','file/shangpinxinxiShangpintupian6.jpg,file/shangpinxinxiShangpintupian7.jpg,file/shangpinxinxiShangpintupian8.jpg','商品详情6',6,99.9,6,99),(1710782283877,'2024-03-18 17:18:03','111','222222','全新','222','化妆品','file/1710782261753.png','<p>11111111111</p><p><img style=\"width:100%;\" src=\"http://localhost:8080/cl27359140/file/1710782281450.png\" alt=\"\" data-href=\"\" style=\"\"/></p>',1,30,0,1);
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710782346904 DEFAULT CHARSET=utf8 COMMENT='我的收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1710782346903,'2024-03-18 17:19:06',1710782283877,'shangpinxinxi','222222','file/1710782261753.png','1',NULL,NULL,1710782335065);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','xy80ipqh7f1q3oa7o9wex2upc016kk2g','2024-03-18 17:15:45','2024-03-18 18:15:46'),(2,1710782212357,'111','yonghu','用户','3kjmlb4g30yas3f2c7gbx5fkuvpx0y9m','2024-03-18 17:17:08','2024-03-18 18:21:34'),(3,1710782335065,'222','yonghu','用户','lhtbud2cy18kuorohwde9ttzcygim5lw','2024-03-18 17:18:57','2024-03-18 18:18:58');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-03-18 16:31:08','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `touxiang` longtext COMMENT '头像',
  `money` double DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1710782335066 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (31,'2024-03-18 16:31:08','账号1','123456','男','19819881111','file/yonghuTouxiang1.jpg',200),(32,'2024-03-18 16:31:08','账号2','123456','男','19819881112','file/yonghuTouxiang2.jpg',200),(33,'2024-03-18 16:31:08','账号3','123456','男','19819881113','file/yonghuTouxiang3.jpg',200),(34,'2024-03-18 16:31:08','账号4','123456','男','19819881114','file/yonghuTouxiang4.jpg',200),(35,'2024-03-18 16:31:08','账号5','123456','男','19819881115','file/yonghuTouxiang5.jpg',200),(36,'2024-03-18 16:31:08','账号6','123456','男','19819881116','file/yonghuTouxiang6.jpg',200),(1710782212357,'2024-03-18 17:16:52','111','111','女','18888888888','file/1710782210820.webp',0),(1710782335065,'2024-03-18 17:18:55','222','222','女','19999999999','file/1710782334402.webp',99969);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-19 15:01:08
