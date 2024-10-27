/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - chengshilajifenleiguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`chengshilajifenleiguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `chengshilajifenleiguanlixitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1111','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-14 17:04:49'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-14 17:04:49'),(3,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-03-14 17:04:49'),(4,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-03-14 17:04:49'),(5,'laji_types','所属分类',1,'所属分类1',NULL,NULL,'2023-03-14 17:04:49'),(6,'laji_types','所属分类',2,'所属分类2',NULL,NULL,'2023-03-14 17:04:49'),(7,'laji_types','所属分类',3,'所属分类3',NULL,NULL,'2023-03-14 17:04:49'),(8,'laji_types','所属分类',4,'所属分类4',NULL,NULL,'2023-03-14 17:04:49'),(9,'laji_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-14 17:04:50'),(10,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-14 17:04:50'),(11,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-14 17:04:50'),(12,'forum_types','帖子类型',1,'帖子类型1',NULL,NULL,'2023-03-14 17:04:50'),(13,'forum_types','帖子类型',2,'帖子类型2',NULL,NULL,'2023-03-14 17:04:50'),(14,'forum_types','帖子类型',3,'帖子类型3',NULL,NULL,'2023-03-14 17:04:50'),(15,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-14 17:04:50'),(16,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-14 17:04:50'),(17,'zhengce_types','政策类型',1,'政策类型1',NULL,NULL,'2023-03-14 17:04:50'),(18,'zhengce_types','政策类型',2,'政策类型2',NULL,NULL,'2023-03-14 17:04:50'),(19,'laji_types','所属分类',5,'所属分类5',NULL,'','2023-03-14 17:20:18');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_types` int(11) DEFAULT NULL COMMENT '帖子类型  Search111 ',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_types`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,'发布内容1',303,1,1,'2023-03-14 17:05:49','2023-03-14 17:05:49','2023-03-14 17:05:49'),(2,'帖子标题2',1,NULL,'发布内容2',186,3,1,'2023-03-14 17:05:49','2023-03-14 17:05:49','2023-03-14 17:05:49'),(3,'帖子标题3',3,NULL,'发布内容3',294,1,1,'2023-03-14 17:05:49','2023-03-14 17:05:49','2023-03-14 17:05:49'),(4,'帖子标题4',3,NULL,'发布内容4',311,3,1,'2023-03-14 17:05:49','2023-03-14 17:05:49','2023-03-14 17:05:49'),(5,'帖子标题5',3,NULL,'发布内容5',309,3,1,'2023-03-14 17:05:49','2023-03-14 17:05:49','2023-03-14 17:05:49'),(6,'帖子标题6',1,NULL,'发布内容6',264,2,1,'2023-03-14 17:05:49','2023-03-14 17:05:49','2023-03-14 17:05:49'),(7,'帖子标题7',1,NULL,'发布内容7',239,3,1,'2023-03-14 17:05:49','2023-03-14 17:05:49','2023-03-14 17:05:49'),(8,'帖子标题8',1,NULL,'发布内容8',59,1,1,'2023-03-14 17:05:49','2023-03-14 17:05:49','2023-03-14 17:05:49'),(9,'帖子标题9',1,NULL,'发布内容9',148,1,1,'2023-03-14 17:05:49','2023-03-14 17:05:49','2023-03-14 17:05:49'),(10,'帖子标题10',2,NULL,'发布内容10',140,3,1,'2023-03-14 17:05:49','2023-03-14 17:05:49','2023-03-14 17:05:49'),(11,'帖子标题11',3,NULL,'发布内容11',132,2,1,'2023-03-14 17:05:49','2023-03-14 17:05:49','2023-03-14 17:05:49'),(12,'帖子标题12',2,NULL,'发布内容12',416,2,1,'2023-03-14 17:05:49','2023-03-14 17:05:49','2023-03-14 17:05:49'),(13,'帖子标题13',1,NULL,'发布内容13',178,1,1,'2023-03-14 17:05:49','2023-03-14 17:05:49','2023-03-14 17:05:49'),(14,'帖子标题14',3,NULL,'发布内容14',483,1,1,'2023-03-14 17:05:49','2023-03-14 17:05:49','2023-03-14 17:05:49'),(15,NULL,4,NULL,'fgdgsg范德萨范德萨个',14,NULL,2,'2023-03-14 17:19:15',NULL,'2023-03-14 17:19:15'),(16,NULL,NULL,1,'灌灌灌灌',14,NULL,2,'2023-03-14 17:20:23',NULL,'2023-03-14 17:20:23');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-03-14 17:05:49','公告详情1','2023-03-14 17:05:49'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-03-14 17:05:49','公告详情2','2023-03-14 17:05:49'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-03-14 17:05:49','公告详情3','2023-03-14 17:05:49'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-03-14 17:05:49','公告详情4','2023-03-14 17:05:49'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-03-14 17:05:49','公告详情5','2023-03-14 17:05:49'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-03-14 17:05:49','公告详情6','2023-03-14 17:05:49'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-03-14 17:05:49','公告详情7','2023-03-14 17:05:49'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-03-14 17:05:49','公告详情8','2023-03-14 17:05:49'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-03-14 17:05:49','公告详情9','2023-03-14 17:05:49'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-03-14 17:05:49','公告详情10','2023-03-14 17:05:49'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-03-14 17:05:49','公告详情11','2023-03-14 17:05:49'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-03-14 17:05:49','公告详情12','2023-03-14 17:05:49'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-03-14 17:05:49','公告详情13','2023-03-14 17:05:49'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-03-14 17:05:49','<p>公告详情14广告费撒打发</p>','2023-03-14 17:05:49');

