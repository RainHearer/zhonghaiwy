/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : zh_zhonghai

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 27/02/2019 17:54:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for zh_adminuser
-- ----------------------------
DROP TABLE IF EXISTS `zh_adminuser`;
CREATE TABLE `zh_adminuser`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminuser` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `paw` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `lasttime` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `suser` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 102 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_adminuser
-- ----------------------------
INSERT INTO `zh_adminuser` VALUES (1, 'bao', 'cd3f7a5e7d61f31bdb0b0c2b7e2a3429', '2019/02/27-05:42:51pm', '超级管理员');
INSERT INTO `zh_adminuser` VALUES (8, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', '2017/07/31-04:33:20pm', '超级管理员');
INSERT INTO `zh_adminuser` VALUES (9, 'admin1', '81dc9bdb52d04dc20036dbd8313ed055', '2017-07-31', '普通');

-- ----------------------------
-- Table structure for zh_advertise
-- ----------------------------
DROP TABLE IF EXISTS `zh_advertise`;
CREATE TABLE `zh_advertise`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postion` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_advertise
-- ----------------------------
INSERT INTO `zh_advertise` VALUES (18, 'php', '<p>岗位名称：数控车工</p><p style=\"background: transparent; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline;\">职位名称：数控车工&nbsp;</p><p style=\"background: transparent; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline;\">人数： 1名</p><p style=\"background: transparent; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline;\">专业要求：不限&nbsp;</p><p style=\"background: transparent; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline;\">工龄要求：不限&nbsp;</p><p style=\"background: transparent; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline;\">学历要求：初中&nbsp;</p><p style=\"background: transparent; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline;\">年龄要求：22-50&nbsp;</p><p style=\"background: transparent; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline;\">身高:160CM以上&nbsp;</p><p style=\"background: transparent; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline;\">工作区域：桂林市/七星区&nbsp;</p><p style=\"background: transparent; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline;\">工作性质：全职 &nbsp;</p><p style=\"background: transparent; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline;\">薪水水平：3001-4000&nbsp;</p><p style=\"background: transparent; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline;\">公司福利：五险,带薪年假,年终奖金,绩效奖金,餐饮补贴 &nbsp;</p><p style=\"background: transparent; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline;\">工作简介及其它要求：求职者投简历，可直接进入人事</p><p style=\"background: transparent; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline;\">部的QQ邮箱（372360632@qq.com）</p>');
INSERT INTO `zh_advertise` VALUES (19, 'java', '<p>岗位名称：数控车工</p><p style=\"background: transparent; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline;\">职位名称：数控车工&nbsp;</p><p style=\"background: transparent; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline;\">人数： 1名</p><p style=\"background: transparent; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline;\">专业要求：不限&nbsp;</p><p style=\"background: transparent; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline;\">工龄要求：不限&nbsp;</p><p style=\"background: transparent; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline;\">学历要求：初中&nbsp;</p><p style=\"background: transparent; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline;\">年龄要求：22-50&nbsp;</p><p style=\"background: transparent; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline;\">身高:160CM以上&nbsp;</p><p style=\"background: transparent; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline;\">工作区域：桂林市/七星区&nbsp;</p><p style=\"background: transparent; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline;\">工作性质：全职 &nbsp;</p><p style=\"background: transparent; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline;\">薪水水平：3001-4000&nbsp;</p><p style=\"background: transparent; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline;\">公司福利：五险,带薪年假,年终奖金,绩效奖金,餐饮补贴 &nbsp;</p><p style=\"background: transparent; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline;\">工作简介及其它要求：求职者投简历，可直接进入人事</p><p style=\"background: transparent; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline;\">部的QQ邮箱（372360632@qq.com）</p>');
INSERT INTO `zh_advertise` VALUES (22, 'ic工程师', '<p style=\"background: rgb(255, 255, 255); border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Arial, Helvetica, sans-serif; font-size: 12px; white-space: normal;\">人数： 1名<br/></p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Arial, Helvetica, sans-serif; font-size: 12px; white-space: normal;\">专业要求：不限&nbsp;</p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Arial, Helvetica, sans-serif; font-size: 12px; white-space: normal;\">工龄要求：不限&nbsp;</p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Arial, Helvetica, sans-serif; font-size: 12px; white-space: normal;\">学历要求：初中&nbsp;</p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Arial, Helvetica, sans-serif; font-size: 12px; white-space: normal;\">年龄要求：22-50&nbsp;</p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Arial, Helvetica, sans-serif; font-size: 12px; white-space: normal;\">身高:160CM以上&nbsp;</p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Arial, Helvetica, sans-serif; font-size: 12px; white-space: normal;\">工作区域：桂林市/七星区&nbsp;</p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Arial, Helvetica, sans-serif; font-size: 12px; white-space: normal;\">工作性质：全职 &nbsp;</p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Arial, Helvetica, sans-serif; font-size: 12px; white-space: normal;\">薪水水平：3001-4000&nbsp;</p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Arial, Helvetica, sans-serif; font-size: 12px; white-space: normal;\">公司福利：五险,带薪年假,年终奖金,绩效奖金,餐饮补贴 &nbsp;</p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Arial, Helvetica, sans-serif; font-size: 12px; white-space: normal;\">工作简介及其它要求：求职者投简历，可直接进入人事</p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; vertical-align: baseline; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Arial, Helvetica, sans-serif; font-size: 12px; white-space: normal;\">部的QQ邮箱（372360632@qq.com）</p>');

