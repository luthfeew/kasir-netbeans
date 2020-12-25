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

 Date: 25/12/2020 13:57:17
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
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of barang
-- ----------------------------
INSERT INTO `barang` VALUES (8, 'A69', 'aqua', '5000', 'pcs', '-');
INSERT INTO `barang` VALUES (9, 'A70', 'water', '4000', 'pcs', '-');
INSERT INTO `barang` VALUES (10, 'A71', 'lemon', '7000', 'pcs', '-');
INSERT INTO `barang` VALUES (12, 'A72', 'anggur', '1000', 'pcs', '-');
INSERT INTO `barang` VALUES (13, 'B69', 'melon', '10000', 'pcs', '-');
INSERT INTO `barang` VALUES (14, 'B30', 'semangka', '11000', 'pcs', '-');
INSERT INTO `barang` VALUES (15, 'C12', 'cilok', '1000', 'pcs', '-');
INSERT INTO `barang` VALUES (17, 'C01', 'bakpao', '2500', 'pcs', '-');
INSERT INTO `barang` VALUES (25, 'A01', 'rendang', '9000', 'pcs', '-');

-- ----------------------------
-- Table structure for transaksi
-- ----------------------------
DROP TABLE IF EXISTS `transaksi`;
CREATE TABLE `transaksi`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kode_barang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jumlah_barang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `harga_barang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `total` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `timestamp` timestamp(6) NULL DEFAULT current_timestamp(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transaksi
-- ----------------------------
INSERT INTO `transaksi` VALUES (1, '0001', 'A71', '2', '7000', '14000', '2020-12-25 13:51:04.587589');
INSERT INTO `transaksi` VALUES (3, '0001', 'C01', '6', '2500', '15000', '2020-12-25 13:56:47.024295');

SET FOREIGN_KEY_CHECKS = 1;
