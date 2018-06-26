/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : wms

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 26/06/2018 15:36:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_approvals
-- ----------------------------
DROP TABLE IF EXISTS `app_approvals`;
CREATE TABLE `app_approvals`  (
  `id` int(11) NOT NULL,
  `app_id` int(11) DEFAULT NULL,
  `ts` datetime(0) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `state` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `app_approvals_app_id_fkey`(`app_id`) USING BTREE,
  INDEX `app_approvals_user_id_fkey`(`user_id`) USING BTREE,
  CONSTRAINT `app_approvals_app_id_fkey` FOREIGN KEY (`app_id`) REFERENCES `apps` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `app_approvals_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_approvals
-- ----------------------------
INSERT INTO `app_approvals` VALUES (27, 9, '2018-06-06 03:23:12', 4, '同意', NULL, '123');
INSERT INTO `app_approvals` VALUES (28, 9, '2018-06-06 03:23:12', 5, '同意', NULL, '123');
INSERT INTO `app_approvals` VALUES (29, 11, '2018-06-06 03:50:49', 6, '待审批', NULL, NULL);
INSERT INTO `app_approvals` VALUES (30, 11, '2018-06-06 03:50:49', 5, '待审批', NULL, NULL);
INSERT INTO `app_approvals` VALUES (31, 11, '2018-06-06 03:50:49', 2, '同意', NULL, 'adfa');
INSERT INTO `app_approvals` VALUES (40, 15, '2018-06-06 05:57:12', 1, '同意', NULL, '123');
INSERT INTO `app_approvals` VALUES (43, 21, '2018-06-19 07:31:06', 3, '同意', 'ad', 'dfa');
INSERT INTO `app_approvals` VALUES (44, 21, '2018-06-19 07:31:06', 2, '待审批', NULL, NULL);
INSERT INTO `app_approvals` VALUES (45, 22, '2018-06-19 07:31:06', 3, '同意', 'dsdd', 'ddd');
INSERT INTO `app_approvals` VALUES (46, 22, '2018-06-19 07:31:06', 2, '待审批', NULL, NULL);
INSERT INTO `app_approvals` VALUES (52, 28, '2018-05-29 07:57:07', 3, '待审批', NULL, NULL);
INSERT INTO `app_approvals` VALUES (64, 34, '2018-06-06 10:35:54', 1, '拒绝', NULL, '123');
INSERT INTO `app_approvals` VALUES (66, 35, '2018-06-06 12:51:56', 4, '拒绝', NULL, '123');
INSERT INTO `app_approvals` VALUES (67, 35, '2018-06-06 12:51:56', 2, '拒绝', NULL, '123');
INSERT INTO `app_approvals` VALUES (87, 48, '2018-06-07 03:39:59', 1, '拒绝', NULL, '123');
INSERT INTO `app_approvals` VALUES (88, 49, '2018-06-07 06:11:30', 2, '同意', NULL, NULL);
INSERT INTO `app_approvals` VALUES (89, 49, '2018-06-07 06:11:30', 5, '同意', NULL, NULL);
INSERT INTO `app_approvals` VALUES (90, 50, '2018-06-07 08:17:50', 2, '同意', '', '');
INSERT INTO `app_approvals` VALUES (91, 50, '2018-06-07 08:17:50', 4, '待审批', '', '');
INSERT INTO `app_approvals` VALUES (92, 51, '2018-06-07 08:30:18', 1, '待审批', NULL, NULL);
INSERT INTO `app_approvals` VALUES (93, 51, '2018-06-07 08:30:18', 2, '拒绝', NULL, '申请驳回');
INSERT INTO `app_approvals` VALUES (96, 52, '2018-06-07 11:17:47', 1, '待审批', NULL, NULL);
INSERT INTO `app_approvals` VALUES (97, 52, '2018-06-07 11:17:47', 2, '同意', NULL, NULL);
INSERT INTO `app_approvals` VALUES (98, 52, '2018-06-07 11:17:47', 3, '拒绝', NULL, NULL);
INSERT INTO `app_approvals` VALUES (105, 55, '2018-06-07 11:45:30', 1, '待审批', NULL, NULL);
INSERT INTO `app_approvals` VALUES (106, 55, '2018-06-07 11:45:30', 2, '拒绝', NULL, '不予通过');
INSERT INTO `app_approvals` VALUES (107, 55, '2018-06-07 11:45:30', 4, '待审批', NULL, NULL);
INSERT INTO `app_approvals` VALUES (108, 56, '2018-06-07 11:47:52', 1, '同意', NULL, 'tongyi');
INSERT INTO `app_approvals` VALUES (109, 56, '2018-06-07 11:47:52', 2, '同意', NULL, NULL);
INSERT INTO `app_approvals` VALUES (110, 57, '2018-06-07 11:50:05', 2, '同意', NULL, NULL);
INSERT INTO `app_approvals` VALUES (111, 57, '2018-06-07 11:50:05', 1, '待审批', NULL, NULL);
INSERT INTO `app_approvals` VALUES (112, 57, '2018-06-07 11:50:05', 3, '同意', NULL, NULL);
INSERT INTO `app_approvals` VALUES (113, 58, '2018-06-08 02:30:35', 1, '待审批', '', '');
INSERT INTO `app_approvals` VALUES (114, 58, '2018-06-08 02:30:35', 2, '拒绝', '', '拒绝');
INSERT INTO `app_approvals` VALUES (115, 59, '2018-06-08 02:46:20', 2, '同意', '', '');
INSERT INTO `app_approvals` VALUES (116, 59, '2018-06-08 02:46:20', 1, '待审批', '', '');
INSERT INTO `app_approvals` VALUES (117, 59, '2018-06-08 02:46:20', 3, '待审批', '', '');
INSERT INTO `app_approvals` VALUES (118, 60, '2018-06-08 03:29:49', 2, '同意', '', 'hahahaha');
INSERT INTO `app_approvals` VALUES (119, 61, '2018-06-08 03:50:19', 2, '同意', '', '通过');
INSERT INTO `app_approvals` VALUES (120, 63, '2018-06-08 05:51:43', 2, '拒绝', '', '不予通过');
INSERT INTO `app_approvals` VALUES (121, 63, '2018-06-08 05:51:43', 3, '待审批', '', '');
INSERT INTO `app_approvals` VALUES (122, 63, '2018-06-08 05:51:43', 1, '待审批', '', '');
INSERT INTO `app_approvals` VALUES (123, 64, '2018-06-08 09:03:30', 5, '同意', NULL, '123');
INSERT INTO `app_approvals` VALUES (124, 64, '2018-06-08 09:03:30', 6, '同意', NULL, '123');
INSERT INTO `app_approvals` VALUES (125, 64, '2018-06-08 09:03:30', 4, '同意', NULL, '123');
INSERT INTO `app_approvals` VALUES (126, 65, '2018-06-11 06:12:24', 2, '待审批', '', '');
INSERT INTO `app_approvals` VALUES (127, 65, '2018-06-11 07:01:06', 1, '', '', '');
INSERT INTO `app_approvals` VALUES (128, 66, '2018-06-11 07:09:04', 2, '待审批', '', '');
INSERT INTO `app_approvals` VALUES (129, 67, '2018-06-11 09:41:13', 2, '待审批', '', '');
INSERT INTO `app_approvals` VALUES (131, 68, '2018-05-31 01:42:29', 3, '同意', 'adf', 'afad');
INSERT INTO `app_approvals` VALUES (132, 68, '2018-05-31 01:42:29', 4, '待审批', NULL, NULL);
INSERT INTO `app_approvals` VALUES (133, 68, '2018-05-31 01:42:29', 2, '待审批', NULL, NULL);
INSERT INTO `app_approvals` VALUES (134, 68, '2018-05-31 01:42:29', 5, '待审批', NULL, NULL);
INSERT INTO `app_approvals` VALUES (135, 68, '2018-05-31 01:42:29', 6, '待审批', NULL, NULL);
INSERT INTO `app_approvals` VALUES (136, 69, '2018-05-31 01:42:29', 3, '拒绝', 'ddd', 'ddd');
INSERT INTO `app_approvals` VALUES (137, 70, '2018-06-13 02:04:37', 3, '拒绝', 'adf', 'adf');
INSERT INTO `app_approvals` VALUES (138, 71, '2018-06-05 02:08:40', 3, '待审批', NULL, '123');
INSERT INTO `app_approvals` VALUES (139, 72, '2018-06-12 02:09:29', 3, '拒绝', 'ad', 'adf');
INSERT INTO `app_approvals` VALUES (140, 73, '2018-06-12 02:16:32', 2, '待审批', '', '');
INSERT INTO `app_approvals` VALUES (141, 74, '2018-05-30 02:28:42', 3, '待审批', NULL, NULL);
INSERT INTO `app_approvals` VALUES (176, 113, '2018-06-12 07:49:36', 2, '待审批', '', '');
INSERT INTO `app_approvals` VALUES (177, 114, '2018-06-12 08:03:05', 3, '待审批', NULL, NULL);
INSERT INTO `app_approvals` VALUES (178, 115, '2018-06-12 08:10:41', 3, '待审批', NULL, NULL);
INSERT INTO `app_approvals` VALUES (179, 116, '2018-06-12 08:18:18', 3, '待审批', NULL, NULL);
INSERT INTO `app_approvals` VALUES (180, 117, '2018-06-12 08:24:18', 3, '待审批', NULL, NULL);
INSERT INTO `app_approvals` VALUES (181, 118, '2018-06-12 08:28:31', 3, '待审批', NULL, NULL);
INSERT INTO `app_approvals` VALUES (182, 119, '2018-06-12 08:32:42', 3, '待审批', NULL, NULL);
INSERT INTO `app_approvals` VALUES (183, 120, '2018-06-12 08:36:31', 2, '待审批', '', '');
INSERT INTO `app_approvals` VALUES (184, 121, '2018-06-13 06:08:25', 1, '拒绝', NULL, '123');
INSERT INTO `app_approvals` VALUES (185, 126, '2018-06-14 06:24:49', 1, '待审批', NULL, '123');
INSERT INTO `app_approvals` VALUES (186, 126, '2018-06-14 06:24:49', 5, '待审批', NULL, '123');
INSERT INTO `app_approvals` VALUES (187, 128, '2018-06-15 06:21:44', 10, '待审批', '', '');
INSERT INTO `app_approvals` VALUES (188, 128, '2018-06-15 06:21:44', 9, '拒绝', '', '111');
INSERT INTO `app_approvals` VALUES (189, 129, '2018-06-15 06:27:07', 2, '待审批', '', '');
INSERT INTO `app_approvals` VALUES (190, 129, '2018-06-15 06:27:07', 9, '待审批', '', '');
INSERT INTO `app_approvals` VALUES (191, 130, '2018-06-15 06:34:08', 9, '待审批', '', '');
INSERT INTO `app_approvals` VALUES (192, 130, '2018-06-15 06:34:08', 1, '待审批', '', '');
INSERT INTO `app_approvals` VALUES (193, 130, '2018-06-19 10:16:54', 4, '', '', '');
INSERT INTO `app_approvals` VALUES (194, 131, '2018-06-19 10:18:25', 9, '同意', '', '020');
INSERT INTO `app_approvals` VALUES (195, 131, '2018-06-19 10:26:53', 10, '', '', '');
INSERT INTO `app_approvals` VALUES (196, 132, '2018-06-20 01:34:48', 3, '同意', '', 'dddd');
INSERT INTO `app_approvals` VALUES (197, 132, '2018-06-20 01:34:48', 10, '待审批', '', '');
INSERT INTO `app_approvals` VALUES (198, 133, '2018-06-20 01:37:35', 10, '待审批', '', '');
INSERT INTO `app_approvals` VALUES (199, 134, '2018-06-20 02:44:29', 10, '待审批', '', '');
INSERT INTO `app_approvals` VALUES (200, 134, '2018-06-20 02:44:29', 2, '待审批', '', '');
INSERT INTO `app_approvals` VALUES (201, 135, '2018-06-20 02:44:48', 2, '待审批', '', '');
INSERT INTO `app_approvals` VALUES (202, 136, '2018-06-20 03:04:09', 2, '待审批', '', '');
INSERT INTO `app_approvals` VALUES (203, 137, '2018-06-20 03:04:44', 2, '待审批', '', '');
INSERT INTO `app_approvals` VALUES (204, 138, '2018-06-20 05:48:36', 10, '待审批', NULL, NULL);
INSERT INTO `app_approvals` VALUES (205, 138, '2018-06-20 05:48:36', 9, '同意', NULL, NULL);
INSERT INTO `app_approvals` VALUES (206, NULL, NULL, 9, '待审批', NULL, '');
INSERT INTO `app_approvals` VALUES (207, 140, '2018-06-20 09:32:50', 9, '待审批', NULL, NULL);
INSERT INTO `app_approvals` VALUES (208, 141, '2018-06-22 01:40:19', 1, '同意', '', '111');
INSERT INTO `app_approvals` VALUES (209, 142, '2018-06-22 01:49:43', 1, '同意', NULL, NULL);
INSERT INTO `app_approvals` VALUES (210, 143, '2018-06-22 03:17:15', 1, '同意', '', '77');

-- ----------------------------
-- Table structure for app_notices
-- ----------------------------
DROP TABLE IF EXISTS `app_notices`;
CREATE TABLE `app_notices`  (
  `id` int(11) NOT NULL,
  `app_id` int(11) DEFAULT NULL,
  `ts` datetime(0) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `state` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `app_notices_app_id_fkey`(`app_id`) USING BTREE,
  INDEX `app_notices_user_id_fkey`(`user_id`) USING BTREE,
  CONSTRAINT `app_notices_app_id_fkey` FOREIGN KEY (`app_id`) REFERENCES `apps` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `app_notices_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_notices
-- ----------------------------
INSERT INTO `app_notices` VALUES (21, 9, '2018-06-06 03:23:12', 6, '待查看');
INSERT INTO `app_notices` VALUES (22, 9, '2018-06-06 03:23:12', 3, '待查看');
INSERT INTO `app_notices` VALUES (23, 9, '2018-06-06 03:23:12', 2, '待查看');
INSERT INTO `app_notices` VALUES (31, 15, '2018-06-06 05:57:12', 1, '已查看');
INSERT INTO `app_notices` VALUES (33, 21, '2018-06-19 07:31:06', 5, NULL);
INSERT INTO `app_notices` VALUES (34, 21, '2018-06-19 07:31:06', 2, NULL);
INSERT INTO `app_notices` VALUES (35, 22, '2018-06-19 07:31:06', 3, '已查看');
INSERT INTO `app_notices` VALUES (36, 22, '2018-06-19 07:31:06', 1, '已查看');
INSERT INTO `app_notices` VALUES (42, 28, '2018-05-29 07:57:07', 2, NULL);
INSERT INTO `app_notices` VALUES (43, 28, '2018-05-29 07:57:07', 3, '已查看');
INSERT INTO `app_notices` VALUES (55, 34, '2018-06-06 10:35:54', 1, '已查看');
INSERT INTO `app_notices` VALUES (57, 35, '2018-06-06 12:51:56', 6, '待查看');
INSERT INTO `app_notices` VALUES (58, 35, '2018-06-06 12:51:56', 2, '待查看');
INSERT INTO `app_notices` VALUES (74, 48, '2018-06-07 03:39:59', 1, '已查看');
INSERT INTO `app_notices` VALUES (75, 49, '2018-06-07 06:11:30', 2, '已查看');
INSERT INTO `app_notices` VALUES (76, 49, '2018-06-07 06:11:30', 4, '待查看');
INSERT INTO `app_notices` VALUES (77, 50, '2018-06-07 08:17:50', 2, '待查看');
INSERT INTO `app_notices` VALUES (78, 50, '2018-06-07 08:17:50', 5, '待查看');
INSERT INTO `app_notices` VALUES (79, 51, '2018-06-07 08:30:18', 2, '待查看');
INSERT INTO `app_notices` VALUES (80, 51, '2018-06-07 08:30:18', 3, '待查看');
INSERT INTO `app_notices` VALUES (83, 52, '2018-06-07 11:17:47', 2, '已查看');
INSERT INTO `app_notices` VALUES (90, 55, '2018-06-07 11:45:30', 1, '待查看');
INSERT INTO `app_notices` VALUES (91, 55, '2018-06-07 11:45:30', 2, '已查看');
INSERT INTO `app_notices` VALUES (92, 55, '2018-06-07 11:45:30', 4, '待查看');
INSERT INTO `app_notices` VALUES (93, 56, '2018-06-07 11:47:52', 1, '待查看');
INSERT INTO `app_notices` VALUES (94, 56, '2018-06-07 11:47:52', 2, '待查看');
INSERT INTO `app_notices` VALUES (95, 57, '2018-06-07 11:50:05', 2, '已查看');
INSERT INTO `app_notices` VALUES (96, 57, '2018-06-07 11:50:05', 1, '已查看');
INSERT INTO `app_notices` VALUES (97, 57, '2018-06-07 11:50:05', 3, '已查看');
INSERT INTO `app_notices` VALUES (98, 58, '2018-06-08 02:30:35', 4, '待查看');
INSERT INTO `app_notices` VALUES (99, 58, '2018-06-08 02:30:35', 2, '待查看');
INSERT INTO `app_notices` VALUES (100, 59, '2018-06-08 02:46:20', 2, '已查看');
INSERT INTO `app_notices` VALUES (101, 59, '2018-06-08 02:46:20', 1, '已查看');
INSERT INTO `app_notices` VALUES (102, 59, '2018-06-08 02:46:20', 3, '待查看');
INSERT INTO `app_notices` VALUES (103, 60, '2018-06-08 03:29:49', 2, '已查看');
INSERT INTO `app_notices` VALUES (104, 61, '2018-06-08 03:50:19', 2, '已查看');
INSERT INTO `app_notices` VALUES (105, 63, '2018-06-08 05:51:43', 1, '已查看');
INSERT INTO `app_notices` VALUES (106, 63, '2018-06-08 05:51:43', 2, '待查看');
INSERT INTO `app_notices` VALUES (107, 64, '2018-06-08 09:03:30', 6, '待查看');
INSERT INTO `app_notices` VALUES (108, 64, '2018-06-08 09:03:30', 5, '待查看');
INSERT INTO `app_notices` VALUES (109, 64, '2018-06-08 09:03:30', 4, '已查看');
INSERT INTO `app_notices` VALUES (110, 65, '2018-06-11 06:12:24', 1, '待查看');
INSERT INTO `app_notices` VALUES (111, 65, '2018-06-11 06:12:24', 2, '已查看');
INSERT INTO `app_notices` VALUES (112, 66, '2018-06-11 07:09:04', 2, '待查看');
INSERT INTO `app_notices` VALUES (113, 67, '2018-06-11 09:41:13', 2, '待查看');
INSERT INTO `app_notices` VALUES (114, 68, '2018-05-31 01:42:29', 6, '待查看');
INSERT INTO `app_notices` VALUES (115, 68, '2018-05-31 01:42:29', 3, '已查看');
INSERT INTO `app_notices` VALUES (116, 68, '2018-05-31 01:42:29', 2, '待查看');
INSERT INTO `app_notices` VALUES (117, 68, '2018-05-31 01:42:29', 1, '已查看');
INSERT INTO `app_notices` VALUES (118, 69, '2018-05-31 01:42:29', 3, '待查看');
INSERT INTO `app_notices` VALUES (119, 70, '2018-06-13 02:04:37', 3, '已查看');
INSERT INTO `app_notices` VALUES (120, 71, '2018-06-05 02:08:40', 3, '待查看');
INSERT INTO `app_notices` VALUES (121, 72, '2018-06-12 02:09:29', 3, '待查看');
INSERT INTO `app_notices` VALUES (122, 73, '2018-06-12 02:16:32', 2, '待查看');
INSERT INTO `app_notices` VALUES (158, 113, '2018-06-12 07:49:36', 2, '待查看');
INSERT INTO `app_notices` VALUES (159, 114, '2018-06-12 08:03:05', 3, '待查看');
INSERT INTO `app_notices` VALUES (160, 115, '2018-06-12 08:10:41', 3, '待查看');
INSERT INTO `app_notices` VALUES (161, 116, '2018-06-12 08:18:18', 3, '待查看');
INSERT INTO `app_notices` VALUES (162, 117, '2018-06-12 08:24:18', 3, '待查看');
INSERT INTO `app_notices` VALUES (163, 118, '2018-06-12 08:28:31', 3, '待查看');
INSERT INTO `app_notices` VALUES (164, 119, '2018-06-12 08:32:42', 3, '待查看');
INSERT INTO `app_notices` VALUES (165, 120, '2018-06-12 08:36:31', 2, '待查看');
INSERT INTO `app_notices` VALUES (166, 121, '2018-06-13 06:08:25', 1, '已查看');
INSERT INTO `app_notices` VALUES (167, 126, '2018-06-14 06:24:49', 9, '已查看');
INSERT INTO `app_notices` VALUES (168, 129, '2018-06-15 06:27:07', 2, '待查看');
INSERT INTO `app_notices` VALUES (169, 129, '2018-06-15 06:27:07', 9, '待查看');
INSERT INTO `app_notices` VALUES (170, 130, '2018-06-15 06:34:08', 1, '待查看');
INSERT INTO `app_notices` VALUES (171, 131, '2018-06-19 10:18:25', 10, '待查看');
INSERT INTO `app_notices` VALUES (172, 131, '2018-06-19 10:26:55', 4, '');
INSERT INTO `app_notices` VALUES (173, 132, '2018-06-20 01:34:48', 9, '待查看');
INSERT INTO `app_notices` VALUES (174, 134, '2018-06-20 02:44:29', 2, '待查看');
INSERT INTO `app_notices` VALUES (175, 135, '2018-06-20 02:44:48', 2, '待查看');
INSERT INTO `app_notices` VALUES (176, 136, '2018-06-20 03:04:09', 2, '待查看');
INSERT INTO `app_notices` VALUES (177, 137, '2018-06-20 03:04:44', 2, '待查看');
INSERT INTO `app_notices` VALUES (178, NULL, NULL, 9, '待查看');
INSERT INTO `app_notices` VALUES (179, 141, '2018-06-22 01:40:19', 1, '待查看');
INSERT INTO `app_notices` VALUES (180, 142, '2018-06-22 01:49:43', 1, '已查看');
INSERT INTO `app_notices` VALUES (181, 143, '2018-06-22 03:17:15', 1, '待查看');

-- ----------------------------
-- Table structure for apps
-- ----------------------------
DROP TABLE IF EXISTS `apps`;
CREATE TABLE `apps`  (
  `id` int(11) NOT NULL,
  `kind` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `number` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ts` datetime(0) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `state` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `apps_user_id_fkey`(`user_id`) USING BTREE,
  CONSTRAINT `apps_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of apps
-- ----------------------------
INSERT INTO `apps` VALUES (9, 'eq', '10001234', '2018-06-06 03:23:12', 1, '审批通过', '123');
INSERT INTO `apps` VALUES (10, 'wm', '11', '2018-06-06 03:33:37', 3, '待审批', NULL);
INSERT INTO `apps` VALUES (11, 'wm', '22', '2018-06-06 03:50:49', 3, '待审批', NULL);
INSERT INTO `apps` VALUES (13, 'wm', '33', '2018-06-07 03:52:35', 3, '待审批', NULL);
INSERT INTO `apps` VALUES (15, 'eq', '1001011', '2018-06-06 05:57:12', 1, '待审批', '123');
INSERT INTO `apps` VALUES (21, 'wm', '12343535', '2018-06-19 07:31:06', 3, '审批中', NULL);
INSERT INTO `apps` VALUES (22, 'wm', '135435', '2018-06-19 07:31:06', 2, '审批中', NULL);
INSERT INTO `apps` VALUES (28, 'wm', '3434', '2018-05-29 07:57:07', 3, '待审批', NULL);
INSERT INTO `apps` VALUES (34, 'eq', '10011111', '2018-06-06 10:35:54', 1, '待审批', '123');
INSERT INTO `apps` VALUES (35, 'eq', '1111', '2018-06-06 12:51:56', 2, '审批拒绝', '1111');
INSERT INTO `apps` VALUES (48, 'eq', '10011001', '2018-06-07 03:39:59', 1, '审批拒绝', '123');
INSERT INTO `apps` VALUES (49, 'tk', '201867141130136', '2018-06-07 06:11:30', 2, '审批通过', NULL);
INSERT INTO `apps` VALUES (50, 'mal', '1245554541', '2018-06-07 08:17:17', 2, '审批中', NULL);
INSERT INTO `apps` VALUES (51, 'tk_fin', '201867163017166', '2018-06-07 08:30:18', 2, '审批拒绝', NULL);
INSERT INTO `apps` VALUES (52, 'tk', '201867191747123', '2018-06-07 11:17:47', 2, '审批拒绝', NULL);
INSERT INTO `apps` VALUES (55, 'tk', '201867194530102', '2018-06-07 11:45:30', 2, '审批拒绝', NULL);
INSERT INTO `apps` VALUES (56, 'tk', '201867194752117', '2018-06-07 11:47:52', 2, '审批通过', NULL);
INSERT INTO `apps` VALUES (57, 'tk_fin', '20186719504171', '2018-06-07 11:50:05', 2, '审批中', NULL);
INSERT INTO `apps` VALUES (58, 'tk', '201868103034157', '2018-06-08 02:30:35', 4, '审批拒绝', NULL);
INSERT INTO `apps` VALUES (59, 'mal', '12455545415', '2018-06-08 02:44:16', 2, '审批中', '123');
INSERT INTO `apps` VALUES (60, 'mal', '12455545419', '2018-06-08 03:29:24', 2, '审批通过', '2222');
INSERT INTO `apps` VALUES (61, 'tk', '201868115018133', '2018-06-08 03:50:18', 2, '审批通过', NULL);
INSERT INTO `apps` VALUES (63, 'mal', '20186813519170', '2018-06-08 05:51:10', 2, '审批拒绝', '555');
INSERT INTO `apps` VALUES (64, 'eq', '10011', '2018-06-08 09:03:30', 1, '审批通过', '123');
INSERT INTO `apps` VALUES (65, 'tk', '2018611141224105', '2018-06-11 06:12:24', 2, '待审批', '88');
INSERT INTO `apps` VALUES (66, 'tk_fin', '20186111594118', '2018-06-11 07:09:04', 2, '待审批', NULL);
INSERT INTO `apps` VALUES (67, 'mal', '2222222222222', '2018-06-22 17:42:57', 2, '待审批', '1111');
INSERT INTO `apps` VALUES (68, 'wm', '12313343', '2018-05-31 01:42:29', 2, '审批中', NULL);
INSERT INTO `apps` VALUES (69, 'wm', 'dee', '2018-05-31 01:42:29', 3, '审批拒绝', NULL);
INSERT INTO `apps` VALUES (70, 'wm', 'dd', '2018-06-13 02:04:37', 3, '审批拒绝', NULL);
INSERT INTO `apps` VALUES (71, 'eq', '12341', '2018-06-05 02:08:40', 3, '待审批', NULL);
INSERT INTO `apps` VALUES (72, 'wm', '1234131', '2018-06-12 02:09:29', 3, '审批拒绝', NULL);
INSERT INTO `apps` VALUES (73, 'mal', '2018612101614162', '2018-06-12 02:16:15', 2, '待审批', '111112');
INSERT INTO `apps` VALUES (74, 'wm', '4542345', '2018-05-30 02:28:42', 3, '待审批', NULL);
INSERT INTO `apps` VALUES (113, 'mal', '201861215491107', '2018-06-12 07:49:01', 2, '待审批', '123');
INSERT INTO `apps` VALUES (114, 'wm', '1343434', '2018-06-12 08:03:05', 3, '待审批', NULL);
INSERT INTO `apps` VALUES (115, 'wm', '33343', '2018-06-12 08:10:41', 3, '待审批', NULL);
INSERT INTO `apps` VALUES (116, 'wm', '4534', '2018-06-12 08:18:18', 3, '待审批', NULL);
INSERT INTO `apps` VALUES (117, 'wm', '341', '2018-06-12 08:24:18', 3, '待审批', NULL);
INSERT INTO `apps` VALUES (118, 'wm', '1343', '2018-06-12 08:28:31', 4, '待审批', NULL);
INSERT INTO `apps` VALUES (119, 'wm', '33333333', '2018-06-12 08:32:42', 3, '待审批', NULL);
INSERT INTO `apps` VALUES (120, 'mal', '2018612163613107', '2018-06-12 08:36:13', 2, '待审批', '111');
INSERT INTO `apps` VALUES (121, 'eq', 'aaaaaaaazz', '2018-06-13 06:08:25', 1, '审批拒绝', 'zxc');
INSERT INTO `apps` VALUES (126, 'eq', '222', '2018-06-14 06:24:49', 9, '待审批', NULL);
INSERT INTO `apps` VALUES (128, 'mal', '2018615141850110', '2018-06-15 06:18:50', 1, '审批拒绝', NULL);
INSERT INTO `apps` VALUES (129, 'mal', '201861514267106', '2018-06-15 06:26:08', 2, '待审批', '123');
INSERT INTO `apps` VALUES (130, 'mal', '2018615142955103', '2018-06-15 06:29:55', 2, '待审批', NULL);
INSERT INTO `apps` VALUES (131, 'mal', '2018619181758185', '2018-06-19 10:17:59', 1, '审批通过', NULL);
INSERT INTO `apps` VALUES (132, 'mal', '20186209346124', '2018-06-20 01:34:06', 9, '审批中', NULL);
INSERT INTO `apps` VALUES (133, 'mal', '201862093535160', '2018-06-20 01:35:36', 9, '待审批', NULL);
INSERT INTO `apps` VALUES (134, 'tk', '2018620104428150', '2018-06-20 02:44:28', 2, '待审批', NULL);
INSERT INTO `apps` VALUES (135, 'tk', '2018620104447188', '2018-06-20 02:44:47', 2, '待审批', '1044');
INSERT INTO `apps` VALUES (136, 'mal', '201862011346107', '2018-06-20 03:03:46', 2, '待审批', '测试');
INSERT INTO `apps` VALUES (137, 'mal', '201862011417160', '2018-06-20 11:04:28', 2, '待审批', '测试2');
INSERT INTO `apps` VALUES (138, 'wm', '21165', '2018-06-20 05:48:36', 9, '审批中', NULL);
INSERT INTO `apps` VALUES (140, 'wm', '788768', '2018-06-20 09:32:50', 9, '待审批', NULL);
INSERT INTO `apps` VALUES (141, 'mal', '201862293941125', '2018-06-22 01:39:41', 1, '审批通过', NULL);
INSERT INTO `apps` VALUES (142, 'wm', 'WZSQ1001', '2018-06-22 01:49:43', 1, '审批通过', NULL);
INSERT INTO `apps` VALUES (143, 'mal', '2018622111648150', '2018-06-22 03:16:49', 1, '审批通过', NULL);

-- ----------------------------
-- Table structure for eq_apps
-- ----------------------------
DROP TABLE IF EXISTS `eq_apps`;
CREATE TABLE `eq_apps`  (
  `id` int(11) NOT NULL,
  `app_id` int(11) DEFAULT NULL,
  `spec_id` int(11) DEFAULT NULL,
  `application` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `reason` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `eq_apps_app_id_fkey`(`app_id`) USING BTREE,
  INDEX `eq_apps_spec_id_fkey`(`spec_id`) USING BTREE,
  CONSTRAINT `eq_apps_app_id_fkey` FOREIGN KEY (`app_id`) REFERENCES `apps` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `eq_apps_spec_id_fkey` FOREIGN KEY (`spec_id`) REFERENCES `eq_specs` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of eq_apps
-- ----------------------------
INSERT INTO `eq_apps` VALUES (2, 9, 1, NULL, NULL);
INSERT INTO `eq_apps` VALUES (3, 15, 1, NULL, NULL);
INSERT INTO `eq_apps` VALUES (4, 34, 1, NULL, NULL);
INSERT INTO `eq_apps` VALUES (5, 35, 1, NULL, NULL);
INSERT INTO `eq_apps` VALUES (6, 48, 1, NULL, NULL);
INSERT INTO `eq_apps` VALUES (7, 64, 1, NULL, NULL);
INSERT INTO `eq_apps` VALUES (8, 71, 1, NULL, NULL);
INSERT INTO `eq_apps` VALUES (9, NULL, 1, NULL, NULL);
INSERT INTO `eq_apps` VALUES (42, 121, 1, NULL, NULL);
INSERT INTO `eq_apps` VALUES (44, NULL, 1, NULL, NULL);

-- ----------------------------
-- Table structure for eq_elements
-- ----------------------------
DROP TABLE IF EXISTS `eq_elements`;
CREATE TABLE `eq_elements`  (
  `id` int(11) NOT NULL,
  `module_id` int(11) DEFAULT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `model` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `number` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `spec` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `manufacturer` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `amount` int(11) DEFAULT NULL,
  `state` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `eq_elements_module_id_fkey`(`module_id`) USING BTREE,
  CONSTRAINT `eq_elements_module_id_fkey` FOREIGN KEY (`module_id`) REFERENCES `eq_modules` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of eq_elements
-- ----------------------------
INSERT INTO `eq_elements` VALUES (1, 1, '组件名称_1005', '组件型号_1005', '组件编号_1005', '组件规格_1005', '生产厂家_1005', 11, NULL, '备注_1005');

-- ----------------------------
-- Table structure for eq_kinds
-- ----------------------------
DROP TABLE IF EXISTS `eq_kinds`;
CREATE TABLE `eq_kinds`  (
  `id` int(11) NOT NULL,
  `system_id` int(11) DEFAULT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `model` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `manufacturer` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `manu_addr` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `manu_contact` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `property` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `eq_kinds_system_id_fkey`(`system_id`) USING BTREE,
  CONSTRAINT `eq_kinds_system_id_fkey` FOREIGN KEY (`system_id`) REFERENCES `eq_systems` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of eq_kinds
-- ----------------------------
INSERT INTO `eq_kinds` VALUES (1, 1, '装备名称_1002', '装备型号_1002', '生产厂家_1002', '厂家地址_1002', '联系方式_1002', '性能指标_1002', '备注_1002');
INSERT INTO `eq_kinds` VALUES (3, 6, '装备名称_1012', '装备型号_1012', '生产厂家_1012', '厂家地址_1012', '联系方式_1012', '性能指标_1012', '备注_1012');

-- ----------------------------
-- Table structure for eq_modules
-- ----------------------------
DROP TABLE IF EXISTS `eq_modules`;
CREATE TABLE `eq_modules`  (
  `id` int(11) NOT NULL,
  `spec_id` int(11) DEFAULT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `model` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `number` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `manufacturer` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `amount` int(11) DEFAULT NULL,
  `state` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `eq_modules_spec_id_fkey`(`spec_id`) USING BTREE,
  CONSTRAINT `eq_modules_spec_id_fkey` FOREIGN KEY (`spec_id`) REFERENCES `eq_specs` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of eq_modules
-- ----------------------------
INSERT INTO `eq_modules` VALUES (1, 1, '模块名称_1004', '模块型号_1004', '模块编号_1004', '生产厂家_1004', 100, '状态_1004', '备注_1004');

-- ----------------------------
-- Table structure for eq_specs
-- ----------------------------
DROP TABLE IF EXISTS `eq_specs`;
CREATE TABLE `eq_specs`  (
  `id` int(11) NOT NULL,
  `kind_id` int(11) DEFAULT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `serial_no` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `building` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `room` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `production_date` date DEFAULT NULL,
  `install_date` date DEFAULT NULL,
  `department` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `keeper` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `source` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `state` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `endpoint` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `eq_specs_kind_id_fkey`(`kind_id`) USING BTREE,
  CONSTRAINT `eq_specs_kind_id_fkey` FOREIGN KEY (`kind_id`) REFERENCES `eq_kinds` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for eq_systems
-- ----------------------------
DROP TABLE IF EXISTS `eq_systems`;
CREATE TABLE `eq_systems`  (
  `id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `summary` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of eq_systems
-- ----------------------------
INSERT INTO `eq_systems` VALUES (1, '装备系统名称_1001', '系统概述_1001', '备注_1001');
INSERT INTO `eq_systems` VALUES (6, '装备系统名称_1011', '系统概述_1011', '备注_1011');

-- ----------------------------
-- Table structure for mal_apps
-- ----------------------------
DROP TABLE IF EXISTS `mal_apps`;
CREATE TABLE `mal_apps`  (
  `id` int(11) NOT NULL,
  `app_id` int(11) DEFAULT NULL,
  `mal_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `mal_apps_app_id_fkey`(`app_id`) USING BTREE,
  INDEX `mal_apps_mal_id_fkey`(`mal_id`) USING BTREE,
  CONSTRAINT `mal_apps_app_id_fkey` FOREIGN KEY (`app_id`) REFERENCES `apps` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `mal_apps_mal_id_fkey` FOREIGN KEY (`mal_id`) REFERENCES `mal_reports` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mal_apps
-- ----------------------------
INSERT INTO `mal_apps` VALUES (13, 50, 17);
INSERT INTO `mal_apps` VALUES (14, 59, 18);
INSERT INTO `mal_apps` VALUES (15, 60, 19);
INSERT INTO `mal_apps` VALUES (16, 63, 21);
INSERT INTO `mal_apps` VALUES (21, 128, 26);
INSERT INTO `mal_apps` VALUES (22, 129, 27);
INSERT INTO `mal_apps` VALUES (24, 131, 29);
INSERT INTO `mal_apps` VALUES (25, 132, 30);
INSERT INTO `mal_apps` VALUES (27, 136, 38);
INSERT INTO `mal_apps` VALUES (28, 137, 39);
INSERT INTO `mal_apps` VALUES (29, 141, 41);
INSERT INTO `mal_apps` VALUES (30, 143, 42);

-- ----------------------------
-- Table structure for mal_exps
-- ----------------------------
DROP TABLE IF EXISTS `mal_exps`;
CREATE TABLE `mal_exps`  (
  `id` int(11) NOT NULL,
  `major` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_sys_name` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_kind_name` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_kind_model` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_spec_name` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_spec_building` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_spec_room` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_mod_name` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_mod_model` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_mod_number` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_ele_name` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_ele_model` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_ele_number` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_ele_spec` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `hap_date` date DEFAULT NULL,
  `rep_date` date DEFAULT NULL,
  `phenomenon` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `cause` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `disposition` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `department` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `source` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `report_date` date DEFAULT NULL,
  `reporter` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mal_exps
-- ----------------------------
INSERT INTO `mal_exps` VALUES (1, '测试专业123', '装备系统名称123', '装备名称123', '123aaa', '装备编号123', 'qqq', 'aaa', '装备模块123', '123aaa', '123aaa', '组件名称123', '123', '123', '123', '2018-06-06', '2018-06-06', '321', '231', '123', '台部/三大队', '123', '2018-06-06', '123', '23');
INSERT INTO `mal_exps` VALUES (2, '测试专业', '装备系统名称123', '装备名称123', '123aaa', '装备编号123', 'qqq', 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-12', NULL, '12', NULL, NULL, NULL, '2018-06-12', NULL, NULL);
INSERT INTO `mal_exps` VALUES (3, '测试专业', '装备系统名称123', '装备名称123', '123aaa', '装备编号123', 'qqq', 'aaa', '装备模块123', '123aaa', '123aaa', '组件名称123', '1234', '123', '123', '2018-06-12', '2018-06-27', NULL, NULL, NULL, NULL, NULL, '2018-06-19', NULL, NULL);
INSERT INTO `mal_exps` VALUES (4, '测试专业', '装备系统名称123', '装备名称123', '123aaa', '装备编号123', 'qqq', 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-21', NULL, NULL, NULL, NULL, NULL, '2018-06-20', NULL, NULL);
INSERT INTO `mal_exps` VALUES (5, '测试专业', '装备系统名称123', '装备名称123', '123aaa', '装备编号123', 'qqq', 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-20', NULL, NULL, NULL, NULL, '厂家提供', '2018-06-20', NULL, NULL);
INSERT INTO `mal_exps` VALUES (6, '测试专业', '装备系统名称123', '装备名称123', '123aaa', '装备编号123', 'qqq', 'aaa', '装备模块123', '123aaa', '123aaa', '组件名称123', '1234', '123', '123', '2018-06-20', '2018-06-22', NULL, NULL, NULL, '台部/二大队', '厂家提供', '2018-06-20', NULL, NULL);
INSERT INTO `mal_exps` VALUES (7, '测试专业', '系统名称122', '的', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-06', '2018-06-20', NULL, NULL, NULL, NULL, NULL, '2018-06-20', NULL, '0');

-- ----------------------------
-- Table structure for mal_records
-- ----------------------------
DROP TABLE IF EXISTS `mal_records`;
CREATE TABLE `mal_records`  (
  `id` int(11) NOT NULL,
  `major` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_sys_name` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_kind_name` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_kind_model` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_spec_name` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_spec_building` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_spec_room` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_mod_name` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_mod_model` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_mod_number` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_ele_name` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_ele_model` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_ele_number` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_ele_spec` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `hap_date` date DEFAULT NULL,
  `rep_date` date DEFAULT NULL,
  `phenomenon` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `cause` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `disposition` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `department` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `project` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `follower` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `factory` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `factory_person` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `contact` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `report_date` date DEFAULT NULL,
  `reporter` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mal_records
-- ----------------------------
INSERT INTO `mal_records` VALUES (1, '测试专业', '装备系统名称123', '装备名称123', '123aaa', '装备编号123', 'qqq', 'aaa', '装备模块123', '123aaa', '123aaa', '组件名称123', '123', '123', '123', '2018-06-06', '2018-06-07', '1212', '123123', '123', '台部/一大队', '123', '123', '123', '123', '123234342', '2018-06-06', '1212', '1111');
INSERT INTO `mal_records` VALUES (3, '测试专业', '系统名称111', '装备名称11', '11', '装备编号11', '11', '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-12', NULL, NULL);
INSERT INTO `mal_records` VALUES (4, '测试专业', '系统名称111', '装备名称11', '11', '装备编号11', '11', '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-13', NULL, 'da fdf ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-12', NULL, NULL);
INSERT INTO `mal_records` VALUES (5, '测试专业', '装备系统名称123', '装备名称123', '123aaa', '装备编号123', 'qqq', 'aaa', '装备模块123', '123aaa', '123aaa', '组件名称123', '1234', '123', '123', '2018-05-28', '2018-06-05', '123', '123', '123', '台部/一大队', '13', '123', '1321', '13131', '13', '2018-06-19', '123', NULL);

-- ----------------------------
-- Table structure for mal_repair_records
-- ----------------------------
DROP TABLE IF EXISTS `mal_repair_records`;
CREATE TABLE `mal_repair_records`  (
  `id` int(11) NOT NULL,
  `mal_id` int(11) DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `complete` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `report_date` date DEFAULT NULL,
  `reporter` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `mal_repair_records_mal_id_fkey`(`mal_id`) USING BTREE,
  CONSTRAINT `mal_repair_records_mal_id_fkey` FOREIGN KEY (`mal_id`) REFERENCES `mal_reports` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mal_repair_records
-- ----------------------------
INSERT INTO `mal_repair_records` VALUES (4, 19, '123', 't', '2018-06-11', '123', '123');
INSERT INTO `mal_repair_records` VALUES (5, 19, '111', 'f', '2018-06-11', '111', '11');
INSERT INTO `mal_repair_records` VALUES (6, 19, '123', 'f', '2018-06-11', '123', '111');
INSERT INTO `mal_repair_records` VALUES (7, 29, '大', 'f', '2018-06-20', '的', NULL);

-- ----------------------------
-- Table structure for mal_reports
-- ----------------------------
DROP TABLE IF EXISTS `mal_reports`;
CREATE TABLE `mal_reports`  (
  `id` int(11) NOT NULL,
  `major` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_sys_name` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_kind_name` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_kind_model` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_spec_name` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_spec_building` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_spec_room` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_mod_name` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_mod_model` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_mod_number` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_ele_name` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_ele_model` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_ele_number` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_ele_spec` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `hap_date` date DEFAULT NULL,
  `rep_date` date DEFAULT NULL,
  `phenomenon` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `cause` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `disposition` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `department` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `state` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `report_date` date DEFAULT NULL,
  `reporter` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mal_reports
-- ----------------------------
INSERT INTO `mal_reports` VALUES (17, '测试专业123', '装备系统名称123', '装备名称123', '123aaa', '装备编号123', 'qqq', 'aaa', '装备模块123', '123aaa', '123aaa', '组件名称123', '123', '123', '123', '2018-06-07', '2018-06-30', '123', '123', '123', '123', '已修复', '2018-06-07', '123', '123');
INSERT INTO `mal_reports` VALUES (18, '测试专业', '装备系统名称123', '装备名称123', '123aaa', '装备编号123', 'qqq', 'aaa', '装备模块123', '123aaa', '123aaa', '组件名称123', '123', '123', '123', NULL, NULL, '2222', '222', '222', '台部/一大队', '未修复', '2018-06-08', '222', '222');
INSERT INTO `mal_reports` VALUES (19, '测试专业', '装备系统名称123', '装备名称123', '123aaa', '装备编号123', 'qqq', 'aaa', '装备模块123', '123aaa', '123aaa', '组件名称123', '123', '123', '123', NULL, NULL, NULL, NULL, NULL, NULL, '修复中', '2018-06-08', NULL, NULL);
INSERT INTO `mal_reports` VALUES (20, '测试专业', '装备系统名称123', '装备名称123', '123aaa', '装备编号123', 'qqq', 'aaa', '装备模块123', '123aaa', '123aaa', '组件名称123', '123', '123', '123', '2018-06-15', '2018-06-26', '444', '444', '444', '台部/二大队', '未修复', '2018-06-08', '444', '4444');
INSERT INTO `mal_reports` VALUES (21, '测试专业', '装备系统名称123', '装备名称123', '123aaa', '装备编号123', 'qqq', 'aaa', '装备模块123', '123aaa', '123aaa', '组件名称123', '123', '123', '123', NULL, NULL, '555', '5553', '555', '台部/一大队', '未修复', '2018-06-08', '555', '555');
INSERT INTO `mal_reports` VALUES (26, '测试专业', '装备系统名称123', '装备名称123', '123aaa', '装备编号123', 'qqq', 'aaa', '装备模块123', '123aaa', '123aaa', '组件名称123', '1234', '123', '123', '2018-06-06', NULL, '的士大夫撒f', '达发的发顺丰', '大山东', '台部/二大队', '未修复', '2018-06-15', 'baoyibin', 'af wfew');
INSERT INTO `mal_reports` VALUES (27, '测试专业', '系统名称122', '装备名称11', '11', '装备编号11', '11', '1111', '模块名称1111', '11', '11', '组件名称11', '1111', '11', '11', '2018-06-15', '2018-06-15', '124', '123', '123', '台部/一大队', '未修复', '2018-06-15', '123', '123');
INSERT INTO `mal_reports` VALUES (29, '测试专业', '装备系统名称123', '装备名称123', '123aaa', '装备编号123', 'qqq', 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '台部/一大队', '修复中', '2018-06-19', NULL, NULL);
INSERT INTO `mal_reports` VALUES (30, '测试专业123', '装备系统名称123', '装备名称123', '123aaa', '装备编号123', 'qqq', 'aaa', '装备模块123', '123aaa', '123aaa', '组件名称123', '1234', '123', '123', '2018-06-06', NULL, NULL, NULL, NULL, '台部/一大队/一中队', '未修复', '2018-06-20', NULL, NULL);
INSERT INTO `mal_reports` VALUES (32, '测试专业', '装备系统名称123', '装备名称123', '123aaa', '装备编号123', 'qqq', 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '台部/一大队', '已修复', '2018-06-20', NULL, NULL);
INSERT INTO `mal_reports` VALUES (33, '测试专业123', '装备系统名称123', '装备名称123', '123aaa', '装备编号123', 'qqq', 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '台部/一大队', '未修复', '2018-06-20', NULL, NULL);
INSERT INTO `mal_reports` VALUES (34, '测试专业123', '系统名称122', '装备名称11', '11', '装备编号11', '11', '1111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '台部/一大队', '未修复', '2018-06-20', NULL, NULL);
INSERT INTO `mal_reports` VALUES (35, '测试专业123', '装备系统名称123', '装备名称123', '123aaa', '装备编号123', 'qqq', 'aaa', '装备模块123', '123aaa', '123aaa', '组件名称123', '1234', '123', '123', NULL, NULL, NULL, NULL, NULL, '台部/二大队', '未修复', '2018-06-20', NULL, NULL);
INSERT INTO `mal_reports` VALUES (36, '测试专业', '装备系统名称123', '装备名称123', '123aaa', '装备编号123', 'qqq', 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '台部/二大队', '未修复', '2018-06-20', NULL, NULL);
INSERT INTO `mal_reports` VALUES (37, '测试专业123', '装备系统名称123', '装备名称123', '123aaa', '装备编号123', 'qqq', 'aaa', '装备模块123', '123aaa', '123aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '台部/一大队', '未修复', '2018-06-20', NULL, NULL);
INSERT INTO `mal_reports` VALUES (38, '测试专业', '装备系统名称123', '装备名称123', '123aaa', '装备编号123', 'qqq', 'aaa', '装备模块123', '123aaa', '123aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '台部/二大队', '未修复', '2018-06-20', NULL, NULL);
INSERT INTO `mal_reports` VALUES (39, '测试专业123', '系统名称122', '装备名称11', '11', '装备编号11', '11', '1111', '模块名称1111', '11', '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '台部/二大队', '未修复', '2018-06-20', NULL, NULL);
INSERT INTO `mal_reports` VALUES (40, '测试专业', '装备系统名称123', '装备名称123', '123aaa', '装备编号123', 'qqq', 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '台部', '已修复', '2018-06-20', NULL, NULL);
INSERT INTO `mal_reports` VALUES (41, '测试专业', '装备系统名称_1001', '装备名称_1002', '装备型号_1002', '装备编号_1003', '所在机房_1003', '所在房间_1003', '模块名称_1004', '模块型号_1004', '模块编号_1004', '组件名称_1005', '组件型号_1005', '组件编号_1005', '组件规格_1005', '2018-06-22', '2018-06-23', NULL, NULL, NULL, '台部', '未修复', '2018-06-22', NULL, NULL);
INSERT INTO `mal_reports` VALUES (42, '测试专业', '装备系统名称_1001', '装备名称_1002', '装备型号_1002', '装备编号_1003', '所在机房_1003', '所在房间_1003', '模块名称_1004', '模块型号_1004', '模块编号_1004', '组件名称_1005', '组件型号_1005', '组件编号_1005', '组件规格_1005', NULL, NULL, NULL, NULL, NULL, '台部', '未修复', '2018-06-22', NULL, NULL);

-- ----------------------------
-- Table structure for mt_cycles
-- ----------------------------
DROP TABLE IF EXISTS `mt_cycles`;
CREATE TABLE `mt_cycles`  (
  `id` int(11) NOT NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cycle` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `major` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `department` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `principal` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mt_cycles
-- ----------------------------
INSERT INTO `mt_cycles` VALUES (1, '2016-12-31T16:00:00.000Z', '半年', '测试专业123', '台部', '负责人_1001', '备注_1001\n');
INSERT INTO `mt_cycles` VALUES (3, '2011-12-31T16:00:00.000Z', '日', '测试专业', '台部', '负责人_1002', '备注_1002\n');
INSERT INTO `mt_cycles` VALUES (6, '2018-12-31T16:00:00.000Z', '年', '测试专业123', '台部', '负责人_1003', '备注_1003\n');
INSERT INTO `mt_cycles` VALUES (9, '2010-12-31T16:00:00.000Z', '季度', '测试专业', '台部', '负责人_1004', '备注_1004\n');

-- ----------------------------
-- Table structure for mt_docs
-- ----------------------------
DROP TABLE IF EXISTS `mt_docs`;
CREATE TABLE `mt_docs`  (
  `id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `major` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `department` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `path` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `create_time` datetime(0) DEFAULT NULL,
  `create_by` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `mod_time` datetime(0) DEFAULT NULL,
  `mod_by` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mt_docs
-- ----------------------------
INSERT INTO `mt_docs` VALUES (1, '维护规程_1001', '测试专业', '台部', 'uploads/LVA-i Questionaire_Chinese.pdf', '2018-06-05 08:21:31', 'admin', '2018-06-22 01:04:20', 'baoyibin', '备注_1001\n');
INSERT INTO `mt_docs` VALUES (3, '维护规程_1002', '测试专业', '台部/一大队', 'uploads/123.txt', '2018-06-12 03:13:05', 'admin', '2018-06-22 01:04:44', 'baoyibin', '备注_1002\n');
INSERT INTO `mt_docs` VALUES (4, '维护规程_1003', '测试专业123', '台部/二大队', 'uploads/111.txt', '2018-06-14 08:48:05', 'admin', '2018-06-22 01:05:36', 'baoyibin', '备注_1003\n');
INSERT INTO `mt_docs` VALUES (6, '维护规程_1004', '测试专业', '台部/三大队', 'uploads/123.txt', '2018-06-20 09:09:28', 'admin', '2018-06-22 01:06:14', 'baoyibin', '备注_1004\n');
INSERT INTO `mt_docs` VALUES (7, '维护规程_1005', '测试专业', '台部/一大队/一中队', 'uploads/新建文本文档.txt', '2018-06-20 10:09:26', 'zhouyajiao', '2018-06-22 01:06:19', 'baoyibin', '备注_1005\n');
INSERT INTO `mt_docs` VALUES (8, '维护规程_1006', '测试专业', '台部/一大队/二中队', 'uploads/新建文本文档.txt', '2018-06-20 10:10:31', 'baoyibin', '2018-06-22 01:06:39', 'baoyibin', '备注_1006\n');

-- ----------------------------
-- Table structure for mt_plan_items
-- ----------------------------
DROP TABLE IF EXISTS `mt_plan_items`;
CREATE TABLE `mt_plan_items`  (
  `id` int(11) NOT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `standard` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `mt_plan_items_plan_id_fkey`(`plan_id`) USING BTREE,
  CONSTRAINT `mt_plan_items_plan_id_fkey` FOREIGN KEY (`plan_id`) REFERENCES `mt_plans` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mt_plan_items
-- ----------------------------
INSERT INTO `mt_plan_items` VALUES (9, NULL, '维护标准123', '维护内容123');
INSERT INTO `mt_plan_items` VALUES (10, NULL, '维护标准aaa', '维护内容aaa');
INSERT INTO `mt_plan_items` VALUES (11, 4, '维护标准_1001', '维护内容_1001');
INSERT INTO `mt_plan_items` VALUES (12, 4, '维护标准_1002', '维护内容_1002');
INSERT INTO `mt_plan_items` VALUES (13, NULL, 'vvv', 'aaa');
INSERT INTO `mt_plan_items` VALUES (14, 5, '维护标准_1002', '维护内容_1002');
INSERT INTO `mt_plan_items` VALUES (15, NULL, 'vvv', 'ccc');
INSERT INTO `mt_plan_items` VALUES (16, 6, '维护标准_1001', '维护内容_1001');
INSERT INTO `mt_plan_items` VALUES (17, 6, '维护标准_1002', '维护内容_1002');
INSERT INTO `mt_plan_items` VALUES (19, 4, '维护标准_1003', '维护内容_1003');
INSERT INTO `mt_plan_items` VALUES (21, NULL, '111', '111');
INSERT INTO `mt_plan_items` VALUES (22, NULL, '111', '111');
INSERT INTO `mt_plan_items` VALUES (24, NULL, '323252', '11');
INSERT INTO `mt_plan_items` VALUES (25, NULL, '230', '4');
INSERT INTO `mt_plan_items` VALUES (26, NULL, 'afafda ', '23ref');
INSERT INTO `mt_plan_items` VALUES (27, NULL, 'd ', 'afaf ');
INSERT INTO `mt_plan_items` VALUES (28, NULL, 'd ', 'afaf ');
INSERT INTO `mt_plan_items` VALUES (29, NULL, 'afafda ', '23ref');
INSERT INTO `mt_plan_items` VALUES (30, NULL, '23', '32');
INSERT INTO `mt_plan_items` VALUES (31, NULL, '23 ', '23 23');
INSERT INTO `mt_plan_items` VALUES (34, NULL, '141', '2');
INSERT INTO `mt_plan_items` VALUES (35, NULL, '141', '2');
INSERT INTO `mt_plan_items` VALUES (36, 6, '维护标准_1003', '维护内容_1003');
INSERT INTO `mt_plan_items` VALUES (37, NULL, '2', '333');
INSERT INTO `mt_plan_items` VALUES (38, NULL, '2', '333');
INSERT INTO `mt_plan_items` VALUES (39, NULL, '的', '撒地方');
INSERT INTO `mt_plan_items` VALUES (40, 13, '维护标准_1001', '维护内容_1001');

-- ----------------------------
-- Table structure for mt_plans
-- ----------------------------
DROP TABLE IF EXISTS `mt_plans`;
CREATE TABLE `mt_plans`  (
  `id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cycle` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `major` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `department` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `principal` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `report_date` date DEFAULT NULL,
  `reporter` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mt_plans
-- ----------------------------
INSERT INTO `mt_plans` VALUES (4, '维护计划_1001', '周', '测试专业', '台部/一大队', NULL, '2018-06-06', '上报人_1001', '备注_1001');
INSERT INTO `mt_plans` VALUES (5, '维护计划_1002', '日', '测试专业123', '台部', NULL, '2018-06-08', '上报人_1002', '备注_1002\n');
INSERT INTO `mt_plans` VALUES (6, '维护计划_1003', '季度', '测试专业', '台部/一大队', NULL, '2018-06-16', '上报人_1003', '备注_1003\n');
INSERT INTO `mt_plans` VALUES (13, '维护计划_1004', '年', '测试专业123', '台部/二大队', NULL, '2018-06-20', '上报人_1004', '备注_1004\n');

-- ----------------------------
-- Table structure for mt_record_items
-- ----------------------------
DROP TABLE IF EXISTS `mt_record_items`;
CREATE TABLE `mt_record_items`  (
  `id` int(11) NOT NULL,
  `rec_id` int(11) DEFAULT NULL,
  `standard` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `restand` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `trouble` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `mt_record_items_rec_id_fkey`(`rec_id`) USING BTREE,
  CONSTRAINT `mt_record_items_rec_id_fkey` FOREIGN KEY (`rec_id`) REFERENCES `mt_records` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mt_record_items
-- ----------------------------
INSERT INTO `mt_record_items` VALUES (5, 3, '维护标准123', '维护内容123', '123', '123');
INSERT INTO `mt_record_items` VALUES (6, 3, '维护标准aaa', '维护内容aaa', 'aaa', 'aaa');
INSERT INTO `mt_record_items` VALUES (7, 4, '维护标准123', '维护内容123', 'aa', 'bb');
INSERT INTO `mt_record_items` VALUES (8, 4, '维护标准aaa', '维护内容aaa', '11', '22');
INSERT INTO `mt_record_items` VALUES (9, 5, '维护标准123', '维护内容123', 'zz', 'vv');
INSERT INTO `mt_record_items` VALUES (10, 5, '维护标准aaa', '维护内容aaa', '12', '12');
INSERT INTO `mt_record_items` VALUES (11, 7, 'vvv', 'aaa', '111', '111');
INSERT INTO `mt_record_items` VALUES (14, 11, 'zzz', 'aaa', '45', '11');
INSERT INTO `mt_record_items` VALUES (15, 11, 'vvv', 'ccc', '54', '2121');
INSERT INTO `mt_record_items` VALUES (16, 11, '23123', '00', '033', '3');

-- ----------------------------
-- Table structure for mt_records
-- ----------------------------
DROP TABLE IF EXISTS `mt_records`;
CREATE TABLE `mt_records`  (
  `id` int(11) NOT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `report_date` date DEFAULT NULL,
  `reporter` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `mt_records_plan_id_fkey`(`plan_id`) USING BTREE,
  CONSTRAINT `mt_records_plan_id_fkey` FOREIGN KEY (`plan_id`) REFERENCES `mt_plans` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mt_records
-- ----------------------------
INSERT INTO `mt_records` VALUES (3, 4, '2018-06-05', 'admin', NULL);
INSERT INTO `mt_records` VALUES (4, 4, '2018-06-08', 'admin', NULL);
INSERT INTO `mt_records` VALUES (5, 4, '2018-06-08', 'admin', NULL);
INSERT INTO `mt_records` VALUES (6, 6, '2018-06-12', 'admin', NULL);
INSERT INTO `mt_records` VALUES (7, 5, '2018-06-12', 'admin', NULL);
INSERT INTO `mt_records` VALUES (10, 6, '2018-06-15', 'admin', NULL);
INSERT INTO `mt_records` VALUES (11, 6, '2018-06-15', 'admin', NULL);

-- ----------------------------
-- Table structure for sys_annoncements
-- ----------------------------
DROP TABLE IF EXISTS `sys_annoncements`;
CREATE TABLE `sys_annoncements`  (
  `id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `path` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `create_time` datetime(0) DEFAULT NULL,
  `create_by` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_annoncements_group_id_fkey`(`group_id`) USING BTREE,
  CONSTRAINT `sys_annoncements_group_id_fkey` FOREIGN KEY (`group_id`) REFERENCES `sys_groups` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_annoncements
-- ----------------------------
INSERT INTO `sys_annoncements` VALUES (1, '测试公告', 1, 'uploads/Desert.jpg', '2018-06-05 08:06:17', 'admin', '123');
INSERT INTO `sys_annoncements` VALUES (2, 'aaa123', 2, 'uploads/SFG1701指挥中心客户端需求分析.doc', '2018-06-07 08:17:51', 'admin', 'abc');
INSERT INTO `sys_annoncements` VALUES (3, '测试上传下载', 1, 'uploads/SFG1701指挥中心客户端需求分析.doc', '2018-06-07 09:08:19', 'admin', '123');
INSERT INTO `sys_annoncements` VALUES (4, '测试', 1, 'uploads/SFG1701指挥中心客户端概要设计.doc', '2018-06-07 09:09:34', '123', '123');
INSERT INTO `sys_annoncements` VALUES (6, 'd', 3, 'uploads/新建文本文档.txt', '2018-05-28 10:00:15', 'd', '123');
INSERT INTO `sys_annoncements` VALUES (7, 'aaa', 1, 'uploads/新建文本文档.txt', '2018-06-08 03:10:50', 'admin', 'aaa');
INSERT INTO `sys_annoncements` VALUES (8, 'aaa', 1, 'uploads/新建文本文档.txt', '2018-06-08 05:51:01', 'aaa', 'aaa');
INSERT INTO `sys_annoncements` VALUES (9, 'aaa', 1, 'uploads/新建文本文档.txt', '2018-06-08 05:52:55', 'aaa', 'aaa');
INSERT INTO `sys_annoncements` VALUES (10, 'aaa', 1, 'uploads/新建文本文档.txt', '2018-06-08 05:53:52', 'aaa', 'aaa');
INSERT INTO `sys_annoncements` VALUES (11, 'aaa', 1, 'uploads/新建文本文档.txt', '2018-06-08 05:54:09', 'aaa', 'aaa');
INSERT INTO `sys_annoncements` VALUES (12, 'aaa', 1, 'uploads/新建文本文档.txt', '2018-06-08 05:54:21', 'aaa', 'aaa');
INSERT INTO `sys_annoncements` VALUES (13, 'aaa', 1, 'uploads/新建文本文档.txt', '2018-06-08 05:54:33', 'aaa', 'aaa');
INSERT INTO `sys_annoncements` VALUES (14, 'aaa', 1, 'uploads/新建文本文档.txt', '2018-06-08 05:55:00', 'aaa', 'aaa');
INSERT INTO `sys_annoncements` VALUES (15, 'aaa', 1, 'uploads/新建文本文档.txt', '2018-06-08 05:55:14', 'aaa', 'aaa');
INSERT INTO `sys_annoncements` VALUES (16, 'aaa', 1, 'uploads/1804项目问题小结.docx', '2018-06-08 05:55:26', 'aaa', 'aaa');
INSERT INTO `sys_annoncements` VALUES (18, '1111', 2, 'uploads/123.txt', '2018-06-15 06:45:06', '111', '23413');
INSERT INTO `sys_annoncements` VALUES (20, '测试公告', 4, 'uploads/新建文本文档.txt', '2018-06-21 01:22:38', 'aaa', '123');

-- ----------------------------
-- Table structure for sys_groups
-- ----------------------------
DROP TABLE IF EXISTS `sys_groups`;
CREATE TABLE `sys_groups`  (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `sn` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_groups_parent_id_fkey`(`parent_id`) USING BTREE,
  CONSTRAINT `sys_groups_parent_id_fkey` FOREIGN KEY (`parent_id`) REFERENCES `sys_groups` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

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
INSERT INTO `sys_groups` VALUES (18, 2, '15001', '四中队', '11');
INSERT INTO `sys_groups` VALUES (27, 2, '15002', '五中队', '12');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` int(11) NOT NULL,
  `ts` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `data` json,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_majors
-- ----------------------------
DROP TABLE IF EXISTS `sys_majors`;
CREATE TABLE `sys_majors`  (
  `id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_majors
-- ----------------------------
INSERT INTO `sys_majors` VALUES (1, '测试专业', NULL);
INSERT INTO `sys_majors` VALUES (2, '测试专业123', NULL);

-- ----------------------------
-- Table structure for sys_permissions
-- ----------------------------
DROP TABLE IF EXISTS `sys_permissions`;
CREATE TABLE `sys_permissions`  (
  `id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `active` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `kind` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `action` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `resource` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_posts
-- ----------------------------
DROP TABLE IF EXISTS `sys_posts`;
CREATE TABLE `sys_posts`  (
  `id` int(11) NOT NULL,
  `sn` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `repost` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `group_id` int(11) DEFAULT NULL,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_posts_group_id_fkey`(`group_id`) USING BTREE,
  CONSTRAINT `sys_posts_group_id_fkey` FOREIGN KEY (`group_id`) REFERENCES `sys_groups` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_posts
-- ----------------------------
INSERT INTO `sys_posts` VALUES (1, '10001', '台长', 'xxx', 1, '123');
INSERT INTO `sys_posts` VALUES (2, '10002', '一大队大队长', 'xxx', 2, '123');
INSERT INTO `sys_posts` VALUES (3, '10003', '二大队大队长', 'qqq', 3, '123');
INSERT INTO `sys_posts` VALUES (4, '10004', '三大队大队长', 'rrr', 4, '123');
INSERT INTO `sys_posts` VALUES (5, '10005', '一中队中队长', 'yyy', 5, '123');
INSERT INTO `sys_posts` VALUES (6, '10006', '二中队中队长', 'yyy', 6, '123');
INSERT INTO `sys_posts` VALUES (7, '10007', '三中队中队长', 'ooo', 7, '123');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission`  (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_role_permission_permission_id_fkey`(`permission_id`) USING BTREE,
  INDEX `sys_role_permission_role_id_fkey`(`role_id`) USING BTREE,
  CONSTRAINT `sys_role_permission_permission_id_fkey` FOREIGN KEY (`permission_id`) REFERENCES `sys_permissions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sys_role_permission_role_id_fkey` FOREIGN KEY (`role_id`) REFERENCES `sys_roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles`;
CREATE TABLE `sys_roles`  (
  `id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_roles
-- ----------------------------
INSERT INTO `sys_roles` VALUES (1, 'admin', NULL);
INSERT INTO `sys_roles` VALUES (2, 'user', NULL);

-- ----------------------------
-- Table structure for sys_users
-- ----------------------------
DROP TABLE IF EXISTS `sys_users`;
CREATE TABLE `sys_users`  (
  `id` int(11) NOT NULL,
  `sn` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pwd` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `active` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_users_group_id_fkey`(`group_id`) USING BTREE,
  INDEX `sys_users_post_id_fkey`(`post_id`) USING BTREE,
  INDEX `sys_users_role_id_fkey`(`role_id`) USING BTREE,
  CONSTRAINT `sys_users_group_id_fkey` FOREIGN KEY (`group_id`) REFERENCES `sys_groups` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sys_users_post_id_fkey` FOREIGN KEY (`post_id`) REFERENCES `sys_posts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sys_users_role_id_fkey` FOREIGN KEY (`role_id`) REFERENCES `sys_roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_users
-- ----------------------------
INSERT INTO `sys_users` VALUES (1, 'baoyibin', 'baoyibin', '123456', 't', 1, 1, 1, '123');
INSERT INTO `sys_users` VALUES (2, 'zhouyajiao', 'zhouyajiao', '123456', 't', 2, 2, 1, '123');
INSERT INTO `sys_users` VALUES (3, 'xujianfeng', 'xujianfeng', '123456', 't', 5, 5, 1, '123');
INSERT INTO `sys_users` VALUES (4, '10000', '测试1', '123456', 't', 5, 5, 2, '123');
INSERT INTO `sys_users` VALUES (5, '10001', '测试2', '123456', 't', 7, 7, 1, '123');
INSERT INTO `sys_users` VALUES (6, '10002', '测试3', '123456', 't', 13, 7, 2, '123');
INSERT INTO `sys_users` VALUES (9, 'liudan', 'liudan', '666666', 't', 1, 1, 2, '');
INSERT INTO `sys_users` VALUES (10, '223', '32', '3', 'f', 1, 1, 2, '');

-- ----------------------------
-- Table structure for tk_apps
-- ----------------------------
DROP TABLE IF EXISTS `tk_apps`;
CREATE TABLE `tk_apps`  (
  `id` int(11) NOT NULL,
  `app_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tk_apps_app_id_fkey`(`app_id`) USING BTREE,
  INDEX `tk_apps_task_id_fkey`(`task_id`) USING BTREE,
  CONSTRAINT `tk_apps_app_id_fkey` FOREIGN KEY (`app_id`) REFERENCES `apps` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tk_apps_task_id_fkey` FOREIGN KEY (`task_id`) REFERENCES `tk_tasks` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tk_apps
-- ----------------------------
INSERT INTO `tk_apps` VALUES (9, 49, 5);
INSERT INTO `tk_apps` VALUES (10, 52, 6);
INSERT INTO `tk_apps` VALUES (13, 55, 7);
INSERT INTO `tk_apps` VALUES (14, 56, 10);
INSERT INTO `tk_apps` VALUES (15, 58, 12);
INSERT INTO `tk_apps` VALUES (16, 61, 13);
INSERT INTO `tk_apps` VALUES (17, 65, 14);
INSERT INTO `tk_apps` VALUES (18, 134, 17);
INSERT INTO `tk_apps` VALUES (19, 135, 16);

-- ----------------------------
-- Table structure for tk_fin_apps
-- ----------------------------
DROP TABLE IF EXISTS `tk_fin_apps`;
CREATE TABLE `tk_fin_apps`  (
  `id` int(11) NOT NULL,
  `app_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tk_fin_apps_app_id_fkey`(`app_id`) USING BTREE,
  INDEX `tk_fin_apps_task_id_fkey`(`task_id`) USING BTREE,
  CONSTRAINT `tk_fin_apps_app_id_fkey` FOREIGN KEY (`app_id`) REFERENCES `apps` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tk_fin_apps_task_id_fkey` FOREIGN KEY (`task_id`) REFERENCES `tk_tasks` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tk_fin_apps
-- ----------------------------
INSERT INTO `tk_fin_apps` VALUES (5, 51, 5);
INSERT INTO `tk_fin_apps` VALUES (6, 57, 11);
INSERT INTO `tk_fin_apps` VALUES (7, 66, 13);

-- ----------------------------
-- Table structure for tk_records
-- ----------------------------
DROP TABLE IF EXISTS `tk_records`;
CREATE TABLE `tk_records`  (
  `id` int(11) NOT NULL,
  `task_id` int(11) DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `complete` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `report_date` date DEFAULT NULL,
  `reporter` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tk_records_task_id_fkey`(`task_id`) USING BTREE,
  CONSTRAINT `tk_records_task_id_fkey` FOREIGN KEY (`task_id`) REFERENCES `tk_tasks` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tk_records
-- ----------------------------
INSERT INTO `tk_records` VALUES (2, 5, '123', 'f', '2018-06-07', '123', '123');
INSERT INTO `tk_records` VALUES (3, 5, '1111', 't', '2018-06-07', '1211', '1111');

-- ----------------------------
-- Table structure for tk_tasks
-- ----------------------------
DROP TABLE IF EXISTS `tk_tasks`;
CREATE TABLE `tk_tasks`  (
  `id` int(11) NOT NULL,
  `number` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `kind` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `basis` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `plan` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `condition` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `budget` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `principal` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `achievement` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `application` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `directory` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `refer` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `team` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `person_contact` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `department_contact` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `app_date` date DEFAULT NULL,
  `fin_date` date DEFAULT NULL,
  `state` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tk_tasks
-- ----------------------------
INSERT INTO `tk_tasks` VALUES (5, '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '台部/二大队', NULL, NULL, '2018-06-07', '2018-06-07', '立项审批通过', '111');
INSERT INTO `tk_tasks` VALUES (6, '222111', '222', '222', '222', '222', '222', '222', '222', '222', '222', '222', '222', '222', '台部', NULL, NULL, '2018-06-07', '2018-06-07', '未提交', '2222');
INSERT INTO `tk_tasks` VALUES (7, '3333', '333', '333', '333', '333', '333', '333', '333', '333', '333', '333', '333', '33', '台部/三大队', '333', '333', '2018-06-07', '2018-06-07', '未提交', '333');
INSERT INTO `tk_tasks` VALUES (10, '44', '44', '4', '4', NULL, '4', '4', '4', '4', '4', '4', '4', '4', '台部/二大队/一中队', '4', '4', '2018-06-07', '2018-06-07', '未提交', '4');
INSERT INTO `tk_tasks` VALUES (11, '5', '5', '5', NULL, NULL, NULL, NULL, '5', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-07', NULL, '未提交', NULL);
INSERT INTO `tk_tasks` VALUES (12, '666', '666', '666', '666', '666', '66', '666', '666', '66', '666', '66', '666', '666', '台部/一大队/二中队', '666', '666', '2018-06-08', NULL, '未提交', '666');
INSERT INTO `tk_tasks` VALUES (13, '77', '777', '77', '777', '77', '777', '777', '777', '777', '777', '777', '777', '77', '台部/一大队', '77', '77', '2018-06-08', '2018-06-08', '未提交', '77');
INSERT INTO `tk_tasks` VALUES (14, '88', '88', '88888', '88', '88', '8888', NULL, '888', '888', NULL, NULL, NULL, NULL, '台部', '88', NULL, '2018-06-08', '2018-06-08', '立项待审批', NULL);
INSERT INTO `tk_tasks` VALUES (15, '32', '1223', '123', '123', '123', NULL, '123', '123', '123', '1233', '123', '13', '13', '台部/二大队', '13', NULL, '2018-06-12', NULL, '未提交', '13');
INSERT INTO `tk_tasks` VALUES (16, '1112', '111', '334', '213', '12312', NULL, NULL, NULL, '213', '3123', '2312', '12312', '123', '台部/一大队', NULL, NULL, '2018-06-20', '2018-06-13', '未提交', '3123');
INSERT INTO `tk_tasks` VALUES (17, '124', 'dd', 'dd', 'dddd', 'ddd', 'ddd', 'dddd', NULL, 'dd', 'ddddd', 'dd', NULL, NULL, '台部/二大队', 'dd', 'dddd', '2018-06-20', '2018-06-20', '未提交', 'ddd');

-- ----------------------------
-- Table structure for wm_app_items
-- ----------------------------
DROP TABLE IF EXISTS `wm_app_items`;
CREATE TABLE `wm_app_items`  (
  `id` int(11) NOT NULL,
  `wm_app_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_name` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `goods_model` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `goods_spec` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `amount` int(11) DEFAULT NULL,
  `app_amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `wm_app_items_goods_id_fkey`(`goods_id`) USING BTREE,
  INDEX `wm_app_items_wm_app_id_fkey`(`wm_app_id`) USING BTREE,
  CONSTRAINT `wm_app_items_goods_id_fkey` FOREIGN KEY (`goods_id`) REFERENCES `wm_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wm_app_items_wm_app_id_fkey` FOREIGN KEY (`wm_app_id`) REFERENCES `wm_apps` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wm_app_items
-- ----------------------------
INSERT INTO `wm_app_items` VALUES (33, 21, 8, '华为交换机', 'WZXH10003', NULL, 32, 10);
INSERT INTO `wm_app_items` VALUES (34, 21, 7, '联想Y500笔记本', 'WZXH10002', '', 2, 2);
INSERT INTO `wm_app_items` VALUES (35, 21, 7, '清华同方笔记本', 'WZXH10001', NULL, 1, 1);
INSERT INTO `wm_app_items` VALUES (36, 22, 8, '华为交换机', 'WZXH10003', NULL, 8, 8);
INSERT INTO `wm_app_items` VALUES (37, 23, 8, '华为交换机', 'WZXH10003', NULL, 10, 10);

-- ----------------------------
-- Table structure for wm_apps
-- ----------------------------
DROP TABLE IF EXISTS `wm_apps`;
CREATE TABLE `wm_apps`  (
  `id` int(11) NOT NULL,
  `app_id` int(11) DEFAULT NULL,
  `application` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `wm_apps_app_id_fkey`(`app_id`) USING BTREE,
  CONSTRAINT `wm_apps_app_id_fkey` FOREIGN KEY (`app_id`) REFERENCES `apps` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wm_apps
-- ----------------------------
INSERT INTO `wm_apps` VALUES (21, 138, '');
INSERT INTO `wm_apps` VALUES (22, 140, '');
INSERT INTO `wm_apps` VALUES (23, 142, '');

-- ----------------------------
-- Table structure for wm_docs
-- ----------------------------
DROP TABLE IF EXISTS `wm_docs`;
CREATE TABLE `wm_docs`  (
  `id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `path` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `create_time` datetime(0) DEFAULT NULL,
  `create_by` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `mod_time` datetime(0) DEFAULT NULL,
  `mod_by` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wm_docs
-- ----------------------------
INSERT INTO `wm_docs` VALUES (6, '文件名称_1002', 'uploads/111.txt', '2018-06-15 06:15:38', '创建人_1002', '2018-06-19 07:46:22', '修改人_1002', '备注_1002');
INSERT INTO `wm_docs` VALUES (7, '文件名称_1001', 'uploads/111.txt', '2018-06-13 08:46:37', '创建人_1001', '2018-06-22 01:19:37', '修改人_1001', '备注_1001');

-- ----------------------------
-- Table structure for wm_goods
-- ----------------------------
DROP TABLE IF EXISTS `wm_goods`;
CREATE TABLE `wm_goods`  (
  `id` int(11) NOT NULL,
  `code` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `spec_id` int(11) DEFAULT NULL,
  `price` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `product_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `wm_goods_spec_id_fkey`(`spec_id`) USING BTREE,
  CONSTRAINT `wm_goods_spec_id_fkey` FOREIGN KEY (`spec_id`) REFERENCES `wm_goods_spec` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wm_goods
-- ----------------------------
INSERT INTO `wm_goods` VALUES (7, 'WZTM10002', 12, '2100', '2017-05-31', '2019-05-31');
INSERT INTO `wm_goods` VALUES (8, 'WZTM10001', 14, '4500', '2016-12-31', '2019-07-30');

-- ----------------------------
-- Table structure for wm_goods_spec
-- ----------------------------
DROP TABLE IF EXISTS `wm_goods_spec`;
CREATE TABLE `wm_goods_spec`  (
  `id` int(11) NOT NULL,
  `active` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `number` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `model` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `spec` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `manufacturer` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `unit` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `application` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `major` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_sys` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_name` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_model` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_module` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `min_amount` int(11) DEFAULT NULL,
  `max_amount` int(11) DEFAULT NULL,
  `guarantee_period` int(11) DEFAULT NULL,
  `remind_period` int(11) DEFAULT NULL,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `eq_kind` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wm_goods_spec
-- ----------------------------
INSERT INTO `wm_goods_spec` VALUES (12, 'f', 'WZ10003', '华为交换机', 'WZXH10003', '无', '南京华为科技有限公司', '台', '未知', '测试专业', '系统名称122', '装备编号11', '11', '模块名称1111', 20, 50, NULL, NULL, '无', '装备名称11');
INSERT INTO `wm_goods_spec` VALUES (13, 't', 'WZ10002', '联想Y500笔记本', 'WZXH10002', '无', '深圳联想有限公司', '台', '未知', '测试专业123', '系统名称122', '装备编号11', '11', '模块名称1111', 10, 100, NULL, NULL, '无', '装备名称11');
INSERT INTO `wm_goods_spec` VALUES (14, 't', 'WZ10001', '清华同方笔记本', 'WZXH10001', '无', '北京清华同方科技有限公司', '台', '未知', '测试专业', '系统名称122', '装备编号11', '11', '模块名称1111', 20, 100, NULL, NULL, '无', '装备名称11');

-- ----------------------------
-- Table structure for wm_inbound_items
-- ----------------------------
DROP TABLE IF EXISTS `wm_inbound_items`;
CREATE TABLE `wm_inbound_items`  (
  `id` int(11) NOT NULL,
  `inbound_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `amount_confirm` int(11) DEFAULT NULL,
  `state` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `wm_inbound_items_goods_id_fkey`(`goods_id`) USING BTREE,
  INDEX `wm_inbound_items_inbound_id_fkey`(`inbound_id`) USING BTREE,
  CONSTRAINT `wm_inbound_items_goods_id_fkey` FOREIGN KEY (`goods_id`) REFERENCES `wm_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wm_inbound_items_inbound_id_fkey` FOREIGN KEY (`inbound_id`) REFERENCES `wm_inbounds` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wm_inbound_items
-- ----------------------------
INSERT INTO `wm_inbound_items` VALUES (6, 8, 7, 3323, 3, 'false');
INSERT INTO `wm_inbound_items` VALUES (7, 9, 8, 22, 0, 'false');
INSERT INTO `wm_inbound_items` VALUES (8, 10, 8, 7, 0, 'false');
INSERT INTO `wm_inbound_items` VALUES (9, 10, 7, 9, 0, 'false');

-- ----------------------------
-- Table structure for wm_inbound_records
-- ----------------------------
DROP TABLE IF EXISTS `wm_inbound_records`;
CREATE TABLE `wm_inbound_records`  (
  `id` int(11) NOT NULL,
  `inbound_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `wm_inbound_records_goods_id_fkey`(`goods_id`) USING BTREE,
  INDEX `wm_inbound_records_inbound_id_fkey`(`inbound_id`) USING BTREE,
  INDEX `wm_inbound_records_store_id_fkey`(`store_id`) USING BTREE,
  CONSTRAINT `wm_inbound_records_goods_id_fkey` FOREIGN KEY (`goods_id`) REFERENCES `wm_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wm_inbound_records_inbound_id_fkey` FOREIGN KEY (`inbound_id`) REFERENCES `wm_inbounds` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wm_inbound_records_store_id_fkey` FOREIGN KEY (`store_id`) REFERENCES `wm_stores` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wm_inbound_records
-- ----------------------------
INSERT INTO `wm_inbound_records` VALUES (18, 8, 1, 7, 1);
INSERT INTO `wm_inbound_records` VALUES (19, 8, 1, 7, 1);
INSERT INTO `wm_inbound_records` VALUES (20, 8, 1, 7, 1);

-- ----------------------------
-- Table structure for wm_inbounds
-- ----------------------------
DROP TABLE IF EXISTS `wm_inbounds`;
CREATE TABLE `wm_inbounds`  (
  `id` int(11) NOT NULL,
  `ts` datetime(0) DEFAULT NULL,
  `number` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `supplier` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `buyer` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `noter` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `source` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `state` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `wm_inbounds_store_id_fkey`(`store_id`) USING BTREE,
  CONSTRAINT `wm_inbounds_store_id_fkey` FOREIGN KEY (`store_id`) REFERENCES `wm_stores` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wm_inbounds
-- ----------------------------
INSERT INTO `wm_inbounds` VALUES (8, '2018-05-29 09:45:54', 'RK10001', 1, '深圳联想有限公司', '采购员1001', '记录人1001', NULL, NULL, '已提交');
INSERT INTO `wm_inbounds` VALUES (9, '2018-06-06 08:02:40', 'RK10002', 2, '北京清华同方科技有限公司', '采购员1002', '记录人1002', '', '', '已提交');
INSERT INTO `wm_inbounds` VALUES (10, '2018-05-31 09:21:41', 'RK10003', 4, '南京华为科技有限公司', '采购员1003', '记录人1003', NULL, NULL, '已提交');

-- ----------------------------
-- Table structure for wm_outbound_items
-- ----------------------------
DROP TABLE IF EXISTS `wm_outbound_items`;
CREATE TABLE `wm_outbound_items`  (
  `id` int(11) NOT NULL,
  `outbound_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_name` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `goods_model` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `goods_spec` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `amount` int(11) DEFAULT NULL,
  `amount_confirm` int(11) DEFAULT NULL,
  `state` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `wm_outbound_items_goods_id_fkey`(`goods_id`) USING BTREE,
  INDEX `wm_outbound_items_outbound_id_fkey`(`outbound_id`) USING BTREE,
  CONSTRAINT `wm_outbound_items_goods_id_fkey` FOREIGN KEY (`goods_id`) REFERENCES `wm_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wm_outbound_items_outbound_id_fkey` FOREIGN KEY (`outbound_id`) REFERENCES `wm_outbounds` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wm_outbound_items
-- ----------------------------
INSERT INTO `wm_outbound_items` VALUES (25, 51, 8, NULL, NULL, NULL, 32, 21, 'false');
INSERT INTO `wm_outbound_items` VALUES (26, 51, NULL, '施工费', '的发', '达', 2, 0, 'false');
INSERT INTO `wm_outbound_items` VALUES (27, 51, 7, NULL, NULL, NULL, 1, 1, 'true');

-- ----------------------------
-- Table structure for wm_outbound_records
-- ----------------------------
DROP TABLE IF EXISTS `wm_outbound_records`;
CREATE TABLE `wm_outbound_records`  (
  `id` int(11) NOT NULL,
  `outbound_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `wm_outbound_records_goods_id_fkey`(`goods_id`) USING BTREE,
  INDEX `wm_outbound_records_outbound_id_fkey`(`outbound_id`) USING BTREE,
  INDEX `wm_outbound_records_store_id_fkey`(`store_id`) USING BTREE,
  CONSTRAINT `wm_outbound_records_goods_id_fkey` FOREIGN KEY (`goods_id`) REFERENCES `wm_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wm_outbound_records_outbound_id_fkey` FOREIGN KEY (`outbound_id`) REFERENCES `wm_outbounds` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wm_outbound_records_store_id_fkey` FOREIGN KEY (`store_id`) REFERENCES `wm_stores` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wm_outbound_records
-- ----------------------------
INSERT INTO `wm_outbound_records` VALUES (12, 51, 2, 8, 21);
INSERT INTO `wm_outbound_records` VALUES (13, 51, 4, 7, 1);

-- ----------------------------
-- Table structure for wm_outbounds
-- ----------------------------
DROP TABLE IF EXISTS `wm_outbounds`;
CREATE TABLE `wm_outbounds`  (
  `id` int(11) NOT NULL,
  `number` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ts` datetime(0) DEFAULT NULL,
  `kind` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `app_id` int(11) NOT NULL,
  `sender` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `send_date` date DEFAULT NULL,
  `action_date` date DEFAULT NULL,
  `state` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `wm_outbounds_app_id_fkey`(`app_id`) USING BTREE,
  INDEX `wm_outbounds_store_id_fkey`(`store_id`) USING BTREE,
  CONSTRAINT `wm_outbounds_app_id_fkey` FOREIGN KEY (`app_id`) REFERENCES `apps` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wm_outbounds_store_id_fkey` FOREIGN KEY (`store_id`) REFERENCES `wm_stores` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wm_outbounds
-- ----------------------------
INSERT INTO `wm_outbounds` VALUES (51, '0.9442914948694687', '2018-06-20 05:52:07', 'wm', 138, 'liudan', '2018-06-20', NULL, NULL, NULL, NULL);
INSERT INTO `wm_outbounds` VALUES (52, '0.21575961531511534', '2018-06-20 09:31:30', 'wm', 119, 'xujianfeng', '2018-06-12', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for wm_purchase
-- ----------------------------
DROP TABLE IF EXISTS `wm_purchase`;
CREATE TABLE `wm_purchase`  (
  `id` int(11) NOT NULL,
  `number` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ts` datetime(0) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `state` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `wm_purchase_user_id_fkey`(`user_id`) USING BTREE,
  CONSTRAINT `wm_purchase_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wm_purchase
-- ----------------------------
INSERT INTO `wm_purchase` VALUES (8, 'CGDH10001', '2018-06-15 09:18:40', 2, '已提交', '123');

-- ----------------------------
-- Table structure for wm_purchase_items
-- ----------------------------
DROP TABLE IF EXISTS `wm_purchase_items`;
CREATE TABLE `wm_purchase_items`  (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_name` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `goods_model` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `goods_spec` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `wm_purchase_items_goods_id_fkey`(`goods_id`) USING BTREE,
  INDEX `wm_purchase_items_purchase_id_fkey`(`purchase_id`) USING BTREE,
  CONSTRAINT `wm_purchase_items_goods_id_fkey` FOREIGN KEY (`goods_id`) REFERENCES `wm_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wm_purchase_items_purchase_id_fkey` FOREIGN KEY (`purchase_id`) REFERENCES `wm_purchase` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wm_purchase_items
-- ----------------------------
INSERT INTO `wm_purchase_items` VALUES (6, 8, NULL, '11', '11', '11', 11);
INSERT INTO `wm_purchase_items` VALUES (7, 8, 7, NULL, NULL, NULL, 12);

-- ----------------------------
-- Table structure for wm_stocks
-- ----------------------------
DROP TABLE IF EXISTS `wm_stocks`;
CREATE TABLE `wm_stocks`  (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `wm_stocks_goods_id_fkey`(`goods_id`) USING BTREE,
  INDEX `wm_stocks_store_id_fkey`(`store_id`) USING BTREE,
  CONSTRAINT `wm_stocks_goods_id_fkey` FOREIGN KEY (`goods_id`) REFERENCES `wm_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wm_stocks_store_id_fkey` FOREIGN KEY (`store_id`) REFERENCES `wm_stores` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wm_stocks
-- ----------------------------
INSERT INTO `wm_stocks` VALUES (19, 1, 7, 60);
INSERT INTO `wm_stocks` VALUES (22, 2, 8, 70);
INSERT INTO `wm_stocks` VALUES (23, 4, 7, 80);

-- ----------------------------
-- Table structure for wm_stores
-- ----------------------------
DROP TABLE IF EXISTS `wm_stores`;
CREATE TABLE `wm_stores`  (
  `id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `local` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `department` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wm_stores
-- ----------------------------
INSERT INTO `wm_stores` VALUES (1, '第三仓库', 'E区', '台部/一大队', '第三仓库E区');
INSERT INTO `wm_stores` VALUES (2, '第二仓库', 'F区', '台部/二大队', '第二仓库F区');
INSERT INTO `wm_stores` VALUES (4, '第一仓库', 'A区', '台部/一大队', '第一仓库A区');

SET FOREIGN_KEY_CHECKS = 1;
