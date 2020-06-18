/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50527
Source Host           : 127.0.0.1:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2020-06-18 12:37:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_blog`
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `appreciation` bit(1) NOT NULL,
  `commentabled` bit(1) NOT NULL,
  `content` longtext COLLATE utf8_bin,
  `create_time` datetime DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `first_picture` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `flag` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `published` bit(1) NOT NULL,
  `recommend` bit(1) NOT NULL,
  `share_statement` bit(1) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK292449gwg5yf7ocdlmswv9w4j` (`type_id`),
  KEY `FK8ky5rrsxh01nkhctmo7d48p82` (`user_id`),
  CONSTRAINT `FK292449gwg5yf7ocdlmswv9w4j` FOREIGN KEY (`type_id`) REFERENCES `t_type` (`id`),
  CONSTRAINT `FK8ky5rrsxh01nkhctmo7d48p82` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_blog
-- ----------------------------
INSERT INTO `t_blog` VALUES ('1', '', '', 0x23E69C80E7BE8EE9A38EE699AFEFBC8C20E5B0B1E59CA8E699B4E5B79D0D0AE58589E998B4E4BCBCE7AEADEFBC8CE697A5E69C88E5A682E6A2ADEFBC8CE59B9BE5B9B4E79A84E5A4A7E5ADA6E697B6E58589E5A682E6B581E6B299E888ACE79A84E4BB8EE68C87E997B4E58892E8BF87EFBC8CE4BD9CE4B8BAE6ADA6E6B189E699B4E5B79DE5ADA6E999A2E79A84E8BDAFE4BBB6E5B7A5E7A88BE4B893E4B89AE79A84E4B880E5908DE58DB3E5B086E6AF95E4B89AE79A84E5A4A7E59B9BE5ADA6E7949FEFBC8CE68891E8A789E5BE97E6ADA4E588BBE68891E5BF85E9A1BBE5B086E68891E5AFB9E699B4E5B79DE79A84E6849FE68385E8A1A8E8BEBEE587BAE69DA5E380820D0A0D0AE68891E5AFB9E8BF99E4B8AAE68891E7949FE6B4BBE4BA86E59B9BE5B9B4E79A84E59CB0E696B9E69C89E79D80E697A0E7A9B7E79A84E783ADE788B1EFBC8CE8939DE5A4A9E38081E799BDE4BA91E38081E99D92E5B1B1E38081E7BBBFE6B0B4E6ADA3E698AFE699B4E5B79DE79A84E5ADA6E999A2E79A84E58699E785A7EFBC8CE6AF8FE6AF8FE99BA8E5A4A9E58D8AE5B1B1E885B0E79A84E4BA91E99BBEE680BBE883BDE58BBEE8B5B7E68891E4BBACE697A0E7A9B7E79A84E98190E683B3EFBC8CE5A495E998B3E4B88BE79A84E697A0E5B0BDE79A84E7BE8EE8AEA9E68891E4BBACE6B581E8BF9EE5BF98E8BF94E38082E59B9BE5B9B4E5898DE68B96E79D80E8A18CE69D8EE7AEB1E69DA5E588B0E699B4E5B79DE79A84E68385E699AFE4BBBFE4BD9BE5B0B1E59CA8E698A8E5A4A9E380820D0A0D0A215B5D2868747470733A2F2F70696373756D2E70686F746F732F69642F302F353631362F3337343429, '2020-05-23 00:55:17', '关于晴川的一些记忆', 'https://picsum.photos/id/103/2592/1936', '', '', '', '', '最美风景， 就在晴川', '2020-05-23 00:55:17', '9', '1', '1');
INSERT INTO `t_blog` VALUES ('2', '', '', 0x0D0A215B5D2868747470733A2F2F692E70696373756D2E70686F746F732F69642F3132392F343931302F333235322E6A706729, '2020-05-23 01:14:32', '我的那些朋友们', 'https://picsum.photos/id/155/3264/2176', '', '', '', '', '不断学习进步', '2020-05-26 01:02:48', '23', '3', '1');

-- ----------------------------
-- Table structure for `t_blog_tags`
-- ----------------------------
DROP TABLE IF EXISTS `t_blog_tags`;
CREATE TABLE `t_blog_tags` (
  `blogs_id` bigint(20) NOT NULL,
  `tags_id` bigint(20) NOT NULL,
  KEY `FK5feau0gb4lq47fdb03uboswm8` (`tags_id`),
  KEY `FKh4pacwjwofrugxa9hpwaxg6mr` (`blogs_id`),
  CONSTRAINT `FK5feau0gb4lq47fdb03uboswm8` FOREIGN KEY (`tags_id`) REFERENCES `t_tag` (`id`),
  CONSTRAINT `FKh4pacwjwofrugxa9hpwaxg6mr` FOREIGN KEY (`blogs_id`) REFERENCES `t_blog` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_blog_tags
-- ----------------------------
INSERT INTO `t_blog_tags` VALUES ('1', '1');
INSERT INTO `t_blog_tags` VALUES ('1', '2');
INSERT INTO `t_blog_tags` VALUES ('2', '3');
INSERT INTO `t_blog_tags` VALUES ('2', '4');

-- ----------------------------
-- Table structure for `t_comment`
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_comment` bit(1) NOT NULL,
  `avatar` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `nickname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `blog_id` bigint(20) DEFAULT NULL,
  `parent_comment_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKke3uogd04j4jx316m1p51e05u` (`blog_id`),
  KEY `FK4jj284r3pb7japogvo6h72q95` (`parent_comment_id`),
  CONSTRAINT `FK4jj284r3pb7japogvo6h72q95` FOREIGN KEY (`parent_comment_id`) REFERENCES `t_comment` (`id`),
  CONSTRAINT `FKke3uogd04j4jx316m1p51e05u` FOREIGN KEY (`blog_id`) REFERENCES `t_blog` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES ('1', '', 'https://unsplash.it/100/100?image=10\'https://unsplash.it/100/100?image=10055', '这个博客还挺好看的', '2020-05-23 00:59:56', '1457064312@qq.com', '管理员', '1', null);

-- ----------------------------
-- Table structure for `t_tag`
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_tag
-- ----------------------------
INSERT INTO `t_tag` VALUES ('1', 'java');
INSERT INTO `t_tag` VALUES ('2', '晴川记忆');
INSERT INTO `t_tag` VALUES ('3', '程序人生');
INSERT INTO `t_tag` VALUES ('4', '我的那些朋友们');

-- ----------------------------
-- Table structure for `t_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES ('1', '情感');
INSERT INTO `t_type` VALUES ('2', '技术');
INSERT INTO `t_type` VALUES ('3', '朋友们');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `nickname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'https://unsplash.it/100/100?image=10\'https://unsplash.it/100/100?image=10055', '2017-10-15 12:36:23', 'hh@163.com', '管理员', '96e79218965eb72c92a549dd5a330112', '1', '2017-10-15 12:36:04', 'admin');
INSERT INTO `t_user` VALUES ('2', 'https://unsplash.it/100/100?image=10\'https://unsplash.it/100/100?image=10055', '2017-10-15 12:36:23', '1457064312@qq.com', 'liuyuan', '123', '0', '2017-10-15 12:36:04', 'liuyuan');
