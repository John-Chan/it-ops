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

 Date: 16/05/2018 10:31:36
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
  `DATEEXECUTED` datetime(0) NULL,
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
INSERT INTO `databasechangelog` VALUES ('1', 'cj', 'classpath:db/changelog/changelog-1.sql', '2018-05-16 10:02:48', 1, 'EXECUTED', '7:273ea2bae31124f014014af1e8180194', 'sql', '', NULL, '3.5.3', NULL, NULL, '6436322685');
INSERT INTO `databasechangelog` VALUES ('2', 'cj', 'classpath:db/changelog/changelog-2.sql', '2018-05-16 10:02:48', 2, 'EXECUTED', '7:14e6fbaa9a2b9602682379955a1e724b', 'sql', '', NULL, '3.5.3', NULL, NULL, '6436322685');
INSERT INTO `databasechangelog` VALUES ('3', 'cj', 'classpath:db/changelog/changelog-2.sql', '2018-05-16 10:02:49', 3, 'EXECUTED', '7:7c5cabd63f810431b2e340afd4897f6a', 'sql', '', NULL, '3.5.3', NULL, NULL, '6436322685');

SET FOREIGN_KEY_CHECKS = 1;
