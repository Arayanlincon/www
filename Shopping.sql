/*
SQLyog  v12.2.6 (64 bit)
MySQL - 5.5.59 : Database - wzq_ssm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wzq_ssm` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wzq_ssm`;

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `b_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL COMMENT '书本作者',
  `book_image` varchar(255) DEFAULT NULL COMMENT '书本封面',
  `book_name` varchar(255) DEFAULT NULL COMMENT '书本名字',
  `price` int(11) DEFAULT NULL COMMENT '书本价格',
  `total_page` int(11) DEFAULT NULL COMMENT '总页数',
  `pubilshing` varchar(255) DEFAULT NULL COMMENT '出版社',
  `stock` bigint(20) DEFAULT '100' COMMENT '书本库存',
  `sale` bigint(20) DEFAULT '0' COMMENT '书本销量',
  `uptime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8;

/*Data for the table `book` */

insert  into `book`(`b_id`,`author`,`book_image`,`book_name`,`price`,`total_page`,`pubilshing`,`stock`,`sale`,`uptime`) values 
(1,'作者0号','img/1.jpg','d497b0书',10,101,'中华出版社',30,1031,'2018-06-21 12:23:32'),
(3,'作者2号','img/3.jpg','df6562书',12,102,'中华出版社',98,2,'2018-06-21 11:01:48'),
(4,'作者3号','img/4.jpg','fbb353书',13,103,'中华出版社',9,91,'2018-06-21 11:01:48'),
(5,'作者4号','img/5.jpg','09d524书',14,104,'中华出版社',100,0,'2018-06-21 01:10:14'),
(6,'作者5号','img/6.jpg','261b35书',15,105,'中华出版社',97,3,'2018-06-21 11:01:50'),
(7,'作者6号','img/1.jpg','60b4a6书',16,106,'中华出版社',78,22,'2018-06-21 02:26:51'),
(8,'作者7号','img/2.jpg','55d617书',17,107,'中华出版社',63,37,'2018-06-21 11:01:49'),
(9,'作者8号','img/3.jpg','188d18书',18,108,'中华出版社',79,21,'2018-06-21 02:26:51'),
(10,'作者9号','img/4.jpg','936279书',19,109,'中华出版社',100,0,'2018-06-21 01:10:14'),
(11,'作者10号','img/5.jpg','f712310书',20,110,'中华出版社',100,0,'2018-06-21 01:10:14'),
(12,'作者11号','img/6.jpg','938d811书',21,111,'中华出版社',99,1,'2018-08-17 17:30:00'),
(13,'作者12号','img/1.jpg','90c4612书',22,112,'中华出版社',100,0,'2018-06-21 01:10:14'),
(14,'作者13号','img/2.jpg','1f95f13书',23,113,'中华出版社',100,0,'2018-06-21 01:10:14'),
(15,'作者14号','img/3.jpg','01a7814书',24,114,'中华出版社',100,0,'2018-06-21 01:10:14'),
(16,'作者15号','img/4.jpg','0eb9715书',25,115,'中华出版社',100,0,'2018-06-21 01:10:14'),
(17,'作者16号','img/5.jpg','7577b16书',26,116,'中华出版社',100,0,'2018-06-21 01:10:14'),
(18,'作者17号','img/6.jpg','243ae17书',27,117,'中华出版社',100,0,'2018-06-21 01:10:15'),
(19,'作者18号','img/1.jpg','7b36a18书',28,118,'中华出版社',100,0,'2018-06-21 01:10:15'),
(20,'作者19号','img/2.jpg','8effc19书',29,119,'中华出版社',100,0,'2018-06-21 01:10:15'),
(21,'作者20号','img/3.jpg','d3cd920书',30,120,'中华出版社',100,0,'2018-06-21 01:10:15'),
(22,'作者21号','img/4.jpg','11fd121书',31,121,'中华出版社',100,0,'2018-06-21 01:10:15'),
(23,'作者22号','img/5.jpg','5063622书',32,122,'中华出版社',100,0,'2018-06-21 01:10:15'),
(24,'作者23号','img/6.jpg','4515823书',33,123,'中华出版社',100,0,'2018-06-21 01:10:15'),
(25,'作者24号','img/1.jpg','a296924书',34,124,'中华出版社',100,0,'2018-06-21 01:10:15'),
(26,'作者25号','img/2.jpg','e0a7e25书',35,125,'中华出版社',100,0,'2018-06-21 01:10:15'),
(27,'作者26号','img/3.jpg','8a22426书',36,126,'中华出版社',100,0,'2018-06-21 01:10:15'),
(28,'作者27号','img/4.jpg','2c0b127书',37,127,'中华出版社',100,0,'2018-06-21 01:10:15'),
(29,'作者28号','img/5.jpg','d5cab28书',38,128,'中华出版社',100,0,'2018-06-21 01:10:15'),
(30,'作者29号','img/6.jpg','6936129书',39,129,'中华出版社',100,0,'2018-06-21 01:10:15'),
(31,'作者30号','img/1.jpg','610b430书',40,130,'中华出版社',100,0,'2018-06-21 01:10:15'),
(32,'作者31号','img/2.jpg','be5cd31书',41,131,'中华出版社',99,1,'2018-06-21 13:44:38'),
(33,'作者32号','img/3.jpg','8692e32书',42,132,'中华出版社',100,0,'2018-06-21 01:10:15'),
(34,'作者33号','img/4.jpg','2f8e833书',43,133,'中华出版社',100,0,'2018-06-21 01:10:15'),
(35,'作者34号','img/5.jpg','3e88134书',44,134,'中华出版社',100,0,'2018-06-21 01:10:15'),
(36,'作者35号','img/6.jpg','514e435书',45,135,'中华出版社',100,0,'2018-06-21 01:10:15'),
(37,'作者36号','img/1.jpg','5015e36书',46,136,'中华出版社',100,0,'2018-06-21 01:10:15'),
(38,'作者37号','img/2.jpg','0cca737书',47,137,'中华出版社',100,0,'2018-06-21 01:10:15'),
(39,'作者38号','img/3.jpg','8a25238书',48,138,'中华出版社',100,0,'2018-06-21 01:10:15'),
(40,'作者39号','img/4.jpg','687c639书',49,139,'中华出版社',100,0,'2018-06-21 01:10:15'),
(41,'作者40号','img/5.jpg','43bff40书',0,140,'中华出版社',100,0,'2018-06-21 01:10:15'),
(42,'作者41号','img/6.jpg','645cf41书',1,141,'中华出版社',100,0,'2018-06-21 01:10:15'),
(43,'作者42号','img/1.jpg','8acb842书',2,142,'中华出版社',100,0,'2018-06-21 01:10:15'),
(44,'作者43号','img/2.jpg','ae35143书',3,143,'中华出版社',100,0,'2018-06-21 01:10:15'),
(45,'作者44号','img/3.jpg','c310644书',4,144,'中华出版社',100,0,'2018-06-21 01:10:15'),
(46,'作者45号','img/4.jpg','487f245书',5,145,'中华出版社',100,0,'2018-06-21 01:10:15'),
(47,'作者46号','img/5.jpg','0fdb046书',6,146,'中华出版社',100,0,'2018-06-21 01:10:15'),
(48,'作者47号','img/6.jpg','4c18a47书',7,147,'中华出版社',100,0,'2018-06-21 01:10:15'),
(49,'作者48号','img/1.jpg','81efc48书',8,148,'中华出版社',100,0,'2018-06-21 01:10:15'),
(50,'作者49号','img/2.jpg','6fed449书',9,149,'中华出版社',100,0,'2018-06-21 01:10:15'),
(51,'作者50号','img/3.jpg','53f7050书',10,150,'中华出版社',100,0,'2018-06-21 01:10:15'),
(52,'作者51号','img/4.jpg','7afb251书',11,151,'中华出版社',100,0,'2018-06-21 01:10:15'),
(53,'作者52号','img/5.jpg','6ce2352书',12,152,'中华出版社',100,0,'2018-06-21 01:10:15'),
(54,'作者53号','img/6.jpg','df9c853书',13,153,'中华出版社',100,0,'2018-06-21 01:10:15'),
(55,'作者54号','img/1.jpg','fa25c54书',14,154,'中华出版社',100,0,'2018-06-21 01:10:15'),
(56,'作者55号','img/2.jpg','0436055书',15,155,'中华出版社',100,0,'2018-06-21 01:10:15'),
(57,'作者56号','img/3.jpg','0ac0e56书',16,156,'中华出版社',100,0,'2018-06-21 01:10:15'),
(58,'作者57号','img/4.jpg','f9bd557书',17,157,'中华出版社',100,0,'2018-06-21 01:10:15'),
(59,'作者58号','img/5.jpg','e1f0758书',18,158,'中华出版社',100,0,'2018-06-21 01:10:15'),
(60,'作者59号','img/6.jpg','e426f59书',19,159,'中华出版社',100,0,'2018-06-21 01:10:15'),
(61,'作者60号','img/1.jpg','86e2660书',20,160,'中华出版社',100,0,'2018-06-21 01:10:15'),
(62,'作者61号','img/2.jpg','da59061书',21,161,'中华出版社',100,0,'2018-06-21 01:10:15'),
(63,'作者62号','img/3.jpg','eb5d162书',22,162,'中华出版社',100,0,'2018-06-21 01:10:15'),
(64,'作者63号','img/4.jpg','e3e5b63书',23,163,'中华出版社',100,0,'2018-06-21 01:10:15'),
(65,'作者64号','img/5.jpg','5b01964书',24,164,'中华出版社',100,0,'2018-06-21 01:10:15'),
(66,'作者65号','img/6.jpg','caf6365书',25,165,'中华出版社',100,0,'2018-06-21 01:10:15'),
(67,'作者66号','img/1.jpg','bcf5c66书',26,166,'中华出版社',100,0,'2018-06-21 01:10:15'),
(68,'作者67号','img/2.jpg','1411267书',27,167,'中华出版社',100,0,'2018-06-21 01:10:15'),
(69,'作者68号','img/3.jpg','2f20968书',28,168,'中华出版社',100,0,'2018-06-21 01:10:15'),
(70,'作者69号','img/4.jpg','ff52169书',29,169,'中华出版社',100,0,'2018-06-21 01:10:15'),
(71,'作者70号','img/5.jpg','15c9170书',30,170,'中华出版社',100,0,'2018-06-21 01:10:15'),
(72,'作者71号','img/6.jpg','d313171书',31,171,'中华出版社',100,0,'2018-06-21 01:10:15'),
(73,'作者72号','img/1.jpg','8cd8772书',32,172,'中华出版社',100,0,'2018-06-21 01:10:15'),
(74,'作者73号','img/2.jpg','7baca73书',33,173,'中华出版社',100,0,'2018-06-21 01:10:15'),
(75,'作者74号','img/3.jpg','46ed174书',34,174,'中华出版社',100,0,'2018-06-21 01:10:15'),
(76,'作者75号','img/4.jpg','f8ee275书',35,175,'中华出版社',100,0,'2018-06-21 01:10:15'),
(77,'作者76号','img/5.jpg','8beb976书',36,176,'中华出版社',100,0,'2018-06-21 01:10:15'),
(78,'作者77号','img/6.jpg','f406d77书',37,177,'中华出版社',100,0,'2018-06-21 01:10:15'),
(79,'作者78号','img/1.jpg','2a4b078书',38,178,'中华出版社',100,0,'2018-06-21 01:10:15'),
(80,'作者79号','img/2.jpg','2528179书',39,179,'中华出版社',100,0,'2018-06-21 01:10:15'),
(81,'作者80号','img/3.jpg','d9c0b80书',40,180,'中华出版社',100,0,'2018-06-21 01:10:15'),
(82,'作者81号','img/4.jpg','1c5d281书',41,181,'中华出版社',100,0,'2018-06-21 01:10:15'),
(83,'作者82号','img/5.jpg','875fd82书',42,182,'中华出版社',100,0,'2018-06-21 01:10:15'),
(84,'作者83号','img/6.jpg','1627c83书',43,183,'中华出版社',100,0,'2018-06-21 01:10:15'),
(85,'作者84号','img/1.jpg','0f66884书',44,184,'中华出版社',100,0,'2018-06-21 01:10:15'),
(86,'作者85号','img/2.jpg','d16a085书',45,185,'中华出版社',100,0,'2018-06-21 01:10:15'),
(87,'作者86号','img/3.jpg','8c14686书',46,186,'中华出版社',100,0,'2018-06-21 01:10:15'),
(88,'作者87号','img/4.jpg','ed11187书',47,187,'中华出版社',100,0,'2018-06-21 01:10:15'),
(89,'作者88号','img/5.jpg','5b80a88书',48,188,'中华出版社',100,0,'2018-06-21 01:10:15'),
(90,'作者89号','img/6.jpg','7578c89书',49,189,'中华出版社',100,0,'2018-06-21 01:10:15'),
(91,'作者90号','img/1.jpg','31e6290书',0,190,'中华出版社',100,0,'2018-06-21 01:10:15'),
(92,'作者91号','img/2.jpg','d54f391书',1,191,'中华出版社',100,0,'2018-06-21 01:10:15'),
(93,'作者92号','img/3.jpg','4b4dd92书',2,192,'中华出版社',100,0,'2018-06-21 01:10:15'),
(94,'作者93号','img/4.jpg','8b8f093书',3,193,'中华出版社',100,0,'2018-06-21 01:10:15'),
(95,'作者94号','img/5.jpg','1c47294书',4,194,'中华出版社',100,0,'2018-06-21 01:10:15'),
(96,'作者95号','img/6.jpg','7b91395书',5,195,'中华出版社',100,0,'2018-06-21 01:10:15'),
(97,'作者96号','img/1.jpg','e9abc96书',6,196,'中华出版社',100,0,'2018-06-21 01:10:15'),
(98,'作者97号','img/2.jpg','96c9997书',7,197,'中华出版社',100,0,'2018-06-21 01:10:15'),
(99,'作者98号','img/3.jpg','e012798书',8,198,'中华出版社',100,0,'2018-06-21 01:10:15'),
(100,'作者99号','img/4.jpg','4aae299书',9,199,'中华出版社',100,0,'2018-06-21 01:10:15'),
(101,'作者100号','img/5.jpg','d3c40100书',10,200,'中华出版社',100,0,'2018-06-21 01:10:15'),
(102,'作者101号','img/6.jpg','5f71c101书',11,201,'中华出版社',100,0,'2018-06-21 01:10:15'),
(103,'作者102号','img/1.jpg','914eb102书',12,202,'中华出版社',100,0,'2018-06-21 01:10:15'),
(104,'作者103号','img/2.jpg','2c2b3103书',13,203,'中华出版社',100,0,'2018-06-21 01:10:15'),
(105,'作者104号','img/3.jpg','a128c104书',14,204,'中华出版社',100,0,'2018-06-21 01:10:15'),
(106,'作者105号','img/4.jpg','27cee105书',15,205,'中华出版社',100,0,'2018-06-21 01:10:15'),
(107,'作者106号','img/5.jpg','4b3e8106书',16,206,'中华出版社',100,0,'2018-06-21 01:10:15'),
(108,'作者107号','img/6.jpg','5d392107书',17,207,'中华出版社',100,0,'2018-06-21 01:10:15'),
(109,'作者108号','img/1.jpg','8657b108书',18,208,'中华出版社',100,0,'2018-06-21 01:10:15'),
(110,'作者109号','img/2.jpg','7532e109书',19,209,'中华出版社',100,0,'2018-06-21 01:10:15'),
(111,'作者110号','img/3.jpg','1b524110书',20,210,'中华出版社',100,0,'2018-06-21 01:10:15'),
(112,'作者111号','img/4.jpg','04516111书',21,211,'中华出版社',100,0,'2018-06-21 01:10:15'),
(113,'作者112号','img/5.jpg','07b1f112书',22,212,'中华出版社',100,0,'2018-06-21 01:10:15'),
(114,'作者113号','img/6.jpg','f0bbb113书',23,213,'中华出版社',100,0,'2018-06-21 01:10:15'),
(115,'作者114号','img/1.jpg','67e19114书',24,214,'中华出版社',100,0,'2018-06-21 01:10:15'),
(116,'作者115号','img/2.jpg','8e7d2115书',25,215,'中华出版社',100,0,'2018-06-21 01:10:15'),
(117,'作者116号','img/3.jpg','4bc7d116书',26,216,'中华出版社',100,0,'2018-06-21 01:10:15'),
(118,'作者117号','img/4.jpg','8552d117书',27,217,'中华出版社',100,0,'2018-06-21 01:10:15'),
(119,'作者118号','img/5.jpg','4e761118书',28,218,'中华出版社',100,0,'2018-06-21 01:10:15'),
(120,'作者119号','img/6.jpg','c4ba0119书',29,219,'中华出版社',100,0,'2018-06-21 01:10:15'),
(121,'作者120号','img/1.jpg','f8f73120书',30,220,'中华出版社',100,0,'2018-06-21 01:10:15'),
(122,'作者121号','img/2.jpg','e7748121书',31,221,'中华出版社',100,0,'2018-06-21 01:10:15'),
(123,'作者122号','img/3.jpg','c0428122书',32,222,'中华出版社',100,0,'2018-06-21 01:10:15'),
(124,'作者123号','img/4.jpg','b2858123书',33,223,'中华出版社',100,0,'2018-06-21 01:10:15'),
(125,'作者124号','img/5.jpg','135e6124书',34,224,'中华出版社',100,0,'2018-06-21 01:10:15'),
(126,'作者125号','img/6.jpg','a7599125书',35,225,'中华出版社',100,0,'2018-06-21 01:10:15'),
(127,'作者126号','img/1.jpg','13d49126书',36,226,'中华出版社',100,0,'2018-06-21 01:10:15'),
(128,'作者127号','img/2.jpg','99c2c127书',37,227,'中华出版社',100,0,'2018-06-21 01:10:15'),
(129,'作者128号','img/3.jpg','c250d128书',38,228,'中华出版社',100,0,'2018-06-21 01:10:15'),
(130,'作者129号','img/4.jpg','e7917129书',39,229,'中华出版社',100,0,'2018-06-21 01:10:15'),
(131,'作者130号','img/5.jpg','e350f130书',40,230,'中华出版社',100,0,'2018-06-21 01:10:15'),
(132,'作者131号','img/6.jpg','65dfc131书',41,231,'中华出版社',100,0,'2018-06-21 01:10:15'),
(133,'作者132号','img/1.jpg','17036132书',42,232,'中华出版社',100,0,'2018-06-21 01:10:15'),
(134,'作者133号','img/2.jpg','b8973133书',43,233,'中华出版社',100,0,'2018-06-21 01:10:15'),
(135,'作者134号','img/3.jpg','dd799134书',44,234,'中华出版社',100,0,'2018-06-21 01:10:15'),
(136,'作者135号','img/4.jpg','88036135书',45,235,'中华出版社',100,0,'2018-06-21 01:10:15'),
(137,'作者136号','img/5.jpg','1ee06136书',46,236,'中华出版社',100,0,'2018-06-21 01:10:15'),
(138,'作者137号','img/6.jpg','633ab137书',47,237,'中华出版社',100,0,'2018-06-21 01:10:15'),
(139,'作者138号','img/1.jpg','6e94a138书',48,238,'中华出版社',100,0,'2018-06-21 01:10:15'),
(140,'作者139号','img/2.jpg','d843f139书',49,239,'中华出版社',100,0,'2018-06-21 01:10:15'),
(141,'作者140号','img/3.jpg','bd93d140书',0,240,'中华出版社',100,0,'2018-06-21 01:10:15'),
(142,'作者141号','img/4.jpg','b25ee141书',1,241,'中华出版社',100,0,'2018-06-21 01:10:15'),
(143,'作者142号','img/5.jpg','0e02e142书',2,242,'中华出版社',100,0,'2018-06-21 01:10:16'),
(144,'作者143号','img/6.jpg','11215143书',3,243,'中华出版社',100,0,'2018-06-21 01:10:16'),
(145,'作者144号','img/1.jpg','84205144书',4,244,'中华出版社',100,0,'2018-06-21 01:10:16'),
(146,'作者145号','img/2.jpg','e4fef145书',5,245,'中华出版社',100,0,'2018-06-21 01:10:16'),
(147,'作者146号','img/3.jpg','777e8146书',6,246,'中华出版社',100,0,'2018-06-21 01:10:16'),
(148,'作者147号','img/4.jpg','dadfd147书',7,247,'中华出版社',100,0,'2018-06-21 01:10:16'),
(149,'作者148号','img/5.jpg','564c0148书',8,248,'中华出版社',100,0,'2018-06-21 01:10:16'),
(150,'作者149号','img/6.jpg','05dcf149书',9,249,'中华出版社',100,0,'2018-06-21 01:10:16'),
(151,'作者150号','img/1.jpg','62deb150书',10,250,'中华出版社',100,0,'2018-06-21 01:10:16'),
(152,'作者151号','img/2.jpg','54300151书',11,251,'中华出版社',100,0,'2018-06-21 01:10:16'),
(153,'作者152号','img/3.jpg','e6617152书',12,252,'中华出版社',100,0,'2018-06-21 01:10:16'),
(154,'作者153号','img/4.jpg','79aff153书',13,253,'中华出版社',100,0,'2018-06-21 01:10:16'),
(155,'作者154号','img/5.jpg','425db154书',14,254,'中华出版社',100,0,'2018-06-21 01:10:16'),
(156,'作者155号','img/6.jpg','46202155书',15,255,'中华出版社',100,0,'2018-06-21 01:10:16'),
(157,'作者156号','img/1.jpg','c2fdc156书',16,256,'中华出版社',100,0,'2018-06-21 01:10:16'),
(158,'作者157号','img/2.jpg','248bb157书',17,257,'中华出版社',100,0,'2018-06-21 01:10:16'),
(159,'作者158号','img/3.jpg','40346158书',18,258,'中华出版社',100,0,'2018-06-21 01:10:16'),
(160,'作者159号','img/4.jpg','7c23b159书',19,259,'中华出版社',100,0,'2018-06-21 01:10:16'),
(161,'作者160号','img/5.jpg','7848a160书',20,260,'中华出版社',100,0,'2018-06-21 01:10:16'),
(162,'作者161号','img/6.jpg','1cec6161书',21,261,'中华出版社',100,0,'2018-06-21 01:10:16'),
(163,'作者162号','img/1.jpg','0705e162书',22,262,'中华出版社',100,0,'2018-06-21 01:10:16'),
(164,'作者163号','img/2.jpg','70a07163书',23,263,'中华出版社',100,0,'2018-06-21 01:10:16'),
(165,'作者164号','img/3.jpg','66c7d164书',24,264,'中华出版社',100,0,'2018-06-21 01:10:16'),
(166,'作者165号','img/4.jpg','1e75b165书',25,265,'中华出版社',100,0,'2018-06-21 01:10:16'),
(167,'作者166号','img/5.jpg','90ff9166书',26,266,'中华出版社',100,0,'2018-06-21 01:10:16'),
(168,'作者167号','img/6.jpg','c8261167书',27,267,'中华出版社',100,0,'2018-06-21 01:10:16'),
(169,'作者168号','img/1.jpg','e97a4168书',28,268,'中华出版社',100,0,'2018-06-21 01:10:16'),
(170,'作者169号','img/2.jpg','22e9a169书',29,269,'中华出版社',100,0,'2018-06-21 01:10:16'),
(171,'作者170号','img/3.jpg','2a95f170书',30,270,'中华出版社',100,0,'2018-06-21 01:10:16'),
(172,'作者171号','img/4.jpg','53df2171书',31,271,'中华出版社',100,0,'2018-06-21 01:10:16'),
(173,'作者172号','img/5.jpg','2705a172书',32,272,'中华出版社',100,0,'2018-06-21 01:10:16'),
(174,'作者173号','img/6.jpg','e4906173书',33,273,'中华出版社',100,0,'2018-06-21 01:10:16'),
(175,'作者174号','img/1.jpg','d18b9174书',34,274,'中华出版社',100,0,'2018-06-21 01:10:16'),
(176,'作者175号','img/2.jpg','d521d175书',35,275,'中华出版社',100,0,'2018-06-21 01:10:16'),
(177,'作者176号','img/3.jpg','085b7176书',36,276,'中华出版社',100,0,'2018-06-21 01:10:16'),
(178,'作者177号','img/4.jpg','842b6177书',37,277,'中华出版社',100,0,'2018-06-21 01:10:16'),
(179,'作者178号','img/5.jpg','6e898178书',38,278,'中华出版社',100,0,'2018-06-21 01:10:16'),
(180,'作者179号','img/6.jpg','3c0cd179书',39,279,'中华出版社',100,0,'2018-06-21 01:10:16'),
(181,'123','img/1.jpg','123',123,123,'213',45,0,'2018-06-21 09:59:08');

