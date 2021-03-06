/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_3306
Source Server Version : 50519
Source Host           : 127.0.0.1:3306
Source Database       : sems

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2017-04-10 14:27:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `findpass` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '管理员', '123', '000', '我是谁', '1');
INSERT INTO `admin` VALUES ('2', 'Tom1', '456', '456', '测试1', '0');
INSERT INTO `admin` VALUES ('3', 'Tom2', '457', '456', '测试1', '0');
INSERT INTO `admin` VALUES ('4', 'Tom3', '458', '456', '测试1', '0');
INSERT INTO `admin` VALUES ('5', 'Tom4', '459', '456', '测试1', '0');
INSERT INTO `admin` VALUES ('6', 'Tom5', '450', '456', '测试1', '0');

-- ----------------------------
-- Table structure for datas
-- ----------------------------
DROP TABLE IF EXISTS `datas`;
CREATE TABLE `datas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_datas` int(11) DEFAULT NULL,
  `tem` int(11) DEFAULT NULL,
  `hum` int(11) DEFAULT NULL,
  `pm25` int(11) DEFAULT NULL,
  `smog` int(11) DEFAULT NULL,
  `light` int(11) DEFAULT NULL,
  `noise` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5AF0609BE700B31` (`device_datas`),
  CONSTRAINT `FK5AF0609BE700B31` FOREIGN KEY (`device_datas`) REFERENCES `device` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=766 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of datas
-- ----------------------------
INSERT INTO `datas` VALUES ('1', '1', '100', '200', '10', '14', '20', '50', '2017-04-06 13:10:15');
INSERT INTO `datas` VALUES ('2', '2', '8', '82', '8', '50', '40', '22', '2017-04-04 15:25:16');
INSERT INTO `datas` VALUES ('3', '3', '0', '52', '12', '68', '15', '65', '2017-04-04 15:25:26');
INSERT INTO `datas` VALUES ('4', '4', '3', '4', '8', '147', '56', '52', '2017-04-04 15:25:36');
INSERT INTO `datas` VALUES ('5', '5', '1', '21', '0', '137', '1', '9', '2017-04-04 15:25:46');
INSERT INTO `datas` VALUES ('6', '2', '4', '101', '24', '73', '120', '129', '2017-04-04 15:25:56');
INSERT INTO `datas` VALUES ('7', '2', '8', '39', '13', '131', '107', '57', '2017-04-05 15:26:06');
INSERT INTO `datas` VALUES ('464', '1', '26', '28', '111', '20', '48', '65535', '2017-04-06 18:32:50');
INSERT INTO `datas` VALUES ('465', '1', '26', '28', '113', '27', '48', '65535', '2017-04-06 18:32:52');
INSERT INTO `datas` VALUES ('466', '1', '27', '24', '106', '19', '48', '65535', '2017-04-06 18:32:53');
INSERT INTO `datas` VALUES ('467', '1', '27', '22', '106', '26', '48', '65535', '2017-04-06 18:32:55');
INSERT INTO `datas` VALUES ('468', '1', '27', '22', '101', '12', '48', '65535', '2017-04-06 18:32:57');
INSERT INTO `datas` VALUES ('469', '1', '27', '22', '100', '20', '48', '65535', '2017-04-06 18:32:59');
INSERT INTO `datas` VALUES ('470', '1', '26', '20', '105', '20', '48', '65535', '2017-04-06 18:33:01');
INSERT INTO `datas` VALUES ('471', '1', '26', '20', '119', '3', '26', '65535', '2017-04-06 18:33:03');
INSERT INTO `datas` VALUES ('472', '1', '26', '18', '115', '26', '47', '65535', '2017-04-06 18:33:04');
INSERT INTO `datas` VALUES ('473', '1', '26', '18', '117', '26', '48', '65535', '2017-04-06 18:33:06');
INSERT INTO `datas` VALUES ('474', '1', '26', '19', '107', '19', '48', '65535', '2017-04-06 18:33:08');
INSERT INTO `datas` VALUES ('475', '1', '26', '17', '114', '3', '41', '65535', '2017-04-06 18:33:10');
INSERT INTO `datas` VALUES ('476', '1', '26', '17', '434', '3', '36', '65535', '2017-04-06 18:33:12');
INSERT INTO `datas` VALUES ('477', '1', '26', '17', '434', '3', '36', '65535', '2017-04-06 18:33:14');
INSERT INTO `datas` VALUES ('478', '1', '26', '17', '434', '3', '47', '65535', '2017-04-06 18:33:15');
INSERT INTO `datas` VALUES ('479', '1', '26', '17', '433', '21', '47', '65535', '2017-04-06 18:33:17');
INSERT INTO `datas` VALUES ('480', '1', '26', '17', '433', '20', '14', '65535', '2017-04-06 18:33:19');
INSERT INTO `datas` VALUES ('481', '1', '26', '17', '434', '21', '0', '65535', '2017-04-06 18:33:21');
INSERT INTO `datas` VALUES ('482', '1', '26', '17', '433', '21', '0', '65535', '2017-04-06 18:33:23');
INSERT INTO `datas` VALUES ('483', '1', '26', '17', '434', '3', '1', '65535', '2017-04-06 18:33:24');
INSERT INTO `datas` VALUES ('484', '1', '26', '17', '433', '20', '47', '65535', '2017-04-06 18:33:26');
INSERT INTO `datas` VALUES ('485', '1', '26', '17', '434', '27', '47', '65535', '2017-04-06 18:33:28');
INSERT INTO `datas` VALUES ('486', '1', '26', '17', '434', '3', '47', '65535', '2017-04-06 18:33:30');
INSERT INTO `datas` VALUES ('487', '1', '26', '17', '114', '27', '47', '65535', '2017-04-06 18:33:32');
INSERT INTO `datas` VALUES ('488', '1', '26', '17', '103', '3', '47', '65535', '2017-04-06 18:33:34');
INSERT INTO `datas` VALUES ('489', '1', '26', '17', '109', '20', '47', '65535', '2017-04-06 18:33:35');
INSERT INTO `datas` VALUES ('490', '1', '26', '17', '118', '27', '47', '65535', '2017-04-06 18:33:37');
INSERT INTO `datas` VALUES ('491', '1', '26', '17', '117', '3', '46', '65535', '2017-04-06 18:33:39');
INSERT INTO `datas` VALUES ('492', '1', '26', '17', '124', '20', '46', '65535', '2017-04-06 18:33:41');
INSERT INTO `datas` VALUES ('493', '1', '26', '17', '127', '26', '46', '65535', '2017-04-06 18:33:43');
INSERT INTO `datas` VALUES ('494', '1', '26', '17', '106', '20', '47', '65535', '2017-04-06 18:33:44');
INSERT INTO `datas` VALUES ('495', '1', '26', '17', '99', '26', '47', '65535', '2017-04-06 18:33:46');
INSERT INTO `datas` VALUES ('496', '1', '26', '17', '110', '3', '48', '65535', '2017-04-06 18:33:48');
INSERT INTO `datas` VALUES ('497', '1', '26', '17', '117', '26', '48', '65535', '2017-04-06 18:33:50');
INSERT INTO `datas` VALUES ('498', '1', '26', '17', '107', '3', '48', '65535', '2017-04-06 18:33:52');
INSERT INTO `datas` VALUES ('499', '1', '26', '17', '106', '3', '48', '65535', '2017-04-06 18:33:54');
INSERT INTO `datas` VALUES ('500', '1', '26', '17', '118', '21', '48', '65535', '2017-04-06 18:33:55');
INSERT INTO `datas` VALUES ('501', '1', '26', '17', '108', '20', '48', '65535', '2017-04-06 18:33:57');
INSERT INTO `datas` VALUES ('502', '1', '26', '17', '118', '19', '48', '65535', '2017-04-06 18:33:59');
INSERT INTO `datas` VALUES ('503', '1', '26', '17', '107', '20', '48', '65535', '2017-04-06 18:34:01');
INSERT INTO `datas` VALUES ('504', '1', '26', '17', '105', '20', '48', '65535', '2017-04-06 18:34:03');
INSERT INTO `datas` VALUES ('505', '1', '26', '17', '98', '17', '44', '65535', '2017-04-06 18:34:05');
INSERT INTO `datas` VALUES ('506', '1', '26', '17', '108', '20', '46', '65535', '2017-04-06 18:34:06');
INSERT INTO `datas` VALUES ('507', '1', '26', '17', '108', '3', '46', '65535', '2017-04-06 18:34:08');
INSERT INTO `datas` VALUES ('508', '1', '26', '17', '96', '3', '46', '65535', '2017-04-06 18:34:10');
INSERT INTO `datas` VALUES ('509', '1', '26', '17', '120', '3', '45', '65535', '2017-04-06 18:34:12');
INSERT INTO `datas` VALUES ('510', '1', '26', '17', '105', '20', '47', '65535', '2017-04-06 18:34:14');
INSERT INTO `datas` VALUES ('511', '1', '26', '17', '124', '26', '46', '65535', '2017-04-06 18:34:15');
INSERT INTO `datas` VALUES ('512', '1', '26', '17', '114', '20', '46', '65535', '2017-04-06 18:34:17');
INSERT INTO `datas` VALUES ('513', '1', '26', '17', '115', '26', '46', '65535', '2017-04-06 18:34:19');
INSERT INTO `datas` VALUES ('514', '1', '26', '17', '104', '20', '47', '65535', '2017-04-06 18:34:21');
INSERT INTO `datas` VALUES ('515', '1', '26', '17', '100', '14', '46', '65535', '2017-04-06 18:34:23');
INSERT INTO `datas` VALUES ('516', '1', '26', '17', '119', '26', '46', '65535', '2017-04-06 18:34:25');
INSERT INTO `datas` VALUES ('517', '1', '26', '17', '108', '20', '46', '65535', '2017-04-06 18:34:26');
INSERT INTO `datas` VALUES ('518', '1', '26', '17', '107', '21', '46', '65535', '2017-04-06 18:34:28');
INSERT INTO `datas` VALUES ('519', '1', '26', '17', '117', '21', '47', '65535', '2017-04-06 18:34:30');
INSERT INTO `datas` VALUES ('520', '1', '26', '17', '111', '20', '47', '65535', '2017-04-06 18:34:32');
INSERT INTO `datas` VALUES ('521', '1', '26', '17', '123', '3', '46', '65535', '2017-04-06 18:34:34');
INSERT INTO `datas` VALUES ('522', '1', '26', '17', '111', '20', '46', '65535', '2017-04-06 18:34:36');
INSERT INTO `datas` VALUES ('523', '1', '26', '17', '125', '3', '46', '65535', '2017-04-06 18:34:37');
INSERT INTO `datas` VALUES ('524', '1', '26', '17', '113', '3', '47', '65535', '2017-04-06 18:34:39');
INSERT INTO `datas` VALUES ('525', '1', '26', '17', '108', '19', '47', '65535', '2017-04-06 18:34:41');
INSERT INTO `datas` VALUES ('526', '1', '26', '17', '103', '20', '47', '65535', '2017-04-06 18:34:43');
INSERT INTO `datas` VALUES ('527', '1', '26', '17', '112', '3', '47', '65535', '2017-04-06 18:34:45');
INSERT INTO `datas` VALUES ('528', '1', '26', '17', '110', '20', '47', '65535', '2017-04-06 18:34:46');
INSERT INTO `datas` VALUES ('529', '1', '26', '17', '121', '3', '47', '65535', '2017-04-06 18:34:48');
INSERT INTO `datas` VALUES ('530', '1', '26', '17', '111', '3', '47', '65535', '2017-04-06 18:34:50');
INSERT INTO `datas` VALUES ('531', '1', '26', '17', '103', '20', '47', '65535', '2017-04-06 18:34:52');
INSERT INTO `datas` VALUES ('532', '1', '26', '17', '117', '26', '47', '65535', '2017-04-06 18:34:54');
INSERT INTO `datas` VALUES ('533', '1', '26', '17', '118', '20', '47', '65535', '2017-04-06 18:34:56');
INSERT INTO `datas` VALUES ('534', '1', '26', '17', '113', '3', '46', '65535', '2017-04-06 18:34:57');
INSERT INTO `datas` VALUES ('535', '1', '26', '17', '115', '3', '47', '65535', '2017-04-06 18:34:59');
INSERT INTO `datas` VALUES ('536', '1', '26', '17', '112', '27', '47', '65535', '2017-04-06 18:35:01');
INSERT INTO `datas` VALUES ('537', '1', '26', '17', '119', '27', '47', '65535', '2017-04-06 18:35:03');
INSERT INTO `datas` VALUES ('538', '1', '26', '17', '123', '18', '47', '65535', '2017-04-06 18:35:05');
INSERT INTO `datas` VALUES ('539', '1', '26', '17', '112', '20', '47', '65535', '2017-04-06 18:35:06');
INSERT INTO `datas` VALUES ('540', '1', '26', '17', '120', '12', '47', '65535', '2017-04-06 18:35:08');
INSERT INTO `datas` VALUES ('541', '1', '26', '17', '108', '3', '47', '65535', '2017-04-06 18:35:10');
INSERT INTO `datas` VALUES ('542', '1', '26', '17', '123', '3', '47', '65535', '2017-04-06 18:35:12');
INSERT INTO `datas` VALUES ('543', '1', '26', '17', '122', '3', '47', '65535', '2017-04-06 18:35:14');
INSERT INTO `datas` VALUES ('544', '1', '26', '17', '114', '3', '47', '65535', '2017-04-06 18:35:16');
INSERT INTO `datas` VALUES ('545', '1', '26', '17', '111', '20', '47', '65535', '2017-04-06 18:35:17');
INSERT INTO `datas` VALUES ('546', '1', '26', '17', '109', '20', '47', '65535', '2017-04-06 18:35:19');
INSERT INTO `datas` VALUES ('547', '1', '26', '17', '107', '3', '47', '65535', '2017-04-06 18:35:21');
INSERT INTO `datas` VALUES ('548', '1', '26', '17', '111', '20', '47', '65535', '2017-04-06 18:35:23');
INSERT INTO `datas` VALUES ('549', '1', '26', '17', '111', '20', '47', '65535', '2017-04-06 18:35:25');
INSERT INTO `datas` VALUES ('550', '1', '26', '17', '104', '26', '47', '65535', '2017-04-06 18:35:27');
INSERT INTO `datas` VALUES ('551', '1', '26', '17', '120', '27', '47', '65535', '2017-04-06 18:35:28');
INSERT INTO `datas` VALUES ('552', '1', '26', '17', '107', '26', '47', '65535', '2017-04-06 18:35:30');
INSERT INTO `datas` VALUES ('553', '1', '26', '17', '121', '3', '47', '65535', '2017-04-06 18:35:32');
INSERT INTO `datas` VALUES ('554', '1', '26', '17', '112', '26', '47', '65535', '2017-04-06 18:35:34');
INSERT INTO `datas` VALUES ('555', '1', '26', '17', '105', '19', '47', '65535', '2017-04-06 18:35:36');
INSERT INTO `datas` VALUES ('556', '1', '26', '17', '105', '3', '47', '65535', '2017-04-06 18:35:37');
INSERT INTO `datas` VALUES ('557', '1', '26', '17', '116', '12', '47', '65535', '2017-04-06 18:35:39');
INSERT INTO `datas` VALUES ('558', '1', '26', '17', '114', '3', '47', '65535', '2017-04-06 18:35:41');
INSERT INTO `datas` VALUES ('559', '1', '26', '17', '108', '26', '47', '65535', '2017-04-06 18:35:43');
INSERT INTO `datas` VALUES ('560', '1', '26', '17', '120', '3', '46', '65535', '2017-04-06 18:35:45');
INSERT INTO `datas` VALUES ('561', '1', '26', '17', '111', '21', '46', '65535', '2017-04-06 18:35:47');
INSERT INTO `datas` VALUES ('562', '1', '26', '17', '119', '26', '47', '65535', '2017-04-06 18:35:48');
INSERT INTO `datas` VALUES ('563', '1', '26', '17', '132', '20', '47', '65535', '2017-04-06 18:35:50');
INSERT INTO `datas` VALUES ('564', '1', '26', '17', '116', '20', '47', '65535', '2017-04-06 18:35:52');
INSERT INTO `datas` VALUES ('565', '1', '26', '17', '119', '26', '47', '65535', '2017-04-06 18:35:54');
INSERT INTO `datas` VALUES ('566', '1', '26', '17', '108', '21', '47', '65535', '2017-04-06 18:35:56');
INSERT INTO `datas` VALUES ('567', '1', '26', '17', '104', '3', '47', '65535', '2017-04-06 18:35:58');
INSERT INTO `datas` VALUES ('568', '1', '26', '17', '114', '26', '47', '65535', '2017-04-06 18:35:59');
INSERT INTO `datas` VALUES ('569', '1', '26', '17', '111', '21', '47', '65535', '2017-04-06 18:36:01');
INSERT INTO `datas` VALUES ('570', '1', '26', '17', '114', '21', '47', '65535', '2017-04-06 18:36:03');
INSERT INTO `datas` VALUES ('571', '1', '26', '17', '110', '3', '47', '65535', '2017-04-06 18:36:05');
INSERT INTO `datas` VALUES ('572', '1', '26', '17', '114', '20', '47', '65535', '2017-04-06 18:36:07');
INSERT INTO `datas` VALUES ('573', '1', '26', '17', '101', '12', '47', '65535', '2017-04-06 18:36:08');
INSERT INTO `datas` VALUES ('574', '1', '26', '17', '106', '26', '47', '65535', '2017-04-06 18:36:10');
INSERT INTO `datas` VALUES ('575', '1', '26', '17', '97', '27', '47', '65535', '2017-04-06 18:36:12');
INSERT INTO `datas` VALUES ('576', '1', '26', '17', '117', '26', '46', '65535', '2017-04-06 18:36:14');
INSERT INTO `datas` VALUES ('577', '1', '26', '17', '119', '26', '47', '65535', '2017-04-06 18:36:16');
INSERT INTO `datas` VALUES ('578', '1', '26', '17', '119', '20', '47', '65535', '2017-04-06 18:36:18');
INSERT INTO `datas` VALUES ('579', '1', '26', '17', '111', '26', '47', '65535', '2017-04-06 18:36:19');
INSERT INTO `datas` VALUES ('580', '1', '26', '17', '118', '26', '47', '65535', '2017-04-06 18:36:21');
INSERT INTO `datas` VALUES ('581', '1', '26', '17', '114', '30', '47', '65535', '2017-04-06 18:36:23');
INSERT INTO `datas` VALUES ('582', '1', '26', '17', '99', '19', '47', '65535', '2017-04-06 18:36:25');
INSERT INTO `datas` VALUES ('583', '1', '26', '17', '111', '20', '42', '65535', '2017-04-06 18:36:27');
INSERT INTO `datas` VALUES ('584', '1', '26', '17', '112', '12', '47', '65535', '2017-04-06 18:36:28');
INSERT INTO `datas` VALUES ('585', '1', '26', '17', '111', '21', '47', '65535', '2017-04-06 18:36:30');
INSERT INTO `datas` VALUES ('586', '1', '26', '17', '123', '19', '47', '65535', '2017-04-06 18:36:32');
INSERT INTO `datas` VALUES ('587', '1', '26', '17', '111', '20', '47', '65535', '2017-04-06 18:36:34');
INSERT INTO `datas` VALUES ('588', '1', '26', '17', '105', '3', '47', '65535', '2017-04-06 18:36:36');
INSERT INTO `datas` VALUES ('589', '1', '26', '17', '126', '3', '47', '65535', '2017-04-06 18:36:38');
INSERT INTO `datas` VALUES ('590', '1', '26', '17', '127', '12', '47', '65535', '2017-04-06 18:36:39');
INSERT INTO `datas` VALUES ('591', '1', '26', '17', '108', '26', '47', '65535', '2017-04-06 18:36:41');
INSERT INTO `datas` VALUES ('592', '1', '26', '17', '110', '26', '47', '65535', '2017-04-06 18:36:43');
INSERT INTO `datas` VALUES ('593', '1', '26', '17', '110', '3', '47', '65535', '2017-04-06 18:36:45');
INSERT INTO `datas` VALUES ('594', '1', '26', '17', '112', '20', '47', '65535', '2017-04-06 18:36:47');
INSERT INTO `datas` VALUES ('595', '1', '26', '17', '103', '20', '47', '65535', '2017-04-06 18:36:49');
INSERT INTO `datas` VALUES ('596', '1', '26', '17', '111', '20', '47', '65535', '2017-04-06 18:36:50');
INSERT INTO `datas` VALUES ('597', '1', '26', '17', '106', '3', '47', '65535', '2017-04-06 18:36:52');
INSERT INTO `datas` VALUES ('598', '1', '26', '17', '108', '26', '47', '65535', '2017-04-06 18:36:54');
INSERT INTO `datas` VALUES ('599', '1', '26', '17', '115', '26', '47', '65535', '2017-04-06 18:36:56');
INSERT INTO `datas` VALUES ('600', '1', '26', '17', '118', '20', '47', '65535', '2017-04-06 18:36:58');
INSERT INTO `datas` VALUES ('601', '1', '26', '17', '104', '26', '47', '65535', '2017-04-06 18:36:59');
INSERT INTO `datas` VALUES ('602', '1', '26', '17', '116', '26', '47', '65535', '2017-04-06 18:37:01');
INSERT INTO `datas` VALUES ('603', '1', '26', '17', '121', '26', '47', '65535', '2017-04-06 18:37:03');
INSERT INTO `datas` VALUES ('604', '1', '26', '17', '121', '3', '47', '65535', '2017-04-06 18:37:05');
INSERT INTO `datas` VALUES ('605', '1', '26', '17', '108', '20', '47', '65535', '2017-04-06 18:37:07');
INSERT INTO `datas` VALUES ('606', '1', '26', '17', '110', '26', '47', '65535', '2017-04-06 18:37:09');
INSERT INTO `datas` VALUES ('607', '1', '26', '17', '107', '3', '47', '65535', '2017-04-06 18:37:10');
INSERT INTO `datas` VALUES ('608', '1', '26', '17', '105', '26', '47', '65535', '2017-04-06 18:37:12');
INSERT INTO `datas` VALUES ('609', '1', '26', '17', '113', '3', '47', '65535', '2017-04-06 18:37:14');
INSERT INTO `datas` VALUES ('610', '1', '26', '17', '108', '20', '47', '65535', '2017-04-06 18:37:16');
INSERT INTO `datas` VALUES ('611', '1', '26', '17', '112', '12', '47', '65535', '2017-04-06 18:37:18');
INSERT INTO `datas` VALUES ('612', '1', '26', '17', '113', '26', '47', '65535', '2017-04-06 18:37:20');
INSERT INTO `datas` VALUES ('613', '1', '26', '17', '109', '26', '46', '65535', '2017-04-06 18:37:21');
INSERT INTO `datas` VALUES ('614', '1', '26', '17', '97', '26', '46', '65535', '2017-04-06 18:37:23');
INSERT INTO `datas` VALUES ('615', '1', '26', '17', '128', '20', '43', '65535', '2017-04-06 18:37:25');
INSERT INTO `datas` VALUES ('616', '1', '26', '17', '96', '26', '45', '65535', '2017-04-06 18:37:27');
INSERT INTO `datas` VALUES ('617', '1', '26', '17', '111', '3', '47', '65535', '2017-04-06 18:37:29');
INSERT INTO `datas` VALUES ('618', '1', '26', '17', '104', '26', '46', '65535', '2017-04-06 18:37:30');
INSERT INTO `datas` VALUES ('619', '1', '26', '17', '98', '26', '46', '65535', '2017-04-06 18:37:32');
INSERT INTO `datas` VALUES ('620', '1', '26', '17', '109', '3', '47', '65535', '2017-04-06 18:37:34');
INSERT INTO `datas` VALUES ('621', '1', '26', '17', '116', '20', '47', '65535', '2017-04-06 18:37:36');
INSERT INTO `datas` VALUES ('622', '1', '26', '17', '112', '26', '47', '65535', '2017-04-06 18:37:38');
INSERT INTO `datas` VALUES ('623', '1', '26', '17', '120', '20', '47', '65535', '2017-04-06 18:37:40');
INSERT INTO `datas` VALUES ('624', '1', '26', '17', '116', '3', '47', '65535', '2017-04-06 18:37:41');
INSERT INTO `datas` VALUES ('625', '1', '26', '17', '109', '3', '47', '65535', '2017-04-06 18:37:43');
INSERT INTO `datas` VALUES ('626', '1', '26', '17', '114', '3', '47', '65535', '2017-04-06 18:37:45');
INSERT INTO `datas` VALUES ('627', '1', '26', '17', '114', '21', '47', '65535', '2017-04-06 18:37:47');
INSERT INTO `datas` VALUES ('628', '1', '26', '17', '117', '20', '47', '65535', '2017-04-06 18:37:49');
INSERT INTO `datas` VALUES ('629', '1', '26', '17', '103', '3', '47', '65535', '2017-04-06 18:37:50');
INSERT INTO `datas` VALUES ('630', '1', '26', '17', '124', '21', '47', '65535', '2017-04-06 18:37:52');
INSERT INTO `datas` VALUES ('631', '1', '26', '17', '114', '21', '47', '65535', '2017-04-06 18:37:54');
INSERT INTO `datas` VALUES ('632', '1', '26', '17', '105', '3', '47', '65535', '2017-04-06 18:37:56');
INSERT INTO `datas` VALUES ('633', '1', '26', '17', '112', '26', '47', '65535', '2017-04-06 18:37:58');
INSERT INTO `datas` VALUES ('634', '1', '26', '17', '105', '20', '47', '65535', '2017-04-06 18:38:00');
INSERT INTO `datas` VALUES ('635', '1', '26', '17', '118', '3', '47', '65535', '2017-04-06 18:38:01');
INSERT INTO `datas` VALUES ('636', '1', '26', '17', '114', '20', '47', '65535', '2017-04-06 18:38:03');
INSERT INTO `datas` VALUES ('637', '1', '26', '17', '111', '21', '47', '65535', '2017-04-06 18:38:05');
INSERT INTO `datas` VALUES ('638', '1', '26', '17', '115', '20', '47', '65535', '2017-04-06 18:38:07');
INSERT INTO `datas` VALUES ('639', '1', '26', '17', '106', '18', '47', '65535', '2017-04-06 18:38:09');
INSERT INTO `datas` VALUES ('640', '1', '26', '17', '109', '3', '47', '65535', '2017-04-06 18:38:11');
INSERT INTO `datas` VALUES ('641', '1', '26', '17', '124', '26', '47', '65535', '2017-04-06 18:38:12');
INSERT INTO `datas` VALUES ('642', '1', '26', '17', '121', '20', '47', '65535', '2017-04-06 18:38:14');
INSERT INTO `datas` VALUES ('643', '1', '26', '17', '110', '3', '47', '65535', '2017-04-06 18:38:16');
INSERT INTO `datas` VALUES ('644', '1', '26', '17', '113', '20', '47', '65535', '2017-04-06 18:38:18');
INSERT INTO `datas` VALUES ('645', '1', '26', '17', '112', '26', '47', '65535', '2017-04-06 18:38:20');
INSERT INTO `datas` VALUES ('646', '1', '26', '17', '114', '27', '47', '65535', '2017-04-06 18:38:21');
INSERT INTO `datas` VALUES ('647', '1', '26', '17', '113', '3', '47', '65535', '2017-04-06 18:38:23');
INSERT INTO `datas` VALUES ('648', '1', '26', '17', '101', '21', '47', '65535', '2017-04-06 18:38:25');
INSERT INTO `datas` VALUES ('649', '1', '26', '17', '112', '26', '47', '65535', '2017-04-06 18:38:27');
INSERT INTO `datas` VALUES ('650', '1', '26', '17', '112', '20', '47', '65535', '2017-04-06 18:38:29');
INSERT INTO `datas` VALUES ('651', '1', '26', '17', '110', '19', '47', '65535', '2017-04-06 18:38:31');
INSERT INTO `datas` VALUES ('652', '1', '26', '17', '119', '19', '47', '65535', '2017-04-06 18:38:32');
INSERT INTO `datas` VALUES ('653', '1', '26', '17', '122', '20', '47', '65535', '2017-04-06 18:38:34');
INSERT INTO `datas` VALUES ('654', '1', '26', '17', '125', '27', '47', '65535', '2017-04-06 18:38:36');
INSERT INTO `datas` VALUES ('655', '1', '26', '17', '110', '3', '47', '65535', '2017-04-06 18:38:38');
INSERT INTO `datas` VALUES ('656', '1', '26', '17', '108', '26', '47', '65535', '2017-04-06 18:38:40');
INSERT INTO `datas` VALUES ('657', '1', '26', '17', '101', '20', '47', '65535', '2017-04-06 18:38:42');
INSERT INTO `datas` VALUES ('658', '1', '26', '17', '119', '3', '47', '65535', '2017-04-06 18:38:43');
INSERT INTO `datas` VALUES ('659', '1', '26', '17', '125', '26', '47', '65535', '2017-04-06 18:38:45');
INSERT INTO `datas` VALUES ('660', '1', '26', '17', '115', '17', '47', '65535', '2017-04-06 18:38:47');
INSERT INTO `datas` VALUES ('661', '1', '26', '17', '105', '3', '47', '65535', '2017-04-06 18:38:49');
INSERT INTO `datas` VALUES ('662', '1', '26', '17', '107', '12', '47', '65535', '2017-04-06 18:38:51');
INSERT INTO `datas` VALUES ('663', '1', '26', '17', '123', '26', '47', '65535', '2017-04-06 18:38:52');
INSERT INTO `datas` VALUES ('664', '1', '26', '17', '129', '20', '47', '65535', '2017-04-06 18:38:54');
INSERT INTO `datas` VALUES ('665', '1', '26', '17', '113', '20', '47', '65535', '2017-04-06 18:38:56');
INSERT INTO `datas` VALUES ('666', '1', '26', '17', '99', '26', '47', '65535', '2017-04-06 18:38:58');
INSERT INTO `datas` VALUES ('667', '1', '26', '17', '110', '12', '47', '65535', '2017-04-06 18:39:00');
INSERT INTO `datas` VALUES ('668', '1', '26', '17', '112', '26', '47', '65535', '2017-04-06 18:39:02');
INSERT INTO `datas` VALUES ('669', '1', '26', '17', '118', '3', '47', '65535', '2017-04-06 18:39:03');
INSERT INTO `datas` VALUES ('670', '1', '26', '17', '106', '17', '47', '65535', '2017-04-06 18:39:05');
INSERT INTO `datas` VALUES ('671', '1', '26', '17', '105', '20', '47', '65535', '2017-04-06 18:39:07');
INSERT INTO `datas` VALUES ('672', '1', '26', '17', '97', '27', '47', '65535', '2017-04-06 18:39:09');
INSERT INTO `datas` VALUES ('673', '1', '26', '17', '122', '3', '47', '65535', '2017-04-06 18:39:11');
INSERT INTO `datas` VALUES ('674', '1', '26', '17', '107', '20', '47', '65535', '2017-04-06 18:39:12');
INSERT INTO `datas` VALUES ('675', '1', '26', '17', '101', '20', '47', '65535', '2017-04-06 18:39:14');
INSERT INTO `datas` VALUES ('676', '1', '26', '17', '106', '17', '47', '65535', '2017-04-06 18:39:16');
INSERT INTO `datas` VALUES ('677', '1', '26', '17', '98', '3', '47', '65535', '2017-04-06 18:39:18');
INSERT INTO `datas` VALUES ('678', '1', '26', '17', '109', '3', '47', '65535', '2017-04-06 18:39:20');
INSERT INTO `datas` VALUES ('679', '1', '26', '17', '110', '21', '47', '65535', '2017-04-06 18:39:22');
INSERT INTO `datas` VALUES ('680', '1', '26', '17', '108', '20', '47', '65535', '2017-04-06 18:39:23');
INSERT INTO `datas` VALUES ('681', '1', '26', '17', '105', '21', '47', '65535', '2017-04-06 18:39:25');
INSERT INTO `datas` VALUES ('682', '1', '26', '17', '129', '20', '47', '65535', '2017-04-06 18:39:27');
INSERT INTO `datas` VALUES ('683', '1', '26', '17', '106', '12', '47', '65535', '2017-04-06 18:39:29');
INSERT INTO `datas` VALUES ('684', '1', '26', '17', '101', '21', '47', '65535', '2017-04-06 18:39:31');
INSERT INTO `datas` VALUES ('685', '1', '26', '17', '114', '27', '47', '65535', '2017-04-06 18:39:33');
INSERT INTO `datas` VALUES ('686', '1', '26', '17', '103', '3', '47', '65535', '2017-04-06 18:39:34');
INSERT INTO `datas` VALUES ('687', '1', '26', '17', '113', '3', '47', '65535', '2017-04-06 18:39:36');
INSERT INTO `datas` VALUES ('688', '1', '26', '17', '99', '3', '47', '65535', '2017-04-06 18:39:38');
INSERT INTO `datas` VALUES ('689', '1', '26', '17', '116', '26', '47', '65535', '2017-04-06 18:39:40');
INSERT INTO `datas` VALUES ('690', '1', '26', '18', '114', '3', '47', '65535', '2017-04-06 18:39:42');
INSERT INTO `datas` VALUES ('691', '1', '26', '17', '107', '3', '47', '65535', '2017-04-06 18:39:43');
INSERT INTO `datas` VALUES ('692', '1', '26', '17', '102', '3', '47', '65535', '2017-04-06 18:39:45');
INSERT INTO `datas` VALUES ('693', '1', '26', '17', '99', '31', '47', '65535', '2017-04-06 18:39:47');
INSERT INTO `datas` VALUES ('694', '1', '26', '17', '100', '27', '47', '65535', '2017-04-06 18:39:49');
INSERT INTO `datas` VALUES ('695', '1', '26', '17', '116', '17', '47', '65535', '2017-04-06 18:39:51');
INSERT INTO `datas` VALUES ('696', '1', '26', '17', '111', '26', '47', '65535', '2017-04-06 18:39:53');
INSERT INTO `datas` VALUES ('697', '1', '26', '17', '96', '3', '46', '65535', '2017-04-06 18:39:54');
INSERT INTO `datas` VALUES ('698', '1', '26', '17', '140', '20', '47', '65535', '2017-04-06 18:39:56');
INSERT INTO `datas` VALUES ('699', '1', '26', '17', '105', '3', '47', '65535', '2017-04-06 18:39:58');
INSERT INTO `datas` VALUES ('700', '1', '26', '17', '109', '14', '47', '65535', '2017-04-06 18:40:00');
INSERT INTO `datas` VALUES ('701', '1', '26', '17', '112', '26', '47', '65535', '2017-04-06 18:40:02');
INSERT INTO `datas` VALUES ('702', '1', '26', '17', '118', '26', '47', '65535', '2017-04-06 18:40:04');
INSERT INTO `datas` VALUES ('703', '1', '26', '17', '120', '26', '47', '65535', '2017-04-06 18:40:05');
INSERT INTO `datas` VALUES ('704', '1', '26', '17', '115', '3', '47', '65535', '2017-04-06 18:40:07');
INSERT INTO `datas` VALUES ('705', '1', '26', '17', '103', '26', '47', '65535', '2017-04-06 18:40:09');
INSERT INTO `datas` VALUES ('706', '1', '26', '17', '119', '20', '47', '65535', '2017-04-06 18:40:11');
INSERT INTO `datas` VALUES ('707', '1', '26', '17', '103', '20', '47', '65535', '2017-04-06 18:40:13');
INSERT INTO `datas` VALUES ('708', '1', '26', '17', '107', '3', '47', '65535', '2017-04-06 18:40:14');
INSERT INTO `datas` VALUES ('709', '1', '26', '17', '119', '3', '47', '65535', '2017-04-06 18:40:16');
INSERT INTO `datas` VALUES ('710', '1', '26', '17', '108', '21', '47', '65535', '2017-04-06 18:40:18');
INSERT INTO `datas` VALUES ('711', '1', '26', '17', '106', '3', '47', '65535', '2017-04-06 18:40:20');
INSERT INTO `datas` VALUES ('712', '1', '26', '17', '113', '26', '47', '65535', '2017-04-06 18:40:22');
INSERT INTO `datas` VALUES ('713', '1', '26', '17', '117', '26', '47', '65535', '2017-04-06 18:40:24');
INSERT INTO `datas` VALUES ('714', '1', '26', '17', '109', '3', '47', '65535', '2017-04-06 18:40:25');
INSERT INTO `datas` VALUES ('715', '1', '26', '17', '107', '3', '47', '65535', '2017-04-06 18:40:27');
INSERT INTO `datas` VALUES ('716', '1', '26', '17', '104', '18', '47', '65535', '2017-04-06 18:40:29');
INSERT INTO `datas` VALUES ('717', '1', '26', '17', '107', '20', '47', '65535', '2017-04-06 18:40:31');
INSERT INTO `datas` VALUES ('718', '1', '26', '17', '104', '12', '47', '65535', '2017-04-06 18:40:33');
INSERT INTO `datas` VALUES ('719', '1', '26', '17', '123', '3', '46', '65535', '2017-04-06 18:40:34');
INSERT INTO `datas` VALUES ('720', '1', '26', '17', '102', '19', '46', '65535', '2017-04-06 18:40:36');
INSERT INTO `datas` VALUES ('721', '1', '26', '17', '110', '26', '47', '65535', '2017-04-06 18:40:38');
INSERT INTO `datas` VALUES ('722', '1', '26', '17', '116', '3', '47', '65535', '2017-04-06 18:40:40');
INSERT INTO `datas` VALUES ('723', '1', '26', '17', '115', '26', '47', '65535', '2017-04-06 18:40:42');
INSERT INTO `datas` VALUES ('724', '1', '26', '17', '101', '27', '47', '65535', '2017-04-06 18:40:44');
INSERT INTO `datas` VALUES ('725', '1', '26', '17', '107', '20', '47', '65535', '2017-04-06 18:40:45');
INSERT INTO `datas` VALUES ('726', '1', '26', '17', '129', '3', '47', '65535', '2017-04-06 18:40:47');
INSERT INTO `datas` VALUES ('727', '1', '26', '17', '108', '20', '47', '65535', '2017-04-06 18:40:49');
INSERT INTO `datas` VALUES ('728', '1', '26', '17', '107', '20', '47', '65535', '2017-04-06 18:40:51');
INSERT INTO `datas` VALUES ('729', '1', '26', '17', '110', '19', '47', '65535', '2017-04-06 18:40:53');
INSERT INTO `datas` VALUES ('730', '1', '26', '18', '103', '3', '47', '65535', '2017-04-06 18:40:55');
INSERT INTO `datas` VALUES ('731', '1', '26', '17', '109', '19', '47', '65535', '2017-04-06 18:40:56');
INSERT INTO `datas` VALUES ('732', '1', '26', '17', '90', '38', '47', '65535', '2017-04-06 18:40:58');
INSERT INTO `datas` VALUES ('733', '1', '26', '17', '104', '26', '47', '65535', '2017-04-06 18:41:00');
INSERT INTO `datas` VALUES ('734', '1', '26', '17', '102', '27', '47', '65535', '2017-04-06 18:41:02');
INSERT INTO `datas` VALUES ('735', '1', '26', '17', '106', '18', '47', '65535', '2017-04-06 18:41:04');
INSERT INTO `datas` VALUES ('736', '1', '26', '17', '118', '3', '47', '65535', '2017-04-06 18:41:05');
INSERT INTO `datas` VALUES ('737', '1', '26', '17', '116', '20', '47', '65535', '2017-04-06 18:41:07');
INSERT INTO `datas` VALUES ('738', '1', '26', '17', '108', '26', '47', '65535', '2017-04-06 18:41:09');
INSERT INTO `datas` VALUES ('739', '1', '26', '17', '108', '20', '47', '65535', '2017-04-06 18:41:11');
INSERT INTO `datas` VALUES ('740', '1', '26', '17', '105', '21', '47', '65535', '2017-04-06 18:41:13');
INSERT INTO `datas` VALUES ('741', '1', '26', '17', '119', '3', '47', '65535', '2017-04-06 18:41:15');
INSERT INTO `datas` VALUES ('742', '1', '26', '17', '103', '19', '47', '65535', '2017-04-06 18:41:16');
INSERT INTO `datas` VALUES ('743', '1', '26', '17', '109', '26', '47', '65535', '2017-04-06 18:41:18');
INSERT INTO `datas` VALUES ('744', '1', '26', '17', '108', '20', '47', '65535', '2017-04-06 18:41:20');
INSERT INTO `datas` VALUES ('745', '1', '26', '17', '103', '26', '47', '65535', '2017-04-06 18:41:22');
INSERT INTO `datas` VALUES ('746', '1', '26', '17', '118', '3', '47', '65535', '2017-04-06 18:41:24');
INSERT INTO `datas` VALUES ('747', '1', '26', '17', '115', '20', '47', '65535', '2017-04-06 18:41:26');
INSERT INTO `datas` VALUES ('748', '1', '26', '17', '115', '20', '47', '65535', '2017-04-06 18:41:27');
INSERT INTO `datas` VALUES ('749', '1', '26', '17', '111', '3', '47', '65535', '2017-04-06 18:41:29');
INSERT INTO `datas` VALUES ('750', '1', '26', '17', '111', '3', '47', '65535', '2017-04-06 18:41:31');
INSERT INTO `datas` VALUES ('751', '1', '26', '17', '113', '3', '47', '65535', '2017-04-06 18:41:33');
INSERT INTO `datas` VALUES ('752', '1', '26', '17', '114', '21', '47', '65535', '2017-04-06 18:41:35');
INSERT INTO `datas` VALUES ('753', '1', '26', '17', '107', '19', '47', '65535', '2017-04-06 18:41:36');
INSERT INTO `datas` VALUES ('754', '1', '26', '17', '112', '3', '47', '65535', '2017-04-06 18:41:38');
INSERT INTO `datas` VALUES ('755', '1', '26', '17', '118', '3', '47', '65535', '2017-04-06 18:41:40');
INSERT INTO `datas` VALUES ('756', '1', '26', '17', '112', '20', '47', '65535', '2017-04-06 18:41:42');
INSERT INTO `datas` VALUES ('757', '1', '26', '17', '102', '26', '47', '65535', '2017-04-06 18:41:44');
INSERT INTO `datas` VALUES ('758', '1', '26', '17', '130', '21', '47', '65535', '2017-04-06 18:41:46');
INSERT INTO `datas` VALUES ('759', '1', '26', '17', '107', '26', '47', '65535', '2017-04-06 18:41:47');
INSERT INTO `datas` VALUES ('760', '1', '26', '17', '120', '20', '47', '65535', '2017-04-06 18:41:49');
INSERT INTO `datas` VALUES ('761', '1', '26', '17', '97', '3', '47', '65535', '2017-04-06 18:41:51');
INSERT INTO `datas` VALUES ('762', '1', '26', '17', '97', '3', '46', '65535', '2017-04-06 18:41:53');
INSERT INTO `datas` VALUES ('763', '1', '26', '17', '105', '21', '47', '65535', '2017-04-06 18:41:55');
INSERT INTO `datas` VALUES ('764', '1', '26', '17', '113', '3', '47', '65535', '2017-04-06 18:41:56');
INSERT INTO `datas` VALUES ('765', '1', '26', '17', '112', '20', '47', '65535', '2017-04-06 18:41:58');

-- ----------------------------
-- Table structure for datas_max
-- ----------------------------
DROP TABLE IF EXISTS `datas_max`;
CREATE TABLE `datas_max` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tem` int(11) DEFAULT NULL,
  `hum` int(11) DEFAULT NULL,
  `pm25` int(11) DEFAULT NULL,
  `smog` int(11) DEFAULT NULL,
  `light` int(11) DEFAULT NULL,
  `noise` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of datas_max
