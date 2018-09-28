/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : wms

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 28/09/2018 15:28:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_approvals
-- ----------------------------
DROP TABLE IF EXISTS `app_approvals`;
CREATE TABLE `app_approvals`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NULL DEFAULT NULL,
  `ts` datetime(0) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `state` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_approvals
-- ----------------------------
INSERT INTO `app_approvals` VALUES (1, 1, '2018-09-28 07:24:47', 1, '同意', NULL, '123456');

-- ----------------------------
-- Table structure for app_notices
-- ----------------------------
DROP TABLE IF EXISTS `app_notices`;
CREATE TABLE `app_notices`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NULL DEFAULT NULL,
  `ts` datetime(0) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `state` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_notices
-- ----------------------------
INSERT INTO `app_notices` VALUES (1, 1, '2018-09-28 07:24:47', 1, '已查看');

-- ----------------------------
-- Table structure for apps
-- ----------------------------
DROP TABLE IF EXISTS `apps`;
CREATE TABLE `apps`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kind` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `number` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ts` datetime(0) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `state` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of apps
-- ----------------------------
INSERT INTO `apps` VALUES (1, 'mal', '111111', '2018-09-28 07:24:47', 1, '审批通过', '123');

-- ----------------------------
-- Table structure for devices
-- ----------------------------
DROP TABLE IF EXISTS `devices`;
CREATE TABLE `devices`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `model` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `group_id` int(11) NULL DEFAULT NULL,
  `group_ids` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `group` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `measurement_id` int(11) NULL DEFAULT NULL,
  `measurement` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `manufacturer` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `supplier` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `expiration` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `installation` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `state` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of devices
-- ----------------------------
INSERT INTO `devices` VALUES (14, '10010', '烟雾探测器', '12345', '传感设备', 5, '1/2/5', '台部/一大队/一中队', 3, '箱', '123', '123', '123', '2018-09-26T14:17:34.000Z', '报废', '123');
INSERT INTO `devices` VALUES (15, '10011', '温度探测器', '1111', '采集设备', 10, '1/3/10', '台部/二大队/三中队', 2, '个', '123', '444', '5', '2018-08-30T23:17:50.000Z', '在用', '123');
INSERT INTO `devices` VALUES (16, '10012', '基站', '111', '通用设备', 5, '1/2/5', '台部/一大队/一中队', 2, '个', '333', '111', '12', '2018-11-01T02:05:43.000Z', '在用', '1');

-- ----------------------------
-- Table structure for eq_apps
-- ----------------------------
DROP TABLE IF EXISTS `eq_apps`;
CREATE TABLE `eq_apps`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NULL DEFAULT NULL,
  `eq_id` int(11) NULL DEFAULT NULL,
  `application` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `reason` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of eq_apps
-- ----------------------------
INSERT INTO `eq_apps` VALUES (1, 4, 14, NULL, NULL);
INSERT INTO `eq_apps` VALUES (2, 5, 14, NULL, NULL);

-- ----------------------------
-- Table structure for mal_apps
-- ----------------------------
DROP TABLE IF EXISTS `mal_apps`;
CREATE TABLE `mal_apps`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NULL DEFAULT NULL,
  `mal_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mal_apps
-- ----------------------------
INSERT INTO `mal_apps` VALUES (1, 1, 1);

-- ----------------------------
-- Table structure for mal_repair_records
-- ----------------------------
DROP TABLE IF EXISTS `mal_repair_records`;
CREATE TABLE `mal_repair_records`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mal_id` int(11) NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `complete` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `report_date` date NULL DEFAULT NULL,
  `reporter` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mal_reports
-- ----------------------------
DROP TABLE IF EXISTS `mal_reports`;
CREATE TABLE `mal_reports`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `device_id` int(11) NULL DEFAULT NULL,
  `hap_date` date NULL DEFAULT NULL,
  `rep_date` date NULL DEFAULT NULL,
  `phenomenon` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `disposition` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `cause` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `state` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `reporter` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `report_date` date NULL DEFAULT NULL,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mal_reports
