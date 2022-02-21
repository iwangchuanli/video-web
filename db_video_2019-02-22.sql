# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
#
# Host: 127.0.0.1 (MySQL 5.7.20)
# Database: video
# Generation Time: 2019-02-22 07:21:47 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table auth_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table auth_group_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table auth_permission
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`)
VALUES
	(1,'Can add log entry',1,'add_logentry'),
	(2,'Can change log entry',1,'change_logentry'),
	(3,'Can delete log entry',1,'delete_logentry'),
	(4,'Can view log entry',1,'view_logentry'),
	(5,'Can add permission',2,'add_permission'),
	(6,'Can change permission',2,'change_permission'),
	(7,'Can delete permission',2,'delete_permission'),
	(8,'Can view permission',2,'view_permission'),
	(9,'Can add group',3,'add_group'),
	(10,'Can change group',3,'change_group'),
	(11,'Can delete group',3,'delete_group'),
	(12,'Can view group',3,'view_group'),
	(13,'Can add content type',4,'add_contenttype'),
	(14,'Can change content type',4,'change_contenttype'),
	(15,'Can delete content type',4,'delete_contenttype'),
	(16,'Can view content type',4,'view_contenttype'),
	(17,'Can add session',5,'add_session'),
	(18,'Can change session',5,'change_session'),
	(19,'Can delete session',5,'delete_session'),
	(20,'Can view session',5,'view_session'),
	(21,'Can add kv store',6,'add_kvstore'),
	(22,'Can change kv store',6,'change_kvstore'),
	(23,'Can delete kv store',6,'delete_kvstore'),
	(24,'Can view kv store',6,'view_kvstore'),
	(25,'Can add video',7,'add_video'),
	(26,'Can change video',7,'change_video'),
	(27,'Can delete video',7,'delete_video'),
	(28,'Can view video',7,'view_video'),
	(29,'Can add user',8,'add_user'),
	(30,'Can change user',8,'change_user'),
	(31,'Can delete user',8,'delete_user'),
	(32,'Can view user',8,'view_user'),
	(33,'Can add feedback',9,'add_feedback'),
	(34,'Can change feedback',9,'change_feedback'),
	(35,'Can delete feedback',9,'delete_feedback'),
	(36,'Can view feedback',9,'view_feedback'),
	(37,'Can add my chunked upload',10,'add_mychunkedupload'),
	(38,'Can change my chunked upload',10,'change_mychunkedupload'),
	(39,'Can delete my chunked upload',10,'delete_mychunkedupload'),
	(40,'Can view my chunked upload',10,'view_mychunkedupload'),
	(41,'Can add comment',11,'add_comment'),
	(42,'Can change comment',11,'change_comment'),
	(43,'Can delete comment',11,'delete_comment'),
	(44,'Can view comment',11,'view_comment'),
	(45,'Can add setting',12,'add_setting'),
	(46,'Can change setting',12,'change_setting'),
	(47,'Can delete setting',12,'delete_setting'),
	(48,'Can view setting',12,'view_setting'),
	(49,'Can add classification',13,'add_classification'),
	(50,'Can change classification',13,'change_classification'),
	(51,'Can delete classification',13,'delete_classification'),
	(52,'Can view classification',13,'view_classification'),
	(53,'Can add user',14,'add_user'),
	(54,'Can change user',14,'change_user'),
	(55,'Can delete user',14,'delete_user'),
	(56,'Can view user',14,'view_user');

/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table django_admin_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_v_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_v_user_id` FOREIGN KEY (`user_id`) REFERENCES `v_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`)
VALUES
	(1,'2018-12-25 10:04:33.551775','16','admin090912345',2,'[{\"changed\": {\"fields\": [\"avatar\"]}}]',8,1),
	(2,'2018-12-25 10:43:15.186003','3','Setting object (3)',1,'[{\"added\": {}}]',12,1),
	(3,'2018-12-28 14:46:10.336133','1','Classification object (1)',1,'[{\"added\": {}}]',13,1),
	(4,'2018-12-28 14:46:17.013171','2','Classification object (2)',1,'[{\"added\": {}}]',13,1),
	(5,'2018-12-28 14:46:23.670577','3','Classification object (3)',1,'[{\"added\": {}}]',13,1),
	(6,'2018-12-28 15:20:47.908657','63','Video object (63)',2,'[{\"changed\": {\"fields\": [\"classification\"]}}]',7,1),
	(7,'2018-12-28 15:20:55.680604','62','Video object (62)',2,'[{\"changed\": {\"fields\": [\"classification\"]}}]',7,1),
	(8,'2018-12-28 15:21:00.542275','61','Video object (61)',2,'[{\"changed\": {\"fields\": [\"classification\"]}}]',7,1),
	(9,'2018-12-28 15:21:06.205363','59','Video object (59)',2,'[{\"changed\": {\"fields\": [\"classification\"]}}]',7,1),
	(10,'2018-12-28 15:21:10.894220','51','Video object (51)',2,'[{\"changed\": {\"fields\": [\"classification\"]}}]',7,1),
	(11,'2019-01-05 16:16:08.893293','66','Video object (66)',1,'[{\"added\": {}}]',7,1),
	(12,'2019-01-06 14:58:33.355867','67','Video object (67)',1,'[{\"added\": {}}]',7,1);

/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table django_content_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;

INSERT INTO `django_content_type` (`id`, `app_label`, `model`)
VALUES
	(1,'admin','logentry'),
	(3,'auth','group'),
	(2,'auth','permission'),
	(14,'auth','user'),
	(11,'comment','comment'),
	(4,'contenttypes','contenttype'),
	(10,'myadmin','mychunkedupload'),
	(12,'myadmin','setting'),
	(5,'sessions','session'),
	(6,'thumbnail','kvstore'),
	(9,'users','feedback'),
	(8,'users','user'),
	(13,'video','classification'),
	(7,'video','video');

/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table django_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`)
VALUES
	(1,'contenttypes','0001_initial','2018-12-21 21:40:05.581239'),
	(2,'contenttypes','0002_remove_content_type_name','2018-12-21 21:40:05.621139'),
	(3,'auth','0001_initial','2018-12-21 21:40:05.773454'),
	(4,'auth','0002_alter_permission_name_max_length','2018-12-21 21:40:05.797134'),
	(5,'auth','0003_alter_user_email_max_length','2018-12-21 21:40:05.803237'),
	(6,'auth','0004_alter_user_username_opts','2018-12-21 21:40:05.810749'),
	(7,'auth','0005_alter_user_last_login_null','2018-12-21 21:40:05.816967'),
	(8,'auth','0006_require_contenttypes_0002','2018-12-21 21:40:05.820753'),
	(9,'auth','0007_alter_validators_add_error_messages','2018-12-21 21:40:05.827766'),
	(10,'auth','0008_alter_user_username_max_length','2018-12-21 21:40:05.834040'),
	(11,'auth','0009_alter_user_last_name_max_length','2018-12-21 21:40:05.843424'),
	(12,'users','0001_initial','2018-12-21 21:40:06.035206'),
	(13,'admin','0001_initial','2018-12-21 21:40:06.103818'),
	(14,'admin','0002_logentry_remove_auto_add','2018-12-21 21:40:06.113656'),
	(15,'admin','0003_logentry_add_action_flag_choices','2018-12-21 21:40:06.123941'),
	(16,'video','0001_initial','2018-12-21 21:40:06.281863'),
	(17,'comment','0001_initial','2018-12-21 21:40:06.351833'),
	(18,'myadmin','0001_initial','2018-12-21 21:40:06.409048'),
	(19,'sessions','0001_initial','2018-12-21 21:40:06.446222'),
	(20,'thumbnail','0001_initial','2018-12-21 21:40:06.466133'),
	(21,'video','0002_video_status','2018-12-21 21:44:28.693660'),
	(22,'video','0003_video_cover','2018-12-22 19:56:29.035788'),
	(23,'video','0004_auto_20181222_1959','2018-12-22 19:59:17.142032'),
	(24,'video','0005_auto_20181223_1531','2018-12-23 15:31:25.721597'),
	(25,'video','0006_auto_20181223_1547','2018-12-23 15:47:09.895517'),
	(26,'myadmin','0002_setting','2018-12-25 10:20:09.335190'),
	(27,'users','0002_auto_20181226_2050','2018-12-26 20:51:03.429335'),
	(28,'video','0007_auto_20181225_2052','2018-12-26 20:51:03.445431'),
	(29,'video','0008_classification','2018-12-28 14:43:41.634260'),
	(30,'video','0009_auto_20181228_1519','2018-12-28 15:19:54.948123');

/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table django_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`)
VALUES
	('erszx2wh3mb2zp29m2ilfdifbxu73qaq','MGJlNDRmOGYzYjVhYTUxYTEyMGU4YjQ2ODhhNGFhMjVkZDhmMzcxYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YjFiMGM1ZjhhYWZiY2I3YjMxNzMyMzFiNDUwMDUxZDI4NjhhZTY4In0=','2019-01-11 11:17:13.059981'),
	('pa6z708i4qzn45yv5o1m0t1pasrul248','MGJlNDRmOGYzYjVhYTUxYTEyMGU4YjQ2ODhhNGFhMjVkZDhmMzcxYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YjFiMGM1ZjhhYWZiY2I3YjMxNzMyMzFiNDUwMDUxZDI4NjhhZTY4In0=','2019-01-11 11:14:41.532201'),
	('rsgjp511idqbeuumjoexjdp5zwtlxboq','MGJlNDRmOGYzYjVhYTUxYTEyMGU4YjQ2ODhhNGFhMjVkZDhmMzcxYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YjFiMGM1ZjhhYWZiY2I3YjMxNzMyMzFiNDUwMDUxZDI4NjhhZTY4In0=','2019-01-11 13:38:54.405303'),
	('u0yjgiqel9y15omnm0b786xcnkslou50','ODkxNmUwMzU1ZjM2NGM2MTE1YjgyMzM0Njc4ZGNlMzVkMzFiMTMwOTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMzExODg2N2M5NzYyYzZiNjQ4MmFkZGEyYmZiYWI5Y2I2ODNlMWZkIn0=','2019-02-14 20:50:20.823673');

