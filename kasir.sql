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

 Date: 25/12/2020 17:55:35
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
-- Table structure for counter
-- ----------------------------
DROP TABLE IF EXISTS `counter`;
CREATE TABLE `counter`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `count` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of counter
-- ----------------------------
INSERT INTO `counter` VALUES (37, 1);
INSERT INTO `counter` VALUES (38, 1);
INSERT INTO `counter` VALUES (39, 1);
INSERT INTO `counter` VALUES (40, 2);
INSERT INTO `counter` VALUES (41, 2);
INSERT INTO `counter` VALUES (42, 2);
INSERT INTO `counter` VALUES (43, 2);
INSERT INTO `counter` VALUES (44, 3);
INSERT INTO `counter` VALUES (45, 3);
INSERT INTO `counter` VALUES (46, 3);
INSERT INTO `counter` VALUES (47, 3);

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
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transaksi
-- ----------------------------
INSERT INTO `transaksi` VALUES (35, '1', 'A69', '1', '5000', '5000', '2020-12-25 17:50:06.085986');
INSERT INTO `transaksi` VALUES (36, '1', 'A70', '12', '4000', '48000', '2020-12-25 17:50:08.271370');
INSERT INTO `transaksi` VALUES (37, '1', 'B30', '2', '11000', '22000', '2020-12-25 17:50:11.366151');
INSERT INTO `transaksi` VALUES (38, '2', 'B69', '1', '10000', '10000', '2020-12-25 17:50:16.629135');
INSERT INTO `transaksi` VALUES (39, '2', 'C01', '2', '2500', '5000', '2020-12-25 17:50:19.808045');
INSERT INTO `transaksi` VALUES (40, '2', 'C12', '3', '1000', '3000', '2020-12-25 17:50:23.840021');
INSERT INTO `transaksi` VALUES (41, '3', 'A72', '1', '1000', '1000', '2020-12-25 17:50:28.638763');
INSERT INTO `transaksi` VALUES (42, '3', 'B30', '2', '11000', '22000', '2020-12-25 17:50:32.160021');
INSERT INTO `transaksi` VALUES (43, '3', 'C01', '3', '2500', '7500', '2020-12-25 17:50:36.234068');

SET FOREIGN_KEY_CHECKS = 1;