-- ----------------------------
INSERT INTO `mal_reports` VALUES (1, '烟雾探测器', 14, '2018-09-28', '2018-09-28', '111', '333', '222', '未修复', '123', '2018-09-28', '321');

-- ----------------------------
-- Table structure for mt_cycles
-- ----------------------------
DROP TABLE IF EXISTS `mt_cycles`;
CREATE TABLE `mt_cycles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cycle` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `major` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `department` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `principal` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mt_cycles
-- ----------------------------
INSERT INTO `mt_cycles` VALUES (68, '2018', '每周保养', '传感设备', NULL, '张三', 'xxx', '烟雾传感器');
INSERT INTO `mt_cycles` VALUES (69, '2018', '每周保养', '通用设备', NULL, '张三', '123', '区空调');
INSERT INTO `mt_cycles` VALUES (70, '2018', '月度维护', '采集设备', NULL, '111', '111', '仪器');

-- ----------------------------
-- Table structure for mt_cycles_items
-- ----------------------------
DROP TABLE IF EXISTS `mt_cycles_items`;
CREATE TABLE `mt_cycles_items`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cycles_id` int(11) NULL DEFAULT NULL,
  `standard` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mt_cycles_items
-- ----------------------------
INSERT INTO `mt_cycles_items` VALUES (1, 32, '制冷效果良好，在出风口能感受明显冷风', '制冷效果和风量');
INSERT INTO `mt_cycles_items` VALUES (2, 32, '对控制面板进行检查，做到面板清洁，触碰控制灵敏', '控制面板状态');
INSERT INTO `mt_cycles_items` VALUES (3, 32, '温度传感器反馈湿度精确', '传感器精度');
INSERT INTO `mt_cycles_items` VALUES (4, 32, '机柜内电线电缆触碰坚固', '机内电源线、控制线');
INSERT INTO `mt_cycles_items` VALUES (5, 32, '电机状态良好，运行时温度在90度以下', '风机状态');
INSERT INTO `mt_cycles_items` VALUES (6, 32, '风管无损破、无漏风，安装稳固、无灰', '风管状态');
INSERT INTO `mt_cycles_items` VALUES (17, 33, 'XXX', '电线');
INSERT INTO `mt_cycles_items` VALUES (18, 33, 'XXX', '电源');
INSERT INTO `mt_cycles_items` VALUES (20, 34, 'XXX', '检修二');
INSERT INTO `mt_cycles_items` VALUES (21, 34, 'XXX1', '检修三');
INSERT INTO `mt_cycles_items` VALUES (23, 35, 'XXX', '检修一');
INSERT INTO `mt_cycles_items` VALUES (24, 35, 'XXX', '检修二');
INSERT INTO `mt_cycles_items` VALUES (25, 36, 'XXX', '检修1');
INSERT INTO `mt_cycles_items` VALUES (26, 36, 'XXX', '检修2');
INSERT INTO `mt_cycles_items` VALUES (27, 37, 'XXX', '检修2');
INSERT INTO `mt_cycles_items` VALUES (28, 37, 'XXX', '检修1');
INSERT INTO `mt_cycles_items` VALUES (29, 38, 'XXX', '检修1');
INSERT INTO `mt_cycles_items` VALUES (30, 38, 'XXX', '检修2');
INSERT INTO `mt_cycles_items` VALUES (31, 38, 'XXX', '检修3');
INSERT INTO `mt_cycles_items` VALUES (33, 34, 'xxxx', '检修一');
INSERT INTO `mt_cycles_items` VALUES (39, 67, '1234', 'xxxx');
INSERT INTO `mt_cycles_items` VALUES (40, 68, 'xxx', '检查一');
INSERT INTO `mt_cycles_items` VALUES (41, 68, 'xxx', '检查二');
INSERT INTO `mt_cycles_items` VALUES (42, 69, '制冷效果良好，在出风口能感受明显冷风', '制冷效果和风量');
INSERT INTO `mt_cycles_items` VALUES (43, 69, '对控制面板进行检查，做到面板清洁，触碰控制灵敏', '控制面板状态');
INSERT INTO `mt_cycles_items` VALUES (44, 69, '温度传感器反馈湿度精确', '传感器精度');
INSERT INTO `mt_cycles_items` VALUES (45, 69, '机柜内电线电缆触碰坚固', '机内电源线、控制线');
INSERT INTO `mt_cycles_items` VALUES (46, 69, '电机状态良好，运行时温度在90度以下', '风机状态');
INSERT INTO `mt_cycles_items` VALUES (47, 69, '风管无损破、无漏风，安装稳固、无灰', '风管状态');
INSERT INTO `mt_cycles_items` VALUES (49, 68, 'xxx', '检查三');
INSERT INTO `mt_cycles_items` VALUES (50, 70, '123', 'sss');
INSERT INTO `mt_cycles_items` VALUES (51, 70, '123', 'qqq');

-- ----------------------------
-- Table structure for mt_docs
-- ----------------------------
DROP TABLE IF EXISTS `mt_docs`;
CREATE TABLE `mt_docs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `major` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `department` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `department_ids` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `path` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `create_by` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `mod_time` datetime(0) NULL DEFAULT NULL,
  `mod_by` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mt_docs