/*Table structure for table `laji` */

DROP TABLE IF EXISTS `laji`;

CREATE TABLE `laji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `laji_name` varchar(200) DEFAULT NULL COMMENT '垃圾名称  Search111 ',
  `laji_uuid_number` varchar(200) DEFAULT NULL COMMENT '垃圾编号',
  `laji_photo` varchar(200) DEFAULT NULL COMMENT '垃圾照片',
  `laji_types` int(11) DEFAULT NULL COMMENT '所属分类 Search111',
  `laji_clicknum` int(11) DEFAULT NULL COMMENT '词条热度',
  `laji_content` text COMMENT '垃圾介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `laji_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='垃圾';

/*Data for the table `laji` */

insert  into `laji`(`id`,`laji_name`,`laji_uuid_number`,`laji_photo`,`laji_types`,`laji_clicknum`,`laji_content`,`shangxia_types`,`laji_delete`,`insert_time`,`create_time`) values (1,'垃圾名称1','1678784749093','upload/laji1.jpg',1,144,'垃圾介绍1',1,1,'2023-03-14 17:05:49','2023-03-14 17:05:49'),(2,'垃圾名称2','1678784749043','upload/laji2.jpg',3,479,'垃圾介绍2',1,1,'2023-03-14 17:05:49','2023-03-14 17:05:49'),(3,'垃圾名称3','1678784749119','upload/laji3.jpg',4,477,'垃圾介绍3',1,1,'2023-03-14 17:05:49','2023-03-14 17:05:49'),(4,'垃圾名称4','1678784749130','upload/laji4.jpg',4,283,'垃圾介绍4',1,1,'2023-03-14 17:05:49','2023-03-14 17:05:49'),(5,'垃圾名称5','1678784749137','upload/laji5.jpg',4,144,'垃圾介绍5',1,1,'2023-03-14 17:05:49','2023-03-14 17:05:49'),(6,'垃圾名称6','1678784749113','upload/laji6.jpg',1,273,'垃圾介绍6',1,1,'2023-03-14 17:05:49','2023-03-14 17:05:49'),(7,'垃圾名称7','1678784749075','upload/laji7.jpg',1,226,'垃圾介绍7',1,1,'2023-03-14 17:05:49','2023-03-14 17:05:49'),(8,'垃圾名称8','1678784749054','upload/laji8.jpg',2,125,'垃圾介绍8',1,1,'2023-03-14 17:05:49','2023-03-14 17:05:49'),(9,'垃圾名称9','1678784749075','upload/laji9.jpg',2,215,'垃圾介绍9',1,1,'2023-03-14 17:05:49','2023-03-14 17:05:49'),(10,'垃圾名称10','1678784749083','upload/laji10.jpg',4,79,'垃圾介绍10',1,1,'2023-03-14 17:05:49','2023-03-14 17:05:49'),(11,'垃圾名称11','1678784749096','upload/laji11.jpg',4,119,'垃圾介绍11',1,1,'2023-03-14 17:05:49','2023-03-14 17:05:49'),(12,'垃圾名称12','1678784749106','upload/laji12.jpg',2,94,'垃圾介绍12',1,1,'2023-03-14 17:05:49','2023-03-14 17:05:49'),(13,'垃圾名称13','1678784749078','upload/laji13.jpg',3,306,'垃圾介绍13',1,1,'2023-03-14 17:05:49','2023-03-14 17:05:49'),(14,'垃圾名称14','1678784749075','upload/laji14.jpg',1,320,'垃圾介绍14',1,1,'2023-03-14 17:05:49','2023-03-14 17:05:49');