/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table myadmin_mychunkedupload
# ------------------------------------------------------------

DROP TABLE IF EXISTS `myadmin_mychunkedupload`;

CREATE TABLE `myadmin_mychunkedupload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upload_id` varchar(32) NOT NULL,
  `file` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `offset` bigint(20) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `status` smallint(5) unsigned NOT NULL,
  `completed_on` datetime(6) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upload_id` (`upload_id`),
  KEY `myadmin_mychunkedupload_user_id_5f9801cf_fk_v_user_id` (`user_id`),
  CONSTRAINT `myadmin_mychunkedupload_user_id_5f9801cf_fk_v_user_id` FOREIGN KEY (`user_id`) REFERENCES `v_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `myadmin_mychunkedupload` WRITE;
/*!40000 ALTER TABLE `myadmin_mychunkedupload` DISABLE KEYS */;

INSERT INTO `myadmin_mychunkedupload` (`id`, `upload_id`, `file`, `filename`, `offset`, `created_on`, `status`, `completed_on`, `user_id`)
VALUES
	(1,'6c0eb33d09c84aa98609eeddb32223d6','chunked_uploads/2018/12/21/6c0eb33d09c84aa98609eeddb32223d6.part','pic01.jpg',29788,'2018-12-21 21:42:31.947638',2,'2018-12-21 21:42:32.015985',1),
	(2,'1738f0bdd14244bcafc9f9c141ae7748','chunked_uploads/2018/12/21/1738f0bdd14244bcafc9f9c141ae7748.part','qz.png',2149,'2018-12-21 21:47:21.446187',2,'2018-12-21 21:47:21.505218',1),
	(3,'00bc793884ac48a78d141da5e72bf744','chunked_uploads/2018/12/21/00bc793884ac48a78d141da5e72bf744.part','qz.jpg',38640,'2018-12-21 21:48:31.517645',2,'2018-12-21 21:48:31.573473',1),
	(4,'8f0057744a4c418989626b4d473d8901','chunked_uploads/2018/12/21/8f0057744a4c418989626b4d473d8901.part','qz.png',2149,'2018-12-21 21:51:42.863307',2,'2018-12-21 21:51:42.912053',1),
	(5,'0b4bc2672aa14ed19bb1e3c0579b5f78','chunked_uploads/2018/12/21/0b4bc2672aa14ed19bb1e3c0579b5f78.part','qz.jpg',38640,'2018-12-21 21:54:07.523235',2,'2018-12-21 21:54:07.551587',1),
	(6,'e9d238d989ae47e9b00705c66cc5b12e','chunked_uploads/2018/12/21/e9d238d989ae47e9b00705c66cc5b12e.part','qz.jpg',38640,'2018-12-21 21:56:34.329494',2,'2018-12-21 21:56:34.368210',1),
	(7,'47150c9e0ce940e5829a0dd0df14293a','chunked_uploads/2018/12/22/47150c9e0ce940e5829a0dd0df14293a.part','pic01.jpg',29788,'2018-12-22 10:52:38.013846',2,'2018-12-22 10:52:38.040873',1),
	(8,'6c045c645214479fb66657f98ec695e6','chunked_uploads/2018/12/22/6c045c645214479fb66657f98ec695e6.part','qz.png',2149,'2018-12-22 10:55:17.973594',2,'2018-12-22 10:55:18.002060',1),
	(9,'701419cabd82468ab90df346f81b467f','chunked_uploads/2018/12/22/701419cabd82468ab90df346f81b467f.part','qz.jpg',38640,'2018-12-22 10:57:33.330574',2,'2018-12-22 10:57:33.356915',1),
	(10,'d52e47c527e64576a24abf9011a6fba7','chunked_uploads/2018/12/22/d52e47c527e64576a24abf9011a6fba7.part','pic01.jpg',29788,'2018-12-22 11:20:20.619683',2,'2018-12-22 11:20:20.646902',1),
	(11,'5652acb3cab04babb5d430db432d7e33','chunked_uploads/2018/12/22/5652acb3cab04babb5d430db432d7e33.part','qz.png',2149,'2018-12-22 11:21:12.818853',2,'2018-12-22 11:21:12.840275',1),
	(12,'64f849946d3741c290145fe17da26897','chunked_uploads/2018/12/22/64f849946d3741c290145fe17da26897.part','qz.jpg',38640,'2018-12-22 11:30:01.459656',2,'2018-12-22 11:30:01.480042',1),
	(13,'dbd0697c49154c2c8f565ff4ca2a02f0','chunked_uploads/2018/12/22/dbd0697c49154c2c8f565ff4ca2a02f0.part','qz.jpg',38640,'2018-12-22 11:30:20.544229',2,'2018-12-22 11:30:20.562303',1),
	(14,'8cb1791684f4428cbe76d8bc68a4e0d7','chunked_uploads/2018/12/22/8cb1791684f4428cbe76d8bc68a4e0d7.part','pic01.jpg',29788,'2018-12-22 11:31:03.754808',2,'2018-12-22 11:31:03.783108',1),
	(15,'20b9eba9623248929a154de3256ce78c','chunked_uploads/2018/12/22/20b9eba9623248929a154de3256ce78c.part','pic01.jpg',29788,'2018-12-22 11:42:19.805397',2,'2018-12-22 11:42:19.829549',1),
	(16,'4e82199775594ab59221baa5d6fe1198','chunked_uploads/2018/12/22/4e82199775594ab59221baa5d6fe1198.part','qz.png',2149,'2018-12-22 11:59:11.656476',2,'2018-12-22 11:59:11.679920',1),
	(17,'6d97e5d5b815459ba5674f4aee9d5e1b','chunked_uploads/2018/12/22/6d97e5d5b815459ba5674f4aee9d5e1b.part','qz.jpg',38640,'2018-12-22 11:59:29.416248',2,'2018-12-22 11:59:29.438446',1),
	(18,'4589c10b4bbc4671a00632ec5ecf3963','chunked_uploads/2018/12/22/4589c10b4bbc4671a00632ec5ecf3963.part','test-qizhi.apk',17106946,'2018-12-22 11:59:36.792622',2,'2018-12-22 11:59:40.189890',1),
	(19,'4fa94aff60c04f8ab9106f9f2474bf00','chunked_uploads/2018/12/22/4fa94aff60c04f8ab9106f9f2474bf00.part','qz.png',2149,'2018-12-22 12:04:19.952423',2,'2018-12-22 12:04:19.975917',1),
	(20,'bce464588a27422fb581a04aa22b0c99','chunked_uploads/2018/12/22/bce464588a27422fb581a04aa22b0c99.part','qz.jpg',38640,'2018-12-22 12:04:46.854720',2,'2018-12-22 12:04:46.872600',1),
	(21,'ce92232352ae496e9bc70f57720b0f7c','chunked_uploads/2018/12/22/ce92232352ae496e9bc70f57720b0f7c.part','qz.png',2149,'2018-12-22 20:04:43.700691',2,'2018-12-22 20:04:43.721282',1),
	(22,'bbd7aa043b514232b7e2c45e1d24e767','chunked_uploads/2018/12/22/bbd7aa043b514232b7e2c45e1d24e767.part','qz.png',2149,'2018-12-22 20:20:10.214984',2,'2018-12-22 20:20:10.234201',1),
	(23,'0db6b5973a7b4818947560af6eafb870','chunked_uploads/2018/12/23/0db6b5973a7b4818947560af6eafb870.part','pic03.jpeg',115715,'2018-12-23 14:55:02.152087',2,'2018-12-23 14:55:02.209429',1),
	(24,'909f6d7731fd4a2bb97bb14c74d1fe96','chunked_uploads/2018/12/23/909f6d7731fd4a2bb97bb14c74d1fe96.part','pic03.jpeg',115715,'2018-12-23 15:02:05.797240',2,'2018-12-23 15:02:05.847157',1),
	(25,'5b351d77d6954b47921fa6ea9320243d','chunked_uploads/2018/12/23/5b351d77d6954b47921fa6ea9320243d.part','pic03.jpeg',115715,'2018-12-23 15:38:14.127955',2,'2018-12-23 15:38:14.183550',1),
	(26,'9cd0c5de26964dbab1ce4aea61f7ea06','chunked_uploads/2018/12/23/9cd0c5de26964dbab1ce4aea61f7ea06.part','qz.jpg',38640,'2018-12-23 15:42:31.539849',2,'2018-12-23 15:42:31.569093',1),
	(27,'db65dfb2b50c445ea51b7574994a0da1','chunked_uploads/2018/12/23/db65dfb2b50c445ea51b7574994a0da1.part','pic02.jpg',41316,'2018-12-23 15:43:20.498408',2,'2018-12-23 15:43:20.524774',1),
	(28,'c2843f2e353b4f9599f7619465a7adcf','chunked_uploads/2018/12/23/c2843f2e353b4f9599f7619465a7adcf.part','pic02.jpg',41316,'2018-12-23 15:51:21.668647',2,'2018-12-23 15:51:21.694110',1),
	(29,'8b548762139b462183d9da7262043d32','chunked_uploads/2018/12/23/8b548762139b462183d9da7262043d32.part','jdk-jre-jvm.mp4',24839976,'2018-12-23 21:10:49.655533',2,'2018-12-23 21:10:55.076348',1),
	(30,'f9226ac44eff4d218a8362b1636eef25','chunked_uploads/2018/12/23/f9226ac44eff4d218a8362b1636eef25.part','test-video.mp4',788493,'2018-12-23 21:32:44.868074',2,'2018-12-23 21:32:45.097981',1),
	(31,'51ba4456bc6c4841b6ce30f2b02d98dd','chunked_uploads/2018/12/24/51ba4456bc6c4841b6ce30f2b02d98dd.part','pic03.jpeg',115715,'2018-12-24 20:33:06.588277',2,'2018-12-24 20:33:06.648665',1),
	(32,'d8805a16ce364ae8830aa10a6e96b6e1','chunked_uploads/2018/12/25/d8805a16ce364ae8830aa10a6e96b6e1.part','pic01.jpg',29788,'2018-12-25 17:01:26.665201',2,'2018-12-25 17:01:26.708401',1),
	(33,'323c0d5839d6476ba57c436c3296b8e0','chunked_uploads/2018/12/25/323c0d5839d6476ba57c436c3296b8e0.part','pic01.jpg',29788,'2018-12-25 17:03:20.883320',2,'2018-12-25 17:03:20.906691',1),
	(34,'91e4f11a939c4deeafea7ea45a52d2c1','chunked_uploads/2018/12/26/91e4f11a939c4deeafea7ea45a52d2c1.part','test-video.mp4',788493,'2018-12-26 17:04:20.573192',2,'2018-12-26 17:04:20.757319',1),
	(35,'5c1f3a312c564239a99eaa610124f8ed','chunked_uploads/2018/12/26/5c1f3a312c564239a99eaa610124f8ed.part','test-video.mp4',788493,'2018-12-26 17:06:33.607546',2,'2018-12-26 17:06:33.790545',1),
	(36,'76b4b1dffe23408a8224bc6b072f92da','chunked_uploads/2018/12/26/76b4b1dffe23408a8224bc6b072f92da.part','test-video.mp4',788493,'2018-12-26 17:07:25.386505',2,'2018-12-26 17:07:25.571794',1),
	(37,'38ccf38803154397b306b4f2cd390a9e','chunked_uploads/2018/12/26/38ccf38803154397b306b4f2cd390a9e.part','test-video.mp4',788493,'2018-12-26 17:08:52.324545',2,'2018-12-26 17:08:52.528550',1),
	(38,'3cfeaeb386d2428783ef1debcf9c81fc','chunked_uploads/2018/12/26/3cfeaeb386d2428783ef1debcf9c81fc.part','qz.png',2149,'2018-12-26 17:09:28.231753',2,'2018-12-26 17:09:28.265133',1),
	(39,'89d597616c104dd1b915bd033db9a60d','chunked_uploads/2018/12/26/89d597616c104dd1b915bd033db9a60d.part','test-video.mp4',788493,'2018-12-26 17:10:40.464427',2,'2018-12-26 17:10:40.638414',1),
	(40,'46248cae054641008bd74e3b4a5f2818','chunked_uploads/2018/12/26/46248cae054641008bd74e3b4a5f2818.part','test-video.mp4',788493,'2018-12-26 17:11:31.632259',2,'2018-12-26 17:11:31.820436',1),
	(41,'0617ed2e7e5b4d758f868058db0f92f7','chunked_uploads/2018/12/26/0617ed2e7e5b4d758f868058db0f92f7.part','test-video.mp4',788493,'2018-12-26 17:11:53.856354',2,'2018-12-26 17:11:54.099917',1),
	(42,'e1a81dd4165e4a0d83fa38bfd5565f83','chunked_uploads/2018/12/26/e1a81dd4165e4a0d83fa38bfd5565f83.part','test-video.mp4',788493,'2018-12-26 17:12:13.674527',2,'2018-12-26 17:12:13.870586',1),
	(43,'f1b84e83aa1f4718b6560fe3cf59e380','chunked_uploads/2018/12/26/f1b84e83aa1f4718b6560fe3cf59e380.part','test-video.mp4',788493,'2018-12-26 17:12:56.186338',2,'2018-12-26 17:12:56.387754',1),
	(44,'2dd7965db4e24d6b8f389a9f3189112a','chunked_uploads/2018/12/26/2dd7965db4e24d6b8f389a9f3189112a.part','pic03.jpeg',115715,'2018-12-26 17:15:26.924662',2,'2018-12-26 17:15:26.989999',1),
	(45,'828b68a61f4b4b95aec8b4adf4208be9','chunked_uploads/2018/12/26/828b68a61f4b4b95aec8b4adf4208be9.part','qz.png',2149,'2018-12-26 17:16:12.880698',2,'2018-12-26 17:16:12.909845',1),
	(46,'000032810a1b4cfcabc8d87febbabeb7','chunked_uploads/2018/12/26/000032810a1b4cfcabc8d87febbabeb7.part','qz.png',2149,'2018-12-26 17:16:35.609809',2,'2018-12-26 17:16:35.630250',1),
	(47,'2e1b510ec8b8444f8751e5e7f12c76f5','chunked_uploads/2018/12/26/2e1b510ec8b8444f8751e5e7f12c76f5.part','qz.png',2149,'2018-12-26 17:18:24.689769',2,'2018-12-26 17:18:24.717473',1),
	(48,'844f064b1f51431f8d7672afc8ef2ce9','chunked_uploads/2018/12/26/844f064b1f51431f8d7672afc8ef2ce9.part','qz.jpg',38640,'2018-12-26 17:20:51.613251',2,'2018-12-26 17:20:51.644114',1),
	(49,'5c13b120895448c99d34c5d3390fd225','chunked_uploads/2018/12/26/5c13b120895448c99d34c5d3390fd225.part','qz.png',2149,'2018-12-26 17:21:30.602327',2,'2018-12-26 17:21:30.626397',1),
	(50,'749869156cc445329ad308b0438608f3','chunked_uploads/2018/12/26/749869156cc445329ad308b0438608f3.part','test-video.mp4',788493,'2018-12-26 17:21:53.417724',2,'2018-12-26 17:21:53.604592',1),
	(51,'2136bb3bfd8d4a2b98035bf8a9648ba2','chunked_uploads/2018/12/26/2136bb3bfd8d4a2b98035bf8a9648ba2.part','test-video.mp4',788493,'2018-12-26 17:23:54.405122',2,'2018-12-26 17:23:54.603117',1),
	(52,'e9999c645a484123ab91215e2616a77a','chunked_uploads/2018/12/26/e9999c645a484123ab91215e2616a77a.part','test-video.mp4',788493,'2018-12-26 17:24:22.019092',2,'2018-12-26 17:24:22.360329',1),
	(53,'c9728484b4694e76a7f5694473b56c7b','chunked_uploads/2018/12/27/c9728484b4694e76a7f5694473b56c7b.part','test-video.mp4',788493,'2018-12-27 21:39:56.464542',2,'2018-12-27 21:39:56.715064',1),
	(54,'4e1029b05d074141804b9fb9bc74cb6a','chunked_uploads/2018/12/27/4e1029b05d074141804b9fb9bc74cb6a.part','jdk-jre-jvm.mp4',24839976,'2018-12-27 21:48:37.144347',2,'2018-12-27 21:48:43.832768',1),
	(55,'2f76c936e3d548ce81813d1e7fb2553e','chunked_uploads/2018/12/27/2f76c936e3d548ce81813d1e7fb2553e.part','java-singleton.mov',83189548,'2018-12-27 22:04:12.466619',2,'2018-12-27 22:04:32.769100',1),
	(56,'0cba3b579c7746a59a6991e86f2215be','chunked_uploads/2018/12/28/0cba3b579c7746a59a6991e86f2215be.part','test-video.mp4',788493,'2018-12-28 09:55:05.011779',2,'2018-12-28 09:55:05.199839',1),
	(57,'01a6b0007d964392ab2490334482284f','chunked_uploads/2018/12/28/01a6b0007d964392ab2490334482284f.part','pic01.jpg',29788,'2018-12-28 10:31:24.189587',2,'2018-12-28 10:31:24.207652',1),
	(58,'ac9d0be0f64a49a49619f293f41f0328','chunked_uploads/2018/12/28/ac9d0be0f64a49a49619f293f41f0328.part','test-video.mp4',788493,'2018-12-28 10:31:42.406051',2,'2018-12-28 10:31:42.600296',1),
	(59,'15e54ab7bf5c4498b0b178a8be958150','chunked_uploads/2018/12/28/15e54ab7bf5c4498b0b178a8be958150.part','java-singleton.mov',83189548,'2018-12-28 10:32:35.084937',2,'2018-12-28 10:32:53.632578',1),
	(60,'2f75bca838a04d978e09ddfeafa44b6f','chunked_uploads/2018/12/28/2f75bca838a04d978e09ddfeafa44b6f.part','test-video.mp4',788493,'2018-12-28 10:39:56.997127',2,'2018-12-28 10:39:57.242011',1),
	(61,'f24be4bcd3054450a6ebf3ea5ac79c4e','chunked_uploads/2018/12/28/f24be4bcd3054450a6ebf3ea5ac79c4e.part','test-video.mp4',788493,'2018-12-28 10:47:07.772989',2,'2018-12-28 10:47:07.968570',1),
	(62,'8b159b91ceb3475c912c6c280bd52b5d','chunked_uploads/2018/12/28/8b159b91ceb3475c912c6c280bd52b5d.part','test-video.mp4',788493,'2018-12-28 14:00:22.038240',2,'2018-12-28 14:00:22.230603',1),
	(63,'61f758e290a544e1b294307c6eb53466','chunked_uploads/2018/12/28/61f758e290a544e1b294307c6eb53466.part','test-video.mp4',788493,'2018-12-28 14:00:45.454042',2,'2018-12-28 14:00:45.654979',1),
	(64,'40590784f866424caaa741899d05c7eb','chunked_uploads/2018/12/28/40590784f866424caaa741899d05c7eb.part','test-video.mp4',788493,'2018-12-28 14:01:04.859645',2,'2018-12-28 14:01:05.057215',1),
	(65,'39b873d9f6ba44afa6072cc2716968d7','chunked_uploads/2018/12/28/39b873d9f6ba44afa6072cc2716968d7.part','test-video.mp4',788493,'2018-12-28 14:01:31.544777',2,'2018-12-28 14:01:31.740164',1),
	(66,'dee7f7dcb3a84647b609eb8644eb5235','chunked_uploads/2018/12/28/dee7f7dcb3a84647b609eb8644eb5235.part','test-video.mp4',788493,'2018-12-28 14:02:28.072222',2,'2018-12-28 14:02:28.247325',1),
	(67,'183704c7bb68464eaa1a6002b9c94244','chunked_uploads/2018/12/29/183704c7bb68464eaa1a6002b9c94244.part','test-video.mp4',788493,'2018-12-29 20:09:16.197108',2,'2018-12-29 20:09:16.366446',1),
	(68,'430759becd1348539b34669194e1f454','chunked_uploads/2018/12/29/430759becd1348539b34669194e1f454.part','test-video.mp4',788493,'2018-12-29 20:13:44.341606',2,'2018-12-29 20:13:44.537643',1),
	(69,'f006b0cb6b7544e7b1a9dd39ec30ec90','chunked_uploads/2019/01/06/f006b0cb6b7544e7b1a9dd39ec30ec90.part','马云纽约演讲：不应该谈论中国或美国制造，将来都是互联网制造.3gp',1555867,'2019-01-06 15:01:04.993697',2,'2019-01-06 15:01:05.371932',1),
	(70,'d79953c1dd984c8eb792948ee4b7a33e','chunked_uploads/2019/01/08/d79953c1dd984c8eb792948ee4b7a33e.part','把对手耍哭，让解说疯狂！梅西生涯十大一条龙破门 EKo2WdY6Mq4 高清 (1).mp4',100000,'2019-01-08 16:18:56.373053',1,NULL,1),
	(71,'e479ddef2cf6434d80fcbda88f2896f8','chunked_uploads/2019/01/08/e479ddef2cf6434d80fcbda88f2896f8.part','把对手耍哭，让解说疯狂！梅西生涯十大一条龙破门 EKo2WdY6Mq4 高清 (2).mp4',1076100,'2019-01-08 16:20:10.756543',2,'2019-01-08 16:20:11.122263',1),
	(72,'3ed4ea2ce20f4e8a895cd1e661490aa2','chunked_uploads/2019/01/15/3ed4ea2ce20f4e8a895cd1e661490aa2.part','Should I Learn Java or JavaScript_ (1).mp4',530651,'2019-01-15 16:04:04.142045',2,'2019-01-15 16:04:04.320403',1),
	(73,'500e6c178fb449ce9b97cd08f0c160b4','chunked_uploads/2019/01/15/500e6c178fb449ce9b97cd08f0c160b4.part','Should I Learn Java or JavaScript_ (3).mp4',537255,'2019-01-15 16:04:50.719074',2,'2019-01-15 16:04:50.891957',1),
	(74,'66b8b1392939480996fac6b724529d49','chunked_uploads/2019/01/15/66b8b1392939480996fac6b724529d49.part','Should I Learn Java or JavaScript_ (3).mp4',537255,'2019-01-15 16:05:26.758597',2,'2019-01-15 16:05:26.932069',1),
	(75,'0baf609be9924a30afd5294cf9678fd7','chunked_uploads/2019/01/15/0baf609be9924a30afd5294cf9678fd7.part','What Makes You an Expert in Python_ – #AskQazi 7 (1).mp4',694274,'2019-01-15 16:05:54.858885',2,'2019-01-15 16:05:55.035384',1),
	(76,'13f828ace3af44dbb709d5f6bba42eb8','chunked_uploads/2019/01/15/13f828ace3af44dbb709d5f6bba42eb8.part','What Makes You an Expert in Python_ – #AskQazi 7.mp4',584461,'2019-01-15 16:06:28.080901',2,'2019-01-15 16:06:28.235623',1),
	(77,'f0b9357e4e144344a80ea62c4113f315','chunked_uploads/2019/01/15/f0b9357e4e144344a80ea62c4113f315.part','Should I Learn Java or JavaScript_ (3).mp4',537255,'2019-01-15 16:07:10.634011',2,'2019-01-15 16:07:10.797263',1),
	(78,'56d265866afe41ecb7a15dc16b90ddbe','chunked_uploads/2019/01/15/56d265866afe41ecb7a15dc16b90ddbe.part','把对手耍哭，让解说疯狂！梅西生涯十大一条龙破门 EKo2WdY6Mq4 高清 (1).mp4',904104,'2019-01-15 16:08:02.931437',2,'2019-01-15 16:08:03.185164',1),
	(79,'c48cbf878b40451c8c2d1c15e27b2dfc','chunked_uploads/2019/01/15/c48cbf878b40451c8c2d1c15e27b2dfc.part','哈登投篮走步.mp4',553894,'2019-01-15 16:08:39.124226',2,'2019-01-15 16:08:39.262282',1),
	(80,'f3ae773eb253468a9b799b782c17afc5','chunked_uploads/2019/01/15/f3ae773eb253468a9b799b782c17afc5.part','把对手耍哭，让解说疯狂！梅西生涯十大一条龙破门 EKo2WdY6Mq4 高清 (3).mp4',941711,'2019-01-15 16:09:08.305707',2,'2019-01-15 16:09:08.569570',1),
	(81,'6f5de72b7bde4fba827b065899ff1dd5','chunked_uploads/2019/01/15/6f5de72b7bde4fba827b065899ff1dd5.part','把对手耍哭，让解说疯狂！梅西生涯十大一条龙破门 EKo2WdY6Mq4 高清 (5).mp4',946608,'2019-01-15 16:09:38.949981',2,'2019-01-15 16:09:39.165475',1),
	(82,'10182e59b49642db88836fee8ac27788','chunked_uploads/2019/01/15/10182e59b49642db88836fee8ac27788.part','把对手耍哭，让解说疯狂！梅西生涯十大一条龙破门 EKo2WdY6Mq4 高清.mp4',956771,'2019-01-15 16:10:11.063200',2,'2019-01-15 16:10:11.323926',1),
	(83,'df5cb965f85d417dbe1e7de87a4abcaa','chunked_uploads/2019/01/15/df5cb965f85d417dbe1e7de87a4abcaa.part','把对手耍哭，让解说疯狂！梅西生涯十大一条龙破门 EKo2WdY6Mq4 高清 (5).mp4',946608,'2019-01-15 16:10:39.564576',2,'2019-01-15 16:10:39.794666',1),
	(84,'e7802f5689984fc1b2526a471016c936','chunked_uploads/2019/01/15/e7802f5689984fc1b2526a471016c936.part','港股2019危與機 專家話你知 (1).mp4',704982,'2019-01-15 16:11:37.209845',2,'2019-01-15 16:11:37.470492',1),
	(85,'99105ba60e8846729ccc2635c9f981e8','chunked_uploads/2019/01/15/99105ba60e8846729ccc2635c9f981e8.part','美股史上最大单日跌幅！Facebook市值跌超1100亿美元 (1).mp4',286701,'2019-01-15 16:12:03.241301',2,'2019-01-15 16:12:03.327678',1),
	(86,'34826153d354493a947d425bb8cfd52c','chunked_uploads/2019/01/15/34826153d354493a947d425bb8cfd52c.part','美股史上最大单日跌幅！Facebook市值跌超1100亿美元 (2).mp4',372887,'2019-01-15 16:12:29.788186',2,'2019-01-15 16:12:29.890286',1),
	(87,'39fd5e6fbd7f4f7ab570b9135916b4a9','chunked_uploads/2019/01/15/39fd5e6fbd7f4f7ab570b9135916b4a9.part','美股史上最大单日跌幅！Facebook市值跌超1100亿美元.mp4',649371,'2019-01-15 16:12:54.143253',2,'2019-01-15 16:12:54.322428',1),
	(88,'9aedd652165c43e99b50a791d23a89d0','chunked_uploads/2019/01/15/9aedd652165c43e99b50a791d23a89d0.part','Should I Learn Java or JavaScript_ (3).mp4',537255,'2019-01-15 16:16:02.242944',2,'2019-01-15 16:16:02.384094',1),
	(89,'1ff3e1103ef44c78b6183f1bc5c8d4f3','chunked_uploads/2019/01/15/1ff3e1103ef44c78b6183f1bc5c8d4f3.part','What Makes You an Expert in Python_ – #AskQazi 7.mp4',584461,'2019-01-15 21:58:12.546733',2,'2019-01-15 21:58:12.748628',1);

