/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50536
Source Host           : localhost:3306
Source Database       : java_0518

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2021-05-31 18:58:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_commodity`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_commodity`;
CREATE TABLE `tbl_commodity` (
  `id` char(50) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `version` char(50) DEFAULT NULL,
  `space` char(10) DEFAULT NULL,
  `size` char(10) DEFAULT NULL,
  `color` char(10) DEFAULT NULL,
  `money` char(10) DEFAULT NULL,
  `image` char(50) DEFAULT NULL,
  `typeId` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_commodity
-- ----------------------------



-- ----------------------------
-- Table structure for `tbl_commoditytype`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_commoditytype`;
CREATE TABLE `tbl_commoditytype` (
  `id` char(50) NOT NULL,
  `typeName` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_commoditytype
-- ----------------------------



-- ----------------------------
-- Table structure for `tbl_shopping`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_shopping`;
CREATE TABLE `tbl_shopping` (
  `id` char(50) NOT NULL,
  `userAddr` varchar(50) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `commName` char(50) DEFAULT NULL,
  `commVersion` char(50) DEFAULT NULL,
  `commSpace` char(50) DEFAULT NULL,
  `commSize` char(50) DEFAULT NULL,
  `commColor` char(50) DEFAULT NULL,
  `commMoney` char(50) DEFAULT NULL,
  `commTypeName` char(50) DEFAULT NULL,
  `userId` char(50) DEFAULT NULL,
  `commId` char(50) DEFAULT NULL,
  `commTypeId` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_shopping
-- ----------------------------



-- ----------------------------
-- Table structure for `tbl_tran_his`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tran_his`;
CREATE TABLE `tbl_tran_his` (
  `id` char(50) NOT NULL,
  `userName` char(50) DEFAULT NULL,
  `commName` char(50) DEFAULT NULL,
  `commVersion` char(50) DEFAULT NULL,
  `commSpace` char(50) DEFAULT NULL,
  `commSize` char(50) DEFAULT NULL,
  `commColor` char(50) DEFAULT NULL,
  `commMoney` char(50) DEFAULT NULL,
  `createTime` char(50) DEFAULT NULL,
  `createBy` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_tran_his
-- ----------------------------



-- ----------------------------
-- Table structure for `tbl_user`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` char(32) NOT NULL COMMENT 'uuid\r\n            ',
  `name` varchar(255) NOT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `tel` char(19) DEFAULT NULL COMMENT ,
  `addr` char(20) DEFAULT NULL,
  `remark` char(19) DEFAULT NULL COMMENT ,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------

