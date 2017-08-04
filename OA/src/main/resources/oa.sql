/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.0.22-community-nt : Database - oa
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`oa` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `oa`;

/*Table structure for table `become` */

DROP TABLE IF EXISTS `become`;

CREATE TABLE `become` (
  `b_id` int(11) NOT NULL auto_increment,
  `b_theme` varchar(255) default NULL,
  `b_priority` varchar(255) default NULL,
  `b_shopdate` date default NULL,
  `b_applydate` date default NULL,
  `b_post` varchar(20) default NULL,
  `b_joindate` date default NULL,
  `b_become` date default NULL,
  `b_content` varchar(255) default NULL,
  `b_achievement` varchar(255) default NULL,
  `b_problem` varchar(255) default NULL,
  `b_imagine` varchar(255) default NULL,
  `b_comment` varchar(255) default NULL,
  `depart_id` int(11) default NULL,
  `emp_id` int(11) default NULL,
  PRIMARY KEY  (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `become` */

insert  into `become`(`b_id`,`b_theme`,`b_priority`,`b_shopdate`,`b_applydate`,`b_post`,`b_joindate`,`b_become`,`b_content`,`b_achievement`,`b_problem`,`b_imagine`,`b_comment`,`depart_id`,`emp_id`) values (1,'转正申请-王伟17-1000183','中',NULL,'2016-04-07','助理','2016-02-16','2015-05-16','1、起草公司工作计划总结，并作好公司重要会议记录；\r\n2、起草、存档整理总经理签发文件；\r\n3、公司管理制度、规章制度，网页设计方案书、合同书，公司总体运行配合;\r\n4、接听电话、妥当应答，并做好电话记录；\r\n5、掌握总经理的日程安排做好预约工作，安排商务旅行；\r\n6、完成总经理或综合管理部经理交办的其他工作；',' 	1、起草了公司2016年整体工作计划；\r\n2、这三个月的总经理的会议纪要输出，以及整理各类总经理的签发文件，保障没有问题；\r\n3、配合总经理处理公司各项事务，获得总经理的表扬；','学习还需加强，对业务知识了解不够；','主动学习公司业务知识，多与总经理交流学习','同意',1,5),(2,'转正申请-慧慧-1000181','中',NULL,'2016-04-07','行政专员','2016-02-02',NULL,' 	1、负责企业新员工培训\r\n2、负责各项人事制度巡查\r\n3、负责绩效管理',' 	1、组织了三次培训《如何提高工作效率、引爆员工工作潜能》、《公司员工价值观培训》、《企业文化建设》、《工伤保险管理条例》\r\n2、出台《员工学习园地管理规定》、学习园地定期出版，企业网站内容每5日实行更新一次；\r\n3、进行绩效检查4次、考评表及时到位、公正公平进行考核、对考核结果进行评估分析、及时报表','对公司的各项制度还没有彻底的厘清，知识还有所不足；',' 	1、主动的整理各项制度，争取在短期能完全掌握各项制度；\r\n2、主动向各位同事学习、咨询；',NULL,2,6);

/*Table structure for table `boardroom` */

DROP TABLE IF EXISTS `boardroom`;

CREATE TABLE `boardroom` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `capacity` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `device` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `description` varchar(255) default NULL,
  `pic` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `boardroom` */

insert  into `boardroom`(`id`,`name`,`capacity`,`location`,`device`,`status`,`description`,`pic`) values (1,'一号会议室','20人','一楼102','投影仪，电视','1','','/upload/hy1.jpg'),(2,'二号会议室','40人','二楼204','投影仪，电视，话筒，音响设备','1','','/upload/hy2.jpg'),(3,'三号会议室','30人','三楼302','投影仪，电视','1','','/upload/hy3.jpg');

/*Table structure for table `boardroomreserve` */

DROP TABLE IF EXISTS `boardroomreserve`;

CREATE TABLE `boardroomreserve` (
  `id` int(11) NOT NULL auto_increment,
  `subject` varchar(50) NOT NULL,
  `applicationDate` varchar(50) NOT NULL,
  `beginTime` varchar(50) NOT NULL,
  `endTime` varchar(50) NOT NULL,
  `reason` varchar(50) NOT NULL,
  `description` varchar(50) default NULL,
  `emp_id` int(11) NOT NULL,
  `board_id` int(11) NOT NULL,
  `state` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `boardroomreserve` */

insert  into `boardroomreserve`(`id`,`subject`,`applicationDate`,`beginTime`,`endTime`,`reason`,`description`,`emp_id`,`board_id`,`state`) values (1,'会议室预定-王伟','2017-08-02','2017-08-02 08:00','2017-08-02 09:00','部门月末总结会议',NULL,5,1,0),(2,'会议室预定-王伟','2017-08-01','2017-08-01 08:00','2017-08-01 08:00','面试',NULL,5,2,0),(3,'会议室预定-王伟','2017-08-02','2017-08-03 08:00','2017-08-03 08:00','部门例会',NULL,5,3,0);

/*Table structure for table `car` */

DROP TABLE IF EXISTS `car`;

CREATE TABLE `car` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `no` varchar(50) NOT NULL default '',
  `pic` varchar(255) NOT NULL default '',
  `status` varchar(50) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `car` */

insert  into `car`(`id`,`name`,`no`,`pic`,`status`) values (1,'本田','苏A672H7','/upload/cl1.png','1'),(2,'丰田','苏A738I1','/upload/cl4.jpg','1'),(3,'路虎','苏A30J62','/upload/cl3.png','1'),(4,'沃尔沃','苏A293B1','/upload/cl2.jpg','1'),(5,'丰田柯斯达','苏A76H77','/upload/cl5.png','1');

/*Table structure for table `department` */

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `depart_id` int(11) NOT NULL auto_increment COMMENT '部门编号',
  `depart_name` varchar(50) NOT NULL COMMENT '部门名称',
  `depart_description` varchar(255) default NULL COMMENT '部门描述',
  `depart_pid` int(11) default NULL COMMENT '部门父部门编号',
  `depart_statu` int(11) default '1',
  PRIMARY KEY  (`depart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `department` */

insert  into `department`(`depart_id`,`depart_name`,`depart_description`,`depart_pid`,`depart_statu`) values (1,'华夏集团',NULL,NULL,1),(2,'总经办',NULL,1,1),(3,'人事部','人力资源管理',1,1),(4,'科技公司','科技研发',1,1),(5,'采购部','采购',4,1),(6,'财务部','财务',4,1),(7,'秘书处','',7,1),(8,'后勤部','',1,1),(9,'工程部','',4,1),(10,'北京分公司','',1,1),(11,'测试部','',1,1),(19,'保安部',' ',4,1);

/*Table structure for table `egress` */

DROP TABLE IF EXISTS `egress`;

CREATE TABLE `egress` (
  `eg_id` int(11) NOT NULL auto_increment,
  `eg_theme` varchar(50) default NULL,
  `eg_priority` varchar(50) default NULL,
  `eg_shopdate` date default NULL,
  `eg_applydate` date default NULL,
  `eg_egress` datetime default NULL,
  `eg_return` datetime default NULL,
  `eg_hour` varchar(255) default '0',
  `eg_day` varchar(255) default '0',
  `eg_site` varchar(255) default NULL,
  `eg_reason` varchar(255) default NULL,
  `eg_send` varchar(255) default NULL,
  `eg_advance` varchar(255) default NULL,
  `depart_id` int(11) default NULL,
  `emp_id` int(11) default NULL,
  PRIMARY KEY  (`eg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `egress` */

insert  into `egress`(`eg_id`,`eg_theme`,`eg_priority`,`eg_shopdate`,`eg_applydate`,`eg_egress`,`eg_return`,`eg_hour`,`eg_day`,`eg_site`,`eg_reason`,`eg_send`,`eg_advance`,`depart_id`,`emp_id`) values (1,'外出申请-王伟17-1000539','中',NULL,'2016-04-12','2016-04-19 00:00:00','2016-04-20 00:00:00','','1','广州天河万科地产',' 	考察渠道代理商的资质','否','是',1,5),(2,'外出申请-慧慧1000529','中',NULL,'2016-04-12','2016-04-18 08:30:00','2016-04-19 11:30:00','3','','南京中山陵','和客户谈谈','否','是',2,6),(3,'外出申请-阿哥-1000196','中',NULL,'2016-04-08','2016-04-14 08:00:00','2016-04-14 12:00:00','4',NULL,'北京朝阳五金市场','配件选型','是','是',3,7),(4,'外出申请-张三风1000421','中',NULL,'2016-04-11','2016-04-12 08:30:00','2016-04-12 17:30:00','9',NULL,'南京新街口','行政事务处理','否','是',4,8);

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `emp_id` int(20) NOT NULL auto_increment,
  `emp_code` varchar(255) NOT NULL,
  `emp_name` varchar(255) NOT NULL,
  `emp_sex` varchar(255) default '',
  `emp_state` varchar(255) default '',
  `emp_mobile` varchar(11) default '',
  `emp_email` varchar(255) default '',
  `emp_birth` date default NULL,
  `emp_join` date default NULL,
  `emp_formal` date default NULL,
  `emp_leave` date default NULL,
  `emp_description` varchar(255) default NULL,
  `emp_icon` varchar(255) default NULL,
  `depart_id` int(20) default NULL,
  `emp_pwd` varchar(255) default NULL,
  `emp_status` varchar(50) default NULL,
  `emp_phone` varchar(50) default NULL,
  `emp_qq` varchar(50) default NULL,
  `state_id` int(20) default NULL,
  PRIMARY KEY  (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `employee` */

insert  into `employee`(`emp_id`,`emp_code`,`emp_name`,`emp_sex`,`emp_state`,`emp_mobile`,`emp_email`,`emp_birth`,`emp_join`,`emp_formal`,`emp_leave`,`emp_description`,`emp_icon`,`depart_id`,`emp_pwd`,`emp_status`,`emp_phone`,`emp_qq`,`state_id`) values (5,'Ahz005','王伟17','男','在职','15598765222','wangwei@qq.com','1950-04-17','1950-04-16','1950-04-16',NULL,'为别人鼓掌的人也是在给自己的生命加油','upload/h5.png',5,'a013d2b75f30bd15f963c348a36897fe','在岗','0516-88888888','1234567890',1),(6,'Ahz006','慧慧','女','离职','15598765444','huihui@qq.com','1989-12-05','2013-11-03','2014-02-01','2017-03-04','','',NULL,'5bf7f6cb24ca07f41917221f3143d6f1','','0516-77777777','2345678908',0),(7,'Ahz007','阿哥','男','在职','15598765555','age@qq.com','1987-02-03','2012-02-18','2012-12-04',NULL,'人生像钟表，可回到起点，已不是昨天','upload/h1.png',7,'52283a1006800f1f4355cb0e4842e388','离岗','0516-66666666','3456789012',0),(8,'Ahz008','张三风','男','离职','15598765333','zhangsanfeng@qq.com','1988-04-12','2013-08-05','2013-10-04','2016-02-04',NULL,NULL,NULL,'5bf7f6cb24ca07f41917221f3143d6f1',NULL,NULL,NULL,0),(9,'Ahz009','微微','女','试用','15598760000','weiwei@qq.com','1985-04-07','2014-01-24','2014-03-04',NULL,NULL,NULL,9,'4f55801d960e94eed64e5f58546196cc',NULL,NULL,NULL,0),(10,'Ahz010','棒棒','男','在职','15598765332','bangbang@qq.com','1982-03-11','2014-04-22','2014-06-11',NULL,'不要对挫折叹气','upload/h1.png',10,'8a811e498b95c3c0f3581b5c01432f78','出差',NULL,NULL,0),(14,'Ahz014','西西','女','离职','15877722277','xixi@qq.com','1989-02-01','2013-02-09','2013-04-12','2017-05-03','组长',NULL,NULL,'5bf7f6cb24ca07f41917221f3143d6f1',NULL,NULL,NULL,0),(15,'Ahz015','可可','男','离职','15598760001','keke@qq.com','1989-02-01','2013-02-02','2013-04-03','2017-05-03','组长',NULL,NULL,'5bf7f6cb24ca07f41917221f3143d6f1',NULL,NULL,NULL,0),(16,'Ahz016','陈','男','在职','15598765112','chen@qq.com','1989-02-01','2013-02-02','2013-04-03',NULL,'组长',NULL,2,'5fdbfac7eab01bf2508f44e4a1f4a134',NULL,NULL,NULL,0),(21,'Ahz020','陈斌','男','在职','15877722283','chenbin@qq.com','1989-02-01','2013-02-02','2013-04-03','2017-05-03','组长',NULL,4,'f3473daf37cad8aba692106e6f276338',NULL,NULL,NULL,0),(22,'Ahz022','成威','男','在职','15598765112','chengwei@qq.com','1989-02-01','2013-02-02','2013-04-03',NULL,'组长',NULL,4,'63c9a3f8b258e810f9febe302077659f',NULL,NULL,NULL,0),(23,'admin','管理员','','','1111111111','admin@qq.com',NULL,NULL,NULL,NULL,'探索协同运营管理之道','upload/h1.png',NULL,'53f139e187e60f8376343990737b8fec','在岗','','123456',0);

/*Table structure for table `employeerole` */

DROP TABLE IF EXISTS `employeerole`;

CREATE TABLE `employeerole` (
  `emp_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY  (`emp_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `employeerole` */

insert  into `employeerole`(`emp_id`,`role_id`) values (5,2),(5,3),(7,2),(7,4),(9,3),(10,3),(16,3),(21,3),(22,3),(23,1);

/*Table structure for table `entry` */

DROP TABLE IF EXISTS `entry`;

CREATE TABLE `entry` (
  `et_id` int(11) NOT NULL auto_increment,
  `et_theme` varchar(255) default NULL,
  `et_priority` varchar(200) default NULL,
  `et_shopdate` date default NULL,
  `et_name` varchar(255) NOT NULL,
  `et_joindate` date default NULL,
  `et_post` varchar(255) default NULL,
  `et_birth` date default NULL,
  `et_sex` varchar(20) default NULL,
  `et_life` varchar(255) default NULL,
  `et_remarks` varchar(255) default NULL,
  `depart_id` int(11) default NULL,
  PRIMARY KEY  (`et_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `entry` */

insert  into `entry`(`et_id`,`et_theme`,`et_priority`,`et_shopdate`,`et_name`,`et_joindate`,`et_post`,`et_birth`,`et_sex`,`et_life`,`et_remarks`,`depart_id`) values (1,'入职申请-陈莹-1000179',' 中','2016-04-30','江圣俊','2016-04-22','高级研发工程师','1980-02-15','男','10',NULL,1),(2,'入职申请-陈莹-1000180','中','2016-04-30','徐俊','2016-04-14','初级工程师','1985-03-04','男','3',NULL,2),(3,'入职申请-陈莹-1000177','高','2016-04-30','崔明敏','2016-04-22','销售工程师','1988-04-12','女','8',NULL,3),(4,'入职申请-超级管理员-1000177','低','2016-04-22',' 	test','2016-04-07','资深HR','1987-03-21','男','11',NULL,4),(5,'入职申请-陈莹-1000122','中','2017-05-08','噶为','2017-05-05','会计师','1980-03-02','女','10','safasf',5),(6,'入职申请-陈莹-1000122','中','2017-05-08','热狗','2017-05-05','HR','1980-03-02','女','10','safasf',6);

/*Table structure for table `furlough` */

DROP TABLE IF EXISTS `furlough`;

CREATE TABLE `furlough` (
  `fg_id` int(11) NOT NULL auto_increment,
  `fg_theme` varchar(50) default NULL,
  `fg_priority` varchar(50) default NULL,
  `fg_shopdate` date default NULL,
  `fg_applydate` date default NULL,
  `fg_cdate` date default NULL,
  `fg_ddate` date default NULL,
  `fg_hour` varchar(255) default '0',
  `fg_day` varchar(255) default '0',
  `fg_type` varchar(50) default NULL,
  `fg_reason` varchar(255) default NULL,
  `depart_id` int(11) default NULL,
  `emp_id` int(11) default NULL,
  PRIMARY KEY  (`fg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `furlough` */

insert  into `furlough`(`fg_id`,`fg_theme`,`fg_priority`,`fg_shopdate`,`fg_applydate`,`fg_cdate`,`fg_ddate`,`fg_hour`,`fg_day`,`fg_type`,`fg_reason`,`depart_id`,`emp_id`) values (1,'请休假申请-王伟17-1001556','中',NULL,'2016-10-02','2016-10-08','2016-10-10','0','3','事假','老家急事',1,5),(2,'请休假申请-慧慧-1000937','中',NULL,'2016-05-04','2016-05-05','2016-05-06','0','1','事假','亲属事故处理',2,6),(3,'请休假申请-阿哥-1000542','中',NULL,'2016-04-12','2016-04-26','2016-04-29','0','4','年假','请调休年假',3,7),(4,'请休假申请-张三风-1000559','中',NULL,'2016-04-12','2016-04-18','2016-04-18','0','1','其他','周六加班，休整一天',4,8);

/*Table structure for table `kcb` */

DROP TABLE IF EXISTS `kcb`;

CREATE TABLE `kcb` (
  `xingm` varchar(32) default NULL,
  `kemu` varchar(32) default NULL,
  `shijian` varchar(32) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `kcb` */

insert  into `kcb`(`xingm`,`kemu`,`shijian`) values ('李四','语文','2017-8-3 10:00:00'),('张三','语文','2017-8-3 10:00:00'),('张三','数学','2017-8-3 12:00:00');

/*Table structure for table `off` */

DROP TABLE IF EXISTS `off`;

CREATE TABLE `off` (
  `of_id` int(11) NOT NULL auto_increment,
  `of_theme` varchar(255) default NULL,
  `of_priority` varchar(255) default NULL,
  `of_shopdate` date default NULL,
  `of_applydate` date default NULL,
  `of_cdate` date default NULL,
  `of_ddate` date default NULL,
  `of_hour` varchar(50) default '0',
  `of_day` varchar(50) default '0',
  `of_reason` varchar(255) default NULL,
  `of_agent` varchar(255) default NULL,
  `depart_id` int(11) default NULL,
  `emp_id` int(11) default NULL,
  PRIMARY KEY  (`of_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `off` */

insert  into `off`(`of_id`,`of_theme`,`of_priority`,`of_shopdate`,`of_applydate`,`of_cdate`,`of_ddate`,`of_hour`,`of_day`,`of_reason`,`of_agent`,`depart_id`,`emp_id`) values (1,'调休申请-王伟17-1000533','中',NULL,'2016-04-12','2015-05-04','2016-05-05','0','3','家里人结婚','沈华',1,5),(2,'调休申请-慧慧-1000515','中',NULL,'2016-04-12','2016-04-18','2016-04-21','0','3','父母过来找我','沈涛辉',2,6),(3,'调休申请-阿哥-1000485','中',NULL,'2016-04-12','2016-04-18','2016-04-21','0','3','回老家一趟','陈莹',3,7);

/*Table structure for table `overtime` */

DROP TABLE IF EXISTS `overtime`;

CREATE TABLE `overtime` (
  `oi_id` int(11) NOT NULL auto_increment,
  `oi_theme` varchar(50) default NULL,
  `oi_priority` varchar(50) default NULL,
  `oi_shopdate` date default NULL,
  `oi_applydate` date default NULL,
  `oi_cdate` datetime default NULL,
  `oi_ddate` datetime default NULL,
  `oi_hour` varchar(50) default '0',
  `oi_day` varchar(50) default '0',
  `oi_reason` varchar(255) default NULL,
  `depart_id` int(11) default NULL,
  `emp_id` int(11) default NULL,
  PRIMARY KEY  (`oi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `overtime` */

insert  into `overtime`(`oi_id`,`oi_theme`,`oi_priority`,`oi_shopdate`,`oi_applydate`,`oi_cdate`,`oi_ddate`,`oi_hour`,`oi_day`,`oi_reason`,`depart_id`,`emp_id`) values (1,'加班申请-王伟17-1000565','中',NULL,'2016-04-12','2016-04-16 08:00:00','2016-04-16 18:00:00','0','1','生产线升级，需要技术支持',1,5),(2,'加班申请-慧慧-1000563','中',NULL,'2016-04-12','2016-04-16 08:00:00','2016-04-16 18:00:00','0','1','生产线升级，进行技术指导',2,6),(3,'加班申请-阿哥-1000561','中',NULL,'2016-04-12','2016-04-18 03:00:00','2016-04-18 09:00:00','6','0','统计上月财务数据报表',3,7),(4,'加班申请-张三风-1000558','中',NULL,'2016-04-12','2016-04-19 06:00:00','2016-04-20 06:00:00','0','1','统计上月财务数据报表',1,8);

/*Table structure for table `quit` */

DROP TABLE IF EXISTS `quit`;

CREATE TABLE `quit` (
  `q_id` int(11) NOT NULL auto_increment,
  `q_theme` varchar(255) default NULL,
  `q_priority` varchar(255) default NULL,
  `q_shopdate` date default NULL,
  `q_applydate` date default NULL,
  `q_post` varchar(255) default NULL,
  `q_joindate` date default NULL,
  `q_quit` date default NULL,
  `q_type` varchar(255) default NULL,
  `q_reason` varchar(255) default NULL,
  `q_transfer` varchar(255) default NULL,
  `q_opinion` varchar(255) default NULL,
  `depart_id` int(11) default NULL,
  `emp_id` int(11) default NULL,
  PRIMARY KEY  (`q_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `quit` */

insert  into `quit`(`q_id`,`q_theme`,`q_priority`,`q_shopdate`,`q_applydate`,`q_post`,`q_joindate`,`q_quit`,`q_type`,`q_reason`,`q_transfer`,`q_opinion`,`depart_id`,`emp_id`) values (1,'离职申请-王伟17-1000185','中',NULL,'2016-06-07','工程师','2007-10-19','2016-04-30','合同未到期，个人要求解除劳动关系','工资不满足，有其他机会','工作交接给新员工','同意',1,5),(2,'离职申请-慧慧-1000184','中',NULL,'2016-04-07','销售工程师','2015-07-17','2016-04-30','合同未到期，个人要求解除劳动关系','工资不满足，有其他机会','工作交接给新员工',' 	同意',2,6),(3,'离职申请-阿哥-1000114','中',NULL,'2016-05-04','工程师','2014-05-12','2017-03-03','合同未到期，个人要求解除劳动关系','工资不满足，有其他机会','工作交接给新员工','同意',1,7);

/*Table structure for table `recruit` */

DROP TABLE IF EXISTS `recruit`;

CREATE TABLE `recruit` (
  `re_id` int(11) NOT NULL auto_increment,
  `re_theme` varchar(50) default NULL,
  `re_post` varchar(50) default NULL,
  `re_applydate` date default NULL,
  `re_number` int(11) default NULL,
  `re_positiondate` date default NULL,
  `re_reason` varchar(255) default NULL,
  `re_duty` varchar(255) default NULL,
  `re_age` varchar(255) default NULL,
  `re_sex` varchar(255) default NULL,
  `re_experience` varchar(255) default NULL,
  `re_lb` varchar(255) default NULL,
  `re_req` varchar(255) default NULL,
  `depart_id` int(11) default NULL,
  `emp_id` int(11) default NULL,
  `eaa_state` int(11) default NULL,
  `eaa_conclusion` varchar(255) default NULL,
  `eaa_date` datetime default NULL,
  PRIMARY KEY  (`re_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `recruit` */

insert  into `recruit`(`re_id`,`re_theme`,`re_post`,`re_applydate`,`re_number`,`re_positiondate`,`re_reason`,`re_duty`,`re_age`,`re_sex`,`re_experience`,`re_lb`,`re_req`,`depart_id`,`emp_id`,`eaa_state`,`eaa_conclusion`,`eaa_date`) values (1,'招聘申请-刘峰-1000165','初级工程师','2016-04-07',5,'2016-04-30','新产品即将投入生产，当前生产力不足以满足新产品大规模生产的需求','负责新产品的流水线工作；',' 	28左右','不限',' 	1、一年以上相关工作经验；\r\n2、态度诚恳，能够接受加班；','机械制造业',NULL,1,NULL,1,'通过','2017-08-04 13:34:14'),(2,'招聘申请-李浩-1000164',' 	高级技术员','2016-04-07',1,'2016-04-30','新产品立项，需要高端研发人员参与；',' 	负责研发新产品；带领项目组进行技术攻坚；',' 	30左右','男',' 	1、五年以上相关产品研发经验；\r\n2、一年以上带团队经验；\r\n3、为人诚恳，愿意与公司共成长；',' 	机械制造',NULL,2,NULL,1,'通过','2017-08-04 13:34:17'),(3,'招聘申请-王丽萍-1000166',' 	销售工程师','2016-04-07',3,'2016-04-22',' 	新产品即将推向市场，分公司现有销售团队，不能满足当前需求，希望增加人手，加大推广营销力度；','开拓销售渠道；推广新产品；完成年度销售任务；',' 	27左右','不限',' 	1、一年以上销售工作经验；\r\n2、沟通顺畅，工作热情；',' 	制造业',NULL,3,NULL,1,'通过','2017-08-04 13:34:20'),(4,'招聘申请-李萌-1000163','销售助理','2016-04-07',2,'2016-04-13',' 	今年销售部门任务较重，人力不够；\r\n销售部有一同事计划准备离职，需要人员交接工作；',' 	1、辅助销售工程师完成销售任务，比如散传单、周末推广营销；\r\n2、接手离职员工工作；',' 	25左右','女',' 	1、一年以上销售助理方面工作经验；\r\n2、沟通顺畅，工作有热情；',' 	最好有制造业产品销售的背景',NULL,1,NULL,2,'失败','2017-08-04 13:34:22'),(5,'招聘申请-长春-1000163','会计师','2017-01-02',3,'2017-05-03','紧缺','财务','25左右','女','3年以上会计师经验','南京金融',NULL,4,NULL,0,'提交主管审批','2017-08-04 13:35:07'),(6,'招聘申请-亚东-1000162','采购师','2017-04-14',4,'2017-04-22','紧缺','采购物品','30左右','男','1年以上','科技公司','',2,NULL,0,'提交主管审批','2017-08-04 13:35:10'),(10,'招聘申请-三十-1000162','营销师','2017-05-03',5,'2017-06-01','紧缺','卖','25左右','不限','2年以上','XX公司','',6,NULL,0,'提交主管审批','2017-08-04 13:35:34'),(11,'招聘申请-念念-1000165','HR','2017-04-21',5,'2017-05-02','紧缺','员工','25左右','女','3年','科技公司','',7,NULL,0,'提交主管审批','2017-08-04 13:35:36'),(12,'招聘申请-珂珂-1000165','会计师','2017-04-20',5,'2017-05-08','紧缺','员工','25左右','女','3年','科技公司','',5,NULL,0,'提交主管审批','2017-08-04 13:35:39');

/*Table structure for table `resource` */

DROP TABLE IF EXISTS `resource`;

CREATE TABLE `resource` (
  `r_id` int(11) NOT NULL auto_increment,
  `r_name` varchar(50) NOT NULL,
  `r_url` varchar(200) default NULL,
  `r_type` int(11) default NULL,
  `r_check` int(11) default NULL,
  `r_pid` int(11) default NULL,
  PRIMARY KEY  (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `resource` */

insert  into `resource`(`r_id`,`r_name`,`r_url`,`r_type`,`r_check`,`r_pid`) values (1,'我的桌面','/desktop.do?action=index',0,1,NULL),(2,'我的事务','/work',0,1,NULL),(3,'目标管理','/goal',0,1,NULL),(4,'信息中心','/info',0,1,NULL),(5,'行政管理','/xz',0,NULL,NULL),(6,'人力资源','/hr',0,NULL,NULL),(7,'系统管理','/sysManage',0,NULL,NULL),(8,'驾驶舱','/jiashi.do?action=index',0,NULL,1),(9,'个人设置','/emp.do?action=showInfo',0,1,1),(10,'新建流程事务','/1',0,1,2),(11,'待处理的事务','/2',0,1,2),(12,'已处理的事务','/3',0,1,2),(13,'我发起的事务','/4',0,1,2),(14,'我的工作计划','/5',0,1,3),(15,'全部工作计划','/6',0,NULL,3),(16,'我的工作任务','/7',0,1,3),(17,'全部工作计划','/8',0,NULL,3),(18,'我的工作报告','/9',0,1,3),(19,'全部工作报告','/a',0,NULL,3),(20,'我的工作日程','/b',0,1,3),(21,'全部工作日程','/c',0,NULL,3),(22,'内部通讯录','/d',0,1,4),(23,'电子信息','/e',0,1,4),(24,'信息公告','/f',0,1,4),(25,'公告管理','/g',0,NULL,4),(26,'知识社区','/h',0,1,4),(27,'会议室管理','/hy',0,1,5),(28,'车辆管理','/cl',0,1,5),(29,'员工管理','/emp.do?action=Emplist',0,NULL,6),(30,'招聘和配置','/recruit.do?action=Relist',0,NULL,6),(31,'考勤管理','/work.do?action=Wklist',0,NULL,6),(32,'组织机构','/depart.do?action=findAllDepart_list',0,NULL,7),(33,'岗位角色页面','/role.do?action=findAllRole',0,NULL,7),(34,'用户管理','/emp.do?action=findEmpRight',0,NULL,7),(35,'在线用户','/login.do?action=uo',0,NULL,7),(36,'新增组织机构','/depart.do?action=addDepart',1,NULL,32),(37,'新增组织机构页面','/depart.do?action=findAllDepart_select',1,NULL,32),(38,'修改部门页面','/depart.do?action=findDepartById',1,NULL,32),(39,'修改部门','/depart.do?action=editDepart',1,NULL,32),(40,'删除部门','/depart.do?action=delDepartById',1,NULL,32),(41,'新增岗位角色','/role.do?action=addRole',1,NULL,33),(42,'权限设置页面','/res.do?action=findAllRes',1,NULL,33),(43,'为角色添加权限','/res.do?action=addQxForRole',1,NULL,33),(44,'修改角色页面','/role.do?action=findRoleById',1,NULL,33),(45,'修改角色','/role.do?action=editRole',1,NULL,33),(46,'删除角色','/role.do?action=delRoleById',1,NULL,33),(47,'岗位或角色页面','/emp.do?action=findAllRoleForEmp',1,NULL,34),(48,'为用户添加角色','/emp.do?action=updateRoleForEmp',1,NULL,34),(49,'初始化口令','/emp.do?action=initPwd',1,NULL,34),(51,'用户模糊查询','/emp.do?action=findEmpRight',1,NULL,34),(52,'修改口令','/emp.do?action=updatePwd',1,1,9),(53,'设置状态页面','/emp.do?action=upload',1,1,9),(54,'头像更改','/emp.do?action=upload',1,1,9),(55,'修改状态信息','/emp.do?action=updateZT',1,1,9),(56,'制定工作计划','/r',1,1,3),(57,'新增工作任务','/s',1,1,3),(58,'撰写工作报告','/t',1,1,3),(59,'设置工作日程','/u',1,1,3),(60,'未读消息','/v',1,1,23),(61,'已读消息','/w',1,1,23),(62,'已发送消息','/x',1,1,23),(63,'草稿箱','/y',1,1,23),(64,'星标信息','/z',1,1,23),(65,'发送信息','/a1',1,1,23),(66,'回复','/a2',1,1,23),(67,'回复全部','/a3',1,1,23),(68,'转发','/a4',1,1,23),(69,'发送消息(基于草稿)','/a5',1,1,23),(70,'删除','/a6',1,1,23),(71,'设置星标','/a7',1,1,23),(72,'发送公告','/a8',1,NULL,25),(73,'修改','/a9',1,NULL,25),(74,'删除','/a10',1,NULL,25),(75,'社区发帖','/a11',1,1,26),(76,'设置','/a12',1,NULL,26),(77,'删除','/a13',1,NULL,26),(78,'设置关注','/a14',1,1,26),(79,'回复','/a15',1,1,26),(80,'设为最佳','/a16',1,NULL,26),(81,'会议室列表','/board.do?action=findBoard',1,1,27),(82,'会议室预定','/a18',1,1,27),(83,'会议室登记','/board.do?action=addBoard',1,NULL,27),(84,'会议室修改','/board.do?action=updateBoard',1,NULL,27),(85,'会议室删除','/board.do?action=delBoard',1,NULL,27),(86,'会议室预定查询','/b4',1,NULL,27),(87,'车辆列表','/car.do?action=findCar',1,1,28),(88,'用车申请','/b6',1,1,28),(89,'车辆登记','/car.do?action=addCar',1,NULL,28),(90,'车辆修改','/car.do?action=updateCar',1,NULL,28),(91,'车辆删除','/car.do?action=delCar',1,NULL,28),(92,'用车申请查询','/b0',1,NULL,28),(93,'用户展示','/emp.do?action=zs',1,NULL,29),(94,'新增员工','/emp.do?action=add',1,NULL,29),(95,'修改','/emp.do?action=update',1,NULL,29),(96,'删除','/emp.do?action=del',1,NULL,29),(97,'查找','/emp.do?action=cz',1,NULL,29),(98,'招聘管理','/recruit.do?action=zszp',1,NULL,30),(99,'入职管理','/recruit.do?action=zszp',1,NULL,30),(100,'转正管理','/recruit.do?action=zszp',1,NULL,30),(101,'考勤查询','/work.do?action=kqcz',1,NULL,31),(102,'离职管理','/recruit.do?action=zszp',1,NULL,30),(103,'招聘申请','/recruit.do?action=zp',1,NULL,30),(104,'入职申请','/recruit.do?action=zp',1,NULL,30),(105,'转正申请','/recruit.do?action=zp',1,NULL,30),(106,'离职申请','/recruit.do?action=zp',1,NULL,30),(107,'考勤详细展示','/work.do?action=kqzs',1,NULL,31),(108,'出差申请','/work.do?action=kqsq',1,NULL,31),(109,'外出申请','/work.do?action=kqsq',1,NULL,31),(110,'加班申请','/work.do?action=kqsq',1,NULL,31),(111,'请休假申请','/work.do?action=kqsq',1,NULL,31),(112,'调休申请','/work.do?action=kqsq',1,NULL,31);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL auto_increment COMMENT '岗位编号',
  `role_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `role_description` varchar(255) default NULL COMMENT '岗位说明',
  `role_statu` int(11) default '1',
  PRIMARY KEY  (`role_id`),
  UNIQUE KEY `uq_role_name` (`role_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`role_id`,`role_name`,`role_description`,`role_statu`) values (1,'系统管理员','administrators',1),(2,'总经理','',1),(3,'副总经理','',1),(4,'人事总监','',1),(5,'行政总监','',1),(6,'秘书处','',0);

/*Table structure for table `roleresource` */

DROP TABLE IF EXISTS `roleresource`;

CREATE TABLE `roleresource` (
  `role_id` int(11) NOT NULL,
  `res_id` int(11) NOT NULL,
  PRIMARY KEY  (`role_id`,`res_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `roleresource` */

insert  into `roleresource`(`role_id`,`res_id`) values (1,1),(1,2),(1,3),(1,4),(1,5),(1,7),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,16),(1,18),(1,20),(1,22),(1,23),(1,24),(1,26),(1,27),(1,28),(1,32),(1,33),(1,34),(1,35),(1,36),(1,37),(1,38),(1,39),(1,40),(1,41),(1,42),(1,43),(1,44),(1,45),(1,46),(1,47),(1,48),(1,49),(1,50),(1,51),(1,52),(1,53),(1,54),(1,55),(1,56),(1,57),(1,58),(1,59),(1,60),(1,61),(1,62),(1,63),(1,64),(1,65),(1,69),(1,72),(1,73),(1,75),(1,76),(1,81),(1,82),(1,83),(1,84),(1,85),(1,86),(1,87),(1,89),(1,90),(1,91),(1,92),(1,106),(1,107),(1,108),(1,109),(1,110),(1,111),(2,1),(2,2),(2,3),(2,4),(2,5),(2,9),(2,10),(2,11),(2,12),(2,13),(2,14),(2,16),(2,18),(2,20),(2,22),(2,23),(2,24),(2,26),(2,27),(2,28),(2,48),(2,49),(2,50),(2,51),(2,52),(2,53),(2,54),(2,55),(2,56),(2,57),(2,58),(2,59),(2,60),(2,61),(2,62),(2,63),(2,64),(2,65),(2,69),(2,72),(2,73),(2,75),(2,76),(2,81),(2,82),(2,83),(2,84),(2,85),(2,86),(2,87),(2,88),(2,89),(2,90),(2,91),(2,92),(3,1),(3,2),(3,3),(3,4),(3,9),(3,10),(3,11),(3,12),(3,13),(3,14),(3,16),(3,18),(3,20),(3,22),(3,23),(3,24),(3,26),(3,27),(3,28),(3,48),(3,49),(3,50),(3,51),(3,52),(3,53),(3,54),(3,55),(3,56),(3,57),(3,58),(3,59),(3,60),(3,61),(3,62),(3,63),(3,64),(3,65),(3,69),(3,72),(3,73),(3,75),(3,76),(3,81),(3,82),(4,1),(4,2),(4,3),(4,4),(4,6),(4,9),(4,10),(4,11),(4,12),(4,13),(4,14),(4,16),(4,18),(4,20),(4,22),(4,23),(4,24),(4,26),(4,27),(4,28),(4,29),(4,30),(4,31),(4,44),(4,48),(4,49),(4,50),(4,51),(4,52),(4,53),(4,54),(4,55),(4,56),(4,57),(4,58),(4,59),(4,60),(4,61),(4,62),(4,63),(4,64),(4,65),(4,69),(4,72),(4,73),(4,75),(4,76),(4,81),(4,82),(4,87),(4,88),(4,89),(4,90),(4,91),(4,92),(4,93),(4,94),(4,95),(4,96),(4,97),(4,98),(4,99),(4,100),(4,101),(4,102),(4,103),(4,104),(4,105),(4,108),(5,1),(5,2),(5,3),(5,4),(5,9),(5,10),(5,11),(5,12),(5,13),(5,14),(5,16),(5,18),(5,20),(5,22),(5,23),(5,24),(5,26),(5,27),(5,28),(5,48),(5,49),(5,50),(5,51),(5,52),(5,53),(5,54),(5,55),(5,56),(5,57),(5,58),(5,59),(5,60),(5,61),(5,62),(5,63),(5,64),(5,65),(5,69),(5,72),(5,73),(5,75),(5,76),(5,81),(5,82),(6,1),(6,2),(6,3),(6,4),(6,9),(6,10),(6,11),(6,12),(6,13),(6,14),(6,16),(6,18),(6,20),(6,22),(6,23),(6,24),(6,26),(6,27),(6,28),(6,52),(6,53),(6,54),(6,55),(6,56),(6,57),(6,58),(6,59),(6,60),(6,61),(6,62),(6,63),(6,64),(6,65),(6,66),(6,67),(6,68),(6,69),(6,70),(6,71),(6,75),(6,78),(6,79),(6,81),(6,82),(6,87),(6,88);

/*Table structure for table `travel` */

DROP TABLE IF EXISTS `travel`;

CREATE TABLE `travel` (
  `tv_id` int(11) NOT NULL auto_increment,
  `tv_theme` varchar(50) default NULL,
  `tv_priority` varchar(50) default NULL,
  `tv_applydate` date default NULL,
  `tv_cdate` date default NULL,
  `tv_ddate` date default NULL,
  `tv_termini` varchar(255) default NULL,
  `tv_reason` varchar(255) default NULL,
  `tv_traffic` varchar(255) default NULL,
  `tv_report` varchar(255) default NULL,
  `tv_result` varchar(255) default NULL,
  `depart_id` int(11) default NULL,
  `emp_id` int(11) default NULL,
  PRIMARY KEY  (`tv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `travel` */

insert  into `travel`(`tv_id`,`tv_theme`,`tv_priority`,`tv_applydate`,`tv_cdate`,`tv_ddate`,`tv_termini`,`tv_reason`,`tv_traffic`,`tv_report`,`tv_result`,`depart_id`,`emp_id`) values (1,'出差申请-王伟17-1000942','中','2016-05-04','2016-05-05','2016-05-06','苏州','给新客户安装设备和指导技术','火车',NULL,NULL,1,5),(2,'出差申请-慧慧-1000540','中','2016-04-12','2016-04-19','2016-04-20','广州天河万科','考察渠道代理资质','飞机',' 	代理资质合格，可授权。','目标达成',2,6),(3,'出差申请-阿哥-1000525','中','2016-04-12','2016-04-18','2016-04-19','北京','北京天华科技公司、北京恒业演示及业务洽谈','火车','业务时间紧张，目标基本达成','目标基本达成 ',3,7),(4,'出差申请-张三风-1000548','中','2016-04-12','2016-04-15','2016-04-16','石家庄',' 参加互联网技术高峰论坛','飞机',' 	认真学习了论坛讨论内容，明确了企业发展方向。','目标达成 ',4,8),(5,'出差申请-微微-1000543','中','2016-04-12','2015-04-15','2016-04-16','南京',' 开辟新的销售渠道','飞机',' 	已开发两条新销售渠道并达成初步协议，后续会签订合同。','目标基本达成 ',5,9),(6,'出差申请-微微-1000543','中','2016-04-12','2015-04-15','2016-04-16','南京','111111','飞机','1111111','目标基本达成 ',2,5);

/*Table structure for table `useronline` */

DROP TABLE IF EXISTS `useronline`;

CREATE TABLE `useronline` (
  `id` int(11) NOT NULL auto_increment,
  `ip` varchar(50) NOT NULL,
  `starttime` datetime NOT NULL,
  `emp_id` int(11) NOT NULL,
  `sessionId` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `useronline` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
