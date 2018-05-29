/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.0.51-dev#zfmm
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : 192.168.0.51:3306
 Source Schema         : db_1

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 16/05/2018 10:38:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for databasechangelog
-- ----------------------------
DROP TABLE IF EXISTS `databasechangelog`;
CREATE TABLE `databasechangelog`  (
  `ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `AUTHOR` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `FILENAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `DATEEXECUTED` datetime(0) NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `MD5SUM` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `COMMENTS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `TAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `LIQUIBASE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CONTEXTS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `LABELS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of databasechangelog
-- ----------------------------
INSERT INTO `databasechangelog` VALUES ('1', 'cj', 'classpath:db/changelog/changelog-1.sql', '2018-05-29 22:37:03', 1, 'EXECUTED', '7:9df8dbe447c060dbfe17206ea9eed740', 'sql', '', NULL, '3.5.3', NULL, NULL, '7604623651');
INSERT INTO `databasechangelog` VALUES ('2', 'cj', 'classpath:db/changelog/changelog-1.sql', '2018-05-29 22:37:03', 2, 'EXECUTED', '7:bb59b1db6d60baf0c48994c3056e38f3', 'sql', '', NULL, '3.5.3', NULL, NULL, '7604623651');
INSERT INTO `databasechangelog` VALUES ('3', 'cj', 'classpath:db/changelog/changelog-1.sql', '2018-05-29 22:37:04', 3, 'EXECUTED', '7:fec32dc386f5ed3d516fcc20b387eeb8', 'sql', '', NULL, '3.5.3', NULL, NULL, '7604623651');
INSERT INTO `databasechangelog` VALUES ('4', 'cj', 'classpath:db/changelog/changelog-1.sql', '2018-05-29 22:37:04', 4, 'EXECUTED', '7:38a4897aaa99bbaefa9400ba4286d875', 'sql', '', NULL, '3.5.3', NULL, NULL, '7604623651');

SET FOREIGN_KEY_CHECKS = 1;