-- ----------------------------
INSERT INTO `mt_docs` VALUES (7, '维护规程_1005', '测试专业', '台部/一大队/一中队', '1/2/5', '摄像头地址.txt', '2018-06-20 10:09:26', '123', '2018-07-27 08:01:06', 'aaa', '备注_1005\n');
INSERT INTO `mt_docs` VALUES (8, '维护规程_1006', '测试专业', '台部/一大队/二中队', '1/2/6', 'QT页面链接.xls', '2018-06-20 10:10:31', '123', '2018-07-27 07:41:26', '123', '备注_1006\n');
INSERT INTO `mt_docs` VALUES (10, '维护规程_1007', '柴油机', '台部/一大队/一中队', '1/2/5', '安防系统对接规范V1.3.pdf', '2018-07-17 09:03:09', '123', '2018-07-27 07:41:11', '123', '222');
INSERT INTO `mt_docs` VALUES (12, '维护规程_1004', '通用设备', '台部/三大队/三中队', '1/4/13', 'Conference notice.pdf', '2018-07-27 09:19:34', '123', '2018-07-27 09:31:44', '123', '123');

-- ----------------------------
-- Table structure for mt_plan_items
-- ----------------------------
DROP TABLE IF EXISTS `mt_plan_items`;
CREATE TABLE `mt_plan_items`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_id` int(11) NULL DEFAULT NULL,
  `standard` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mt_plan_items
-- ----------------------------
INSERT INTO `mt_plan_items` VALUES (1, 6, 'xxx', '检查一');
INSERT INTO `mt_plan_items` VALUES (2, 6, 'xxx', '检查二');
INSERT INTO `mt_plan_items` VALUES (8, 7, '制冷效果良好，在出风口能感受明显冷风', '制冷效果和风量');
INSERT INTO `mt_plan_items` VALUES (9, 7, '对控制面板进行检查，做到面板清洁，触碰控制灵敏', '控制面板状态');
INSERT INTO `mt_plan_items` VALUES (10, 7, '温度传感器反馈湿度精确', '传感器精度');
INSERT INTO `mt_plan_items` VALUES (11, NULL, 'xxx', '检查二');
INSERT INTO `mt_plan_items` VALUES (12, NULL, 'xxx', '检查三');
INSERT INTO `mt_plan_items` VALUES (13, 10, 'xxx', '检查一');
INSERT INTO `mt_plan_items` VALUES (14, 10, 'xxx', '检查二');
INSERT INTO `mt_plan_items` VALUES (15, 10, 'xxx', '检查三');
INSERT INTO `mt_plan_items` VALUES (16, 11, '123', 'sss');
INSERT INTO `mt_plan_items` VALUES (17, 11, '123', 'qqq');
INSERT INTO `mt_plan_items` VALUES (18, 11, '123', 'sss');
INSERT INTO `mt_plan_items` VALUES (19, 11, '123', 'qqq');
INSERT INTO `mt_plan_items` VALUES (20, 12, '123', 'sss');
INSERT INTO `mt_plan_items` VALUES (21, 12, '123', 'qqq');
INSERT INTO `mt_plan_items` VALUES (22, 13, '123', 'sss');
INSERT INTO `mt_plan_items` VALUES (23, 13, '123', 'qqq');

-- ----------------------------
-- Table structure for mt_plans
-- ----------------------------
DROP TABLE IF EXISTS `mt_plans`;
CREATE TABLE `mt_plans`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cycle` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `major` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `type` int(11) NULL DEFAULT NULL,
  `typeName` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `department` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `principal` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `report_date` date NULL DEFAULT NULL,
  `reporter` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mt_plans