-- ----------------------------
INSERT INTO `datas_max` VALUES ('1', '100', '100', '100', '100', '100', '100', '2017-04-04 23:09:29');

-- ----------------------------
-- Table structure for device
-- ----------------------------
DROP TABLE IF EXISTS `device`;
CREATE TABLE `device` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `tudex` varchar(255) DEFAULT NULL,
  `tudey` varchar(255) DEFAULT NULL,
  `upline` datetime DEFAULT NULL,
  `offline` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device
-- ----------------------------
INSERT INTO `device` VALUES ('1', '图书馆设备', '图书馆信息', '127.0.0.1', '113.515489', '34.817429', '2017-03-31 12:21:04', '2017-04-06 18:42:00');
INSERT INTO `device` VALUES ('2', '南门设备', '南门口测试', '127.0.0.1', '113.515731', '34.814976', '2017-04-03 12:31:38', '2017-04-04 15:55:22');
INSERT INTO `device` VALUES ('3', '北门设备', '北门测试点', '127.0.0.1', '113.515426', '34.820563', '2017-04-03 12:32:58', '2017-04-03 12:33:06');
INSERT INTO `device` VALUES ('4', '东门设备', '东门测试点', '127.0.0.1', '113.519001', '34.817747', '2017-04-04 12:34:37', '2017-04-03 12:34:40');
INSERT INTO `device` VALUES ('5', '西门', '西门测试点', '127.0.0.1', '113.512354', '34.81717', '2017-04-04 12:38:38', null);
