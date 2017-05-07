/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : 127.0.0.1:3306
Source Database       : carmen_blog

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-12-30 22:28:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blog_access
-- ----------------------------
DROP TABLE IF EXISTS `blog_access`;
CREATE TABLE `blog_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_access
-- ----------------------------

-- ----------------------------
-- Table structure for blog_article_category
-- ----------------------------
DROP TABLE IF EXISTS `blog_article_category`;
CREATE TABLE `blog_article_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned DEFAULT '0',
  `name` varchar(255) DEFAULT '',
  `rank` int(3) unsigned DEFAULT '500',
  `index_show` int(1) unsigned DEFAULT '1',
  `status` int(10) unsigned DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_article_category
-- ----------------------------
INSERT INTO `blog_article_category` VALUES ('1', '0', '关于我', '500', '1', '1');
INSERT INTO `blog_article_category` VALUES ('2', '0', '博客', '500', '1', '1');
INSERT INTO `blog_article_category` VALUES ('3', '0', '优酷小站', '500', '1', '1');
INSERT INTO `blog_article_category` VALUES ('4', '0', '学习', '500', '0', '1');
INSERT INTO `blog_article_category` VALUES ('5', '0', '技术', '500', '1', '1');
INSERT INTO `blog_article_category` VALUES ('6', '3', '心情随笔', '500', '1', '1');
INSERT INTO `blog_article_category` VALUES ('7', '3', '实用分享', '500', '1', '1');
INSERT INTO `blog_article_category` VALUES ('8', '3', '情感思考', '500', '1', '1');
INSERT INTO `blog_article_category` VALUES ('9', '3', '生活积累', '500', '1', '1');
INSERT INTO `blog_article_category` VALUES ('10', '5', '软件开发', '500', '1', '1');
INSERT INTO `blog_article_category` VALUES ('11', '5', '网站开发', '500', '1', '1');
INSERT INTO `blog_article_category` VALUES ('12', '5', '安卓开发', '500', '1', '1');
INSERT INTO `blog_article_category` VALUES ('25', '0', '12', '500', '1', '10');
INSERT INTO `blog_article_category` VALUES ('26', '0', '12346', '500', '0', '1');
INSERT INTO `blog_article_category` VALUES ('27', '0', '1234563', '500', '0', '1');
INSERT INTO `blog_article_category` VALUES ('28', '0', '不学习了', '500', '1', '10');
INSERT INTO `blog_article_category` VALUES ('29', '0', '爱情', '500', '1', '1');
INSERT INTO `blog_article_category` VALUES ('30', '0', '111', '500', '1', '1');
INSERT INTO `blog_article_category` VALUES ('31', '0', '', '500', '1', '1');