-- ----------------------------
INSERT INTO `mt_plans` VALUES (6, '烟雾探测器', '每周保养', '传感设备', '2018', 68, '烟雾传感器', NULL, NULL, '2018-07-25', '123', '123');
INSERT INTO `mt_plans` VALUES (7, '温度探测器', '每周保养', '通用设备', '2018', 69, '区空调', NULL, NULL, '2018-07-26', '123', '123');
INSERT INTO `mt_plans` VALUES (12, '基站', '月度维护', '采集设备', '2018', 70, '仪器', NULL, NULL, '2018-09-27', '123', '123');
INSERT INTO `mt_plans` VALUES (13, '烟雾探测器', '月度维护', '采集设备', '2018', 70, '仪器', NULL, NULL, '2018-09-28', '123', '123');

-- ----------------------------
-- Table structure for mt_record_items
-- ----------------------------
DROP TABLE IF EXISTS `mt_record_items`;
CREATE TABLE `mt_record_items`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_id` int(11) NULL DEFAULT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `standard` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `restand` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `trouble` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `report_date` date NULL DEFAULT NULL,
  `reporter` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mt_record_items
-- ----------------------------
INSERT INTO `mt_record_items` VALUES (18, 7, '空调1', '制冷效果良好，在出风口能感受明显冷风', '制冷效果和风量', 'false', '123', '2018-07-27', 'aaa', 'bbb');
INSERT INTO `mt_record_items` VALUES (19, 7, '空调1', '对控制面板进行检查，做到面板清洁，触碰控制灵敏', '控制面板状态', 'false', '123', '2018-07-27', 'aaa', 'bbb');
INSERT INTO `mt_record_items` VALUES (20, 7, '空调1', '温度传感器反馈湿度精确', '传感器精度', 'false', '123', '2018-07-27', 'aaa', 'bbb');
INSERT INTO `mt_record_items` VALUES (21, 6, '123', 'xxx', '检查一', 'false', '123', '2018-07-27', 'aaa', 'vvv');
INSERT INTO `mt_record_items` VALUES (22, 6, '123', 'xxx', '检查一', 'false', '123', '2018-07-27', 'aaa', 'vvv');
INSERT INTO `mt_record_items` VALUES (23, 6, '123', 'xxx', '检查一', 'false', '123', '2018-07-27', 'aaa', 'vvv');
INSERT INTO `mt_record_items` VALUES (24, 6, '123', 'xxx', '检查一', 'false', '123', '2018-07-27', 'aaa', 'vvv');
INSERT INTO `mt_record_items` VALUES (25, 6, '123', 'xxx', '检查一', 'true', '123', '2018-07-27', 'aa', 'vvxz');
INSERT INTO `mt_record_items` VALUES (26, 6, '123', 'xxx', '检查二', 'true', '123', '2018-07-27', 'aa', 'vvxz');
INSERT INTO `mt_record_items` VALUES (27, 12, '仪器1', '123', 'sss', 'true', '123', '2018-09-27', '123', '123');
INSERT INTO `mt_record_items` VALUES (28, 12, '仪器1', '123', 'qqq', 'true', '123', '2018-09-27', '123', '123');
INSERT INTO `mt_record_items` VALUES (29, 12, '仪器1', '123', 'sss', 'false', '123', '2018-09-27', '123', '123');
INSERT INTO `mt_record_items` VALUES (30, 12, '仪器1', '123', 'qqq', 'false', '123', '2018-09-27', '123', '123');

-- ----------------------------
-- Table structure for sys_btypes
-- ----------------------------
DROP TABLE IF EXISTS `sys_btypes`;
CREATE TABLE `sys_btypes`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enterprise` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `contacts` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `faxes` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `taxId` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `bank` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_btypes
-- ----------------------------
INSERT INTO `sys_btypes` VALUES (1, '123456', '123333', '123', '123', '123', '123', '123', '123', '123');

