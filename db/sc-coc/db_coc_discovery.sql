/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.0.51-dev#zfmm
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : 192.168.0.51:3306
 Source Schema         : db_coc_discovery

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 24/04/2018 13:13:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_clan_tracking
-- ----------------------------
DROP TABLE IF EXISTS `t_clan_tracking`;
CREATE TABLE `t_clan_tracking`  (
  `f_clan_tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `z_created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `f_last_hit_time` datetime(0) NULL DEFAULT NULL,
  `z_modified_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `f_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `f_score` int(11) NULL DEFAULT NULL,
  `z_version` bigint(20) NULL DEFAULT 0,
  PRIMARY KEY (`f_clan_tag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_player_tracking
-- ----------------------------
DROP TABLE IF EXISTS `t_player_tracking`;
CREATE TABLE `t_player_tracking`  (
  `f_player_tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `z_created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `f_last_hit_time` datetime(0) NULL DEFAULT NULL,
  `z_modified_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `f_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `f_score` int(11) NULL DEFAULT NULL,
  `z_version` bigint(20) NULL DEFAULT 0,
  PRIMARY KEY (`f_player_tag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

-- t_clan_tracking
CREATE INDEX idx_top_last_hit_score ON t_clan_tracking ( f_last_hit_time, f_score, f_clan_tag, f_name );
-- t_player_tracking
CREATE INDEX idx_top_last_hit_score ON t_player_tracking ( f_last_hit_time, f_score, f_player_tag, f_name );