-- ----------------------------
-- Table structure for blog_article_detail
-- ----------------------------
DROP TABLE IF EXISTS `blog_article_detail`;
CREATE TABLE `blog_article_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `content` longtext CHARACTER SET utf8,
  `hits` int(10) unsigned DEFAULT '0',
  `img_file` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `tags` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `create_time` int(10) unsigned DEFAULT NULL,
  `update_time` int(10) unsigned DEFAULT NULL,
  `status` int(10) unsigned DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of blog_article_detail
-- ----------------------------
INSERT INTO `blog_article_detail` VALUES ('1', '在我身边的那些花儿，2015 年人像集', '1', '4', '第一次在尾巴上发文，是因为虽然一直以来我的摄影技术和修片技术逐渐增强，但一直没有受到广大群众的认可。我也混迹图虫等专业图片社区，但是收效甚微。我是一个得不到反馈就不开心的人，所以当朋友介绍数字尾巴和它强大的阅读量的时候，我欣然答应了上来秀秀我拍的照片和设备。\r\n\r\n我拍人像的设备是佳能6D和蔡司凹玉50mm镜头。Zeiss Ultron 50/1.8这个镜头是我跟卡胖淘的，他一百多刀就卖给了我，当时感觉捡了个大便宜。后来我们就成了好基友，每周都出去摄影。全部片子都用lightroom调的。\r\n\r\n当然，拍妹子一般是大家的最爱啦。但是我不同，拍人像我还是刚入门。我特别怕把妹子拍不美而被她们打。。。我看了一些尾巴上的写真集，发现大家找的妹子都是专业模特好吗？！！！不公平。我觉得，能把身边的妹子拍美喽，才是一种技能！谁拍范冰冰都不会丑啊是吧？', '66', 'img/article1.jpg', '尾巴 模特', '1444654493', '1444654493', '1');
INSERT INTO `blog_article_detail` VALUES ('2', '神秘之境，年保玉则小游', '1', '4', '年保玉则，它与四川阿坝县接壤，是川甘青三省结合部著名的神山，除了众所周知的仙女湖、妖女湖外，还有日尕玛措、玛尔杂湖、玛日当湖等，星罗棋布的小海子则达300多个，为取吉祥之意号称360个，它叫年保玉则！ 年保玉则是果洛山的发祥地，山间有湍急的溪流和清丽的流水，涓涓小溪从山岩中穿过，从乱石中翻滚而过，吐出无数道白沫。 阿坝人称之为莲宝叶则！阿坝县境内的景区预计明年会开放，今年正在整修公路，具体的信息还请大家网上搜寻', '125', 'img/article2.jpg', '仙女湖 甘青三省', '1444654493', '1444654493', '1');
INSERT INTO `blog_article_detail` VALUES ('3', '胶片的味道，美能达 X700 和昙华林的小清新', '1', '4', '今年开始陆续出了一些老相机，最后的Pentax K200d机身加手柄都出了，Takumar 50/1.4也出了，算是P家灭门了。去年买的Ricoh GR也在去过一次香港之后出了。松下GF和20神饼，Sigma DP3M也挂到闲鱼了。\r\n\r\n忙忙碌碌到了9月份，以为不怎么玩拍照的我，突然又心血来潮入了O记的EM5，外加福伦达40/1.4，玩起了转接。尤觉不过瘾，还在国庆期间弄了台豆瓣神机美能达X700玩起了胶片。\r\n\r\n10月2日拿到机器，家附近找了几家柯达冲印居然买不到胶卷，到10月5日才搞到胶卷，带着皮皮就去昙华林逛逛，还遇到下雨天。皮皮从小就对相机好奇，现在开始准备让他也玩起来。于是，他挂着EM5，我提着X700开始了小清新之旅。', '351', 'img/article3.jpg', '小清新 胶卷', '1444654493', '1444654493', '1');
INSERT INTO `blog_article_detail` VALUES ('4', '加拿大纽芬兰，我的魂牵梦萦之地', '1', '4', '很久很久以前，在高中的地理课上，我曾经听说过一个地方，那里是世界四大渔场之一，它的名字叫纽芬兰。很多年以后，我忘记了其中三个渔场的名子，却依然记得纽芬兰。今年八月，我有幸踏上了纽芬兰这片大陆，开始了一段为期一个月的漫漫旅途。\r\n\r\n从北京起飞，乘坐加航飞机，途径多伦多倒机，历时20多个小时终于到达纽芬兰的省会圣约翰斯。出发时正值北京的三伏天，而下了飞机却冻得我瑟瑟发抖，凌晨的温度只有几度。寒冷，兴奋，以及见到爱人的感动（忘了说了，我是去探亲的）一时间涌上心头，让我忘记了离开家的不舍也忘记了飞机上的疲惫。接下来的一个月，我都在用心地感受着纽芬兰的一切。时至今日，那里依然是我魂牵梦萦的地方，也正是因此，我决定在这里好好的回忆它，也让大家了解它。', '15', 'img/article4.jpg', '多伦多', '1444654493', '1444654493', '1');
INSERT INTO `blog_article_detail` VALUES ('5', '匆匆一瞥，京城行摄', '9', '4', '京城太大，走不完，景物太多，看不完，只好随便留念。九月头两天去的时候,碰上军演前的催雨和各种景点管制，各种不开放，很多著名的地儿只能以后去的时候再补完啦。器材方面和之前自己的泰国行一样，带的是大法的 RX1R (不过这次没有加装 GW-3)。', '13', 'img/article5.jpg', '京城 走不完', '1444654493', '1444654493', '1');
INSERT INTO `blog_article_detail` VALUES ('6', '111哈哈交换机看了看了看', '1', '4', '<p>明天上不了课了。图片先让它烧焦吧，现在测试时间显示准确吗 晚安&nbsp;</p>', '985', '', '测试 时间', '1334678408', '2012', '1');
INSERT INTO `blog_article_detail` VALUES ('7', 'daf ', '1', '4', '&lt;p&gt;sda d fsda&amp;nbsp;&lt;/p&gt;', '0', '', 'daf ', '1458126319', '0', '1');
INSERT INTO `blog_article_detail` VALUES ('12', null, '1', '4', null, '0', '', '', '1458146872', '0', '1');
INSERT INTO `blog_article_detail` VALUES ('13', null, null, '4', null, '0', '', '', '1463656660', '0', '1');

-- ----------------------------
-- Table structure for blog_broadcast
-- ----------------------------
DROP TABLE IF EXISTS `blog_broadcast`;
CREATE TABLE `blog_broadcast` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `create_time` int(10) unsigned DEFAULT NULL,
  `status` int(10) unsigned DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of blog_broadcast
-- ----------------------------
INSERT INTO `blog_broadcast` VALUES ('1', '好好学习，天天向上！', '1424674500', '1');
INSERT INTO `blog_broadcast` VALUES ('2', '天气变冷了，注意保暖~', '1424884500', '1');
INSERT INTO `blog_broadcast` VALUES ('3', '记得好好吃饭呀~', '1424633500', '1');
INSERT INTO `blog_broadcast` VALUES ('4', '出门带好伞哦亲(づ￣3￣)づ╭❤～', '1424707200', '0');

-- ----------------------------
-- Table structure for blog_friend_link
-- ----------------------------
DROP TABLE IF EXISTS `blog_friend_link`;
CREATE TABLE `blog_friend_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(50) CHARACTER SET utf8 DEFAULT NULL,
  `url` char(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT '1',
  `index_show` int(1) unsigned DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of blog_friend_link
-- ----------------------------
INSERT INTO `blog_friend_link` VALUES ('1', '百度', 'http://www.baidu.com', '10', '1');
INSERT INTO `blog_friend_link` VALUES ('2', '优酷', 'http://www.youku.com', '10', '1');
INSERT INTO `blog_friend_link` VALUES ('3', '淘宝', 'http://www.taobao.com', '1', '1');
INSERT INTO `blog_friend_link` VALUES ('4', '维基百科', 'http://zh.wikipedia.org', '1', '1');
INSERT INTO `blog_friend_link` VALUES ('7', 'github', 'https://github.com/', '1', '1');

-- ----------------------------
-- Table structure for blog_node
-- ----------------------------
DROP TABLE IF EXISTS `blog_node`;
CREATE TABLE `blog_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `sort` smallint(6) unsigned DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_node
-- ----------------------------

-- ----------------------------
-- Table structure for blog_role
-- ----------------------------
DROP TABLE IF EXISTS `blog_role`;
CREATE TABLE `blog_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_role
-- ----------------------------

-- ----------------------------
-- Table structure for blog_role_user
-- ----------------------------
DROP TABLE IF EXISTS `blog_role_user`;
CREATE TABLE `blog_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for blog_text
-- ----------------------------
DROP TABLE IF EXISTS `blog_text`;
CREATE TABLE `blog_text` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_text
-- ----------------------------
INSERT INTO `blog_text` VALUES ('1', '0', '哺乳类');
INSERT INTO `blog_text` VALUES ('2', '0', '两栖类');

-- ----------------------------
-- Table structure for blog_user
-- ----------------------------
DROP TABLE IF EXISTS `blog_user`;
CREATE TABLE `blog_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(20) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `password` char(150) DEFAULT NULL,
  `email` char(30) DEFAULT NULL,
  `avatar_file` char(250) NOT NULL,
  `login_last_time` int(10) DEFAULT NULL,
  `status` int(10) unsigned DEFAULT '1',
  `role_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_user
-- ----------------------------
INSERT INTO `blog_user` VALUES ('1', '林金章', '男', '123', '123', 'ljzwiki@163.com', '', '1427370933', '1', null);

-- ----------------------------
-- Table structure for zsjy_user
-- ----------------------------
DROP TABLE IF EXISTS `zsjy_user`;
CREATE TABLE `zsjy_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(20) DEFAULT NULL,
  `roles` char(30) DEFAULT '',
  `user_no` char(15) DEFAULT NULL,
  `password` char(150) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `phone` char(60) DEFAULT NULL,
  `qq` char(12) DEFAULT NULL,
  `email` char(30) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `login_last_time` int(10) DEFAULT NULL,
  `login_times` int(10) unsigned DEFAULT '0',
  `status` int(10) unsigned DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zsjy_user
-- ----------------------------
INSERT INTO `zsjy_user` VALUES ('1', '管理员', '61,22,52,31,41,51,53,62,32,71', '123', 'Y1gzgxfDsqmMixVoaja3ywlpxqQ9nBYWcHPxykAqWspvdT7pTiaL3hTtmM7ggjoM_Kt0CiLKlyKkNf3nwToHqHQISiZ6GcfSqPyiXqyyQhV2bQUVEZAFdQRkFSZeOQmW', '男', 'encrypt_val-HRuNreMzyBIkLNDaVTPONFa3ViQwogpp__cD_38QHug', '2944927590', '', 'r8etrjrj5qho9am95eiuq02lp2', '1464917433', '911', '1');
INSERT INTO `zsjy_user` VALUES ('2', '企业', '41', '124', 'Y1gzgxfDsqmMixVoaja3ywlpxqQ9nBYWcHPxykAqWspvdT7pTiaL3hTtmM7ggjoM_Kt0CiLKlyKkNf3nwToHqHQISiZ6GcfSqPyiXqyyQhV2bQUVEZAFdQRkFSZeOQmW', '男', null, null, null, '', '1464877873', '84', '1');
INSERT INTO `zsjy_user` VALUES ('3', '就业市场科', '51', '125', 'Y1gzgxfDsqmMixVoaja3ywlpxqQ9nBYWcHPxykAqWspvdT7pTiaL3hTtmM7ggjoM_Kt0CiLKlyKkNf3nwToHqHQISiZ6GcfSqPyiXqyyQhV2bQUVEZAFdQRkFSZeOQmW', '男', null, null, null, '', '1464877887', '44', '1');
INSERT INTO `zsjy_user` VALUES ('4', '教工', '31', '127', 'Y1gzgxfDsqmMixVoaja3ywlpxqQ9nBYWcHPxykAqWspvdT7pTiaL3hTtmM7ggjoM_Kt0CiLKlyKkNf3nwToHqHQISiZ6GcfSqPyiXqyyQhV2bQUVEZAFdQRkFSZeOQmW', '男', null, null, null, '', '1464066770', '15', '1');
INSERT INTO `zsjy_user` VALUES ('5', '学生', '21,22', '126', 'Y1gzgxfDsqmMixVoaja3ywlpxqQ9nBYWcHPxykAqWspvdT7pTiaL3hTtmM7ggjoM_Kt0CiLKlyKkNf3nwToHqHQISiZ6GcfSqPyiXqyyQhV2bQUVEZAFdQRkFSZeOQmW', '男', null, null, null, '0vsmrien6up0kfrolf91b54j11', '1464075464', '3', '1');
INSERT INTO `zsjy_user` VALUES ('6', '朱虎平', '31', '004695', 'Y1gzgxfDsqmMixVoaja3ywlpxqQ9nBYWcHPxykAqWspvdT7pTiaL3hTtmM7ggjoM_Kt0CiLKlyKkNf3nwToHqHQISiZ6GcfSqPyiXqyyQhV2bQUVEZAFdQRkFSZeOQmW', '男', '', '', '', '', '1463675730', '19', '1');
INSERT INTO `zsjy_user` VALUES ('7', '熊老师', '31,71,32', '666', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, 'pf5hk9br60uj5jmtc87r9g6o91', '1464494310', '7', '1');
INSERT INTO `zsjy_user` VALUES ('8', '学生2', '21', null, 'Xu4NGFidB4bO--ekwyH9IhqOxwK7r4rgWhLOV9qGOkJrQI_xYczIEBEgYxTcr69u00MVvYpOqrEG2GQzE_zpbT-BRouovPF2VZrQW56DQs27nxRMSgO06wdUdI5mpVSB', null, null, null, null, '', null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('9', '学生3', '21', null, null, null, null, null, null, '', null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('10', '学生4', '21', null, null, null, null, null, null, '', null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('12', null, '41', '基围虾', '3OJTKuenbpUEdl_xRtFbI25Ir6bJmhbnXIVBMuTDmG9ql0c60maQvxOcg_w5OqP9qpe8nKjXoF_KBHRWRV_VgHAvDkImy8NzWY6fgT9TZA6WtHdyeNTUDqdDiZegYHuA', null, null, null, null, 'hbv3iubl709msbf60sptjcgub3', '1461411875', '1', '1');
INSERT INTO `zsjy_user` VALUES ('13', null, '41', 'gzmh', 'xsEBzhBELNUWfRDpqXSHXgkmWMSRdaUJbwlloAMDDt1d4hY6ivIDT1xDdO2002ZqfFpGJ3m0ljLJAuABRbAVyfr6rM2zepo11iPrpptWrGPSa4kkOtNsaVZYwlauwz2u', null, null, null, null, '', '1464835380', '6', '1');
INSERT INTO `zsjy_user` VALUES ('14', null, '41', '5201314', 'TnrNgYE7-HuRolWR2pZQLT5loBCKo0KifZzFhViDzyMdvhR-FbAbhcbKEsjyIOeR7X2gGT452ipKbr3Cq2WhnCAtu6bGD1YJ-0YhYNliJzxGWjGw9FMAbLNJqGFaqrR_', null, null, null, null, '', '1461816920', '1', '1');
INSERT INTO `zsjy_user` VALUES ('15', null, '41', '哈哈哈', 'njEiTihadY8JlSt-whRC6nzUlg7qUhMOjWK-l9rI5BcyNYYkezzsISTSdN0vKvWm-Ym0VN60NHCzWhIdQhPq_u7Nithg4-tgbdvuUBFhjm8t8ByIiXnaUM-VFcTaRQ9c', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('16', null, '41', '121212', 'dfzEpJQq6dZCpnEe1GsJPKQgMOVsuic3q-vyPoEzlWRahJsNQhddvXrynmN1IlqkXTv2zEyyIiBgnlIwvOtgfrSftZYllzn0I6CSDpwDW8ht04XtJqQo7sA0_BN7iJMC', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('17', null, '41', 'wewe', 'Dp9StHt5-JxU8x7yQqMWXnB_fJibltqXpkr4DKAAOHHhKSpibv7XR9wxv540lS1Jh5CWlx12SYSNLk0GM7ePQqu3S-xbOgGysTTpkmP_oZblkN6ivAKF61--EJK7Im_N', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('18', null, '41', 'wqrew', 'p-pvnzrcRkdJOhNLzNZfhp-YoRc7LiyPsYWmtYafsr6fABSMvAoKy3_wCTNshfQTtrYyQxQPvD4IzDfNuGKWF8CySi4t01K7Uvj7rJOBGN32UbA8wW62fdAUPHHBnHK5', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('19', null, '41', '2222', 'uxDAE_5fTJbKgjka_Hn_UbbEPulVXuM8X1m_NSJh4BW9w0rRVBu1EzUHjLSlrEexOx2626C6pQnpi9tixdpgQv-644_9v40dD9o2weHvEqzB63YGR_n44ZLO5oPv967c', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('20', null, '41', '233', 'J985nQA2WJxjcLXgA2vgpBpjS1hlZItqcHICv4B9IQO_1nLH6x80NynIdQMV3EaABFT5--SwnU8VnxBji4BCLlXEnkjVGktvpyMjd0y3KGVVqPy9OV8IcjTBuGpn5k0v', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('21', null, '41', '2322222222', 'JVFw0lCiaNlzEcZuumlu63WVC6yu-OgFQmRlp_isc-SVF-ZSQxBQpXwNzI679wYYU1vDoau3pDyQYFdwTVWHTpOsNSo2viLGELxkrXBeoyiDQop5F-cAzuncqZMbx42n', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('22', null, '41', '', 'zZ-gXQTd15krqOL9hW_jCZ9cekbO1IxVwyWp5fZvEAxIzWfRXT80BajsBqd4zEa0X1rBQju3vIZMboubU4lpVE6SyiM3X_yUdyuhfn95KBEfJTNnQXMFqIBPwy5i6iF0', null, null, null, null, 'nbf53dv2n70k3eahmk579r5d57', '1464177435', '11', '1');
INSERT INTO `zsjy_user` VALUES ('23', null, '41', '11', 'yk8droG-kzuEsZBGLuGoSrSaFl4pI8YNaBWeJ3gH-UdsT85V-k9YO_vryhHhkMhmF-BNWpVeUJFAtMZz7D9gNZrkrbGNNE_xF_Q7MXa-mX4-3jvcM76j8dVx4gtDKMYc', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('24', null, '41', '22', '6o7yoQ7zNBhvD_7ohXtlTgj-NJkktP22Upg0tLtsKMQibKMvO3ReJh9CSXa72hdfKB9rFNttwqoL4wNgIOKZp7D1Gxu5YFh66n2a4h9813uUEcn3ss3sT7_MUJJLAELs', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('25', null, '41', '888888888888', 'vXcGp-CI70B3mLZ5YRAjQu6sFldUBwK6IXi1zRI-uPECoki-QFTkJ0tT02zFiYAY84zwbcwf-o4rlwpam0LMCV6xxqAGCIZeIinDHPOYCRlfycP7IWiCcB7alrPUOJEs', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('26', null, '41', '2222222222', 'iYvbv4cea5HLcdQNw4vHs5LmB9Jyv4hCM8ArJgJhdwpBa2PNIdQaDgyCkK_YTKwZoBM_t1z9sfC5qQkDD2NWG9omAYTkm9h77U27aKuM1DlKp5jx58_58IwymYnAqlW9', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('27', null, '41', '2222222222', 'PpYR-km3z1LF9HqBhpEpaAEgXDRByQq4gwO5Ja6GTPg7EIsRTM61gAzup0cd2QdvdLU1-jRamVbcdEfCNwCv7deCdeT5jpumcTrSeEaBA_as73KUv9cisRs7YVF6lyXt', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('28', null, '41', '21323', 'BMp0AszPHb-jDnFiuMimzXmNbuNS2bBn24nL95UoSqfsFIHGeJem9pGPgsLQqJVU-3h0faJ5YbUTeh_hTUR4mDJXMM9sZ5VZdd9IpuBp4wzAAE2VzIWfKVHo01E8NNgi', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('29', null, '41', '21323', 'wiw_xKl18NOZMicK31kVxN5pFf6nf8v1hArU_G1WbsX78xyciCjueB8pU-GRew5bT7VEdfU1kVPN1-VcClHH2EJt3SVh6BgpfDn1d7eM_yPkbLfdD3PO-s5D7znBabm9', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('30', null, '41', '21323', '6wNzJ3236e5_C22JVetXSbuEHz22PCzVfZXa8fziv90asdaPjfaXfodb9R_1XtdOw32GA02YZf4WIAbmZ1a4fe0SgWiI6g0CppKIDdXs8Fa2VpmAeZx9bGFvjKAJMMEd', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('31', null, '41', '21323', '4zlx0EKXtJYHDI4-BpSNbc-NvcxfMfYTgTVCFE6dCSs2KgT8iQS8BrygFX9qdj8BG-FoExmXv9PBRdC3ObxsKyY-Csf8SK6eJTGhONe81NC_FTweuCGQfGmq18dtezxB', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('32', null, '41', '21323', 'D8pyPnJxJ32VTvCPNCMK9zNpUG8fDkfLBKrb9XowowY_0C5a1rNC_tu0lR1R_OptTxmyEdwrV9lAPBKFxhxnuViiE2sNCN0fikluUJzG7GRS2Pqr03nTPcaUeECqcq8T', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('33', null, '41', '21323', 'Fes7qkenPo0G8-5sf3F4OzQzHntczLkvppBGdB1XTWT0OyhqOrSe_CnqVPuHf-y3XxWQGUIDefrShm-aZ2eaSP6truTs4960IEYGIShtafJqHTdK2uOPaylhLoag4MCF', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('34', null, '41', '21323', 'DVM5OPlC5Upnl-O3e4BDx5Hk2Qs958pnkFQe9BFmso2eXrc3aY2mgcybr26pLq9EqTqRpiU8kwLMr-Zr_wX5qbVUVsqFxAW1FIfeao54QzBNdYPR9ckduWZG3T9EMUAR', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('35', null, '41', null, 'F0MqbSgMyZYpFN_DcWjEBRsDLzEeFNcnFdedL5cxtkg82Db0NBQJdoC4-SNYB5QrIVwfdmfCfYUT6JZiqQh90gKMkLKbVLNpwAhCD1llQyHkVh2Q-aIKb9RIQ0hzObRI', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('36', null, '41', '王雨辰', 'GnWiVd6xHh5qxeZX16bIfSjUI2l2WlQbr3Hn5QiTD3lVn4KTJ1L_a8-JH9gXk9Qi3m2ayZAWqCqwkKWcxEYIGVw-bW3pZBlCKzm6v1L4cjyA63k-9uIdPYA8OEYO3Jd9', null, null, null, null, '', '1462342999', '1', '1');
INSERT INTO `zsjy_user` VALUES ('37', null, '41', '广州民航', 'L_G3qcRfxnDe0JBNnpJvFR_pmdrmtVRbq_ZmpwKUGFUTuA0dguX47CFcVrf9BuG05_htTej7_dxnKLQRqQmnGeKTJBLIVLsZHd5TYUjImy8YyEV8tekUTiSBy66NRN7q', null, null, null, null, 'dr9ueo3c6d6qf91887pppqovf2', '1463660340', '17', '1');
INSERT INTO `zsjy_user` VALUES ('38', '李航宇', '21', '1408065020', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('39', '何丹', '21', '1408091010', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('40', '胡康靖', '21', '1408091014', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('41', '胡清冬', '21', '1408091015', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('42', '黄光耀', '21', '1408091016', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, 'q76gbc2s0lhv39lbvsfte7p5b4', '1462794672', '1', '1');
INSERT INTO `zsjy_user` VALUES ('43', '柯程华', '21', '1408091020', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('44', '林轶锽', '21', '1408091036', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('45', '林志伟', '21', '1408091037', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('46', '欧阳藩', '21', '1408091047', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('47', '裴振隆', '21', '1408091049', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('48', '饶招雄', '21', '1408091052', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('49', '涂玲', '21', '1408091060', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('50', '王秀', '21', '1408091065', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('51', '魏伟', '21', '1408091068', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('52', '吴召燕', '21', '1408091070', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('53', '肖万杰', '21', '1408091073', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('54', '徐建斌', '21', '1408091074', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('55', '周悦鑫', '21', '1408091093', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('56', '周正毅', '21', '1408091094', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('57', '朱逸文', '21', '1408091097', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, '', '1464066007', '7', '1');
INSERT INTO `zsjy_user` VALUES ('58', '施玮', '21', '1408065034', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('59', '万炜', '21', '1408065037', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('60', '董慧', '21', '1408066001', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('61', '廖宇', '21', '1408066002', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('62', '刘明钦', '21', '1408066003', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('63', '陶秋坡', '21', '1408066005', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('64', '汪苏琪', '21', '1408066006', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('65', '朱涛', '21', '1408066007', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('66', '李升琴', '21', '1408091026', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, '', '1464079239', '5', '1');
INSERT INTO `zsjy_user` VALUES ('67', '林鸿庆', '21', '1408091032', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('68', '马龙', '21', '1408091044', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('69', '马亚梅', '21', '1408091045', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('70', '潘秋枫', '21', '1408091048', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('71', '黄俊杰', '21', '1408091017', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('72', '姜昊', '21', '1408091018', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('73', '景文彬', '21', '1408091019', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('74', '赖毅成', '21', '1408091021', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('75', '李斌', '21', '1408091022', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('76', '李佳乐', '21', '1408091023', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('77', '李家凯', '21', '1408091024', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('78', '李力博', '21', '1408091025', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('79', '李阳', '21', '1408091027', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('80', '梁桂旭', '21', '1408091028', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('81', '梁雅洁', '21', '1408091029', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('82', '廖恩莹', '21', '1408091030', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('83', '廖文生', '21', '1408091031', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('84', '林金章', '21', '1408091033', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('85', '林柯', '21', '1408091034', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('86', '林琳', '21', '1408091035', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('87', '凌海燕', '21', '1408091038', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('88', '刘近东', '21', '1408091039', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('89', '刘明', '21', '1408091040', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('90', '刘涯', '21', '1408091041', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('91', '卢元杰', '21', '1408091042', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('92', '骆应超', '21', '1408091043', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('93', '蔡升', '21', '1408091001', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('94', '蔡彦超', '21', '1408091002', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('95', '陈杰', '21', '1408091003', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('96', '陈雷', '21', '1408091004', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('97', '程淑清', '21', '1408091005', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('98', '代杏利', '21', '1408091006', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('99', '范昭敏', '21', '1408091007', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('100', '冯俊杰', '21', '1408091008', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('101', '郭旭', '21', '1408091009', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('102', '何艳', '21', '1408091012', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('103', '侯凌云', '21', '1408091013', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('104', '汪婷', '21', '1407111038', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('105', '王朝阳', '21', '1408301030', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('106', '林森森', '21', '1412012019', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('107', '蒋文琳', '21', '1413011005', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('108', '钟屹', '21', '1490000005', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('109', '熊雄', '21', '1490000006', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('110', '周思灏', '21', '1490000007', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('111', '曹鸿鑫', '21', '1412091001', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('112', '陈铃', '21', '1412091007', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('113', '孙婧瑶', '21', '1467003107', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('114', '汪依柔', '21', '1467003117', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('115', '刘晨鸣', '21', '1467003082', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('116', '刘天昊', '21', '1467003087', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('117', '秦丹', '21', '1407111032', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('118', '宁妍', '21', '1412091056', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('119', '裴蔓', '21', '1412091059', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('120', '秦子欣', '21', '1412091061', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('121', '廖梓歆', '21', '1413011007', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('122', '唐娜娜', '21', '1413012017', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('123', '伍思凯', '21', '1467005079', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('124', '徐柳', '21', '1467005087', 'Po52lxoAdfzRDFKdtaHN5LHqnhx9_-9rfMdmQfOIxS-ZOQdFigjp0isIm_TBaJrPwGYQq5HWSIgNrfGJm30eLQOyz7I_NiPGtlxj5X-hmf1zL7R0jAdtQVSvsUQ94kQ3', null, null, null, null, '', '1463395083', '1', '1');
INSERT INTO `zsjy_user` VALUES ('125', null, '41', 'xiamenair', 'KkpU2bvhEWqc0SGcL1neUCqYRS9gonQPsF9MzJIuEoEKKqP_vh-o9v05Hlh4DIubYdEmehdqGA1rfpJvruhA_fB9ppp2WHNkNOkbnrnCfL5HW_xXO0bqaVemvCH1wDxN', null, null, null, null, '8k9213f13n353sh4jft52poa62', '1462868965', '2', '1');
INSERT INTO `zsjy_user` VALUES ('126', null, '41', '', 'ewc54FTrU7AZUCEe5JlQnlUJk03FUJWtzsmzJZyFtvgC-8Hw4AMm-UU-CPtLM3LsPCK39WbwOrZsNBd4yli_S_es6d_J3DCCqnTG0vHXF9UdOCcMUJ76Fteet6S3YS3H', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('127', null, '41', 'abc', 'Jtv71f0jaJ-l6u3n9s1o5w9XkYJiEKxCQh-53wgB3mDeNkAVLE_ZZfOlGI6BXaL1aijU8h2czETjTy3i8NyKoj_ybPuyDqSsOrU1HnlA_40kO9qpxFy3pvYQe-FqlcPl', null, null, null, null, '', '1462945205', '1', '1');
INSERT INTO `zsjy_user` VALUES ('128', null, '41', 'jxnu', 'GmD1Zton52xMpTp2Mf5XYw4cjadiMXKx3NOWpsCc0ZdpfCuFnUxou0Y25jezz1R3Iyd41ARMVm0j-EIqEyw6r6Io1JzLXeNeLOoPsJ1IHZwJaqsDfoq-oveMBRlmsEpw', null, null, null, null, '', '1462969368', '1', '1');
INSERT INTO `zsjy_user` VALUES ('129', null, '41', '111', 'vz_W5KyG4p8SIw-hCJTfBQizn7yMObx52cpwFtJLWBAoslcC87F0263WK2wLEVvSqa1qdxWxSk24m6B2GbGtqsJAw1YRP8JwCj9KKjAtSSWqvaeOl7-RKKVgwqw2PJUy', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('130', null, '41', '惠而浦', 'pYcgaTdy8gQVpUHNQzDjH42144Bhj8n07gxAZfTj_lV6FK16DBOypDaehBOP4V9wv9wmcsfphIgiJv1vXuhHgD1j3oLVN8yET3AhdNX9qlp6fkb0XUZ1T6W9ROPRaxBi', null, null, null, null, '7iaoohf8j52b189gajm7g6h8m7', '1463536213', '7', '1');
INSERT INTO `zsjy_user` VALUES ('131', null, '41', '江西师大', 'e65n7VEi4plEU4lPQXSWOsEK12wL-oG-P5hkuAUFbMFquWwzCRPRXyzvlWhVRR5Ci21JYLWH-z1gcycQ8TWPPONymVEV0ahB-pmXpnwReQw6FEM9H3VXGg5OfHDvESSB', null, null, null, null, 'tpl9hpfpe59r9oj3512m3ehsc4', '1463642795', '5', '1');
INSERT INTO `zsjy_user` VALUES ('132', null, '41', '123456789', 'Ntp6_QxYGnn3o3tetmwqmiaHxBqas6zyGIxVRSmqCt7NGhe_T0jGyj-JFE_mopsC8dvJKFlNPQx2S_z7lIecAoA7x-gHIdva6CPRvoQqGiZ5QYHUieszN_eJ1rRfjjNw', null, '', '', '', '', '1463627419', '5', '1');
INSERT INTO `zsjy_user` VALUES ('133', null, '41', '厦门航空', '20D7QfXXkWG3YdtrENZc8zQOF59h-ZQGdOVrrzZ5CF0k2F0GTn0KH3rz8xtEFgkOxmPkHRes3wtPO6QIJV6y_WBQvLileq9EHKnnp8IoKofOQ02nEz0VWKQce1L3-wOJ', null, null, null, null, 'fr94jgfmm6n2p08kie0edilqc4', '1464597451', '5', '1');
INSERT INTO `zsjy_user` VALUES ('134', null, '41', 'ddddddddddd', 'u8be8HxJ2J5AQPrxNR2MyKIUjO1-H3fPHgmNGhrW-g1iyOFr9ynFFc0kY0619D_Yh8A6WeSiD7dzD-HL21RSI_q7V75n4lAn6oS3zkOdV_aMwUqikJala8XVpSIo15d1', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('135', null, '41', '啊啊啊啊', 'rCwzexr2YaEzh72irmNBQ4oSdA2eJ347w6BZ140pHtAibg9X2dFpAyrEonWAi8ZK80-EMLVCuaaUQB9v8Fo4eVJUcBJBzQy2oHZMlV90IHyIhngqWQUDp7jn0yGngQ5i', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('136', null, '41', '九江石化', 'mnuOIfwYLU76WseIz9WjxI8pkkX4I9Tofg0vJM9pauz2ed6aM00_EXW1C8Zi1cIpjJM1bnoKvLz1QqIdHEk_Sa2fTCg_EKWB7OD220yqihQQyK7htOg5VwOLxXiJSA8p', null, null, null, null, 'f64qt8kdn421i73sd78mh07ej3', '1464610418', '1', '1');
INSERT INTO `zsjy_user` VALUES ('137', null, '41', 'sss', '3MKryvF6kKfd5aTtt1IBbimaIk6W-Fi4L45DmTkWUm6Xf-iV1vkbcg1YzWAfKaW4flPRG8f-PKP9NhhuXAadLe8tMBKe_WBiRDS3tNy3PhrMFdKOxQn434U52Cc-RTQi', null, null, null, null, null, null, '0', '1');
INSERT INTO `zsjy_user` VALUES ('138', null, '41', 'www', 'Ztd0nbDquQvzAfB-oC5RCOmaqfw98X9cg_5s-sxAliBFtYcuNAC3fSaaj4p1N7cm6rEtXptQV92HxBSNfyI1UmDi2N3IrL4pdpBkLyooEX4vE2ybTUBUTO6AYQ7ARmsm', null, null, null, null, null, null, '0', '1');