-- ----------------------------
-- Table structure for sys_conditions
-- ----------------------------
DROP TABLE IF EXISTS `sys_conditions`;
CREATE TABLE `sys_conditions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_conditions
-- ----------------------------
INSERT INTO `sys_conditions` VALUES (1, '在用', '123');
INSERT INTO `sys_conditions` VALUES (2, '待检', '123');
INSERT INTO `sys_conditions` VALUES (3, '停用', '123');
INSERT INTO `sys_conditions` VALUES (4, '报废', '123');

-- ----------------------------
-- Table structure for sys_groups
-- ----------------------------
DROP TABLE IF EXISTS `sys_groups`;
CREATE TABLE `sys_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NULL DEFAULT NULL,
  `sn` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_groups_parent_id_fkey`(`parent_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_groups
-- ----------------------------
INSERT INTO `sys_groups` VALUES (1, NULL, '10000', '台部', '12345');
INSERT INTO `sys_groups` VALUES (2, 1, '10001', '一大队', '12345');
INSERT INTO `sys_groups` VALUES (3, 1, '10002', '二大队', '12345');
INSERT INTO `sys_groups` VALUES (4, 1, '10003', '三大队', '12345');
INSERT INTO `sys_groups` VALUES (5, 2, '10011', '一中队', '12345');
INSERT INTO `sys_groups` VALUES (6, 2, '10012', '二中队', '12345');
INSERT INTO `sys_groups` VALUES (7, 2, '10013', '三中队', '12345');
INSERT INTO `sys_groups` VALUES (8, 3, '10021', '一中队', '12345');
INSERT INTO `sys_groups` VALUES (9, 3, '10022', '二中队', '12345');
INSERT INTO `sys_groups` VALUES (10, 3, '10023', '三中队', '12345');
INSERT INTO `sys_groups` VALUES (11, 4, '10031', '一中队', '12345');
INSERT INTO `sys_groups` VALUES (12, 4, '10032', '二中队', '12345');
INSERT INTO `sys_groups` VALUES (13, 4, '10033', '三中队', '12345');
INSERT INTO `sys_groups` VALUES (18, 2, '15001', '四中队', '12345');
INSERT INTO `sys_groups` VALUES (27, 2, '15002', '五中队', '12345');
INSERT INTO `sys_groups` VALUES (28, 4, '10034', '四中队', '12345');
INSERT INTO `sys_groups` VALUES (29, 3, '10024', '四中队', '12345');

