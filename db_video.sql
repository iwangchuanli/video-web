/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : db_video

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-06-04 15:08:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissions_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_ibfk_1` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can view content type', '4', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('17', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('20', 'Can view session', '5', 'view_session');
INSERT INTO `auth_permission` VALUES ('21', 'Can add kv store', '6', 'add_kvstore');
INSERT INTO `auth_permission` VALUES ('22', 'Can change kv store', '6', 'change_kvstore');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete kv store', '6', 'delete_kvstore');
INSERT INTO `auth_permission` VALUES ('24', 'Can view kv store', '6', 'view_kvstore');
INSERT INTO `auth_permission` VALUES ('25', 'Can add classification', '7', 'add_classification');
INSERT INTO `auth_permission` VALUES ('26', 'Can change classification', '7', 'change_classification');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete classification', '7', 'delete_classification');
INSERT INTO `auth_permission` VALUES ('28', 'Can view classification', '7', 'view_classification');
INSERT INTO `auth_permission` VALUES ('29', 'Can add video', '8', 'add_video');
INSERT INTO `auth_permission` VALUES ('30', 'Can change video', '8', 'change_video');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete video', '8', 'delete_video');
INSERT INTO `auth_permission` VALUES ('32', 'Can view video', '8', 'view_video');
INSERT INTO `auth_permission` VALUES ('33', 'Can add user', '9', 'add_user');
INSERT INTO `auth_permission` VALUES ('34', 'Can change user', '9', 'change_user');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete user', '9', 'delete_user');
INSERT INTO `auth_permission` VALUES ('36', 'Can view user', '9', 'view_user');
INSERT INTO `auth_permission` VALUES ('37', 'Can add feedback', '10', 'add_feedback');
INSERT INTO `auth_permission` VALUES ('38', 'Can change feedback', '10', 'change_feedback');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete feedback', '10', 'delete_feedback');
INSERT INTO `auth_permission` VALUES ('40', 'Can view feedback', '10', 'view_feedback');
INSERT INTO `auth_permission` VALUES ('41', 'Can add my chunked upload', '11', 'add_mychunkedupload');
INSERT INTO `auth_permission` VALUES ('42', 'Can change my chunked upload', '11', 'change_mychunkedupload');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete my chunked upload', '11', 'delete_mychunkedupload');
INSERT INTO `auth_permission` VALUES ('44', 'Can view my chunked upload', '11', 'view_mychunkedupload');
INSERT INTO `auth_permission` VALUES ('45', 'Can add comment', '12', 'add_comment');
INSERT INTO `auth_permission` VALUES ('46', 'Can change comment', '12', 'change_comment');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete comment', '12', 'delete_comment');
INSERT INTO `auth_permission` VALUES ('48', 'Can view comment', '12', 'view_comment');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
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
  CONSTRAINT `django_admin_log_ibfk_1` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `v_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('12', 'comment', 'comment');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('11', 'myadmin', 'mychunkedupload');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('6', 'thumbnail', 'kvstore');