-- ----------------------------
-- Table structure for zh_case
-- ----------------------------
DROP TABLE IF EXISTS `zh_case`;
CREATE TABLE `zh_case`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `casename` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `caseurl` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `type` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `imgpath` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `sucesse` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_case
-- ----------------------------
INSERT INTO `zh_case` VALUES (7, '酒店服务xx', '<p style=\"white-space: normal;\">xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p><p style=\"white-space: normal;\"><br/></p><p><br/></p>', '酒店服务', 'uploads/20170804/20e88d3dc5f85d2e679ba7a42a6274cd.png', '否');
INSERT INTO `zh_case` VALUES (8, 'xx服务项目名称', '<p style=\"white-space: normal; text-align: center;\"><span style=\"font-size: 20px; color: rgb(255, 0, 0);\">xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p><p style=\"white-space: normal;\"><br/></p><p><br/></p>', 'xx服务', 'uploads/20170804/9834ae209e525c0ae93a219ef2dbadce.png', '是');
INSERT INTO `zh_case` VALUES (4, '家庭服务案例', '<p>&nbsp; &nbsp; &nbsp; xxxxxxxxxxxxxxxxxxxxxxxxxx</p><p>xxxxxxxxxxxxxxxxxxxxxxxxxx</p><p>xxxxxxxxxxxxxxxxxxxxxxxxxx</p><p>&nbsp; &nbsp; xxxxxxxxxxxxxxxxxxxxxxxxxx</p><p>xxxxxxxxxxxxxxxxxxxxxxxxxx</p><p>xxxxxxxxxxxxxxxxxxxxxxxxxx</p>', '家庭服务', 'uploads/20170804/3c9bffe08f5e59eca84d63e2bcc820bf.png', '否');
INSERT INTO `zh_case` VALUES (5, '物业服务案例', '<p>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p><p style=\"white-space: normal;\">xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p><p style=\"white-space: normal;\"><br/></p><p><br/></p><p style=\"white-space: normal;\">xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p><p style=\"white-space: normal;\"><br/></p><p><br/></p><p style=\"white-space: normal;\">xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p><p style=\"white-space: normal;\"><br/></p><p><br/></p>', '物业服务', 'uploads/20170804/5e83e4c36b590b8b0517e1dcfd503854.png', '是');
INSERT INTO `zh_case` VALUES (6, '停车服务xx', '<p style=\"white-space: normal;\">xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p><p style=\"white-space: normal;\"><br/></p><p></p><p style=\"white-space: normal;\">xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p><p style=\"white-space: normal;\"><br/></p><p><br/></p>', '停车服务', 'uploads/20170804/48ce70c5314dea5411cdb89fc26b1b55.png', '是');
INSERT INTO `zh_case` VALUES (26, '物业服务3', '', '物业服务', 'uploads/20190227/f3bf47ba0e4c2e3d642e7604d147df68.png', '否');
INSERT INTO `zh_case` VALUES (15, 'xxx', '<p>xxxx</p>', 'xx服务', 'uploads/20170804/d33997fd574bb5514cb2cd8fdd648c48.png', '否');
INSERT INTO `zh_case` VALUES (21, '家庭服务案例1', '<p>页面排版</p>', '家庭服务', 'uploads/20190227/ad5556d6ee647cdd6af0eb5b09b2dd36.png', '否');
INSERT INTO `zh_case` VALUES (22, '家庭服务案例2', '<p>页面排版</p>', '家庭服务', 'uploads/20190227/2643d0cadf8caa1c59f1b5ae77c78d05.png', '否');
INSERT INTO `zh_case` VALUES (23, '家庭服务案例3', '<p>页面排版</p>', '家庭服务', 'uploads/20190227/85bf36ff4a10c36367eab27ffef5e299.png', '否');
INSERT INTO `zh_case` VALUES (24, '物业服务1', '', '物业服务', 'uploads/20190227/b6bf4c08d999dc3a46693f8d86659327.png', '否');
INSERT INTO `zh_case` VALUES (25, '物业服务2', '', '物业服务', 'uploads/20190227/40cfa9271de02523fa3d2473accf76dc.png', '否');
INSERT INTO `zh_case` VALUES (27, '停车服务1', '', '停车服务', 'uploads/20190227/9b725bb553f7bce0a0e1fa5f6cc3ac1c.png', '否');
INSERT INTO `zh_case` VALUES (28, '停车服务2', '', '停车服务', 'uploads/20190227/7bd4196c7d1a8019a027bbf0b4d87f7a.png', '否');
INSERT INTO `zh_case` VALUES (29, '停车服务3', '', '停车服务', 'uploads/20190227/2b5eae9889ceba26a3c5d352b239538e.png', '否');
INSERT INTO `zh_case` VALUES (30, '酒店服务1', '', '酒店服务', 'uploads/20190227/ece8f2eb55f009724d6de26ff9d0772a.png', '否');
INSERT INTO `zh_case` VALUES (31, '酒店服务2', '', '酒店服务', 'uploads/20190227/7807e307c860b5dc35545d48c971520b.png', '否');
INSERT INTO `zh_case` VALUES (32, '酒店服务3', '', '酒店服务', 'uploads/20190227/f749c35527cce7feb889050f41b5b6a1.png', '否');