/*!40000 ALTER TABLE `myadmin_mychunkedupload` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table thumbnail_kvstore
# ------------------------------------------------------------

DROP TABLE IF EXISTS `thumbnail_kvstore`;

CREATE TABLE `thumbnail_kvstore` (
  `key` varchar(200) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `thumbnail_kvstore` WRITE;
/*!40000 ALTER TABLE `thumbnail_kvstore` DISABLE KEYS */;

INSERT INTO `thumbnail_kvstore` (`key`, `value`)
VALUES
	('sorl-thumbnail||image||05e8d7289e1a075ee5be18ee6682da33','{\"name\": \"avatar/pic01_Ti4dUqw.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [564, 564]}'),
	('sorl-thumbnail||image||0cf3618b3862c5e3e33cfd7e4fd33f46','{\"name\": \"cover/7_lgZTnwP.jpeg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [277, 182]}'),
	('sorl-thumbnail||image||10b5230efe650e51d7374c5b96ba44dc','{\"name\": \"cache/ba/9b/ba9b048bcd92edc5ae4729337e824680.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||119ec42f2ed9136d8cd4d9020c12596e','{\"name\": \"cache/27/9d/279df7a5e9e0a77c06db8474954bc8e0.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||1204f196e0f08a7e0b8103f147097cce','{\"name\": \"avatar/pic01_A2WzKzh.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [564, 564]}'),
	('sorl-thumbnail||image||127710e531f9b43f91ddf04e5c759882','{\"name\": \"cache/38/71/3871de18f069379e81cb6205b71584a9.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||13501cc68b8a25f4be5bed8e4c98495b','{\"name\": \"cache/57/a0/57a02e8de5cd41cf526b1317aac1f22b.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||17bd863298c39374c848d0923e98e131','{\"name\": \"avatar/pic02_W1raAEs.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [563, 463]}'),
	('sorl-thumbnail||image||184f85f0bba87bec064cee9e4b7e3290','{\"name\": \"cache/61/96/6196f9f3aa6b87fbb5857dc51aeb2b30.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||18b0ad33944c5b3efe32d383409f0d7e','{\"name\": \"cache/4d/5e/4d5ecb01818252e52344e613dd222b3d.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||18fb192376eff4951e055adf863a1e2f','{\"name\": \"cover/pic03_qvWJuo9.jpeg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [800, 450]}'),
	('sorl-thumbnail||image||1a67d4f6b4042d38d5959b426aa50dd6','{\"name\": \"cover/pic02_jeGQ4Xt.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [563, 463]}'),
	('sorl-thumbnail||image||1c2b61d8495dc0bf2d76f6896f471e5f','{\"name\": \"cache/45/6a/456ab674a6f7c9d78a4e45da69f835f1.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||1cf2cf9e25826e4deaf6383c507c9926','{\"name\": \"cache/0a/e2/0ae2803135bef6252d89813320112edd.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||1fe2fbc5882c4601b01e24411bbc08fd','{\"name\": \"cover/5.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [660, 371]}'),
	('sorl-thumbnail||image||21790cb38af1eeab85786d05e90b7871','{\"name\": \"cache/07/27/07273497b789c20daa223e6bccd56ef8.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||24577f2487ba44733944c2a04dfdf2bc','{\"name\": \"cache/26/27/262744e1f7a736a68772ab9cb7331741.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||2489d5bd19d2d09fc2d8bda17984f7b6','{\"name\": \"cover/9.jpeg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [270, 187]}'),
	('sorl-thumbnail||image||2c6018b6590ef0692c609e603ff64a2f','{\"name\": \"cover/11.png\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [291, 121]}'),
	('sorl-thumbnail||image||2e8e436cd5e2292343b09037d5e02bbe','{\"name\": \"cover/pic02_jehohFo.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [563, 463]}'),
	('sorl-thumbnail||image||2f6fe538d39521ebd90e962be935afff','{\"name\": \"cover/12.jpeg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [290, 173]}'),
	('sorl-thumbnail||image||2fa9dbd9d3986840e8dfda7ad51ef772','{\"name\": \"avatar/pic03.jpeg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [800, 450]}'),
	('sorl-thumbnail||image||33a382f05c09604f71d224687ca8545c','{\"name\": \"cache/35/66/35661312220512d2f9ddb524d5992530.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [200, 200]}'),
	('sorl-thumbnail||image||35cf7a59ed3d335f1d5177c0f2547069','{\"name\": \"cover/0.jpeg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [275, 183]}'),
	('sorl-thumbnail||image||3619da24b3648da79bf300f1a80e92b2','{\"name\": \"cache/20/8e/208ee74ff2ced55aac82ff7e3233fb2b.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||384244e138b42635a42cab813c37b791','{\"name\": \"cache/f3/53/f353c63ca1a250330f793f59d1f98929.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||392325f70a68cde02267c490f4827591','{\"name\": \"cover/pic02_CWj4gGy.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [563, 463]}'),
	('sorl-thumbnail||image||3ac9acb062a2787d6a01002d47b0bd00','{\"name\": \"cache/f5/0d/f50dc13aee8c3dd32c9e2ab03b1626da.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||3c1b4fc06a5b34a600e9fa82b3e09e4a','{\"name\": \"cache/9b/4a/9b4a5bbbb0c09b2d85b1905c7c6122b0.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||4115a53ec9d9c2deebe21cc16887a053','{\"name\": \"cache/8c/b9/8cb9360d18a79b27d659b5521ae02104.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [200, 200]}'),
	('sorl-thumbnail||image||425bf2be44aa7ebb17a5702e1085b654','{\"name\": \"cache/87/29/87290280d0c696491f653626fa0b7788.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||433ef1cb910e80956923d6a728af5a0e','{\"name\": \"cover/2.jpeg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [299, 168]}'),
	('sorl-thumbnail||image||437817681240a36bd42f5ffce2dc5213','{\"name\": \"cover/pic02_VMIEOcv.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [563, 463]}'),
	('sorl-thumbnail||image||452c5b19ca54274bb70397b2607cb977','{\"name\": \"cover/3.jpeg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [285, 177]}'),
	('sorl-thumbnail||image||489d554a1d0b024f221fcbf88ece6cba','{\"name\": \"cover/pic02_M0Yyt2A.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [563, 463]}'),
	('sorl-thumbnail||image||4bebab1cf44a01341a7b968e98364949','{\"name\": \"cover/7.jpeg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [294, 171]}'),
	('sorl-thumbnail||image||54525280ad5e0c07f609136f7f24f51b','{\"name\": \"cache/49/10/4910968ee5fde22f6c0c9c2bd7e83dbb.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||545f1bcf86bb458ab514fecfcf2faff5','{\"name\": \"cover/1.jpeg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [307, 164]}'),
	('sorl-thumbnail||image||554ae49ec2aeae0d15613be9e8ae480e','{\"name\": \"cache/26/83/26830d15b089208a77071f863c2e3e09.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||564804c15c273eabf52281fedd62a122','{\"name\": \"avatar/pic03_dTm1Yup.jpeg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [800, 450]}'),
	('sorl-thumbnail||image||60d7ccaf0203d12131b839bada07e3b0','{\"name\": \"cache/94/bc/94bc7137a55bf980d1d066fa2d662284.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [200, 200]}'),
	('sorl-thumbnail||image||61a779a8f5955522d4c0f24a87d346d9','{\"name\": \"cache/9a/f3/9af31441122d81c9a61fb0a73f0df3d1.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||6238b477b33deb129571b45e19becc17','{\"name\": \"cache/ba/e4/bae4d858eeb295d1e6b6662159227088.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||66c1a2ab167353c14f2b888e62da4038','{\"name\": \"cover/1_GFrZ9Mn.jpeg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [286, 176]}'),
	('sorl-thumbnail||image||6e5062ee3952d6a9c27ccdec1efade4e','{\"name\": \"cache/41/66/41666b19531c386fc19be169d7314b75.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [200, 200]}'),
	('sorl-thumbnail||image||718bb57cc6fa7caf4b1f2e2c28a2f9f3','{\"name\": \"cache/32/24/32247283e0e98a5e36e73e4dca8b079e.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [200, 200]}'),
	('sorl-thumbnail||image||71b85d415ba7bbcd44f32b0435ec654b','{\"name\": \"cache/3d/6e/3d6e6947a9b15df3e7b65c06b4238eb2.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||76018859b1accbed74443992447c9654','{\"name\": \"cache/80/f0/80f065ed0f42aa35322de24414fa312a.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||7eda61ce9ed7e513a6f24ed966fdf7a5','{\"name\": \"cover/pic02_j2gHHbP.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [563, 463]}'),
	('sorl-thumbnail||image||7fa5fe78398b2d25b735a57c50c701ae','{\"name\": \"cover/pic02_aY5TbLo.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [563, 463]}'),
	('sorl-thumbnail||image||82c86fa0f12aef547b14f1016240710d','{\"name\": \"cover/pic03_uIc7iCW.jpeg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [800, 450]}'),
	('sorl-thumbnail||image||8581c8d13a3fe2d661b3addfb6123fa3','{\"name\": \"cache/0d/fd/0dfd92b0989be650e58b9129d0db1bb0.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||88e8cd0832cddb4028619f0e4c9dfc3f','{\"name\": \"cache/7d/5f/7d5fc4910a9d5aebcd6fe8a277c4091b.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||8934a6d500bcc208725a456288c3eb13','{\"name\": \"cover/5_HHmRu6A.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [660, 371]}'),
	('sorl-thumbnail||image||8cbc9321c5dd9273844ddea362e4e5bb','{\"name\": \"cover/1_da435tY.jpeg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [259, 194]}'),
	('sorl-thumbnail||image||905ad1c04a9641902514c0239334e513','{\"name\": \"cache/9e/b5/9eb5f7d43cf09e1da2e8025eb209963a.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||924530efa9e0abc91ade9cc8a07b6023','{\"name\": \"cover/pic02_5VOKMjd.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [563, 463]}'),
	('sorl-thumbnail||image||9cc604ef552a9c12051dd681f7359fa3','{\"name\": \"cache/78/29/7829fb6c646cb7680bd6466635c6492f.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [200, 200]}'),
	('sorl-thumbnail||image||a0140771cfa5b61ed9fec806ebc61623','{\"name\": \"cover/13.jpeg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [299, 168]}'),
	('sorl-thumbnail||image||a709dbc3838c0b70f20599cb3e5b9e7f','{\"name\": \"cache/61/ac/61ac6ae6a3a8668d645f364c123388b7.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||ae28af6c00d4cb48305a6c3797c04084','{\"name\": \"cache/d8/05/d805cd10d054eed7050e60dd7c1fca67.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||b9f79a47d102b4b2adfede1820ea76fa','{\"name\": \"cover/pic03_IIvm191.jpeg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [800, 450]}'),
	('sorl-thumbnail||image||bc6c2023b21a3dfc95b5751af6db28fb','{\"name\": \"cache/d1/a9/d1a9872e75d632d85e41c00a9d668136.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [200, 200]}'),
	('sorl-thumbnail||image||bf501ddb1c9b8d7e1b7aa5260bdd2040','{\"name\": \"cover/pic02_RCgVbba.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [563, 463]}'),
	('sorl-thumbnail||image||c531ca226717c1a98f72c623a4f682c2','{\"name\": \"cache/27/7a/277ab03893d5a1181a49f23fe0372b85.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||c72441a84e7cb1b25bc88cb99664986a','{\"name\": \"cache/20/75/207510c95cf23535fcb82351ae851d1e.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||c75b7fa709fbf57e2279cbf4fdba3c79','{\"name\": \"cover/Screen_Shot_2018-09-29_at_9.59.34_PM.png\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [1732, 1294]}'),
	('sorl-thumbnail||image||ccb8a4a4085d73d3d078624503ec7282','{\"name\": \"cache/26/99/26991efc914ad3aa734ce75794c63e3c.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||d470c7ec552bc1c05de93481eee101cf','{\"name\": \"avatar/pic02.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [563, 463]}'),
	('sorl-thumbnail||image||d53ed9f06e1b022787c39616b4ed1f0d','{\"name\": \"cache/b5/80/b580ba89caf4fe93327c2907bb0817b5.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||d7535ebba8456447f23b42b51330a923','{\"name\": \"cache/9b/83/9b83b0d2b39207e33fadd4dba41d3b8c.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||dbaa8b5eb662ea55ec3c77380f5e24d6','{\"name\": \"avatar/qz_SBQq2HR.png\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [260, 260]}'),
	('sorl-thumbnail||image||df3b5118e11015688734256b6246ef47','{\"name\": \"cover/8.jpeg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [287, 175]}'),
	('sorl-thumbnail||image||e0b1aeb5167e54bfdfb57e915518ab44','{\"name\": \"cache/38/e3/38e35e98f76daf2cb285aee4289705dc.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||e41d761cbf3744c03d61969c3dfb2d17','{\"name\": \"cover/qz.png\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [260, 260]}'),
	('sorl-thumbnail||image||e9a7829ad40c3adf3540581cc3540fa1','{\"name\": \"cover/2_sCFXv6m.jpeg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [325, 155]}'),
	('sorl-thumbnail||image||ec9db4148b4cfe9a8f396de2e2750bf6','{\"name\": \"cover/4.jpeg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [287, 176]}'),
	('sorl-thumbnail||image||f9773b472b194d7695e8f28b8db512f7','{\"name\": \"cover/3.png\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [239, 211]}'),
	('sorl-thumbnail||image||fe39ff9e7bf7cd398eaae6f0240a1b52','{\"name\": \"cache/a6/68/a6684e440191b33727359d868d8e4fec.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}'),
	('sorl-thumbnail||image||fff8d596a40fc9d732655ef8d0017fcd','{\"name\": \"cover/6.jpeg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [299, 168]}'),
	('sorl-thumbnail||thumbnails||05e8d7289e1a075ee5be18ee6682da33','[\"6e5062ee3952d6a9c27ccdec1efade4e\"]'),
	('sorl-thumbnail||thumbnails||0cf3618b3862c5e3e33cfd7e4fd33f46','[\"d7535ebba8456447f23b42b51330a923\"]'),
	('sorl-thumbnail||thumbnails||1204f196e0f08a7e0b8103f147097cce','[\"bc6c2023b21a3dfc95b5751af6db28fb\"]'),
	('sorl-thumbnail||thumbnails||17bd863298c39374c848d0923e98e131','[\"9cc604ef552a9c12051dd681f7359fa3\"]'),
	('sorl-thumbnail||thumbnails||18fb192376eff4951e055adf863a1e2f','[\"88e8cd0832cddb4028619f0e4c9dfc3f\"]'),
	('sorl-thumbnail||thumbnails||1a67d4f6b4042d38d5959b426aa50dd6','[\"554ae49ec2aeae0d15613be9e8ae480e\"]'),
	('sorl-thumbnail||thumbnails||1fe2fbc5882c4601b01e24411bbc08fd','[\"425bf2be44aa7ebb17a5702e1085b654\"]'),
	('sorl-thumbnail||thumbnails||2489d5bd19d2d09fc2d8bda17984f7b6','[\"184f85f0bba87bec064cee9e4b7e3290\"]'),
	('sorl-thumbnail||thumbnails||2c6018b6590ef0692c609e603ff64a2f','[\"a709dbc3838c0b70f20599cb3e5b9e7f\"]'),
	('sorl-thumbnail||thumbnails||2e8e436cd5e2292343b09037d5e02bbe','[\"384244e138b42635a42cab813c37b791\"]'),
	('sorl-thumbnail||thumbnails||2f6fe538d39521ebd90e962be935afff','[\"c531ca226717c1a98f72c623a4f682c2\"]'),
	('sorl-thumbnail||thumbnails||2fa9dbd9d3986840e8dfda7ad51ef772','[\"33a382f05c09604f71d224687ca8545c\"]'),
	('sorl-thumbnail||thumbnails||35cf7a59ed3d335f1d5177c0f2547069','[\"127710e531f9b43f91ddf04e5c759882\"]'),
	('sorl-thumbnail||thumbnails||392325f70a68cde02267c490f4827591','[\"3c1b4fc06a5b34a600e9fa82b3e09e4a\"]'),
	('sorl-thumbnail||thumbnails||433ef1cb910e80956923d6a728af5a0e','[\"24577f2487ba44733944c2a04dfdf2bc\"]'),
	('sorl-thumbnail||thumbnails||437817681240a36bd42f5ffce2dc5213','[\"54525280ad5e0c07f609136f7f24f51b\"]'),
	('sorl-thumbnail||thumbnails||452c5b19ca54274bb70397b2607cb977','[\"ccb8a4a4085d73d3d078624503ec7282\"]'),
	('sorl-thumbnail||thumbnails||489d554a1d0b024f221fcbf88ece6cba','[\"8581c8d13a3fe2d661b3addfb6123fa3\"]'),
	('sorl-thumbnail||thumbnails||4bebab1cf44a01341a7b968e98364949','[\"c72441a84e7cb1b25bc88cb99664986a\"]'),
	('sorl-thumbnail||thumbnails||545f1bcf86bb458ab514fecfcf2faff5','[\"d53ed9f06e1b022787c39616b4ed1f0d\"]'),
	('sorl-thumbnail||thumbnails||564804c15c273eabf52281fedd62a122','[\"4115a53ec9d9c2deebe21cc16887a053\"]'),
	('sorl-thumbnail||thumbnails||66c1a2ab167353c14f2b888e62da4038','[\"61a779a8f5955522d4c0f24a87d346d9\"]'),
	('sorl-thumbnail||thumbnails||7eda61ce9ed7e513a6f24ed966fdf7a5','[\"fe39ff9e7bf7cd398eaae6f0240a1b52\"]'),
	('sorl-thumbnail||thumbnails||7fa5fe78398b2d25b735a57c50c701ae','[\"e0b1aeb5167e54bfdfb57e915518ab44\"]'),
	('sorl-thumbnail||thumbnails||82c86fa0f12aef547b14f1016240710d','[\"3ac9acb062a2787d6a01002d47b0bd00\"]'),
	('sorl-thumbnail||thumbnails||8934a6d500bcc208725a456288c3eb13','[\"21790cb38af1eeab85786d05e90b7871\"]'),
	('sorl-thumbnail||thumbnails||8cbc9321c5dd9273844ddea362e4e5bb','[\"76018859b1accbed74443992447c9654\"]'),
	('sorl-thumbnail||thumbnails||924530efa9e0abc91ade9cc8a07b6023','[\"119ec42f2ed9136d8cd4d9020c12596e\"]'),
	('sorl-thumbnail||thumbnails||a0140771cfa5b61ed9fec806ebc61623','[\"1c2b61d8495dc0bf2d76f6896f471e5f\"]'),
	('sorl-thumbnail||thumbnails||b9f79a47d102b4b2adfede1820ea76fa','[\"18b0ad33944c5b3efe32d383409f0d7e\"]'),
	('sorl-thumbnail||thumbnails||bf501ddb1c9b8d7e1b7aa5260bdd2040','[\"10b5230efe650e51d7374c5b96ba44dc\"]'),
	('sorl-thumbnail||thumbnails||c75b7fa709fbf57e2279cbf4fdba3c79','[\"1cf2cf9e25826e4deaf6383c507c9926\"]'),
	('sorl-thumbnail||thumbnails||d470c7ec552bc1c05de93481eee101cf','[\"60d7ccaf0203d12131b839bada07e3b0\"]'),
	('sorl-thumbnail||thumbnails||dbaa8b5eb662ea55ec3c77380f5e24d6','[\"718bb57cc6fa7caf4b1f2e2c28a2f9f3\"]'),
	('sorl-thumbnail||thumbnails||df3b5118e11015688734256b6246ef47','[\"ae28af6c00d4cb48305a6c3797c04084\"]'),
	('sorl-thumbnail||thumbnails||e41d761cbf3744c03d61969c3dfb2d17','[\"905ad1c04a9641902514c0239334e513\"]'),
	('sorl-thumbnail||thumbnails||e9a7829ad40c3adf3540581cc3540fa1','[\"3619da24b3648da79bf300f1a80e92b2\"]'),
	('sorl-thumbnail||thumbnails||ec9db4148b4cfe9a8f396de2e2750bf6','[\"71b85d415ba7bbcd44f32b0435ec654b\"]'),
	('sorl-thumbnail||thumbnails||f9773b472b194d7695e8f28b8db512f7','[\"6238b477b33deb129571b45e19becc17\"]'),
	('sorl-thumbnail||thumbnails||fff8d596a40fc9d732655ef8d0017fcd','[\"13501cc68b8a25f4be5bed8e4c98495b\"]');