INSERT INTO `django_content_type` VALUES ('10', 'users', 'feedback');
INSERT INTO `django_content_type` VALUES ('9', 'users', 'user');
INSERT INTO `django_content_type` VALUES ('7', 'video', 'classification');
INSERT INTO `django_content_type` VALUES ('8', 'video', 'video');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2019-05-30 10:06:32.063047');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2019-05-30 10:06:32.106898');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2019-05-30 10:06:32.193694');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2019-05-30 10:06:32.218599');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2019-05-30 10:06:32.224583');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2019-05-30 10:06:32.232561');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2019-05-30 10:06:32.239550');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2019-05-30 10:06:32.245531');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2019-05-30 10:06:32.254503');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2019-05-30 10:06:32.262487');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0009_alter_user_last_name_max_length', '2019-05-30 10:06:32.273484');
INSERT INTO `django_migrations` VALUES ('12', 'users', '0001_initial', '2019-05-30 10:06:32.393132');
INSERT INTO `django_migrations` VALUES ('13', 'admin', '0001_initial', '2019-05-30 10:06:32.435021');
INSERT INTO `django_migrations` VALUES ('14', 'admin', '0002_logentry_remove_auto_add', '2019-05-30 10:06:32.447986');
INSERT INTO `django_migrations` VALUES ('15', 'admin', '0003_logentry_add_action_flag_choices', '2019-05-30 10:06:32.455974');
INSERT INTO `django_migrations` VALUES ('16', 'sessions', '0001_initial', '2019-05-30 10:06:32.488876');
INSERT INTO `django_migrations` VALUES ('17', 'thumbnail', '0001_initial', '2019-05-30 10:06:32.504865');
INSERT INTO `django_migrations` VALUES ('18', 'video', '0001_initial', '2019-05-30 10:06:32.633490');
INSERT INTO `django_migrations` VALUES ('19', 'comment', '0001_initial', '2019-06-04 14:05:56.930616');
INSERT INTO `django_migrations` VALUES ('20', 'myadmin', '0001_initial', '2019-06-04 14:06:17.825377');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('a5mhsua6ew91qbl09dwb39oe0hoag885', 'NTIwOTBmY2ZjMTkyYzk3NDBhZGY5M2Y0OTY0YTQ5ZjhjZmQ3ZjIyYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjYTU4YmU3MmYzNDk4MWI5MWJlM2JkNDQxMzFiZTZjYzBlOWM1ZTA1In0=', '2019-06-18 14:26:37.847046');
INSERT INTO `django_session` VALUES ('mrfsipdvsz07k9onjk3ihnbsbn887v4l', 'NTIwOTBmY2ZjMTkyYzk3NDBhZGY5M2Y0OTY0YTQ5ZjhjZmQ3ZjIyYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjYTU4YmU3MmYzNDk4MWI5MWJlM2JkNDQxMzFiZTZjYzBlOWM1ZTA1In0=', '2019-06-18 15:07:53.799754');

-- ----------------------------
-- Table structure for myadmin_mychunkedupload
-- ----------------------------
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
  CONSTRAINT `myadmin_mychunkedupload_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `v_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myadmin_mychunkedupload
-- ----------------------------
INSERT INTO `myadmin_mychunkedupload` VALUES ('1', 'f3825da983db486584acc25d1df35c51', 'chunked_uploads/2019/06/04/f3825da983db486584acc25d1df35c51.part', 'StartMenu_Win10.mp4', '125179', '2019-06-04 14:12:05.734144', '2', '2019-06-04 14:12:06.068279', '3');