-- ----------------------------
-- Table structure for zh_img
-- ----------------------------
DROP TABLE IF EXISTS `zh_img`;
CREATE TABLE `zh_img`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgpath` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `type` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_img
-- ----------------------------
INSERT INTO `zh_img` VALUES (59, 'img/20170803/b62591d1a7ce8dd98f77b28cd3b3b894.png', '主页-家政服务', '');
INSERT INTO `zh_img` VALUES (50, 'img/20170803/34190fbe9b17a41ba534f8ef80219081.png', '主页轮播图', '###');
INSERT INTO `zh_img` VALUES (54, 'img/20170803/a14bd83a5fc0ee96e9854f1953a3affa.png', '成功案例top图', '');
INSERT INTO `zh_img` VALUES (55, 'img/20170803/3b8c67d9b19182b0814ef8fde4059448.png', '企业新闻top图', '');
INSERT INTO `zh_img` VALUES (56, 'img/20170803/9d62fe8242e3c0936ca948cd2f17939f.png', '企业招聘top图', '');
INSERT INTO `zh_img` VALUES (57, 'img/20170803/a3e6820a4f3dee192382e91c100b5080.png', '主页-服务理念', '');
INSERT INTO `zh_img` VALUES (58, 'img/20170803/1078a1b4f34b3cb4f52f60fa77745fd0.png', '主页-招聘信息', '');
INSERT INTO `zh_img` VALUES (52, 'img/20170803/cdb6338ff839af2c4bc3abffbea6d41d.png', '公司简介top图', '');
INSERT INTO `zh_img` VALUES (53, 'img/20170803/21fa80fa1b70e4353056202e8540dffc.png', '服务项目top图', '');

-- ----------------------------
-- Table structure for zh_new
-- ----------------------------
DROP TABLE IF EXISTS `zh_new`;
CREATE TABLE `zh_new`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `new` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `date` date NULL DEFAULT NULL,
  `author` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_new
-- ----------------------------
INSERT INTO `zh_new` VALUES (1, '<p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">球球大作战炫彩夏威夷怎么开?</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">材料：炫彩夏威夷</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">获取途径：通过参与清凉一夏兑换活动可以获得，打开比赛获得的奇妙宝箱、钛金宝箱可以获得</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">炫彩夏威夷这款材料可以通过开启奇妙宝箱直接获得，也可以通过合成来获得。这是这次的活动中最难获得的一款材料了，因为掉落概率也比较低，然后要合成的话，需要花费的材料也是比较多的，但是要兑换这次的小杰米这款新光环的话，炫彩夏威夷确实必须要有的哦。</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">1.开启大型奇妙宝箱、大型钛金宝箱、超大钛金宝箱获得</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">通过开启奇妙宝箱可以直接获得这款材料的。如果想要增大开出炫彩夏威夷的小伙伴，建议可以先解锁宝箱，但是不开启，等到三个宝箱都解锁完毕了，再一起开启，这样可以增加开出炫彩夏威夷的概率哦。</p><p><br/></p>', '2017-08-04', '震惊！球球大作战竟可以这样玩');
INSERT INTO `zh_new` VALUES (2, '<p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">球球大作战炫彩夏威夷怎么开?</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">材料：炫彩夏威夷</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">获取途径：通过参与清凉一夏兑换活动可以获得，打开比赛获得的奇妙宝箱、钛金宝箱可以获得</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">炫彩夏威夷这款材料可以通过开启奇妙宝箱直接获得，也可以通过合成来获得。这是这次的活动中最难获得的一款材料了，因为掉落概率也比较低，然后要合成的话，需要花费的材料也是比较多的，但是要兑换这次的小杰米这款新光环的话，炫彩夏威夷确实必须要有的哦。</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">1.开启大型奇妙宝箱、大型钛金宝箱、超大钛金宝箱获得</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">通过开启奇妙宝箱可以直接获得这款材料的。如果想要增大开出炫彩夏威夷的小伙伴，建议可以先解锁宝箱，但是不开启，等到三个宝箱都解锁完毕了，再一起开启，这样可以增加开出炫彩夏威夷的概率哦。</p><p><br/></p>', '2017-08-04', '这里是标题 ');
INSERT INTO `zh_new` VALUES (3, '<p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">球球大作战炫彩夏威夷怎么开?</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">材料：炫彩夏威夷</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">获取途径：通过参与清凉一夏兑换活动可以获得，打开比赛获得的奇妙宝箱、钛金宝箱可以获得</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">炫彩夏威夷这款材料可以通过开启奇妙宝箱直接获得，也可以通过合成来获得。这是这次的活动中最难获得的一款材料了，因为掉落概率也比较低，然后要合成的话，需要花费的材料也是比较多的，但是要兑换这次的小杰米这款新光环的话，炫彩夏威夷确实必须要有的哦。</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">1.开启大型奇妙宝箱、大型钛金宝箱、超大钛金宝箱获得</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">通过开启奇妙宝箱可以直接获得这款材料的。如果想要增大开出炫彩夏威夷的小伙伴，建议可以先解锁宝箱，但是不开启，等到三个宝箱都解锁完毕了，再一起开启，这样可以增加开出炫彩夏威夷的概率哦。</p><p><br/></p>', '2017-08-04', '这里是标题 ');

-- ----------------------------
-- Table structure for zh_text
-- ----------------------------
DROP TABLE IF EXISTS `zh_text`;
CREATE TABLE `zh_text`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `forwhat` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_text
-- ----------------------------
INSERT INTO `zh_text` VALUES (1, '<p style=\"text-align: center;\"><span style=\"color: rgb(84, 141, 212);\"><strong><span style=\"font-size: 24px;\">桂林XX公司简介</span></strong></span></p><p style=\"text-size-adjust: 100%; box-sizing: border-box; margin-top: 0px; margin-bottom: 27px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 19.2px; font-family: &quot;Open Sans&quot;, &quot;Microsoft YaHei&quot;, &quot;Heiti SC&quot;, &quot;STHeiti Light&quot;, PMingLiU, sans-serif; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal;\">&nbsp; &nbsp; &nbsp; <span style=\"font-size: 18px; font-family: 宋体, SimSun;\"><em>&nbsp; <span style=\"font-size: 18px; font-family: 楷体, 楷体_GB2312, SimKai;\">我们旨在赋能企业改变营销、销售和经营的方式，并提升企业效率。我们为商家、品牌及其他企业提供基本的科技基础设施以及营销平台，让其可借助新技术的力量与用户和客户互动，以更具效率的形式开展运营。</span></em></span></p><p style=\"text-size-adjust: 100%; box-sizing: border-box; margin-top: 0px; margin-bottom: 27px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 19.2px; font-family: &quot;Open Sans&quot;, &quot;Microsoft YaHei&quot;, &quot;Heiti SC&quot;, &quot;STHeiti Light&quot;, PMingLiU, sans-serif; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal;\"><span style=\"font-family: 宋体, SimSun;\">&nbsp; &nbsp;我们的业务包括核心电商、云计算、数字媒体和娱乐以及创新项目。此外，集团已协议收购33%股权的蚂蚁金服，为集团平台上的消费者及商家提供支付及金融服务。我们已经建立起围绕自身平台及业务的生态系统，涵盖消费者、商家、品牌、零售商、其他企业、第三方服务提供商及战略联盟伙伴。</span></p><p><br/></p>', '公司简介');
INSERT INTO `zh_text` VALUES (2, '<div class=\"hire_block\">随着公司的进一步发展，我们需要大量优秀人才的加入！我们始终贯彻\"以人为本、诚实守信、用心服务\"的理\r\n念，一直从实际出发，逐步完善自己的企业文化及内部管理体系，我们致力于就是打造出一支年轻、充满朝气、共\r\n同进步的团队！\r\n      </div>', '企业招聘');

-- ----------------------------
-- Table structure for zh_type
-- ----------------------------
DROP TABLE IF EXISTS `zh_type`;
CREATE TABLE `zh_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typename` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_type
-- ----------------------------
INSERT INTO `zh_type` VALUES (1, '家庭服务');
INSERT INTO `zh_type` VALUES (3, '物业服务');
INSERT INTO `zh_type` VALUES (4, '停车服务');
INSERT INTO `zh_type` VALUES (6, '酒店服务');
INSERT INTO `zh_type` VALUES (7, 'xx服务');

-- ----------------------------
-- Table structure for zh_us
-- ----------------------------
DROP TABLE IF EXISTS `zh_us`;
CREATE TABLE `zh_us`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `qq` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `tell` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `mail` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_us
-- ----------------------------
INSERT INTO `zh_us` VALUES (1, '1368888888', '0000-000000', '1217238681@qq.com', '桂林');

SET FOREIGN_KEY_CHECKS = 1;