/*!40000 ALTER TABLE `thumbnail_kvstore` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table v_classification
# ------------------------------------------------------------

DROP TABLE IF EXISTS `v_classification`;

CREATE TABLE `v_classification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `v_classification` WRITE;
/*!40000 ALTER TABLE `v_classification` DISABLE KEYS */;

INSERT INTO `v_classification` (`id`, `title`, `status`)
VALUES
	(2,'教育',1),
	(3,'财经',1),
	(16,'体育',1),
	(17,'娱乐',1);

/*!40000 ALTER TABLE `v_classification` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table v_comment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `v_comment`;

CREATE TABLE `v_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(30) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `content` varchar(100) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `v_comment_user_id_58e38472_fk_v_user_id` (`user_id`),
  KEY `v_comment_video_id_9258a191_fk_v_video_id` (`video_id`),
  CONSTRAINT `v_comment_user_id_58e38472_fk_v_user_id` FOREIGN KEY (`user_id`) REFERENCES `v_user` (`id`),
  CONSTRAINT `v_comment_video_id_9258a191_fk_v_video_id` FOREIGN KEY (`video_id`) REFERENCES `v_video` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `v_comment` WRITE;
/*!40000 ALTER TABLE `v_comment` DISABLE KEYS */;

INSERT INTO `v_comment` (`id`, `nickname`, `avatar`, `content`, `timestamp`, `user_id`, `video_id`)
VALUES
	(16,'honghong','avatar/pic01_Ti4dUqw.jpg','123','2019-01-17 10:24:51.035394',1,87),
	(17,'honghong','avatar/pic01_Ti4dUqw.jpg','ok','2019-01-20 15:29:43.858994',1,81),
	(18,'honghong','avatar/pic01_Ti4dUqw.jpg','hao','2019-01-20 15:29:46.458873',1,81),
	(19,'honghong','avatar/pic01_Ti4dUqw.jpg','很好','2019-01-20 21:32:08.114663',1,81),
	(20,'honghong','avatar/pic01_Ti4dUqw.jpg','test123','2019-01-20 21:32:23.740556',1,81),
	(21,'honghong','avatar/pic01_Ti4dUqw.jpg','9090','2019-01-21 19:45:21.210721',1,64);