-- ----------------------------
-- Table structure for thumbnail_kvstore
-- ----------------------------
DROP TABLE IF EXISTS `thumbnail_kvstore`;
CREATE TABLE `thumbnail_kvstore` (
  `key` varchar(200) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thumbnail_kvstore
-- ----------------------------
INSERT INTO `thumbnail_kvstore` VALUES ('sorl-thumbnail||image||ab3ac2e5aafaa2c50e8806ccea6858fe', '{\"name\": \"cache/96/9d/969d476c538ebd342f2b77ee5e7d0ba4.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 200]}');
INSERT INTO `thumbnail_kvstore` VALUES ('sorl-thumbnail||image||d194b3281dedd281c05830950aa488cc', '{\"name\": \"cover/5.png\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [300, 300]}');
INSERT INTO `thumbnail_kvstore` VALUES ('sorl-thumbnail||thumbnails||d194b3281dedd281c05830950aa488cc', '[\"ab3ac2e5aafaa2c50e8806ccea6858fe\"]');

-- ----------------------------
-- Table structure for v_classification
-- ----------------------------
DROP TABLE IF EXISTS `v_classification`;
CREATE TABLE `v_classification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_classification
-- ----------------------------
INSERT INTO `v_classification` VALUES ('1', 'test', '1');

-- ----------------------------
-- Table structure for v_comment
-- ----------------------------
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
  CONSTRAINT `v_comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `v_user` (`id`),
  CONSTRAINT `v_comment_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `v_video` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_comment
-- ----------------------------
INSERT INTO `v_comment` VALUES ('1', null, '', 'nice', '2019-06-04 15:08:00.118883', '2', '1');

-- ----------------------------
-- Table structure for v_feedback
-- ----------------------------
DROP TABLE IF EXISTS `v_feedback`;
CREATE TABLE `v_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact` varchar(20) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `timestamp` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for v_user
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_user
-- ----------------------------
INSERT INTO `v_user` VALUES ('1', 'pbkdf2_sha256$120000$T1PtHrJOkWhZ$NJeLcc8qSu6wY5z3yWYN4LPWYohfWy0CT6pWnmFhbO8=', '2019-06-04 13:33:47.321695', '0', 'admin', '', '', '978252321@qq.com', '0', '1', '2019-05-30 10:08:09.016318', 'anonymity', '', '', 'M', '0');
INSERT INTO `v_user` VALUES ('2', 'pbkdf2_sha256$120000$QOAbdznmwts5$bOVvBnWtNIdFVcFTOiHUC/mWIaj9rHP/mEz7V/uChSw=', '2019-06-04 15:07:53.790777', '1', 'wangcl', '', '', '', '0', '1', '2019-06-04 13:35:03.396119', null, '', null, null, '0');
INSERT INTO `v_user` VALUES ('3', 'pbkdf2_sha256$120000$CaVxZNM6uFZb$uNw+2+faiDMM0Q9F6NzZfW8psgCtxodi4n6q64Hlnlo=', '2019-06-04 13:59:26.514330', '1', 'adminwangcl', '', '', '978252321@qq.com', '1', '1', '2019-06-04 13:58:43.355752', null, '', null, null, '0');

-- ----------------------------
-- Table structure for v_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `v_user_groups`;
CREATE TABLE `v_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `v_user_groups_user_id_group_id_181960ee_uniq` (`user_id`,`group_id`),
  KEY `v_user_groups_group_id_093f4f09_fk_auth_group_id` (`group_id`),
  CONSTRAINT `v_user_groups_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `v_user_groups_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `v_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for v_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `v_user_user_permissions`;
CREATE TABLE `v_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `v_user_user_permissions_user_id_permission_id_59f63728_uniq` (`user_id`,`permission_id`),
  KEY `v_user_user_permissi_permission_id_2554fa24_fk_auth_perm` (`permission_id`),
  CONSTRAINT `v_user_user_permissions_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `v_user_user_permissions_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `v_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for v_video
-- ----------------------------
DROP TABLE IF EXISTS `v_video`;
CREATE TABLE `v_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `file` varchar(255) NOT NULL,
  `cover` varchar(100) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `view_count` int(11) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `classification_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `v_video_classification_id_93a19823_fk_v_classification_id` (`classification_id`),
  CONSTRAINT `v_video_ibfk_1` FOREIGN KEY (`classification_id`) REFERENCES `v_classification` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_video
-- ----------------------------
INSERT INTO `v_video` VALUES ('1', 'test_win10', 'test_win10 desc', 'chunked_uploads/2019/06/04/f3825da983db486584acc25d1df35c51.part', 'cover/5.png', '0', '3', '2019-06-04 14:12:06.071243', '1');
INSERT INTO `v_video` VALUES ('2', 'test_f', 'test_flex', 'https://ksv-video-publish.cdn.bcebos.com/c37d7dd48f418a4b28df344a9fd0dbaf1b3bb7d3.mp4?auth_key=1562144885-0-0-4006b0042d68eaeda5c5d95408ef2dd5', 'cover/5.png', '0', '3', '2019-06-04 14:38:59.071243', '1');

-- ----------------------------
-- Table structure for v_video_collected
-- ----------------------------
DROP TABLE IF EXISTS `v_video_collected`;
CREATE TABLE `v_video_collected` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `v_video_collected_video_id_user_id_33a7fb4a_uniq` (`video_id`,`user_id`),
  KEY `v_video_collected_user_id_deef7260_fk_v_user_id` (`user_id`),
  CONSTRAINT `v_video_collected_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `v_user` (`id`),
  CONSTRAINT `v_video_collected_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `v_video` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_video_collected
-- ----------------------------
INSERT INTO `v_video_collected` VALUES ('1', '1', '2');

-- ----------------------------
-- Table structure for v_video_liked
-- ----------------------------
DROP TABLE IF EXISTS `v_video_liked`;
CREATE TABLE `v_video_liked` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `v_video_liked_video_id_user_id_cb0f632c_uniq` (`video_id`,`user_id`),
  KEY `v_video_liked_user_id_0bfd570d_fk_v_user_id` (`user_id`),
  CONSTRAINT `v_video_liked_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `v_user` (`id`),
  CONSTRAINT `v_video_liked_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `v_video` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_video_liked
-- ----------------------------
INSERT INTO `v_video_liked` VALUES ('1', '1', '2');
