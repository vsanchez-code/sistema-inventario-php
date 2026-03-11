/*
 Navicat Premium Dump SQL

 Source Server         : bd_Megatec
 Source Server Type    : MySQL
 Source Server Version : 110502 (11.5.2-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : proyecto_mid

 Target Server Type    : MySQL
 Target Server Version : 110502 (11.5.2-MariaDB)
 File Encoding         : 65001

 Date: 12/02/2026 13:02:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for creditos
-- ----------------------------
DROP TABLE IF EXISTS `creditos`;
CREATE TABLE `creditos`  (
  `id_credito` int NOT NULL AUTO_INCREMENT,
  `id_venta` int NULL DEFAULT NULL,
  `saldo` decimal(10, 2) NULL DEFAULT 0.00,
  `fecha_vencimiento` date NULL DEFAULT NULL,
  `estado` enum('Pendiente','Cancelado') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'Pendiente',
  PRIMARY KEY (`id_credito`) USING BTREE,
  INDEX `id_venta`(`id_venta` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creditos
-- ----------------------------

-- ----------------------------
-- Table structure for detalle_venta
-- ----------------------------
DROP TABLE IF EXISTS `detalle_venta`;
CREATE TABLE `detalle_venta`  (
  `id_detalle` int NOT NULL AUTO_INCREMENT,
  `id_prod_servicios` int NULL DEFAULT NULL,
  `id_venta` int NULL DEFAULT NULL,
  `producto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_producto` int NULL DEFAULT NULL,
  `cantidad` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `precio` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `subtotal` decimal(10, 2) GENERATED ALWAYS AS (`cantidad` * `precio`) STORED NULL,
  `tipo_venta` enum('Caja','Detalle') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'Caja',
  PRIMARY KEY (`id_detalle`) USING BTREE,
  INDEX `id_venta`(`id_venta` ASC) USING BTREE,
  INDEX `id_producto`(`id_producto` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detalle_venta
-- ----------------------------
INSERT INTO `detalle_venta` VALUES (10, NULL, 7, NULL, 42, 1.00, 0.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (11, NULL, 8, 'jugo de piña', NULL, 28.00, 6.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (12, NULL, 9, 'jugo de piña', NULL, 23.00, 6.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (13, NULL, 10, 'jugo de piña', NULL, 34.00, 6.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (14, NULL, 11, 'jugo de piña', NULL, 34.00, 6.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (15, NULL, 12, 'jugo de piña', NULL, 55.00, 6.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (16, NULL, 13, 'jugo de piña', NULL, 55.00, 6.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (17, NULL, 14, 'jugo de piña', NULL, 45.00, 6.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (23, NULL, 20, 'jugo de piña', NULL, 30.00, 6.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (34, NULL, 31, 'jugo de piña', NULL, 6.00, 6.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (35, NULL, 32, 'jugo de piña', NULL, 1.00, 6.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (38, NULL, 35, 'jugo de piña', NULL, 6.00, 6.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (39, NULL, 36, 'jugo de piña', NULL, 16.00, 6.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (48, NULL, 44, 'jugo de piña', NULL, 10.00, 6.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (51, NULL, 48, 'jugo de piña', NULL, 10.00, 6.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (52, NULL, 49, 'JUGOS DE CAJA VARIEDAD', NULL, 10.00, 4.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (53, NULL, 50, 'jugo de piña', NULL, 67.00, 6.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (54, NULL, 51, 'jugo de piña', NULL, 10.00, 6.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (55, NULL, 52, 'JUGOS DE CAJA VARIEDAD', NULL, 10.00, 4.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (56, NULL, 53, 'jugo de piña', NULL, 10.00, 6.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (58, NULL, 55, 'jugo de piña', NULL, 10.00, 6.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (59, NULL, 56, 'jugo de piña', NULL, 10.00, 6.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (61, NULL, 58, 'JUGOS DE CAJA VARIEDAD', NULL, 1.00, 4.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (62, NULL, 59, 'jugo de piña', NULL, 1.00, 6.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (63, NULL, 60, 'jugo de piña', NULL, 19.00, 6.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (64, NULL, 61, 'JUGOS DE CAJA VARIEDAD', NULL, 17.00, 4.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (65, NULL, 62, 'JUGOS DE CAJA VARIEDAD', NULL, 18.00, 4.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (66, NULL, 63, 'JUGOS DE CAJA VARIEDAD', NULL, 19.00, 4.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (67, NULL, 64, 'JUGOS DE CAJA VARIEDAD', NULL, 17.00, 4.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (68, NULL, 65, 'jugo de piña', NULL, 1.00, 6.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (70, NULL, 67, 'JUGOS DE CAJA VARIEDAD', NULL, 19.00, 4.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (74, NULL, 72, 'JUGOS DE CAJA VARIEDAD', NULL, 10.00, 4.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (75, NULL, 73, 'JUGOS DE CAJA VARIEDAD', NULL, 10.00, 4.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (76, NULL, 74, 'jugo de piña 20ml (detalle)', NULL, 3.00, 0.80, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (77, NULL, 75, 'JUGOS DE CAJA VARIEDAD (detalle)', NULL, 1.00, 0.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (78, NULL, 76, 'jugo de piña 20ml', NULL, 10.00, 6.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (81, NULL, 78, 'jugo de piña 20ml (caja)', NULL, 19.00, 6.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (82, NULL, 79, 'jugo de piña 20ml (detalle)', NULL, 10.00, 40.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (83, NULL, 80, 'jugo de piña 20ml (caja)', NULL, 1.00, 6.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (84, NULL, 81, 'JUGOS DE CAJA VARIEDAD (caja)', NULL, 9.00, 4.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (85, NULL, 82, 'jugo de piña 20ml', NULL, 10.00, 0.80, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (86, NULL, 82, 'JUGOS DE CAJA VARIEDAD', NULL, 10.00, 4.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (87, NULL, 83, 'jugo de piña', NULL, 10.00, 6.00, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (88, NULL, 83, 'JUGOS DE CAJA VARIEDAD', NULL, 18.00, 0.80, DEFAULT, 'Caja');
INSERT INTO `detalle_venta` VALUES (89, NULL, 84, 'jugo de piña 20ml', NULL, 10.00, 0.80, DEFAULT, 'Caja');

-- ----------------------------
-- Table structure for documentos_fiscales
-- ----------------------------
DROP TABLE IF EXISTS `documentos_fiscales`;
CREATE TABLE `documentos_fiscales`  (
  `id_documento` int NOT NULL AUTO_INCREMENT,
  `tipo_documento` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `numero_actual` int NULL DEFAULT 1,
  `serie` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'A',
  PRIMARY KEY (`id_documento`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of documentos_fiscales
-- ----------------------------

-- ----------------------------
-- Table structure for pagos
-- ----------------------------
DROP TABLE IF EXISTS `pagos`;
CREATE TABLE `pagos`  (
  `id_pago` int NOT NULL AUTO_INCREMENT,
  `id_venta` int NOT NULL,
  `fecha` datetime NULL DEFAULT current_timestamp,
  `monto` decimal(10, 2) NOT NULL,
  `metodo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_pago`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pagos
-- ----------------------------
INSERT INTO `pagos` VALUES (1, 2, '2025-10-26 22:51:27', 0.00, 'Efectivo');
INSERT INTO `pagos` VALUES (2, 6, '2025-10-26 22:52:50', 0.00, 'Efectivo');

-- ----------------------------
-- Table structure for pagos_credito
-- ----------------------------
DROP TABLE IF EXISTS `pagos_credito`;
CREATE TABLE `pagos_credito`  (
  `id_pago_credito` int NOT NULL AUTO_INCREMENT,
  `id_credito` int NULL DEFAULT NULL,
  `monto` decimal(10, 2) NULL DEFAULT 0.00,
  `fecha_pago` datetime NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id_pago_credito`) USING BTREE,
  INDEX `fk_pagos_credito_credito`(`id_credito` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pagos_credito
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_bitacora
-- ----------------------------
DROP TABLE IF EXISTS `tbl_bitacora`;
CREATE TABLE `tbl_bitacora`  (
  `id_bitacora` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NULL DEFAULT NULL,
  `usuario` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hora_inicio` datetime NOT NULL,
  `hora_fin` datetime NULL DEFAULT NULL,
  `accion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_usuario` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `navegador` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_bitacora`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_bitacora
-- ----------------------------
INSERT INTO `tbl_bitacora` VALUES (1, 3, 'vla', '2025-11-08 20:45:15', NULL, 'Inicio de sesión', '190.150.226.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Sa');
INSERT INTO `tbl_bitacora` VALUES (2, 3, 'vlad', '2025-11-09 21:19:10', NULL, 'Eliminación de venta | ID: ', '2800:b20:1748:e1d:4938:3c6e:c30e:e281', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Sa');
INSERT INTO `tbl_bitacora` VALUES (3, 3, 'vlad', '2025-11-10 12:41:48', NULL, 'eliminar venta | ID=', '2800:b20:1748:e1d:7153:9d2f:2375:a797', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Sa');
INSERT INTO `tbl_bitacora` VALUES (4, 3, 'vlad', '2025-11-14 08:08:04', NULL, 'editar producto | ID=42 | Nombre=jugo de piña 20ml', '190.86.105.242', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Sa');
INSERT INTO `tbl_bitacora` VALUES (5, 3, 'vlad', '2025-11-14 08:32:36', NULL, 'eliminar producto | ID=46', '190.86.105.242', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Sa');
INSERT INTO `tbl_bitacora` VALUES (6, 3, 'vlad', '2025-11-14 08:32:46', NULL, 'eliminar producto | ID=46', '190.86.105.242', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Sa');
INSERT INTO `tbl_bitacora` VALUES (7, 3, 'vlad', '2025-11-14 08:32:54', NULL, 'eliminar producto | ID=46', '190.86.105.242', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Sa');
INSERT INTO `tbl_bitacora` VALUES (8, 3, 'vlad', '2025-11-14 08:45:04', NULL, 'editar producto | ID=45 | Nombre=JUGOS DE CAJA VARIEDADES', '190.86.105.242', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Sa');
INSERT INTO `tbl_bitacora` VALUES (9, 3, 'vlad', '2025-11-14 18:21:37', NULL, 'eliminar venta | ID=95', '2800:b20:1748:e1d:142a:d3d2:aaa9:43b0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Sa');
INSERT INTO `tbl_bitacora` VALUES (10, 3, 'vlad', '2025-11-15 15:16:28', NULL, 'editar producto | ID=42 | Nombre=jugo de piña 20ml', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36');
INSERT INTO `tbl_bitacora` VALUES (11, 3, 'vlad', '2025-11-15 15:17:17', NULL, 'editar producto | ID=45 | Nombre=JUGOS DE CAJA VARIEDADES', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36');
INSERT INTO `tbl_bitacora` VALUES (12, 3, 'vlad', '2025-11-15 15:46:54', NULL, 'editar producto | ID=42 | Nombre=jugo de piña 20ml', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36');
INSERT INTO `tbl_bitacora` VALUES (13, 3, 'vlad', '2025-11-15 15:47:03', NULL, 'editar producto | ID=42 | Nombre=jugo de piña 20ml', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36');
INSERT INTO `tbl_bitacora` VALUES (14, 3, 'Vladimir', '2025-11-15 15:55:55', NULL, 'editar producto | ID=42 | Nombre=jugo de piña 20ml', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36');
INSERT INTO `tbl_bitacora` VALUES (15, 3, 'Vladimir', '2025-11-15 15:59:37', NULL, 'editar producto | ID=45 | Nombre=JUGOS DE CAJA VARIEDADES', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36');
INSERT INTO `tbl_bitacora` VALUES (16, 3, 'Vladimir', '2025-11-15 16:00:23', NULL, 'editar producto | ID=45 | Nombre=JUGOS DE CAJA VARIEDADES', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36');
INSERT INTO `tbl_bitacora` VALUES (17, 3, 'Vladimir', '2025-11-15 16:09:21', NULL, 'editar producto | ID=45 | Nombre=JUGOS DE CAJA VARIEDADES', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36');
INSERT INTO `tbl_bitacora` VALUES (18, 3, 'Vladimir', '2025-11-15 16:37:39', NULL, 'editar producto | ID=42 | Nombre=jugo de piña 20ml', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36');
INSERT INTO `tbl_bitacora` VALUES (19, 3, 'Vladimir', '2025-11-15 16:41:28', NULL, 'editar producto | ID=42 | Nombre=jugo de piña 20ml', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36');
INSERT INTO `tbl_bitacora` VALUES (20, 3, 'Vladimir', '2025-11-15 16:41:48', NULL, 'editar producto | ID=45 | Nombre=JUGOS DE CAJA VARIEDADES', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36');
INSERT INTO `tbl_bitacora` VALUES (21, 3, 'Vladimir', '2025-11-15 16:41:56', NULL, 'editar producto | ID=45 | Nombre=JUGOS DE CAJA VARIEDADES', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36');
INSERT INTO `tbl_bitacora` VALUES (22, 3, 'Vladimir', '2025-11-16 09:38:51', NULL, 'editar producto | ID=42 | Nombre=jugo de piña 20ml', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36');
INSERT INTO `tbl_bitacora` VALUES (23, 3, 'Vladimir', '2025-11-16 09:49:01', NULL, 'editar producto | ID=42 | Nombre=jugo de piña 20ml', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36');
INSERT INTO `tbl_bitacora` VALUES (24, 3, 'Vladimir', '2025-11-16 09:49:13', NULL, 'editar producto | ID=42 | Nombre=jugo de piña 20ml', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36');
INSERT INTO `tbl_bitacora` VALUES (25, 3, 'Vladimir', '2025-11-16 12:04:06', NULL, 'editar producto | ID=45 | Nombre=JUGOS DE CAJA VARIEDADES', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36');
INSERT INTO `tbl_bitacora` VALUES (26, 3, 'Vladimir', '2025-11-16 12:04:17', NULL, 'editar producto | ID=45 | Nombre=JUGOS DE CAJA VARIEDADES', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36');
INSERT INTO `tbl_bitacora` VALUES (27, 3, 'Vladimir', '2025-11-16 12:04:45', NULL, 'editar producto | ID=45 | Nombre=JUGOS DE CAJA VARIEDADES', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36');
INSERT INTO `tbl_bitacora` VALUES (28, 3, 'Vladimir', '2025-11-16 13:56:09', NULL, 'editar producto | ID=45 | Nombre=JUGOS DE CAJA VARIEDADES', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36');

-- ----------------------------
-- Table structure for tbl_bodega_detalle
-- ----------------------------
DROP TABLE IF EXISTS `tbl_bodega_detalle`;
CREATE TABLE `tbl_bodega_detalle`  (
  `id_detalle` int NOT NULL AUTO_INCREMENT,
  `mov` int NOT NULL,
  `id_prod` int NOT NULL,
  `cantidad` decimal(18, 4) NOT NULL DEFAULT 0.0000,
  `costo_unitario` decimal(18, 6) NULL DEFAULT NULL,
  `subtotal` decimal(18, 6) NULL DEFAULT NULL,
  `notas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_detalle`) USING BTREE,
  INDEX `idx_bod_det_mov`(`mov` ASC) USING BTREE,
  INDEX `idx_bod_det_prod`(`id_prod` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_bodega_detalle
-- ----------------------------
INSERT INTO `tbl_bodega_detalle` VALUES (20, 5, 42, 2.0000, 2.463488, 4.926976, '');
INSERT INTO `tbl_bodega_detalle` VALUES (22, 7, 42, 1.0000, 1.711404, 1.711404, '');

-- ----------------------------
-- Table structure for tbl_bodega_mov
-- ----------------------------
DROP TABLE IF EXISTS `tbl_bodega_mov`;
CREATE TABLE `tbl_bodega_mov`  (
  `id_mov` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `tipo_mov` int NOT NULL,
  `observaciones` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_mov`) USING BTREE,
  INDEX `idx_bod_mov_fecha`(`fecha` ASC) USING BTREE,
  INDEX `idx_bod_mov_tipo`(`tipo_mov` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_bodega_mov
-- ----------------------------
INSERT INTO `tbl_bodega_mov` VALUES (5, '2025-10-25', 2, 'Mov1');
INSERT INTO `tbl_bodega_mov` VALUES (7, '2025-10-25', 2, 'Mov');

-- ----------------------------
-- Table structure for tbl_caja
-- ----------------------------
DROP TABLE IF EXISTS `tbl_caja`;
CREATE TABLE `tbl_caja`  (
  `id_caja` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora_apertura` time NOT NULL,
  `efectivo_inicial` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `abierto` tinyint(1) NOT NULL DEFAULT 1,
  `usuario` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'cajero',
  PRIMARY KEY (`id_caja`) USING BTREE,
  INDEX `fecha`(`fecha` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_caja
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_caja_chica
-- ----------------------------
DROP TABLE IF EXISTS `tbl_caja_chica`;
CREATE TABLE `tbl_caja_chica`  (
  `id_caja` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `monto_inicio` decimal(14, 2) NOT NULL DEFAULT 0.00,
  `observacion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `creado_en` datetime NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id_caja`) USING BTREE,
  UNIQUE INDEX `fecha`(`fecha`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_caja_chica
-- ----------------------------
INSERT INTO `tbl_caja_chica` VALUES (1, '2025-11-02', 10.00, '', '2025-11-02 00:06:42');
INSERT INTO `tbl_caja_chica` VALUES (2, '2025-11-09', 155.00, '', '2025-11-09 20:35:15');
INSERT INTO `tbl_caja_chica` VALUES (3, '2025-11-16', 50.00, '', '2025-11-16 11:34:00');

-- ----------------------------
-- Table structure for tbl_cat_019_actividad_economica
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cat_019_actividad_economica`;
CREATE TABLE `tbl_cat_019_actividad_economica`  (
  `id_actividad_economica` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `codigo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `valor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `eliminado` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'NO',
  PRIMARY KEY (`id_actividad_economica`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 95297 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_cat_019_actividad_economica
-- ----------------------------
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (1, '', '', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (2, '1111', 'CULTIVO DE CEREALES EXCEPTO ARROZ Y PARA FORRAJES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (3, '1112', 'CULTIVO DE LEGUMBRES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (4, '1113', 'CULTIVO DE SEMILLAS OLEAGINOSAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (5, '1114', 'CULTIVO DE PLANTAS PARA LA PREPARACION DE SEMILLAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (6, '1119', 'CULTIVO DE OTROS CEREALES EXCEPTO ARROZ Y FORRAJEROS N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (7, '1120', 'CULTIVO DE ARROZ', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (8, '1131', 'CULTIVO DE RAICES Y TUBERCULOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (9, '1132', 'CULTIVO DE BROTES, BULBOS, VEGETALES TUBERCULOS Y CULTIVOS SIMILARES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (10, '1133', 'CULTIVO HORTICOLA DE FRUTO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (11, '1134', 'CULTIVO DE HORTALIZAS DE HOJA Y OTRAS HORTALIZAS NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (12, '1140', 'CULTIVO DE CAÑA DE AZUCAR', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (13, '1150', 'CULTIVO DE TABACO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (14, '1161', 'CULTIVO DE ALGODON', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (15, '1162', 'CULTIVO DE FIBRAS VEGETALES EXCEPTO ALGODON', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (16, '1191', 'CULTIVO DE PLANTAS NO PERENNES PARA LA PRODUCCION DE SEMILLAS Y FLORES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (17, '1192', 'CULTIVO DE CEREALES Y PASTOS PARA LA ALIMENTACION ANIMAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (18, '1199', 'PRODUCCION DE CULTIVOS NO ESTACIONALES NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (19, '1220', 'CULTIVO DE FRUTAS TROPICALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (20, '1230', 'CULTIVO DE CITRICOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (21, '1240', 'CULTIVO DE FRUTAS DE PEPITA Y HUESO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (22, '1251', 'CULTIVO DE FRUTAS NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (23, '1252', 'CULTIVO DE OTROS FRUTOS Y NUECES DE ARBOLES Y ARBUSTOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (24, '1260', 'CULTIVO DE FRUTOS OLEAGINOSOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (25, '1271', 'CULTIVO DE CAFE', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (26, '1272', 'CULTIVO DE PLANTAS PARA LA ELABORACION DE BEBIDAS EXCEPTO CAFE', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (27, '1281', 'CULTIVO DE ESPECIAS Y AROMATICAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (28, '1282', 'CULTIVO DE PLANTAS PARA LA OBTENCION DE PRODUCTOS MEDICINALES Y FARMACEUTICOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (29, '1291', 'CULTIVO DE ARBOLES DE HULE (CAUCHO) PARA LA OBTENCION DE LATEX', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (30, '1292', 'CULTIVO DE PLANTAS PARA LA OBTENCION DE PRODUCTOS QUIMICOS Y COLORANTES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (31, '1299', 'PRODUCCION DE CULTIVOS PERENNES NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (32, '1300', 'PROPAGACION DE PLANTAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (33, '1301', 'CULTIVO DE PLANTAS Y FLORES ORNAMENTALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (34, '1410', 'CRIA Y ENGORDE DE GANADO BOVINO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (35, '1420', 'CRIA DE CABALLOS Y OTROS EQUINOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (36, '1440', 'CRIA DE OVEJAS Y CABRAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (37, '1450', 'CRIA DE CERDOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (38, '1460', 'CRIA DE AVES DE CORRAL Y PRODUCCION DE HUEVOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (39, '1491', 'CRIA DE ABEJAS APICULTURA PARA LA OBTENCION DE MIEL Y OTROS PRODUCTOS APICOLAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (40, '1492', 'CRIA DE CONEJOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (41, '1493', 'CRIA DE IGUANAS Y GARROBOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (42, '1494', 'CRIA DE MARIPOSAS Y OTROS INSECTOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (43, '1499', 'CRIA Y OBTENCION DE PRODUCTOS ANIMALES N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (44, '1500', 'CULTIVO DE PRODUCTOS AGRICOLAS EN COMBINACION CON LA CRIA DE ANIMALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (45, '1611', 'SERVICIOS DE MAQUINARIA AGRICOLA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (46, '1612', 'CONTROL DE PLAGAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (47, '1613', 'SERVICIOS DE RIEGO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (48, '1614', 'SERVICIOS DE CONTRATACION DE MANO DE OBRA PARA LA AGRICULTURA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (49, '1619', 'SERVICIOS AGRICOLAS NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (50, '1621', 'ACTIVIDADES PARA MEJORAR LA REPRODUCCION, EL CRECIMIENTO Y EL RENDIMIENTO DE LOS ANIMALES Y SUS PRODUCTOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (51, '1622', 'SERVICIOS DE MANO DE OBRA PECUARIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (52, '1629', 'SERVICIOS PECUARIOS NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (53, '1631', 'LABORES POST COSECHA DE PREPARACION DE LOS PRODUCTOS AGRICOLAS PARA SU COMERCIALIZACION O PARA LA INDUSTRIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (54, '1632', 'SERVICIO DE BENEFICIO DE CAFE', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (55, '1633', 'SERVICIO DE BENEFICIADO DE PLANTAS TEXTILES (INCLUYE EL BENEFICIADO CUANDO ESTE ES REALIZADO EN LA MISMA EXPLOTACION AGROPECUARIA)', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (56, '1640', 'TRATAMIENTO DE SEMILLAS PARA LA PROPAGACION', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (57, '1700', 'CAZA ORDINARIA Y MEDIANTE TRAMPAS, REPOBLACION DE ANIMALES DE CAZA Y SERVICIOS CONEXOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (58, '2100', 'SILVICULTURA Y OTRAS ACTIVIDADES FORESTALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (59, '2200', 'EXTRACCION DE MADERA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (60, '2300', 'RECOLECCION DE PRODUCTOS DIFERENTES A LA MADERA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (61, '2400', 'SERVICIOS DE APOYO A LA SILVICULTURA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (62, '3110', 'PESCA MARITIMA DE ALTURA Y COSTERA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (63, '3120', 'PESCA DE AGUA DULCE', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (64, '3210', 'ACUICULTURA MARITIMA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (65, '3220', 'ACUICULTURA DE AGUA DULCE', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (66, '3300', 'SERVICIOS DE APOYO A LA PESCA Y ACUICULTURA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (67, '5100', 'EXTRACCION DE HULLA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (68, '5200', 'EXTRACCION Y AGLOMERACION DE LIGNITO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (69, '6100', 'EXTRACCION DE PETROLEO CRUDO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (70, '6200', 'EXTRACCION DE GAS NATURAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (71, '7100', 'EXTRACCION DE MINERALES DE HIERRO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (72, '7210', 'EXTRACCION DE MINERALES DE URANIO Y TORIO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (73, '7290', 'EXTRACCION DE MINERALES METALIFEROS NO FERROSOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (74, '8100', 'EXTRACCION DE PIEDRA, ARENA Y ARCILLA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (75, '8910', 'EXTRACCION DE MINERALES PARA LA FABRICACION DE ABONOS Y PRODUCTOS QUIMICOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (76, '8920', 'EXTRACCION Y AGLOMERACION DE TURBA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (77, '8930', 'EXTRACCION DE SAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (78, '8990', 'EXPLOTACION DE OTRAS MINAS Y CANTERAS NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (79, '9100', 'ACTIVIDADES DE APOYO A LA EXTRACCION DE PETROLEO Y GAS NATURAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (80, '9900', 'ACTIVIDADES DE APOYO A LA EXPLOTACION DE MINAS Y CANTERAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (81, '10101', 'SERVICIO DE RASTROS Y MATADEROS DE BOVINOS Y PORCINOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (82, '10102', 'MATANZA Y PROCESAMIENTO DE BOVINOS Y PORCINOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (83, '10103', 'MATANZA Y PROCESAMIENTOS DE AVES DE CORRAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (84, '10104', 'ELABORACION Y CONSERVACION DE EMBUTIDOS Y TRIPAS NATURALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (85, '10105', 'SERVICIOS DE CONSERVACION Y EMPAQUE DE CARNES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (86, '10106', 'ELABORACION Y CONSERVACION DE GRASAS Y ACEITES ANIMALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (87, '10107', 'SERVICIOS DE MOLIENDA DE CARNE', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (88, '10108', 'ELABORACION DE PRODUCTOS DE CARNE NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (89, '10201', 'PROCESAMIENTO Y CONSERVACION DE PESCADO, CRUSTACEOS Y MOLUSCOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (90, '10209', 'FABRICACION DE PRODUCTOS DE PESCADO NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (91, '10301', 'ELABORACION DE JUGOS DE FRUTAS Y HORTALIZASV', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (92, '10302', 'ELABORACION Y ENVASE DE JALEAS, MERMELADAS Y FRUTAS DESHIDRATADAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (93, '10309', 'ELABORACION DE PRODUCTOS DE FRUTAS Y HORTALIZAS N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (94, '10401', 'FABRICACION DE ACEITES Y GRASAS VEGETALES Y ANIMALES COMESTIBLES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (95, '10402', 'FABRICACION DE ACEITES Y GRASAS VEGETALES Y ANIMALES NO COMESTIBLES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (96, '10409', 'SERVICIO DE MAQUILADO DE ACEITES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (97, '10501', 'FABRICACION DE PRODUCTOS LACTEOS EXCEPTO SORBETES Y QUESOS SUSTITUTOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (98, '10502', 'FABRICACION DE SORBETES Y HELADOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (99, '10503', 'FABRICACION DE QUESOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (100, '10611', 'MOLIENDA DE CEREALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (101, '10612', 'ELABORACION DE CEREALES PARA EL DESAYUNO Y SIMILARES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (102, '10613', 'SERVICIOS DE BENEFICIADO DE PRODUCTOS AGRICOLAS NCP (EXCLUYE BENEFICIO DE AZUCAR RAMA 1072 Y BENEFICIO DE CAFE RAMA 0163)', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (103, '10621', 'FABRICACION DE ALMIDON', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (104, '10628', 'SERVICIO DE MOLIENDA DE MAIZ HUMEDO MOLINO PARA NIXTAMAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (105, '10711', 'ELABORACION DE TORTILLAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (106, '10712', 'FABRICACION DE PAN, GALLETAS Y BARQUILLOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (107, '10713', 'FABRICACION DE REPOSTERIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (108, '10721', 'INGENIOS AZUCAREROS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (109, '10722', 'MOLIENDA DE CAÑA DE AZUCAR PARA LA ELABORACION DE DULCES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (110, '10723', 'ELABORACION DE JARABES DE AZUCAR Y OTROS SIMILARES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (111, '10724', 'MAQUILADO DE AZUCAR DE CAÑA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (112, '10730', 'FABRICACION DE CACAO, CHOCOLATES Y PRODUCTOS DE CONFITERIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (113, '10740', 'ELABORACION DE MACARRONES, FIDEOS, Y PRODUCTOS FARINACEOS SIMILARES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (114, '10750', 'ELABORACION DE COMIDAS Y PLATOS PREPARADOS PARA LA REVENTA EN LOCALES Y/O PARA EXPORTACION', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (115, '10791', 'ELABORACION DE PRODUCTOS DE CAFE', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (116, '10792', 'ELABORACION DE ESPECIES, SAZONADORES Y CONDIMENTOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (117, '10793', 'ELABORACION DE SOPAS, CREMAS Y CONSOME', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (118, '10794', 'FABRICACION DE BOCADILLOS TOSTADOS Y/O FRITOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (119, '10799', 'ELABORACION DE PRODUCTOS ALIMENTICIOS NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (120, '10800', 'ELABORACION DE ALIMENTOS PREPARADOS PARA ANIMALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (121, '11012', 'FABRICACION DE AGUARDIENTE Y LICORES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (122, '11020', 'ELABORACION DE VINOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (123, '11030', 'FABRICACION DE CERVEZA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (124, '11041', 'FABRICACION DE AGUAS GASEOSAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (125, '11042', 'FABRICACION Y ENVASADO DE AGUA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (126, '11043', 'ELABORACION DE REFRESCOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (127, '11048', 'MAQUILADO DE AGUAS GASEOSAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (128, '11049', 'ELABORACION DE BEBIDAS NO ALCOHOLICAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (129, '12000', 'ELABORACION DE PRODUCTOS DE TABACO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (130, '13111', 'PREPARACION DE FIBRAS TEXTILES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (131, '13112', 'FABRICACION DE HILADOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (132, '13120', 'FABRICACION DE TELAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (133, '13130', 'ACABADO DE PRODUCTOS TEXTILES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (134, '13910', 'FABRICACION DE TEJIDOS DE PUNTO Y GANCHILLO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (135, '13921', 'FABRICACION DE PRODUCTOS TEXTILES PARA EL HOGAR', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (136, '13922', 'SACOS, BOLSAS Y OTROS ARTICULOS TEXTILES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (137, '13929', 'FABRICACION DE ARTICULOS CONFECCIONADOS CON MATERIALES TEXTILES, EXCEPTO PRENDAS DE VESTIR NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (138, '13930', 'FABRICACION DE TAPICES Y ALFOMBRAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (139, '13941', 'FABRICACION DE CUERDAS DE HENEQUEN Y OTRAS FIBRAS NATURALES (LAZOS, PITAS)', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (140, '13942', 'FABRICACION DE REDES DE DIVERSOS MATERIALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (141, '13948', 'MAQUILADO DE PRODUCTOS TRENZABLES DE CUALQUIER MATERIAL (PETATES, SILLAS, ETC.)', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (142, '13991', 'FABRICACION DE ADORNOS, ETIQUETAS Y OTROS ARTICULOS PARA PRENDAS DE VESTIR', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (143, '13992', 'SERVICIO DE BORDADOS EN ARTICULOS Y PRENDAS DE TELA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (144, '13999', 'FABRICACION DE PRODUCTOS TEXTILES NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (145, '14101', 'FABRICACION DE ROPA INTERIOR, PARA DORMIR Y SIMILARES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (146, '14102', 'FABRICACION DE ROPA PARA NIÑOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (147, '14103', 'FABRICACION DE PRENDAS DE VESTIR PARA AMBOS SEXOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (148, '14104', 'CONFECCION DE PRENDAS A MEDIDA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (149, '14105', 'FABRICACION DE PRENDAS DE VESTIR PARA DEPORTES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (150, '14106', 'ELABORACION DE ARTESANIAS DE USO PERSONAL CONFECCIONADAS ESPECIALMENTE DE MATERIALES TEXTILES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (151, '14108', 'MAQUILADO DE PRENDAS DE VESTIR, ACCESORIOS Y OTROS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (152, '14109', 'FABRICACION DE PRENDAS Y ACCESORIOS DE VESTIR N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (153, '14200', 'FABRICACION DE ARTICULOS DE PIEL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (154, '14301', 'FABRICACION DE CALCETINES, CALCETAS, MEDIAS (PANTY HOUSE) Y OTROS SIMILARES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (155, '14302', 'FABRICACION DE ROPA INTERIOR DE TEJIDO DE PUNTO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (156, '14309', 'FABRICACION DE PRENDAS DE VESTIR DE TEJIDO DE PUNTO NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (157, '15110', 'CURTIDO Y ADOBO DE CUEROS; ADOBO Y TEÑIDO DE PIELES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (158, '15121', 'FABRICACION DE MALETAS, BOLSOS DE MANO Y OTROS ARTICULOS DE MARROQUINERIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (159, '15122', 'FABRICACION DE MONTURAS, ACCESORIOS Y VAINAS TALABARTERIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (160, '15123', 'FABRICACION DE ARTESANIAS PRINCIPALMENTE DE CUERO NATURAL Y SINTETICO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (161, '15128', 'MAQUILADO DE ARTICULOS DE CUERO NATURAL, SINTETICO Y DE OTROS MATERIALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (162, '15201', 'FABRICACION DE CALZADO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (163, '15202', 'FABRICACION DE PARTES Y ACCESORIOS DE CALZADO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (164, '15208', 'MAQUILADO DE PARTES Y ACCESORIOS DE CALZADO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (165, '16100', 'ASERRADERO Y ACEPILLADURA DE MADERA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (166, '16210', 'FABRICACION DE MADERA LAMINADA, TERCIADA, ENCHAPADA Y CONTRACHAPADA, PANELES PARA LA CONSTRUCCION', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (167, '16220', 'FABRICACION DE PARTES Y PIEZAS DE CARPINTERIA PARA EDIFICIOS Y CONSTRUCCIONES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (168, '16230', 'FABRICACION DE ENVASES Y RECIPIENTES DE MADERA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (169, '16292', 'FABRICACION DE ARTESANIAS DE MADERA, SEMILLAS, MATERIALES TRENZABLES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (170, '16299', 'FABRICACION DE PRODUCTOS DE MADERA, CORCHO, PAJA Y MATERIALES TRENZABLES NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (171, '17010', 'FABRICACION DE PASTA DE MADERA, PAPEL Y CARTON', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (172, '17020', 'FABRICACION DE PAPEL Y CARTON ONDULADO Y ENVASES DE PAPEL Y CARTON', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (173, '17091', 'FABRICACION DE ARTICULOS DE PAPEL Y CARTON DE USO PERSONAL Y DOMESTICO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (174, '17092', 'FABRICACION DE PRODUCTOS DE PAPEL NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (175, '18110', 'IMPRESION', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (176, '18120', 'SERVICIOS RELACIONADOS CON LA IMPRESION', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (177, '18200', 'REPRODUCCION DE GRABACIONES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (178, '19100', 'FABRICACION DE PRODUCTOS DE HORNOS DE COQUE', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (179, '19201', 'FABRICACION DE COMBUSTIBLE', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (180, '19202', 'FABRICACION DE ACEITES Y LUBRICANTES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (181, '20111', 'FABRICACION DE MATERIAS PRIMAS PARA LA FABRICACION DE COLORANTES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (182, '20112', 'FABRICACION DE MATERIALES CURTIENTES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (183, '20113', 'FABRICACION DE GASES INDUSTRIALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (184, '20114', 'FABRICACION DE ALCOHOL ETILICO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (185, '20119', 'FABRICACION DE SUSTANCIAS QUIMICAS BASICAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (186, '20120', 'FABRICACION DE ABONOS Y FERTILIZANTES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (187, '20130', 'FABRICACION DE PLASTICO Y CAUCHO EN FORMAS PRIMARIAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (188, '20210', 'FABRICACION DE PLAGUICIDAS Y OTROS PRODUCTOS QUIMICOS DE USO AGROPECUARIO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (189, '20220', 'FABRICACION DE PINTURAS, BARNICES Y PRODUCTOS DE REVESTIMIENTO SIMILARES; TINTAS DE IMPRENTA Y MASILLAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (190, '20231', 'FABRICACION DE JABONES, DETERGENTES Y SIMILARES PARA LIMPIEZA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (191, '20232', 'FABRICACION DE PERFUMES, COSMETICOS Y PRODUCTOS DE HIGIENE Y CUIDADO PERSONAL, INCLUYENDO TINTES, CHAMPU, ETC.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (192, '20291', 'FABRICACION DE TINTAS Y COLORES PARA ESCRIBIR Y PINTAR; FABRICACION DE CINTAS PARA IMPRESORAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (193, '20292', 'FABRICACION DE PRODUCTOS PIROTECNICOS, EXPLOSIVOS Y MUNICIONES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (194, '20299', 'FABRICACION DE PRODUCTOS QUIMICOS N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (195, '20300', 'FABRICACION DE FIBRAS ARTIFICIALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (196, '21001', 'MANUFACTURA DE PRODUCTOS FARMACEUTICOS, SUSTANCIAS QUIMICAS Y PRODUCTOS BOTANICOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (197, '21008', 'MAQUILADO DE MEDICAMENTOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (198, '22110', 'FABRICACION DE CUBIERTAS Y CAMARAS; RENOVACION Y RECAUCHUTADO DE CUBIERTAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (199, '22190', 'FABRICACION DE OTROS PRODUCTOS DE CAUCHO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (200, '22201', 'FABRICACION DE ENVASES PLASTICOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (201, '22202', 'FABRICACION DE PRODUCTOS PLASTICOS PARA USO PERSONAL O DOMESTICO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (202, '22208', 'MAQUILA DE PLASTICOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (203, '22209', 'FABRICACION DE PRODUCTOS PLASTICOS N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (204, '23101', 'FABRICACION DE VIDRIO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (205, '23102', 'FABRICACION DE RECIPIENTES Y ENVASES DE VIDRIO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (206, '23108', 'SERVICIO DE MAQUILADO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (207, '23109', 'FABRICACION DE PRODUCTOS DE VIDRIO NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (208, '23910', 'FABRICACION DE PRODUCTOS REFRACTARIOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (209, '23920', 'FABRICACION DE PRODUCTOS DE ARCILLA PARA LA CONSTRUCCION', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (210, '23931', 'FABRICACION DE PRODUCTOS DE CERAMICA Y PORCELANA NO REFRACTARIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (211, '23932', 'FABRICACION DE PRODUCTOS DE CERAMICA Y PORCELANA NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (212, '23940', 'FABRICACION DE CEMENTO, CAL Y YESO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (213, '23950', 'FABRICACION DE ARTICULOS DE HORMIGON, CEMENTO Y YESO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (214, '23960', 'CORTE, TALLADO Y ACABADO DE LA PIEDRA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (215, '23990', 'FABRICACION DE PRODUCTOS MINERALES NO METALICOS NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (216, '24100', 'INDUSTRIAS BASICAS DE HIERRO Y ACERO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (217, '24200', 'FABRICACION DE PRODUCTOS PRIMARIOS DE METALES PRECIOSOS Y METALES NO FERROSOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (218, '24310', 'FUNDICION DE HIERRO Y ACERO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (219, '24320', 'FUNDICION DE METALES NO FERROSOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (220, '25111', 'FABRICACION DE PRODUCTOS METALICOS PARA USO ESTRUCTURAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (221, '25118', 'SERVICIO DE MAQUILA PARA LA FABRICACION DE ESTRUCTURAS METALICAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (222, '25120', 'FABRICACION DE TANQUES, DEPOSITOS Y RECIPIENTES DE METAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (223, '25130', 'FABRICACION DE GENERADORES DE VAPOR, EXCEPTO CALDERAS DE AGUA CALIENTE PARA CALEFACCION CENTRAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (224, '25200', 'FABRICACION DE ARMAS Y MUNICIONES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (225, '25910', 'FORJADO, PRENSADO, ESTAMPADO Y LAMINADO DE METALES; PULVIMETALURGIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (226, '25920', 'TRATAMIENTO Y REVESTIMIENTO DE METALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (227, '25930', 'FABRICACION DE ARTICULOS DE CUCHILLERIA, HERRAMIENTAS DE MANO Y ARTICULOS DE FERRETERIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (228, '25991', 'FABRICACION DE ENVASES Y ARTICULOS CONEXOS DE METAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (229, '25992', 'FABRICACION DE ARTICULOS METALICOS DE USO PERSONAL Y/O DOMESTICO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (230, '25999', 'FABRICACION DE PRODUCTOS ELABORADOS DE METAL NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (231, '26100', 'FABRICACION DE COMPONENTES ELECTRONICOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (232, '26200', 'FABRICACION DE COMPUTADORAS Y EQUIPO CONEXO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (233, '26300', 'FABRICACION DE EQUIPO DE COMUNICACIONES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (234, '26400', 'FABRICACION DE APARATOS ELECTRONICOS DE CONSUMO PARA AUDIO, VIDEO RADIO Y TELEVISION', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (235, '26510', 'FABRICACION DE INSTRUMENTOS Y APARATOS PARA MEDIR, VERIFICAR, ENSAYAR, NAVEGAR Y DE CONTROL DE PROCESOS INDUSTRIALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (236, '26520', 'FABRICACION DE RELOJES Y PIEZAS DE RELOJES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (237, '26600', 'FABRICACION DE EQUIPO MEDICO DE IRRADIACION Y EQUIPO ELECTRONICO DE USO MEDICO Y TERAPEUTICO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (238, '26700', 'FABRICACION DE INSTRUMENTOS DE OPTICA Y EQUIPO FOTOGRAFICO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (239, '26800', 'FABRICACION DE MEDIOS MAGNETICOS Y OPTICOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (240, '27100', 'FABRICACION DE MOTORES, GENERADORES, TRANSFORMADORES ELECTRICOS, APARATOS DE DISTRIBUCION Y CONTROL DE ELECTRICIDAD', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (241, '27200', 'FABRICACION DE PILAS, BATERIAS Y ACUMULADORES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (242, '27310', 'FABRICACION DE CABLES DE FIBRA OPTICA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (243, '27320', 'FABRICACION DE OTROS HILOS Y CABLES ELECTRICOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (244, '27330', 'FABRICACION DE DISPOSITIVOS DE CABLEADOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (245, '27400', 'FABRICACION DE EQUIPO ELECTRICO DE ILUMINACION', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (246, '27500', 'FABRICACION DE APARATOS DE USO DOMESTICO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (247, '27900', 'FABRICACION DE OTROS TIPOS DE EQUIPO ELECTRICO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (248, '28110', 'FABRICACION DE MOTORES Y TURBINAS, EXCEPTO MOTORES PARA AERONAVES, VEHICULOS AUTOMOTORES Y MOTOCICLETAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (249, '28120', 'FABRICACION DE EQUIPO HIDRAULICO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (250, '28130', 'FABRICACION DE OTRAS BOMBAS, COMPRESORES, GRIFOS Y VALVULAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (251, '28140', 'FABRICACION DE COJINETES, ENGRANAJES, TRENES DE ENGRANAJES Y PIEZAS DE TRANSMISION', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (252, '28150', 'FABRICACION DE HORNOS Y QUEMADORES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (253, '28160', 'FABRICACION DE EQUIPO DE ELEVACION Y MANIPULACION', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (254, '28170', 'FABRICACION DE MAQUINARIA Y EQUIPO DE OFICINA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (255, '28180', 'FABRICACION DE HERRAMIENTAS MANUALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (256, '28190', 'FABRICACION DE OTROS TIPOS DE MAQUINARIA DE USO GENERAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (257, '28210', 'FABRICACION DE MAQUINARIA AGROPECUARIA Y FORESTAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (258, '28220', 'FABRICACION DE MAQUINAS PARA CONFORMAR METALES Y MAQUINARIA HERRAMIENTA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (259, '28230', 'FABRICACION DE MAQUINARIA METALURGICA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (260, '28240', 'FABRICACION DE MAQUINARIA PARA LA EXPLOTACION DE MINAS Y CANTERAS Y PARA OBRAS DE CONSTRUCCION', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (261, '28250', 'FABRICACION DE MAQUINARIA PARA LA ELABORACION DE ALIMENTOS, BEBIDAS Y TABACO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (262, '28260', 'FABRICACION DE MAQUINARIA PARA LA ELABORACION DE PRODUCTOS TEXTILES, PRENDAS DE VESTIR Y CUEROS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (263, '28291', 'FABRICACION DE MAQUINAS PARA IMPRENTA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (264, '28299', 'FABRICACION DE MAQUINARIA DE USO ESPECIAL NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (265, '29100', 'FABRICACION VEHICULOS AUTOMOTORES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (266, '29200', 'FABRICACION DE CARROCERIAS PARA VEHICULOS AUTOMOTORES; FABRICACION DE REMOLQUES Y SEMIREMOLQUES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (267, '29300', 'FABRICACION DE PARTES, PIEZAS Y ACCESORIOS PARA VEHICULOS AUTOMOTORES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (268, '30110', 'FABRICACION DE BUQUES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (269, '30120', 'CONSTRUCCION Y REPARACION DE EMBARCACIONES DE RECREO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (270, '30200', 'FABRICACION DE LOCOMOTORAS Y DE MATERIAL RODANTE', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (271, '30300', 'FABRICACION DE AERONAVES Y NAVES ESPACIALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (272, '30400', 'FABRICACION DE VEHICULOS MILITARES DE COMBATE', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (273, '30910', 'FABRICACION DE MOTOCICLETAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (274, '30920', 'FABRICACION DE BICICLETAS Y SILLONES DE RUEDAS PARA INVALIDOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (275, '30990', 'FABRICACION DE EQUIPO DE TRANSPORTE NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (276, '31001', 'FABRICACION DE COLCHONES Y SOMIER', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (277, '31002', 'FABRICACION DE MUEBLES Y OTROS PRODUCTOS DE MADERA A MEDIDA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (278, '31008', 'SERVICIOS DE MAQUILADO DE MUEBLES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (279, '31009', 'FABRICACION DE MUEBLES NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (280, '32110', 'FABRICACION DE JOYAS PLATERIAS Y JOYERIAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (281, '32120', 'FABRICACION DE JOYAS DE IMITACION (FANTASIA) Y ARTICULOS CONEXOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (282, '32200', 'FABRICACION DE INSTRUMENTOS MUSICALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (283, '32301', 'FABRICACION DE ARTICULOS DE DEPORTE', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (284, '32308', 'SERVICIO DE MAQUILA DE PRODUCTOS DEPORTIVOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (285, '32401', 'FABRICACION DE JUEGOS DE MESA Y DE SALON', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (286, '32402', 'SERVICIO DE MAQUILADO DE JUGUETES Y JUEGOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (287, '32409', 'FABRICACION DE JUEGOS Y JUGUETES N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (288, '32500', 'FABRICACION DE INSTRUMENTOS Y MATERIALES MEDICOS Y ODONTOLOGICOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (289, '32901', 'FABRICACION DE LAPICES, BOLIGRAFOS, SELLOS Y ARTICULOS DE LIBRERIA EN GENERAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (290, '32902', 'FABRICACION DE ESCOBAS, CEPILLOS, PINCELES Y SIMILARES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (291, '32903', 'FABRICACION DE ARTESANIAS DE MATERIALES DIVERSOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (292, '32904', 'FABRICACION DE ARTICULOS DE USO PERSONAL Y DOMESTICOS N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (293, '32905', 'FABRICACION DE ACCESORIOS PARA LAS CONFECCIONES Y LA MARROQUINERIA N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (294, '32908', 'SERVICIOS DE MAQUILA NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (295, '32909', 'FABRICACION DE PRODUCTOS MANUFACTURADOS N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (296, '33110', 'REPARACION Y MANTENIMIENTO DE PRODUCTOS ELABORADOS DE METAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (297, '33120', 'REPARACION Y MANTENIMIENTO DE MAQUINARIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (298, '33130', 'REPARACION Y MANTENIMIENTO DE EQUIPO ELECTRONICO Y OPTICO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (299, '33140', 'REPARACION Y MANTENIMIENTO DE EQUIPO ELECTRICO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (300, '33150', 'REPARACION Y MANTENIMIENTO DE EQUIPO DE TRANSPORTE, EXCEPTO VEHICULOS AUTOMOTORES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (301, '33190', 'REPARACION Y MANTENIMIENTO DE EQUIPOS N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (302, '33200', 'INSTALACION DE MAQUINARIA Y EQUIPO INDUSTRIAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (303, '35101', 'GENERACION DE ENERGIA ELECTRICA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (304, '35102', 'TRANSMISION DE ENERGIA ELECTRICA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (305, '35103', 'DISTRIBUCION DE ENERGIA ELECTRICA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (306, '35200', 'FABRICACION DE GAS, DISTRIBUCION DE COMBUSTIBLES GASEOSOS POR TUBERIAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (307, '35300', 'SUMINISTRO DE VAPOR Y AGUA CALIENTE', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (308, '36000', 'CAPTACION, TRATAMIENTO Y SUMINISTRO DE AGUA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (309, '37000', 'EVACUACION DE AGUAS RESIDUALES (ALCANTARILLADO)', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (310, '38110', 'RECOLECCION Y TRANSPORTE DE DESECHOS SOLIDOS PROVENIENTE DE HOGARES Y SECTOR URBANO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (311, '38120', 'RECOLECCION DE DESECHOS PELIGROSOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (312, '38210', 'TRATAMIENTO Y ELIMINACION DE DESECHOS INICUOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (313, '38220', 'TRATAMIENTO Y ELIMINACION DE DESECHOS PELIGROSOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (314, '38301', 'RECICLAJE DE DESPERDICIOS Y DESECHOS TEXTILES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (315, '38302', 'RECICLAJE DE DESPERDICIOS Y DESECHOS DE PLASTICO Y CAUCHO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (316, '38303', 'RECICLAJE DE DESPERDICIOS Y DESECHOS DE VIDRIO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (317, '38304', 'RECICLAJE DE DESPERDICIOS Y DESECHOS DE PAPEL Y CARTON', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (318, '38305', 'RECICLAJE DE DESPERDICIOS Y DESECHOS METALICOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (319, '38309', 'RECICLAJE DE DESPERDICIOS Y DESECHOS NO METALICOS N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (320, '39000', 'ACTIVIDADES DE SANEAMIENTO Y OTROS SERVICIOS DE GESTION DE DESECHOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (321, '41001', 'CONSTRUCCION DE EDIFICIOS RESIDENCIALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (322, '41002', 'CONSTRUCCION DE EDIFICIOS NO RESIDENCIALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (323, '42100', 'CONSTRUCCION DE CARRETERAS, CALLES Y CAMINOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (324, '42200', 'CONSTRUCCION DE PROYECTOS DE SERVICIO PUBLICO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (325, '42900', 'CONSTRUCCION DE OBRAS DE INGENIERIA CIVIL N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (326, '43110', 'DEMOLICION', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (327, '43120', 'PREPARACION DE TERRENO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (328, '43210', 'INSTALACIONES ELECTRICAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (329, '43220', 'INSTALACION DE FONTANERIA, CALEFACCION Y AIRE ACONDICIONADO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (330, '43290', 'OTRAS INSTALACIONES PARA OBRAS DE CONSTRUCCION', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (331, '43300', 'TERMINACION Y ACABADO DE EDIFICIOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (332, '43900', 'OTRAS ACTIVIDADES ESPECIALIZADAS DE CONSTRUCCION', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (333, '43901', 'FABRICACION DE TECHOS Y MATERIALES DIVERSOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (334, '45100', 'VENTA DE VEHICULOS AUTOMOTORES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (335, '45201', 'REPARACION MECANICA DE VEHICULOS AUTOMOTORES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (336, '45202', 'REPARACIONES ELECTRICAS DEL AUTOMOTOR Y RECARGA DE BATERIAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (337, '45203', 'ENDEREZADO Y PINTURA DE VEHICULOS AUTOMOTORES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (338, '45204', 'REPARACIONES DE RADIADORES, ESCAPES Y SILENCIADORES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (339, '45205', 'REPARACION Y RECONSTRUCCION DE VIAS, STOP Y OTROS ARTICULOS DE FIBRA DE VIDRIO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (340, '45206', 'REPARACION DE LLANTAS DE VEHICULOS AUTOMOTORES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (341, '45207', 'POLARIZADO DE VEHICULOS (MEDIANTE LA ADHESION DE PAPEL ESPECIAL A LOS VIDRIOS)', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (342, '45208', 'LAVADO Y PASTEADO DE VEHICULOS (CARWASH)', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (343, '45209', 'REPARACIONES DE VEHICULOS N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (344, '45211', 'REMOLQUE DE VEHICULOS AUTOMOTORES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (345, '45301', 'VENTA DE PARTES, PIEZAS Y ACCESORIOS NUEVOS PARA VEHICULOS AUTOMOTORES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (346, '45302', 'VENTA DE PARTES, PIEZAS Y ACCESORIOS USADOS PARA VEHICULOS AUTOMOTORES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (347, '45401', 'VENTA DE MOTOCICLETAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (348, '45402', 'VENTA DE REPUESTOS, PIEZAS Y ACCESORIOS DE MOTOCICLETAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (349, '45403', 'MANTENIMIENTO Y REPARACION DE MOTOCICLETAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (350, '46100', 'VENTA AL POR MAYOR A CAMBIO DE RETRIBUCION O POR CONTRATA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (351, '46201', 'VENTA AL POR MAYOR DE MATERIAS PRIMAS AGRICOLAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (352, '46202', 'VENTA AL POR MAYOR DE PRODUCTOS DE LA SILVICULTURA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (353, '46203', 'VENTA AL POR MAYOR DE PRODUCTOS PECUARIOS Y DE GRANJA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (354, '46211', 'VENTA DE PRODUCTOS PARA USO AGROPECUARIO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (355, '46291', 'VENTA AL POR MAYOR DE GRANOS BASICOS (CEREALES, LEGUMINOSAS)', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (356, '46292', 'VENTA AL POR MAYOR DE SEMILLAS MEJORADAS PARA CULTIVO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (357, '46293', 'VENTA AL POR MAYOR DE CAFE ORO Y UVA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (358, '46294', 'VENTA AL POR MAYOR DE CAÑA DE AZUCAR', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (359, '46295', 'VENTA AL POR MAYOR DE FLORES, PLANTAS Y OTROS PRODUCTOS NATURALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (360, '46296', 'VENTA AL POR MAYOR DE PRODUCTOS AGRICOLAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (361, '46297', 'VENTA AL POR MAYOR DE GANADO BOVINO (VIVO)', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (362, '46298', 'VENTA AL POR MAYOR DE ANIMALES PORCINOS, OVINOS, CAPRINO, CANICULAS, APICOLAS, AVICOLAS VIVOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (363, '46299', 'VENTA DE OTRAS ESPECIES VIVAS DEL REINO ANIMAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (364, '46301', 'VENTA AL POR MAYOR DE ALIMENTOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (365, '46302', 'VENTA AL POR MAYOR DE BEBIDAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (366, '46303', 'VENTA AL POR MAYOR DE TABACO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (367, '46371', 'VENTA AL POR MAYOR DE FRUTAS, HORTALIZAS (VERDURAS), LEGUMBRES Y TUBERCULOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (368, '46372', 'VENTA AL POR MAYOR DE POLLOS, GALLINAS DESTAZADAS, PAVOS Y OTRAS AVES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (369, '46373', 'VENTA AL POR MAYOR DE CARNE BOVINA Y PORCINA, PRODUCTOS DE CARNE Y EMBUTIDOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (370, '46374', 'VENTA AL POR MAYOR DE HUEVOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (371, '46375', 'VENTA AL POR MAYOR DE PRODUCTOS LACTEOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (372, '46376', 'VENTA AL POR MAYOR DE PRODUCTOS FARINACEOS DE PANADERIA (PAN DULCE, CAKES, REPOSTERIA, ETC.)', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (373, '46377', 'VENTA AL POR MAYOR DE PASTAS ALIMENTICIAS, ACEITES Y GRASAS COMESTIBLES VEGETAL Y ANIMAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (374, '46378', 'VENTA AL POR MAYOR DE SAL COMESTIBLE', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (375, '46379', 'VENTA AL POR MAYOR DE AZUCAR', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (376, '46391', 'VENTA AL POR MAYOR DE ABARROTES (VINOS, LICORES, PRODUCTOS ALIMENTICIOS ENVASADOS, ETC.)', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (377, '46392', 'VENTA AL POR MAYOR DE AGUAS GASEOSAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (378, '46393', 'VENTA AL POR MAYOR DE AGUA PURIFICADA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (379, '46394', 'VENTA AL POR MAYOR DE REFRESCOS Y OTRAS BEBIDAS, LIQUIDAS O EN POLVO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (380, '46395', 'VENTA AL POR MAYOR DE CERVEZA Y LICORES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (381, '46396', 'VENTA AL POR MAYOR DE HIELO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (382, '46411', 'VENTA AL POR MAYOR DE HILADOS, TEJIDOS Y PRODUCTOS TEXTILES DE MERCERIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (383, '46412', 'VENTA AL POR MAYOR DE ARTICULOS TEXTILES EXCEPTO CONFECCIONES PARA EL HOGAR', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (384, '46413', 'VENTA AL POR MAYOR DE CONFECCIONES TEXTILES PARA EL HOGAR', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (385, '46414', 'VENTA AL POR MAYOR DE PRENDAS DE VESTIR Y ACCESORIOS DE VESTIR', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (386, '46415', 'VENTA AL POR MAYOR DE ROPA USADA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (387, '46416', 'VENTA AL POR MAYOR DE CALZADO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (388, '46417', 'VENTA AL POR MAYOR DE ARTICULOS DE MARROQUINERIA Y TALABARTERIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (389, '46418', 'VENTA AL POR MAYOR DE ARTICULOS DE PELETERIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (390, '46419', 'VENTA AL POR MAYOR DE OTROS ARTICULOS TEXTILES N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (391, '46471', 'VENTA AL POR MAYOR DE INSTRUMENTOS MUSICALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (392, '46472', 'VENTA AL POR MAYOR DE COLCHONES, ALMOHADAS, COJINES, ETC.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (393, '46473', 'VENTA AL POR MAYOR DE ARTICULOS DE ALUMINIO PARA EL HOGAR Y PARA OTROS USOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (394, '46474', 'VENTA AL POR MAYOR DE DEPOSITOS Y OTROS ARTICULOS PLASTICOS PARA EL HOGAR Y OTROS USOS, INCLUYENDO LOS DESECHABLES DE DURAPAX Y NO DESECHABLES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (395, '46475', 'VENTA AL POR MAYOR DE CAMARAS FOTOGRAFICAS, ACCESORIOS Y MATERIALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (396, '46482', 'VENTA AL POR MAYOR DE MEDICAMENTOS, ARTICULOS Y OTROS PRODUCTOS DE USO VETERINARIO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (397, '46483', 'VENTA AL POR MAYOR DE PRODUCTOS Y ARTICULOS DE BELLEZA Y DE USO PERSONAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (398, '46484', 'VENTA DE PRODUCTOS FARMACEUTICOS Y MEDICINALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (399, '46491', 'VENTA AL POR MAYOR DE PRODUCTOS MEDICINALES, COSMETICOS, PERFUMERIA Y PRODUCTOS DE LIMPIEZA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (400, '46492', 'VENTA AL POR MAYOR DE RELOJES Y ARTICULOS DE JOYERIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (401, '46493', 'VENTA AL POR MAYOR DE ELECTRODOMESTICOS Y ARTICULOS DEL HOGAR EXCEPTO BAZAR; ARTICULOS DE ILUMINACION', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (402, '46494', 'VENTA AL POR MAYOR DE ARTICULOS DE BAZAR Y SIMILARES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (403, '46495', 'VENTA AL POR MAYOR DE ARTICULOS DE OPTICA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (404, '46496', 'VENTA AL POR MAYOR DE REVISTAS, PERIODICOS, LIBROS, ARTICULOS DE LIBRERIA Y ARTICULOS DE PAPEL Y CARTON EN GENERAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (405, '46497', 'VENTA DE ARTICULOS DEPORTIVOS, JUGUETES Y RODADOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (406, '46498', 'VENTA AL POR MAYOR DE PRODUCTOS USADOS PARA EL HOGAR O EL USO PERSONAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (407, '46499', 'VENTA AL POR MAYOR DE ENSERES DOMESTICOS Y DE USO PERSONAL N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (408, '46500', 'VENTA AL POR MAYOR DE BICICLETAS, PARTES, ACCESORIOS Y OTROS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (409, '46510', 'VENTA AL POR MAYOR DE COMPUTADORAS, EQUIPO PERIFERICO Y PROGRAMAS INFORMATICOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (410, '46520', 'VENTA AL POR MAYOR DE EQUIPOS DE COMUNICACION', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (411, '46530', 'VENTA AL POR MAYOR DE MAQUINARIA Y EQUIPO AGROPECUARIO, ACCESORIOS, PARTES Y SUMINISTROS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (412, '46590', 'VENTA DE EQUIPOS E INSTRUMENTOS DE USO PROFESIONAL Y CIENTIFICO Y APARATOS DE MEDIDA Y CONTROL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (413, '46591', 'VENTA AL POR MAYOR DE MAQUINARIA EQUIPO, ACCESORIOS Y MATERIALES PARA LA INDUSTRIA DE LA MADERA Y SUS PRODUCTOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (414, '46592', 'VENTA AL POR MAYOR DE MAQUINARIA, EQUIPO, ACCESORIOS Y MATERIALES PARA LA INDUSTRIA GRAFICA Y DEL PAPEL, CARTON Y PRODUCTOS DE PAPEL Y CARTON', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (415, '46593', 'VENTA AL POR MAYOR DE MAQUINARIA, EQUIPO, ACCESORIOS Y MATERIALES PARA LA INDUSTRIA DE PRODUCTOS QUIMICOS, PLASTICO Y CAUCHO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (416, '46594', 'VENTA AL POR MAYOR DE MAQUINARIA, EQUIPO, ACCESORIOS Y MATERIALES PARA LA INDUSTRIA METALICA Y DE SUS PRODUCTOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (417, '46595', 'VENTA AL POR MAYOR DE EQUIPAMIENTO PARA USO MEDICO, ODONTOLOGICO, VETERINARIO Y SERVICIOS CONEXOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (418, '46596', 'VENTA AL POR MAYOR DE MAQUINARIA, EQUIPO, ACCESORIOS Y PARTES PARA LA INDUSTRIA DE LA ALIMENTACION', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (419, '46597', 'VENTA AL POR MAYOR DE MAQUINARIA, EQUIPO, ACCESORIOS Y PARTES PARA LA INDUSTRIA TEXTIL, CONFECCIONES Y CUERO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (420, '46598', 'VENTA AL POR MAYOR DE MAQUINARIA, EQUIPO Y ACCESORIOS PARA LA CONSTRUCCION Y EXPLOTACION DE MINAS Y CANTERAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (421, '46599', 'VENTA AL POR MAYOR DE OTRO TIPO DE MAQUINARIA Y EQUIPO CON SUS ACCESORIOS Y PARTES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (422, '46610', 'VENTA AL POR MAYOR DE OTROS COMBUSTIBLES SOLIDOS, LIQUIDOS, GASEOSOS Y DE PRODUCTOS CONEXOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (423, '46612', 'VENTA AL POR MAYOR DE COMBUSTIBLES PARA AUTOMOTORES, AVIONES, BARCOS, MAQUINARIA Y OTROS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (424, '46613', 'VENTA AL POR MAYOR DE LUBRICANTES, GRASAS Y OTROS ACEITES PARA AUTOMOTORES, MAQUINARIA INDUSTRIAL, ETC.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (425, '46614', 'VENTA AL POR MAYOR DE GAS PROPANO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (426, '46615', 'VENTA AL POR MAYOR DE LEÑA Y CARBON', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (427, '46620', 'VENTA AL POR MAYOR DE METALES Y MINERALES METALIFEROS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (428, '46631', 'VENTA AL POR MAYOR DE PUERTAS, VENTANAS, VITRINAS Y SIMILARES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (429, '46632', 'VENTA AL POR MAYOR DE ARTICULOS DE FERRETERIA Y PINTURERIAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (430, '46633', 'VIDRIERIAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (431, '46634', 'VENTA AL POR MAYOR DE MADERAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (432, '46639', 'VENTA AL POR MAYOR DE MATERIALES PARA LA CONSTRUCCION N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (433, '46691', 'VENTA AL POR MAYOR DE SAL INDUSTRIAL SIN YODAR', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (434, '46692', 'VENTA AL POR MAYOR DE PRODUCTOS INTERMEDIOS Y DESECHOS DE ORIGEN TEXTIL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (435, '46693', 'VENTA AL POR MAYOR DE PRODUCTOS INTERMEDIOS Y DESECHOS DE ORIGEN METALICO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (436, '46694', 'VENTA AL POR MAYOR DE PRODUCTOS INTERMEDIOS Y DESECHOS DE PAPEL Y CARTON', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (437, '46695', 'VENTA AL POR MAYOR FERTILIZANTES, ABONOS, AGROQUIMICOS Y PRODUCTOS SIMILARES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (438, '46696', 'VENTA AL POR MAYOR DE PRODUCTOS INTERMEDIOS Y DESECHOS DE ORIGEN PLASTICO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (439, '46697', 'VENTA AL POR MAYOR DE TINTAS PARA IMPRENTA, PRODUCTOS CURTIENTES Y MATERIAS Y PRODUCTOS COLORANTES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (440, '46698', 'VENTA DE PRODUCTOS INTERMEDIOS Y DESECHOS DE ORIGEN QUIMICO Y DE CAUCHO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (441, '46699', 'VENTA AL POR MAYOR DE PRODUCTOS INTERMEDIOS Y DESECHOS NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (442, '46701', 'VENTA DE ALGODON EN ORO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (443, '46900', 'VENTA AL POR MAYOR DE OTROS PRODUCTOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (444, '46901', 'VENTA AL POR MAYOR DE COHETES Y OTROS PRODUCTOS PIROTECNICOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (445, '46902', 'VENTA AL POR MAYOR DE ARTICULOS DIVERSOS PARA CONSUMO HUMANO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (446, '46903', 'VENTA AL POR MAYOR DE ARMAS DE FUEGO, MUNICIONES Y ACCESORIOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (447, '46904', 'VENTA AL POR MAYOR DE TOLDOS Y TIENDAS DE CAMPAÑA DE CUALQUIER MATERIAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (448, '46905', 'VENTA AL POR MAYOR DE EXHIBIDORES PUBLICITARIOS Y ROTULOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (449, '46906', 'VENTA AL POR MAYOR DE ARTICULOS PROMOCIONALES DIVERSOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (450, '47111', 'VENTA EN SUPERMERCADOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (451, '47112', 'VENTA EN TIENDAS DE ARTICULOS DE PRIMERA NECESIDAD', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (452, '47119', 'ALMACENES (VENTA DE DIVERSOS ARTICULOS)', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (453, '47190', 'VENTA AL POR MENOR DE OTROS PRODUCTOS EN COMERCIOS NO ESPECIALIZADOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (454, '47199', 'VENTA DE ESTABLECIMIENTOS NO ESPECIALIZADOS CON SURTIDO COMPUESTO PRINCIPALMENTE DE ALIMENTOS, BEBIDAS Y TABACO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (455, '47211', 'VENTA AL POR MENOR DE FRUTAS Y HORTALIZAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (456, '47212', 'VENTA AL POR MENOR DE CARNES, EMBUTIDOS Y PRODUCTOS DE GRANJA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (457, '47213', 'VENTA AL POR MENOR DE PESCADO Y MARISCOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (458, '47214', 'VENTA AL POR MENOR DE PRODUCTOS LACTEOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (459, '47215', 'VENTA AL POR MENOR DE PRODUCTOS DE PANADERIA, REPOSTERIA Y GALLETAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (460, '47216', 'VENTA AL POR MENOR DE HUEVOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (461, '47217', 'VENTA AL POR MENOR DE CARNES Y PRODUCTOS CARNICOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (462, '47218', 'VENTA AL POR MENOR DE GRANOS BASICOS Y OTROS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (463, '47219', 'VENTA AL POR MENOR DE ALIMENTOS N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (464, '47221', 'VENTA AL POR MENOR DE HIELO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (465, '47223', 'VENTA DE BEBIDAS NO ALCOHOLICAS, PARA SU CONSUMO FUERA DEL ESTABLECIMIENTO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (466, '47224', 'VENTA DE BEBIDAS ALCOHOLICAS, PARA SU CONSUMO FUERA DEL ESTABLECIMIENTO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (467, '47225', 'VENTA DE BEBIDAS ALCOHOLICAS PARA SU CONSUMO DENTRO DEL ESTABLECIMIENTO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (468, '47230', 'VENTA AL POR MENOR DE TABACO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (469, '47300', 'VENTA DE COMBUSTIBLES, LUBRICANTES Y OTROS (GASOLINERAS)', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (470, '47411', 'VENTA AL POR MENOR DE COMPUTADORAS Y EQUIPO PERIFERICO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (471, '47412', 'VENTA DE EQUIPO Y ACCESORIOS DE TELECOMUNICACION', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (472, '47420', 'VENTA AL POR MENOR DE EQUIPO DE AUDIO Y VIDEO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (473, '47510', 'VENTA AL POR MENOR DE HILADOS, TEJIDOS Y PRODUCTOS TEXTILES DE MERCERIA; CONFECCIONES PARA EL HOGAR Y TEXTILES N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (474, '47521', 'VENTA AL POR MENOR DE PRODUCTOS DE MADERA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (475, '47522', 'VENTA AL POR MENOR DE ARTICULOS DE FERRETERIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (476, '47523', 'VENTA AL POR MENOR DE PRODUCTOS DE PINTURERIAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (477, '47524', 'VENTA AL POR MENOR EN VIDRIERIAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (478, '47529', 'VENTA AL POR MENOR DE MATERIALES DE CONSTRUCCION Y ARTICULOS CONEXOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (479, '47530', 'VENTA AL POR MENOR DE TAPICES, ALFOMBRAS Y REVESTIMIENTOS DE PAREDES Y PISOS EN COMERCIOS ESPECIALIZADOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (480, '47591', 'VENTA AL POR MENOR DE MUEBLES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (481, '47592', 'VENTA AL POR MENOR DE ARTICULOS DE BAZAR', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (482, '47593', 'VENTA AL POR MENOR DE APARATOS ELECTRODOMESTICOS, REPUESTOS Y ACCESORIOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (483, '47594', 'VENTA AL POR MENOR DE ARTICULOS ELECTRICOS Y DE ILUMINACION', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (484, '47598', 'VENTA AL POR MENOR DE INSTRUMENTOS MUSICALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (485, '47610', 'VENTA AL POR MENOR DE LIBROS, PERIODICOS Y ARTICULOS DE PAPELERIA EN COMERCIOS ESPECIALIZADOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (486, '47620', 'VENTA AL POR MENOR DE DISCOS LASER, CASSETTES, CINTAS DE VIDEO Y OTROS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (487, '47630', 'VENTA AL POR MENOR DE PRODUCTOS Y EQUIPOS DE DEPORTE', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (488, '47631', 'VENTA AL POR MENOR DE BICICLETAS, ACCESORIOS Y REPUESTOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (489, '47640', 'VENTA AL POR MENOR DE JUEGOS Y JUGUETES EN COMERCIOS ESPECIALIZADOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (490, '47711', 'VENTA AL POR MENOR DE PRENDAS DE VESTIR Y ACCESORIOS DE VESTIR', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (491, '47712', 'VENTA AL POR MENOR DE CALZADO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (492, '47713', 'VENTA AL POR MENOR DE ARTICULOS DE PELETERIA, MARROQUINERIA Y TALABARTERIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (493, '47721', 'VENTA AL POR MENOR DE MEDICAMENTOS FARMACEUTICOS Y OTROS MATERIALES Y ARTICULOS DE USO MEDICO, ODONTOLOGICO Y VETERINARIO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (494, '47722', 'VENTA AL POR MENOR DE PRODUCTOS COSMETICOS Y DE TOCADOR', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (495, '47731', 'VENTA AL POR MENOR DE PRODUCTOS DE JOYERIA, BISUTERIA, OPTICA, RELOJERIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (496, '47732', 'VENTA AL POR MENOR DE PLANTAS, SEMILLAS, ANIMALES Y ARTICULOS CONEXOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (497, '47733', 'VENTA AL POR MENOR DE COMBUSTIBLES DE USO DOMESTICO (GAS PROPANO Y GAS LICUADO)', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (498, '47734', 'VENTA AL POR MENOR DE ARTESANIAS, ARTICULOS CERAMICOS Y RECUERDOS EN GENERAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (499, '47735', 'VENTA AL POR MENOR DE ATAUDES, LAPIDAS Y CRUCES, TROFEOS, ARTICULOS RELIGIOSOS EN GENERAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (500, '47736', 'VENTA AL POR MENOR DE ARMAS DE FUEGO, MUNICIONES Y ACCESORIOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (501, '47737', 'VENTA AL POR MENOR DE ARTICULOS DE COHETERIA Y PIROTECNICOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (502, '47738', 'VENTA AL POR MENOR DE ARTICULOS DESECHABLES DE USO PERSONAL Y DOMESTICO (SERVILLETAS, PAPEL HIGIENICO, PAÑALES, TOALLAS SANITARIAS, ETC.)', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (503, '47739', 'VENTA AL POR MENOR DE OTROS PRODUCTOS N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (504, '47741', 'VENTA AL POR MENOR DE ARTICULOS USADOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (505, '47742', 'VENTA AL POR MENOR DE TEXTILES Y CONFECCIONES USADOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (506, '47743', 'VENTA AL POR MENOR DE LIBROS, REVISTAS, PAPEL Y CARTON USADOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (507, '47749', 'VENTA AL POR MENOR DE PRODUCTOS USADOS N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (508, '47811', 'VENTA AL POR MENOR DE FRUTAS, VERDURAS Y HORTALIZAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (509, '47814', 'VENTA AL POR MENOR DE PRODUCTOS LACTEOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (510, '47815', 'VENTA AL POR MENOR DE PRODUCTOS DE PANADERIA, GALLETAS Y SIMILARES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (511, '47816', 'VENTA AL POR MENOR DE BEBIDAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (512, '47818', 'VENTA AL POR MENOR EN TIENDAS DE MERCADO Y PUESTOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (513, '47821', 'VENTA AL POR MENOR DE HILADOS, TEJIDOS Y PRODUCTOS TEXTILES DE MERCERIA EN PUESTOS DE MERCADOS Y FERIAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (514, '47822', 'VENTA AL POR MENOR DE ARTICULOS TEXTILES EXCEPTO CONFECCIONES PARA EL HOGAR EN PUESTOS DE MERCADOS Y FERIAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (515, '47823', 'VENTA AL POR MENOR DE CONFECCIONES TEXTILES PARA EL HOGAR EN PUESTOS DE MERCADOS Y FERIAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (516, '47824', 'VENTA AL POR MENOR DE PRENDAS DE VESTIR, ACCESORIOS DE VESTIR Y SIMILARES EN PUESTOS DE MERCADOS Y FERIAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (517, '47825', 'VENTA AL POR MENOR DE ROPA USADA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (518, '47826', 'VENTA AL POR MENOR DE CALZADO, ARTICULOS DE MARROQUINERIA Y TALABARTERIA EN PUESTOS DE MERCADOS Y FERIAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (519, '47827', 'VENTA AL POR MENOR DE ARTICULOS DE MARROQUINERIA Y TALABARTERIA EN PUESTOS DE MERCADOS Y FERIAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (520, '47829', 'VENTA AL POR MENOR DE ARTICULOS TEXTILES NCP EN PUESTOS DE MERCADOS Y FERIAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (521, '47891', 'VENTA AL POR MENOR DE ANIMALES, FLORES Y PRODUCTOS CONEXOS EN PUESTOS DE FERIA Y MERCADOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (522, '47892', 'VENTA AL POR MENOR DE PRODUCTOS MEDICINALES, COSMETICOS, DE TOCADOR Y DE LIMPIEZA EN PUESTOS DE FERIAS Y MERCADOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (523, '47893', 'VENTA AL POR MENOR DE ARTICULOS DE BAZAR EN PUESTOS DE FERIAS Y MERCADOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (524, '47894', 'VENTA AL POR MENOR DE ARTICULOS DE PAPEL, ENVASES, LIBROS, REVISTAS Y CONEXOS EN PUESTOS DE FERIA Y MERCADOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (525, '47895', 'VENTA AL POR MENOR DE MATERIALES DE CONSTRUCCION, ELECTRODOMESTICOS, ACCESORIOS PARA AUTOS Y SIMILARES EN PUESTOS DE FERIA Y MERCADOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (526, '47896', 'VENTA AL POR MENOR DE EQUIPOS ACCESORIOS PARA LAS COMUNICACIONES EN PUESTOS DE FERIA Y MERCADOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (527, '47899', 'VENTA AL POR MENOR EN PUESTOS DE FERIAS Y MERCADOS N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (528, '47910', 'VENTA AL POR MENOR POR CORREO O INTERNET', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (529, '47990', 'OTROS TIPOS DE VENTA AL POR MENOR NO REALIZADA, EN ALMACENES, PUESTOS DE VENTA O MERCADO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (530, '49110', 'TRANSPORTE INTERURBANO DE PASAJEROS POR FERROCARRIL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (531, '49120', 'TRANSPORTE DE CARGA POR FERROCARRIL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (532, '49211', 'TRANSPORTE DE PASAJEROS URBANOS E INTERURBANO MEDIANTE BUSES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (533, '49212', 'TRANSPORTE DE PASAJEROS INTERDEPARTAMENTAL MEDIANTE MICROBUSES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (534, '49213', 'TRANSPORTE DE PASAJEROS URBANOS E INTERURBANO MEDIANTE MICROBUSES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (535, '49214', 'TRANSPORTE DE PASAJEROS INTERDEPARTAMENTAL MEDIANTE BUSES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (536, '49221', 'TRANSPORTE INTERNACIONAL DE PASAJEROS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (537, '49222', 'TRANSPORTE DE PASAJEROS MEDIANTE TAXIS Y AUTOS CON CHOFER', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (538, '49223', 'TRANSPORTE ESCOLAR', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (539, '49225', 'TRANSPORTE DE PASAJEROS PARA EXCURSIONES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (540, '49226', 'SERVICIOS DE TRANSPORTE DE PERSONAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (541, '49229', 'TRANSPORTE DE PASAJEROS POR VIA TERRESTRE NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (542, '49231', 'TRANSPORTE DE CARGA URBANO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (543, '49232', 'TRANSPORTE NACIONAL DE CARGA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (544, '49233', 'TRANSPORTE DE CARGA INTERNACIONAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (545, '49234', 'SERVICIOS DE MUDANZA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (546, '49235', 'ALQUILER DE VEHICULOS DE CARGA CON CONDUCTOR', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (547, '49300', 'TRANSPORTE POR OLEODUCTO O GASODUCTO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (548, '50110', 'TRANSPORTE DE PASAJEROS MARITIMO Y DE CABOTAJE', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (549, '50120', 'TRANSPORTE DE CARGA MARITIMO Y DE CABOTAJE', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (550, '50211', 'TRANSPORTE DE PASAJEROS POR VIAS DE NAVEGACION INTERIORES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (551, '50212', 'ALQUILER DE EQUIPO DE TRANSPORTE DE PASAJEROS POR VIAS DE NAVEGACION INTERIOR CON CONDUCTOR', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (552, '50220', 'TRANSPORTE DE CARGA POR VIAS DE NAVEGACION INTERIORES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (553, '51100', 'TRANSPORTE AEREO DE PASAJEROS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (554, '51201', 'TRANSPORTE DE CARGA POR VIA AEREA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (555, '51202', 'ALQUILER DE EQUIPO DE AEROTRANSPORTE CON OPERADORES PARA EL PROPOSITO DE TRANSPORTAR CARGA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (556, '52101', 'ALQUILER DE INSTALACIONES DE ALMACENAMIENTO EN ZONAS FRANCAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (557, '52102', 'ALQUILER DE SILOS PARA CONSERVACION Y ALMACENAMIENTO DE GRANOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (558, '52103', 'ALQUILER DE INSTALACIONES CON REFRIGERACION PARA ALMACENAMIENTO Y CONSERVACION DE ALIMENTOS Y OTROS PRODUCTOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (559, '52109', 'ALQUILER DE BODEGAS PARA ALMACENAMIENTO Y DEPOSITO N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (560, '52211', 'SERVICIO DE GARAJE Y ESTACIONAMIENTO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (561, '52212', 'SERVICIOS DE TERMINALES PARA EL TRANSPORTE POR VIA TERRESTRE', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (562, '52219', 'SERVICIOS PARA EL TRANSPORTE POR VIA TERRESTRE N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (563, '52220', 'SERVICIOS PARA EL TRANSPORTE ACUATICO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (564, '52230', 'SERVICIOS PARA EL TRANSPORTE AEREO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (565, '52240', 'MANIPULACION DE CARGA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (566, '52290', 'SERVICIOS PARA EL TRANSPORTE NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (567, '52291', 'AGENCIAS DE TRAMITACIONES ADUANALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (568, '53100', 'SERVICIOS DE CORREO NACIONAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (569, '53200', 'ACTIVIDADES DE CORREO DISTINTAS A LAS ACTIVIDADES POSTALES NACIONALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (570, '55101', 'ACTIVIDADES DE ALOJAMIENTO PARA ESTANCIAS CORTAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (571, '55102', 'HOTELES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (572, '55200', 'ACTIVIDADES DE CAMPAMENTOS, PARQUES DE VEHICULOS DE RECREO Y PARQUES DE CARAVANAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (573, '55900', 'ALOJAMIENTO N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (574, '56101', 'RESTAURANTES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (575, '56106', 'PUPUSERIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (576, '56107', 'ACTIVIDADES VARIAS DE RESTAURANTES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (577, '56108', 'COMEDORES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (578, '56109', 'MERENDEROS AMBULANTES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (579, '56210', 'PREPARACION DE COMIDA PARA EVENTOS ESPECIALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (580, '56291', 'SERVICIOS DE PROVISION DE COMIDAS POR CONTRATO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (581, '56292', 'SERVICIOS DE CONCESION DE CAFETINES Y CHALET EN EMPRESAS E INSTITUCIONES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (582, '56299', 'SERVICIOS DE PREPARACION DE COMIDAS NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (583, '56301', 'SERVICIO DE EXPENDIO DE BEBIDAS EN SALONES Y BARES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (584, '56302', 'SERVICIO DE EXPENDIO DE BEBIDAS EN PUESTOS CALLEJEROS, MERCADOS Y FERIAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (585, '58110', 'EDICION DE LIBROS, FOLLETOS, PARTITURAS Y OTRAS EDICIONES DISTINTAS A ESTAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (586, '58120', 'EDICION DE DIRECTORIOS Y LISTAS DE CORREOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (587, '58130', 'EDICION DE PERIODICOS, REVISTAS Y OTRAS PUBLICACIONES PERIODICAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (588, '58190', 'OTRAS ACTIVIDADES DE EDICION', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (589, '58200', 'EDICION DE PROGRAMAS INFORMATICOS (SOFTWARE)', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (590, '59110', 'ACTIVIDADES DE PRODUCCION CINEMATOGRAFICA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (591, '59120', 'ACTIVIDADES DE POST PRODUCCION DE PELICULAS, VIDEOS Y PROGRAMAS DE TELEVISION', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (592, '59130', 'ACTIVIDADES DE DISTRIBUCION DE PELICULAS CINEMATOGRAFICAS, VIDEOS Y PROGRAMAS DE TELEVISION', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (593, '59140', 'ACTIVIDADES DE EXHIBICION DE PELICULAS CINEMATOGRAFICAS Y CINTAS DE VIDEO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (594, '59200', 'ACTIVIDADES DE EDICION Y GRABACION DE MUSICA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (595, '60100', 'SERVICIOS DE DIFUSIONES DE RADIO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (596, '60201', 'ACTIVIDADES DE PROGRAMACION Y DIFUSION DE TELEVISION ABIERTA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (597, '60202', 'ACTIVIDADES DE SUSCRIPCION Y DIFUSION DE TELEVISION POR CABLE Y/O SUSCRIPCION', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (598, '60299', 'SERVICIOS DE TELEVISION, INCLUYE TELEVISION POR CABLE', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (599, '60900', 'PROGRAMACION Y TRANSMISION DE RADIO Y TELEVISION', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (600, '61101', 'SERVICIO DE TELEFONIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (601, '61102', 'SERVICIO DE INTERNET', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (602, '61103', 'SERVICIO DE TELEFONIA FIJA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (603, '61109', 'SERVICIO DE INTERNET N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (604, '61201', 'SERVICIOS DE TELEFONIA CELULAR', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (605, '61202', 'SERVICIOS DE INTERNET INALAMBRICO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (606, '61209', 'SERVICIOS DE TELECOMUNICACIONES INALAMBRICO N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (607, '61301', 'TELECOMUNICACIONES SATELITALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (608, '61309', 'COMUNICACION VIA SATELITE N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (609, '61900', 'ACTIVIDADES DE TELECOMUNICACION N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (610, '62010', 'PROGRAMACION INFORMATICA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (611, '62020', 'CONSULTORIAS Y GESTION DE SERVICIOS INFORMATICOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (612, '62090', 'OTRAS ACTIVIDADES DE TECNOLOGIA DE INFORMACION Y SERVICIOS DE COMPUTADORA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (613, '63110', 'PROCESAMIENTO DE DATOS Y ACTIVIDADES RELACIONADAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (614, '63120', 'PORTALES WEB', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (615, '63910', 'SERVICIOS DE AGENCIAS DE NOTICIAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (616, '63990', 'OTROS SERVICIOS DE INFORMACION N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (617, '64110', 'SERVICIOS PROVISTOS POR EL BANCO CENTRAL DE EL SALVADOR', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (618, '64190', 'BANCOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (619, '64192', 'ENTIDADES DEDICADAS AL ENVIO DE REMESAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (620, '64199', 'OTRAS ENTIDADES FINANCIERAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (621, '64200', 'ACTIVIDADES DE SOCIEDADES DE CARTERA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (622, '64300', 'FIDEICOMISOS, FONDOS Y OTRAS FUENTES DE FINANCIAMIENTO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (623, '64910', 'ARRENDAMIENTOS FINANCIEROS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (624, '64920', 'ASOCIACIONES COOPERATIVAS DE AHORRO Y CREDITO DEDICADAS A LA INTERMEDIACION FINANCIERA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (625, '64921', 'INSTITUCIONES EMISORAS DE TARJETAS DE CREDITO Y OTROS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (626, '64922', 'TIPOS DE CREDITO NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (627, '64928', 'PRESTAMISTAS Y CASAS DE EMPEÑO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (628, '64990', 'ACTIVIDADES DE SERVICIOS FINANCIEROS, EXCEPTO LA FINANCIACION DE PLANES DE SEGUROS Y DE PENSIONES N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (629, '65110', 'PLANES DE SEGUROS DE VIDA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (630, '65120', 'PLANES DE SEGURO EXCEPTO DE VIDA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (631, '65199', 'SEGUROS GENERALES DE TODO TIPO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (632, '65200', 'PLANES SE SEGURO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (633, '65300', 'PLANES DE PENSIONES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (634, '66110', 'ADMINISTRACION DE MERCADOS FINANCIEROS (BOLSA DE VALORES)', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (635, '66120', 'ACTIVIDADES BURSATILES (CORREDORES DE BOLSA)', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (636, '66190', 'ACTIVIDADES AUXILIARES DE LA INTERMEDIACION FINANCIERA NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (637, '66210', 'EVALUACION DE RIESGOS Y DAÑOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (638, '66220', 'ACTIVIDADES DE AGENTES Y CORREDORES DE SEGUROS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (639, '66290', 'OTRAS ACTIVIDADES AUXILIARES DE SEGUROS Y FONDOS DE PENSIONES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (640, '66300', 'ACTIVIDADES DE ADMINISTRACION DE FONDOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (641, '68101', 'SERVICIO DE ALQUILER Y VENTA DE LOTES EN CEMENTERIOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (642, '68109', 'ACTIVIDADES INMOBILIARIAS REALIZADAS CON BIENES PROPIOS O ARRENDADOS N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (643, '68200', 'ACTIVIDADES INMOBILIARIAS REALIZADAS A CAMBIO DE UNA RETRIBUCION O POR CONTRATA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (644, '69100', 'ACTIVIDADES JURIDICAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (645, '69200', 'ACTIVIDADES DE CONTABILIDAD, TENEDURIA DE LIBROS Y AUDITORIA; ASESORAMIENTO EN MATERIA DE IMPUESTOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (646, '70100', 'ACTIVIDADES DE OFICINAS CENTRALES DE SOCIEDADES DE CARTERA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (647, '70200', 'ACTIVIDADES DE CONSULTORIA EN GESTION EMPRESARIAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (648, '71101', 'SERVICIOS DE ARQUITECTURA Y PLANIFICACION URBANA Y SERVICIOS CONEXOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (649, '71102', 'SERVICIOS DE INGENIERIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (650, '71103', 'SERVICIOS DE AGRIMENSURA, TOPOGRAFIA, CARTOGRAFIA, PROSPECCION Y GEOFISICA Y SERVICIOS CONEXOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (651, '71200', 'ENSAYOS Y ANALISIS TECNICOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (652, '72100', 'INVESTIGACIONES Y DESARROLLO EXPERIMENTAL EN EL CAMPO DE LAS CIENCIAS NATURALES Y LA INGENIERIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (653, '72199', 'INVESTIGACIONES CIENTIFICAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (654, '72200', 'INVESTIGACIONES Y DESARROLLO EXPERIMENTAL EN EL CAMPO DE LAS CIENCIAS SOCIALES Y LAS HUMANIDADES CIENTIFICA Y DESARROLLO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (655, '73100', 'PUBLICIDAD', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (656, '73200', 'INVESTIGACION DE MERCADOS Y REALIZACION DE ENCUESTAS DE OPINION PUBLICA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (657, '74100', 'ACTIVIDADES DE DISEÑO ESPECIALIZADO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (658, '74200', 'ACTIVIDADES DE FOTOGRAFIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (659, '74900', 'SERVICIOS PROFESIONALES Y CIENTIFICOS NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (660, '75000', 'ACTIVIDADES VETERINARIAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (661, '77101', 'ALQUILER DE EQUIPO DE TRANSPORTE TERRESTRE', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (662, '77102', 'ALQUILER DE EQUIPO DE TRANSPORTE ACUATICO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (663, '77103', 'ALQUILER DE EQUIPO DE TRANSPORTE POR VIA AEREA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (664, '77210', 'ALQUILER Y ARRENDAMIENTO DE EQUIPO DE RECREO Y DEPORTIVO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (665, '77220', 'ALQUILER DE CINTAS DE VIDEO Y DISCOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (666, '77290', 'ALQUILER DE OTROS EFECTOS PERSONALES Y ENSERES DOMESTICOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (667, '77300', 'ALQUILER DE MAQUINARIA Y EQUIPO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (668, '77400', 'ARRENDAMIENTO DE PRODUCTOS DE PROPIEDAD INTELECTUAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (669, '78100', 'OBTENCION Y DOTACION DE PERSONAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (670, '78200', 'ACTIVIDADES DE LAS AGENCIAS DE TRABAJO TEMPORAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (671, '78300', 'DOTACION DE RECURSOS HUMANOS Y GESTION; GESTION DE LAS FUNCIONES DE RECURSOS HUMANOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (672, '79110', 'ACTIVIDADES DE AGENCIAS DE VIAJES Y ORGANIZADORES DE VIAJES; ACTIVIDADES DE ASISTENCIA A TURISTAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (673, '79120', 'ACTIVIDADES DE LOS OPERADORES TURISTICOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (674, '79900', 'OTROS SERVICIOS DE RESERVAS Y ACTIVIDADES RELACIONADAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (675, '80100', 'SERVICIOS DE SEGURIDAD PRIVADOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (676, '80201', 'ACTIVIDADES DE SERVICIOS DE SISTEMAS DE SEGURIDAD', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (677, '80202', 'ACTIVIDADES PARA LA PRESTACION DE SISTEMAS DE SEGURIDAD', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (678, '80300', 'ACTIVIDADES DE INVESTIGACION', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (679, '81100', 'ACTIVIDADES COMBINADAS DE MANTENIMIENTO DE EDIFICIOS E INSTALACIONES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (680, '81210', 'LIMPIEZA GENERAL DE EDIFICIOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (681, '81290', 'OTRAS ACTIVIDADES COMBINADAS DE MANTENIMIENTO DE EDIFICIOS E INSTALACIONES NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (682, '81300', 'SERVICIO DE JARDINERIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (683, '82110', 'SERVICIOS ADMINISTRATIVOS DE OFICINAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (684, '82190', 'SERVICIO DE FOTOCOPIADO Y SIMILARES, EXCEPTO EN IMPRENTAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (685, '82200', 'ACTIVIDADES DE LAS CENTRALES DE LLAMADAS (CALL CENTER)', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (686, '82300', 'ORGANIZACION DE CONVENCIONES Y FERIAS DE NEGOCIOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (687, '82910', 'ACTIVIDADES DE AGENCIAS DE COBRO Y OFICINAS DE CREDITO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (688, '82921', 'SERVICIOS DE ENVASE Y EMPAQUE DE PRODUCTOS ALIMENTICIOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (689, '82922', 'SERVICIOS DE ENVASE Y EMPAQUE DE PRODUCTOS MEDICINALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (690, '82929', 'SERVICIO DE ENVASE Y EMPAQUE NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (691, '82990', 'ACTIVIDADES DE APOYO EMPRESARIALES NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (692, '84110', 'ACTIVIDADES DE LA ADMINISTRACION PUBLICA EN GENERAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (693, '84111', 'ALCALDIAS MUNICIPALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (694, '84120', 'REGULACION DE LAS ACTIVIDADES DE PRESTACION DE SERVICIOS SANITARIOS, EDUCATIVOS, CULTURALES Y OTROS SERVICIOS SOCIALES, EXCEPTO SEGURIDAD SOCIAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (695, '84130', 'REGULACION Y FACILITACION DE LA ACTIVIDAD ECONOMICA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (696, '84210', 'ACTIVIDADES DE ADMINISTRACION Y FUNCIONAMIENTO DEL MINISTERIO DE RELACIONES EXTERIORES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (697, '84220', 'ACTIVIDADES DE DEFENSA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (698, '84230', 'ACTIVIDADES DE MANTENIMIENTO DEL ORDEN PUBLICO Y DE SEGURIDAD', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (699, '84300', 'ACTIVIDADES DE PLANES DE SEGURIDAD SOCIAL DE AFILIACION OBLIGATORIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (700, '85101', 'GUARDERIA EDUCATIVA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (701, '85102', 'ENSEÑANZA PREESCOLAR O PARVULARIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (702, '85103', 'ENSEÑANZA PRIMARIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (703, '85104', 'SERVICIO DE EDUCACION PREESCOLAR Y PRIMARIA INTEGRADA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (704, '85211', 'ENSEÑANZA SECUNDARIA TERCER CICLO (7°, 8° Y 9°)', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (705, '85212', 'ENSEÑANZA SECUNDARIA DE FORMACION GENERAL BACHILLERATO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (706, '85221', 'ENSEÑANZA SECUNDARIA DE FORMACION TECNICA Y PROFESIONAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (707, '85222', 'ENSEÑANZA SECUNDARIA DE FORMACION TECNICA Y PROFESIONAL INTEGRADA CON ENSEÑANZA PRIMARIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (708, '85301', 'ENSEÑANZA SUPERIOR UNIVERSITARIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (709, '85302', 'ENSEÑANZA SUPERIOR NO UNIVERSITARIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (710, '85303', 'ENSEÑANZA SUPERIOR INTEGRADA A EDUCACION SECUNDARIA Y/O PRIMARIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (711, '85410', 'EDUCACION DEPORTIVA Y RECREATIVA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (712, '85420', 'EDUCACION CULTURAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (713, '85490', 'OTROS TIPOS DE ENSEÑANZA N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (714, '85499', 'ENSEÑANZA FORMAL', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (715, '85500', 'SERVICIOS DE APOYO A LA ENSEÑANZA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (716, '86100', 'ACTIVIDADES DE HOSPITALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (717, '86201', 'CLINICAS MEDICAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (718, '86202', 'SERVICIOS DE ODONTOLOGIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (719, '86203', 'SERVICIOS MEDICOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (720, '86901', 'SERVICIOS DE ANALISIS Y ESTUDIOS DE DIAGNOSTICO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (721, '86902', 'ACTIVIDADES DE ATENCION DE LA SALUD HUMANA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (722, '86909', 'OTROS SERVICIO RELACIONADOS CON LA SALUD NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (723, '87100', 'RESIDENCIAS DE ANCIANOS CON ATENCION DE ENFERMERIA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (724, '87200', 'INSTITUCIONES DEDICADAS AL TRATAMIENTO DEL RETRASO MENTAL, PROBLEMAS DE SALUD MENTAL Y EL USO INDEBIDO DE SUSTANCIAS NOCIVAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (725, '87300', 'INSTITUCIONES DEDICADAS AL CUIDADO DE ANCIANOS Y DISCAPACITADOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (726, '87900', 'ACTIVIDADES DE ASISTENCIA A NIÑOS Y JOVENES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (727, '87901', 'OTRAS ACTIVIDADES DE ATENCION EN INSTITUCIONES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (728, '88100', 'ACTIVIDADES DE ASISTENCIA SOCIALES SIN ALOJAMIENTO PARA ANCIANOS Y DISCAPACITADOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (729, '88900', 'SERVICIOS SOCIALES SIN ALOJAMIENTO NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (730, '90000', 'ACTIVIDADES CREATIVAS ARTISTICAS Y DE ESPARCIMIENTO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (731, '91010', 'ACTIVIDADES DE BIBLIOTECAS Y ARCHIVOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (732, '91020', 'ACTIVIDADES DE MUSEOS Y PRESERVACION DE LUGARES Y EDIFICIOS HISTORICOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (733, '91030', 'ACTIVIDADES DE JARDINES BOTANICOS, ZOOLOGICOS Y DE RESERVAS NATURALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (734, '92000', 'ACTIVIDADES DE JUEGOS Y APUESTAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (735, '93110', 'GESTION DE INSTALACIONES DEPORTIVAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (736, '93120', 'ACTIVIDADES DE CLUBES DEPORTIVOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (737, '93190', 'OTRAS ACTIVIDADES DEPORTIVAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (738, '93210', 'ACTIVIDADES DE PARQUES DE ATRACCIONES Y PARQUES TEMATICOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (739, '93291', 'DISCOTECAS Y SALAS DE BAILE', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (740, '93298', 'CENTROS VACACIONALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (741, '93299', 'ACTIVIDADES DE ESPARCIMIENTO NCP', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (742, '94110', 'ACTIVIDADES DE ORGANIZACIONES EMPRESARIALES Y DE EMPLEADORES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (743, '94120', 'ACTIVIDADES DE ORGANIZACIONES PROFESIONALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (744, '94200', 'ACTIVIDADES DE SINDICATOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (745, '94910', 'ACTIVIDADES DE ORGANIZACIONES RELIGIOSAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (746, '94920', 'ACTIVIDADES DE ORGANIZACIONES POLITICAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (747, '94990', 'ACTIVIDADES DE ASOCIACIONES N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (748, '95110', 'REPARACION DE COMPUTADORAS Y EQUIPO PERIFERICO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (749, '95120', 'REPARACION DE EQUIPO DE COMUNICACION', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (751, '95210', 'REPARACION DE APARATOS ELECTRONICOS DE CONSUMO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (752, '95220', 'REPARACION DE APARATOS DOMESTICO Y EQUIPO DE HOGAR Y JARDIN', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (753, '95230', 'REPARACION DE CALZADO Y ARTICULOS DE CUERO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (754, '95240', 'REPARACION DE MUEBLES Y ACCESORIOS PARA EL HOGAR', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (755, '95291', 'REPARACION DE INSTRUMENTOS MUSICALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (756, '95292', 'SERVICIOS DE CERRAJERIA Y COPIADO DE LLAVES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (757, '95293', 'REPARACION DE JOYAS Y RELOJES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (758, '95294', 'REPARACION DE BICICLETAS, SILLAS DE RUEDAS Y RODADOS N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (759, '95299', 'REPARACIONES DE ENSERES PERSONALES N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (760, '96010', 'LAVADO Y LIMPIEZA DE PRENDAS DE TELA Y DE PIEL, INCLUSO LA LIMPIEZA EN SECO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (761, '96020', 'PELUQUERIA Y OTROS TRATAMIENTOS DE BELLEZA', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (762, '96030', 'POMPAS FUNEBRES Y ACTIVIDADES CONEXAS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (763, '96091', 'SERVICIOS DE SAUNA Y OTROS SERVICIOS PARA LA ESTETICA CORPORAL N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (764, '96092', 'SERVICIOS N.C.P.', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (765, '97000', 'ACTIVIDAD DE LOS HOGARES EN CALIDAD DE EMPLEADORES DE PERSONAL DOMESTICO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (766, '98100', 'ACTIVIDADES INDIFERENCIADAS DE PRODUCCION DE BIENES DE LOS HOGARES PRIVADOS PARA USO PROPIO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (767, '98200', 'ACTIVIDADES INDIFERENCIADAS DE PRODUCCION DE SERVICIOS DE LOS HOGARES PRIVADOS PARA USO PROPIO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (768, '99000', 'ACTIVIDADES DE ORGANIZACIONES Y ORGANOS EXTRATERRITORIALES', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (769, '10001', 'EMPLEADOS', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (770, '10002', 'JUBILADO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (771, '10003', 'ESTUDIANTE', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (772, '10004', 'DESEMPLEADO', 'NO');
INSERT INTO `tbl_cat_019_actividad_economica` VALUES (773, '10005', 'OTROS', 'NO');

-- ----------------------------
-- Table structure for tbl_categorias
-- ----------------------------
DROP TABLE IF EXISTS `tbl_categorias`;
CREATE TABLE `tbl_categorias`  (
  `id_categoria` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_categoria`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_categorias
-- ----------------------------
INSERT INTO `tbl_categorias` VALUES (1, 'BEBIDAS');
INSERT INTO `tbl_categorias` VALUES (2, 'ALIMENTOS');
INSERT INTO `tbl_categorias` VALUES (3, 'Ferretería');
INSERT INTO `tbl_categorias` VALUES (4, 'xcvxcv');
INSERT INTO `tbl_categorias` VALUES (5, 'Cobro de Servicios');
INSERT INTO `tbl_categorias` VALUES (6, 'Farmacia');
INSERT INTO `tbl_categorias` VALUES (7, 'Refrescos');
INSERT INTO `tbl_categorias` VALUES (8, 'Domésticos');
INSERT INTO `tbl_categorias` VALUES (9, 'Embutidos');
INSERT INTO `tbl_categorias` VALUES (10, 'Granos');
INSERT INTO `tbl_categorias` VALUES (11, 'Frutas');

-- ----------------------------
-- Table structure for tbl_clientes
-- ----------------------------
DROP TABLE IF EXISTS `tbl_clientes`;
CREATE TABLE `tbl_clientes`  (
  `id_cliente` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_tipo_cliente` int UNSIGNED NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nombre_comercial` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `razon_social` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `direccion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_distrito` int UNSIGNED NOT NULL,
  `id_actividad_economica` int UNSIGNED NULL DEFAULT NULL,
  `telefono` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dui` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nrc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `correo_electronico` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_cliente`) USING BTREE,
  INDEX `IDX_nombre`(`nombre` ASC) USING BTREE,
  INDEX `IDX_nombreComer`(`nombre_comercial` ASC) USING BTREE,
  INDEX `FK_cliente_tipo`(`id_tipo_cliente` ASC) USING BTREE,
  INDEX `FK_cliente_actividad`(`id_actividad_economica` ASC) USING BTREE,
  INDEX `Fk_cliente_distrito`(`id_distrito` ASC) USING BTREE,
  CONSTRAINT `FK_cliente_actividad` FOREIGN KEY (`id_actividad_economica`) REFERENCES `tbl_cat_019_actividad_economica` (`id_actividad_economica`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_cliente_tipo` FOREIGN KEY (`id_tipo_cliente`) REFERENCES `tbl_tipo_cliente` (`id_tipo_cliente`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Fk_cliente_distrito` FOREIGN KEY (`id_distrito`) REFERENCES `tbl_distrito` (`id_distrito`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_clientes
-- ----------------------------
INSERT INTO `tbl_clientes` VALUES (1, 1, 'Karen Santos', NULL, NULL, 'Caserío La Paz', 258, NULL, '6152-1378', '2234567898765', NULL, NULL, 'sssssss@gmail.com');
INSERT INTO `tbl_clientes` VALUES (2, 2, 'Ana Marcela Vásquez Pérez', 'Pastelería Ana', 'Ana Marcela Vásquez Pérez', '2ᵃ Calle Oriente, N°15, B° El Centro', 258, 459, '7987-1234', '04567890-1', '0905-150288-101-9', '12567-8', 'ana.marcela.vp@gmail.com');

-- ----------------------------
-- Table structure for tbl_compras
-- ----------------------------
DROP TABLE IF EXISTS `tbl_compras`;
CREATE TABLE `tbl_compras`  (
  `id_compra` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_proveedor` int UNSIGNED NOT NULL,
  `fecha` date NULL DEFAULT NULL,
  `tipo_compra` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `total` decimal(10, 2) NULL DEFAULT NULL,
  `estado` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id_compra`) USING BTREE,
  INDEX `IDX_compras`(`id_compra` ASC) USING BTREE,
  INDEX `FK_compra_proveedor`(`id_proveedor` ASC) USING BTREE,
  CONSTRAINT `FK_compra_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `tbl_proveedores` (`id_proveedor`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_compras
-- ----------------------------
INSERT INTO `tbl_compras` VALUES (29, 2, '2025-10-26', 'CONTADO', 30.00, 0);
INSERT INTO `tbl_compras` VALUES (30, 2, '2025-10-30', 'CONTADO', 2.00, 1);
INSERT INTO `tbl_compras` VALUES (31, 1, '2025-10-30', 'CREDITO', 3.30, 0);
INSERT INTO `tbl_compras` VALUES (40, 2, '2025-10-31', 'CONTADO', 0.00, 1);
INSERT INTO `tbl_compras` VALUES (41, 2, '2025-10-31', 'CONTADO', 20.00, 1);
INSERT INTO `tbl_compras` VALUES (42, 1, '2025-10-31', 'CONTADO', 22.00, 0);
INSERT INTO `tbl_compras` VALUES (43, 1, '2025-10-31', 'CONTADO', 1.50, 0);
INSERT INTO `tbl_compras` VALUES (44, 1, '2025-11-01', 'CONTADO', 18.75, 0);
INSERT INTO `tbl_compras` VALUES (45, 2, '2025-11-03', 'CREDITO', 1.80, 0);
INSERT INTO `tbl_compras` VALUES (46, 2, '2025-11-15', 'CONTADO', 9.00, 0);
INSERT INTO `tbl_compras` VALUES (47, 1, '2025-11-16', 'CONTADO', 12.00, 1);
INSERT INTO `tbl_compras` VALUES (48, 1, '2025-11-16', 'CONTADO', 5.00, 1);
INSERT INTO `tbl_compras` VALUES (49, 2, '2025-11-16', 'CONTADO', 9.00, 1);
INSERT INTO `tbl_compras` VALUES (50, 2, '2025-11-16', 'CONTADO', 0.00, 1);
INSERT INTO `tbl_compras` VALUES (51, 2, '2025-11-16', 'CONTADO', 0.00, 1);
INSERT INTO `tbl_compras` VALUES (52, 1, '2025-11-16', 'CONTADO', 0.00, 0);
INSERT INTO `tbl_compras` VALUES (53, 1, '2025-11-16', 'CONTADO', 0.00, 1);
INSERT INTO `tbl_compras` VALUES (54, 1, '2025-11-16', 'CONTADO', 0.00, 1);
INSERT INTO `tbl_compras` VALUES (55, 1, '2025-11-16', 'CONTADO', 0.00, 1);
INSERT INTO `tbl_compras` VALUES (56, 1, '2025-11-16', 'CONTADO', 0.00, 1);
INSERT INTO `tbl_compras` VALUES (57, 1, '2025-11-16', 'CONTADO', 18.00, 1);
INSERT INTO `tbl_compras` VALUES (58, 1, '2025-11-16', 'CONTADO', 0.00, 0);
INSERT INTO `tbl_compras` VALUES (59, 1, '2025-11-16', 'CONTADO', 0.00, 0);
INSERT INTO `tbl_compras` VALUES (60, 2, '2025-11-16', 'CONTADO', 0.00, 1);
INSERT INTO `tbl_compras` VALUES (61, 1, '2025-11-16', 'CONTADO', 0.00, 0);
INSERT INTO `tbl_compras` VALUES (62, 1, '2025-11-16', 'CONTADO', 0.00, 0);
INSERT INTO `tbl_compras` VALUES (63, 1, '2025-11-16', 'CONTADO', 24.00, 1);
INSERT INTO `tbl_compras` VALUES (64, 1, '2025-11-16', 'CONTADO', 1.00, 1);
INSERT INTO `tbl_compras` VALUES (65, 1, '2025-11-16', 'CONTADO', 6.00, 1);
INSERT INTO `tbl_compras` VALUES (66, 1, '2025-11-16', 'CONTADO', 6.00, 1);
INSERT INTO `tbl_compras` VALUES (67, 1, '2025-11-16', 'CONTADO', 3.96, 1);
INSERT INTO `tbl_compras` VALUES (68, 1, '2025-11-16', 'CONTADO', 3.00, 1);
INSERT INTO `tbl_compras` VALUES (69, 1, '2025-11-16', 'CONTADO', 3.00, 1);
INSERT INTO `tbl_compras` VALUES (70, 1, '2025-11-16', 'CONTADO', 3.00, 1);
INSERT INTO `tbl_compras` VALUES (71, 1, '2025-11-16', 'CONTADO', 1.50, 0);

-- ----------------------------
-- Table structure for tbl_cuentas_cobrar
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cuentas_cobrar`;
CREATE TABLE `tbl_cuentas_cobrar`  (
  `id_cxc` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_venta` int NOT NULL,
  `saldo` decimal(14, 2) NOT NULL DEFAULT 0.00,
  `estado` tinyint(1) NOT NULL DEFAULT 0,
  `creado_en` datetime NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id_cxc`) USING BTREE,
  INDEX `id_cliente`(`id_cliente`) USING BTREE,
  INDEX `id_venta`(`id_venta`) USING BTREE,
  INDEX `estado`(`estado`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of tbl_cuentas_cobrar
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_cuentas_pagar
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cuentas_pagar`;
CREATE TABLE `tbl_cuentas_pagar`  (
  `id_cxp` int NOT NULL AUTO_INCREMENT,
  `id_proveedor` int NOT NULL,
  `id_compra` int NOT NULL,
  `saldo` decimal(14, 2) NOT NULL DEFAULT 0.00,
  `estado` tinyint(1) NOT NULL DEFAULT 0,
  `creado_en` datetime NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id_cxp`) USING BTREE,
  INDEX `id_proveedor`(`id_proveedor`) USING BTREE,
  INDEX `id_compra`(`id_compra`) USING BTREE,
  INDEX `estado`(`estado`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of tbl_cuentas_pagar
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_departamento
-- ----------------------------
DROP TABLE IF EXISTS `tbl_departamento`;
CREATE TABLE `tbl_departamento`  (
  `id_departamento` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_departamento`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_departamento
-- ----------------------------
INSERT INTO `tbl_departamento` VALUES (1, 'Ahuachapán');
INSERT INTO `tbl_departamento` VALUES (2, 'Santa Ana');
INSERT INTO `tbl_departamento` VALUES (3, 'Sonsonate');
INSERT INTO `tbl_departamento` VALUES (4, 'Chalatenango');
INSERT INTO `tbl_departamento` VALUES (5, 'La Libertad');
INSERT INTO `tbl_departamento` VALUES (6, 'San Salvador');
INSERT INTO `tbl_departamento` VALUES (7, 'Cuscatlán');
INSERT INTO `tbl_departamento` VALUES (8, 'La Paz');
INSERT INTO `tbl_departamento` VALUES (9, 'Cabañas');
INSERT INTO `tbl_departamento` VALUES (10, 'San Vicente');
INSERT INTO `tbl_departamento` VALUES (11, 'Usulután');
INSERT INTO `tbl_departamento` VALUES (12, 'San Miguel');
INSERT INTO `tbl_departamento` VALUES (13, 'Morazán');
INSERT INTO `tbl_departamento` VALUES (14, 'La Unión');

-- ----------------------------
-- Table structure for tbl_detalle_compra
-- ----------------------------
DROP TABLE IF EXISTS `tbl_detalle_compra`;
CREATE TABLE `tbl_detalle_compra`  (
  `id_detalle_compra` int NOT NULL AUTO_INCREMENT,
  `detalle` int NOT NULL,
  `detalle_prod` int NOT NULL,
  `detalle_cant` decimal(12, 2) NOT NULL,
  `detalle_precio` decimal(12, 2) NOT NULL,
  `detalle_subttal` decimal(14, 2) NOT NULL,
  PRIMARY KEY (`id_detalle_compra`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_detalle_compra
-- ----------------------------
INSERT INTO `tbl_detalle_compra` VALUES (62, 29, 42, 5.00, 6.00, 30.00);
INSERT INTO `tbl_detalle_compra` VALUES (64, 30, 42, 1.00, 2.00, 2.00);
INSERT INTO `tbl_detalle_compra` VALUES (67, 31, 42, 3.00, 1.10, 3.30);
INSERT INTO `tbl_detalle_compra` VALUES (76, 41, 42, 10.00, 2.00, 20.00);
INSERT INTO `tbl_detalle_compra` VALUES (77, 42, 42, 20.00, 1.10, 22.00);
INSERT INTO `tbl_detalle_compra` VALUES (78, 43, 42, 3.00, 0.50, 1.50);
INSERT INTO `tbl_detalle_compra` VALUES (80, 44, 42, 15.00, 1.25, 18.75);
INSERT INTO `tbl_detalle_compra` VALUES (82, 45, 45, 3.00, 0.60, 1.80);
INSERT INTO `tbl_detalle_compra` VALUES (83, 46, 45, 12.00, 0.75, 9.00);
INSERT INTO `tbl_detalle_compra` VALUES (85, 47, 46, 20.00, 0.60, 12.00);
INSERT INTO `tbl_detalle_compra` VALUES (86, 48, 45, 10.00, 0.50, 5.00);
INSERT INTO `tbl_detalle_compra` VALUES (87, 49, 46, 5.00, 0.60, 3.00);
INSERT INTO `tbl_detalle_compra` VALUES (88, 49, 45, 12.00, 0.50, 6.00);
INSERT INTO `tbl_detalle_compra` VALUES (89, 51, 46, 36.00, 0.75, 27.00);
INSERT INTO `tbl_detalle_compra` VALUES (90, 54, 46, 10.00, 0.60, 6.00);
INSERT INTO `tbl_detalle_compra` VALUES (91, 55, 46, 10.00, 0.60, 6.00);
INSERT INTO `tbl_detalle_compra` VALUES (92, 56, 46, 10.00, 0.60, 6.00);
INSERT INTO `tbl_detalle_compra` VALUES (93, 57, 46, 10.00, 0.60, 6.00);
INSERT INTO `tbl_detalle_compra` VALUES (94, 57, 45, 3.00, 4.00, 12.00);
INSERT INTO `tbl_detalle_compra` VALUES (95, 63, 46, 24.00, 1.00, 24.00);
INSERT INTO `tbl_detalle_compra` VALUES (97, 64, 42, 1.00, 1.00, 1.00);
INSERT INTO `tbl_detalle_compra` VALUES (98, 65, 42, 24.00, 0.25, 6.00);
INSERT INTO `tbl_detalle_compra` VALUES (99, 66, 45, 12.00, 0.50, 6.00);
INSERT INTO `tbl_detalle_compra` VALUES (101, 67, 42, 12.00, 0.33, 3.96);
INSERT INTO `tbl_detalle_compra` VALUES (102, 68, 42, 12.00, 0.25, 3.00);
INSERT INTO `tbl_detalle_compra` VALUES (103, 69, 45, 6.00, 0.50, 3.00);
INSERT INTO `tbl_detalle_compra` VALUES (104, 70, 45, 6.00, 0.50, 3.00);
INSERT INTO `tbl_detalle_compra` VALUES (105, 71, 45, 3.00, 0.50, 1.50);

-- ----------------------------
-- Table structure for tbl_detalle_venta
-- ----------------------------
DROP TABLE IF EXISTS `tbl_detalle_venta`;
CREATE TABLE `tbl_detalle_venta`  (
  `id_deta_venta` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_venta` int UNSIGNED NOT NULL,
  `id_prod_servicios` int UNSIGNED NOT NULL,
  `cantidad` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `precio_unitario` decimal(10, 2) NULL DEFAULT NULL,
  `subtotal` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_deta_venta`) USING BTREE,
  INDEX `IDX_detalle_venta`(`id_deta_venta` ASC) USING BTREE,
  INDEX `FK_deta_venta`(`id_venta` ASC) USING BTREE,
  INDEX `FK_deta_producto`(`id_prod_servicios` ASC) USING BTREE,
  CONSTRAINT `FK_deta_producto` FOREIGN KEY (`id_prod_servicios`) REFERENCES `tbl_productos_servicios` (`id_prod_servicios`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_deta_venta` FOREIGN KEY (`id_venta`) REFERENCES `tbl_ventas` (`id_venta`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_detalle_venta
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_distrito
-- ----------------------------
DROP TABLE IF EXISTS `tbl_distrito`;
CREATE TABLE `tbl_distrito`  (
  `id_distrito` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_municipio` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id_distrito`) USING BTREE,
  INDEX `IDX_municipio`(`id_distrito` ASC) USING BTREE,
  INDEX `FK_distrito_municipio`(`id_municipio` ASC) USING BTREE,
  CONSTRAINT `FK_distrito_municipio` FOREIGN KEY (`id_municipio`) REFERENCES `tbl_municipio` (`id_municipio`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 263 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_distrito
-- ----------------------------
INSERT INTO `tbl_distrito` VALUES (1, 'Atiquizaya', 1);
INSERT INTO `tbl_distrito` VALUES (2, 'El Refugio', 1);
INSERT INTO `tbl_distrito` VALUES (3, 'San Lorenzo', 1);
INSERT INTO `tbl_distrito` VALUES (4, 'Turín', 1);
INSERT INTO `tbl_distrito` VALUES (5, 'Ahuachapán', 2);
INSERT INTO `tbl_distrito` VALUES (6, 'Apaneca', 2);
INSERT INTO `tbl_distrito` VALUES (7, 'Concepción de Ataco', 2);
INSERT INTO `tbl_distrito` VALUES (8, 'Tacuba', 2);
INSERT INTO `tbl_distrito` VALUES (9, 'Guaymango', 3);
INSERT INTO `tbl_distrito` VALUES (10, 'Jujutla', 3);
INSERT INTO `tbl_distrito` VALUES (11, 'San Francisco Menéndez', 3);
INSERT INTO `tbl_distrito` VALUES (12, 'San Pedro Puxtla', 3);
INSERT INTO `tbl_distrito` VALUES (13, 'Masahuat', 4);
INSERT INTO `tbl_distrito` VALUES (14, 'Metapán', 4);
INSERT INTO `tbl_distrito` VALUES (15, 'Santa Rosa Guachipilín', 4);
INSERT INTO `tbl_distrito` VALUES (16, 'Texistepeque', 4);
INSERT INTO `tbl_distrito` VALUES (17, 'Santa Ana', 5);
INSERT INTO `tbl_distrito` VALUES (18, 'Coatepeque', 6);
INSERT INTO `tbl_distrito` VALUES (19, 'El Congo', 6);
INSERT INTO `tbl_distrito` VALUES (20, 'Candelaria de la Frontera', 7);
INSERT INTO `tbl_distrito` VALUES (21, 'Chalchuapa', 7);
INSERT INTO `tbl_distrito` VALUES (22, 'El Porvenir', 7);
INSERT INTO `tbl_distrito` VALUES (23, 'San Antonio Pajonal', 7);
INSERT INTO `tbl_distrito` VALUES (24, 'San Sebastián Salitrillo', 7);
INSERT INTO `tbl_distrito` VALUES (25, 'Santiago de la Frontera', 7);
INSERT INTO `tbl_distrito` VALUES (26, 'Juayúa', 8);
INSERT INTO `tbl_distrito` VALUES (27, 'Nahuizalco', 8);
INSERT INTO `tbl_distrito` VALUES (28, 'Salcoatitán', 8);
INSERT INTO `tbl_distrito` VALUES (29, 'Santa Catarina Masahuat', 8);
INSERT INTO `tbl_distrito` VALUES (30, 'Sonsonate', 9);
INSERT INTO `tbl_distrito` VALUES (31, 'Sonzacate', 9);
INSERT INTO `tbl_distrito` VALUES (32, 'Nahulingo', 9);
INSERT INTO `tbl_distrito` VALUES (33, 'San Antonio del Monte', 9);
INSERT INTO `tbl_distrito` VALUES (34, 'Santo Domingo de Guzmán', 9);
INSERT INTO `tbl_distrito` VALUES (35, 'Izalco', 10);
INSERT INTO `tbl_distrito` VALUES (36, 'Armenia', 10);
INSERT INTO `tbl_distrito` VALUES (37, 'Caluco', 10);
INSERT INTO `tbl_distrito` VALUES (38, 'San Julián', 10);
INSERT INTO `tbl_distrito` VALUES (39, 'Cuisnahuat', 10);
INSERT INTO `tbl_distrito` VALUES (40, 'Santa Isabel Ishuatán', 10);
INSERT INTO `tbl_distrito` VALUES (41, 'Acajutla', 11);
INSERT INTO `tbl_distrito` VALUES (42, 'Citalá', 12);
INSERT INTO `tbl_distrito` VALUES (43, 'La Palma', 12);
INSERT INTO `tbl_distrito` VALUES (44, 'San Ignacio', 12);
INSERT INTO `tbl_distrito` VALUES (45, 'Agua Caliente', 13);
INSERT INTO `tbl_distrito` VALUES (46, 'Dulce Nombre de María', 13);
INSERT INTO `tbl_distrito` VALUES (47, 'El Paraíso', 13);
INSERT INTO `tbl_distrito` VALUES (48, 'La Reina', 13);
INSERT INTO `tbl_distrito` VALUES (49, 'Nueva Concepción', 13);
INSERT INTO `tbl_distrito` VALUES (50, 'San Fernando', 13);
INSERT INTO `tbl_distrito` VALUES (51, 'San Francisco Morazán', 13);
INSERT INTO `tbl_distrito` VALUES (52, 'San Rafael', 13);
INSERT INTO `tbl_distrito` VALUES (53, 'Santa Rita', 13);
INSERT INTO `tbl_distrito` VALUES (54, 'Tejutla', 13);
INSERT INTO `tbl_distrito` VALUES (55, 'Arcatao', 14);
INSERT INTO `tbl_distrito` VALUES (56, 'Azacualpa', 14);
INSERT INTO `tbl_distrito` VALUES (57, 'Cancasque', 14);
INSERT INTO `tbl_distrito` VALUES (58, 'Chalatenango', 14);
INSERT INTO `tbl_distrito` VALUES (59, 'Comalapa', 14);
INSERT INTO `tbl_distrito` VALUES (60, 'Concepción Quezaltepeque', 14);
INSERT INTO `tbl_distrito` VALUES (61, 'El Carrizal', 14);
INSERT INTO `tbl_distrito` VALUES (62, 'La Laguna', 14);
INSERT INTO `tbl_distrito` VALUES (63, 'Las Vueltas', 14);
INSERT INTO `tbl_distrito` VALUES (64, 'Nombre de Jesús', 14);
INSERT INTO `tbl_distrito` VALUES (65, 'Nueva Trinidad', 14);
INSERT INTO `tbl_distrito` VALUES (66, 'Ojos de Agua', 14);
INSERT INTO `tbl_distrito` VALUES (67, 'Potonico', 14);
INSERT INTO `tbl_distrito` VALUES (68, 'San Antonio de la Cruz', 14);
INSERT INTO `tbl_distrito` VALUES (69, 'San Antonio Los Ranchos', 14);
INSERT INTO `tbl_distrito` VALUES (70, 'San Francisco Lempa', 14);
INSERT INTO `tbl_distrito` VALUES (71, 'San Isidro Labrador', 14);
INSERT INTO `tbl_distrito` VALUES (72, 'San José Las Flores', 14);
INSERT INTO `tbl_distrito` VALUES (73, 'San Luis del Carmen', 14);
INSERT INTO `tbl_distrito` VALUES (74, 'San Miguel de Mercedes', 14);
INSERT INTO `tbl_distrito` VALUES (75, 'Quezaltepeque', 15);
INSERT INTO `tbl_distrito` VALUES (76, 'San Matías', 15);
INSERT INTO `tbl_distrito` VALUES (77, 'San Pablo Tacachico', 15);
INSERT INTO `tbl_distrito` VALUES (78, 'San Juan Opico', 16);
INSERT INTO `tbl_distrito` VALUES (79, 'Ciudad Arce', 16);
INSERT INTO `tbl_distrito` VALUES (80, 'Colón', 17);
INSERT INTO `tbl_distrito` VALUES (81, 'Jayaque', 17);
INSERT INTO `tbl_distrito` VALUES (82, 'Sacacoyo', 17);
INSERT INTO `tbl_distrito` VALUES (83, 'Tepecoyo', 17);
INSERT INTO `tbl_distrito` VALUES (84, 'Talnique', 17);
INSERT INTO `tbl_distrito` VALUES (85, 'Antiguo Cuscatlán', 18);
INSERT INTO `tbl_distrito` VALUES (86, 'Huizúcar', 18);
INSERT INTO `tbl_distrito` VALUES (87, 'Nuevo Cuscatlán', 18);
INSERT INTO `tbl_distrito` VALUES (88, 'San José Villanueva', 18);
INSERT INTO `tbl_distrito` VALUES (89, 'Zaragoza', 18);
INSERT INTO `tbl_distrito` VALUES (90, 'Chiltiupán', 19);
INSERT INTO `tbl_distrito` VALUES (91, 'Jicalapa', 19);
INSERT INTO `tbl_distrito` VALUES (92, 'La Libertad', 19);
INSERT INTO `tbl_distrito` VALUES (93, 'Tamanique', 19);
INSERT INTO `tbl_distrito` VALUES (94, 'Teotepeque', 19);
INSERT INTO `tbl_distrito` VALUES (95, 'Santa Tecla', 20);
INSERT INTO `tbl_distrito` VALUES (96, 'Comasagua', 20);
INSERT INTO `tbl_distrito` VALUES (97, 'Aguilares', 21);
INSERT INTO `tbl_distrito` VALUES (98, 'El Paisnal', 21);
INSERT INTO `tbl_distrito` VALUES (99, 'Guazapa', 21);
INSERT INTO `tbl_distrito` VALUES (100, 'Apopa', 22);
INSERT INTO `tbl_distrito` VALUES (101, 'Nejapa', 22);
INSERT INTO `tbl_distrito` VALUES (102, 'Ilopango', 23);
INSERT INTO `tbl_distrito` VALUES (103, 'San Martín', 23);
INSERT INTO `tbl_distrito` VALUES (104, 'Soyapango', 23);
INSERT INTO `tbl_distrito` VALUES (105, 'Tonacatepeque', 23);
INSERT INTO `tbl_distrito` VALUES (106, 'Ayutuxtepeque', 24);
INSERT INTO `tbl_distrito` VALUES (107, 'Mejicanos', 24);
INSERT INTO `tbl_distrito` VALUES (108, 'San Salvador', 24);
INSERT INTO `tbl_distrito` VALUES (109, 'Cuscatancingo', 24);
INSERT INTO `tbl_distrito` VALUES (110, 'Ciudad Delgado', 24);
INSERT INTO `tbl_distrito` VALUES (111, 'Panchimalco', 25);
INSERT INTO `tbl_distrito` VALUES (112, 'Rosario de Mora', 25);
INSERT INTO `tbl_distrito` VALUES (113, 'San Marcos', 25);
INSERT INTO `tbl_distrito` VALUES (114, 'Santo Tomás', 25);
INSERT INTO `tbl_distrito` VALUES (115, 'Santiago Texacuangos', 25);
INSERT INTO `tbl_distrito` VALUES (116, 'Suchitoto', 26);
INSERT INTO `tbl_distrito` VALUES (117, 'San José Guayabal', 26);
INSERT INTO `tbl_distrito` VALUES (118, 'Oratorio de Concepción', 26);
INSERT INTO `tbl_distrito` VALUES (119, 'San Bartolomé Perulapía', 26);
INSERT INTO `tbl_distrito` VALUES (120, 'San Pedro Perulapán', 26);
INSERT INTO `tbl_distrito` VALUES (121, 'Cojutepeque', 27);
INSERT INTO `tbl_distrito` VALUES (122, 'San Rafael Cedros', 27);
INSERT INTO `tbl_distrito` VALUES (123, 'Candelaria', 27);
INSERT INTO `tbl_distrito` VALUES (124, 'Monte San Juan', 27);
INSERT INTO `tbl_distrito` VALUES (125, 'El Carmen', 27);
INSERT INTO `tbl_distrito` VALUES (126, 'San Cristóbal', 27);
INSERT INTO `tbl_distrito` VALUES (127, 'Santa Cruz Michapa', 27);
INSERT INTO `tbl_distrito` VALUES (128, 'San Ramón', 27);
INSERT INTO `tbl_distrito` VALUES (129, 'El Rosario', 27);
INSERT INTO `tbl_distrito` VALUES (130, 'Santa Cruz Analquito', 27);
INSERT INTO `tbl_distrito` VALUES (131, 'Tenancingo', 27);
INSERT INTO `tbl_distrito` VALUES (132, 'Cuyultitán', 28);
INSERT INTO `tbl_distrito` VALUES (133, 'Olocuilta', 28);
INSERT INTO `tbl_distrito` VALUES (134, 'San Juan Talpa', 28);
INSERT INTO `tbl_distrito` VALUES (135, 'San Luis Talpa', 28);
INSERT INTO `tbl_distrito` VALUES (136, 'San Pedro Masahuat', 28);
INSERT INTO `tbl_distrito` VALUES (137, 'Tapalhuaca', 28);
INSERT INTO `tbl_distrito` VALUES (138, 'San Francisco Chinameca', 28);
INSERT INTO `tbl_distrito` VALUES (139, 'El Rosario', 29);
INSERT INTO `tbl_distrito` VALUES (140, 'Jerusalén', 29);
INSERT INTO `tbl_distrito` VALUES (141, 'Mercedes La Ceiba', 29);
INSERT INTO `tbl_distrito` VALUES (142, 'Paraíso de Osorio', 29);
INSERT INTO `tbl_distrito` VALUES (143, 'San Antonio Masahuat', 29);
INSERT INTO `tbl_distrito` VALUES (144, 'San Emigdio', 29);
INSERT INTO `tbl_distrito` VALUES (145, 'San Juan Tepezontes', 29);
INSERT INTO `tbl_distrito` VALUES (146, 'San Luis La Herradura', 29);
INSERT INTO `tbl_distrito` VALUES (147, 'San Miguel Tepezontes', 29);
INSERT INTO `tbl_distrito` VALUES (148, 'San Pedro Nonualco', 29);
INSERT INTO `tbl_distrito` VALUES (149, 'Santa María Ostuma', 29);
INSERT INTO `tbl_distrito` VALUES (150, 'Santiago Nonualco', 29);
INSERT INTO `tbl_distrito` VALUES (151, 'San Juan Nonualco', 30);
INSERT INTO `tbl_distrito` VALUES (152, 'San Rafael Obrajuelo', 30);
INSERT INTO `tbl_distrito` VALUES (153, 'Zacatecoluca', 30);
INSERT INTO `tbl_distrito` VALUES (154, 'Sensuntepeque', 31);
INSERT INTO `tbl_distrito` VALUES (155, 'Victoria', 31);
INSERT INTO `tbl_distrito` VALUES (156, 'Villa Dolores', 31);
INSERT INTO `tbl_distrito` VALUES (157, 'Guacotecti', 31);
INSERT INTO `tbl_distrito` VALUES (158, 'San Isidro', 31);
INSERT INTO `tbl_distrito` VALUES (159, 'Ilobasco', 32);
INSERT INTO `tbl_distrito` VALUES (160, 'Tejutepeque', 32);
INSERT INTO `tbl_distrito` VALUES (161, 'Jutiapa', 32);
INSERT INTO `tbl_distrito` VALUES (162, 'Cinquera', 32);
INSERT INTO `tbl_distrito` VALUES (163, 'Apastepeque', 33);
INSERT INTO `tbl_distrito` VALUES (164, 'Santa Clara', 33);
INSERT INTO `tbl_distrito` VALUES (165, 'San Ildefonso', 33);
INSERT INTO `tbl_distrito` VALUES (166, 'San Esteban Catarina', 33);
INSERT INTO `tbl_distrito` VALUES (167, 'San Sebastián', 33);
INSERT INTO `tbl_distrito` VALUES (168, 'San Lorenzo', 33);
INSERT INTO `tbl_distrito` VALUES (169, 'Santo Domingo', 33);
INSERT INTO `tbl_distrito` VALUES (170, 'San Vicente', 34);
INSERT INTO `tbl_distrito` VALUES (171, 'Guadalupe', 34);
INSERT INTO `tbl_distrito` VALUES (172, 'Verapaz', 34);
INSERT INTO `tbl_distrito` VALUES (173, 'Nuevo Tepetitán', 34);
INSERT INTO `tbl_distrito` VALUES (174, 'Tecoluca', 34);
INSERT INTO `tbl_distrito` VALUES (175, 'San Cayetano Istepeque', 34);
INSERT INTO `tbl_distrito` VALUES (176, 'Santiago de María', 35);
INSERT INTO `tbl_distrito` VALUES (177, 'Alegría', 35);
INSERT INTO `tbl_distrito` VALUES (178, 'Berlín', 35);
INSERT INTO `tbl_distrito` VALUES (179, 'Mercedes Umaña', 35);
INSERT INTO `tbl_distrito` VALUES (180, 'Jucuapa', 35);
INSERT INTO `tbl_distrito` VALUES (181, 'El Triunfo', 35);
INSERT INTO `tbl_distrito` VALUES (182, 'Estanzuelas', 35);
INSERT INTO `tbl_distrito` VALUES (183, 'San Buenaventura', 35);
INSERT INTO `tbl_distrito` VALUES (184, 'Nueva Granada', 35);
INSERT INTO `tbl_distrito` VALUES (185, 'Usulután', 36);
INSERT INTO `tbl_distrito` VALUES (186, 'Jucuarán', 36);
INSERT INTO `tbl_distrito` VALUES (187, 'San Dionisio', 36);
INSERT INTO `tbl_distrito` VALUES (188, 'Concepción Batres', 36);
INSERT INTO `tbl_distrito` VALUES (189, 'Santa María', 36);
INSERT INTO `tbl_distrito` VALUES (190, 'Ozatlán', 36);
INSERT INTO `tbl_distrito` VALUES (191, 'Tecapán', 36);
INSERT INTO `tbl_distrito` VALUES (192, 'Santa Elena', 36);
INSERT INTO `tbl_distrito` VALUES (193, 'California', 36);
INSERT INTO `tbl_distrito` VALUES (194, 'Ereguayquín', 36);
INSERT INTO `tbl_distrito` VALUES (195, 'Jiquilisco', 37);
INSERT INTO `tbl_distrito` VALUES (196, 'Puerto El Triunfo', 37);
INSERT INTO `tbl_distrito` VALUES (197, 'San Agustín', 37);
INSERT INTO `tbl_distrito` VALUES (198, 'San Francisco Javier', 37);
INSERT INTO `tbl_distrito` VALUES (199, 'Ciudad Barrios', 38);
INSERT INTO `tbl_distrito` VALUES (200, 'Sesori', 38);
INSERT INTO `tbl_distrito` VALUES (201, 'Nuevo Edén de San Juan', 38);
INSERT INTO `tbl_distrito` VALUES (202, 'San Gerardo', 38);
INSERT INTO `tbl_distrito` VALUES (203, 'San Luis de la Reina', 38);
INSERT INTO `tbl_distrito` VALUES (204, 'Carolina', 38);
INSERT INTO `tbl_distrito` VALUES (205, 'San Antonio del Mosco', 38);
INSERT INTO `tbl_distrito` VALUES (206, 'Chapeltique', 38);
INSERT INTO `tbl_distrito` VALUES (207, 'San Miguel', 39);
INSERT INTO `tbl_distrito` VALUES (208, 'Comacarán', 39);
INSERT INTO `tbl_distrito` VALUES (209, 'Uluazapa', 39);
INSERT INTO `tbl_distrito` VALUES (210, 'Moncagua', 39);
INSERT INTO `tbl_distrito` VALUES (211, 'Quelepa', 39);
INSERT INTO `tbl_distrito` VALUES (212, 'Chirilagua', 39);
INSERT INTO `tbl_distrito` VALUES (213, 'Chinameca', 40);
INSERT INTO `tbl_distrito` VALUES (214, 'Nueva Guadalupe', 40);
INSERT INTO `tbl_distrito` VALUES (215, 'Lolotique', 40);
INSERT INTO `tbl_distrito` VALUES (216, 'San Jorge', 40);
INSERT INTO `tbl_distrito` VALUES (217, 'San Rafael Oriente', 40);
INSERT INTO `tbl_distrito` VALUES (218, 'El Tránsito', 40);
INSERT INTO `tbl_distrito` VALUES (219, 'Arambala', 41);
INSERT INTO `tbl_distrito` VALUES (220, 'Cacaopera', 41);
INSERT INTO `tbl_distrito` VALUES (221, 'Corinto', 41);
INSERT INTO `tbl_distrito` VALUES (222, 'El Rosario', 41);
INSERT INTO `tbl_distrito` VALUES (223, 'Joateca', 41);
INSERT INTO `tbl_distrito` VALUES (224, 'Jocoaitique', 41);
INSERT INTO `tbl_distrito` VALUES (225, 'Meanguera', 41);
INSERT INTO `tbl_distrito` VALUES (226, 'Perquín', 41);
INSERT INTO `tbl_distrito` VALUES (227, 'San Fernando', 41);
INSERT INTO `tbl_distrito` VALUES (228, 'San Isidro', 41);
INSERT INTO `tbl_distrito` VALUES (229, 'Torola', 41);
INSERT INTO `tbl_distrito` VALUES (230, 'Chilanga', 42);
INSERT INTO `tbl_distrito` VALUES (231, 'Delicias de Concepción', 42);
INSERT INTO `tbl_distrito` VALUES (232, 'El Divisadero', 42);
INSERT INTO `tbl_distrito` VALUES (233, 'Gualococti', 42);
INSERT INTO `tbl_distrito` VALUES (234, 'Guatajiagua', 42);
INSERT INTO `tbl_distrito` VALUES (235, 'Jocoro', 42);
INSERT INTO `tbl_distrito` VALUES (236, 'Lolotiquillo', 42);
INSERT INTO `tbl_distrito` VALUES (237, 'Osicala', 42);
INSERT INTO `tbl_distrito` VALUES (238, 'San Carlos', 42);
INSERT INTO `tbl_distrito` VALUES (239, 'San Francisco Gotera', 42);
INSERT INTO `tbl_distrito` VALUES (240, 'San Simón', 42);
INSERT INTO `tbl_distrito` VALUES (241, 'Sensembra', 42);
INSERT INTO `tbl_distrito` VALUES (242, 'Sociedad', 42);
INSERT INTO `tbl_distrito` VALUES (243, 'Yamabal', 42);
INSERT INTO `tbl_distrito` VALUES (244, 'Yoloaiquín', 42);
INSERT INTO `tbl_distrito` VALUES (245, 'Anamorós', 43);
INSERT INTO `tbl_distrito` VALUES (246, 'Bolívar', 43);
INSERT INTO `tbl_distrito` VALUES (247, 'Concepción de Oriente', 43);
INSERT INTO `tbl_distrito` VALUES (248, 'El Sauce', 43);
INSERT INTO `tbl_distrito` VALUES (249, 'Lislique', 43);
INSERT INTO `tbl_distrito` VALUES (250, 'Nueva Esparta', 43);
INSERT INTO `tbl_distrito` VALUES (251, 'Pasaquina', 43);
INSERT INTO `tbl_distrito` VALUES (252, 'Polorós', 43);
INSERT INTO `tbl_distrito` VALUES (253, 'San José La Fuente', 43);
INSERT INTO `tbl_distrito` VALUES (254, 'Santa Rosa de Lima', 43);
INSERT INTO `tbl_distrito` VALUES (255, 'Conchagua', 44);
INSERT INTO `tbl_distrito` VALUES (256, 'El Carmen', 44);
INSERT INTO `tbl_distrito` VALUES (257, 'Intipucá', 44);
INSERT INTO `tbl_distrito` VALUES (258, 'La Unión', 44);
INSERT INTO `tbl_distrito` VALUES (259, 'Meanguera del Golfo', 44);
INSERT INTO `tbl_distrito` VALUES (260, 'San Alejo', 44);
INSERT INTO `tbl_distrito` VALUES (261, 'Yayantique', 44);
INSERT INTO `tbl_distrito` VALUES (262, 'Yucuaiquín', 44);

-- ----------------------------
-- Table structure for tbl_documentos
-- ----------------------------
DROP TABLE IF EXISTS `tbl_documentos`;
CREATE TABLE `tbl_documentos`  (
  `id_doc` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_venta` int UNSIGNED NOT NULL,
  `tipo_documento` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `numero_documento` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_doc`) USING BTREE,
  INDEX `id_venta`(`id_venta` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_documentos
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_finanzas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_finanzas`;
CREATE TABLE `tbl_finanzas`  (
  `id_caja` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `fecha_apertura` date NULL DEFAULT NULL,
  `fecha_cierra` date NULL DEFAULT NULL,
  `id_usuario` int UNSIGNED NOT NULL,
  `efectivo_inicial` decimal(10, 2) NULL DEFAULT NULL,
  `efectivo_final` decimal(10, 2) NULL DEFAULT NULL,
  `total_ingresos` decimal(10, 2) NULL DEFAULT NULL,
  `total_egresos` decimal(10, 2) NULL DEFAULT NULL,
  `movimientos` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_caja`) USING BTREE,
  INDEX `FK_finanzas_usuario`(`id_usuario` ASC) USING BTREE,
  CONSTRAINT `FK_finanzas_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuarios` (`id_usuario`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_finanzas
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_kardex
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kardex`;
CREATE TABLE `tbl_kardex`  (
  `id_kardex` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_prod_servicios` int UNSIGNED NOT NULL,
  `id_producto_padre` int UNSIGNED NULL DEFAULT NULL,
  `fecha_hora` datetime NULL DEFAULT NULL,
  `tipo_movimiento` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tipo_presentacion` enum('Principal','Detalle') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'Principal',
  `detalles` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `cantidad_movi` float NULL DEFAULT NULL,
  `factor_conversion` int NULL DEFAULT 1,
  `costo_unitario_movi` decimal(10, 6) NULL DEFAULT NULL,
  `costo_total_movi` decimal(10, 6) NULL DEFAULT NULL,
  `cantidad_existencias` int NULL DEFAULT NULL,
  `costo_unitario_existencia` decimal(10, 6) NULL DEFAULT NULL,
  `costo_total_existencia` decimal(10, 6) NULL DEFAULT NULL,
  PRIMARY KEY (`id_kardex`) USING BTREE,
  INDEX `IDX_kardex`(`id_kardex` ASC) USING BTREE,
  INDEX `FK_kardex_producto`(`id_prod_servicios` ASC) USING BTREE,
  INDEX `FK_kardex_producto_padre`(`id_producto_padre` ASC) USING BTREE,
  CONSTRAINT `FK_kardex_producto` FOREIGN KEY (`id_prod_servicios`) REFERENCES `tbl_productos_servicios` (`id_prod_servicios`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_kardex_producto_padre` FOREIGN KEY (`id_producto_padre`) REFERENCES `tbl_productos_servicios` (`id_prod_servicios`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 222 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_kardex
-- ----------------------------
INSERT INTO `tbl_kardex` VALUES (218, 42, NULL, '2025-11-16 15:33:15', '1', 'Principal', 'COMPRA #68', 12, 1, 0.250000, 3.000000, 12, 0.250000, 3.000000);
INSERT INTO `tbl_kardex` VALUES (219, 45, NULL, '2025-11-16 15:41:54', 'ENTRADA', 'Principal', 'COMPRA #69', 6, 1, 0.500000, 3.000000, 6, 0.500000, 3.000000);
INSERT INTO `tbl_kardex` VALUES (220, 45, NULL, '2025-11-16 15:45:05', 'ENTRADA', 'Principal', 'COMPRA #70', 6, 1, 0.500000, 3.000000, 12, 0.500000, 6.000000);
INSERT INTO `tbl_kardex` VALUES (221, 45, NULL, '2025-11-16 15:46:48', 'ENTRADA', 'Detalle', 'COMPRA #71', 3, 1, 0.500000, 1.500000, 15, 0.500000, 7.500000);

-- ----------------------------
-- Table structure for tbl_marcas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_marcas`;
CREATE TABLE `tbl_marcas`  (
  `id_marca` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_marca`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_marcas
-- ----------------------------
INSERT INTO `tbl_marcas` VALUES (1, 'COCA-COLA');
INSERT INTO `tbl_marcas` VALUES (2, 'PETIT');
INSERT INTO `tbl_marcas` VALUES (3, 'EL VALLE');
INSERT INTO `tbl_marcas` VALUES (4, 'ORISOL');
INSERT INTO `tbl_marcas` VALUES (5, 'DIANA');
INSERT INTO `tbl_marcas` VALUES (6, 'BIMBO');
INSERT INTO `tbl_marcas` VALUES (7, 'PEPSI');
INSERT INTO `tbl_marcas` VALUES (9, 'MONSTER');
INSERT INTO `tbl_marcas` VALUES (10, 'TOROLA');
INSERT INTO `tbl_marcas` VALUES (11, 'LAS PERLITAS');
INSERT INTO `tbl_marcas` VALUES (12, '7Up');
INSERT INTO `tbl_marcas` VALUES (14, 'fe');
INSERT INTO `tbl_marcas` VALUES (15, 'hola');
INSERT INTO `tbl_marcas` VALUES (16, 'fesa');
INSERT INTO `tbl_marcas` VALUES (17, 'holas');
INSERT INTO `tbl_marcas` VALUES (18, 'PRUEBA2');
INSERT INTO `tbl_marcas` VALUES (19, 'MARCAP');
INSERT INTO `tbl_marcas` VALUES (20, 'Fanta');
INSERT INTO `tbl_marcas` VALUES (21, 'ANDA');

-- ----------------------------
-- Table structure for tbl_movimientos_fin
-- ----------------------------
DROP TABLE IF EXISTS `tbl_movimientos_fin`;
CREATE TABLE `tbl_movimientos_fin`  (
  `id_mov` int NOT NULL AUTO_INCREMENT,
  `fecha_hora` datetime NOT NULL,
  `tipo` enum('INGRESO','EGRESO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `concepto` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `monto` decimal(14, 2) NOT NULL,
  `medio_pago` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'EFECTIVO',
  `ref_externa` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_venta` int NULL DEFAULT NULL,
  `id_compra` int NULL DEFAULT NULL,
  `creado_en` datetime NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id_mov`) USING BTREE,
  INDEX `fecha_hora`(`fecha_hora`) USING BTREE,
  INDEX `tipo`(`tipo`) USING BTREE,
  INDEX `id_venta`(`id_venta`) USING BTREE,
  INDEX `id_compra`(`id_compra`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_movimientos_fin
-- ----------------------------
INSERT INTO `tbl_movimientos_fin` VALUES (1, '2025-11-02 22:10:24', 'INGRESO', 'Pago', 124.00, 'Efectivo', '', NULL, NULL, '2025-11-02 22:10:24');
INSERT INTO `tbl_movimientos_fin` VALUES (2, '2025-11-02 22:10:52', 'EGRESO', 'Salida', 100.00, 'Efectivo', '', NULL, NULL, '2025-11-02 22:10:52');
INSERT INTO `tbl_movimientos_fin` VALUES (3, '2025-11-03 00:48:22', 'INGRESO', 'Compra de aceite (10)', 12.00, 'Efectivo', '', NULL, NULL, '2025-11-03 00:48:22');
INSERT INTO `tbl_movimientos_fin` VALUES (4, '2025-11-09 21:11:17', 'INGRESO', 'entrada', 12.00, 'Efectivo', '', NULL, NULL, '2025-11-09 21:11:17');
INSERT INTO `tbl_movimientos_fin` VALUES (5, '2025-11-09 21:14:28', 'EGRESO', 'salida', 10.00, 'Efectivo', '', NULL, NULL, '2025-11-09 21:14:28');

-- ----------------------------
-- Table structure for tbl_municipio
-- ----------------------------
DROP TABLE IF EXISTS `tbl_municipio`;
CREATE TABLE `tbl_municipio`  (
  `id_municipio` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_departamento` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id_municipio`) USING BTREE,
  INDEX `IDX_municipio`(`id_municipio` ASC) USING BTREE,
  INDEX `FK_municipio_dept`(`id_departamento` ASC) USING BTREE,
  CONSTRAINT `FK_municipio_dept` FOREIGN KEY (`id_departamento`) REFERENCES `tbl_departamento` (`id_departamento`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_municipio
-- ----------------------------
INSERT INTO `tbl_municipio` VALUES (1, 'Ahuachapán Norte', 1);
INSERT INTO `tbl_municipio` VALUES (2, 'Ahuachapán Centro', 1);
INSERT INTO `tbl_municipio` VALUES (3, 'Ahuachapán Sur', 1);
INSERT INTO `tbl_municipio` VALUES (4, 'Santa Ana Norte', 2);
INSERT INTO `tbl_municipio` VALUES (5, 'Santa Ana Centro', 2);
INSERT INTO `tbl_municipio` VALUES (6, 'Santa Ana Este', 2);
INSERT INTO `tbl_municipio` VALUES (7, 'Santa Ana Oeste', 2);
INSERT INTO `tbl_municipio` VALUES (8, 'Sonsonate Norte', 3);
INSERT INTO `tbl_municipio` VALUES (9, 'Sonsonate Centro', 3);
INSERT INTO `tbl_municipio` VALUES (10, 'Sonsonate Este', 3);
INSERT INTO `tbl_municipio` VALUES (11, 'Sonsonate Oeste', 3);
INSERT INTO `tbl_municipio` VALUES (12, 'Chalatenango Norte', 4);
INSERT INTO `tbl_municipio` VALUES (13, 'Chalatenango Centro', 4);
INSERT INTO `tbl_municipio` VALUES (14, 'Chalatenango Sur', 4);
INSERT INTO `tbl_municipio` VALUES (15, 'La Libertad Norte', 5);
INSERT INTO `tbl_municipio` VALUES (16, 'La Libertad Centro', 5);
INSERT INTO `tbl_municipio` VALUES (17, 'La Libertad Oeste', 5);
INSERT INTO `tbl_municipio` VALUES (18, 'La Libertad Este', 5);
INSERT INTO `tbl_municipio` VALUES (19, 'La Libertad Costa', 5);
INSERT INTO `tbl_municipio` VALUES (20, 'La Libertad Sur', 5);
INSERT INTO `tbl_municipio` VALUES (21, 'San Salvador Norte', 6);
INSERT INTO `tbl_municipio` VALUES (22, 'San Salvador Oeste', 6);
INSERT INTO `tbl_municipio` VALUES (23, 'San Salvador Este', 6);
INSERT INTO `tbl_municipio` VALUES (24, 'San Salvador Centro', 6);
INSERT INTO `tbl_municipio` VALUES (25, 'San Salvador Sur', 6);
INSERT INTO `tbl_municipio` VALUES (26, 'Cuscatlán Norte', 7);
INSERT INTO `tbl_municipio` VALUES (27, 'Cuscatlán Sur', 7);
INSERT INTO `tbl_municipio` VALUES (28, 'La Paz Oeste', 8);
INSERT INTO `tbl_municipio` VALUES (29, 'La Paz Centro', 8);
INSERT INTO `tbl_municipio` VALUES (30, 'La Paz Este', 8);
INSERT INTO `tbl_municipio` VALUES (31, 'Cabañas Este', 9);
INSERT INTO `tbl_municipio` VALUES (32, 'Cabañas Oeste', 9);
INSERT INTO `tbl_municipio` VALUES (33, 'San Vicente Norte', 10);
INSERT INTO `tbl_municipio` VALUES (34, 'San Vicente Sur', 10);
INSERT INTO `tbl_municipio` VALUES (35, 'Usulután Norte', 11);
INSERT INTO `tbl_municipio` VALUES (36, 'Usulután Este', 11);
INSERT INTO `tbl_municipio` VALUES (37, 'Usulután Oeste', 11);
INSERT INTO `tbl_municipio` VALUES (38, 'San Miguel Norte', 12);
INSERT INTO `tbl_municipio` VALUES (39, 'San Miguel Centro', 12);
INSERT INTO `tbl_municipio` VALUES (40, 'San Miguel Oeste', 12);
INSERT INTO `tbl_municipio` VALUES (41, 'Morazán Norte', 13);
INSERT INTO `tbl_municipio` VALUES (42, 'Morazán Sur', 13);
INSERT INTO `tbl_municipio` VALUES (43, 'La Unión Norte', 14);
INSERT INTO `tbl_municipio` VALUES (44, 'La Unión Sur', 14);

-- ----------------------------
-- Table structure for tbl_pagos
-- ----------------------------
DROP TABLE IF EXISTS `tbl_pagos`;
CREATE TABLE `tbl_pagos`  (
  `id_pago` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_venta` int NOT NULL,
  `metodo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `monto` decimal(10, 2) NULL DEFAULT NULL,
  `fecha` date NULL DEFAULT NULL,
  PRIMARY KEY (`id_pago`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_pagos
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_productos_servicios
-- ----------------------------
DROP TABLE IF EXISTS `tbl_productos_servicios`;
CREATE TABLE `tbl_productos_servicios`  (
  `id_prod_servicios` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_categoria` int UNSIGNED NOT NULL,
  `id_marca` int UNSIGNED NOT NULL,
  `id_subcategoria` int NULL DEFAULT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `modelo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tipo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `presentacion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nombre_detalle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_producto_padre` int UNSIGNED NULL DEFAULT NULL,
  `factor_conversion` int NULL DEFAULT 1,
  `codigo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `imagen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `codigo_interno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ubicacion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `stock_minimo` int NULL DEFAULT NULL,
  `stock_actual` int NULL DEFAULT NULL,
  `stock_maximo` int NULL DEFAULT NULL,
  `precio1` decimal(10, 6) NULL DEFAULT NULL,
  `precio2` decimal(10, 6) NOT NULL,
  `precio3` decimal(10, 6) NULL DEFAULT NULL,
  `precio1_detalle` decimal(10, 6) NULL DEFAULT NULL,
  `precio2_detalle` decimal(10, 6) NULL DEFAULT NULL,
  `precio3_detalle` decimal(10, 6) NULL DEFAULT NULL,
  `id_unidad_medida` int UNSIGNED NULL DEFAULT NULL,
  `id_unidad_medida_det` int UNSIGNED NULL DEFAULT NULL,
  `img_sala_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `img_sala_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `img_bodega_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `img_bodega_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `estado` tinyint(1) NULL DEFAULT 1 COMMENT '1=Activo, 0=Inactivo',
  `stock_presenta_principal` int NULL DEFAULT NULL,
  `stock_presenta_unidad` int NULL DEFAULT NULL,
  `cantidad_detalle` int NULL DEFAULT NULL,
  `estante_sala` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detalle_habilitado` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_prod_servicios`) USING BTREE,
  INDEX `IDX_producto`(`id_prod_servicios` ASC) USING BTREE,
  INDEX `IDX_nombre`(`nombre` ASC) USING BTREE,
  INDEX `FK_prod_categoria`(`id_categoria` ASC) USING BTREE,
  INDEX `FK_prod_marcas`(`id_marca` ASC) USING BTREE,
  INDEX `idx_productos_id_unidad_medida`(`id_unidad_medida` ASC) USING BTREE,
  INDEX `FK_producto_padre`(`id_producto_padre` ASC) USING BTREE,
  INDEX `FK_produc_unidad_det`(`id_unidad_medida_det` ASC) USING BTREE,
  CONSTRAINT `FK_prod_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `tbl_categorias` (`id_categoria`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_prod_marcas` FOREIGN KEY (`id_marca`) REFERENCES `tbl_marcas` (`id_marca`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_prod_unidad_medida` FOREIGN KEY (`id_unidad_medida`) REFERENCES `tbl_unidad_medida_oficial` (`codigo`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_produc_unidad_det` FOREIGN KEY (`id_unidad_medida_det`) REFERENCES `tbl_unidad_medida_oficial` (`codigo`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_producto_padre` FOREIGN KEY (`id_producto_padre`) REFERENCES `tbl_productos_servicios` (`id_prod_servicios`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_productos_servicios
-- ----------------------------
INSERT INTO `tbl_productos_servicios` VALUES (42, 1, 2, 4, 'jugo de piña 20ml', 'el mas bueno', '', 'PRODUCTO', 'CAJAx12', 'und', NULL, 1, '', 'img_producto_68f45715b177d.png', 'PROD-0001', 'B1', 4, 12, 10, 6.000000, 0.000000, 0.000000, 0.800000, 0.000000, 0.000000, 999, 805, '', '', '', '', 1, 1, 0, 12, 'A1', 0);
INSERT INTO `tbl_productos_servicios` VALUES (45, 1, 2, 9, 'JUGOS DE CAJA VARIEDADES', '', 'BICOLA ', 'PRODUCTO', 'CAJAx6', 'und', NULL, 1, '', 'img_producto_6906825732185.jpeg', 'PROD-0043', 'B1', 2, 15, 5, 4.000000, 0.000000, 0.000000, 0.800000, 0.000000, 0.000000, 999, 805, '', '', '', '', 1, 2, 3, 6, 'A1', 0);

-- ----------------------------
-- Table structure for tbl_proveedores
-- ----------------------------
DROP TABLE IF EXISTS `tbl_proveedores`;
CREATE TABLE `tbl_proveedores`  (
  `id_proveedor` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `direccion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_distrito` int UNSIGNED NOT NULL,
  `telefono` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `correo_electronico` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `codigo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`) USING BTREE,
  INDEX `IDX_proveedor`(`id_proveedor` ASC) USING BTREE,
  INDEX `IDX_nombre`(`nombre` ASC) USING BTREE,
  INDEX `FK_proveedor_distrito`(`id_distrito` ASC) USING BTREE,
  CONSTRAINT `FK_proveedor_distrito` FOREIGN KEY (`id_distrito`) REFERENCES `tbl_distrito` (`id_distrito`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_proveedores
-- ----------------------------
INSERT INTO `tbl_proveedores` VALUES (1, 'David', 'Centro', 2, '1111-2222', 'khicubiw@gmail.com', '513546', '03266');
INSERT INTO `tbl_proveedores` VALUES (2, 'Monica', 'Oriente', 262, '12345423', 'hola12@gmail.com', '0987', '1234');

-- ----------------------------
-- Table structure for tbl_servicios
-- ----------------------------
DROP TABLE IF EXISTS `tbl_servicios`;
CREATE TABLE `tbl_servicios`  (
  `id_servicio` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_categoria` int UNSIGNED NOT NULL,
  `id_subcategoria` int UNSIGNED NOT NULL,
  `id_marca` int UNSIGNED NOT NULL,
  `precio` decimal(10, 2) NULL DEFAULT NULL,
  `tipo_servicio` enum('normal','recarga','cobro','remesa_envio','remesa_retiro') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'normal',
  `costo_adicional` decimal(10, 2) NULL DEFAULT NULL,
  `total` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_servicio`) USING BTREE,
  INDEX `FK_servicio_cat`(`id_categoria` ASC) USING BTREE,
  INDEX `FK_servicio_marcas`(`id_marca` ASC) USING BTREE,
  INDEX `FK_servicio_subcat`(`id_subcategoria` ASC) USING BTREE,
  CONSTRAINT `FK_servicio_cat` FOREIGN KEY (`id_categoria`) REFERENCES `tbl_categorias` (`id_categoria`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_servicio_marcas` FOREIGN KEY (`id_marca`) REFERENCES `tbl_marcas` (`id_marca`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_servicio_subcat` FOREIGN KEY (`id_subcategoria`) REFERENCES `tbl_subcategorias` (`id_subcategoria`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_servicios
-- ----------------------------
INSERT INTO `tbl_servicios` VALUES (3, 'hacer cafes', 1, 2, 10, 0.60, 'normal', 0.00, 0.60);
INSERT INTO `tbl_servicios` VALUES (4, 'Coca-Cola Light', 1, 7, 1, 0.75, 'normal', 0.00, 0.75);
INSERT INTO `tbl_servicios` VALUES (8, 'Agua potable', 5, 8, 21, 10.00, 'cobro', 1.00, 11.00);

-- ----------------------------
-- Table structure for tbl_subcategorias
-- ----------------------------
DROP TABLE IF EXISTS `tbl_subcategorias`;
CREATE TABLE `tbl_subcategorias`  (
  `id_subcategoria` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre_subcategoria` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_categoria` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id_subcategoria`) USING BTREE,
  INDEX `id_categoria`(`id_categoria` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_subcategorias
-- ----------------------------
INSERT INTO `tbl_subcategorias` VALUES (1, 'SODAS', 1);
INSERT INTO `tbl_subcategorias` VALUES (2, 'Cafes hechos', 1);
INSERT INTO `tbl_subcategorias` VALUES (3, 'Aceites', 2);
INSERT INTO `tbl_subcategorias` VALUES (4, 'JUGOS', 1);
INSERT INTO `tbl_subcategorias` VALUES (5, 'MONTES', 2);
INSERT INTO `tbl_subcategorias` VALUES (6, 'xc', 4);
INSERT INTO `tbl_subcategorias` VALUES (7, 'Refrescos', 1);
INSERT INTO `tbl_subcategorias` VALUES (8, 'Cobro de agua', 5);
INSERT INTO `tbl_subcategorias` VALUES (9, 'Nose', 1);

-- ----------------------------
-- Table structure for tbl_tipo_cliente
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tipo_cliente`;
CREATE TABLE `tbl_tipo_cliente`  (
  `id_tipo_cliente` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_tipo_cliente`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_tipo_cliente
-- ----------------------------
INSERT INTO `tbl_tipo_cliente` VALUES (1, 'Consumidor final');
INSERT INTO `tbl_tipo_cliente` VALUES (2, 'Persona natural');
INSERT INTO `tbl_tipo_cliente` VALUES (3, 'Persona jurídica');

-- ----------------------------
-- Table structure for tbl_unidad_medida_oficial
-- ----------------------------
DROP TABLE IF EXISTS `tbl_unidad_medida_oficial`;
CREATE TABLE `tbl_unidad_medida_oficial`  (
  `codigo` int UNSIGNED NOT NULL,
  `nombre` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `grupo` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_unidad_medida_oficial
-- ----------------------------
INSERT INTO `tbl_unidad_medida_oficial` VALUES (101, 'Milla', 'Longitud');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (102, 'Kilómetro', 'Longitud');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (103, 'Metro', 'Longitud');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (104, 'Yarda', 'Longitud');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (105, 'Vara', 'Longitud');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (106, 'Pie', 'Longitud');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (107, 'Pulgada', 'Longitud');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (108, 'Milímetro', 'Longitud');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (201, 'Milla cuadrada', 'Superficie');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (202, 'Kilómetro cuadrado', 'Superficie');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (203, 'Hectárea', 'Superficie');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (204, 'Manzana', 'Superficie');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (205, 'Acre', 'Superficie');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (206, 'Metro cuadrado', 'Superficie');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (207, 'Yarda cuadrada', 'Superficie');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (208, 'Vara cuadrada', 'Superficie');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (209, 'Pie cuadrado', 'Superficie');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (210, 'Pulgada cuadrada', 'Superficie');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (301, 'Metro cúbico', 'Volumen');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (302, 'Yarda cúbica', 'Volumen');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (303, 'Barril', 'Volumen');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (304, 'Pie cúbico', 'Volumen');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (305, 'Galón', 'Volumen');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (306, 'Litro', 'Volumen');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (307, 'Botella', 'Volumen');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (308, 'Pulgada cúbica', 'Volumen');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (309, 'Mililitro', 'Volumen');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (310, 'Onza fluida', 'Volumen');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (401, 'Tonelada métrica', 'Masa');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (402, 'Tonelada', 'Masa');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (403, 'Quintal métrico', 'Masa');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (404, 'Quintal', 'Masa');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (405, 'Arroba', 'Masa');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (406, 'Kilogramo', 'Masa');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (407, 'Libra troy', 'Masa');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (408, 'Libra', 'Masa');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (409, 'Onza troy', 'Masa');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (410, 'Onza', 'Masa');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (411, 'Gramo', 'Masa');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (412, 'Miligramo', 'Masa');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (801, 'Millar', 'Unidades');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (802, 'Medio millar', 'Unidades');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (803, 'Ciento', 'Unidades');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (804, 'Docena', 'Unidades');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (805, 'Unidad', 'Unidades');
INSERT INTO `tbl_unidad_medida_oficial` VALUES (999, 'Sin unidad de medida', 'Sin magnitud');

-- ----------------------------
-- Table structure for tbl_usuarios
-- ----------------------------
DROP TABLE IF EXISTS `tbl_usuarios`;
CREATE TABLE `tbl_usuarios`  (
  `id_usuario` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `usuario` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_completo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tipo_cuenta` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `estado` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id_usuario`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_usuarios
-- ----------------------------
INSERT INTO `tbl_usuarios` VALUES (2, 'kaez1', 'Karen Espinoza', '81dc9bdb52d04dc20036dbd8313ed055', 'Usuario Limitado', 1);
INSERT INTO `tbl_usuarios` VALUES (3, 'vla', 'Vladimir', '202cb962ac59075b964b07152d234b70', 'Administrador', 1);
INSERT INTO `tbl_usuarios` VALUES (4, 'eclaros', 'Edgardo Claros', '202cb962ac59075b964b07152d234b70', 'Administrador', 1);

-- ----------------------------
-- Table structure for tbl_ventas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_ventas`;
CREATE TABLE `tbl_ventas`  (
  `id_venta` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cliente` int NULL DEFAULT NULL,
  `fecha` date NULL DEFAULT NULL,
  `tipo_documento` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `metodo_pago` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tipo_pago` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `forma_pago` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `total` decimal(10, 2) NULL DEFAULT NULL,
  `id_usuario` int UNSIGNED NOT NULL,
  `estado` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id_venta`) USING BTREE,
  INDEX `IDX_ventas`(`id_venta` ASC) USING BTREE,
  INDEX `FK_venta_cliente`(`id_cliente` ASC) USING BTREE,
  INDEX `FK_venta_usuario`(`id_usuario` ASC) USING BTREE,
  CONSTRAINT `FK_venta_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuarios` (`id_usuario`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 96 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_ventas
-- ----------------------------
INSERT INTO `tbl_ventas` VALUES (38, 1, '2025-11-01', NULL, 'Crédito', 'Crédito', 'Crédito', 0.00, 3, 2);
INSERT INTO `tbl_ventas` VALUES (44, 1, '2025-11-05', NULL, 'Efectivo', 'Efectivo', 'Efectivo', 60.00, 3, 0);
INSERT INTO `tbl_ventas` VALUES (48, 1, '2025-11-06', NULL, 'Efectivo', 'Efectivo', 'Efectivo', 60.00, 3, 0);
INSERT INTO `tbl_ventas` VALUES (49, 1, '2025-11-06', NULL, 'Transferencia', 'Transferencia', 'Transferencia', 40.00, 3, 0);
INSERT INTO `tbl_ventas` VALUES (50, 1, '2025-11-06', NULL, 'Efectivo', 'Efectivo', 'Efectivo', 402.00, 3, 0);
INSERT INTO `tbl_ventas` VALUES (51, 1, '2025-11-06', NULL, 'Cheque', 'Cheque', 'Cheque', 60.00, 3, 0);
INSERT INTO `tbl_ventas` VALUES (52, 1, '2025-11-06', NULL, 'Transferencia', 'Transferencia', 'Transferencia', 40.00, 3, 0);
INSERT INTO `tbl_ventas` VALUES (53, 1, '2025-11-06', NULL, 'Efectivo', 'Efectivo', 'Efectivo', 60.00, 3, 0);
INSERT INTO `tbl_ventas` VALUES (55, 1, '2025-11-06', NULL, 'Cheque', 'Cheque', 'Cheque', 60.00, 3, 1);
INSERT INTO `tbl_ventas` VALUES (56, 1, '2025-11-06', NULL, 'Crédito', 'Crédito', 'Crédito', 60.00, 3, 2);
INSERT INTO `tbl_ventas` VALUES (58, 1, '2025-11-07', NULL, 'Efectivo', 'Efectivo', 'Efectivo', 4.00, 3, 0);
INSERT INTO `tbl_ventas` VALUES (59, 1, '2025-11-07', NULL, 'Efectivo', 'Efectivo', 'Efectivo', 6.00, 3, 0);
INSERT INTO `tbl_ventas` VALUES (60, 1, '2025-11-07', NULL, 'Crédito', 'Crédito', 'Crédito', 114.00, 3, 2);
INSERT INTO `tbl_ventas` VALUES (61, 1, '2025-11-07', NULL, 'Efectivo', 'Efectivo', 'Efectivo', 68.00, 3, 0);
INSERT INTO `tbl_ventas` VALUES (62, 1, '2025-11-07', NULL, 'Crédito', 'Crédito', 'Crédito', 72.00, 3, 0);
INSERT INTO `tbl_ventas` VALUES (63, 1, '2025-11-07', NULL, 'Cheque', 'Cheque', 'Cheque', 76.00, 3, 0);
INSERT INTO `tbl_ventas` VALUES (64, 1, '2025-11-07', NULL, 'Crédito', 'Crédito', 'Crédito', 68.00, 3, 2);
INSERT INTO `tbl_ventas` VALUES (65, 1, '2025-11-07', NULL, 'Tarjeta', 'Tarjeta', 'Tarjeta', 6.00, 3, 0);
INSERT INTO `tbl_ventas` VALUES (67, 1, '2025-11-07', NULL, NULL, NULL, 'Crédito', 76.00, 3, 2);
INSERT INTO `tbl_ventas` VALUES (70, 2, '2025-11-09', NULL, NULL, NULL, 'Efectivo', 2.10, 3, 0);
INSERT INTO `tbl_ventas` VALUES (72, 2, '2025-11-10', NULL, NULL, NULL, 'Efectivo', 40.00, 3, 0);
INSERT INTO `tbl_ventas` VALUES (73, 2, '2025-11-10', NULL, NULL, NULL, 'Efectivo', 40.00, 3, 0);
INSERT INTO `tbl_ventas` VALUES (74, 2, '2025-11-10', NULL, NULL, NULL, 'Transferencia', 2.40, 3, 0);
INSERT INTO `tbl_ventas` VALUES (75, 2, '2025-11-10', NULL, NULL, NULL, 'Efectivo', 0.00, 3, 0);
INSERT INTO `tbl_ventas` VALUES (76, 1, '2025-11-10', NULL, NULL, NULL, 'Efectivo', 60.00, 3, 0);
INSERT INTO `tbl_ventas` VALUES (78, 1, '2025-11-10', NULL, NULL, NULL, 'Tarjeta', 114.00, 3, 0);
INSERT INTO `tbl_ventas` VALUES (79, 2, '2025-11-10', NULL, NULL, NULL, 'Efectivo', 400.00, 3, 1);
INSERT INTO `tbl_ventas` VALUES (80, 2, '2025-11-10', NULL, NULL, NULL, 'Crédito', 6.00, 3, 2);
INSERT INTO `tbl_ventas` VALUES (81, 1, '2025-11-10', NULL, NULL, NULL, 'Tarjeta', 36.00, 3, 1);
INSERT INTO `tbl_ventas` VALUES (82, 1, '2025-11-10', NULL, NULL, NULL, 'Tarjeta', 48.00, 3, 0);
INSERT INTO `tbl_ventas` VALUES (83, 1, '2025-11-10', NULL, NULL, NULL, 'Efectivo', 74.40, 3, 0);
INSERT INTO `tbl_ventas` VALUES (84, 2, '2025-11-10', NULL, NULL, NULL, 'Efectivo', 8.00, 3, 0);

-- ----------------------------
-- Table structure for tipos_pago
-- ----------------------------
DROP TABLE IF EXISTS `tipos_pago`;
CREATE TABLE `tipos_pago`  (
  `id_pago` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_pago`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tipos_pago
-- ----------------------------
INSERT INTO `tipos_pago` VALUES (6, 'Efectivo');
INSERT INTO `tipos_pago` VALUES (7, 'Tarjeta');
INSERT INTO `tipos_pago` VALUES (8, 'Transferencia');
INSERT INTO `tipos_pago` VALUES (9, 'Cheque');
INSERT INTO `tipos_pago` VALUES (10, 'Crédito');

-- ----------------------------
-- Table structure for ventas_pendientes
-- ----------------------------
DROP TABLE IF EXISTS `ventas_pendientes`;
CREATE TABLE `ventas_pendientes`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `forma_pago` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `detalle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `subtotal` decimal(10, 2) NULL DEFAULT 0.00,
  `iva` decimal(10, 2) NULL DEFAULT 0.00,
  `total` decimal(10, 2) NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ventas_pendientes
-- ----------------------------
INSERT INTO `ventas_pendientes` VALUES (1, 'Karen Santos', '2025-10-28', 'Efectivo', '42 (Cant: 10, $ 10)\n', 100.00, 13.00, 113.00);

SET FOREIGN_KEY_CHECKS = 1;