/*!40000 ALTER TABLE `v_comment` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table v_feedback
# ------------------------------------------------------------

DROP TABLE IF EXISTS `v_feedback`;

CREATE TABLE `v_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact` varchar(20) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `timestamp` datetime(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `v_feedback` WRITE;
/*!40000 ALTER TABLE `v_feedback` DISABLE KEYS */;

INSERT INTO `v_feedback` (`id`, `contact`, `content`, `timestamp`)
VALUES
	(1,'12344333333333333222','good','2018-12-26 21:06:33.071207'),
	(6,'333','还可以的','2018-12-28 13:39:24.235963');

/*!40000 ALTER TABLE `v_feedback` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table v_setting
# ------------------------------------------------------------

DROP TABLE IF EXISTS `v_setting`;

CREATE TABLE `v_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `switch_mail` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `v_setting` WRITE;
/*!40000 ALTER TABLE `v_setting` DISABLE KEYS */;

INSERT INTO `v_setting` (`id`, `switch_mail`)
VALUES
	(1,1);

/*!40000 ALTER TABLE `v_setting` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table v_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `v_user`;

CREATE TABLE `v_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `avatar` varchar(100) NOT NULL,
  `mobile` varchar(13) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `subscribe` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `v_user` WRITE;
/*!40000 ALTER TABLE `v_user` DISABLE KEYS */;

