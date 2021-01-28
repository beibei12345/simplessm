/*
 Navicat MySQL Data Transfer

 Source Server         : 本地测试开发数据库3306
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : localhost:3306
 Source Schema         : mybatis

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 29/01/2021 01:12:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_dept
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dept`;
CREATE TABLE `tbl_dept`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_dept
-- ----------------------------
INSERT INTO `tbl_dept` VALUES (1, '开发部');
INSERT INTO `tbl_dept` VALUES (2, '测试部');

-- ----------------------------
-- Table structure for tbl_employee
-- ----------------------------
DROP TABLE IF EXISTS `tbl_employee`;
CREATE TABLE `tbl_employee`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gender` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `d_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_emp_dept`(`d_id`) USING BTREE,
  CONSTRAINT `fk_emp_dept` FOREIGN KEY (`d_id`) REFERENCES `tbl_dept` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_employee
-- ----------------------------
INSERT INTO `tbl_employee` VALUES (1, '小否', '1', 'xiaofou@qq.com', 1);
INSERT INTO `tbl_employee` VALUES (2, '小小明', '1', '178888@gmail.com', 1);
INSERT INTO `tbl_employee` VALUES (4, '小明', '1', '178888@gmail.com', 1);
INSERT INTO `tbl_employee` VALUES (5, '小明', '1', '178888@gmail.com', 1);
INSERT INTO `tbl_employee` VALUES (6, '大大明', '0', '178888@gmail.com', 2);
INSERT INTO `tbl_employee` VALUES (7, '小白1号', '0', 'xiaobai1.qq.com', 1);
INSERT INTO `tbl_employee` VALUES (8, '小白2号', '1', 'xiaobai2.qq.com', 2);
INSERT INTO `tbl_employee` VALUES (9, '小白3号', '0', 'xiaobai3.qq.com', 1);
INSERT INTO `tbl_employee` VALUES (10, '小白1号', '0', 'xiaobai1.qq.com', 1);
INSERT INTO `tbl_employee` VALUES (11, '小白2号', '1', 'xiaobai2.qq.com', 2);
INSERT INTO `tbl_employee` VALUES (12, '小白3号', '0', 'xiaobai3.qq.com', 1);
INSERT INTO `tbl_employee` VALUES (13, '小白1号', '0', 'xiaobai1.qq.com', 1);
INSERT INTO `tbl_employee` VALUES (14, '小白2号', '1', 'xiaobai2.qq.com', 2);
INSERT INTO `tbl_employee` VALUES (15, '小白3号', '0', 'xiaobai3.qq.com', 1);
INSERT INTO `tbl_employee` VALUES (16, '小白1号', '0', 'xiaobai1.qq.com', 1);
INSERT INTO `tbl_employee` VALUES (17, '小白2号', '1', 'xiaobai2.qq.com', 2);
INSERT INTO `tbl_employee` VALUES (18, '小白3号', '0', 'xiaobai3.qq.com', 1);
INSERT INTO `tbl_employee` VALUES (19, '小哈', '1', 'xiaoha@qq.com', 1);
INSERT INTO `tbl_employee` VALUES (20, '小哈', '1', 'xiaoha@qq.com', 1);
INSERT INTO `tbl_employee` VALUES (23, '小哈', '1', 'xiaoha@qq.com', 1);
INSERT INTO `tbl_employee` VALUES (24, '小哈', '1', 'xiaoha@qq.com', 1);

SET FOREIGN_KEY_CHECKS = 1;