-- ----------------------------
-- Table structure for sys_logs
-- ----------------------------
DROP TABLE IF EXISTS `sys_logs`;
CREATE TABLE `sys_logs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ts` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `data` json NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 160 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logs
-- ----------------------------
INSERT INTO `sys_logs` VALUES (147, '2018-07-10 15:42:42.000000', '{\"ip\": \"::ffff:127.0.0.1\", \"method\": \"DELETE\", \"status\": 404, \"originalUrl\": \"/btype/deleteItem?0=1\"}');
INSERT INTO `sys_logs` VALUES (148, '2018-07-10 15:42:57.000000', '{\"ip\": \"::ffff:127.0.0.1\", \"method\": \"DELETE\", \"status\": 404, \"originalUrl\": \"/group/deleteItem?id=31\"}');
INSERT INTO `sys_logs` VALUES (149, '2018-07-10 15:46:09.000000', '{\"ip\": \"::ffff:127.0.0.1\", \"method\": \"DELETE\", \"status\": 404, \"originalUrl\": \"/group/deleteItem?id=31\"}');
INSERT INTO `sys_logs` VALUES (150, '2018-07-10 15:46:43.000000', '{\"ip\": \"::ffff:127.0.0.1\", \"method\": \"DELETE\", \"status\": 200, \"originalUrl\": \"/group/deleteItem?id=31\"}');
INSERT INTO `sys_logs` VALUES (151, '2018-07-10 15:46:55.000000', '{\"ip\": \"::ffff:127.0.0.1\", \"method\": \"PUT\", \"status\": 200, \"originalUrl\": \"/group/updateItem?id=31&sn=10035&name=%E4%BA%94%E4%B8%AD%E9%98%9F&remark=11111\"}');
INSERT INTO `sys_logs` VALUES (152, '2018-07-10 15:47:42.000000', '{\"ip\": \"::ffff:127.0.0.1\", \"method\": \"DELETE\", \"status\": 404, \"originalUrl\": \"/group/deleteItem?id=31\"}');
INSERT INTO `sys_logs` VALUES (153, '2018-07-10 15:48:02.000000', '{\"ip\": \"::ffff:127.0.0.1\", \"method\": \"DELETE\", \"status\": 404, \"originalUrl\": \"/group/deleteItem?id=27\"}');
INSERT INTO `sys_logs` VALUES (154, '2018-07-10 15:49:11.000000', '{\"ip\": \"::ffff:127.0.0.1\", \"method\": \"DELETE\", \"status\": 404, \"originalUrl\": \"/user/deleteItem?0=1\"}');
INSERT INTO `sys_logs` VALUES (155, '2018-07-10 15:49:40.000000', '{\"ip\": \"::ffff:127.0.0.1\", \"method\": \"DELETE\", \"status\": 200, \"originalUrl\": \"/user/deleteItem?0=1\"}');
INSERT INTO `sys_logs` VALUES (156, '2018-07-10 15:50:36.000000', '{\"ip\": \"::ffff:127.0.0.1\", \"method\": \"DELETE\", \"status\": 200, \"originalUrl\": \"/user/deleteItem?0=1\"}');
INSERT INTO `sys_logs` VALUES (157, '2018-07-10 15:51:15.000000', '{\"ip\": \"::ffff:127.0.0.1\", \"method\": \"DELETE\", \"status\": 200, \"originalUrl\": \"/user/deleteItem?0=1\"}');
INSERT INTO `sys_logs` VALUES (158, '2018-07-10 15:53:40.000000', '{\"ip\": \"::ffff:127.0.0.1\", \"method\": \"DELETE\", \"status\": 200, \"originalUrl\": \"/group/deleteItem?id=%7B%22id%22:31,%22parent_id%22:4,%22name%22:%22%E4%BA%94%E4%B8%AD%E9%98%9F%22,%22sn%22:%2210035%22,%22remark%22:%2211111%22%7D\"}');
INSERT INTO `sys_logs` VALUES (159, '2018-07-15 07:37:36', '{\"ip\": \"::ffff:127.0.0.1\", \"method\": \"PUT\", \"status\": 200, \"originalUrl\": \"/btype/updateItem?id=1&enterprise=123456&contacts=123333&phone=123&faxes=123&address=123&email=123&taxId=123&bank=123&remark=123\"}');

-- ----------------------------
-- Table structure for sys_maintains
-- ----------------------------
DROP TABLE IF EXISTS `sys_maintains`;
CREATE TABLE `sys_maintains`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_maintains
-- ----------------------------
INSERT INTO `sys_maintains` VALUES (1, '常见故障维修', '123');
INSERT INTO `sys_maintains` VALUES (2, '计划项目维修', '123');