INSERT INTO `v_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nickname`, `avatar`, `mobile`, `gender`, `subscribe`)
VALUES
	(1,'pbkdf2_sha256$120000$UKrjmEuuGSxP$gXCRNpZ02Uy5pdn3qyNfRoYJq42fs1j9NasOd5Lfby4=','2019-01-20 15:29:30.430016',1,'admin','','','admin@qq.com',1,1,'2018-12-21 21:41:01.802983','honghong','avatar/pic01_Ti4dUqw.jpg','13355555555','F',0),
	(4,'pbkdf2_sha256$120000$saphhlOTGW3h$PqRSdQjlJOSC10+PJFkdFXXFj1aJBk4KHJ+F5yxt/8w=','2018-12-24 21:12:13.461218',0,'admin1','','','123@126.com',0,1,'2018-12-24 21:12:13.150369',NULL,'',NULL,NULL,0),
	(5,'pbkdf2_sha256$120000$jcRceipDGyHC$uTgZegBJ6WMCjadJbKXNIbGj0chugx9kjEA1qeijjnQ=','2019-01-31 20:50:20.815026',0,'admin123','','','123@126.com',1,1,'2018-12-24 22:02:19.217985',NULL,'',NULL,NULL,0),
	(16,'pbkdf2_sha256$120000$IRBOm41dwB7X$LSgb7Q+h0NsYE4XnoL1Vo7NMJqPsOJRjIb0oUVZOnfI=','2018-12-28 11:13:42.657616',0,'admin2','','','',0,1,'2018-12-28 11:13:42.376521',NULL,'',NULL,NULL,1);

