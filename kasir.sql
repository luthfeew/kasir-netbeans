/*
 Navicat Premium Data Transfer

 Source Server         : localhost [mysql]
 Source Server Type    : MySQL
 Source Server Version : 100417
 Source Host           : 127.0.0.1:3306
 Source Schema         : kasir

 Target Server Type    : MySQL
 Target Server Version : 100417
 File Encoding         : 65001

 Date: 15/12/2020 14:40:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for barang
-- ----------------------------
DROP TABLE IF EXISTS `barang`;
CREATE TABLE `barang`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode_barang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_barang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `harga_barang` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `satuan_barang` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `keterangan_barang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of barang
-- ----------------------------
INSERT INTO `barang` VALUES (7, '1', '2', '3', '4', '5');
INSERT INTO `barang` VALUES (8, '7', '6', '5', '4', '3');
INSERT INTO `barang` VALUES (9, '123', '23', '123', '231', '213');
INSERT INTO `barang` VALUES (10, '3', '3', '3', '3', '3');

SET FOREIGN_KEY_CHECKS = 1;