/*Table structure for table `laji_collection` */

DROP TABLE IF EXISTS `laji_collection`;

CREATE TABLE `laji_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `laji_id` int(11) DEFAULT NULL COMMENT '垃圾',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `laji_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='垃圾收藏';

/*Data for the table `laji_collection` */

insert  into `laji_collection`(`id`,`laji_id`,`yonghu_id`,`laji_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-03-14 17:05:49','2023-03-14 17:05:49'),(2,2,1,1,'2023-03-14 17:05:49','2023-03-14 17:05:49'),(3,3,3,1,'2023-03-14 17:05:49','2023-03-14 17:05:49'),(4,4,2,1,'2023-03-14 17:05:49','2023-03-14 17:05:49'),(5,5,3,1,'2023-03-14 17:05:49','2023-03-14 17:05:49'),(6,6,1,1,'2023-03-14 17:05:49','2023-03-14 17:05:49'),(7,7,1,1,'2023-03-14 17:05:49','2023-03-14 17:05:49'),(8,8,2,1,'2023-03-14 17:05:49','2023-03-14 17:05:49'),(9,9,3,1,'2023-03-14 17:05:49','2023-03-14 17:05:49'),(10,10,3,1,'2023-03-14 17:05:49','2023-03-14 17:05:49'),(11,11,1,1,'2023-03-14 17:05:49','2023-03-14 17:05:49'),(12,12,3,1,'2023-03-14 17:05:49','2023-03-14 17:05:49'),(13,13,3,1,'2023-03-14 17:05:49','2023-03-14 17:05:49'),(14,14,3,1,'2023-03-14 17:05:49','2023-03-14 17:05:49'),(15,14,4,1,'2023-03-14 17:19:44','2023-03-14 17:19:44');

/*Table structure for table `laji_liuyan` */

DROP TABLE IF EXISTS `laji_liuyan`;

CREATE TABLE `laji_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `laji_id` int(11) DEFAULT NULL COMMENT '垃圾',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `laji_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='垃圾留言';

/*Data for the table `laji_liuyan` */

insert  into `laji_liuyan`(`id`,`laji_id`,`yonghu_id`,`laji_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2023-03-14 17:05:49','回复信息1','2023-03-14 17:05:49','2023-03-14 17:05:49'),(2,2,2,'留言内容2','2023-03-14 17:05:49','回复信息2','2023-03-14 17:05:49','2023-03-14 17:05:49'),(3,3,1,'留言内容3','2023-03-14 17:05:49','回复信息3','2023-03-14 17:05:49','2023-03-14 17:05:49'),(4,4,1,'留言内容4','2023-03-14 17:05:49','回复信息4','2023-03-14 17:05:49','2023-03-14 17:05:49'),(5,5,3,'留言内容5','2023-03-14 17:05:49','回复信息5','2023-03-14 17:05:49','2023-03-14 17:05:49'),(6,6,2,'留言内容6','2023-03-14 17:05:49','回复信息6','2023-03-14 17:05:49','2023-03-14 17:05:49'),(7,7,3,'留言内容7','2023-03-14 17:05:49','回复信息7','2023-03-14 17:05:49','2023-03-14 17:05:49'),(8,8,3,'留言内容8','2023-03-14 17:05:49','回复信息8','2023-03-14 17:05:49','2023-03-14 17:05:49'),(9,9,3,'留言内容9','2023-03-14 17:05:49','回复信息9','2023-03-14 17:05:49','2023-03-14 17:05:49'),(10,10,2,'留言内容10','2023-03-14 17:05:49','回复信息10','2023-03-14 17:05:49','2023-03-14 17:05:49'),(11,11,1,'留言内容11','2023-03-14 17:05:49','回复信息11','2023-03-14 17:05:49','2023-03-14 17:05:49'),(12,12,1,'留言内容12','2023-03-14 17:05:49','回复信息12','2023-03-14 17:05:49','2023-03-14 17:05:49'),(13,13,2,'留言内容13','2023-03-14 17:05:49','回复信息13','2023-03-14 17:05:49','2023-03-14 17:05:49'),(14,14,1,'留言内容14','2023-03-14 17:05:49','回复信息14','2023-03-14 17:05:49','2023-03-14 17:05:49'),(15,3,4,'个哈哈哈','2023-03-14 17:19:24','灌灌灌灌','2023-03-14 17:20:45','2023-03-14 17:19:24');

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`yonghu_id`,`liuyan_name`,`liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,3,'留言标题1','留言内容1','2023-03-14 17:05:49','回复信息1','2023-03-14 17:05:49','2023-03-14 17:05:49'),(2,2,'留言标题2','留言内容2','2023-03-14 17:05:49','回复信息2','2023-03-14 17:05:49','2023-03-14 17:05:49'),(3,3,'留言标题3','留言内容3','2023-03-14 17:05:49','回复信息3','2023-03-14 17:05:49','2023-03-14 17:05:49'),(4,2,'留言标题4','留言内容4','2023-03-14 17:05:49','回复信息4','2023-03-14 17:05:49','2023-03-14 17:05:49'),(5,1,'留言标题5','留言内容5','2023-03-14 17:05:49','回复信息5','2023-03-14 17:05:49','2023-03-14 17:05:49'),(6,1,'留言标题6','留言内容6','2023-03-14 17:05:49','回复信息6','2023-03-14 17:05:49','2023-03-14 17:05:49'),(7,1,'留言标题7','留言内容7','2023-03-14 17:05:49','回复信息7','2023-03-14 17:05:49','2023-03-14 17:05:49'),(8,2,'留言标题8','留言内容8','2023-03-14 17:05:49','回复信息8','2023-03-14 17:05:49','2023-03-14 17:05:49'),(9,1,'留言标题9','留言内容9','2023-03-14 17:05:49','回复信息9','2023-03-14 17:05:49','2023-03-14 17:05:49'),(10,3,'留言标题10','留言内容10','2023-03-14 17:05:49','回复信息10','2023-03-14 17:05:49','2023-03-14 17:05:49'),(11,3,'留言标题11','留言内容11','2023-03-14 17:05:49','回复信息11','2023-03-14 17:05:49','2023-03-14 17:05:49'),(12,3,'留言标题12','留言内容12','2023-03-14 17:05:49','回复信息12','2023-03-14 17:05:49','2023-03-14 17:05:49'),(13,3,'留言标题13','留言内容13','2023-03-14 17:05:49','回复信息13','2023-03-14 17:05:49','2023-03-14 17:05:49'),(14,3,'留言标题14','留言内容14','2023-03-14 17:05:49','回复信息14','2023-03-14 17:05:49','2023-03-14 17:05:49'),(15,4,'标题111','是方法是分散发送','2023-03-14 17:19:32','给对方如好得很','2023-03-14 17:20:50','2023-03-14 17:19:32');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','rxb3hyhhpc5zy8qvd9l5x7tth20vpasx','2023-03-14 17:15:07','2023-03-14 18:20:06'),(2,1,'a1','yonghu','用户','4q00pp0h7g3s0aha1whnzm0lzanyktw3','2023-03-14 17:17:08','2023-03-14 18:17:09'),(3,4,'a5','yonghu','用户','z2lwrmjoqh359c1arz0rruzf30dnrfj4','2023-03-14 17:18:50','2023-03-14 18:18:50');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-14 17:04:49');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','2023-03-14 17:05:49'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','2023-03-14 17:05:49'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','2023-03-14 17:05:49'),(4,'a5','123456','张5','17788889999','411222555599996661','upload/1678785534988.jpg',2,'5@qq.com','2023-03-14 17:18:44');

/*Table structure for table `zhengce` */

DROP TABLE IF EXISTS `zhengce`;

CREATE TABLE `zhengce` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zhengce_name` varchar(200) DEFAULT NULL COMMENT '政策名称 Search111  ',
  `zhengce_photo` varchar(200) DEFAULT NULL COMMENT '政策图片 ',
  `zhengce_types` int(11) NOT NULL COMMENT '政策类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '政策发布时间 ',
  `zhengce_content` text COMMENT '政策详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='政策';

/*Data for the table `zhengce` */

insert  into `zhengce`(`id`,`zhengce_name`,`zhengce_photo`,`zhengce_types`,`insert_time`,`zhengce_content`,`create_time`) values (1,'政策名称1','upload/zhengce1.jpg',1,'2023-03-14 17:05:49','政策详情1','2023-03-14 17:05:49'),(2,'政策名称2','upload/zhengce2.jpg',1,'2023-03-14 17:05:49','政策详情2','2023-03-14 17:05:49'),(3,'政策名称3','upload/zhengce3.jpg',1,'2023-03-14 17:05:49','政策详情3','2023-03-14 17:05:49'),(4,'政策名称4','upload/zhengce4.jpg',1,'2023-03-14 17:05:49','政策详情4','2023-03-14 17:05:49'),(5,'政策名称5','upload/zhengce5.jpg',1,'2023-03-14 17:05:49','政策详情5','2023-03-14 17:05:49'),(6,'政策名称6','upload/zhengce6.jpg',2,'2023-03-14 17:05:49','政策详情6','2023-03-14 17:05:49'),(7,'政策名称7','upload/zhengce7.jpg',1,'2023-03-14 17:05:49','政策详情7','2023-03-14 17:05:49'),(8,'政策名称8','upload/zhengce8.jpg',1,'2023-03-14 17:05:49','政策详情8','2023-03-14 17:05:49'),(9,'政策名称9','upload/zhengce9.jpg',2,'2023-03-14 17:05:49','政策详情9','2023-03-14 17:05:49'),(10,'政策名称10','upload/zhengce10.jpg',2,'2023-03-14 17:05:49','政策详情10','2023-03-14 17:05:49'),(11,'政策名称11','upload/zhengce11.jpg',2,'2023-03-14 17:05:49','政策详情11','2023-03-14 17:05:49'),(12,'政策名称12','upload/zhengce12.jpg',1,'2023-03-14 17:05:49','政策详情12','2023-03-14 17:05:49'),(13,'政策名称13','upload/zhengce13.jpg',2,'2023-03-14 17:05:49','政策详情13','2023-03-14 17:05:49'),(14,'政策名称14','upload/zhengce14.jpg',1,'2023-03-14 17:05:49','政策详情14','2023-03-14 17:05:49');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
