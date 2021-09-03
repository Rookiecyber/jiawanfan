/*
 Navicat Premium Data Transfer

 Source Server         : jiawanfan
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : osdb

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 03/09/2021 17:47:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '菜品分类id',
  `shop_id` int NULL DEFAULT NULL COMMENT '店铺id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '状态：1正常 9删除',
  `create_at` datetime NULL DEFAULT NULL COMMENT '添加时间',
  `update_at` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 1, '双拼套餐', 1, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `category` VALUES (2, 1, '盖饭', 1, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `category` VALUES (3, 1, '小菜', 1, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `category` VALUES (4, 1, '汤/饮料', 1, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `category` VALUES (5, 2, '双拼套餐', 1, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `category` VALUES (6, 2, '盖饭', 1, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `category` VALUES (7, 2, '小菜', 1, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `category` VALUES (8, 2, '汤/饮料', 1, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `category` VALUES (9, 3, '盖饭', 1, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `category` VALUES (10, 3, '双拼套餐', 1, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `category` VALUES (11, 3, '小炒', 1, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `category` VALUES (12, 1, '吃的', 1, '2021-08-21 01:32:20', '2021-08-21 01:32:20');
INSERT INTO `category` VALUES (13, 1, '饭1', 1, '2021-08-21 01:41:39', '2021-08-21 01:41:39');
INSERT INTO `category` VALUES (14, 1, '饭2', 1, '2021-08-21 01:41:46', '2021-08-21 01:41:46');
INSERT INTO `category` VALUES (15, 1, '饭3', 2, '2021-08-21 01:41:58', '2021-08-23 09:16:48');
INSERT INTO `category` VALUES (16, 4, '包子', 9, '2021-08-21 09:04:19', '2021-08-24 10:01:32');
INSERT INTO `category` VALUES (17, 4, '包子', 1, '2021-08-24 10:02:03', '2021-08-24 10:02:03');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('50bnn6euh0mspkv6ezj5kca7tm3149l6', '.eJxlkNmOwjAMRX8F5RlQ9qT9FiTkNg50BtKqCxJC_PvYFYNmeYgV2ede3-Qhbjh2-d72CUUtrKsqsRXXvukuuEw4ivohuiRqFbeidO1ngStzh6WKAQ-La0ATDzeYgVgSjlj2Qzm9TaipGJlmmJeJjJ50P_dDV3L_Nifvb9_gjDwsUUpF7igjdRA0VYmB-5HzscFK-6ASZfHGEN1KT9Vk1ifMrK8C0W1PbzwOXbtmMZbP_mPgjA2U8p5dTq8upDTiNK0bnFG01yK0ax79Z6cx8HuzRa-4KuaVb4h02ZJKm8xaR9NYhcyMsXGVccjh3Bd8BXQ-xEq6n79GrxgRZjzCTJCWWu5k2Gm5UbJWujaW4GVI_wm7Wce18-L5_AJ5spFi:1mISRe:9DiyVtRQxgjCQTTiQDmh5vJ_tgSs0SZ1eaPmFMpXS3c', '2021-09-07 09:10:10.779740');
INSERT INTO `django_session` VALUES ('bopl7rbjqme2hea291nqmqx3011pnmfc', '.eJzdmNty4kYQhl_FpdvFynT39Bz0KnHKNTrZJF6gOGSz2fK7pweQLITA0ia5AJdNgdSD5uvT_O0fyZ_Vel5_L5ZllWSJJoZkloTy63yx21TrJPuRzMskA54l8fMifI1mb7vlX_OweBHTxbz443j1aWeKkp927ME87SwWKO9rj2K1CpvNt-W6fH4Nm1cxtSEgG1UacFDl6GpfeQWFqtmYsq59d8kmvG3jEusBWW5stmG72ySZmSXFugrb6jnE-6gQHpV7RPWgfIYq00qMd6vykgVkiMn7LPlW5SeoJ6R_vwrmJiz6pFyjetrpSvkBOqjAQ-kYcsq1D6hdratgsDa5MhrUAB0gaTZX6dSjsrL9B3DZ_vecbm-B-KBcpkzGHOk2r8vVfFEvO3gthGUSCKcUCFClnFypggTNqsrG6y7CxS84BNdC-bTzhkisCyUhZqrj-rKq43pvxbpYSj49r-bFkSn-pb-vYqbkYbFo7729HK-GslxXm83BqQQ2OjUU-_1g75lE4fTJujIQXyHag8nFkmstq5DquJblrvO2jjak3X5Z3OTqdbmoWqdb51U3r2DY85I1oDLAjPQlz-uH_e1MAimeL8TgZbn-_jbfbKP3YSgETEURN1xHBM-C7_0hQeal7OXXdkUMw_PxffPN7eeu05mMYWtQpawdW9W4_yPqvRh_ibVaVfL8nFXcBekvcRtGLhn2-wRfzwtZjJyqT_0EcKw_HKi_g584elIsSImfDoQ4ldARYypbBWY7hpCNJI8jJenhK4yJYYq8g4aj0UhijBPQaDKaQKXGkRQm9tGMcxw5yn3WGPpfACkjngCoJwOy1Sk6bclSH9CpwDEhOf-PoUwGFwu3C_WblC42pYrdrDKl2ddF2S9PvuIAHHSA1FWqtDbenzlgOMIfDz6Qgx9PbjPyE8JpJtM41Cl5a1jxGY1F6bve2fwChxnNoWWjoyJ45LDTOQylxhI6PuP4SMt_EQkNmaIJBG4ygTdKIsEa6KztGzlRZe8hxHNQ-3iIcg5NXfWY3HgmHBRaw3VFTV1R9wgU2XdI-H5d-Sv8NMTvAXSsK4X0aSZ2aMd3Ea0znNIaQU1GUIZT661U_vm59kk71OM5eGQ3bDiuKZALofA2tUiACH0Obxk_Ij5570Za2pS9X9MWw3tHptQ5jVbaU2_vTMxRT9ZRl8qPcNRBmrTNVR5Vq-3r5ybJxmsnLQ17VJuIJaWbktLdXC-M_qWv4U4E5TVRogd9QgCpkwNLnx9Z3byMGSmvGFtL3MZPRdhlBFMifE2BXKAxOhXhjwznNOTydirSqhPDCWeVn3ZWwTUJMUzAcliRTDdGu_NW50U82MLHCSpwh2B8ErL09SlnFVyTDcMERuQCswFrzzqEtXWc4IrCx1fqZBGNJ6CJvfqaYLhA4FwqQ5aB8xlEV7poxJwpNPxMHbCWUhjbCKAVrdBVrZLBsTsZpz96wN68PYuhexhHHQA9y7bFgO5ZYs-Su_8vOrGkruV79MWy3BXbodn4bifdk7Hi_qbdE3V3rxPvyXl7R1PvLGlr916m2cQ0RLc_0Sa2YbnlqTZxDcVdTbazxDdctzyxJqDaU_jmx9YEPiTFTc6uPT13nwNsX4bew0ja08u3Opf2xPytDqcJtCrglifUBFoBcMNj6vv7P99x96M:1mHMkv:bSXqhooU0Hq9TWPA5jfUidzZfksmUaAabMy2AI-9C6g', '2021-09-04 08:53:33.067947');
INSERT INTO `django_session` VALUES ('lzk6sx5v6op6l8zu2o08110i5n456q3j', '.eJxli0EKgzAURK8if63wE5M05iyC_JhYpa0VkyBUvHtj6aJQmM3Me7PD5m0KfgWzw-TAsBLOOtPDg4HXSPM10AwlzFN_-65tkgPHNgmPTSYLhbA9V9eNFMaMmWcNc1oyW1vREBd6EJ4UH5RFJRj-XgLd43nhtZAqgxAppgBGldCvnqLv6OQcOVZ4qVAXTJtPspwW92dwXqA2qIyUcBxvMplA-Q:1mISd5:CP8lesqbRwnqGnM5SVsmvnQbUtEeCj3D07EAJZJ45RA', '2021-09-07 09:21:59.267096');
INSERT INTO `django_session` VALUES ('ntxnyecsf2rdkz6oiwy7rvcjz7bgz4gw', '.eJzdk9uO2yAQhl8l4rZJNIAZDK_SVBbmkLjN2pYP3a4iv3uHJM5G3a563xsfZuaHf76BC3uN9TzGgdkLawKzXG1Z_m_dS2SWnefuV-PaI9uytvE_7tHDjD6ow6wMx8OshRf0nYygqt6N42s3hOrkxhOVaueEQgjISx5rUSYTDXAPSSGGlMyzZHTnKUu04UJRYpzcNI_M4pb5IbopVi7nBQi-g3InYAPGCrAFUPHch88quBWCLVs2dZM7Vy9dG9-YBVrUDdO5GUlxoex46vqmTd1KQlLLa7taSTjMJQCnRiOUFImOmtYQdY6XZkcvoxOltY-UkKUhShEcPROGLDOabPruZxyqvvHZpixUoVDvv_cZcO3a9pE7H-9RF8IQx_FqQ0lO2xXR-auNTL12knaoEXNWur_uLFU2GWLKWu65kDmYsp3-RDRobZ69oNaoiifw_AN42IHeiWIDZQYvxWfgiwxeaUvLLRn0FI_d8HaHzczK2DwzxkBNGIMh-2oC7f_1G4k5PM4mPJUr6YkCipRZmNyhMRzepXeJuQ22uk90dVKt6z3PgyuJqEpE3Jey4Eqtk3n3-MfUv6xTvyVQJ_o2UdAxKdHX2c3QeNKKYg__5AqYuRZoRfmR64282oC2srCg2XKFwx9w-DMcumDZ5-1KriyXbKcLs19PPeOPSfzPoJblNybDa5w:1mM535:aD3zHXWEmbFi9jbYM2PGE3ovPjCP5ereZVtpk31hYOo', '2021-09-17 08:59:47.550953');
INSERT INTO `django_session` VALUES ('tnr87n6ltnhphpvwjqljtw97gx13iv1m', 'eyJ0b3RhbF9tb25leSI6MH0:1mI6iy:zsoLEx7Qv1tjZVpMXsMI4ZT1HvN68gbPC6oh8eR8C8I', '2021-09-06 09:58:36.067069');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '会员表id',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `status` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态:1正常/2禁用/9删除',
  `create_at` datetime NULL DEFAULT NULL COMMENT '添加时间',
  `update_at` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES (1, 'lixiaofeng', 'moren.png', '11234567899', 9, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `member` VALUES (2, 'jack', 'moren.png', '12345678965', 1, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `member` VALUES (3, 'wo879', 'moren.png', '13456789522', 1, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `member` VALUES (4, 'mt100', 'moren.png', '13567895563', 1, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `member` VALUES (5, '顾客', 'moren.png', '12345678901', 1, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `member` VALUES (6, '顾客', 'moren.png', '12345678902', 1, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `member` VALUES (7, '顾客', 'moren.png', '12345678903', 1, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `member` VALUES (8, '顾客', 'moren.png', '12345678904', 1, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `member` VALUES (9, '顾客', 'moren.png', '12345678905', 1, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `member` VALUES (10, '顾客', 'moren.png', '12345678906', 1, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `member` VALUES (11, '顾客', 'moren.png', '12345678909', 1, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `member` VALUES (12, '顾客', 'moren.png', '18642805564', 1, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `member` VALUES (13, '顾客', 'moren.png', '13116051729', 1, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `member` VALUES (14, '顾客', 'moren.png', '13161485799', 1, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `member` VALUES (15, '顾客', 'moren.png', '11234567888', 1, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `member` VALUES (16, '顾客', 'moren.png', '19919940344', 1, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `member` VALUES (17, '顾客', 'moren.png', '19936076874', 1, '2021-08-24 07:34:04', '2021-08-24 07:34:04');
INSERT INTO `member` VALUES (18, '顾客', 'moren.png', '12', 1, '2021-08-24 09:09:52', '2021-08-24 09:09:52');
INSERT INTO `member` VALUES (19, '顾客', 'moren.png', '123', 1, '2021-08-24 09:10:56', '2021-08-24 09:10:56');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '订单详情id',
  `order_id` int UNSIGNED NULL DEFAULT NULL COMMENT '订单id',
  `product_id` int UNSIGNED NULL DEFAULT NULL COMMENT '菜品id',
  `product_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜品名称',
  `price` double(6, 2) UNSIGNED NULL DEFAULT NULL COMMENT '单价',
  `quantity` int UNSIGNED NOT NULL DEFAULT 1 COMMENT '数量',
  `status` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态:1正常/9删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单详情信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES (1, 4, 1, '红烧肉+狮子头+饮料', 25.00, 1, 1);
INSERT INTO `order_detail` VALUES (2, 4, 2, '红烧肉+番茄鸡蛋', 22.00, 1, 1);
INSERT INTO `order_detail` VALUES (3, 4, 7, '肥牛饭', 19.00, 1, 1);
INSERT INTO `order_detail` VALUES (4, 5, 1, '红烧肉+狮子头+饮料', 25.00, 1, 1);
INSERT INTO `order_detail` VALUES (5, 6, 3, '梅菜扣肉+番茄鸡蛋', 22.00, 1, 1);
INSERT INTO `order_detail` VALUES (6, 6, 12, '单份香辣笋干烧肉', 15.00, 1, 1);
INSERT INTO `order_detail` VALUES (7, 6, 13, '番茄蛋花汤', 4.00, 1, 1);
INSERT INTO `order_detail` VALUES (8, 7, 2, '红烧肉+番茄鸡蛋', 22.00, 1, 1);
INSERT INTO `order_detail` VALUES (9, 7, 6, '木须肉饭', 16.00, 2, 1);
INSERT INTO `order_detail` VALUES (10, 7, 14, '王老吉', 6.00, 1, 1);
INSERT INTO `order_detail` VALUES (11, 7, 11, '菜心', 6.00, 1, 1);
INSERT INTO `order_detail` VALUES (12, 8, 2, '红烧肉+番茄鸡蛋', 22.00, 1, 1);
INSERT INTO `order_detail` VALUES (13, 8, 5, '梅菜扣肉饭', 19.00, 1, 1);
INSERT INTO `order_detail` VALUES (14, 9, 1, '红烧肉+狮子头+饮料', 25.00, 1, 1);
INSERT INTO `order_detail` VALUES (15, 9, 13, '番茄蛋花汤', 4.00, 1, 1);
INSERT INTO `order_detail` VALUES (16, 10, 1, '红烧肉+狮子头+饮料', 25.00, 1, 1);
INSERT INTO `order_detail` VALUES (17, 10, 2, '红烧肉+番茄鸡蛋', 22.00, 1, 1);
INSERT INTO `order_detail` VALUES (18, 11, 1, '红烧肉+狮子头+饮料', 25.00, 1, 1);
INSERT INTO `order_detail` VALUES (19, 11, 2, '红烧肉+番茄鸡蛋', 22.00, 2, 1);
INSERT INTO `order_detail` VALUES (20, 11, 12, '单份香辣笋干烧肉', 15.00, 1, 1);
INSERT INTO `order_detail` VALUES (21, 11, 13, '番茄蛋花汤', 4.00, 1, 1);
INSERT INTO `order_detail` VALUES (22, 12, 1, '红烧肉+狮子头+饮料', 25.00, 1, 1);
INSERT INTO `order_detail` VALUES (23, 12, 6, '木须肉饭', 16.00, 2, 1);
INSERT INTO `order_detail` VALUES (24, 12, 13, '番茄蛋花汤', 4.00, 1, 1);
INSERT INTO `order_detail` VALUES (25, 13, 1, '红烧肉+狮子头+饮料', 25.00, 2, 1);
INSERT INTO `order_detail` VALUES (26, 13, 6, '木须肉饭', 16.00, 1, 1);
INSERT INTO `order_detail` VALUES (27, 13, 9, '单个肉丸子', 4.00, 2, 1);
INSERT INTO `order_detail` VALUES (28, 13, 14, '王老吉', 6.00, 1, 1);
INSERT INTO `order_detail` VALUES (29, 14, 1, '红烧肉+狮子头+饮料', 25.00, 5, 1);
INSERT INTO `order_detail` VALUES (30, 14, 2, '红烧肉+番茄鸡蛋', 22.00, 7, 1);
INSERT INTO `order_detail` VALUES (31, 14, 6, '木须肉饭', 16.00, 1, 1);
INSERT INTO `order_detail` VALUES (32, 15, 14, '王老吉', 6.00, 2, 1);
INSERT INTO `order_detail` VALUES (33, 15, 9, '木须肉', 12.00, 1, 1);
INSERT INTO `order_detail` VALUES (34, 15, 3, '梅菜扣肉+番茄鸡蛋', 22.00, 1, 1);
INSERT INTO `order_detail` VALUES (35, 15, 6, '木须肉饭', 16.00, 1, 1);
INSERT INTO `order_detail` VALUES (36, 16, 20, '肉包子', 5.00, 1, 1);
INSERT INTO `order_detail` VALUES (37, 17, 1, '红烧肉+狮子头+饮料', 25.00, 3, 1);
INSERT INTO `order_detail` VALUES (38, 17, 3, '梅菜扣肉+番茄鸡蛋', 22.00, 1, 1);
INSERT INTO `order_detail` VALUES (39, 17, 4, '肥牛+番茄鸡蛋', 22.00, 1, 1);
INSERT INTO `order_detail` VALUES (40, 18, 1, '红烧肉+狮子头+饮料', 25.00, 1, 1);
INSERT INTO `order_detail` VALUES (41, 18, 2, '红烧肉+番茄鸡蛋', 22.00, 1, 1);
INSERT INTO `order_detail` VALUES (42, 19, 1, '红烧肉+狮子头+饮料', 25.00, 3, 1);
INSERT INTO `order_detail` VALUES (43, 19, 2, '红烧肉+番茄鸡蛋', 22.00, 1, 1);
INSERT INTO `order_detail` VALUES (44, 20, 1, '红烧肉+狮子头+饮料', 25.00, 1, 1);
INSERT INTO `order_detail` VALUES (45, 21, 2, '红烧肉+番茄鸡蛋', 22.00, 1, 1);
INSERT INTO `order_detail` VALUES (46, 21, 4, '肥牛+番茄鸡蛋', 22.00, 1, 1);
INSERT INTO `order_detail` VALUES (47, 22, 1, '红烧肉+狮子头+饮料', 25.00, 2, 1);
INSERT INTO `order_detail` VALUES (48, 22, 19, '红烧肉+西红柿鸡蛋', 24.00, 2, 1);
INSERT INTO `order_detail` VALUES (49, 23, 21, '肉包子', 5.00, 1, 1);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '订单表id',
  `shop_id` int UNSIGNED NULL DEFAULT NULL COMMENT '店铺id号',
  `member_id` int UNSIGNED NULL DEFAULT NULL COMMENT '会员id',
  `user_id` int UNSIGNED NULL DEFAULT NULL COMMENT '操作员id',
  `money` double(8, 2) NULL DEFAULT NULL COMMENT '金额',
  `status` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '订单状态:1过行中/2无效/3已完成',
  `payment_status` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '支付状态:1未支付/2已支付/3已退款',
  `create_at` datetime NULL DEFAULT NULL COMMENT '添加时间',
  `update_at` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (4, 1, 0, 1, 66.00, 3, 2, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `orders` VALUES (5, 1, 0, 1, 25.00, 3, 2, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `orders` VALUES (6, 1, 0, 3, 41.00, 3, 2, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `orders` VALUES (7, 1, 0, 1, 66.00, 3, 2, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `orders` VALUES (8, 1, 0, 1, 41.00, 3, 2, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `orders` VALUES (9, 1, 0, 1, 29.00, 2, 2, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `orders` VALUES (10, 1, 0, 1, 47.00, 3, 2, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `orders` VALUES (11, 1, 0, 1, 88.00, 3, 2, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `orders` VALUES (12, 1, 0, 1, 61.00, 3, 2, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `orders` VALUES (13, 1, 0, 1, 80.00, 3, 2, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `orders` VALUES (14, 1, 0, 2, 295.00, 2, 2, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `orders` VALUES (15, 1, 0, 2, 62.00, 3, 2, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `orders` VALUES (16, 1, 0, 15, 5.00, 3, 2, '2021-08-22 03:39:52', '2021-08-22 03:39:52');
INSERT INTO `orders` VALUES (17, 1, 0, 1, 119.00, 3, 2, '2021-08-23 07:41:36', '2021-08-23 07:41:36');
INSERT INTO `orders` VALUES (18, 1, 0, 1, 47.00, 3, 2, '2021-08-24 08:11:15', '2021-08-24 08:11:15');
INSERT INTO `orders` VALUES (19, 1, 0, 1, 97.00, 1, 2, '2021-08-24 08:29:54', '2021-08-24 08:29:54');
INSERT INTO `orders` VALUES (20, 1, 0, 1, 25.00, 1, 2, '2021-08-24 08:32:52', '2021-08-24 08:32:52');
INSERT INTO `orders` VALUES (21, 1, 18, 0, 44.00, 1, 2, '2021-08-24 09:10:10', '2021-08-24 09:10:10');
INSERT INTO `orders` VALUES (22, 1, 17, 0, 98.00, 1, 2, '2021-08-26 07:29:03', '2021-08-26 07:29:03');
INSERT INTO `orders` VALUES (23, 4, 17, 0, 5.00, 1, 2, '2021-08-26 09:03:38', '2021-08-26 09:03:38');

-- ----------------------------
-- Table structure for payment
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '支付表id',
  `order_id` int UNSIGNED NULL DEFAULT NULL COMMENT '订单id',
  `member_id` int UNSIGNED NULL DEFAULT NULL COMMENT '会员id',
  `money` double(8, 2) UNSIGNED NULL DEFAULT NULL COMMENT '支付金额',
  `type` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '付款方式：1会员付款/2收银收款',
  `bank` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '收款银行渠道:1微信/2余额/3现金/4支付宝',
  `status` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '支付状态:1未支付/2已支付/3已退款',
  `create_at` datetime NULL DEFAULT NULL COMMENT '添加时间',
  `update_at` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payment
-- ----------------------------
INSERT INTO `payment` VALUES (2, 4, 0, 66.00, 2, 3, 2, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `payment` VALUES (3, 5, 0, 25.00, 2, 3, 2, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `payment` VALUES (4, 6, 0, 41.00, 2, 3, 2, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `payment` VALUES (5, 7, 0, 66.00, 2, 3, 2, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `payment` VALUES (6, 8, 0, 41.00, 2, 3, 2, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `payment` VALUES (7, 9, 0, 29.00, 2, 1, 2, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `payment` VALUES (8, 10, 0, 47.00, 2, 3, 2, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `payment` VALUES (9, 11, 0, 88.00, 2, 3, 2, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `payment` VALUES (10, 12, 0, 61.00, 2, 3, 2, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `payment` VALUES (11, 13, 0, 80.00, 2, 3, 2, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `payment` VALUES (12, 14, 0, 295.00, 2, 4, 2, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `payment` VALUES (13, 15, 0, 62.00, 2, 3, 2, '2020-07-25 10:20:30', '2020-07-25 10:20:30');
INSERT INTO `payment` VALUES (14, 16, 0, 5.00, 2, 1, 2, '2021-08-22 03:39:52', '2021-08-22 03:39:52');
INSERT INTO `payment` VALUES (15, 17, 0, 119.00, 2, 3, 2, '2021-08-23 07:41:36', '2021-08-23 07:41:36');
INSERT INTO `payment` VALUES (16, 18, 0, 47.00, 2, 1, 2, '2021-08-24 08:11:15', '2021-08-24 08:11:15');
INSERT INTO `payment` VALUES (17, 19, 0, 97.00, 2, 1, 2, '2021-08-24 08:29:57', '2021-08-24 08:29:57');
INSERT INTO `payment` VALUES (18, 20, 0, 25.00, 2, 1, 2, '2021-08-24 08:32:53', '2021-08-24 08:32:53');
INSERT INTO `payment` VALUES (19, 21, 18, 44.00, 2, 1, 2, '2021-08-24 09:10:10', '2021-08-24 09:10:10');
INSERT INTO `payment` VALUES (20, 22, 17, 98.00, 2, 4, 2, '2021-08-26 07:29:03', '2021-08-26 07:29:03');
INSERT INTO `payment` VALUES (21, 23, 17, 5.00, 2, 4, 2, '2021-08-26 09:03:39', '2021-08-26 09:03:39');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '菜品id',
  `shop_id` int NULL DEFAULT NULL COMMENT '店铺id',
  `category_id` int NULL DEFAULT NULL COMMENT '菜品分类id',
  `cover_pic` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜品图片',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜品名称',
  `price` double(6, 2) NULL DEFAULT NULL COMMENT '单价',
  `status` tinyint NULL DEFAULT NULL COMMENT '状态：1:正常  2:停售  9:删除',
  `create_at` datetime NULL DEFAULT NULL COMMENT '添加时间',
  `update_at` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 1, 1, '1536657620.5485704.jpg', '红烧肉+狮子头+饮料', 25.00, 1, '2020-07-11 09:20:20', '2020-07-25 10:20:30');
INSERT INTO `product` VALUES (2, 1, 1, '1536658352.9341557.jpg', '红烧肉+番茄鸡蛋', 22.00, 1, '2020-07-11 09:32:32', '2020-07-25 10:20:30');
INSERT INTO `product` VALUES (3, 1, 1, '1536658415.6838002.jpg', '梅菜扣肉+番茄鸡蛋', 22.00, 1, '2020-07-11 09:33:35', '2020-07-25 10:20:30');
INSERT INTO `product` VALUES (4, 1, 1, '1536658574.2847373.jpg', '肥牛+番茄鸡蛋', 22.00, 1, '2020-07-11 09:36:14', '2020-07-25 10:20:30');
INSERT INTO `product` VALUES (5, 1, 2, '1536658659.0446993.jpg', '梅菜扣肉饭', 19.00, 1, '2020-07-11 09:37:39', '2020-07-25 10:20:30');
INSERT INTO `product` VALUES (6, 1, 2, '1536658824.3976505.jpg', '木须肉饭', 16.00, 1, '2020-07-11 09:40:24', '2020-07-25 10:20:30');
INSERT INTO `product` VALUES (7, 1, 2, '1536658863.6732855.jpg', '肥牛饭', 19.00, 1, '2020-07-11 09:41:03', '2020-07-25 10:20:30');
INSERT INTO `product` VALUES (8, 1, 2, '1536658960.3954134.jpg', '无骨咖喱鸡饭', 18.00, 1, '2020-07-11 09:42:40', '2020-07-25 10:20:30');
INSERT INTO `product` VALUES (9, 1, 3, '1536659114.0440235.jpg', '木须肉', 12.00, 1, '2020-07-11 09:44:25', '2020-07-25 10:20:30');
INSERT INTO `product` VALUES (10, 1, 3, '1536659065.7972637.jpg', '番茄鸡蛋', 4.00, 1, '2020-07-11 09:45:14', '2020-07-25 10:20:30');
INSERT INTO `product` VALUES (11, 1, 3, '1536659197.7231221.jpg', '青菜', 4.00, 1, '2020-07-11 09:46:37', '2020-07-25 10:20:30');
INSERT INTO `product` VALUES (12, 1, 3, '1536659253.8842716.jpg', '单份香辣笋干烧肉', 15.00, 1, '2020-07-11 09:47:33', '2020-07-25 10:20:30');
INSERT INTO `product` VALUES (13, 1, 4, '1536659311.8699493.jpg', '番茄蛋花汤', 4.00, 1, '2020-07-11 09:48:31', '2020-07-25 10:20:30');
INSERT INTO `product` VALUES (14, 1, 4, '1536659364.7892513.jpg', '王老吉', 6.00, 1, '2020-07-11 09:49:24', '2020-07-25 10:20:30');
INSERT INTO `product` VALUES (15, 1, 4, '1536659563.3897648.jpg', '果粒橙', 5.00, 1, '2020-07-11 09:52:43', '2020-07-25 10:20:30');
INSERT INTO `product` VALUES (16, 1, 4, '1536659605.5561771.jpg', '矿泉水', 3.00, 1, '2020-07-11 09:53:25', '2020-07-25 10:20:30');
INSERT INTO `product` VALUES (17, 1, 4, '1536659688.4856157.jpg', '乌梅汁', 4.00, 1, '2020-07-11 09:54:48', '2020-07-25 10:20:30');
INSERT INTO `product` VALUES (18, 2, 7, '1536659065.7972636.jpg', '番茄鸡蛋', 4.00, 1, '2020-07-04 06:17:18', '2020-07-25 10:20:30');
INSERT INTO `product` VALUES (19, 3, 10, '1536658666.8341557.jpg', '红烧肉+西红柿鸡蛋', 24.00, 1, '2020-07-06 08:46:28', '2020-07-25 07:34:07');
INSERT INTO `product` VALUES (20, 4, 1, '1629603427.8659942.png', '肉包子', 5.00, 9, '2021-08-22 03:37:07', '2021-08-24 10:01:53');
INSERT INTO `product` VALUES (21, 4, 17, '1629799349.6917021.png', '肉包子', 5.00, 1, '2021-08-24 10:02:29', '2021-08-24 10:02:29');

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '店铺id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '店铺名称',
  `cover_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面图片',
  `banner_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标Logo',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店铺地址',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '状态：1:正常 2:暂停 9:删除',
  `create_at` datetime NULL DEFAULT NULL COMMENT '添加时间',
  `update_at` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES (1, '田老师红烧肉-朝阳将台路店', '12341234.jpg', 'lg.jpg', '北京市朝阳区将台乡东八间房村西临8号', '12345678905', 1, '2020-07-20 10:12:34', '2020-07-24 12:34:56');
INSERT INTO `shop` VALUES (2, '田老师红烧肉-海淀区上地店', '57892456.jpg', 'lg.jpg', '北京市海定区上地三街嘉华大厦A座10号', '13456789209', 1, '2020-07-21 12:23:45', '2020-07-22 20:42:16');
INSERT INTO `shop` VALUES (3, '田老师红烧肉-西城玉渊潭店', '23454567.jpg', 'lg.jpg', '北京市宣武区玉渊潭南路东123号', '12345677654', 1, '2020-07-24 08:20:32', '2021-08-24 09:57:54');
INSERT INTO `shop` VALUES (4, '包子铺', '1596289879.201115.png', '1629535846.6090314.jpg', '重庆大学一食堂', '110', 1, '2021-08-21 08:50:46', '2021-08-26 09:12:12');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '员工账号id',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工账号',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `password_hash` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `password_salt` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码干扰值',
  `status` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态:1正常/2禁用/9删除',
  `create_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'zhangsan', '张三', '1e191d851b3b49a248f4ea62f6b06410', '123456', 6, '2020-07-08 18:18:18', '2020-07-22 08:06:55');
INSERT INTO `user` VALUES (2, 'lisi', '李四', '1e191d851b3b49a248f4ea62f6b06410', '123456', 1, '2020-07-18 08:08:18', '2020-07-22 16:21:18');
INSERT INTO `user` VALUES (3, 'xiaoli', '小李子', 'c8a7ca8b274f29cf2c1147a8e0f685a4', '639776', 6, '2020-07-07 07:53:57', '2020-07-08 20:18:18');
INSERT INTO `user` VALUES (4, 'zhangwuji', '张无忌', 'cbb748964d243e38f032b78886db824c', '437809', 9, '2020-02-18 09:06:54', '2020-01-14 03:36:25');
INSERT INTO `user` VALUES (5, 'zhaomin', '赵敏', '27c744b428b997675c4383e7eae974c3', '486570', 2, '2020-02-18 09:07:40', '2020-02-18 09:07:40');
INSERT INTO `user` VALUES (6, 'cuihua', '翠花', 'b5a7379148116549de083f5076233bef', '810418', 2, '2020-02-18 09:08:35', '2020-03-08 20:18:09');
INSERT INTO `user` VALUES (7, 'zhangle', '张乐', '7177bd35ad232f0830fe5c10dcc24b1c', '350013', 2, '2020-02-19 06:11:16', '2020-02-19 12:33:19');
INSERT INTO `user` VALUES (8, 'uu01', '小优', 'a0811c52452216c63e52da04337e9216', '268818', 1, '2020-01-03 10:27:04', '2020-01-03 10:27:04');
INSERT INTO `user` VALUES (9, 'uu02', '小优2', '56322ead3e2371636ac2395c8399297f', '112245', 1, '2020-01-03 10:37:37', '2020-01-03 10:37:37');
INSERT INTO `user` VALUES (10, 'uu03', '小优3', '8e7d0c4077c73ad60c23367625d4346f', '238764', 1, '2020-01-03 11:24:48', '2020-01-03 11:24:48');
INSERT INTO `user` VALUES (11, 'uu04', '小优4', '5eec167b09ea13497843274969460d67', '642960', 1, '2020-01-03 11:27:00', '2020-01-03 11:27:00');
INSERT INTO `user` VALUES (12, 'uu123', '小优', '5c2e9f69b05413b806dc6951b0f86e51', '102905', 1, '2020-01-13 23:51:01', '2020-01-13 23:51:01');
INSERT INTO `user` VALUES (13, 'uu666', '小优3', '99e89e8245d9f6f0628b5a59299bd9f7', '673778', 1, '2020-01-13 23:52:13', '2020-01-13 23:52:13');
INSERT INTO `user` VALUES (14, 'mm', '小美', '05775bb481d11f0648b158cd40a7929c', '627985', 1, '2020-01-14 01:25:57', '2020-01-14 01:25:57');
INSERT INTO `user` VALUES (15, 'luoxiang', '法外狂徒', '7aa2560d6181eb28f9e901c0f566dff9', '779125', 6, '2021-08-20 09:20:40', '2021-08-20 09:21:22');
INSERT INTO `user` VALUES (17, '19936076874', '法外狂徒', '7d9c4987a32a1da9c01a119b5f6703d9', '699976', 1, '2021-08-24 02:26:58', '2021-08-24 02:26:58');

SET FOREIGN_KEY_CHECKS = 1;