-- ----------------------------
-- Table structure for sys_malfunctions
-- ----------------------------
DROP TABLE IF EXISTS `sys_malfunctions`;
CREATE TABLE `sys_malfunctions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_malfunctions
-- ----------------------------
INSERT INTO `sys_malfunctions` VALUES (1, '自然磨损', '123');
INSERT INTO `sys_malfunctions` VALUES (2, '违规使用', '123');
INSERT INTO `sys_malfunctions` VALUES (3, '配件质量差', '123');
INSERT INTO `sys_malfunctions` VALUES (4, '其他', '123');

-- ----------------------------
-- Table structure for sys_measurements
-- ----------------------------
DROP TABLE IF EXISTS `sys_measurements`;
CREATE TABLE `sys_measurements`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_measurements
-- ----------------------------
INSERT INTO `sys_measurements` VALUES (2, '个', '');
INSERT INTO `sys_measurements` VALUES (3, '箱', '');
INSERT INTO `sys_measurements` VALUES (4, '条', '');
INSERT INTO `sys_measurements` VALUES (5, '台', '');

-- ----------------------------
-- Table structure for sys_permissions
-- ----------------------------
DROP TABLE IF EXISTS `sys_permissions`;
CREATE TABLE `sys_permissions`  (
  `id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `active` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `kind` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `action` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `resource` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission`  (
  `id` int(11) NOT NULL,
  `role_id` int(11) NULL DEFAULT NULL,
  `permission_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_role_permission_permission_id_fkey`(`permission_id`) USING BTREE,
  INDEX `sys_role_permission_role_id_fkey`(`role_id`) USING BTREE,
  CONSTRAINT `sys_role_permission_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `sys_permissions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sys_role_permission_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `sys_roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles`;
CREATE TABLE `sys_roles`  (
  `id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_roles
-- ----------------------------
INSERT INTO `sys_roles` VALUES (1, 'admin', NULL);
INSERT INTO `sys_roles` VALUES (2, 'user', NULL);

-- ----------------------------
-- Table structure for sys_types
-- ----------------------------
DROP TABLE IF EXISTS `sys_types`;
CREATE TABLE `sys_types`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_types
-- ----------------------------
INSERT INTO `sys_types` VALUES (1, '传感设备', '123');
INSERT INTO `sys_types` VALUES (2, '采集设备', '123');
INSERT INTO `sys_types` VALUES (3, '通用设备', '123');

-- ----------------------------
-- Table structure for sys_upkeeps
-- ----------------------------
DROP TABLE IF EXISTS `sys_upkeeps`;
CREATE TABLE `sys_upkeeps`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_upkeeps
-- ----------------------------
INSERT INTO `sys_upkeeps` VALUES (1, '日常擦拭', '123');
INSERT INTO `sys_upkeeps` VALUES (2, '每周保养', '123');
INSERT INTO `sys_upkeeps` VALUES (3, '月度维护', '123');

-- ----------------------------
-- Table structure for sys_users
-- ----------------------------
DROP TABLE IF EXISTS `sys_users`;
CREATE TABLE `sys_users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pwd` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `active` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `group` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `group_ids` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `role` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `token` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_users
-- ----------------------------
INSERT INTO `sys_users` VALUES (1, 'baoyibin', 'baoyibin', '123456', 'true', '台部/一大队/一中队', '1/2/5', '1', '123456', 'V1ArNzGI8xqRvDN7E6flaPFx7WriTNMNTyc863GWF48', '2018-08-05 19:54:39');
INSERT INTO `sys_users` VALUES (2, 'user', 'user', '123456', 'true', '台部/一大队/一中队', '1/2/5', '1', '123456', NULL, NULL);
INSERT INTO `sys_users` VALUES (3, 'admin', 'admin', '1111111', 'true', '台部/一大队/一中队', '1/2/5', '1', '123456', 'tI0oQdDsib1nqOIZ3x_sDXF40mPbOmGr-Yw8VbToHFs', '2018-09-28 13:52:52');

SET FOREIGN_KEY_CHECKS = 1;