/*!40000 ALTER TABLE `v_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table v_user_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `v_user_groups`;

CREATE TABLE `v_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `v_user_groups_user_id_group_id_181960ee_uniq` (`user_id`,`group_id`),
  KEY `v_user_groups_group_id_093f4f09_fk_auth_group_id` (`group_id`),
  CONSTRAINT `v_user_groups_group_id_093f4f09_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `v_user_groups_user_id_3060ec8d_fk_v_user_id` FOREIGN KEY (`user_id`) REFERENCES `v_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table v_user_user_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `v_user_user_permissions`;

CREATE TABLE `v_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `v_user_user_permissions_user_id_permission_id_59f63728_uniq` (`user_id`,`permission_id`),
  KEY `v_user_user_permissi_permission_id_2554fa24_fk_auth_perm` (`permission_id`),
  CONSTRAINT `v_user_user_permissi_permission_id_2554fa24_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `v_user_user_permissions_user_id_42f12dcf_fk_v_user_id` FOREIGN KEY (`user_id`) REFERENCES `v_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table v_video
# ------------------------------------------------------------

DROP TABLE IF EXISTS `v_video`;

CREATE TABLE `v_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `file` varchar(255) NOT NULL,
  `view_count` int(11) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `status` varchar(1) DEFAULT NULL,
  `cover` varchar(100) DEFAULT NULL,
  `classification_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `v_video_classification_id_93a19823_fk_v_classification_id` (`classification_id`),
  CONSTRAINT `v_video_classification_id_93a19823_fk_v_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `v_classification` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `v_video` WRITE;
/*!40000 ALTER TABLE `v_video` DISABLE KEYS */;