/*Table structure for table `book_category` */

DROP TABLE IF EXISTS `book_category`;

CREATE TABLE `book_category` (
  `bc_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `b_id` bigint(20) NOT NULL COMMENT '对应书本主键',
  `c_id` bigint(20) NOT NULL COMMENT '对应类别主键',
  `uptime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最近一次更新时间',
  PRIMARY KEY (`bc_id`),
  KEY `b_id` (`b_id`),
  KEY `c_id` (`c_id`),
  CONSTRAINT `book_category_ibfk_1` FOREIGN KEY (`b_id`) REFERENCES `book` (`b_id`),
  CONSTRAINT `book_category_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `category` (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8;

/*Data for the table `book_category` */

insert  into `book_category`(`bc_id`,`b_id`,`c_id`,`uptime`) values 
(1,1,1,'2018-06-21 01:10:14'),
(3,3,3,'2018-06-21 01:10:14'),
(4,4,4,'2018-06-21 01:10:14'),
(5,5,5,'2018-06-21 01:10:14'),
(6,6,6,'2018-06-21 01:10:14'),
(7,7,7,'2018-06-21 01:10:14'),
(8,8,8,'2018-06-21 01:10:14'),
(9,9,9,'2018-06-21 01:10:14'),
(10,10,10,'2018-06-21 01:10:14'),
(11,11,1,'2018-06-21 01:10:14'),
(12,12,2,'2018-06-21 01:10:14'),
(13,13,3,'2018-06-21 01:10:14'),
(14,14,4,'2018-06-21 01:10:14'),
(15,15,5,'2018-06-21 01:10:14'),
(16,16,6,'2018-06-21 01:10:14'),
(17,17,7,'2018-06-21 01:10:15'),
(18,18,8,'2018-06-21 01:10:15'),
(19,19,9,'2018-06-21 01:10:15'),
(20,20,10,'2018-06-21 01:10:15'),
(21,21,1,'2018-06-21 01:10:15'),
(22,22,2,'2018-06-21 01:10:15'),
(23,23,3,'2018-06-21 01:10:15'),
(24,24,4,'2018-06-21 01:10:15'),
(25,25,5,'2018-06-21 01:10:15'),
(26,26,6,'2018-06-21 01:10:15'),
(27,27,7,'2018-06-21 01:10:15'),
(28,28,8,'2018-06-21 01:10:15'),
(29,29,9,'2018-06-21 01:10:15'),
(30,30,10,'2018-06-21 01:10:15'),
(31,31,1,'2018-06-21 01:10:15'),
(32,32,2,'2018-06-21 01:10:15'),
(33,33,3,'2018-06-21 01:10:15'),
(34,34,4,'2018-06-21 01:10:15'),
(35,35,5,'2018-06-21 01:10:15'),
(36,36,6,'2018-06-21 01:10:15'),
(37,37,7,'2018-06-21 01:10:15'),
(38,38,8,'2018-06-21 01:10:15'),
(39,39,9,'2018-06-21 01:10:15'),
(40,40,10,'2018-06-21 01:10:15'),
(41,41,1,'2018-06-21 01:10:15'),
(42,42,2,'2018-06-21 01:10:15'),
(43,43,3,'2018-06-21 01:10:15'),
(44,44,4,'2018-06-21 01:10:15'),
(45,45,5,'2018-06-21 01:10:15'),
(46,46,6,'2018-06-21 01:10:15'),
(47,47,7,'2018-06-21 01:10:15'),
(48,48,8,'2018-06-21 01:10:15'),
(49,49,9,'2018-06-21 01:10:15'),
(50,50,10,'2018-06-21 01:10:15'),
(51,51,1,'2018-06-21 01:10:15'),
(52,52,2,'2018-06-21 01:10:15'),
(53,53,3,'2018-06-21 01:10:15'),
(54,54,4,'2018-06-21 01:10:15'),
(55,55,5,'2018-06-21 01:10:15'),
(56,56,6,'2018-06-21 01:10:15'),
(57,57,7,'2018-06-21 01:10:15'),
(58,58,8,'2018-06-21 01:10:15'),
(59,59,9,'2018-06-21 01:10:15'),
(60,60,10,'2018-06-21 01:10:15'),
(61,61,1,'2018-06-21 01:10:15'),
(62,62,2,'2018-06-21 01:10:15'),
(63,63,3,'2018-06-21 01:10:15'),
(64,64,4,'2018-06-21 01:10:15'),
(65,65,5,'2018-06-21 01:10:15'),
(66,66,6,'2018-06-21 01:10:15'),
(67,67,7,'2018-06-21 01:10:15'),
(68,68,8,'2018-06-21 01:10:15'),
(69,69,9,'2018-06-21 01:10:15'),
(70,70,10,'2018-06-21 01:10:15'),
(71,71,1,'2018-06-21 01:10:15'),
(72,72,2,'2018-06-21 01:10:15'),
(73,73,3,'2018-06-21 01:10:15'),
(74,74,4,'2018-06-21 01:10:15'),
(75,75,5,'2018-06-21 01:10:15'),
(76,76,6,'2018-06-21 01:10:15'),
(77,77,7,'2018-06-21 01:10:15'),
(78,78,8,'2018-06-21 01:10:15'),
(79,79,9,'2018-06-21 01:10:15'),
(80,80,10,'2018-06-21 01:10:15'),
(81,81,1,'2018-06-21 01:10:15'),
(82,82,2,'2018-06-21 01:10:15'),
(83,83,3,'2018-06-21 01:10:15'),
(84,84,4,'2018-06-21 01:10:15'),
(85,85,5,'2018-06-21 01:10:15'),
(86,86,6,'2018-06-21 01:10:15'),
(87,87,7,'2018-06-21 01:10:15'),
(88,88,8,'2018-06-21 01:10:15'),
(89,89,9,'2018-06-21 01:10:15'),
(90,90,10,'2018-06-21 01:10:15'),
(91,91,1,'2018-06-21 01:10:15'),
(92,92,2,'2018-06-21 01:10:15'),
(93,93,3,'2018-06-21 01:10:15'),
(94,94,4,'2018-06-21 01:10:15'),
(95,95,5,'2018-06-21 01:10:15'),
(96,96,6,'2018-06-21 01:10:15'),
(97,97,7,'2018-06-21 01:10:15'),
(98,98,8,'2018-06-21 01:10:15'),
(99,99,9,'2018-06-21 01:10:15'),
(100,100,10,'2018-06-21 01:10:15'),
(101,101,1,'2018-06-21 01:10:15'),
(102,102,2,'2018-06-21 01:10:15'),
(103,103,3,'2018-06-21 01:10:15'),
(104,104,4,'2018-06-21 01:10:15'),
(105,105,5,'2018-06-21 01:10:15'),
(106,106,6,'2018-06-21 01:10:15'),
(107,107,7,'2018-06-21 01:10:15'),
(108,108,8,'2018-06-21 01:10:15'),
(109,109,9,'2018-06-21 01:10:15'),
(110,110,10,'2018-06-21 01:10:15'),
(111,111,1,'2018-06-21 01:10:15'),
(112,112,2,'2018-06-21 01:10:15'),
(113,113,3,'2018-06-21 01:10:15'),
(114,114,4,'2018-06-21 01:10:15'),
(115,115,5,'2018-06-21 01:10:15'),
(116,116,6,'2018-06-21 01:10:15'),
(117,117,7,'2018-06-21 01:10:15'),
(118,118,8,'2018-06-21 01:10:15'),
(119,119,9,'2018-06-21 01:10:15'),
(120,120,10,'2018-06-21 01:10:15'),
(121,121,1,'2018-06-21 01:10:15'),
(122,122,2,'2018-06-21 01:10:15'),
(123,123,3,'2018-06-21 01:10:15'),
(124,124,4,'2018-06-21 01:10:15'),
(125,125,5,'2018-06-21 01:10:15'),
(126,126,6,'2018-06-21 01:10:15'),
(127,127,7,'2018-06-21 01:10:15'),
(128,128,8,'2018-06-21 01:10:15'),
(129,129,9,'2018-06-21 01:10:15'),
(130,130,10,'2018-06-21 01:10:15'),
(131,131,1,'2018-06-21 01:10:15'),
(132,132,2,'2018-06-21 01:10:15'),
(133,133,3,'2018-06-21 01:10:15'),
(134,134,4,'2018-06-21 01:10:15'),
(135,135,5,'2018-06-21 01:10:15'),
(136,136,6,'2018-06-21 01:10:15'),
(137,137,7,'2018-06-21 01:10:15'),
(138,138,8,'2018-06-21 01:10:15'),
(139,139,9,'2018-06-21 01:10:15'),
(140,140,10,'2018-06-21 01:10:15'),
(141,141,1,'2018-06-21 01:10:15'),
(142,142,2,'2018-06-21 01:10:16'),
(143,143,3,'2018-06-21 01:10:16'),
(144,144,4,'2018-06-21 01:10:16'),
(145,145,5,'2018-06-21 01:10:16'),
(146,146,6,'2018-06-21 01:10:16'),
(147,147,7,'2018-06-21 01:10:16'),
(148,148,8,'2018-06-21 01:10:16'),
(149,149,9,'2018-06-21 01:10:16'),
(150,150,10,'2018-06-21 01:10:16'),
(151,151,1,'2018-06-21 01:10:16'),
(152,152,2,'2018-06-21 01:10:16'),
(153,153,3,'2018-06-21 01:10:16'),
(154,154,4,'2018-06-21 01:10:16'),
(155,155,5,'2018-06-21 01:10:16'),
(156,156,6,'2018-06-21 01:10:16'),
(157,157,7,'2018-06-21 01:10:16'),
(158,158,8,'2018-06-21 01:10:16'),
(159,159,9,'2018-06-21 01:10:16'),
(160,160,10,'2018-06-21 01:10:16'),
(161,161,1,'2018-06-21 01:10:16'),
(162,162,2,'2018-06-21 01:10:16'),
(163,163,3,'2018-06-21 01:10:16'),
(164,164,4,'2018-06-21 01:10:16'),
(165,165,5,'2018-06-21 01:10:16'),
(166,166,6,'2018-06-21 01:10:16'),
(167,167,7,'2018-06-21 01:10:16'),
(168,168,8,'2018-06-21 01:10:16'),
(169,169,9,'2018-06-21 01:10:16'),
(170,170,10,'2018-06-21 01:10:16'),
(171,171,1,'2018-06-21 01:10:16'),
(172,172,2,'2018-06-21 01:10:16'),
(173,173,3,'2018-06-21 01:10:16'),
(174,174,4,'2018-06-21 01:10:16'),
(175,175,5,'2018-06-21 01:10:16'),
(176,176,6,'2018-06-21 01:10:16'),
(177,177,7,'2018-06-21 01:10:16'),
(178,178,8,'2018-06-21 01:10:16'),
(179,179,9,'2018-06-21 01:10:16'),
(180,180,10,'2018-06-21 01:10:16'),
(181,181,1,'2018-06-21 09:59:08');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `c_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '类型名字',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '"0"代表无父类型',
  `uptime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`c_id`,`name`,`parent_id`,`uptime`) values 
(1,'哲学',0,'2018-05-21 09:36:28'),
(2,'艺术',0,'2018-05-21 09:36:33'),
(3,'工科',0,'2018-05-21 09:36:48'),
(4,'理科',0,'2018-05-21 09:36:56'),
(5,'文科',0,'2018-05-21 22:19:32'),
(6,'政治',5,'2018-05-21 22:20:40'),
(7,'历史',5,'2018-05-21 22:20:41'),
(8,'计算机',4,'2018-05-21 22:20:43'),
(9,'自动化',3,'2018-05-21 22:20:52'),
(10,'物联网',3,'2018-05-21 22:21:00');

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `o_id` varchar(255) NOT NULL,
  `order_status` int(11) DEFAULT NULL COMMENT '订单情况:"0"未交费，“1"交费',
  `target_address` varchar(255) DEFAULT NULL COMMENT '订单目标地址',
  `telephone` varchar(255) DEFAULT NULL COMMENT '快递员电话',
  `price` int(11) DEFAULT NULL COMMENT '总价',
  `description` varchar(255) DEFAULT NULL COMMENT '订单描述',
  `u_id` bigint(20) DEFAULT NULL COMMENT '对应的用户',
  `username` varchar(255) DEFAULT NULL,
  `uptime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最近一次更新时间',
  PRIMARY KEY (`o_id`),
  KEY `u_id` (`u_id`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `order` */

insert  into `order`(`o_id`,`order_status`,`target_address`,`telephone`,`price`,`description`,`u_id`,`username`,`uptime`) values 
('15293772591922a641',1,'北京大学','15521055581',94,'测试用例',9,'8zou44','2018-06-19 11:00:59'),
('152951376194424c64',1,'123','231',59,'231',1,'superadmin','2018-06-21 00:56:01'),
('15295146896883811e',1,'123123','321312',266,'3132213',2,'admin1','2018-06-21 01:11:29'),
('152951847022199815',1,'123','312',10,'321',12,'14zou77','2018-06-21 02:14:30'),
('152951848734335e70',1,'234','234',22,'342',1,'superadmin','2018-06-21 02:14:47'),
('15295184977371d6f7',1,'213','321',12,'321',1,'superadmin','2018-06-21 02:14:57'),
('1529518521031897fe',1,'321','321',387,'321',1,'superadmin','2018-06-21 02:15:21'),
('1529518711819d18b2',1,'123','213',518,'312',1,'superadmin','2018-06-21 02:18:31'),
('1529518902946c5051',1,'312','321',1118,'231',1,'superadmin','2018-06-21 02:21:42'),
('15295192114899a02a',1,'312312','3312',1357,'312312',1,'superadmin','2018-06-21 02:26:51'),
('1529549006389d6bd8',1,'123','12312312312',151,'213',1,'superadmin','2018-06-21 10:43:26'),
('1529550104924c3dbe',1,'广东省深圳市','12312312312',256,'123',1,'superadmin','2018-06-21 11:01:44'),
('15295501570288afe8',1,'广东省深圳市','15521058271',1001,'123',1,'superadmin','2018-06-21 11:02:37'),
('1529554494871fe9a3',1,'广东工业大学','12312312312',1022,'123',1,'superadmin','2018-06-21 12:14:54'),
('1529554866662130a0',1,'北京大学','12312312312',1793,'123',3,'admin2','2018-06-21 12:21:06'),
('1529555012675c056e',1,'广东工业大学','12312312312',12022,'123',3,'admin2','2018-06-21 12:23:32'),
('1529559878956eb971',1,'广东省深圳市','15521058271',151,'21',9,'8zou44','2018-06-21 13:44:38'),
('15344982005308a108',1,'111','12312312312',21,'1111',8,'6zou33','2018-08-17 17:30:00');

/*Table structure for table `order_detail` */

DROP TABLE IF EXISTS `order_detail`;

CREATE TABLE `order_detail` (
  `od_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `book_num` int(11) DEFAULT NULL COMMENT '书本数量',
  `bookname` varchar(255) DEFAULT NULL COMMENT '书本名字',
  `book_price` int(11) DEFAULT NULL COMMENT '书本单价',
  `o_id` varchar(255) NOT NULL COMMENT '订购者',
  `uptime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最近一次更新时间',
  PRIMARY KEY (`od_id`),
  KEY `o_id` (`o_id`),
  CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`o_id`) REFERENCES `order` (`o_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

/*Data for the table `order_detail` */

insert  into `order_detail`(`od_id`,`book_num`,`bookname`,`book_price`,`o_id`,`uptime`) values 
(1,4,'567890书',10,'15293772591922a641','2018-06-19 11:00:59'),
(2,1,'bda6d2书',12,'15293772591922a641','2018-06-19 11:00:59'),
(3,1,'16b923书',13,'15293772591922a641','2018-06-19 11:00:59'),
(4,1,'80ac94书',14,'15293772591922a641','2018-06-19 11:00:59'),
(5,1,'751c95书',15,'15293772591922a641','2018-06-19 11:00:59'),
(8,3,'567890书',10,'152951376194424c64','2018-06-21 00:56:01'),
(9,1,'80ac94书',14,'152951376194424c64','2018-06-21 00:56:01'),
(10,1,'751c95书',15,'152951376194424c64','2018-06-21 00:56:01'),
(11,22,'d497b0书',10,'15295146896883811e','2018-06-21 01:11:29'),
(12,1,'df6562书',12,'15295146896883811e','2018-06-21 01:11:29'),
(13,1,'261b35书',15,'15295146896883811e','2018-06-21 01:11:29'),
(14,1,'936279书',19,'15295146896883811e','2018-06-21 01:11:29'),
(15,1,'d497b0书',10,'152951847022199815','2018-06-21 02:14:30'),
(16,1,'d497b0书',10,'152951848734335e70','2018-06-21 02:14:47'),
(17,1,'df6562书',12,'152951848734335e70','2018-06-21 02:14:47'),
(18,1,'df6562书',12,'15295184977371d6f7','2018-06-21 02:14:57'),
(19,1,'fbb353书',13,'1529518521031897fe','2018-06-21 02:15:21'),
(20,1,'09d524书',14,'1529518521031897fe','2018-06-21 02:15:21'),
(21,24,'261b35书',15,'1529518521031897fe','2018-06-21 02:15:21'),
(22,1,'d497b0书',10,'1529518711819d18b2','2018-06-21 02:18:31'),
(23,1,'fbb353书',13,'1529518711819d18b2','2018-06-21 02:19:31'),
(24,33,'261b35书',15,'1529518711819d18b2','2018-06-21 02:19:51'),
(25,1,'fbb353书',13,'1529518902946c5051','2018-06-21 02:21:42'),
(26,36,'55d617书',17,'1529518902946c5051','2018-06-21 02:21:42'),
(27,25,'936279书',19,'1529518902946c5051','2018-06-21 02:21:42'),
(28,1,'188d18书',18,'1529518902946c5051','2018-06-21 02:21:42'),
(29,1,'261b35书',15,'15295192114899a02a','2018-06-21 02:26:51'),
(30,22,'60b4a6书',16,'15295192114899a02a','2018-06-21 02:26:51'),
(31,36,'55d617书',17,'15295192114899a02a','2018-06-21 02:26:51'),
(32,21,'188d18书',18,'15295192114899a02a','2018-06-21 02:26:51'),
(33,3,'d497b0书',10,'1529549006389d6bd8','2018-06-21 10:43:26'),
(34,11,'be3221书',11,'1529549006389d6bd8','2018-06-21 10:43:26'),
(35,5,'d497b0书',10,'1529550104924c3dbe','2018-06-21 11:01:46'),
(36,11,'be3221书',11,'1529550104924c3dbe','2018-06-21 11:01:48'),
(37,1,'df6562书',12,'1529550104924c3dbe','2018-06-21 11:01:48'),
(38,2,'fbb353书',13,'1529550104924c3dbe','2018-06-21 11:01:48'),
(39,1,'55d617书',17,'1529550104924c3dbe','2018-06-21 11:01:49'),
(40,2,'261b35书',15,'1529550104924c3dbe','2018-06-21 11:01:50'),
(41,1,'be3221书',11,'15295501570288afe8','2018-06-21 11:02:39'),
(42,22,'be3221书',11,'1529554494871fe9a3','2018-06-21 12:14:54'),
(43,1,'d497b0书',10,'1529555012675c056e','2018-06-21 12:23:32'),
(44,1,'be3221书',11,'1529555012675c056e','2018-06-21 12:23:32'),
(49,10,'be3221书',11,'1529559878956eb971','2018-06-21 13:44:38'),
(50,1,'be5cd31书',41,'1529559878956eb971','2018-06-21 13:44:38'),
(51,1,'938d811书',21,'15344982005308a108','2018-08-17 17:30:00');

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `r_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '权限名称',
  `role_desc` varchar(255) NOT NULL COMMENT '权限描述',
  `uptime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最近一次被更新时间',
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`r_id`,`name`,`role_desc`,`uptime`) values 
(1,'superadmin','拥有所有权限','2018-05-18 15:48:03'),
(2,'admin','拥有除处理超级管理员外及修改用户权限外所有部分权限','2018-05-18 15:48:07'),
(3,'user','拥有浏览网页，购买商品权限','2018-05-18 15:48:48');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `u_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL COMMENT '账号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `status` int(2) DEFAULT NULL COMMENT '状态:"1"表示正常,"2"表示禁用',
  `uptime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '用户创号时间',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`u_id`,`username`,`password`,`nickname`,`status`,`uptime`) values 
(1,'superadmin','123456','superadmin',1,'2018-06-17 09:53:55'),
(2,'admin1','123456','admin1',1,'2018-06-17 09:54:08'),
(3,'admin2','123456','admin2',1,'2018-06-17 09:54:14'),
(4,'admin3','123456','admin3',1,'2018-06-17 09:54:23'),
(5,'0zou00','123456','123123123',1,'2018-06-17 10:29:20'),
(6,'2zou11','123456','bd4b31',1,'2018-06-17 10:29:20'),
(7,'4zou22','123456','e6c052',1,'2018-06-17 10:29:20'),
(8,'6zou33','123456','2ba753',1,'2018-06-17 10:29:20'),
(9,'8zou44','123456','8f2b84',1,'2018-06-17 10:29:20'),
(10,'10zou55','123456','457f85',1,'2018-06-17 10:29:20'),
(11,'12zou66','123456','108526',1,'2018-06-17 10:29:20'),
(12,'14zou77','123456','e41aa7',1,'2018-06-17 10:29:20'),
(13,'16zou88','123456','e005a8',1,'2018-06-17 10:29:20'),
(14,'18zou99','123456','1228c9',1,'2018-06-17 10:29:20'),
(15,'20zou1010','123456','cca1f10',1,'2018-06-17 10:29:20'),
(16,'22zou1111','123456','a3e1111',1,'2018-06-17 10:29:20'),
(17,'24zou1212','123456','38f9d12',1,'2018-06-17 10:29:20'),
(18,'26zou1313','123456','bec1413',1,'2018-06-17 10:29:20'),
(19,'28zou1414','123456','7878714',1,'2018-06-17 10:29:20'),
(20,'30zou1515','123456','61cac15',1,'2018-06-17 10:29:20'),
(21,'32zou1616','123456','af03616',1,'2018-06-17 10:29:20'),
(22,'34zou1717','123456','d2a5917',1,'2018-06-17 10:29:20'),
(23,'36zou1818','123456','54f7118',1,'2018-06-17 10:29:20'),
(24,'38zou1919','123456','0ef3719',1,'2018-06-17 10:29:20'),
(47,'huhuhu','123456','hhhhh',1,'2018-06-20 23:43:18'),
(48,'123123','123123','123123',1,'2018-06-21 02:06:56'),
(49,'asdf111','123456','qweqwe',1,'2018-06-21 10:22:37'),
(50,'luoluo','123456','qweqwe',1,'2018-06-21 10:23:10'),
(54,'11123123','212123','12312123',1,'2018-06-21 13:46:22'),
(55,'123123123','123123123','123123123',1,'2018-06-21 13:46:33');

/*Table structure for table `user_address` */

DROP TABLE IF EXISTS `user_address`;

CREATE TABLE `user_address` (
  `a_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `receiver` varchar(255) NOT NULL COMMENT '收货人姓名',
  `address` varchar(255) NOT NULL COMMENT '收货人地址',
  `phone` varchar(255) NOT NULL COMMENT '收货人电话',
  `u_id` bigint(20) NOT NULL COMMENT '对应用户的id',
  `uptime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最近一次更新时间',
  PRIMARY KEY (`a_id`),
  KEY `u_id` (`u_id`),
  CONSTRAINT `user_address_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_address` */

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `ur_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `u_id` bigint(20) NOT NULL COMMENT '对应用户表主键',
  `r_id` bigint(20) NOT NULL COMMENT '对应权限表主键',
  `uptime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最近一次更新时间',
  PRIMARY KEY (`ur_id`),
  KEY `r_id` (`r_id`),
  KEY `u_id` (`u_id`),
  CONSTRAINT `user_role_ibfk_2` FOREIGN KEY (`r_id`) REFERENCES `role` (`r_id`),
  CONSTRAINT `user_role_ibfk_3` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `user_role` */

insert  into `user_role`(`ur_id`,`u_id`,`r_id`,`uptime`) values 
(1,1,1,'2018-06-17 09:54:37'),
(2,1,2,'2018-06-17 09:54:39'),
(3,2,2,'2018-06-17 09:54:45'),
(4,3,2,'2018-06-17 09:54:47'),
(5,4,2,'2018-06-17 09:54:52'),
(6,5,3,'2018-06-17 10:29:20'),
(7,6,3,'2018-06-17 10:29:20'),
(8,7,3,'2018-06-17 10:29:20'),
(9,8,3,'2018-06-17 10:29:20'),
(10,9,3,'2018-06-17 10:29:20'),
(11,10,3,'2018-06-17 10:29:20'),
(12,11,3,'2018-06-17 10:29:20'),
(13,12,3,'2018-06-17 10:29:20'),
(14,13,3,'2018-06-17 10:29:20'),
(15,14,3,'2018-06-17 10:29:20'),
(16,15,3,'2018-06-17 10:29:20'),
(17,16,3,'2018-06-17 10:29:20'),
(18,17,3,'2018-06-17 10:29:20'),
(19,18,3,'2018-06-17 10:29:20'),
(20,19,3,'2018-06-17 10:29:20'),
(21,20,3,'2018-06-17 10:29:20'),
(22,21,3,'2018-06-17 10:29:20'),
(23,22,3,'2018-06-17 10:29:20'),
(24,23,3,'2018-06-17 10:29:20'),
(25,24,3,'2018-06-17 10:29:20'),
(26,49,3,'2018-06-21 10:22:37'),
(27,50,3,'2018-06-21 10:23:10'),
(29,54,3,'2018-06-21 13:46:22'),
(30,55,3,'2018-06-21 13:46:33');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