INSERT INTO `v_video` (`id`, `title`, `desc`, `file`, `view_count`, `create_time`, `status`, `cover`, `classification_id`)
VALUES
	(64,'兄弟熊猫动画','兄弟熊猫动画我是描述测试我是描述测试我是描述测试我是描述测试','chunked_uploads/2018/12/29/183704c7bb68464eaa1a6002b9c94244.part',12,'2018-12-29 20:09:16.368624','0','cover/pic02_CWj4gGy.jpg',2),
	(70,'Java 与js的区别','Java 与js的区别','chunked_uploads/2019/01/15/3ed4ea2ce20f4e8a895cd1e661490aa2.part',0,'2019-01-15 16:04:04.324524','0','cover/2.jpeg',2),
	(71,'如何学习javascript','如何学习js','chunked_uploads/2019/01/15/500e6c178fb449ce9b97cd08f0c160b4.part',1,'2019-01-15 16:04:50.905768','0','cover/3.png',2),
	(72,'python的学习步骤','python的学习步骤','chunked_uploads/2019/01/15/66b8b1392939480996fac6b724529d49.part',1,'2019-01-15 16:05:26.934390','0','cover/6.jpeg',2),
	(73,'python测试视频演示','python测试视频演示','chunked_uploads/2019/01/15/0baf609be9924a30afd5294cf9678fd7.part',1,'2019-01-15 16:05:55.038125','0','cover/7.jpeg',2),
	(74,'python视频测试视频','python视频测试视频','chunked_uploads/2019/01/15/13f828ace3af44dbb709d5f6bba42eb8.part',2,'2019-01-15 16:06:28.238953','0','cover/1.jpeg',2),
	(75,'java中的继承是什么','java中的继承是什么','chunked_uploads/2019/01/15/f0b9357e4e144344a80ea62c4113f315.part',0,'2019-01-15 16:07:10.799611','0','cover/13.jpeg',2),
	(76,'哈登开场拿到10分','哈登开场拿到10分','chunked_uploads/2019/01/15/56d265866afe41ecb7a15dc16b90ddbe.part',0,'2019-01-15 16:08:03.188233','0','cover/1_da435tY.jpeg',16),
	(77,'哈登投篮走步','哈登投篮走步','chunked_uploads/2019/01/15/c48cbf878b40451c8c2d1c15e27b2dfc.part',1,'2019-01-15 16:08:39.264774','0','cover/2_sCFXv6m.jpeg',16),
	(78,'库里三分球达到历史第三','库里三分球达到历史第三','chunked_uploads/2019/01/15/f3ae773eb253468a9b799b782c17afc5.part',0,'2019-01-15 16:09:08.572288','0','cover/4.jpeg',16),
	(79,'科比戏耍对手不留情','科比戏耍对手不留情','chunked_uploads/2019/01/15/6f5de72b7bde4fba827b065899ff1dd5.part',0,'2019-01-15 16:09:39.167932','0','cover/3.jpeg',16),
	(80,'梅西与C罗谁更牛逼','梅西与C罗谁更牛逼','chunked_uploads/2019/01/15/10182e59b49642db88836fee8ac27788.part',0,'2019-01-15 16:10:11.326998','0','cover/5_HHmRu6A.jpg',16),
	(81,'欧冠足球先生热门人选','欧冠足球先生热门人选','chunked_uploads/2019/01/15/df5cb965f85d417dbe1e7de87a4abcaa.part',10,'2019-01-15 16:10:39.808060','0','cover/7_lgZTnwP.jpeg',16),
	(82,'港股危机','港股危机','chunked_uploads/2019/01/15/e7802f5689984fc1b2526a471016c936.part',0,'2019-01-15 16:11:37.473585','0','cover/0.jpeg',3),
	(83,'美股与港股你更看好谁','12333333','chunked_uploads/2019/01/15/99105ba60e8846729ccc2635c9f981e8.part',0,'2019-01-15 16:12:03.329901','0','cover/1_GFrZ9Mn.jpeg',3),
	(84,'美股史上最大跌幅','美股史上最大跌幅','chunked_uploads/2019/01/15/34826153d354493a947d425bb8cfd52c.part',4,'2019-01-15 16:12:29.893511','0','cover/8.jpeg',3),
	(85,'美股市值最高的公司','美股市值最高的公司','chunked_uploads/2019/01/15/39fd5e6fbd7f4f7ab570b9135916b4a9.part',1,'2019-01-15 16:12:54.324564','0','cover/9.jpeg',3),
	(86,'java教学演示动画','java教学演示动画java教学演示动画java教学演示动画java教学演示动画java教学演示动画java教学演示动画java教学演示动画java教学演示动画','chunked_uploads/2019/01/15/9aedd652165c43e99b50a791d23a89d0.part',16,'2019-01-15 16:16:02.387382','0','cover/12.jpeg',2),
	(87,'java教学视频讲解','java教学视频讲解java教学视频讲解java教学视频讲解java教学视频讲解java教学视频讲解','chunked_uploads/2019/01/15/1ff3e1103ef44c78b6183f1bc5c8d4f3.part',3,'2019-01-15 21:58:12.751222','0','cover/11.png',2);

/*!40000 ALTER TABLE `v_video` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table v_video_collected
# ------------------------------------------------------------

DROP TABLE IF EXISTS `v_video_collected`;

CREATE TABLE `v_video_collected` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `v_video_collected_video_id_user_id_33a7fb4a_uniq` (`video_id`,`user_id`),
  KEY `v_video_collected_user_id_deef7260_fk_v_user_id` (`user_id`),
  CONSTRAINT `v_video_collected_user_id_deef7260_fk_v_user_id` FOREIGN KEY (`user_id`) REFERENCES `v_user` (`id`),
  CONSTRAINT `v_video_collected_video_id_1d87532f_fk_v_video_id` FOREIGN KEY (`video_id`) REFERENCES `v_video` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `v_video_collected` WRITE;
/*!40000 ALTER TABLE `v_video_collected` DISABLE KEYS */;

INSERT INTO `v_video_collected` (`id`, `video_id`, `user_id`)
VALUES
	(16,64,1),
	(21,71,1),
	(22,72,1),
	(23,73,1),
	(20,74,1),
	(18,81,1),
	(19,84,1),
	(15,86,1),
	(17,87,1);

/*!40000 ALTER TABLE `v_video_collected` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table v_video_liked
# ------------------------------------------------------------

DROP TABLE IF EXISTS `v_video_liked`;

CREATE TABLE `v_video_liked` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `v_video_liked_video_id_user_id_cb0f632c_uniq` (`video_id`,`user_id`),
  KEY `v_video_liked_user_id_0bfd570d_fk_v_user_id` (`user_id`),
  CONSTRAINT `v_video_liked_user_id_0bfd570d_fk_v_user_id` FOREIGN KEY (`user_id`) REFERENCES `v_user` (`id`),
  CONSTRAINT `v_video_liked_video_id_6f2c2405_fk_v_video_id` FOREIGN KEY (`video_id`) REFERENCES `v_video` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `v_video_liked` WRITE;
/*!40000 ALTER TABLE `v_video_liked` DISABLE KEYS */;

INSERT INTO `v_video_liked` (`id`, `video_id`, `user_id`)
VALUES
	(17,64,1),
	(20,71,1),
	(21,72,1),
	(22,73,1),
	(19,74,1),
	(15,81,1),
	(18,84,1),
	(16,87,1);

/*!40000 ALTER TABLE `v_video_liked` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
