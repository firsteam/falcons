/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50089
Source Host           : localhost:3306
Source Database       : xjdjingdian

Target Server Type    : MYSQL
Target Server Version : 50089
File Encoding         : 65001

Date: 2015-09-14 16:32:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ecs_account_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_account_log`;
CREATE TABLE `ecs_account_log` (
  `log_id` mediumint(8) unsigned NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL,
  `user_money` decimal(10,2) NOT NULL,
  `frozen_money` decimal(10,2) NOT NULL,
  `rank_points` mediumint(9) NOT NULL,
  `pay_points` mediumint(9) NOT NULL,
  `change_time` int(10) unsigned NOT NULL,
  `change_desc` varchar(255) NOT NULL,
  `change_type` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY  (`log_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_account_log
-- ----------------------------
INSERT INTO `ecs_account_log` VALUES ('1', '0', '0.00', '0.00', '100', '100', '1437431243', '注册送积分', '99');
INSERT INTO `ecs_account_log` VALUES ('2', '1', '100000.00', '0.00', '0', '0', '1437431272', '10000', '2');
INSERT INTO `ecs_account_log` VALUES ('3', '1', '0.00', '100.00', '0', '0', '1437431418', 'zceshi', '2');
INSERT INTO `ecs_account_log` VALUES ('4', '2', '0.00', '0.00', '100', '100', '1437497947', '注册送积分', '99');
INSERT INTO `ecs_account_log` VALUES ('5', '3', '0.00', '0.00', '100', '100', '1437500502', '注册送积分', '99');
INSERT INTO `ecs_account_log` VALUES ('6', '4', '0.00', '0.00', '100', '100', '1437501016', '注册送积分', '99');
INSERT INTO `ecs_account_log` VALUES ('7', '5', '0.00', '0.00', '100', '100', '1437502268', '注册送积分', '99');
INSERT INTO `ecs_account_log` VALUES ('8', '6', '0.00', '0.00', '100', '100', '1437503705', '注册送积分', '99');
INSERT INTO `ecs_account_log` VALUES ('9', '7', '0.00', '0.00', '100', '100', '1437518661', '注册送积分', '99');
INSERT INTO `ecs_account_log` VALUES ('10', '8', '0.00', '0.00', '100', '100', '1437525999', '注册送积分', '99');
INSERT INTO `ecs_account_log` VALUES ('11', '1', '-10.00', '10.00', '0', '0', '1437588105', '冻结拍卖活动的保证金：海尔HGS-2164手持蒸汽挂烫机家用挂式电熨斗熨烫机正品全国联保', '99');
INSERT INTO `ecs_account_log` VALUES ('12', '0', '0.00', '0.00', '100', '100', '1441152132', '注册送积分', '99');
INSERT INTO `ecs_account_log` VALUES ('13', '0', '0.00', '0.00', '100', '100', '1441152867', '注册送积分', '99');
INSERT INTO `ecs_account_log` VALUES ('14', '11', '0.00', '0.00', '100', '100', '1441156781', '注册送积分', '99');
INSERT INTO `ecs_account_log` VALUES ('15', '12', '0.00', '0.00', '100', '100', '1441178062', '注册送积分', '99');
INSERT INTO `ecs_account_log` VALUES ('16', '12', '10000.00', '0.00', '0', '0', '1441477115', '测试', '2');
INSERT INTO `ecs_account_log` VALUES ('17', '12', '-12.00', '0.00', '0', '0', '1441477154', '支付订单 2015090603997', '99');
INSERT INTO `ecs_account_log` VALUES ('18', '12', '0.00', '0.00', '71', '71', '1442098251', '订单 2015091335099 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('19', '11', '0.00', '0.00', '6', '6', '1442107467', '订单 2015090726899 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('20', '11', '0.00', '0.00', '12', '12', '1442108008', '订单 2015090408649 赠送的积分', '99');
INSERT INTO `ecs_account_log` VALUES ('21', '11', '0.00', '0.00', '16', '16', '1442109292', '订单 2015091353573 赠送的积分', '99');

-- ----------------------------
-- Table structure for `ecs_ad`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_ad`;
CREATE TABLE `ecs_ad` (
  `ad_id` smallint(5) unsigned NOT NULL auto_increment,
  `position_id` smallint(5) unsigned NOT NULL default '0',
  `media_type` tinyint(3) unsigned NOT NULL default '0',
  `ad_name` varchar(60) NOT NULL default '',
  `ad_link` varchar(255) NOT NULL default '',
  `ad_code` text NOT NULL,
  `start_time` int(11) NOT NULL default '0',
  `end_time` int(11) NOT NULL default '0',
  `link_man` varchar(60) NOT NULL default '',
  `link_email` varchar(60) NOT NULL default '',
  `link_phone` varchar(60) NOT NULL default '',
  `click_count` mediumint(8) unsigned NOT NULL default '0',
  `enabled` tinyint(3) unsigned NOT NULL default '1',
  PRIMARY KEY  (`ad_id`),
  KEY `position_id` (`position_id`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_ad
-- ----------------------------
INSERT INTO `ecs_ad` VALUES ('1', '1', '0', '首页专题广告1', 'http://aaa.yshdcom.com/category.php?id=93', '1441820478487458395.jpg', '1435651200', '1476864000', '', '', '', '36', '1');
INSERT INTO `ecs_ad` VALUES ('2', '2', '0', '首页专题广告2', 'http://aaa.yshdcom.com/topic.php/?topic_id=1', '1441820502151886098.jpg', '1435651200', '1476864000', '', '', '', '22', '1');
INSERT INTO `ecs_ad` VALUES ('3', '3', '0', '首页专题广告3', 'http://aaa.yshdcom.com/category.php?id=97', '1441820522884696491.jpg', '1435651200', '1476864000', '', '', '', '16', '1');
INSERT INTO `ecs_ad` VALUES ('4', '4', '0', '首页专题广告4', 'http://aaa.yshdcom.com/topic.php/?topic_id=2', '1441820538819088794.jpg', '1435651200', '1476864000', '', '', '', '14', '1');
INSERT INTO `ecs_ad` VALUES ('5', '5', '0', '首页专题广告5', 'http://aaa.yshdcom.com/category.php?id=95', '1441820554731642750.jpg', '1435651200', '1476864000', '', '', '', '11', '1');
INSERT INTO `ecs_ad` VALUES ('6', '6', '0', '首页-店铺-左侧广告', '', '1437443964590321726.jpg', '1435651200', '1476864000', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('7', '7', '0', '首页-店铺-右侧广告', '', '1437443987264556143.jpg', '1435651200', '1476864000', '', '', '', '3', '1');
INSERT INTO `ecs_ad` VALUES ('8', '8', '0', '首页幻灯片-小图下1', 'http://www.yshdcom.com/category.php?id=305&brand=76&price_min=0&price_max=0&filter=0', '1441820617842363877.jpg', '1435651200', '1474358400', '', '', '', '6', '1');
INSERT INTO `ecs_ad` VALUES ('9', '9', '0', '首页幻灯片-小图下2', '', '1441820639229632020.jpg', '1435651200', '1476950400', '', '', '', '3', '1');
INSERT INTO `ecs_ad` VALUES ('10', '10', '0', '首页幻灯片-小图下3', '', '1441820648587337434.jpg', '1435651200', '1476950400', '', '', '', '2', '1');
INSERT INTO `ecs_ad` VALUES ('11', '11', '0', '首页-分类ID93-左侧图片', '', '1437498557902889630.jpg', '1435651200', '1505894400', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('12', '12', '0', '首页-分类ID95-左侧图片', '', '1437498339486690622.jpg', '1435651200', '1476950400', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('13', '13', '0', '首页-分类ID97-左侧图片', '', '1437498376873749155.jpg', '1435651200', '1476950400', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('14', '14', '0', '首页-分类ID98-左侧图片', '', '1437498403240204298.jpg', '1435651200', '1476950400', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('15', '15', '0', '首页-分类ID101-左侧图片', '', '1437498451453717980.jpg', '1435651200', '1476950400', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('16', '16', '0', '首页-分类ID99-左侧图片', '', '1437498475161350896.jpg', '1435651200', '1476950400', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('17', '17', '0', '首页-分类ID100-左侧图片', '', '1437498503904706751.jpg', '1435651200', '1476950400', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('18', '18', '0', '首页-分类ID96-左侧图片', '', '1437498527130339382.jpg', '1435651200', '1476950400', '', '', '', '3', '1');
INSERT INTO `ecs_ad` VALUES ('19', '19', '0', '首页-分类ID93右侧广告1', '', '1437498774407314769.jpg', '1435651200', '1476950400', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('20', '20', '0', '首页-分类ID93右侧广告2', '', '1437498791542281098.jpg', '1435651200', '1476950400', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('21', '21', '0', '首页-分类ID95右侧广告1', '', '1437498928420613316.jpg', '1435651200', '1476950400', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('22', '22', '0', '首页-分类ID95右侧广告2', '', '1437498984255336373.jpg', '1435651200', '1476950400', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('23', '23', '0', '首页-分类ID97右侧广告1', '', '1437499098183223299.jpg', '1435651200', '1476950400', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('24', '24', '0', '首页-分类ID97右侧广告2', '', '1437499126023834343.jpg', '1435651200', '1476950400', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('25', '25', '0', '首页-分类ID98右侧广告1', '', '1437499176310430695.jpg', '1435651200', '1476950400', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('26', '26', '0', '首页-分类ID98右侧广告2', '', '1437499198350755312.jpg', '1435651200', '1476950400', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('27', '27', '0', '首页-分类ID101右侧广告1', '', '1437499305845389054.jpg', '1435651200', '1476950400', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('28', '28', '0', '首页-分类ID101右侧广告2', '', '1437499387466571785.jpg', '1435651200', '1476950400', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('29', '29', '0', '首页-分类ID99右侧广告1', '', '1437499475823186224.jpg', '1435651200', '1476950400', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('30', '30', '0', '首页-分类ID99右侧广告2', '', '1437499497036065698.jpg', '1435651200', '1476950400', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('31', '31', '0', '首页-分类ID100右侧广告1', '', '1437499932605024548.jpg', '1435651200', '1476950400', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('32', '32', '0', '首页-分类ID100右侧广告2', '', '1437499958486086167.jpg', '1435651200', '1476950400', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('33', '33', '0', '首页-分类ID96右侧广告1', '', '1437500144107285499.jpg', '1435651200', '1476950400', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('34', '34', '0', '首页-分类ID96右侧广告2', '', '1437500234427107477.jpg', '1435651200', '1476950400', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('35', '35', '0', '首页-分类ID93通栏广告', '', '1441735672978250342.jpg', '1435651200', '1476950400', '', '', '', '5', '1');
INSERT INTO `ecs_ad` VALUES ('36', '36', '0', '首页-分类ID98通栏广告', '', '1441750473933872440.jpg', '1435651200', '1476950400', '', '', '', '3', '1');
INSERT INTO `ecs_ad` VALUES ('37', '37', '0', '首页-分类ID96通栏广告', '', '1441750600418291847.jpg', '1435651200', '1476950400', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('38', '38', '0', '频道页-分类ID1029-图片1', '', '1437584516643169695.jpg', '1435651200', '1477036800', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('39', '39', '0', '频道页-分类ID1029-图片2', '', '1437584779944154716.jpg', '1435651200', '1477036800', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('40', '40', '0', '频道页-分类ID1029-图片3', '', '1437584814283655281.jpg', '1435651200', '1477036800', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('41', '41', '0', '频道页-分类ID2-图片1', '', '1437586917638435203.jpg', '1435651200', '1477036800', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('42', '42', '0', '频道页-分类ID2-图片2', '', '1437587341931566910.jpg', '1435651200', '1477036800', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('43', '43', '0', '频道页-分类ID2-图片3-1', '', '1437587416620218714.jpg', '1435651200', '1477036800', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('44', '43', '0', '频道页-分类ID2-图片3-2', '', '1437587434007231369.jpg', '1435651200', '1477036800', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('45', '43', '0', '频道页-分类ID2-图片3-3', '', '1437587451977920522.jpg', '1435651200', '1477036800', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('46', '43', '0', '频道页-分类ID2-图片3-4', '', '1437587464965488644.jpg', '1435651200', '1477036800', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('47', '43', '0', '频道页-分类ID2-图片3-5', '', '1437587487479959687.jpg', '1435651200', '1477036800', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('48', '43', '0', '频道页-分类ID2-图片3-6', '', '1437587523208947162.jpg', '1435651200', '1477036800', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('49', '44', '0', '积分商城banner广告1', '', '1437589745077253266.jpg', '1437552000', '1597996800', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('50', '45', '0', '积分商城banner广告2', '', '1437589866930988718.jpg', '1437552000', '1566374400', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('51', '46', '0', '积分商城banner广告3', '', '1437589886385874800.jpg', '1437552000', '1566374400', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('52', '47', '0', '积分商城banner广告4', '', '1437589904563695475.jpg', '1437552000', '1566374400', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('53', '49', '0', '积分商城通栏广告', '', '1437590460468432807.jpg', '1437552000', '1597996800', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('54', '48', '0', '频道页面-小分类ID55-广告', '', '1437591187278384298.jpg', '1437552000', '1440144000', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('55', '50', '0', '频道页面-小分类ID57-广告', '', '1437591331330793568.jpg', '1435651200', '1477036800', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('56', '51', '0', '拍卖列表banner广告1', '', '1437591936766548819.jpg', '1437552000', '1597996800', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('57', '52', '0', '拍卖列表banner广告2', '', '1437591968113037089.jpg', '1437552000', '1566374400', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('58', '53', '0', '拍卖列表banner广告3', '', '1437592138548361031.jpg', '1437552000', '1566374400', '', '', '', '2', '1');
INSERT INTO `ecs_ad` VALUES ('59', '54', '0', '拍卖列表banner广告4', '', '1437592268836563576.jpg', '1437552000', '1566374400', '', '', '', '1', '1');
INSERT INTO `ecs_ad` VALUES ('60', '55', '0', '频道页面-小分类ID56-广告', '', '1437592348952430337.jpg', '1435651200', '1477036800', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('61', '56', '0', '商品详情页左侧广告1', 'http://www.shdcom.com:8090/index.php', '1441329751348371883.jpg', '1441267200', '1443859200', '', '', '', '0', '0');
INSERT INTO `ecs_ad` VALUES ('68', '62', '0', '提货列表banner广告3', '', '1441671527128307815.png', '1441612800', '1444204800', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('65', '60', '0', '提货列表banner广告1', '', '1441665943100265988.png', '1441612800', '1444204800', '', '', '', '0', '1');
INSERT INTO `ecs_ad` VALUES ('67', '61', '0', '提货列表banner广告2', '', '1441666413101229949.png', '1441612800', '1444204800', '', '', '', '0', '1');

-- ----------------------------
-- Table structure for `ecs_admin_action`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_admin_action`;
CREATE TABLE `ecs_admin_action` (
  `action_id` tinyint(3) unsigned NOT NULL auto_increment,
  `parent_id` tinyint(3) unsigned NOT NULL default '0',
  `action_code` varchar(20) NOT NULL default '',
  `relevance` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`action_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=222 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_admin_action
-- ----------------------------
INSERT INTO `ecs_admin_action` VALUES ('1', '0', 'goods', '');
INSERT INTO `ecs_admin_action` VALUES ('2', '0', 'cms_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('3', '0', 'users_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('4', '0', 'priv_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('5', '0', 'sys_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('6', '0', 'order_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('7', '0', 'promotion', '');
INSERT INTO `ecs_admin_action` VALUES ('8', '0', 'email', '');
INSERT INTO `ecs_admin_action` VALUES ('9', '0', 'templates_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('10', '0', 'db_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('11', '0', 'sms_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('21', '1', 'goods_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('22', '1', 'remove_back', '');
INSERT INTO `ecs_admin_action` VALUES ('23', '1', 'cat_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('24', '1', 'cat_drop', 'cat_manage');
INSERT INTO `ecs_admin_action` VALUES ('25', '1', 'attr_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('26', '1', 'brand_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('27', '1', 'comment_priv', '');
INSERT INTO `ecs_admin_action` VALUES ('84', '1', 'tag_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('30', '2', 'article_cat', '');
INSERT INTO `ecs_admin_action` VALUES ('31', '2', 'article_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('32', '2', 'shopinfo_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('33', '2', 'shophelp_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('34', '2', 'vote_priv', '');
INSERT INTO `ecs_admin_action` VALUES ('35', '7', 'topic_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('74', '4', 'template_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('73', '3', 'feedback_priv', '');
INSERT INTO `ecs_admin_action` VALUES ('38', '3', 'integrate_users', '');
INSERT INTO `ecs_admin_action` VALUES ('39', '3', 'sync_users', 'integrate_users');
INSERT INTO `ecs_admin_action` VALUES ('40', '3', 'users_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('41', '3', 'users_drop', 'users_manage');
INSERT INTO `ecs_admin_action` VALUES ('42', '3', 'user_rank', '');
INSERT INTO `ecs_admin_action` VALUES ('85', '3', 'surplus_manage', 'account_manage');
INSERT INTO `ecs_admin_action` VALUES ('43', '4', 'admin_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('44', '4', 'admin_drop', 'admin_manage');
INSERT INTO `ecs_admin_action` VALUES ('45', '4', 'allot_priv', 'admin_manage');
INSERT INTO `ecs_admin_action` VALUES ('46', '4', 'logs_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('47', '4', 'logs_drop', 'logs_manage');
INSERT INTO `ecs_admin_action` VALUES ('48', '5', 'shop_config', '');
INSERT INTO `ecs_admin_action` VALUES ('49', '5', 'ship_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('50', '5', 'payment', '');
INSERT INTO `ecs_admin_action` VALUES ('51', '5', 'shiparea_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('52', '5', 'area_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('53', '6', 'order_os_edit', '');
INSERT INTO `ecs_admin_action` VALUES ('54', '6', 'order_ps_edit', 'order_os_edit');
INSERT INTO `ecs_admin_action` VALUES ('55', '6', 'order_ss_edit', 'order_os_edit');
INSERT INTO `ecs_admin_action` VALUES ('56', '6', 'order_edit', 'order_os_edit');
INSERT INTO `ecs_admin_action` VALUES ('57', '6', 'order_view', '');
INSERT INTO `ecs_admin_action` VALUES ('58', '6', 'order_view_finished', '');
INSERT INTO `ecs_admin_action` VALUES ('59', '6', 'repay_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('60', '6', 'booking', '');
INSERT INTO `ecs_admin_action` VALUES ('61', '6', 'sale_order_stats', '');
INSERT INTO `ecs_admin_action` VALUES ('62', '6', 'client_flow_stats', '');
INSERT INTO `ecs_admin_action` VALUES ('78', '7', 'snatch_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('83', '7', 'ad_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('80', '7', 'gift_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('81', '7', 'card_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('70', '1', 'goods_type', '');
INSERT INTO `ecs_admin_action` VALUES ('82', '7', 'pack', '');
INSERT INTO `ecs_admin_action` VALUES ('79', '7', 'bonus_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('75', '5', 'friendlink', '');
INSERT INTO `ecs_admin_action` VALUES ('76', '5', 'db_backup', '');
INSERT INTO `ecs_admin_action` VALUES ('77', '5', 'db_renew', 'db_backup');
INSERT INTO `ecs_admin_action` VALUES ('86', '4', 'agency_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('87', '3', 'account_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('88', '5', 'flash_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('89', '5', 'navigator', '');
INSERT INTO `ecs_admin_action` VALUES ('90', '7', 'auction', '');
INSERT INTO `ecs_admin_action` VALUES ('91', '7', 'group_by', '');
INSERT INTO `ecs_admin_action` VALUES ('92', '7', 'favourable', '');
INSERT INTO `ecs_admin_action` VALUES ('93', '7', 'whole_sale', '');
INSERT INTO `ecs_admin_action` VALUES ('94', '1', 'goods_auto', '');
INSERT INTO `ecs_admin_action` VALUES ('95', '2', 'article_auto', '');
INSERT INTO `ecs_admin_action` VALUES ('96', '5', 'cron', '');
INSERT INTO `ecs_admin_action` VALUES ('97', '5', 'affiliate', '');
INSERT INTO `ecs_admin_action` VALUES ('98', '5', 'affiliate_ck', '');
INSERT INTO `ecs_admin_action` VALUES ('99', '8', 'attention_list', '');
INSERT INTO `ecs_admin_action` VALUES ('100', '8', 'email_list', '');
INSERT INTO `ecs_admin_action` VALUES ('101', '8', 'magazine_list', '');
INSERT INTO `ecs_admin_action` VALUES ('102', '8', 'view_sendlist', '');
INSERT INTO `ecs_admin_action` VALUES ('103', '1', 'virualcard', '');
INSERT INTO `ecs_admin_action` VALUES ('104', '7', 'package_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('105', '1', 'picture_batch', '');
INSERT INTO `ecs_admin_action` VALUES ('106', '1', 'goods_export', '');
INSERT INTO `ecs_admin_action` VALUES ('107', '1', 'goods_batch', '');
INSERT INTO `ecs_admin_action` VALUES ('108', '1', 'gen_goods_script', '');
INSERT INTO `ecs_admin_action` VALUES ('109', '5', 'sitemap', '');
INSERT INTO `ecs_admin_action` VALUES ('110', '5', 'file_priv', '');
INSERT INTO `ecs_admin_action` VALUES ('111', '5', 'file_check', '');
INSERT INTO `ecs_admin_action` VALUES ('112', '9', 'template_select', '');
INSERT INTO `ecs_admin_action` VALUES ('113', '9', 'template_setup', '');
INSERT INTO `ecs_admin_action` VALUES ('114', '9', 'library_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('115', '9', 'lang_edit', '');
INSERT INTO `ecs_admin_action` VALUES ('116', '9', 'backup_setting', '');
INSERT INTO `ecs_admin_action` VALUES ('117', '9', 'mail_template', '');
INSERT INTO `ecs_admin_action` VALUES ('118', '10', 'db_backup', '');
INSERT INTO `ecs_admin_action` VALUES ('119', '10', 'db_renew', '');
INSERT INTO `ecs_admin_action` VALUES ('120', '10', 'db_optimize', '');
INSERT INTO `ecs_admin_action` VALUES ('121', '10', 'sql_query', '');
INSERT INTO `ecs_admin_action` VALUES ('122', '10', 'convert', '');
INSERT INTO `ecs_admin_action` VALUES ('124', '11', 'sms_send', '');
INSERT INTO `ecs_admin_action` VALUES ('128', '7', 'exchange_goods', '');
INSERT INTO `ecs_admin_action` VALUES ('129', '6', 'delivery_view', '');
INSERT INTO `ecs_admin_action` VALUES ('130', '6', 'back_view', '');
INSERT INTO `ecs_admin_action` VALUES ('131', '5', 'reg_fields', '');
INSERT INTO `ecs_admin_action` VALUES ('132', '5', 'shop_authorized', '');
INSERT INTO `ecs_admin_action` VALUES ('133', '5', 'webcollect_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('134', '4', 'suppliers_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('135', '4', 'role_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('12', '0', 'supplier', '');
INSERT INTO `ecs_admin_action` VALUES ('136', '12', 'supplier_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('137', '12', 'supplier_rank', '');
INSERT INTO `ecs_admin_action` VALUES ('200', '0', 'weixin_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('201', '200', 'weixin_config', '');
INSERT INTO `ecs_admin_action` VALUES ('202', '200', 'weixin_addconfig', '');
INSERT INTO `ecs_admin_action` VALUES ('203', '200', 'weixin_menu', '');
INSERT INTO `ecs_admin_action` VALUES ('204', '200', 'weixin_notice', '');
INSERT INTO `ecs_admin_action` VALUES ('205', '200', 'weixin_keywords', '');
INSERT INTO `ecs_admin_action` VALUES ('206', '200', 'weixin_fans', '');
INSERT INTO `ecs_admin_action` VALUES ('207', '200', 'weixin_news', '');
INSERT INTO `ecs_admin_action` VALUES ('208', '200', 'weixin_addqcode', '');
INSERT INTO `ecs_admin_action` VALUES ('209', '200', 'weixin_qcode', '');
INSERT INTO `ecs_admin_action` VALUES ('210', '200', 'weixin_reg', '');
INSERT INTO `ecs_admin_action` VALUES ('211', '7', 'takegoods_list', '');
INSERT INTO `ecs_admin_action` VALUES ('212', '7', 'takegoods_order', '');
INSERT INTO `ecs_admin_action` VALUES ('213', '0', 'pickup_point', '');
INSERT INTO `ecs_admin_action` VALUES ('214', '213', 'pickup_point_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('215', '213', 'pickup_point_batch', '');
INSERT INTO `ecs_admin_action` VALUES ('216', '8', 'send_mail', '');
INSERT INTO `ecs_admin_action` VALUES ('217', '1', 'question_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('218', '1', 'shaidan_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('219', '6', 'invoice_manage', 'order_edit');
INSERT INTO `ecs_admin_action` VALUES ('138', '12', 'supplier_rebate', '');
INSERT INTO `ecs_admin_action` VALUES ('220', '1', 'scan_store', '');
INSERT INTO `ecs_admin_action` VALUES ('139', '12', 'supplier_tag', '');
INSERT INTO `ecs_admin_action` VALUES ('221', '1', 'order_comment_priv', '');

-- ----------------------------
-- Table structure for `ecs_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_admin_log`;
CREATE TABLE `ecs_admin_log` (
  `log_id` int(10) unsigned NOT NULL auto_increment,
  `log_time` int(10) unsigned NOT NULL default '0',
  `user_id` tinyint(3) unsigned NOT NULL default '0',
  `log_info` varchar(255) NOT NULL default '',
  `ip_address` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`log_id`),
  KEY `log_time` (`log_time`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1761 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_admin_log
-- ----------------------------
INSERT INTO `ecs_admin_log` VALUES ('1', '1437414699', '1', '添加商品分类: 食品生鲜,服装服饰,个护化妆,手机数码,家用电器,家纺家居,酒类饮料,母婴用品', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('2', '1437414810', '1', '编辑商品分类: 食品生鲜', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('3', '1437414832', '1', '编辑商品分类: 服装服饰', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('4', '1437415015', '1', '添加商品分类: 牛奶乳品,坚果炒货,饼干糕点,蜜饯果干,糖果/巧克力,进口水果', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('5', '1437415634', '1', '编辑商品分类: 糖果巧克力', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('6', '1437415807', '1', '添加商品分类: 释迦芭乐,樱桃车厘子,芒果桃李,龙眼荔枝,提子葡萄,奇异果猕猴桃,凤梨蓝莓,榴莲山竹,橙柚柑橘', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('7', '1437415831', '1', '删除商品分类: 橙柚柑橘', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('8', '1437415928', '1', '添加商品分类: 巧克力,口香糖,棒棒糖,软糖,奶糖,QQ糖,果冻', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('9', '1437416004', '1', '添加商品分类: 常温奶,乳饮料,儿童奶,酸奶,豆奶,低脂奶,全脂奶,成人奶粉', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('10', '1437416106', '1', '添加商品分类: 核桃,夏威夷果,碧根果,开心果,腰果,瓜子,花生,杏仁', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('11', '1437416367', '1', '添加商品分类: 红枣,莓类,葡萄干,芒果干,香蕉干,山楂片,橄榄,其他', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('12', '1437416406', '1', '删除商品分类: 饼干糕点', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('13', '1437416681', '1', '添加商品分类: 女装馆,内衣馆,男装馆,户外鞋服,女鞋馆,箱包馆', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('14', '1437417068', '1', '添加商品分类: 短外套,防晒衫', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('15', '1437417182', '1', '添加商品分类: 聚拢文胸,薄款文胸,无钢圈文胸,女士内裤,男士内裤,夏季睡衣,性感睡衣,瘦腿袜', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('16', '1437417289', '1', '添加商品分类: 休闲裤,牛仔裤,夹克,风衣,针织衫,长袖衬衫,休闲短裤,POLO衫', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('17', '1437417412', '1', '添加商品分类: 跑步鞋,篮球鞋,帆布鞋,羽毛球鞋,迷彩裤,沙滩鞋,钓鱼服,登山鞋', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('18', '1437417599', '1', '添加商品分类: 高跟凉拖,平底鞋,高跟鞋,坡跟单鞋,浅口单鞋,帆布鞋,乐福鞋,松糕鞋', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('19', '1437417669', '1', '添加商品分类: 单肩女包,手提女包,女士钱包,男士双肩,男士钱包,旅行箱,拉杆箱,拉杆包', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('20', '1437417825', '1', '添加商品分类: 面部护肤,洗发护发,身体护肤,口腔护理,女性护理', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('21', '1437417862', '1', '添加商品分类: 清洁,护肤,面膜,剃须,套装', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('22', '1437417922', '1', '添加商品分类: 洗发,护发,染发,造型,假发,套装', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('23', '1437417962', '1', '添加商品分类: 沐浴,润肤,颈部,手足,纤体塑形, 美胸,套装', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('24', '1437417997', '1', '添加商品分类: 牙膏/牙粉,牙刷/牙线,漱口水,套装', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('25', '1437418031', '1', '添加商品分类: 香水,底妆,腮红,眼部,唇部,美甲,美容工具,套装', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('26', '1437418068', '1', '编辑商品分类: 香水彩妆', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('27', '1437418535', '1', '添加商品分类: 热卖手机,手机配件,数码影音,智能设备', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('28', '1437418659', '1', '添加商品分类: 三星盖乐世,iPhone,虾米特供,魅族手机,华为荣耀,联通4G,电信4G,移动4G', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('29', '1437418749', '1', '安装配送方式: 圆通速递', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('30', '1437422304', '1', '添加商品分类: 电池,移动电源,蓝牙耳机,充电器,创意配件,手机饰品,手机耳机,保护套', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('31', '1437427881', '1', '添加商品分类: 智能手环,智能手表,智能眼镜,运动跟踪器,智能家居,体感车', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('32', '1437428050', '1', '添加商品分类: 数码相机,单反相机,拍立得,运动相机,摄像机,户外器材,数码相框,影棚器材', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('33', '1437428736', '1', '添加品牌管理: 资生堂', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('34', '1437428796', '1', '添加品牌管理: CK', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('35', '1437428837', '1', '添加品牌管理: Disney', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('36', '1437428885', '1', '添加品牌管理: 雅诗兰黛', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('37', '1437428934', '1', '添加品牌管理: 相宜本草', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('38', '1437428980', '1', '添加品牌管理: Dior', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('39', '1437429042', '1', '添加品牌管理: 爱丽', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('40', '1437429105', '1', '添加品牌管理: 雅顿', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('41', '1437429180', '1', '添加品牌管理: 狮王', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('42', '1437429227', '1', '添加品牌管理: 高丝洁', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('43', '1437429301', '1', '添加品牌管理: MISS FACE', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('44', '1437429343', '1', '编辑品牌管理: 高丝洁', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('45', '1437429559', '1', '添加品牌管理: 姬芮', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('46', '1437429603', '1', '添加品牌管理: SK-ll', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('47', '1437429658', '1', '添加品牌管理: 高丝', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('48', '1437429723', '1', '添加品牌管理: 韩束', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('49', '1437429783', '1', '添加品牌管理: 卡姿兰', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('50', '1437429832', '1', '添加品牌管理: 珀莱雅', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('51', '1437429934', '1', '添加品牌管理: 兰芝', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('52', '1437430106', '1', '添加品牌管理: 碧欧泉', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('53', '1437430279', '1', '添加品牌管理: 小米', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('54', '1437430289', '1', '添加品牌管理: 摩托罗拉', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('55', '1437430298', '1', '添加品牌管理: 中兴', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('56', '1437430309', '1', '添加品牌管理: 朵唯', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('57', '1437430325', '1', '添加品牌管理: htc', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('58', '1437430344', '1', '添加品牌管理: 华为', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('59', '1437430353', '1', '添加品牌管理: oppo', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('60', '1437430366', '1', '添加品牌管理: 金立', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('61', '1437430374', '1', '添加品牌管理: LG', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('62', '1437430433', '1', '添加品牌管理: 苹果', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('63', '1437430441', '1', '添加品牌管理: 三星', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('64', '1437430460', '1', '添加品牌管理: 乐檬', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('65', '1437430574', '1', '添加品牌管理: 努比亚', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('66', '1437431054', '1', '添加品牌管理: 佳能', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('67', '1437431062', '1', '添加品牌管理: 肯德基', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('68', '1437431071', '1', '添加品牌管理: 麦当劳', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('69', '1437431080', '1', '添加品牌管理: 小肥羊', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('70', '1437431089', '1', '添加品牌管理: 小尾羊', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('71', '1437431098', '1', '添加品牌管理: 必胜客', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('72', '1437431107', '1', '添加品牌管理: 海底捞', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('73', '1437431237', '1', '添加品牌管理: 蒙牛', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('74', '1437431243', '1', '添加会员账号: anan', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('75', '1437431322', '1', '编辑品牌管理: 蒙牛', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('76', '1437431337', '1', '添加品牌管理: 伊利', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('77', '1437431351', '1', '添加品牌管理: 君乐宝', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('78', '1437431362', '1', '添加品牌管理: 光明', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('79', '1437431370', '1', '添加品牌管理: 三元', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('80', '1437431586', '1', '添加品牌管理: 百草味', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('81', '1437431595', '1', '添加品牌管理: 三只松鼠', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('82', '1437431609', '1', '添加品牌管理: 口水娃', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('83', '1437431622', '1', '添加品牌管理: 楼兰密语', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('84', '1437431645', '1', '添加品牌管理: 西域美农', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('85', '1437431655', '1', '添加品牌管理: 糖糖屋', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('86', '1437432198', '1', '添加会员余额: anan', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('87', '1437432502', '1', '添加商品分类: 大家电,生活电器,厨房电器,个护健康,五金家装', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('88', '1437432512', '1', '添加品牌管理: 享爱.', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('89', '1437432522', '1', '添加品牌管理: 猫人', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('90', '1437432530', '1', '添加品牌管理: 茵曼（INMAN）', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('91', '1437432540', '1', '添加品牌管理: 缪诗', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('92', '1437432550', '1', '添加品牌管理: Newbalance', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('93', '1437432559', '1', '添加品牌管理: 七匹狼', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('94', '1437432569', '1', '添加品牌管理: 佐丹奴', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('95', '1437432583', '1', '添加品牌管理: 梦特娇', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('96', '1437432594', '1', '添加品牌管理: 她他/tata', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('97', '1437432607', '1', '添加品牌管理: 曼妮芬（ManniForm）', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('98', '1437432618', '1', '添加品牌管理: 伊芙丽', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('99', '1437432672', '1', '添加商品分类: 平板电视,空调冰箱,洗衣机,家庭影院,烟机/灶具,热水器,消毒柜/洗碗机,冷柜/冰吧', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('100', '1437432685', '1', '删除会员余额: anan', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('101', '1437432722', '1', '添加会员余额: anan', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('102', '1437432889', '1', '添加品牌管理: 稻草人', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('103', '1437432901', '1', '添加品牌管理: 斯提亚', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('104', '1437432911', '1', '添加品牌管理: 袋鼠', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('105', '1437432915', '1', '添加商品分类: 电风扇,净化器,加湿器,吸尘器,挂烫机/熨斗,取暖电器,饮水机,其它生活电器', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('106', '1437432919', '1', '添加品牌管理: 爱华仕', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('107', '1437433054', '1', '添加商品分类: 电饭煲,微波炉,电磁炉,电饼铛/烧烤盘,电炖锅,果蔬解毒机,养生壶/煎药壶,其它厨房电器', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('108', '1437433157', '1', '添加商品分类: 剃须刀,电吹风,按摩椅,足浴盆,健康秤/厨房秤,血糖仪,计步器/脂肪检测仪,其它健康电器', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('109', '1437433188', '1', '编辑商品分类: 计步器/脂肪检测', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('110', '1437433385', '1', '添加商品分类: 电动工具,手动工具,厨卫五金,家具五金,电工电料,监控安防', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('111', '1437433767', '1', '添加品牌管理: 海尔', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('112', '1437433779', '1', '添加品牌管理: 美的', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('113', '1437433795', '1', '添加品牌管理: 格力', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('114', '1437433807', '1', '添加品牌管理: 老板', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('115', '1437433818', '1', '添加商品分类: 孕婴奶粉,营养/辅食,孕婴洗护,喂养用品,车床/床品,孕妈专区', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('116', '1437433823', '1', '添加品牌管理: 西门子', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('117', '1437433840', '1', '添加品牌管理: 格兰仕', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('118', '1437433854', '1', '添加品牌管理: 海信', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('119', '1437433888', '1', '添加商品分类: 特配奶粉,孕妈奶粉,pre段,1段,2段,3段', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('120', '1437433944', '1', '添加商品分类: 米粉,果汁/泥,面食类,宝宝零食,DHA,清火开胃,钙铁锌,益生菌', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('121', '1437433994', '1', '添加商品分类: 洗衣液/皂,宝宝沐浴,儿童防晒,防蚊/驱蚊,爽身粉,奶瓶清洗,孕妇护肤', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('122', '1437434049', '1', '添加商品分类: 奶嘴奶瓶,驱蚊用品,浴室用品,水壶/水杯,吸奶器,理发器,防溢乳垫', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('123', '1437434171', '1', '添加商品分类: 安全座椅,手推车,婴儿床,餐椅,三轮车,儿童家具,睡袋/抱被,凉席/蚊帐', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('124', '1437434172', '1', '添加品牌管理: 伊莱克斯', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('125', '1437434180', '1', '添加品牌管理: 艾力斯特', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('126', '1437434216', '1', '添加商品分类: 孕妇裙,打底裤,防辐射服,腰凳,妈咪包,收腹带,哺乳文胸,孕妇内裤', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('127', '1437434520', '1', '添加商品分类: 酒水,冲调饮品,饮料饮品,茗茶,进口食品', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('128', '1437434580', '1', '添加商品分类: 白酒,啤酒,葡萄酒/果酒,黄酒/米酒,养生酒,预调酒', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('129', '1437434606', '1', '添加品牌管理: 博洋家纺', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('130', '1437434617', '1', '添加品牌管理: 富安娜', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('131', '1437434625', '1', '添加品牌管理: 爱仕达', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('132', '1437434636', '1', '添加品牌管理: 罗莱', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('133', '1437434645', '1', '添加商品分类: 牛奶乳品,饮料,饮用水,咖啡/奶茶,蜂蜜/柚子茶,冲饮谷物,成人奶粉', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('134', '1437434647', '1', '添加品牌管理: 安睡宝', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('135', '1437434684', '1', '添加品牌管理: 溢彩年华', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('136', '1437434729', '1', '添加商品分类: 果蔬汁,茶饮料,碳酸饮料,功能饮料,纯牛奶,酸奶,风味奶,植物蛋白饮料', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('137', '1437434776', '1', '编辑商品分类: 咖啡', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('138', '1437434795', '1', '编辑商品分类: 茶叶', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('139', '1437434819', '1', '编辑商品分类: 蜂蜜', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('140', '1437434837', '1', '编辑商品分类: 奶茶', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('141', '1437434853', '1', '编辑商品分类: 成人奶粉', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('142', '1437434868', '1', '编辑商品分类: 麦片谷物', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('143', '1437434889', '1', '编辑商品分类: 豆浆/豆奶粉', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('144', '1437434914', '1', '添加商品分类: 果味冲调', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('145', '1437434929', '1', '添加品牌管理: 慧乐家', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('146', '1437434942', '1', '添加品牌管理: 天堂伞', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('147', '1437434985', '1', '添加商品分类: 铁观音,普洱,龙井,绿茶,红茶,花果茶,养生茶,其他茶', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('148', '1437435110', '1', '删除商品分类: 进口食品', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('149', '1437435246', '1', '添加商品分类: 家纺,家具,厨具,灯具,家装软饰,生活日用', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('150', '1437435363', '1', '添加商品分类: 床品套件,被子,蚊帐,凉席,床单被罩,毛巾浴巾,床垫/床褥,窗帘/窗纱', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('151', '1437435459', '1', '添加商品分类: 卧室家具,客厅家具,餐厅家具,书房家具,储物家具,阳台/户外,沙发,鞋架/衣帽架', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('152', '1437435513', '1', '添加商品分类: 烹饪锅具,刀剪菜板,厨房配件,水具酒具,餐具,茶具/咖啡具', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('153', '1437435603', '1', '添加商品分类: 台灯,吸顶灯,筒灯射灯,LED灯,落地灯,应急灯/手电,装饰灯,吊灯', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('154', '1437435722', '1', '添加商品分类: 桌布/罩件,地毯地垫,沙发垫套/椅垫,帘艺隔断,相框/照片墙,装饰字画,墙贴/装饰贴,摆件花瓶', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('155', '1437435756', '1', '添加商品分类: 收纳用品,雨伞雨具,浴室用品,缝纫/针织用品,洗晒/熨烫,净化除味', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('156', '1437436184', '1', '编辑品牌管理: 达芙妮', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('157', '1437436548', '1', '编辑品牌管理: 卓诗尼', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('158', '1437436821', '1', '添加属性: 颜色', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('159', '1437436852', '1', '添加品牌管理: 水星家纺', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('160', '1437436872', '1', '添加品牌管理: 全有家居', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('161', '1437437214', '1', '添加品牌管理: 五粮液', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('162', '1437437224', '1', '添加品牌管理: 泸州老窖', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('163', '1437437231', '1', '添加品牌管理: 洋河', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('164', '1437437244', '1', '添加品牌管理: 郎酒', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('165', '1437437261', '1', '添加品牌管理: 锐澳', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('166', '1437437271', '1', '添加品牌管理: 雪花', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('167', '1437437282', '1', '添加品牌管理: 哈尔滨', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('168', '1437437838', '1', '添加属性: 选择版本', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('169', '1437437842', '1', '添加品牌管理: 加多宝', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('170', '1437437849', '1', '添加品牌管理: 统一', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('171', '1437437856', '1', '编辑属性: 选择颜色', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('172', '1437437859', '1', '添加品牌管理: 王老吉', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('173', '1437437873', '1', '添加品牌管理: 可口可乐', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('174', '1437437883', '1', '添加属性: 商品产地', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('175', '1437437894', '1', '添加属性: 类型', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('176', '1437437926', '1', '添加属性: 传感器尺寸', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('177', '1437437946', '1', '添加属性: 液晶屏属性', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('178', '1437437960', '1', '添加属性: 用途', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('179', '1437437987', '1', '添加属性: 系统', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('180', '1437438046', '1', '添加属性: 屏幕尺寸', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('181', '1437438054', '1', '添加属性: 后置摄像头', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('182', '1437438062', '1', '添加属性: 前置摄像头', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('183', '1437438072', '1', '添加属性: 核数', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('184', '1437438082', '1', '添加属性: 频率', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('185', '1437438089', '1', '添加属性: 分辨率', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('186', '1437438440', '1', '添加品牌管理: 贝古贝古', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('187', '1437438450', '1', '添加品牌管理: 皇家宝贝', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('188', '1437438478', '1', '添加品牌管理: 呵宝童车', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('189', '1437438487', '1', '添加品牌管理: 合生元', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('190', '1437438496', '1', '添加属性: 选择颜色', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('191', '1437438523', '1', '添加品牌管理: 美赞臣', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('192', '1437438533', '1', '添加品牌管理: 帮宝适', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('193', '1437438543', '1', '添加品牌管理: 抱抱熊', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('194', '1437438555', '1', '添加品牌管理: 巴拉巴拉', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('195', '1437438571', '1', '添加品牌管理: 青蛙王子', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('196', '1437438581', '1', '添加品牌管理: 雀氏', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('197', '1437438603', '1', '添加属性: 选择尺码', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('198', '1437438632', '1', '添加属性: 帮面材质', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('199', '1437438641', '1', '添加属性: 风格', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('200', '1437438650', '1', '添加属性: 鞋帮', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('201', '1437438655', '1', '编辑属性: 选择颜色', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('202', '1437438657', '1', '添加属性: 闭合方式', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('203', '1437438665', '1', '添加属性: 皮质特征', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('204', '1437438675', '1', '添加属性: 鞋底材质', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('205', '1437438677', '1', '编辑属性: 颜色', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('206', '1437438680', '1', '编辑属性: 版本', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('207', '1437438682', '1', '添加属性: 适用对象', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('208', '1437438690', '1', '添加属性: 制作工艺', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('209', '1437438699', '1', '添加属性: 开口深度', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('210', '1437438706', '1', '添加属性: 内里材质', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('211', '1437438712', '1', '添加属性: 跟高', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('212', '1437438719', '1', '添加属性: 鞋跟形状', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('213', '1437438727', '1', '添加属性: 图案', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('214', '1437438739', '1', '添加属性: 鞋头', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('215', '1437438807', '1', '添加属性: 袖长', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('216', '1437438831', '1', '添加属性: 功能', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('217', '1437438893', '1', '编辑商品类型: 服饰鞋帽', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('218', '1437438910', '1', '添加属性: 材质', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('219', '1437438922', '1', '添加属性: 裙长', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('220', '1437438932', '1', '添加属性: 领型', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('221', '1437438940', '1', '添加属性: 袖型', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('222', '1437438949', '1', '添加属性: 版型', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('223', '1437439055', '1', '编辑属性: 颜色', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('224', '1437439083', '1', '编辑属性: 颜色', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('225', '1437439089', '1', '编辑属性: 颜色', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('226', '1437439268', '1', '编辑属性: 商品产地', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('227', '1437439278', '1', '编辑商品类型: 服饰鞋帽', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('228', '1437439288', '1', '编辑属性: 颜色', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('229', '1437439291', '1', '编辑属性: 颜色', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('230', '1437439596', '1', '编辑属性: 分辨率', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('231', '1437439739', '1', '编辑属性: 频率', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('232', '1437439800', '1', '编辑属性: 核数', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('233', '1437439890', '1', '编辑属性: 前置摄像头', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('234', '1437439983', '1', '编辑属性: 后置摄像头', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('235', '1437439992', '1', '编辑属性: 前置摄像头', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('236', '1437440099', '1', '编辑属性: 屏幕尺寸', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('237', '1437440137', '1', '编辑属性: 系统', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('238', '1437440474', '1', '编辑属性: 有效像素', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('239', '1437440573', '1', '编辑属性: 液晶屏尺寸', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('240', '1437440790', '1', '编辑属性: 分类', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('241', '1437441478', '1', '编辑属性: 用途', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('242', '1437441750', '1', '删除广告位置: ', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('243', '1437441792', '1', '删除广告位置: ', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('244', '1437441795', '1', '删除广告位置: ', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('245', '1437441810', '1', '删除广告位置: ', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('246', '1437441813', '1', '删除广告位置: ', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('247', '1437442061', '1', '删除文章: 买插座.就买公牛', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('248', '1437442067', '1', '删除文章: 妈妈营养品满就送好礼', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('249', '1437442068', '1', '删除文章: ', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('250', '1437442069', '1', '删除文章: 买婴幼儿防护用品送18元', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('251', '1437442069', '1', '删除文章: ', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('252', '1437442131', '1', '删除文章: ', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('253', '1437442132', '1', '删除文章: 白酒75折起 买就返50元购物券', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('254', '1437442133', '1', '删除文章: 金樱花牌豆豉鲮鱼罐头第二轮促销', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('255', '1437442135', '1', '删除文章: 买王裔佳干货满40元送食用油', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('256', '1437442139', '1', '删除商品分类: ', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('257', '1437442307', '1', '编辑文章: 广告通栏1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('258', '1437442318', '1', '编辑文章: 广告通栏2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('259', '1437442423', '1', '编辑广告位置: 首页-分类ID1-右侧图片', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('260', '1437442425', '1', '编辑广告位置: 首页-分类ID1-左侧图片', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('261', '1437442428', '1', '编辑广告位置: 首页-分类ID1右侧广告1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('262', '1437442434', '1', '编辑广告位置: 首页-分类ID1右侧广告2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('263', '1437442436', '1', '编辑广告位置: 首页-分类ID1右侧广告1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('264', '1437442438', '1', '编辑广告位置: 首页-分类ID1通栏广告', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('265', '1437442504', '1', '删除广告位置: ', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('266', '1437442542', '1', '添加广告: 首页-分类ID7-左侧图片', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('267', '1437442554', '1', '编辑广告: 首页-分类ID1-左侧图片', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('268', '1437442614', '1', '删除广告位置: ', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('269', '1437443088', '1', '添加广告位置: 首页专题广告1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('270', '1437443154', '1', '删除广告位置: ', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('271', '1437443217', '1', '添加广告位置: 首页专题广告1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('272', '1437443255', '1', '删除广告位置: ', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('273', '1437443325', '1', '添加广告位置: 首页专题广告1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('274', '1437443484', '1', '添加广告位置: 首页专题广告2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('275', '1437443502', '1', '添加广告位置: 首页专题广告3', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('276', '1437443514', '1', '添加广告位置: 首页专题广告4', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('277', '1437443526', '1', '添加广告位置: 首页专题广告5', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('278', '1437443598', '1', '添加广告: 首页专题广告1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('279', '1437443618', '1', '添加广告: 首页专题广告2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('280', '1437443639', '1', '添加广告: 首页专题广告3', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('281', '1437443671', '1', '添加广告: 首页专题广告4', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('282', '1437443689', '1', '添加广告: 首页专题广告5', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('283', '1437443895', '1', '添加广告位置: 首页-店铺-左侧广告', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('284', '1437443914', '1', '添加广告位置: 首页-店铺-右侧广告', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('285', '1437443964', '1', '添加广告: 首页-店铺-左侧广告', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('286', '1437443987', '1', '添加广告: 首页-店铺-右侧广告', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('287', '1437444109', '1', '编辑广告: 首页-店铺-左侧广告', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('288', '1437445905', '1', '编辑商品分类: 奇异果猕猴桃', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('289', '1437445922', '1', '编辑商品分类: 奇异果猕猴桃', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('290', '1437445930', '1', '编辑商品分类: 芒果桃李', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('291', '1437445941', '1', '编辑商品分类: 凤梨蓝莓', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('292', '1437445961', '1', '编辑商品分类: 果冻', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('293', '1437445969', '1', '编辑商品分类: 软糖', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('294', '1437445977', '1', '编辑商品分类: 奶糖', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('295', '1437445991', '1', '编辑商品分类: 棒棒糖', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('296', '1437446001', '1', '编辑商品分类: 口香糖', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('297', '1437446015', '1', '编辑商品分类: 杏仁', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('298', '1437446027', '1', '编辑商品分类: 红枣', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('299', '1437446063', '1', '编辑商品分类: 风衣', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('300', '1437446083', '1', '编辑商品分类: 风衣', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('301', '1437446098', '1', '编辑商品分类: 拉杆箱', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('302', '1437446110', '1', '编辑商品分类: POLO衫', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('303', '1437446123', '1', '编辑商品分类: 连衣裙', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('304', '1437446141', '1', '编辑商品分类: 连体裤', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('305', '1437446166', '1', '编辑商品分类: 高跟鞋', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('306', '1437446180', '1', '编辑商品分类: 登山鞋', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('307', '1437446192', '1', '编辑商品分类: 短外套', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('308', '1437446220', '1', '编辑商品分类: 迷彩裤', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('309', '1437446237', '1', '编辑商品分类: 唇部', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('310', '1437446248', '1', '编辑商品分类: 腮红', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('311', '1437446298', '1', '编辑商品分类: 底妆', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('312', '1437446322', '1', '编辑商品分类: 眼部', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('313', '1437446333', '1', '编辑商品分类: 香水', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('314', '1437446346', '1', '编辑商品分类: 颈部', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('315', '1437446361', '1', '编辑商品分类: 手足', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('316', '1437446374', '1', '编辑商品分类: 沐浴', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('317', '1437446388', '1', '编辑商品分类: 润肤', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('318', '1437446402', '1', '编辑商品分类: 体感车', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('319', '1437446412', '1', '编辑商品分类: 智能眼镜', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('320', '1437446423', '1', '编辑商品分类: 智能手环', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('321', '1437446435', '1', '编辑商品分类: 智能家居', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('322', '1437446445', '1', '编辑商品分类: 智能手表', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('323', '1437446458', '1', '编辑商品分类: 联通4G', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('324', '1437446470', '1', '编辑商品分类: 电信4G', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('325', '1437446486', '1', '编辑商品分类: iPhone', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('326', '1437446499', '1', '编辑商品分类: 电池', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('327', '1437497260', '1', '添加: 精选,女人,男人,家装,母婴,美妆,美食,数码', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('328', '1437497859', '1', '添加广告位置: 首页幻灯片-小图下1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('329', '1437497872', '1', '添加广告位置: 首页幻灯片-小图下2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('330', '1437497880', '1', '添加广告位置: 首页幻灯片-小图下3', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('331', '1437497920', '1', '添加广告: 首页幻灯片-小图下1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('332', '1437497944', '1', '添加广告: 首页幻灯片-小图下2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('333', '1437497969', '1', '添加广告: 首页幻灯片-小图下3', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('334', '1437498121', '1', '添加广告位置: 首页-分类ID1-左侧图片', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('335', '1437498153', '1', '编辑商品类型: 服饰鞋帽', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('336', '1437498186', '1', '添加广告: 首页-分类ID1-左侧图片', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('337', '1437498202', '1', '添加广告位置: 首页-分类ID2-左侧图片', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('338', '1437498214', '1', '添加广告位置: 首页-分类ID3-左侧图片', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('339', '1437498225', '1', '添加广告位置: 首页-分类ID4-左侧图片', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('340', '1437498238', '1', '添加广告位置: 首页-分类ID5-左侧图片', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('341', '1437498255', '1', '添加广告位置: 首页-分类ID6-左侧图片', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('342', '1437498267', '1', '添加广告位置: 首页-分类ID7-左侧图片', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('343', '1437498282', '1', '添加广告位置: 首页-分类ID8-左侧图片', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('344', '1437498339', '1', '添加广告: 首页-分类ID2-左侧图片', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('345', '1437498376', '1', '添加广告: 首页-分类ID3-左侧图片', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('346', '1437498403', '1', '添加广告: 首页-分类ID4-左侧图片', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('347', '1437498451', '1', '添加广告: 首页-分类ID5-左侧图片', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('348', '1437498475', '1', '添加广告: 首页-分类ID6-左侧图片', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('349', '1437498478', '1', '编辑属性: 闭合方式', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('350', '1437498503', '1', '添加广告: 首页-分类ID7-左侧图片', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('351', '1437498527', '1', '编辑属性: 鞋跟形状', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('352', '1437498527', '1', '添加广告: 首页-分类ID8-左侧图片', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('353', '1437498557', '1', '编辑广告: 首页-分类ID1-左侧图片', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('354', '1437498732', '1', '添加广告位置: 首页-分类ID1右侧广告1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('355', '1437498742', '1', '添加广告位置: 首页-分类ID1右侧广告2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('356', '1437498769', '1', '编辑属性: 鞋底材质', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('357', '1437498774', '1', '添加广告: 首页-分类ID1右侧广告1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('358', '1437498791', '1', '添加广告: 首页-分类ID1右侧广告2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('359', '1437498814', '1', '添加广告位置: 首页-分类ID2右侧广告1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('360', '1437498825', '1', '添加广告位置: 首页-分类ID2右侧广告2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('361', '1437498928', '1', '添加广告: 首页-分类ID2右侧广告1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('362', '1437498984', '1', '添加广告: 首页-分类ID2右侧广告2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('363', '1437499006', '1', '编辑属性: 帮面材质', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('364', '1437499016', '1', '编辑属性: 鞋底材质', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('365', '1437499016', '1', '添加广告位置: 首页-分类ID3右侧广告1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('366', '1437499025', '1', '添加广告位置: 首页-分类ID3右侧广告2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('367', '1437499098', '1', '添加广告: 首页-分类ID3右侧广告1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('368', '1437499120', '1', '编辑属性: 适用对象', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('369', '1437499126', '1', '添加广告: 首页-分类ID3右侧广告2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('370', '1437499139', '1', '添加广告位置: 首页-分类ID4右侧广告1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('371', '1437499148', '1', '添加广告位置: 首页-分类ID4右侧广告2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('372', '1437499176', '1', '添加广告: 首页-分类ID4右侧广告1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('373', '1437499198', '1', '添加广告: 首页-分类ID4右侧广告2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('374', '1437499211', '1', '添加广告位置: 首页-分类ID5右侧广告1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('375', '1437499219', '1', '添加广告位置: 首页-分类ID5右侧广告2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('376', '1437499305', '1', '添加广告: 首页-分类ID5右侧广告1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('377', '1437499387', '1', '添加广告: 首页-分类ID5右侧广告2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('378', '1437499401', '1', '添加广告位置: 首页-分类ID6右侧广告1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('379', '1437499413', '1', '添加广告位置: 首页-分类ID6右侧广告2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('380', '1437499475', '1', '添加广告: 首页-分类ID6右侧广告1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('381', '1437499494', '1', '编辑属性: 风格', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('382', '1437499497', '1', '添加广告: 首页-分类ID6右侧广告2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('383', '1437499550', '1', '添加广告位置: 首页-分类ID7右侧广告1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('384', '1437499570', '1', '添加广告位置: 首页-分类ID7右侧广告2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('385', '1437499811', '1', '编辑属性: 制作工艺', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('386', '1437499932', '1', '添加广告: 首页-分类ID7右侧广告1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('387', '1437499958', '1', '添加广告: 首页-分类ID7右侧广告2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('388', '1437499970', '1', '添加广告位置: 首页-分类ID8右侧广告1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('389', '1437499981', '1', '添加广告位置: 首页-分类ID8右侧广告2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('390', '1437500144', '1', '添加广告: 首页-分类ID8右侧广告1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('391', '1437500155', '1', '编辑属性: 内里材质', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('392', '1437500228', '1', '编辑属性: 跟高', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('393', '1437500234', '1', '添加广告: 首页-分类ID8右侧广告2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('394', '1437500339', '1', '添加广告位置: 首页-分类ID1通栏广告', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('395', '1437500451', '1', '添加广告: 首页-分类ID1通栏广告', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('396', '1437500464', '1', '添加广告位置: 首页-分类ID4通栏广告', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('397', '1437500501', '1', '添加广告: 首页-分类ID4通栏广告', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('398', '1437500513', '1', '添加广告位置: 首页-分类ID8通栏广告', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('399', '1437500529', '1', '添加广告: 首页-分类ID8通栏广告', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('400', '1437500573', '1', '编辑属性: 图案', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('401', '1437500762', '1', '编辑属性: 腰型', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('402', '1437500884', '1', '添加商品: 佳沛新西兰绿奇异果36个（原装）进口Zespri猕猴桃 新鲜水果准妈妈爱吃', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('403', '1437500988', '1', '编辑属性: 鞋头', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('404', '1437501058', '1', '编辑商品: 佳沛新西兰绿奇异果36个（原装）进口Zespri猕猴桃 新鲜水果准妈妈爱吃', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('405', '1437501089', '1', '编辑属性: 裙型', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('406', '1437501414', '1', '添加商品: 【天天果园】佳沛新西兰阳光金奇异果原装33个 zepris猕猴桃进口金果新鲜水果准妈妈', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('407', '1437501437', '1', '编辑商品: 【天天果园】佳沛新西兰阳光金奇异果原装33个 zepris猕猴桃进口金果新鲜水果准妈妈', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('408', '1437501444', '1', '编辑属性: 风格', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('409', '1437501601', '1', '添加商品: 美国西北车厘子 1斤装 进口水果新鲜樱桃水果', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('410', '1437501633', '1', '编辑商品: 美国西北车厘子 1斤装 进口水果新鲜樱桃水果', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('411', '1437501681', '1', '编辑属性: 袖长', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('412', '1437501961', '1', '添加商品: 加拿大樱桃 2斤装 车厘子 樱桃 进口水果 新鲜水果', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('413', '1437501980', '1', '编辑商品: 加拿大樱桃 2斤装 车厘子 樱桃 进口水果 新鲜水果', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('414', '1437502243', '1', '编辑商品: 加拿大樱桃 2斤装 车厘子 樱桃 进口水果 新鲜水果', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('415', '1437502904', '1', '添加商品: 半壳扇贝 扇贝肉 1000g/新鲜扇贝冷冻烧烤海鲜 ', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('416', '1437502955', '1', '编辑商品: 半壳扇贝 扇贝肉 1000g/新鲜扇贝冷冻烧烤海鲜 ', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('417', '1437503001', '1', '编辑商品: 半壳扇贝 扇贝肉 1000g/新鲜扇贝冷冻烧烤海鲜', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('418', '1437503036', '1', '添加商品: 【宅鲜配】半壳扇贝 扇贝肉 1000g/新鲜扇贝冷冻烧烤海鲜 ', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('419', '1437503112', '1', '添加商品: 新西兰红玫瑰苹果queen4个（约180g/个）', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('420', '1437503116', '1', '添加商品: 小金蛋女童皮鞋儿童公主鞋韩版单鞋休闲女童鞋翅膀鞋2015新款秋款 ', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('421', '1437503128', '1', '编辑商品: 新西兰红玫瑰苹果queen4个（约180g/个）', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('422', '1437503149', '1', '编辑商品: 【宅鲜配】半壳扇贝 扇贝肉 1000g/新鲜扇贝冷冻烧烤海鲜 ', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('423', '1437503270', '1', '添加商品: 小金蛋童鞋女童皮鞋韩版真皮公主鞋宝宝单鞋儿童皮鞋2015秋季新款 ', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('424', '1437503428', '1', '添加商品: 越南红心火龙果5斤装 红肉火龙果 新鲜进口水果', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('425', '1437503527', '1', '添加商品: 七果果 越南白心火龙果1斤【3斤起拍，只多不少】 毁包赔 进口新鲜水果 堪比红心火龙果', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('426', '1437503557', '1', '添加商品: 大童装女童夏装套装2015夏季新款', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('427', '1437503573', '1', '添加商品: 诚绿丰 越南进口红肉火龙果 新鲜水果红心火龙果 江浙沪皖包邮 1斤装', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('428', '1437503630', '1', '添加商品: 哥伦比亚金燕窝果 新鲜进口水果 麒麟果 黄色白心火龙果 4只', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('429', '1437503656', '1', '添加商品: 韩版潮儿童衣服中大童短袖短裤休闲套装夏季', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('430', '1437503698', '1', '添加商品: 畅享礼盒 奇异果火龙果佳节送礼进口新鲜水果', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('431', '1437503724', '1', '添加商品: 中大童女孩时尚短袖纱裙儿童韩版公主裙子 ', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('432', '1437503839', '1', '添加商品: 奥特曼迪加咸蛋超人童装套男夏装2015夏', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('433', '1437503890', '1', '编辑商品: 畅享礼盒 奇异果火龙果佳节送礼进口新鲜水果', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('434', '1437504012', '1', '编辑商品: 畅享礼盒 奇异果火龙果佳节送礼进口新鲜水果', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('435', '1437504076', '1', '添加商品: 宝宝水杯儿童吸管杯迪士尼幼儿喝水杯', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('436', '1437504111', '1', '添加商品: 佳沛新西兰阳光金奇异果12个/进口猕猴桃/新鲜水果', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('437', '1437504146', '1', '添加商品: 恩诺童新生儿奶瓶宝宝宽口径ppsu婴儿奶瓶', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('438', '1437504174', '1', '添加商品: 美国空运车厘子 新鲜水果进口大樱桃 2斤装', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('439', '1437504225', '1', '添加商品: 进口 新鲜水果 车厘子1000g', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('440', '1437504375', '1', '添加商品: 悦胜 挪威超新鲜三文鱼 三文鱼中段刺身进口海鲜 广东2份包邮 三文鱼新鲜 500g', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('441', '1437504443', '1', '添加商品: 蟹黄包180g 火锅丸子澳门豆捞食材蟹籽包 蟹子丸 海鲜水产 鱼丸蟹类制品', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('442', '1437504801', '1', '编辑商品: 恩诺童新生儿奶瓶宝宝宽口径ppsu婴儿奶瓶带手柄防摔吸管硅胶奶嘴', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('443', '1437504818', '1', '编辑商品: 宝宝水杯儿童吸管杯迪士尼幼儿喝水杯子带手柄防漏学饮杯婴儿水壶', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('444', '1437504830', '1', '编辑商品: 奥特曼迪加咸蛋超人童装套男夏装2015夏中大童短袖t恤儿童款套装', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('445', '1437504873', '1', '编辑商品: 2015新款女童夏季连衣裙中大童女孩时尚短袖纱裙儿童韩版公主裙子', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('446', '1437504885', '1', '编辑商品: 童装女童2015新款夏装韩版潮儿童衣服中大童短袖短裤休闲套装夏季', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('447', '1437504896', '1', '编辑商品: 大童装女童夏装套装2015夏季新款儿童短袖女孩运动两件套宝宝短裤', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('448', '1437504911', '1', '编辑商品: 小金蛋女童皮鞋儿童公主鞋韩版单鞋休闲女童鞋翅膀鞋2015新款秋款', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('449', '1437504921', '1', '编辑商品: 小金蛋童鞋女童皮鞋 可爱卡通装饰 甜美公主范 优质纯牛皮', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('450', '1437505162', '1', '编辑商品: 小金蛋童鞋女童皮鞋 可爱卡通装饰 甜美公主范 优质纯牛皮', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('451', '1437505924', '1', '编辑商品: 大童装女童夏装套装2015夏季新款儿童短袖女孩运动两件套宝宝短裤', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('452', '1437505956', '1', '添加商品: 韩国进口X-5花生夹心巧克力棒盒装（24根）864g', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('453', '1437505965', '1', '编辑商品: 小金蛋女童皮鞋儿童公主鞋韩版单鞋休闲女童鞋翅膀鞋2015新款秋款', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('454', '1437505984', '1', '编辑商品: 韩国进口X-5花生夹心巧克力棒盒装（24根）864g', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('455', '1437506048', '1', '编辑商品: 童装女童2015新款夏装韩版潮儿童衣服中大童短袖短裤休闲套装夏季', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('456', '1437506096', '1', '添加商品: Ferrero/费列罗 意大利进口威化榛果巧克力30粒礼盒装 生日礼物送女友情人节', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('457', '1437506140', '1', '添加商品: 进口费列罗巧克力礼盒DIY心形27粒【顺丰包邮】【代写贺卡】七夕礼物生日创意礼品', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('458', '1437506177', '1', '编辑商品: 2015新款女童夏季连衣裙中大童女孩时尚短袖纱裙儿童韩版公主裙子', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('459', '1437506200', '1', '编辑商品: 进口费列罗巧克力礼盒DIY心形27粒【顺丰包邮】【代写贺卡】七夕礼物生日创意礼品', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('460', '1437506293', '1', '添加商品: 意大利费列罗巧克力食品进口零食礼盒576粒整箱装结婚喜糖', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('461', '1437506331', '1', '编辑商品: 意大利费列罗巧克力食品进口零食礼盒576粒整箱装结婚喜糖', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('462', '1437506346', '1', '编辑商品: 进口费列罗巧克力礼盒DIY心形27粒【顺丰包邮】【代写贺卡】七夕礼物生日创意礼品', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('463', '1437506351', '1', '编辑商品: 奥特曼迪加咸蛋超人童装套男夏装2015夏中大童短袖t恤儿童款套装', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('464', '1437506372', '1', '编辑商品: Ferrero/费列罗 意大利进口威化榛果巧克力30粒礼盒装 生日礼物送女友情人节', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('465', '1437506467', '1', '添加商品: 日本进口 KRACIE（KRACIE）牌玫瑰香味糖果32g', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('466', '1437506667', '1', '编辑商品: 日本进口 KRACIE（KRACIE）牌玫瑰香味糖果32g', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('467', '1437506811', '1', '添加商品: 台湾进口 百年老店糖之坊夏威夷果牛轧糖奶糖（蔓越莓味）120克', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('468', '1437506821', '1', '编辑商品: 台湾进口 百年老店糖之坊夏威夷果牛轧糖奶糖（蔓越莓味）120克', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('469', '1437506893', '1', '添加商品: Lindt瑞士莲黑巧克力特醇排装德国进口 70%可可黑巧克力10块组合 特惠分享装', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('470', '1437506920', '1', '编辑商品: Lindt瑞士莲黑巧克力特醇排装德国进口 70%可可黑巧克力10块组合 特惠分享装', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('471', '1437507221', '1', '添加商品: 夏装新款修身假两件无袖绣花蕾丝连衣裙', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('472', '1437507487', '1', '添加商品: 夏装甜美爱心提花蕾丝连衣裙女 宽松欧根纱背心裙', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('473', '1437507621', '1', '编辑属性: 尺码', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('474', '1437507728', '1', '编辑商品: 夏装甜美爱心提花蕾丝连衣裙女 宽松欧根纱背心裙', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('475', '1437507946', '1', '编辑商品: 夏装甜美爱心提花蕾丝连衣裙女 宽松欧根纱背心裙', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('476', '1437508016', '1', '商品: 34', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('477', '1437508016', '1', '商品: 34', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('478', '1437508016', '1', '商品: 34', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('479', '1437508016', '1', '商品: 34', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('480', '1437508016', '1', '商品: 34', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('481', '1437508052', '1', '批量回收商品: ', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('482', '1437508105', '1', '编辑商品: 夏装甜美爱心提花蕾丝连衣裙女 宽松欧根纱背心裙', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('483', '1437508126', '1', '编辑商店设置: ', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('484', '1437508226', '1', '添加商品: 米妮哈鲁童装2015夏装新款女童韩版蕾丝连衣裙碎花公主裙', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('485', '1437508512', '1', '编辑商品: 米妮哈鲁童装2015夏装新款女童韩版蕾丝连衣裙碎花公主裙', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('486', '1437508564', '1', '添加商品: 荷叶边欧根纱刺绣短袖镂空蕾丝连衣裙 夏韩系小香风短裙A字连衣裙', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('487', '1437508636', '1', '编辑商品: 荷叶边欧根纱刺绣短袖镂空蕾丝连衣裙 夏韩系小香风短裙A字连衣裙', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('488', '1437508690', '1', '商品: 36', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('489', '1437508690', '1', '商品: 36', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('490', '1437508690', '1', '商品: 36', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('491', '1437508690', '1', '商品: 36', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('492', '1437508751', '1', '编辑商品: 米妮哈鲁童装2015夏装新款女童韩版蕾丝连衣裙碎花公主裙', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('493', '1437508806', '1', '添加商品: 笛莎（DEESHA）新品女童儿童装纯洁清新气质', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('494', '1437508918', '1', '添加商品: 高端2015夏装新款修身淑坊女女装蕾丝短袖复古森女连衣裙装', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('495', '1437514275', '1', '编辑商品: 高端2015夏装新款修身淑坊女女装蕾丝短袖复古森女连衣裙装', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('496', '1437514333', '1', '编辑商品: 高端2015夏装新款修身淑坊女女装蕾丝短袖复古森女连衣裙装', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('497', '1437514353', '1', '商品: 38', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('498', '1437514353', '1', '商品: 38', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('499', '1437515362', '0', '添加商品: 斯乃纳至悦精品中童鞋 女童皮鞋高跟蝴蝶结公主鞋', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('500', '1437515363', '1', '添加商品: 伊芙丽秋装新款翻领小西装女 2015新款 西装外套女春秋', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('501', '1437515470', '1', '编辑商品: 伊芙丽秋装新款翻领小西装女 2015新款 西装外套女春秋', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('502', '1437515470', '0', '添加商品: 小金蛋女宝宝皮鞋夏真皮女童秋鞋公主鞋', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('503', '1437515493', '1', '商品: 40', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('504', '1437515493', '1', '商品: 40', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('505', '1437515581', '1', '编辑商品: 伊芙丽秋装新款翻领小西装女 2015新款 西装外套女春秋', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('506', '1437515742', '1', '添加商品: 2015新款修身开衫短款七分袖小西装女薄网纱披肩防晒衫小外套女夏', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('507', '1437515785', '0', '添加商品: 恩诺童新生儿奶瓶宝宝宽口径ppsu婴儿奶瓶', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('508', '1437515814', '1', '编辑商品: 2015新款修身开衫短款七分袖小西装女薄网纱披肩防晒衫小外套女夏', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('509', '1437515826', '1', '商品: 42', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('510', '1437515947', '0', '添加商品: 第七公社 一家三口亲子装夏装2015卡通人物', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('511', '1437516035', '1', '添加商品: 2015夏装韩版修身白色小西装女薄外套', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('512', '1437516048', '1', '商品: 45', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('513', '1437516048', '1', '商品: 45', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('514', '1437516342', '1', '添加商品: 2015夏季小西装女外套夏装薄款韩版修身短款小西服', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('515', '1437516355', '1', '商品: 46', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('516', '1437516355', '1', '商品: 46', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('517', '1437516432', '0', '添加商品: 大男童春秋马甲童装 男童西装纯棉', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('518', '1437516602', '0', '添加商品:       安踏品牌童装男童短袖POLO衫运动服装纯棉大童男装2015夏季新款35528113 BC06花灰 160cm     安踏品牌童装男童短袖POLO衫运动服装纯棉大童男装2015夏季新款35528113 BC06花灰 160cm     安踏品牌童装男童短袖POLO衫运动服装纯棉大童男装2015夏季新款35528113 BC06花灰 160cm     安踏品牌童装男童短袖POLO衫运动服装纯棉大童男装2015夏季新款35528113 BC06花灰 160cm     安踏品牌童装男', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('519', '1437517210', '0', '添加商品: 安琦诺 夏装新品孕妇装 韩版休闲外出服喂奶衣套装', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('520', '1437519036', '0', '编辑商品: 安琦诺 夏装新品孕妇装 韩版休闲外出服喂奶衣套装', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('521', '1437519156', '0', '编辑商品: 安琦诺 夏装新品孕妇装 韩版休闲外出服喂奶衣套装', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('522', '1437519184', '0', '编辑商品: 安琦诺 夏装新品孕妇装 韩版休闲外出服喂奶衣套装', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('523', '1437519215', '0', '商品: 49', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('524', '1437519215', '0', '商品: 49', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('525', '1437519215', '0', '商品: 49', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('526', '1437519215', '0', '商品: 49', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('527', '1437519256', '1', '添加商品: 坚果炒货零食特产扁桃仁235gx2袋', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('528', '1437519349', '1', '编辑商品: Ferrero/费列罗 意大利进口威化榛果巧克力30粒礼盒装 生日礼物送女友情人节', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('529', '1437519371', '0', '编辑商品: 安踏品牌童装男童短袖POLO衫运动服', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('530', '1437519425', '0', '编辑商品: 安踏品牌童装男童短袖POLO衫运动服', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('531', '1437519432', '0', '商品: 48', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('532', '1437519511', '0', '编辑商品: 大男童春秋马甲童装 男童西装纯棉', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('533', '1437519534', '1', '编辑商品: 坚果炒货零食特产扁桃仁235gx2袋', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('534', '1437519674', '1', '添加商品: 高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('535', '1437519681', '1', '编辑商品: 第七公社 一家三口亲子装夏装2015卡通人物', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('536', '1437519711', '1', '编辑商品: 小金蛋女宝宝皮鞋夏真皮女童秋鞋公主鞋', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('537', '1437519719', '1', '编辑商品: 高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('538', '1437519724', '1', '编辑商品: 斯乃纳至悦精品中童鞋 女童皮鞋高跟蝴蝶结公主鞋', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('539', '1437519734', '1', '编辑商品: 坚果炒货零食特产扁桃仁235gx2袋', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('540', '1437519780', '1', '编辑商品: 高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('541', '1437519782', '1', '编辑商品: 笛莎（DEESHA）新品女童儿童装纯洁清新气质', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('542', '1437519790', '1', '商品: 51', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('543', '1437519817', '1', '编辑商品: 米妮哈鲁童装2015夏装新款女童韩版蕾丝连衣裙碎花公主裙', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('544', '1437519847', '1', '添加商品: 昆仑玉红枣 和田香枣二级500g 新疆特产 免洗零食 和田大枣子', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('545', '1437519866', '1', '编辑商品: 高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('546', '1437519930', '1', '添加商品: 南非进口西柚8个约300-330g/个红心柚子新鲜红宝石柚子', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('547', '1437520142', '1', '添加商品: 墨西哥牛油果9个 牛油果 鳄梨 牛油果水果 21-24号发', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('548', '1437520360', '1', '编辑商品: 墨西哥牛油果9个 牛油果 鳄梨 牛油果水果 21-24号发', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('549', '1437520374', '1', '编辑商品: 南非进口西柚8个约300-330g/个红心柚子新鲜红宝石柚子', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('550', '1437520392', '1', '编辑商品: 南非进口西柚8个约300-330g/个红心柚子新鲜红宝石柚子', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('551', '1437520436', '1', '编辑商品: 昆仑玉红枣 和田香枣二级500g 新疆特产 免洗零食 和田大枣子', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('552', '1437520471', '1', '编辑商品: 坚果炒货零食特产扁桃仁235gx2袋', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('553', '1437520567', '1', '添加商品: 嘉云糖 300g玻璃罐装 水果硬糖 喜糖 德国进口', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('554', '1437520572', '1', '添加商品: 2015新品真丝睡衣女款可爱娃娃衫家居服春秋桑蚕丝睡裙', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('555', '1437520599', '1', '编辑商品: 嘉云糖 300g玻璃罐装 水果硬糖 喜糖 德国进口', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('556', '1437520605', '1', '添加商品: Haier/海尔 BCD-216SDN/216L/三门 节能 家用 冷藏冷冻 电冰箱', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('557', '1437520667', '1', '编辑商品: Haier/海尔 BCD-216SDN/216L/三门 节能 家用 冷藏冷冻 电冰箱', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('558', '1437520690', '1', '编辑商品: 意大利费列罗巧克力食品进口零食礼盒576粒整箱装结婚喜糖', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('559', '1437520695', '1', '编辑商品: Haier/海尔 BCD-216SDN/216L/三门 节能 家用 冷藏冷冻 电冰箱', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('560', '1437520709', '1', '编辑商品: 进口费列罗巧克力礼盒DIY心形27粒【顺丰包邮】【代写贺卡】七夕礼物生日创意礼品', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('561', '1437520723', '1', '编辑商品: Ferrero/费列罗 意大利进口威化榛果巧克力30粒礼盒装 生日礼物送女友情人节', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('562', '1437520741', '1', '编辑商品: 2015新品真丝睡衣女款可爱娃娃衫家居服春秋桑蚕丝睡裙', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('563', '1437520749', '1', '编辑商品: 韩国进口X-5花生夹心巧克力棒盒装（24根）864g', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('564', '1437520773', '1', '添加商品: KFR-35GW/ERVMN3z 大1.5匹壁挂式冷暖空调挂机', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('565', '1437520784', '1', '编辑商品: KFR-35GW/ERVMN3z 大1.5匹壁挂式冷暖空调挂机', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('566', '1437520804', '1', '编辑商品: Lindt瑞士莲黑巧克力特醇排装德国进口 70%可可黑巧克力10块组合 特惠分享装', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('567', '1437520811', '1', '编辑商品: 2015新品真丝睡衣女款可爱娃娃衫家居服春秋桑蚕丝睡裙', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('568', '1437520820', '1', '商品: 56', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('569', '1437520820', '1', '编辑商品: 台湾进口 百年老店糖之坊夏威夷果牛轧糖奶糖（蔓越莓味）120克', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('570', '1437520835', '1', '编辑商品: 日本进口 KRACIE（KRACIE）牌玫瑰香味糖果32g', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('571', '1437520837', '1', '编辑商品: 2015新品真丝睡衣女款可爱娃娃衫家居服春秋桑蚕丝睡裙', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('572', '1437520877', '1', '添加商品: Robam/老板26A5+7B16时尚侧吸烟灶套装抽油烟机燃气灶', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('573', '1437520891', '1', '编辑商品: Robam/老板26A5+7B16时尚侧吸烟灶套装抽油烟机燃气灶', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('574', '1437520972', '1', '添加商品: 德国 进口牛奶 欧德堡（Oldenburger）超高温处理全脂纯牛奶1L*12', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('575', '1437520979', '1', '添加商品: Max70智能3D彩电网络平板电视', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('576', '1437520982', '1', '编辑商品: 德国 进口牛奶 欧德堡（Oldenburger）超高温处理全脂纯牛奶1L*12', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('577', '1437520995', '1', '编辑商品: Max70智能3D彩电网络平板电视', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('578', '1437521036', '1', '编辑商品: Max70智能3D彩电网络平板电视', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('579', '1437521058', '1', '添加商品: 澳大利亚 进口牛奶 德运（Devondale） 全脂牛奶 1L*10 整箱装', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('580', '1437521071', '1', '编辑商品: 澳大利亚 进口牛奶 德运（Devondale） 全脂牛奶 1L*10 整箱装', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('581', '1437521075', '1', '添加商品: 真丝睡衣女士夏季桑蚕丝绸春秋家居服性感吊带睡裙', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('582', '1437521098', '1', '编辑商品: 真丝睡衣女士夏季桑蚕丝绸春秋家居服性感吊带睡裙', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('583', '1437521108', '1', '添加商品: shiseido资生堂 安热沙倍呵防晒乳25mL SPF30+儿童专用防晒霜', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('584', '1437521118', '1', '添加商品: SIEMENS/西门子 XQG62-WS12K2601W 6.2kg超薄 变频滚筒洗衣机', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('585', '1437521163', '1', '编辑商品: SIEMENS/西门子 XQG62-WS12K2601W 6.2kg超薄 变频滚筒洗衣机', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('586', '1437521291', '1', '添加商品: 扫地机专属定制无线手持吸尘器/抢10台免单', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('587', '1437521319', '1', '编辑商品: 扫地机专属定制无线手持吸尘器/抢10台免单', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('588', '1437521431', '1', '添加商品: 一米画纱桑蚕丝吊带睡裙女夏季纯色真丝睡衣 ', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('589', '1437521471', '1', '编辑商品: 一米画纱桑蚕丝吊带睡裙女夏季纯色真丝睡衣 ', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('590', '1437521638', '1', '添加商品: 新西兰 原装进口 纯牛奶 纽麦福（ Meadow fresh ）全脂1L*12盒/箱', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('591', '1437521642', '1', '添加商品: 夏季性感吊带真丝睡裙100%桑蚕丝深V睡衣女士纯色蕾丝家居服女', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('592', '1437521651', '1', '编辑商品: 新西兰 原装进口 纯牛奶 纽麦福（ Meadow fresh ）全脂1L*12盒/箱', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('593', '1437521666', '1', '编辑商品: 夏季性感吊带真丝睡裙100%桑蚕丝深V睡衣女士纯色蕾丝家居服女', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('594', '1437521738', '1', '添加商品: 纱桑蚕丝真丝睡衣女士夏季纯色吊带睡裙', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('595', '1437521749', '1', '编辑商品: 纱桑蚕丝真丝睡衣女士夏季纯色吊带睡裙', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('596', '1437521803', '1', '添加商品: 真丝睡衣女士夏季修身性感吊带真丝睡衣裙桑蚕丝睡衣', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('597', '1437521828', '1', '添加商品: 波兰 进口牛奶 日昇（MLEKOVITA）全脂牛奶1L*12盒', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('598', '1437521834', '1', '编辑商品: 真丝睡衣女士夏季修身性感吊带真丝睡衣裙桑蚕丝睡衣', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('599', '1437521848', '1', '编辑商品: 波兰 进口牛奶 日昇（MLEKOVITA）全脂牛奶1L*12盒', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('600', '1437521912', '1', '添加商品: shiseido资生堂 新漾美肌亮润眼霜15mL提拉 紧致去黑眼圈眼袋', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('601', '1437521919', '1', '编辑商品: 真丝睡衣女士夏季修身性感吊带真丝睡衣裙桑蚕丝睡衣', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('602', '1437521951', '1', '编辑商品: 真丝睡衣女士夏季修身性感吊带真丝睡衣裙桑蚕丝睡衣', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('603', '1437521977', '1', '添加商品: 德运Devondale 脱脂高钙奶粉1kg', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('604', '1437521987', '1', '编辑商品: 德运Devondale 脱脂高钙奶粉1kg', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('605', '1437522082', '1', '添加商品: 宾格瑞（BINGGRAE）香蕉味牛奶饮料 200ml*24', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('606', '1437522091', '1', '编辑商品: 宾格瑞（BINGGRAE）香蕉味牛奶饮料 200ml*24', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('607', '1437522136', '1', '添加商品: Midea/美的 KFR-35GW/WPAA3 大1.5匹极速变频冷暖空调 稀土压缩机', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('608', '1437522146', '1', '添加商品: shiseido/资生堂 限量悦薇珀翡基础护理套装 抗老祛黄 面部护理', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('609', '1437522158', '1', '编辑商品: Midea/美的 KFR-35GW/WPAA3 大1.5匹极速变频冷暖空调 稀土压缩机', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('610', '1437522165', '1', '添加商品: 100%桑蚕丝两件套夏季短袖真丝睡衣女套装', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('611', '1437522187', '1', '编辑商品: 100%桑蚕丝两件套夏季短袖真丝睡衣女套装', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('612', '1437522190', '1', '添加商品: 蒙牛 特仑苏 纯牛奶 250ml*12 礼盒装', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('613', '1437522204', '1', '编辑商品: 蒙牛 特仑苏 纯牛奶 250ml*12 礼盒装', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('614', '1437522217', '1', '添加商品: Midea/美的 KFR-72LW/WYAD3 3匹p冷暖定速立式圆形柜机家用空调', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('615', '1437522232', '1', '编辑商品: Midea/美的 KFR-72LW/WYAD3 3匹p冷暖定速立式圆形柜机家用空调', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('616', '1437522264', '1', '添加商品: 伊利 味可滋（巧克力）奶昔乳饮品240ml*12盒', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('617', '1437522270', '1', '添加商品: 大码薄款女士真丝睡衣女夏季丝绸性感100%桑蚕丝睡裙', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('618', '1437522277', '1', '编辑商品: 伊利 味可滋（巧克力）奶昔乳饮品240ml*12盒', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('619', '1437522300', '1', '编辑商品: 大码薄款女士真丝睡衣女夏季丝绸性感100%桑蚕丝睡裙', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('620', '1437522328', '1', '添加商品: 5kg全自动波轮洗衣机 省水省空间', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('621', '1437522343', '1', '编辑商品: 5kg全自动波轮洗衣机 省水省空间', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('622', '1437522463', '1', '添加商品: 资生堂红色蜜露精华化妆液125ml 补水保湿爽肤水', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('623', '1437522479', '1', '添加商品: 美的空调扇单冷遥控制冷风扇冷风机家用净化静音冷气空调AC120-G', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('624', '1437522491', '1', '编辑商品: 资生堂红色蜜露精华化妆液125ml 补水保湿爽肤水', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('625', '1437522493', '1', '编辑商品: 美的空调扇单冷遥控制冷风扇冷风机家用净化静音冷气空调AC120-G', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('626', '1437522519', '1', '编辑商品: 美的空调扇单冷遥控制冷风扇冷风机家用净化静音冷气空调AC120-G', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('627', '1437522598', '1', '添加商品: 海尔HGS-2164手持蒸汽挂烫机家用挂式电熨斗熨烫机正品全国联保', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('628', '1437522610', '1', '编辑商品: 海尔HGS-2164手持蒸汽挂烫机家用挂式电熨斗熨烫机正品全国联保', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('629', '1437522646', '1', '添加商品: shiseido资生堂 盼丽风姿金采丰润柔肤液150mL 水润紧致柔滑肌肤', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('630', '1437522776', '1', '添加商品: 家用静音办公室空调加湿器 香薰迷你大容量净化特价', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('631', '1437522788', '1', '编辑商品: 家用静音办公室空调加湿器 香薰迷你大容量净化特价', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('632', '1437522839', '1', '添加商品: 格力遥控落地扇 家用静音电风扇 7.5小时定时 办公室学生扇 电扇', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('633', '1437522853', '1', '编辑商品: 格力遥控落地扇 家用静音电风扇 7.5小时定时 办公室学生扇 电扇', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('634', '1437522885', '1', '添加商品: 2015新款男装 男士夏季多彩短袖polo衫男 休闲双层立领T恤 ', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('635', '1437522897', '1', '编辑商品: 2015新款男装 男士夏季多彩短袖polo衫男 休闲双层立领T恤 ', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('636', '1437522922', '1', '编辑商品: shiseido资生堂 安热沙倍呵防晒乳25mL SPF30+儿童专用防晒霜', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('637', '1437522928', '1', '添加商品: 海尔ZB401G 家用小型床铺除螨仪 床上除螨机吸尘器 紫外线杀菌', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('638', '1437522939', '1', '编辑商品: 海尔ZB401G 家用小型床铺除螨仪 床上除螨机吸尘器 紫外线杀菌', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('639', '1437522993', '1', '编辑商品: shiseido资生堂 盼丽风姿金采丰润柔肤液150mL 水润紧致柔滑肌肤', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('640', '1437523007', '1', '添加商品: 人气5折杰克琼斯夏纯棉条纹撞色POLO衫短袖T恤', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('641', '1437523024', '1', '编辑商品: 人气5折杰克琼斯夏纯棉条纹撞色POLO衫短袖T恤', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('642', '1437523034', '1', '添加商品: 家用高端直饮净水器WP4160厨房自来水前置过滤器智能净水机', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('643', '1437523047', '1', '编辑商品: 家用高端直饮净水器WP4160厨房自来水前置过滤器智能净水机', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('644', '1437523127', '1', '添加商品: 电熨斗蒸汽家用 手持迷你电烫斗顺滑不粘底板 蒸汽熨斗家用', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('645', '1437523136', '1', '编辑商品: 电熨斗蒸汽家用 手持迷你电烫斗顺滑不粘底板 蒸汽熨斗家用', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('646', '1437523143', '1', '添加商品: 与狼共舞短袖T恤 2015夏装新款 男士Polo衫 男装纯棉翻领', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('647', '1437523157', '1', '编辑商品: 与狼共舞短袖T恤 2015夏装新款 男士Polo衫 男装纯棉翻领', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('648', '1437523226', '1', '添加商品: 2015夏季新品 与狼共舞短袖T恤 男士纯棉翻领多彩polo衫潮', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('649', '1437523238', '1', '编辑商品: 2015夏季新品 与狼共舞短袖T恤 男士纯棉翻领多彩polo衫潮', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('650', '1437523241', '1', '添加商品: 除湿机家用抽湿机20B 地下室别墅吸湿器除湿器', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('651', '1437523250', '1', '添加商品: 雅诗兰黛（Estee Lauder）肌透修护眼部精华霜15ml', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('652', '1437523257', '1', '编辑商品: 除湿机家用抽湿机20B 地下室别墅吸湿器除湿器', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('653', '1437523304', '1', '添加商品: 纯棉牛仔拼接修身男Polo衫', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('654', '1437523325', '1', '编辑商品: 纯棉牛仔拼接修身男Polo衫', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('655', '1437523334', '1', '添加商品: 苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('656', '1437523355', '1', '编辑商品: 苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('657', '1437523363', '1', '添加商品: 美的电磁炉Midea/美的 WK2102电磁炉特价家用触摸屏火锅电池炉灶', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('658', '1437523377', '1', '编辑属性: 颜色', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('659', '1437523379', '1', '编辑商品: 美的电磁炉Midea/美的 WK2102电磁炉特价家用触摸屏火锅电池炉灶', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('660', '1437523399', '1', '编辑商品: 苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('661', '1437523421', '1', '添加商品: Polo衫男短袖 2015夏装男装短袖t恤 男士拼接撞色修身韩版潮', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('662', '1437523439', '1', '编辑商品: 苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('663', '1437523440', '1', '添加商品: Galanz/格兰仕 G90F25CN3L-C2(G2) 微波炉 光波炉 正品', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('664', '1437523450', '1', '添加商品: 雅诗兰黛（Estee Lauder）鲜亮焕采泡沫洁面乳125ml', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('665', '1437523455', '1', '编辑商品: Galanz/格兰仕 G90F25CN3L-C2(G2) 微波炉 光波炉 正品', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('666', '1437523455', '1', '商品: 100', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('667', '1437523455', '1', '商品: 100', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('668', '1437523460', '1', '编辑商品: Polo衫男短袖 2015夏装男装短袖t恤 男士拼接撞色修身韩版潮', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('669', '1437523484', '1', '编辑商品: 苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('670', '1437523490', '1', '添加商品: 法曼斯2015夏装新款长绒棉短袖t恤商务男士休闲天丝翻领纯色上衣', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('671', '1437523502', '1', '编辑商品: 法曼斯2015夏装新款长绒棉短袖t恤商务男士休闲天丝翻领纯色上衣', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('672', '1437523514', '1', '编辑商品: 苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('673', '1437523551', '1', '添加商品:  JYL-D022料理机家用多功能榨汁辅食搅拌机电动绞肉', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('674', '1437523552', '1', '添加商品: 纯棉弹力修身男装商务短袖', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('675', '1437523554', '1', '编辑商品: 苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('676', '1437523565', '1', '编辑商品: 纯棉弹力修身男装商务短袖', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('677', '1437523569', '1', '编辑商品:  JYL-D022料理机家用多功能榨汁辅食搅拌机电动绞肉', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('678', '1437523601', '1', '编辑商店设置: ', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('679', '1437523612', '1', '编辑商店设置: ', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('680', '1437523652', '1', '添加商品: 雅诗兰黛护肤礼盒（眼霜15ML+柔肤霜15ML+晚霜15ML+精华露7ML）', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('681', '1437523676', '1', '添加商品: 空气炸锅HD9233三代智能电炸锅家用薯条机烤架煎鱼盘正品', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('682', '1437523681', '1', '编辑商品: 2015夏季新品 与狼共舞短袖T恤 男士纯棉翻领多彩polo衫潮', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('683', '1437523690', '1', '编辑商品: 空气炸锅HD9233三代智能电炸锅家用薯条机烤架煎鱼盘正品', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('684', '1437523731', '1', '编辑商品: 2015新款男装 男士夏季多彩短袖polo衫男 休闲双层立领T恤 ', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('685', '1437523799', '1', '添加商品: 养生壶玻璃加厚分体保温电煎药壶全自动花茶壶隔水炖正品', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('686', '1437523812', '1', '编辑商品: 养生壶玻璃加厚分体保温电煎药壶全自动花茶壶隔水炖正品', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('687', '1437523830', '1', '编辑商品: 2015夏季新品 与狼共舞短袖T恤 男士纯棉翻领多彩polo衫潮', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('688', '1437523855', '1', '添加商品: 雅诗兰黛（Estee Lauder）青春抗皱滋润霜50ml（中性/混合性）', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('689', '1437523864', '1', '编辑商品: 养生壶玻璃加厚分体保温电煎药壶全自动花茶壶隔水炖正品', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('690', '1437523875', '1', '编辑商品: 空气炸锅HD9233三代智能电炸锅家用薯条机烤架煎鱼盘正品', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('691', '1437523889', '1', '编辑商品:  JYL-D022料理机家用多功能榨汁辅食搅拌机电动绞肉', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('692', '1437523988', '1', '添加商品: 电饼铛 美的 JCN30A蛋糕机 正品悬浮双面加热 家用煎烤机烙饼锅', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('693', '1437524004', '1', '编辑商品: 电饼铛 美的 JCN30A蛋糕机 正品悬浮双面加热 家用煎烤机烙饼锅', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('694', '1437524058', '1', '添加商品: 苹果（Apple）iPhone 6 Plus (A1524) 16GB 金色 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('695', '1437524074', '1', '添加商品: 米酒机酸奶机全自动家用不锈钢正品包邮', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('696', '1437524086', '1', '编辑商品: 米酒机酸奶机全自动家用不锈钢正品包邮', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('697', '1437524138', '1', '编辑商品: 苹果（Apple）iPhone 6 Plus (A1524) 16GB 金色 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('698', '1437524153', '1', '编辑商品: 苹果（Apple）iPhone 6 Plus (A1524) 16GB 金色 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('699', '1437524156', '1', '添加商品: 酸奶机家用全自动8个陶瓷分杯正品特价', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('700', '1437524170', '1', '编辑商品: 酸奶机家用全自动8个陶瓷分杯正品特价', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('701', '1437524194', '1', '商品: 113', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('702', '1437524194', '1', '商品: 113', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('703', '1437524240', '1', '添加商品: 电炖锅砂锅炖盅煮粥煲汤养生紫砂陶瓷', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('704', '1437524258', '1', '编辑商品: 电炖锅砂锅炖盅煮粥煲汤养生紫砂陶瓷', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('705', '1437524324', '1', '编辑商品: 苹果（Apple）iPhone 6 Plus (A1524) 16GB 金色 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('706', '1437524369', '1', '添加商品: 长帝 CKTF-32GS上下独立控温 多功能电烤箱家用烘焙烤箱 正品特价', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('707', '1437524390', '1', '编辑商品:  CKTF-32GS上下独立控温 多功能电烤箱家用烘焙烤箱 正品特价', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('708', '1437524522', '1', '编辑商品: Midea/美的 KFR-35GW/WPAA3 大1.5匹极速变频冷暖空调 稀土压缩机', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('709', '1437524796', '1', '编辑商品: 苹果（Apple）iPhone 6 Plus (A1524) 16GB 金色 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('710', '1437524829', '1', '回收商品: Midea/美的 KFR-35GW/WPAA3 大1.5匹极速变频冷暖空调 稀土压缩机', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('711', '1437524860', '1', '添加商品: Midea/美的 KFR-35GW/WPAA3 大1.5匹极速变频冷暖空调 稀土压缩机', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('712', '1437524872', '1', '编辑商品: Midea/美的 KFR-35GW/WPAA3 大1.5匹极速变频冷暖空调 稀土压缩机', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('713', '1437525155', '0', '添加商品:       艾生活 真皮床双人床 独特围边 精细做工 卧室家具 1.8床+床头柜*1+乳胶床垫     艾生活 真皮床双人床 独特围边 精细做工 卧室家具 1.8床+床头柜*1+乳胶床垫     艾生活 真皮床双人床 独特围边 精细做工 卧室家具 1.8床+床头柜*1+乳胶床垫     艾生活 真皮床双人床 独特围边 精细做工 卧室家具 1.8床+床头柜*1+乳胶床垫     艾生活 真皮床双人床 独特围边 精细做工 卧室家具 1.8床+床头柜*1+乳胶床垫  商品编号：1477100871 ', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('714', '1437525234', '0', '添加商品: 柏年好禾 家具 欧式床 真皮实木床 法式田园公主床', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('715', '1437525273', '1', '回收商品: 扫地机专属定制无线手持吸尘器/抢10台免单', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('716', '1437525290', '1', '回收商品: SIEMENS/西门子 XQG62-WS12K2601W 6.2kg超薄 变频滚筒洗衣机', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('717', '1437525304', '1', '回收商品: Robam/老板26A5+7B16时尚侧吸烟灶套装抽油烟机燃气灶', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('718', '1437525325', '1', '回收商品: Max70智能3D彩电网络平板电视', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('719', '1437525336', '1', '回收商品: KFR-35GW/ERVMN3z 大1.5匹壁挂式冷暖空调挂机', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('720', '1437525359', '1', '回收商品: Haier/海尔 BCD-216SDN/216L/三门 节能 家用 冷藏冷冻 电冰箱', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('721', '1437525390', '1', '回收商品: 5kg全自动波轮洗衣机 省水省空间', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('722', '1437525404', '1', '回收商品: 空气炸锅HD9233三代智能电炸锅家用薯条机烤架煎鱼盘正品', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('723', '1437525478', '1', '添加商品: Midea/美的 KFR-26GW/WJBA3@ 大1匹智能云除甲醛除湿冷暖变频空调', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('724', '1437525509', '1', '编辑商品: Midea/美的 KFR-26GW/WJBA3@ 大1匹智能云除甲醛除湿冷暖变频空调', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('725', '1437525577', '1', '添加商品: 二级大2P智能云定频冷暖柜机空调', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('726', '1437525597', '1', '编辑商品: 二级大2P智能云定频冷暖柜机空调', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('727', '1437525692', '1', '添加商品: SIEMENS/西门子 BCD-610W(KA92NV03TI)双开家用对开门电冰箱无霜', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('728', '1437525706', '1', '编辑商品: SIEMENS/西门子 BCD-610W(KA92NV03TI)双开家用对开门电冰箱无霜', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('729', '1437525813', '1', '添加商品: Haier/海尔 BCD-252WDBD 252升 无霜风冷 冷藏冷冻家用三门冰箱', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('730', '1437525834', '1', '编辑商品: Haier/海尔 BCD-252WDBD 252升 无霜风冷 冷藏冷冻家用三门冰箱', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('731', '1437525885', '1', '添加商品: Haier/海尔 XQG70-B12866电商/7公斤 全自动 变频滚筒 洗衣机', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('732', '1437525897', '1', '编辑商品: Haier/海尔 XQG70-B12866电商/7公斤 全自动 变频滚筒 洗衣机', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('733', '1437525940', '1', '添加商品: Midea/美的 MB60-VT1010H 全自动波轮洗衣机6公斤不锈钢 正品包邮', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('734', '1437525951', '1', '编辑商品: Midea/美的 MB60-VT1010H 全自动波轮洗衣机6公斤不锈钢 正品包邮', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('735', '1437526058', '1', '添加商品: Midea/美的 MK-HJ1501电热水壶不锈钢烧水壶保温自动断电进口温控', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('736', '1437526071', '1', '编辑商品: Midea/美的 MK-HJ1501电热水壶不锈钢烧水壶保温自动断电进口温控', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('737', '1437526169', '1', '回收商品: Midea/美的 KFR-72LW/WYAD3 3匹p冷暖定速立式圆形柜机家用空调', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('738', '1437526257', '1', '添加商品: Gree/格力 KFR-72LW/(72596)FNAa-A3 变频3P立式柜机空调 Q铂', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('739', '1437526271', '1', '编辑商品: Gree/格力 KFR-72LW/(72596)FNAa-A3 变频3P立式柜机空调 Q铂', '192.168.1.111');
INSERT INTO `ecs_admin_log` VALUES ('740', '1437527006', '0', '添加商品: 铂尼诗 家具 床 皮床 卧室家具套装', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('741', '1437527119', '0', '添加商品: 全是美 小户型梳妆台 欧式梳妆台 现代 简约', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('742', '1437527214', '0', '添加商品: 摩登生活 法式梳妆台欧式梳妆台实木梳妆台', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('743', '1437527758', '1', '编辑商品: shiseido资生堂 安热沙倍呵防晒乳25mL SPF30+儿童专用防晒霜', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('744', '1437527774', '1', '编辑商品: shiseido资生堂 新漾美肌亮润眼霜15mL提拉 紧致去黑眼圈眼袋', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('745', '1437527827', '1', '编辑商品: shiseido/资生堂 限量悦薇珀翡基础护理套装 抗老祛黄 面部护理', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('746', '1437527868', '1', '编辑商品: 雅诗兰黛（Estee Lauder）肌透修护眼部精华霜15ml', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('747', '1437528103', '1', '添加商品: 相宜本草红景天3件套（洁面膏100g+精华水120ml+精华乳120g+送红景天幼白精华水20ml+红景天幼白精华乳20g）', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('748', '1437528350', '1', '添加商品: 相宜本草光彩立现睡眠面膜(净白莹润)135g', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('749', '1437528500', '1', '添加商品: 迪奥新魅惑淡香水5ml', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('750', '1437528636', '1', '添加商品: 迪奥真我香水50ml', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('751', '1437528720', '1', '添加商品: Dior迪奥唇膏/变色润唇膏/粉红魅惑润唇膏3.5g 润唇蜜/口红 唇彩 唇膏', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('752', '1437528729', '1', '编辑商品: Dior迪奥唇膏/变色润唇膏/粉红魅惑润唇膏3.5g 润唇蜜/口红 唇彩 唇膏', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('753', '1437528855', '0', '添加商品:       LOVO 罗莱家纺出品全棉斜纹床品套件四件套 兔斯基 乐忆 200*230     LOVO 罗莱家纺出品全棉斜纹床品套件四件套 兔斯基 乐忆 200*230     LOVO 罗莱家纺出品全棉斜纹床品套件四件套 兔斯基 乐忆 200*230     LOVO 罗莱家纺出品全棉斜纹床品套件四件套 兔斯基 乐忆 200*230     LOVO 罗莱家纺出品全棉斜纹床品套件四件套 兔斯基 乐忆 200*230     LOVO 罗莱家纺出品全棉斜纹床品套件四件套 兔斯基 乐忆 200', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('754', '1437528884', '1', '添加商品: SK-II护肤精华露75ml', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('755', '1437528892', '0', '添加商品: 优雅100 经典设计款全棉斜纹印花四件套', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('756', '1437528915', '0', '添加商品: 雅鹿全棉四件套纯棉套件床上用品 回忆蓝 1.8米床', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('757', '1437529046', '1', '添加商品: 韩束 红石榴鲜活水盈七件套（洗面奶/爽肤水/乳液/眼霜）', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('758', '1437529449', '1', '添加商品: 兰芝夜间修护睡眠面膜70ml', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('759', '1437529544', '1', '添加商品: 小米（MI）小米Note 移动联通双4G 特别版(16G ROM)', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('760', '1437529582', '1', '添加商品: CK卡文克莱卡莱优淡香水100ML ck香水', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('761', '1437529603', '1', '编辑商品: 小米（MI）小米Note 移动联通双4G 特别版(16G ROM)', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('762', '1437529648', '1', '编辑商品: 小米（MI）小米Note 移动联通双4G 特别版(16G ROM)', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('763', '1437529667', '1', '商品: 143', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('764', '1437529667', '1', '商品: 143', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('765', '1437529791', '1', '编辑商品分类: 手机数码', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('766', '1437529875', '1', '添加商品: 海飞丝去屑洗发露(海洋活力型)750ml', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('767', '1437530004', '1', '添加商品: 水之密语 凝润水护护发素600ml', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('768', '1437530022', '1', '添加商品: 【套装版】荣耀 6 Plus (PE-TL20) 3GB内存标准版 白色 移动4G手机 双卡双待双通', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('769', '1437530069', '1', '编辑商品: 【套装版】荣耀 6 Plus (PE-TL20) 3GB内存标准版 白色 移动4G手机 双卡双待双通', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('770', '1437530081', '1', '商品: 147', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('771', '1437530081', '1', '商品: 147', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('772', '1437530095', '1', '添加商品: 诺优能(Nutrilon) 幼儿配方奶粉 3段(12-24个月幼儿适用) ', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('773', '1437530142', '1', '编辑商品: 【套装版】荣耀 6 Plus (PE-TL20) 3GB内存标准版 白色 移动4G手机 双卡双待双通', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('774', '1437530157', '1', '编辑商品: 诺优能(Nutrilon) 幼儿配方奶粉 3段(12-24个月幼儿适用) ', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('775', '1437530177', '1', '编辑商品: 苹果（Apple）iPhone 6 Plus (A1524) 16GB 金色 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('776', '1437530202', '1', '添加商品: 卡姿兰彩妆套装 睫毛膏粉饼眉粉眉笔 专柜初学者化妆套装', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('777', '1437530215', '1', '编辑商品: 苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('778', '1437530244', '1', '添加商品:       惠氏(Wyeth)S-26金装幼儿乐幼儿配方奶粉 3段 960克 新配方     惠氏(Wyeth)S-26金装幼儿乐幼儿配方奶粉 3段 960克 新配方     惠氏(Wyeth)S-26金装幼儿乐幼儿配方奶粉 3段 960克 新配方     惠氏(Wyeth)S-26金装幼儿乐幼儿配方奶粉 3段 960克 新配方  商品编号：1506689 关注商品 分享 惠氏(Wyeth)S-26金装幼儿乐幼儿配方奶粉 3段 960克 新配方', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('779', '1437530254', '1', '添加商品: 可口可乐330ml*24听 整箱装', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('780', '1437530258', '1', '编辑商品: 诺优能(Nutrilon) 幼儿配方奶粉 3段(12-24个月幼儿适用) ', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('781', '1437530289', '1', '编辑商品: 惠氏(Wyeth)S-26金装幼儿乐幼儿配方奶粉', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('782', '1437530333', '1', '添加商品: Dior迪奥 限量版彩妆盘 眼影 粉饼 睫毛膏 腮红 唇彩', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('783', '1437530338', '1', '编辑商品: 可口可乐330ml*24听 整箱装', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('784', '1437530435', '1', '添加商品: 沙宣垂坠质感润发乳750ml', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('785', '1437530438', '1', '添加商品: 美素力（frisolac）金装婴儿配方奶粉 1段（0-6个月婴儿适用）', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('786', '1437530447', '1', '添加商品: 三星 Galaxy S6 edge（G9250）32G版 铂光金 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('787', '1437530449', '1', '编辑商品: 美素力（frisolac）金装婴儿配方奶粉 1段（0-6个月婴儿适用）', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('788', '1437530475', '1', '编辑商品: 惠氏(Wyeth)S-26金装幼儿乐幼儿配方奶粉', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('789', '1437530488', '1', '添加商品: 雪花啤酒 纯生8度500ml*12听 纸箱装', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('790', '1437530518', '1', '编辑商品: 三星 Galaxy S6 edge（G9250）32G版 铂光金 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('791', '1437530558', '1', '添加商品: 统一 微食刻（衡）100%果蔬汁 280ml/瓶', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('792', '1437530565', '1', '添加商品: L’OREAL/欧莱雅 精油润养洗发露700ml', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('793', '1437530585', '1', '编辑商品: 三星 Galaxy S6 edge（G9250）32G版 铂光金 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('794', '1437530598', '1', '商品: 155', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('795', '1437530598', '1', '商品: 155', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('796', '1437530614', '1', '添加商品: 统一 小茗同学 480ml/瓶 新品上市', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('797', '1437530668', '1', '添加商品: 统一 小茗同学 冷泡茶 茉莉萃茶 480ml/瓶 新品上市', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('798', '1437530711', '1', '添加商品: 欧莱雅(L’OREAL)多效修复超值洗护套装', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('799', '1437530843', '1', '添加商品: HTC One M9w 联通4G手机 乌金灰', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('800', '1437530913', '1', '编辑商品: HTC One M9w 联通4G手机 乌金灰', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('801', '1437530928', '1', '编辑商品: HTC One M9w 联通4G手机 乌金灰', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('802', '1437530957', '1', '添加商品: 欧莱雅透明质酸水润洗发露400ml*2+透明质酸水润润发乳400ml', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('803', '1437531033', '1', '商品: 162', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('804', '1437531033', '1', '商品: 162', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('805', '1437531039', '1', '添加商品: L’OREAL/欧莱雅 洗发护发套装 ', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('806', '1437531058', '1', '编辑商品: HTC One M9w 联通4G手机 乌金灰', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('807', '1437531060', '1', '添加商品: 意大利进口柠檬汁 宝蓝吉柠檬汁烘培原料 100%浓缩纯柠檬汁 500ml', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('808', '1437531145', '1', '编辑商品分类: 小米特供', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('809', '1437531158', '1', '添加商品: 欧莱雅角质顺滑去屑洗发露200ml', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('810', '1437531185', '1', '添加商品: 菠萝浓缩水果饮料 840ml 冲饮果汁', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('811', '1437531314', '1', '添加商品: 朵唯 懂小姐美颜自拍女性机 (C9) 薄荷绿 移动4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('812', '1437531325', '1', '编辑商品: 朵唯 懂小姐美颜自拍女性机 (C9) 薄荷绿 移动4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('813', '1437531346', '1', '编辑商品: 朵唯 懂小姐美颜自拍女性机 (C9) 薄荷绿 移动4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('814', '1437531448', '1', '添加商品: 迪奥(Dior) EDT CD 花漾甜心女士香水100ML', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('815', '1437531449', '1', '编辑商品分类: 手机数码', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('816', '1437531516', '1', '添加商品: HEINEKEN 喜力啤酒 啤酒 罐装 500ml*24罐', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('817', '1437531560', '1', '添加商品: HEINEKEN 喜力啤酒 啤酒 罐装 330ml*24罐', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('818', '1437531603', '1', '添加商品: 德国库斯特石头白啤酒5L 原装 进口大桶啤酒', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('819', '1437531646', '1', '添加商品: Dior迪奥女士香水豪华礼物套装 礼盒套装*真我*甜心*魅惑各5ML', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('820', '1437531655', '1', '添加商品: 百威啤酒500ml*18听', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('821', '1437531660', '1', '添加商品: 摩托罗拉 moto x pro(XT1115) 64GB 雅典黑 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('822', '1437531671', '1', '编辑商品: 摩托罗拉 moto x pro(XT1115) 64GB 雅典黑 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('823', '1437531716', '1', '添加商品: 德国啤酒原装进口 慕尼黑富兰教士纯麦白啤酒 500ml*24听', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('824', '1437531743', '1', '编辑商品: 朵唯 懂小姐美颜自拍女性机 (C9) 薄荷绿 移动4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('825', '1437531759', '1', '编辑商品: 朵唯 懂小姐美颜自拍女性机 (C9) 薄荷绿 移动4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('826', '1437531793', '1', '编辑商品: 德国库斯特石头白啤酒5L 原装 进口大桶啤酒', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('827', '1437532120', '1', '添加商品: 雪花啤酒 清爽8度500ml*24听/纸装箱 ', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('828', '1437532200', '1', '添加商品: 原版喜力听装啤酒 Heineken海尼根500ml*24听', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('829', '1437532283', '1', '添加商品: 哈马 韩国 单手操作器 魔力贴 U形手机支架创意可爱懒人支架 单个绿色', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('830', '1437532294', '1', '编辑商品: 哈马 韩国 单手操作器 魔力贴 U形手机支架创意可爱懒人支架 单个绿色', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('831', '1437532312', '1', '添加商品: 果啤330ml*24听水蜜桃口味 果酒', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('832', '1437532335', '1', '编辑商品: 哈马 韩国 单手操作器 魔力贴 U形手机支架创意可爱懒人支架 单个绿色', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('833', '1437532349', '1', '商品: 179', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('834', '1437532349', '1', '商品: 179', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('835', '1437532379', '1', '编辑商品: 哈马 韩国 单手操作器 魔力贴 U形手机支架创意可爱懒人支架 单个绿色', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('836', '1437532546', '1', '添加商品: 新的橙味浓缩水果饮料 840ml 洋酒 鸡尾酒必备辅料', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('837', '1437532636', '1', '添加商品: 光明风味发酵乳1.5kg/瓶', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('838', '1437532671', '1', '添加商品: 幻响（i-mu）百变羊 创意指环扣 手机支架 双指环 360度旋转 防止手机滑落 金属材质 强力粘胶', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('839', '1437532682', '1', '编辑商品: 摩托罗拉 moto x pro(XT1115) 64GB 雅典黑 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('840', '1437532690', '1', '添加商品: 风味酸牛奶风味发酵乳 原味980Gx2盒套装 ', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('841', '1437532716', '1', '编辑商品: 幻响（i-mu）百变羊 创意指环扣 手机支架 双指环 360度旋转 防止手机滑落 金属材质 强力粘胶', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('842', '1437532802', '1', '添加商品: 赛鲸 常青藤懒人手机支架 床上床头支架 万向调节 太空蓝', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('843', '1437532813', '1', '编辑商品: 赛鲸 常青藤懒人手机支架 床上床头支架 万向调节 太空蓝', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('844', '1437532831', '1', '添加商品: 王老吉 凉茶 饮料 250ml*16盒/箱 凉茶饮料 植物饮料', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('845', '1437532892', '1', '添加商品: 云南 大益 普洱茶 7572 熟茶 云南七子饼357g', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('846', '1437532915', '1', '添加商品: SENBOWE 安卓系统遥控摄像视频间谍汽车玩具 白色', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('847', '1437532927', '1', '编辑商品: SENBOWE 安卓系统遥控摄像视频间谍汽车玩具 白色', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('848', '1437532937', '1', '添加商品: 普洱茶 生茶 饼茶 2015年头春纯料古树新茶 布朗300', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('849', '1437532975', '1', '添加商品: 醇品普洱茶熟茶叶饼茶357g', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('850', '1437533017', '1', '添加商品: 雪奈儿 金属边框手机壳套保护壳新款 适用于苹果iPhone6/Plus 4.7英寸 利剑i6土豪金5.5', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('851', '1437533027', '1', '编辑商品: 雪奈儿 金属边框手机壳套保护壳新款 适用于苹果iPhone6/Plus 4.7英寸 利剑i6土豪金5.5', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('852', '1437533060', '1', '编辑商品: SENBOWE 安卓系统遥控摄像视频间谍汽车玩具 白色', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('853', '1437533110', '1', '编辑商品: 赛鲸 常青藤懒人手机支架 床上床头支架 万向调节 太空蓝', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('854', '1437533155', '1', '编辑商品: 醇品普洱茶熟茶叶饼茶357g', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('855', '1437533166', '1', '编辑商品: 普洱茶 生茶 饼茶 2015年头春纯料古树新茶 布朗300', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('856', '1437533176', '1', '编辑商品: 云南 大益 普洱茶 7572 熟茶 云南七子饼357g', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('857', '1437533187', '1', '编辑商品: 王老吉 凉茶 饮料 250ml*16盒/箱 凉茶饮料 植物饮料', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('858', '1437533237', '1', '添加商品: Genuinetek 手机信号放大器DS2H_A手机信号增强器移动联通接收器全套装', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('859', '1437533248', '1', '编辑商品: Genuinetek 手机信号放大器DS2H_A手机信号增强器移动联通接收器全套装', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('860', '1437533346', '1', '添加商品: 法国进口 雀巢（Nestle） 金牌咖啡法式烘焙 100g', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('861', '1437533394', '1', '添加商品: 法国进口 雀巢（Nestle） 金牌咖啡法式烘焙 50g', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('862', '1437533447', '1', '添加商品: 麦斯威尔三合一白咖啡（5+1）条*25g', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('863', '1437533514', '1', '添加商品: 雀巢（Nestle）雀巢咖啡1+2原味 700g', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('864', '1437533567', '1', '编辑商品: 法国进口 雀巢（Nestle） 金牌咖啡法式烘焙 100g', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('865', '1437533876', '1', '编辑商品: 雅鹿全棉四件套纯棉套件床上用品 回忆蓝 1.8米床', '192.168.1.119');
INSERT INTO `ecs_admin_log` VALUES ('866', '1437533931', '1', '编辑商品: 雅鹿全棉四件套纯棉套件床上用品 回忆蓝 1.8米床', '192.168.1.119');
INSERT INTO `ecs_admin_log` VALUES ('867', '1437534001', '1', '编辑商品: 优雅100 经典设计款全棉斜纹印花四件套', '192.168.1.119');
INSERT INTO `ecs_admin_log` VALUES ('868', '1437534056', '1', '编辑商品: LOVO 罗莱家纺出品全棉斜纹床品套件四件套 兔斯基', '192.168.1.119');
INSERT INTO `ecs_admin_log` VALUES ('869', '1437534087', '1', '编辑商品: 摩登生活 法式梳妆台欧式梳妆台实木梳妆台', '192.168.1.119');
INSERT INTO `ecs_admin_log` VALUES ('870', '1437534094', '1', '添加商品: 一丁（EADING） EA-CZB 一丁魔盒超级智能插座 手机APP控制 B款', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('871', '1437534106', '1', '编辑商品: 一丁（EADING） EA-CZB 一丁魔盒超级智能插座 手机APP控制 B款', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('872', '1437534109', '1', '编辑商品: 全是美 小户型梳妆台 欧式梳妆台 现代 简约', '192.168.1.119');
INSERT INTO `ecs_admin_log` VALUES ('873', '1437534127', '1', '编辑商品: 铂尼诗 家具 床 皮床 卧室家具套装', '192.168.1.119');
INSERT INTO `ecs_admin_log` VALUES ('874', '1437534141', '1', '编辑商品: 艾生活 真皮床双人床 独特围边 精细做工 卧室家具', '192.168.1.119');
INSERT INTO `ecs_admin_log` VALUES ('875', '1437534171', '1', '编辑商品: 柏年好禾 家具 欧式床 真皮实木床 法式田园公主床', '192.168.1.119');
INSERT INTO `ecs_admin_log` VALUES ('876', '1437534182', '1', '添加商品: MATE 智能蓝牙手表手机电话蓝牙手表带MP3能打电话适用于苹果三星电信华为小米 土豪金', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('877', '1437534190', '1', '编辑商品: MATE 智能蓝牙手表手机电话蓝牙手表带MP3能打电话适用于苹果三星电信华为小米 土豪金', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('878', '1437534278', '1', '编辑商品: 全是美 小户型梳妆台 欧式梳妆台 现代 简约', '192.168.1.119');
INSERT INTO `ecs_admin_log` VALUES ('879', '1437534328', '1', '编辑商品: 艾生活 真皮床双人床 独特围边 精细做工 卧室家具', '192.168.1.119');
INSERT INTO `ecs_admin_log` VALUES ('880', '1437534368', '1', '添加商品: 爱度ay819无线蓝牙音箱便携迷你小音响插卡u盘低音炮电脑笔记本音箱 白色', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('881', '1437534382', '1', '编辑商品: 爱度ay819无线蓝牙音箱便携迷你小音响插卡u盘低音炮电脑笔记本音箱 白色', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('882', '1437534500', '1', '编辑商品: 柏年好禾 家具 欧式床 真皮实木床 法式田园公主床', '192.168.1.119');
INSERT INTO `ecs_admin_log` VALUES ('883', '1437534561', '1', '添加商品: 爱度AY800蓝牙音箱手机电脑迷你音响无线便携插卡低音炮 带蓝牙自拍 土豪金', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('884', '1437534571', '1', '编辑商品: 爱度AY800蓝牙音箱手机电脑迷你音响无线便携插卡低音炮 带蓝牙自拍 土豪金', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('885', '1437534638', '1', '添加商品: X-Vibe3.0 酷丸第三代共振音箱 智能互动音响 创意迷你胶囊便携式共振音响 黑+橙线 现货', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('886', '1437534649', '1', '编辑商品: X-Vibe3.0 酷丸第三代共振音箱 智能互动音响 创意迷你胶囊便携式共振音响 黑+橙线 现货', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('887', '1437534786', '1', '添加商品: 安索夫迷你电脑USB2.0小音箱可爱熊猫便携笔记本台式电脑音箱 音响', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('888', '1437534795', '1', '编辑商品: 安索夫迷你电脑USB2.0小音箱可爱熊猫便携笔记本台式电脑音箱 音响', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('889', '1437534942', '1', '添加商品: PowerCube魔方插座接线板 创意多功能荷兰Allocacoc模方插座 办公神器 USB款/无延长线直插(蓝)', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('890', '1437534951', '1', '编辑商品: PowerCube魔方插座接线板 创意多功能荷兰Allocacoc模方插座 办公神器 USB款/无延长线直插(蓝)', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('891', '1437535223', '1', '添加商品: 安索夫太空人迷你可爱个性发光手机电脑音箱USB低音炮便携笔记本小音响 暑期大促 白色', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('892', '1437535259', '1', '编辑商品: 安索夫太空人迷你可爱个性发光手机电脑音箱USB低音炮便携笔记本小音响 暑期大促 白色', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('893', '1437535324', '1', '添加商品: 索爱（soaiy）S-20 便携式蓝牙数码插卡智能音箱 青春版 珍珠白', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('894', '1437535334', '1', '编辑商品: 索爱（soaiy）S-20 便携式蓝牙数码插卡智能音箱 青春版 珍珠白', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('895', '1437535415', '1', '添加商品: 洛斐（Lofree）创意无线蓝牙音箱音响 电脑音箱 EDGE锋芒3C建筑美学', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('896', '1437535425', '1', '编辑商品: 洛斐（Lofree）创意无线蓝牙音箱音响 电脑音箱 EDGE锋芒3C建筑美学', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('897', '1437535907', '1', '添加商品: 三星 Galaxy S6 edge（G9250）32G版 铂光金 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('898', '1437535941', '1', '编辑商品: 三星 Galaxy S6 edge（G9250）32G版 铂光金 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('899', '1437535975', '1', '编辑商品: 三星 Galaxy S6 edge（G9250）32G版 铂光金 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('900', '1437535992', '1', '商品: 207', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('901', '1437535992', '1', '商品: 207', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('902', '1437535992', '1', '商品: 207', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('903', '1437536055', '1', '编辑商品: 三星 Galaxy S6 edge（G9250）32G版 铂光金 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('904', '1437536169', '1', '编辑商店设置: ', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('905', '1437536276', '1', '编辑商品分类: 进口水果', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('906', '1437536308', '1', '编辑商品分类: 糖果巧克力', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('907', '1437536318', '1', '编辑商品分类: 牛奶乳品', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('908', '1437536356', '1', '编辑商品: 蟹黄包180g 火锅丸子澳门豆捞食材蟹籽包 蟹子丸 海鲜水产 鱼丸蟹类制品', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('909', '1437536384', '1', '编辑商品: 悦胜 挪威超新鲜三文鱼 三文鱼中段刺身进口海鲜 广东2份包邮 三文鱼新鲜 500g', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('910', '1437536834', '1', '编辑商品分类: 女装馆', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('911', '1437582960', '1', '编辑商品分类: 手机数码', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('912', '1437583048', '1', '编辑商品分类: 手机数码', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('913', '1437583149', '1', '编辑商品: 三星 Galaxy S6 edge（G9250）32G版 铂光金 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('914', '1437583160', '1', '编辑属性: 版本', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('915', '1437583191', '1', '编辑商品: 三星 Galaxy S6 edge（G9250）32G版 铂光金 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('916', '1437583233', '1', '编辑商品: 摩托罗拉 moto x pro(XT1115) 64GB 雅典黑 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('917', '1437583252', '1', '编辑商品: 朵唯 懂小姐美颜自拍女性机 (C9) 薄荷绿 移动4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('918', '1437583273', '1', '编辑商品: HTC One M9w 联通4G手机 乌金灰', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('919', '1437583296', '1', '编辑商品: 三星 Galaxy S6 edge（G9250）32G版 铂光金 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('920', '1437583349', '1', '编辑商品分类: 手机数码', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('921', '1437583369', '1', '添加商品: 雅培(Abbott) 亲体 金装喜康力幼儿配方奶粉 3段（1-3岁幼儿适用）', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('922', '1437583379', '1', '编辑商品: 雅培(Abbott) 亲体 金装喜康力幼儿配方奶粉 3段（1-3岁幼儿适用）', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('923', '1437583395', '1', '编辑商品: 苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('924', '1437583419', '1', '编辑商品: 苹果（Apple）iPhone 6 Plus (A1524) 16GB 金色 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('925', '1437583449', '1', '编辑商品: 小米（MI）小米Note 移动联通双4G 特别版(16G ROM)', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('926', '1437583512', '1', '编辑商店设置: ', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('927', '1437583558', '1', '编辑商店设置: ', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('928', '1437583577', '1', '添加商品:       雀巢(Nestle)超级能恩幼儿配方奶粉 3段 800克(德国原装进口、适度水解配方、全面营养 )     雀巢(Nestle)超级能恩幼儿配方奶粉 3段 800克(德国原装进口、适度水解配方、全面营养 )     雀巢(Nestle)超级能恩幼儿配方奶粉 3段 800克(德国原装进口、适度水解配方、全面营养 )     雀巢(Nestle)超级能恩幼儿配方奶粉 3段 800克(德国原装进口、适度水解配方、全面营养 )     雀巢(Nestle)超级能恩幼儿配方奶粉 3段 800', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('929', '1437583601', '1', '编辑商品: 雀巢(Nestle)超级能恩幼儿配方奶粉 3段 800克', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('930', '1437583649', '1', '编辑商品: 雀巢(Nestle)超级能恩幼儿配方奶粉 3段 800克', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('931', '1437583679', '1', '编辑商品: 高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('932', '1437583706', '1', '编辑商品: 雅培(Abbott) 亲体 金装喜康力幼儿配方奶粉 3段（1-3岁幼儿适用）', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('933', '1437583812', '1', '添加商品: 惠氏(Wyeth)S-26金装爱儿乐婴儿配方奶粉 1段 900克', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('934', '1437583822', '1', '编辑商品: 惠氏(Wyeth)S-26金装爱儿乐婴儿配方奶粉 1段 900克', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('935', '1437583917', '1', '编辑商品: 惠氏(Wyeth)S-26金装爱儿乐婴儿配方奶粉 1段 900克', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('936', '1437583949', '1', '编辑商品分类: 男装馆', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('937', '1437584061', '1', '编辑商品分类: 内衣馆', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('938', '1437584113', '1', '添加商品:       伊利 金领冠珍护幼儿配方奶粉 3段(1-3岁幼儿适用) 800克     伊利 金领冠珍护幼儿配方奶粉 3段(1-3岁幼儿适用) 800克     伊利 金领冠珍护幼儿配方奶粉 3段(1-3岁幼儿适用) 800克     伊利 金领冠珍护幼儿配方奶粉 3段(1-3岁幼儿适用) 800克     伊利 金领冠珍护幼儿配方奶粉 3段(1-3岁幼儿适用) 800克  商品编号：1072082 关注商品 分享 伊利 金领冠珍护幼儿配方奶粉 3段(1-3岁幼儿适用) 800克', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('939', '1437584133', '1', '编辑商品: 伊利 金领冠珍护幼儿配方奶粉 3段(1-3岁幼儿适用)', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('940', '1437584166', '1', '编辑商品: 伊利 金领冠珍护幼儿配方奶粉 3段(1-3岁幼儿适用)', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('941', '1437584261', '1', '编辑商品: 雀巢（Nestle）雀巢咖啡1+2原味 700g', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('942', '1437584278', '1', '添加商品: 飞鹤(FIRMUS)超级飞帆臻爱倍护幼儿配方奶粉', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('943', '1437584284', '1', '编辑商品: 麦斯威尔三合一白咖啡（5+1）条*25g', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('944', '1437584304', '1', '编辑商品: 法国进口 雀巢（Nestle） 金牌咖啡法式烘焙 50g', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('945', '1437584341', '1', '添加广告位置: 频道页-分类ID1-左侧图片1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('946', '1437584360', '1', '添加广告位置: 频道页-分类ID1-左侧图片2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('947', '1437584369', '1', '添加广告位置: 频道页-分类ID1-左侧图片3', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('948', '1437584402', '1', '编辑商品: 德国啤酒原装进口 慕尼黑富兰教士纯麦白啤酒 500ml*24听', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('949', '1437584420', '1', '编辑商品: 飞鹤(FIRMUS)超级飞帆臻爱倍护幼儿配方奶粉', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('950', '1437584422', '1', '编辑商品: 雪花啤酒 清爽8度500ml*24听/纸装箱 ', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('951', '1437584435', '1', '编辑商品: 飞鹤(FIRMUS)超级飞帆臻爱倍护幼儿配方奶粉', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('952', '1437584445', '1', '编辑商品: 原版喜力听装啤酒 Heineken海尼根500ml*24听', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('953', '1437584472', '1', '编辑商品: 果啤330ml*24听水蜜桃口味 果酒', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('954', '1437584516', '1', '添加广告: 频道页-分类ID1-左侧图片1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('955', '1437584645', '1', '编辑商品: 美国西北车厘子 1斤装 进口水果新鲜樱桃水果', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('956', '1437584677', '1', '添加商品: 亨氏 (Heinz) 甜嫩玉米泥 113g', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('957', '1437584677', '1', '编辑商品: 加拿大樱桃 2斤装 车厘子 樱桃 进口水果 新鲜水果', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('958', '1437584699', '1', '编辑商品: 亨氏 (Heinz) 甜嫩玉米泥 113g', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('959', '1437584717', '1', '编辑商品: 美国西北车厘子 1斤装 进口水果新鲜樱桃水果', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('960', '1437584717', '1', '编辑商品: 亨氏 (Heinz) 甜嫩玉米泥 113g', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('961', '1437584779', '1', '添加广告: 频道页-分类ID1-左侧图片2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('962', '1437584814', '1', '添加广告: 频道页-分类ID1-左侧图片3', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('963', '1437584874', '1', '添加商品:       亨氏 (Heinz) 乐维滋果汁泥-苹果黑加仑 (1-3岁适用) 120g     亨氏 (Heinz) 乐维滋果汁泥-苹果黑加仑 (1-3岁适用) 120g     亨氏 (Heinz) 乐维滋果汁泥-苹果黑加仑 (1-3岁适用) 120g  商品编号：956573 关注商品 分享 亨氏 (Heinz) 乐维滋果汁泥-苹果黑加仑 (1-3岁适用) 120g', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('964', '1437584902', '1', '编辑商品: 亨氏 (Heinz) 乐维滋果汁泥-苹果黑加仑 (1-3岁适用) 120g', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('965', '1437584974', '1', '编辑商品: 安琦诺 夏装新品孕妇装 韩版休闲外出服喂奶衣套装', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('966', '1437585114', '1', '添加商品: HiPP喜宝 德国原装进口婴幼儿辅食肉泥', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('967', '1437585131', '1', '编辑商品: HiPP喜宝 德国原装进口婴幼儿辅食肉泥', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('968', '1437585253', '1', '编辑商品: 安琦诺 夏装新品孕妇装 韩版休闲外出服喂奶衣套装', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('969', '1437585303', '1', '编辑商品: 恩诺童新生儿奶瓶宝宝宽口径ppsu婴儿奶瓶', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('970', '1437585439', '1', '添加广告位置: 频道页-分类ID2-图片1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('971', '1437585458', '1', '添加商品:       哈罗闪sanosan婴儿洗发露沐浴乳二合一500ml儿童洗发水宝宝沐浴露 进口婴儿洗浴用品     哈罗闪sanosan婴儿洗发露沐浴乳二合一500ml儿童洗发水宝宝沐浴露 进口婴儿洗浴用品     哈罗闪sanosan婴儿洗发露沐浴乳二合一500ml儿童洗发水宝宝沐浴露 进口婴儿洗浴用品     哈罗闪sanosan婴儿洗发露沐浴乳二合一500ml儿童洗发水宝宝沐浴露 进口婴儿洗浴用品     哈罗闪sanosan婴儿洗发露沐浴乳二合一500ml儿童洗发水宝宝沐浴露 进口婴儿洗浴', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('972', '1437585466', '1', '添加广告位置: 频道页-分类ID2-图片2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('973', '1437585478', '1', '编辑商品: 哈罗闪sanosan婴儿洗发露沐浴乳二合一', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('974', '1437585579', '1', '添加商品: 盈泰 充气游泳池家庭成人大型超大号儿童游泳池', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('975', '1437585591', '1', '编辑商品: 盈泰 充气游泳池家庭成人大型超大号儿童游泳池', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('976', '1437585608', '1', '添加广告位置: 频道页-分类ID2-图片3', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('977', '1437585626', '1', '编辑广告位置: 频道页-分类ID2-图片1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('978', '1437585647', '1', '编辑广告位置: 频道页-分类ID2-左侧图片1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('979', '1437585652', '1', '编辑广告位置: 频道页-分类ID2-左侧图片2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('980', '1437585667', '1', '编辑商品: 盈泰 充气游泳池家庭成人大型超大号儿童游泳池', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('981', '1437585671', '1', '编辑广告位置: 频道页-分类ID2-图片2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('982', '1437585674', '1', '编辑广告位置: 频道页-分类ID2-图片1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('983', '1437585726', '1', '编辑广告位置: 频道页-分类ID1-图片3', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('984', '1437585728', '1', '编辑广告位置: 频道页-分类ID1-图片2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('985', '1437585732', '1', '编辑广告位置: 频道页-分类ID1-图片1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('986', '1437585744', '1', '编辑广告: 频道页-分类ID1-图片1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('987', '1437585746', '1', '编辑广告: 频道页-分类ID1-图片2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('988', '1437585747', '1', '添加商品: 欧培(OPEN)儿童洗澡桶 加厚环保塑料宝宝沐浴桶大号', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('989', '1437585748', '1', '编辑广告: 频道页-分类ID1-图片3', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('990', '1437585757', '1', '编辑商品: 欧培(OPEN)儿童洗澡桶 加厚环保塑料宝宝沐浴桶大号', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('991', '1437585843', '1', '添加商品: 润本 儿童宝宝无味电热蚊香液 婴儿无刺激(无味型)', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('992', '1437585857', '1', '编辑商品: 润本 儿童宝宝无味电热蚊香液 婴儿无刺激(无味型)', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('993', '1437585967', '1', '添加商品:       润本（RUNBEN）驱蚊手环 植物精油驱蚊贴3条装     润本（RUNBEN）驱蚊手环 植物精油驱蚊贴3条装     润本（RUNBEN）驱蚊手环 植物精油驱蚊贴3条装     润本（RUNBEN）驱蚊手环 植物精油驱蚊贴3条装     润本（RUNBEN）驱蚊手环 植物精油驱蚊贴3条装  商品编号：1570509 关注商品 分享 润本（RUNBEN）驱蚊手环 植物精油驱蚊贴3条装', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('994', '1437585978', '1', '添加会员等级: 普通会员', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('995', '1437585995', '1', '编辑商品: 润本（RUNBEN）驱蚊手环 植物精油驱蚊贴3条装', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('996', '1437586006', '1', '添加会员等级: 铜牌会员', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('997', '1437586022', '1', '添加会员等级: 金牌会员', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('998', '1437586051', '1', '添加会员等级: 钻石会员', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('999', '1437586064', '1', '编辑会员等级: 钻石会员', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1000', '1437586074', '1', '编辑会员等级: 普通会员', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1001', '1437586116', '1', '添加商品: 易简 专业婴儿儿童理发器 充电防水静音/HK668A(小鱼）', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1002', '1437586117', '1', '编辑会员等级: 铜牌会员', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1003', '1437586117', '1', '编辑会员等级: 金牌会员', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1004', '1437586118', '1', '编辑会员等级: 钻石会员', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1005', '1437586129', '1', '编辑商品: 易简 专业婴儿儿童理发器 充电防水静音/HK668A(小鱼）', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1006', '1437586138', '1', '添加积分可兑换的商品: 78', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1007', '1437586154', '1', '编辑积分可兑换的商品: 78', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1008', '1437586173', '1', '添加积分可兑换的商品: 100', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1009', '1437586196', '1', '添加红包类型: 商品红包5元', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1010', '1437586203', '1', '添加积分可兑换的商品: 88', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1011', '1437586216', '1', '编辑积分可兑换的商品: 88', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1012', '1437586254', '1', '删除文章: 88', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1013', '1437586269', '1', '添加积分可兑换的商品: 81', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1014', '1437586339', '1', '添加积分可兑换的商品: 102', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1015', '1437586377', '1', '添加积分可兑换的商品: 110', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1016', '1437586390', '1', '添加红包类型: 用户红包10元', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1017', '1437586404', '1', '编辑红包类型: 用户红包10元', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1018', '1437586405', '1', '删除文章: 78', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1019', '1437586423', '1', '添加积分可兑换的商品: 97', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1020', '1437586441', '1', '添加积分可兑换的商品: 56', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1021', '1437586455', '1', '编辑积分可兑换的商品: 56', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1022', '1437586458', '1', '编辑积分可兑换的商品: 81', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1023', '1437586459', '1', '编辑积分可兑换的商品: 56', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1024', '1437586462', '1', '编辑积分可兑换的商品: 56', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1025', '1437586466', '1', '编辑积分可兑换的商品: 81', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1026', '1437586472', '1', '编辑积分可兑换的商品: 97', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1027', '1437586473', '1', '添加商品: 美姿蓝 家具 床 皮床 皮艺床 双人床 真皮床', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1028', '1437586477', '1', '编辑积分可兑换的商品: 100', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1029', '1437586485', '1', '编辑商品: 美姿蓝 家具 床 皮床 皮艺床 双人床 真皮床', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1030', '1437586488', '1', '编辑积分可兑换的商品: 102', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1031', '1437586492', '1', '编辑积分可兑换的商品: 110', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1032', '1437586520', '1', '添加积分可兑换的商品: 29', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1033', '1437586534', '1', '编辑商品: LOVO 罗莱家纺出品全棉斜纹床品套件四件套 兔斯基', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1034', '1437586552', '1', '编辑商品: 柏年好禾 家具 欧式床 真皮实木床 法式田园公主床', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1035', '1437586554', '1', '添加积分可兑换的商品: 86', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1036', '1437586569', '1', '编辑商品: 艾生活 真皮床双人床 独特围边 精细做工 卧室家具', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1037', '1437586573', '1', '添加积分可兑换的商品: 51', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1038', '1437586605', '1', '编辑商品: 全是美 小户型梳妆台 欧式梳妆台 现代 简约', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1039', '1437586619', '1', '编辑商品: 摩登生活 法式梳妆台欧式梳妆台实木梳妆台', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1040', '1437586760', '1', '添加积分可兑换的商品: 63', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1041', '1437586786', '1', '添加商品: 乐和居 双人床 床 榻榻米床 头层真皮', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1042', '1437586798', '1', '编辑商品: 乐和居 双人床 床 榻榻米床 头层真皮', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1043', '1437586811', '1', '添加积分可兑换的商品: 52', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1044', '1437586816', '1', '添加拍卖活动: 新机头三星 Galaxy S6 edge（G9250）32G版 铂光金', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1045', '1437586828', '1', '添加积分可兑换的商品: 62', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1046', '1437586851', '1', '添加积分可兑换的商品: 91', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1047', '1437586877', '1', '添加积分可兑换的商品: 79', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1048', '1437586887', '1', '添加商品: 中派 进口芬兰松木家具实木儿童高低床子母床上下铺带梯柜双层床', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1049', '1437586894', '1', '添加积分可兑换的商品: 101', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1050', '1437586895', '1', '编辑广告位置: 频道页-分类ID2-图片1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1051', '1437586899', '1', '编辑商品: 中派 进口芬兰松木家具实木儿童高低床子母床上下铺带梯柜双层床', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1052', '1437586914', '1', '添加积分可兑换的商品: 92', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1053', '1437586917', '1', '添加广告: 频道页-分类ID2-图片1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1054', '1437586937', '1', '添加积分可兑换的商品: 85', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1055', '1437586953', '1', '添加积分可兑换的商品: 30', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1056', '1437586989', '1', '添加积分可兑换的商品: 94', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1057', '1437587023', '1', '添加积分可兑换的商品: 105', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1058', '1437587059', '1', '编辑拍卖活动: 新机头三星 Galaxy S6 edge（G9250）32G版 铂光金', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1059', '1437587067', '1', '删除文章: 51', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1060', '1437587088', '1', '添加积分可兑换的商品: 31', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1061', '1437587090', '1', '添加商品:       樱之歌 52头 紫玉情缘 餐具套装     樱之歌 52头 紫玉情缘 餐具套装     樱之歌 52头 紫玉情缘 餐具套装     樱之歌 52头 紫玉情缘 餐具套装     樱之歌 52头 紫玉情缘 餐具套装     樱之歌 52头 紫玉情缘 餐具套装     樱之歌 52头 紫玉情缘 餐具套装     樱之歌 52头 紫玉情缘 餐具套装     樱之歌 52头 紫玉情缘 餐具套装     樱之歌 52头 紫玉情缘 餐具套装     樱之歌 52头 紫玉情缘 餐具套装     樱', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1062', '1437587108', '1', '编辑商品: 樱之歌 52头 紫玉情缘 餐具套装', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1063', '1437587118', '1', '删除文章: 63', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1064', '1437587128', '1', '添加积分可兑换的商品: 54', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1065', '1437587146', '1', '删除文章: 54', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1066', '1437587158', '1', '添加积分可兑换的商品: 51', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1067', '1437587170', '1', '添加商品: 亿嘉IJARL 时尚陶瓷28头韩式骨瓷餐具套装 东洋之心', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1068', '1437587177', '1', '删除文章: 51', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1069', '1437587179', '1', '编辑商品: 亿嘉IJARL 时尚陶瓷28头韩式骨瓷餐具套装 东洋之心', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1070', '1437587189', '1', '添加积分可兑换的商品: 53', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1071', '1437587203', '1', '删除文章: 53', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1072', '1437587215', '1', '添加积分可兑换的商品: 55', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1073', '1437587248', '1', '添加商品: 雅诚德Arst餐具套装56头套装中式碗碟套装陶瓷碗碟套装釉上彩', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1074', '1437587283', '1', '编辑商品: 雅诚德Arst餐具套装56头套装中式碗碟套装陶瓷碗碟套装釉上彩', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1075', '1437587293', '1', '编辑广告位置: 频道页-分类ID2-图片2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1076', '1437587341', '1', '添加广告: 频道页-分类ID2-图片2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1077', '1437587363', '1', '添加商品:       剑林 景德镇陶瓷56头韩式餐具套装 红袖添香 FZG453HX56     剑林 景德镇陶瓷56头韩式餐具套装 红袖添香 FZG453HX56     剑林 景德镇陶瓷56头韩式餐具套装 红袖添香 FZG453HX56     剑林 景德镇陶瓷56头韩式餐具套装 红袖添香 FZG453HX56     剑林 景德镇陶瓷56头韩式餐具套装 红袖添香 FZG453HX56  商品编号：1011662 关注商品 分享 剑林 景德镇陶瓷56头韩式餐具套装 红袖添香 FZG453HX56', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1078', '1437587380', '1', '编辑商品: 剑林 景德镇陶瓷56头韩式餐具套装 红袖添香 FZG453HX56', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1079', '1437587416', '1', '添加广告: 频道页-分类ID2-图片3-1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1080', '1437587434', '1', '添加广告: 频道页-分类ID2-图片3-2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1081', '1437587451', '1', '添加广告: 频道页-分类ID2-图片3-3', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1082', '1437587456', '1', '添加商品: Jaka蝴蝶夫人浮雕陶瓷分层水果盘 点心盘子 双层三层 多款可选', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1083', '1437587464', '1', '添加广告: 频道页-分类ID2-图片3-4', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1084', '1437587487', '1', '添加广告: 频道页-分类ID2-图片3-5', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1085', '1437587523', '1', '添加广告: 频道页-分类ID2-图片3-6', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1086', '1437587547', '1', '编辑商品: Jaka蝴蝶夫人浮雕陶瓷分层水果盘 点心盘子 双层三层 多款可选', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1087', '1437587670', '1', '添加商品: 304不锈钢宝宝分格餐盘 儿童餐具分隔格碗餐盘婴儿盘', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1088', '1437587680', '1', '编辑商品: 304不锈钢宝宝分格餐盘 儿童餐具分隔格碗餐盘婴儿盘', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1089', '1437587762', '1', '添加商品: 可爱卡通餐盘水果盘点心盘 盘子儿童托盘餐具6件套', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1090', '1437587773', '1', '编辑商品: 可爱卡通餐盘水果盘点心盘 盘子儿童托盘餐具6件套', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1091', '1437587977', '1', '添加商品: 奇居良品 欧式家居装饰摆件 可莉尔裂纹贴花陶瓷水果盘 ', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1092', '1437587987', '1', '编辑商品: 奇居良品 欧式家居装饰摆件 可莉尔裂纹贴花陶瓷水果盘 ', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1093', '1437588002', '1', '添加拍卖活动: 海尔HGS-2164手持蒸汽挂烫机家用挂式电熨斗熨烫机正品全国联保', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1094', '1437588165', '1', '编辑拍卖活动: 海尔HGS-2164手持蒸汽挂烫机家用挂式电熨斗熨烫机正品全国联保', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1095', '1437588709', '1', '添加广告位置: 积分商城banner广告1', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1096', '1437588719', '1', '添加广告位置: 积分商城banner广告2', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1097', '1437588729', '1', '添加广告位置: 积分商城banner广告3', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1098', '1437588738', '1', '添加广告位置: 积分商城banner广告4', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1099', '1437588778', '1', '添加超值礼包: 婴儿超值大礼包', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1100', '1437588860', '1', '编辑超值礼包: 婴儿超值大礼包', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1101', '1437588882', '1', '编辑超值礼包: 婴儿超值大礼包', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1102', '1437589059', '1', '添加广告位置: 频道页面-小分类ID55-广告', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1103', '1437589232', '1', '编辑超值礼包: 婴儿超值大礼包', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1104', '1437589745', '1', '添加广告: 积分商城banner广告1', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1105', '1437589765', '1', '添加超值礼包: 数码超值搭配套餐', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1106', '1437589785', '1', '编辑超值礼包: 数码超值搭配套餐', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1107', '1437589866', '1', '添加广告: 积分商城banner广告2', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1108', '1437589886', '1', '添加广告: 积分商城banner广告3', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1109', '1437589904', '1', '添加广告: 积分商城banner广告4', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1110', '1437590006', '1', '添加广告位置: 积分商城通栏广告', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1111', '1437590158', '1', '添加拍卖活动: 诺优能(Nutrilon) 幼儿配方奶粉 3段(12-24个月幼儿适用) ', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1112', '1437590192', '1', '编辑拍卖活动: 海尔HGS-2164手持蒸汽挂烫机家用挂式电熨斗熨烫机正品全国联保', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1113', '1437590277', '1', '添加拍卖活动: 高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1114', '1437590303', '1', '添加广告: 积分商城通栏广告', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1115', '1437590326', '1', '编辑拍卖活动: 高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1116', '1437590394', '1', '添加拍卖活动: 高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1117', '1437590448', '1', '编辑拍卖活动: 高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1118', '1437590460', '1', '编辑广告: 积分商城通栏广告', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1119', '1437590469', '1', '添加超值礼包: 家用电器超值礼包', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1120', '1437590484', '1', '编辑超值礼包: 家用电器超值礼包', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1121', '1437590497', '1', '编辑超值礼包: 家用电器超值礼包', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1122', '1437590512', '1', '编辑超值礼包: 家用电器超值礼包', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1123', '1437590559', '1', '添加拍卖活动: 雪奈儿 金属边框手机壳套保护壳新款 适用于苹果iPhone6/Plus 4.7英寸 利剑i6土豪金5.5', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1124', '1437590623', '1', '编辑拍卖活动: 高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1125', '1437590634', '1', '编辑拍卖活动: 高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1126', '1437590697', '1', '添加拍卖活动: 苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1127', '1437590733', '1', '添加拍卖活动: 朵唯 懂小姐美颜自拍女性机 (C9) 薄荷绿 移动4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1128', '1437590752', '1', '编辑拍卖活动: 朵唯 懂小姐美颜自拍女性机 (C9) 薄荷绿 移动4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1129', '1437590758', '1', '编辑拍卖活动: 苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1130', '1437590809', '1', '添加拍卖活动: 汽车玩具白色', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1131', '1437590918', '1', '添加超值礼包: 厨房电器优惠套餐', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1132', '1437590939', '1', '编辑超值礼包: 厨房电器优惠套餐', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1133', '1437591187', '1', '添加广告: 频道页面-小分类ID55-广告', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1134', '1437591208', '1', '添加广告位置: 频道页面-小分类ID56-广告', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1135', '1437591331', '1', '添加广告: 频道页面-小分类ID56-广告', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1136', '1437591402', '1', '编辑广告位置: 频道页面-小分类ID57-广告', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1137', '1437591406', '1', '编辑广告: 频道页面-小分类ID57-广告', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1138', '1437591743', '1', '添加超值礼包: 家庭精美厨具套餐', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1139', '1437591856', '1', '添加广告位置: 拍卖列表banner广告1', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1140', '1437591865', '1', '添加广告位置: 拍卖列表banner广告2', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1141', '1437591876', '1', '添加广告位置: 拍卖列表banner广告3', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1142', '1437591886', '1', '添加广告位置: 拍卖列表banner广告4', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1143', '1437591936', '1', '添加广告: 拍卖列表banner广告1', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1144', '1437591968', '1', '添加广告: 拍卖列表banner广告2', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1145', '1437592138', '1', '添加广告: 拍卖列表banner广告3', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1146', '1437592156', '1', '添加广告: 拍卖列表banner广告4', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1147', '1437592268', '1', '编辑广告: 拍卖列表banner广告4', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1148', '1437592313', '1', '编辑广告位置: 频道页面-小分类ID57-广告', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1149', '1437592328', '1', '添加广告位置: 频道页面-小分类ID56-广告', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1150', '1437592348', '1', '添加广告: 频道页面-小分类ID56-广告', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1151', '1437592633', '1', '添加拍卖活动: 雅诚德Arst餐具套装56头套装中式碗碟套装陶瓷碗碟套装釉上彩', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1152', '1437592845', '1', '添加预售商品: Lindt瑞士莲黑巧克力特醇排装德国进口 70%可可黑巧克力10块组合 特惠分享装', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1153', '1437593127', '1', '添加预售商品: 昆仑玉红枣 和田香枣二级500g 新疆特产 免洗零食 和田大枣子', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1154', '1437593206', '1', '添加优惠活动: [自营商品]热卖手机满10000减2000', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1155', '1437593366', '1', '添加优惠活动: [自营商品]热卖手机满2000送手机配件', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1156', '1437593399', '1', '添加预售商品: 墨西哥牛油果9个 牛油果 鳄梨 牛油果水果 21-24号发', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1157', '1437593429', '1', '添加优惠活动: [自营商品]热卖手机满6000打9折,嗨翻全场', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1158', '1437593579', '1', '添加预售商品: 台湾进口 百年老店糖之坊夏威夷果牛轧糖奶糖（蔓越莓味）120克', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1159', '1437593649', '1', '编辑会员账号: anan', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1160', '1437593751', '1', '添加拍卖活动: 进口 新鲜水果 车厘子1000g', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1161', '1437593827', '1', '添加拍卖活动: 佳沛新西兰绿奇异果36个（原装）进口Zespri猕猴桃 新鲜水果准妈妈爱吃', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1162', '1437593905', '1', '添加红包类型: 天天果园满200元送20元红包', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1163', '1437594017', '1', '添加优惠活动: [天天果园]全场满500元减100元', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1164', '1437594183', '1', '添加拍卖活动: 迪奥真我香水50ml', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1165', '1437594184', '1', '添加预售商品: 100%桑蚕丝两件套夏季短袖真丝睡衣女套装', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1166', '1437594227', '1', '添加拍卖活动: Dior迪奥 限量版彩妆盘 眼影 粉饼 睫毛膏 腮红 唇彩', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1167', '1437594252', '1', '添加预售商品: 嘉云糖 300g玻璃罐装 水果硬糖 喜糖 德国进口', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1168', '1437594271', '1', '添加拍卖活动: 卡姿兰', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1169', '1437594375', '1', '添加预售商品: 澳大利亚 进口牛奶 德运（Devondale） 全脂牛奶 1L*10 整箱装', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1170', '1437594526', '1', '添加预售商品: 一米画纱桑蚕丝吊带睡裙女夏季纯色真丝睡衣 ', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1171', '1437594631', '1', '添加预售商品: 波兰 进口牛奶 日昇（MLEKOVITA）全脂牛奶1L*12盒', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1172', '1437594711', '1', '添加预售商品: 德运Devondale 脱脂高钙奶粉1kg', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1173', '1437594849', '1', '编辑文章分类: 广告354*454', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1174', '1437595236', '1', '添加预售商品: 坚果炒货零食特产扁桃仁235gx2袋', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1175', '1437595694', '1', '添加预售商品: Lindt瑞士莲黑巧克力特醇排装德国进口 70%可可黑巧克力10块组合 特惠分享装', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1176', '1437598193', '1', '编辑预售商品: Lindt瑞士莲黑巧克力特醇排装德国进口 70%可可黑巧克力10块组合 特惠分享装[16]', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1177', '1437598247', '1', '编辑预售商品: 除湿机家用抽湿机20B 地下室别墅吸湿器除湿器[16]', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1178', '1437598278', '1', '编辑预售商品: 除湿机家用抽湿机20B 地下室别墅吸湿器除湿器[16]', '192.168.1.146');
INSERT INTO `ecs_admin_log` VALUES ('1179', '1437601701', '1', '编辑预售商品: Lindt瑞士莲黑巧克力特醇排装德国进口 70%可可黑巧克力10块组合 特惠分享装[32]', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1180', '1437603103', '1', '编辑广告: 首页专题广告2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1181', '1437603116', '1', '编辑广告: 首页专题广告3', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1182', '1437603123', '1', '编辑广告: 首页专题广告4', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1183', '1437603131', '1', '编辑广告: 首页专题广告5', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1184', '1437603513', '1', '编辑文章: 广告1', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1185', '1437603709', '1', '编辑优惠活动: [自营商品]热卖手机满6000打9折,嗨翻全场', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1186', '1437604271', '1', '编辑优惠活动: [自营商品]热卖手机满2000送手机配件', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1187', '1437604283', '1', '编辑优惠活动: [自营商品]热卖手机满10000减2000', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1188', '1437604392', '0', '编辑优惠活动: [天天果园]全场满500元减100元', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1189', '1437604513', '0', '编辑优惠活动: [天天果园]全场满500元减100元', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1190', '1437609363', '1', '添加广告位置: 商品详情页左侧广告1', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1191', '1437609372', '1', '添加广告位置: 商品详情页左侧广告2', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1192', '1437673712', '1', '添加优惠活动: 加价购', '192.168.1.125');
INSERT INTO `ecs_admin_log` VALUES ('1193', '1437679957', '1', '添加会员注册项: 验证手机', '192.168.1.185');
INSERT INTO `ecs_admin_log` VALUES ('1194', '1437696967', '1', '安装支付方式: 支付宝', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1195', '1437696974', '1', '安装支付方式: <font color=\"#FF0000\">财付通</font>', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1196', '1437696980', '1', '安装支付方式: 支付宝-网银直连', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1197', '1437696986', '1', '安装支付方式: 余额支付', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1198', '1437696999', '1', '安装支付方式: 银联在线', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1199', '1437697009', '1', '安装支付方式: 货到付款', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1200', '1437697015', '1', '安装支付方式: 微信支付', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1201', '1437697071', '1', '安装配送方式: 门店自提', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1202', '1437697105', '1', '安装配送方式: 顺丰速运', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1203', '1437697114', '1', '添加配送区域: 全国', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1204', '1437697120', '1', '安装配送方式: 申通快递', '192.168.1.189');
INSERT INTO `ecs_admin_log` VALUES ('1205', '1437701043', '1', '编辑商店设置: ', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1206', '1437701114', '1', '编辑商店设置: ', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1207', '1437947204', '1', '添加红包类型: 线上红包', '192.168.1.162');
INSERT INTO `ecs_admin_log` VALUES ('1208', '1441152132', '1', '添加会员账号: lxg', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1209', '1441152309', '1', '编辑会员账号: lxg', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1210', '1441152659', '1', '编辑权限管理: ceshi', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1211', '1441152867', '1', '添加会员账号: ceshi', '124.237.90.162');
INSERT INTO `ecs_admin_log` VALUES ('1212', '1441153674', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1213', '1441154926', '1', '添加会员注册项: QQ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1214', '1441155015', '1', '编辑会员注册项: QQ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1215', '1441155050', '1', '添加会员注册项: 手机号', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1216', '1441155065', '1', '删除会员注册项: 手机号', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1217', '1441155265', '1', '编辑会员账号: lxg', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1218', '1441156056', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1219', '1441156419', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1220', '1441156658', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1221', '1441156703', '1', '删除会员账号: ceshi', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1222', '1441156712', '1', '删除会员账号: lxg', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1223', '1441163621', '1', '编辑商品分类: 糖果巧克力', '219.155.123.224');
INSERT INTO `ecs_admin_log` VALUES ('1224', '1441210891', '1', '编辑前台语言项: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1225', '1441212301', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1226', '1441212513', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1227', '1441221337', '1', '删除地区: 中国', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1228', '1441221346', '1', '添加地区: 新密市', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1229', '1441221506', '1', '添加地区: 新密市', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1230', '1441221556', '1', '添加地区: 青屏街街道', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1231', '1441221613', '1', '添加地区: 开阳路社区', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1232', '1441221793', '1', '卸载配送方式: 门店自提', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1233', '1441221803', '1', '卸载配送方式: 顺丰速运', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1234', '1441221917', '1', '删除地区: 中国', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1235', '1441221924', '1', '添加地区: 新密', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1236', '1441222613', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1237', '1441222716', '1', '编辑地区: 新密市', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1238', '1441222726', '1', '编辑地区: 北京', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1239', '1441223107', '1', '添加地区: 新密市', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1240', '1441223212', '1', '添加地区: 青屏办事处', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1241', '1441223226', '1', '添加地区: 周楼社区', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1242', '1441223284', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1243', '1441223740', '1', '添加地区: 新密市', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1244', '1441223847', '1', '添加地区: 青屏街街道', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1245', '1441223864', '1', '添加地区: 新华路街道', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1246', '1441223878', '1', '添加地区: 西大街街道', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1247', '1441223884', '1', '添加地区: 城关镇', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1248', '1441223890', '1', '添加地区: 米村镇', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1249', '1441223898', '1', '添加地区: 牛店镇', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1250', '1441223910', '1', '添加地区: 平陌镇', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1251', '1441223918', '1', '添加地区: 超化镇', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1252', '1441223925', '1', '添加地区: 苟堂镇', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1253', '1441223937', '1', '添加地区: 大隗镇', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1254', '1441223958', '1', '添加地区: 刘寨镇', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1255', '1441223969', '1', '添加地区: 白寨镇', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1256', '1441223980', '1', '添加地区: 岳村镇', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1257', '1441223987', '1', '添加地区: 来集镇', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1258', '1441223994', '1', '添加地区: 袁庄乡', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1259', '1441224002', '1', '添加地区: 曲梁乡', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1260', '1441224018', '1', '添加地区: 矿区街道', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1261', '1441224040', '1', '添加地区: 尖山风景区', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1262', '1441224098', '1', '添加地区: 北密新路社区', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1263', '1441224105', '1', '添加地区: 青屏大街社区', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1264', '1441224113', '1', '添加地区: 气象街社区', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1265', '1441224212', '1', '添加配送区域: 新密市区', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1266', '1441224416', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1267', '1441226476', '1', '添加地区: 新密市', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1268', '1441226539', '1', '添加地区: 屏街街道', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1269', '1441226547', '1', '编辑地区: 青屏街街道', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1270', '1441226548', '1', '添加地区: 屏街街道', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1271', '1441226553', '1', '删除地区: 屏街街道', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1272', '1441226585', '1', '添加地区: 北密新路社区', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1273', '1441227350', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1274', '1441227428', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1275', '1441227836', '1', '编辑商品: 惠普生牌大豆磷脂软胶囊 300粒 辅助降血脂', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1276', '1441227963', '1', '编辑商品: 甘源牌 蟹黄味蚕豆75g/袋', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1277', '1441228259', '1', '编辑商品: 甘源牌 原味青豌豆75g/袋', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1278', '1441228295', '1', '编辑商品: 甘源牌 蟹黄味蚕豆75g/袋', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1279', '1441232584', '1', '卸载配送方式: 申通快递', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1280', '1441232590', '1', '卸载配送方式: 圆通速递', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1281', '1441232599', '1', '安装配送方式: <font color=\"#ff3300\">同城快递</font>', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1282', '1441232704', '1', '安装配送方式: 门店自提', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1283', '1441232729', '1', '添加配送区域: 门店自提', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1284', '1441235963', '1', '卸载配送方式: 门店自提', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1285', '1441235980', '1', '安装配送方式: 门店自提', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1286', '1441236008', '1', '添加配送区域: 门店自提', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1287', '1441236847', '1', '商品: 517', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1288', '1441236847', '1', '商品: 517', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1289', '1441236847', '1', '商品: 517', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1290', '1441236847', '1', '商品: 517', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1291', '1441237451', '1', '编辑配送区域: 门店自提', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1292', '1441238468', '1', '编辑商品: 可比克薯片45g', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1293', '1441238832', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1294', '1441240486', '1', '商品: 1928', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1295', '1441240511', '1', '商品: 1928', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1296', '1441240693', '1', '编辑配送区域: 门店自提', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1297', '1441240738', '1', '编辑配送区域: 门店自提', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1298', '1441240853', '1', '编辑配送区域: 门店自提', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1299', '1441240866', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1300', '1441241039', '1', '添加商品: 短发发达', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1301', '1441241093', '1', '回收商品: 短发发达', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1302', '1441241225', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1303', '1441241822', '1', '编辑广告位置: 首页-分类ID93通栏广告', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1304', '1441241867', '1', '编辑广告位置: 首页-分类ID98通栏广告', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1305', '1441241893', '1', '编辑广告位置: 首页-分类ID8通栏广告', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1306', '1441241900', '1', '编辑广告位置: 首页-分类ID96通栏广告', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1307', '1441242053', '1', '编辑商品分类: 薯片', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1308', '1441242079', '1', '编辑商品分类: 上好佳', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1309', '1441242135', '1', '编辑商品分类: 上好佳', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1310', '1441242151', '1', '添加地区: 河南省', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1311', '1441242170', '1', '删除地区: 河南省', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1312', '1441242175', '1', '添加地区: 郑州市', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1313', '1441242193', '1', '添加地区: 新密市', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1314', '1441242193', '1', '编辑商品分类: 瓜子', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1315', '1441242252', '1', '编辑广告位置: 首页-分类ID93-左侧图片', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1316', '1441242281', '1', '编辑广告位置: 首页-分类ID93右侧广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1317', '1441242291', '1', '删除地区: 郑州市', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1318', '1441242358', '1', '编辑广告位置: 首页-分类ID93右侧广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1319', '1441242385', '1', '编辑广告位置: 首页-分类ID93右侧广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1320', '1441242543', '1', '添加地区: 郑州市', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1321', '1441242549', '1', '添加地区: 新密市', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1322', '1441242643', '1', '添加地区: 青屏街街道', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1323', '1441242664', '1', '添加地区: 北密新路社区', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1324', '1441242682', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1325', '1441243079', '1', '编辑商品: 康力士牡蛎提取物软胶囊（含钙）100粒', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1326', '1441243765', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1327', '1441243921', '1', '编辑属性: 口味', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1328', '1441244113', '1', '编辑地区: 新密市', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1329', '1441244144', '1', '编辑商品分类: 休闲零食', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1330', '1441244144', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1331', '1441244312', '1', '添加: 黑老包', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1332', '1441244691', '1', '添加: 长宁街', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1333', '1441245645', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1334', '1441245698', '1', '编辑商品分类: 酒茶饮料', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1335', '1441245836', '1', '编辑商品分类: 酒茶饮料', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1336', '1441246504', '1', '添加地区: 中国', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1337', '1441246512', '1', '添加地区: 河南', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1338', '1441246517', '1', '添加地区: 郑州', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1339', '1441246524', '1', '添加地区: 新密', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1340', '1441247439', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1341', '1441247542', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1342', '1441248241', '1', '添加: mic', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1343', '1441248490', '1', '编辑配送区域: 门店自提', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1344', '1441298812', '1', '还原商品: 短发发达', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1345', '1441301018', '1', '编辑商品分类: 劲仔', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1346', '1441301070', '1', '编辑商品分类: 劲仔', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1347', '1441301232', '1', '编辑商品分类: 鱼干/海味', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1348', '1441301252', '1', '编辑商品分类: 枣类', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1349', '1441301291', '1', '编辑商品分类: 口香糖', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1350', '1441301329', '1', '编辑商品分类: 糖果', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1351', '1441301346', '1', '编辑商品分类: 口香糖', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1352', '1441301419', '1', '编辑商品分类: 梅类', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1353', '1441301469', '1', '编辑商品分类: 果冻/布丁', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1354', '1441301490', '1', '编辑商品分类: 饼干', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1355', '1441301519', '1', '编辑商品分类: 西式糕点', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1356', '1441301564', '1', '编辑商品分类: 恒大冰泉', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1357', '1441301593', '1', '编辑商品分类: 恒大冰泉', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1358', '1441301610', '1', '编辑商品分类: 水', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1359', '1441301625', '1', '编辑商品分类: 茶饮料', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1360', '1441301642', '1', '编辑商品分类: 功能饮料', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1361', '1441305534', '1', '编辑商品分类: 调节三高', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1362', '1441305557', '1', '编辑商品分类: 美容养颜', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1363', '1441305599', '1', '编辑商品分类: 维生素/矿物质', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1364', '1441305649', '1', '编辑商品分类: 维生素/矿物质', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1365', '1441305710', '1', '编辑商品分类: 成人用品', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1366', '1441305748', '1', '编辑商品分类: 成人用品', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1367', '1441305769', '1', '编辑商品分类: 安全避孕', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1368', '1441305798', '1', '编辑商品分类: 皮肤健康', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1369', '1441305816', '1', '编辑商品分类: 美体塑身', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1370', '1441305852', '1', '编辑商品分类: 改善睡眠', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1371', '1441305884', '1', '编辑商品分类: 鱼油/磷脂', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1372', '1441305908', '1', '编辑商品分类: 按摩仪器', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1373', '1441305935', '1', '编辑商品分类: 运动小秘书', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1374', '1441305969', '1', '编辑商品分类: 足浴器', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1375', '1441306026', '1', '编辑商品分类: 纤体/美容/塑身', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1376', '1441306043', '1', '编辑商品分类: 护具护带', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1377', '1441306069', '1', '编辑商品分类: 牵引器', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1378', '1441306103', '1', '编辑商品分类: 体温计', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1379', '1441306193', '1', '编辑商品分类: 卫生纸', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1380', '1441306231', '1', '编辑商品分类: 一次性用品', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1381', '1441306253', '1', '编辑商品分类: 浴室用品', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1382', '1441306292', '1', '编辑商品分类: 洗衣液', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1383', '1441306351', '1', '编辑商品分类: 洗衣粉', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1384', '1441306422', '1', '编辑商品分类: 皮具护理', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1385', '1441306485', '1', '编辑商品分类: 筷子', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1386', '1441306513', '1', '编辑商品分类: 勺子', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1387', '1441306525', '1', '添加地区: 巩义', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1388', '1441306538', '1', '编辑商品分类: 垃圾袋', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1389', '1441306590', '1', '编辑商品分类: 护肤', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1390', '1441306608', '1', '编辑商品分类: 洗发', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1391', '1441306629', '1', '编辑商品分类: 沐浴露', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1392', '1441306676', '1', '编辑商品分类: 牙刷/牙粉', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1393', '1441306700', '1', '编辑商品分类: 护发', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1394', '1441306736', '1', '编辑商品分类: 手足护理', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1395', '1441306776', '1', '编辑商品分类: 卫生巾', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1396', '1441306812', '1', '编辑商品分类: 私密护理', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1397', '1441306843', '1', '编辑商品分类: 儿童口腔护理', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1398', '1441306874', '1', '编辑商品分类: 婴幼奶粉', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1399', '1441306914', '1', '编辑商品分类: 米粉粥', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1400', '1441306939', '1', '编辑商品分类: 宝宝尿裤', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1401', '1441307005', '1', '编辑商品分类: 营养品', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1402', '1441307026', '1', '编辑商品分类: 婴儿湿巾', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1403', '1441307086', '1', '编辑商品分类: 肉松', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1404', '1441307141', '1', '编辑商品分类: 宝宝护肤', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1405', '1441307172', '1', '编辑商品分类: 五谷杂粮', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1406', '1441307204', '1', '编辑商品分类: 调和油', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1407', '1441307218', '1', '编辑商品分类: 花生油', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1408', '1441307246', '1', '编辑商品分类: 酱油', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1409', '1441307267', '1', '编辑商品分类: 醋', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1410', '1441307296', '1', '编辑商品分类: 调味料', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1411', '1441307355', '1', '编辑商品分类: 调味酱', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1412', '1441307380', '1', '编辑商品分类: 方便面/粉', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1413', '1441307404', '1', '编辑商品分类: 罐头', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1414', '1441307423', '1', '编辑商品分类: 火腿肠', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1415', '1441307532', '1', '编辑广告: 首页-分类ID93-左侧图片', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1416', '1441307562', '1', '编辑广告位置: 首页-分类ID95-左侧图片', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1417', '1441307593', '1', '编辑广告位置: 首页-分类ID95-左侧图片', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1418', '1441307623', '1', '编辑广告位置: 首页-分类ID95-左侧图片', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1419', '1441307649', '1', '编辑广告位置: 首页-分类ID97-左侧图片', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1420', '1441307665', '1', '编辑广告位置: 首页-分类ID98-左侧图片', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1421', '1441307678', '1', '编辑广告位置: 首页-分类ID101-左侧图片', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1422', '1441307689', '1', '编辑广告位置: 首页-分类ID99-左侧图片', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1423', '1441307702', '1', '编辑广告位置: 首页-分类ID100-左侧图片', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1424', '1441307717', '1', '编辑广告位置: 首页-分类ID96-左侧图片', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1425', '1441307982', '1', '编辑广告: 首页-分类ID95-左侧图片', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1426', '1441308028', '1', '编辑广告: 首页-分类ID97-左侧图片', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1427', '1441308057', '1', '编辑广告: 首页-分类ID98-左侧图片', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1428', '1441308317', '1', '编辑广告: 首页-分类ID101-左侧图片', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1429', '1441308335', '1', '编辑广告: 首页-分类ID99-左侧图片', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1430', '1441308359', '1', '编辑广告: 首页-分类ID100-左侧图片', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1431', '1441308380', '1', '编辑广告: 首页-分类ID96-左侧图片', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1432', '1441308420', '1', '编辑广告位置: 首页-分类ID95右侧广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1433', '1441308436', '1', '编辑广告位置: 首页-分类ID95右侧广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1434', '1441308482', '1', '编辑广告位置: 首页-分类ID97右侧广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1435', '1441308500', '1', '编辑广告位置: 首页-分类ID97右侧广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1436', '1441308571', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1437', '1441308607', '1', '编辑广告位置: 首页-分类ID98右侧广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1438', '1441308682', '1', '编辑广告位置: 首页-分类ID98右侧广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1439', '1441308701', '1', '编辑广告位置: 首页-分类ID101右侧广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1440', '1441308718', '1', '编辑广告位置: 首页-分类ID101右侧广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1441', '1441308739', '1', '编辑广告位置: 首页-分类ID99右侧广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1442', '1441308802', '1', '编辑广告位置: 首页-分类ID99右侧广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1443', '1441308851', '1', '编辑广告位置: 首页-分类ID100右侧广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1444', '1441308863', '1', '编辑广告位置: 首页-分类ID100右侧广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1445', '1441308874', '1', '编辑广告位置: 首页-分类ID96右侧广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1446', '1441308885', '1', '编辑广告位置: 首页-分类ID96右侧广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1447', '1441308993', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1448', '1441309803', '1', '编辑商品分类: 洗衣服务', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1449', '1441310238', '1', '编辑广告: 首页-分类ID93右侧广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1450', '1441310278', '1', '编辑广告: 首页-分类ID93通栏广告', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1451', '1441310298', '1', '编辑广告: 首页-分类ID96通栏广告', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1452', '1441310320', '1', '编辑广告: 首页-分类ID98通栏广告', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1453', '1441310359', '1', '编辑广告: 首页-分类ID1右侧广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1454', '1441310374', '1', '编辑广告: 首页-分类ID93右侧广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1455', '1441310449', '1', '编辑广告: 首页-分类ID95右侧广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1456', '1441310453', '1', '编辑广告: 首页-分类ID95右侧广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1457', '1441310464', '1', '编辑广告: 首页-分类ID2右侧广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1458', '1441310469', '1', '编辑广告: 首页-分类ID95右侧广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1459', '1441310495', '1', '编辑广告: 首页-分类ID97右侧广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1460', '1441310511', '1', '编辑广告: 首页-分类ID97右侧广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1461', '1441310532', '1', '编辑广告: 首页-分类ID98右侧广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1462', '1441310554', '1', '编辑广告: 首页-分类ID98右侧广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1463', '1441310570', '1', '编辑广告: 首页-分类ID101右侧广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1464', '1441310596', '1', '编辑广告: 首页-分类ID101右侧广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1465', '1441315930', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1466', '1441317465', '1', '编辑广告: 首页-分类ID99右侧广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1467', '1441317476', '1', '编辑广告: 首页-分类ID99右侧广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1468', '1441317491', '1', '编辑广告: 首页-分类ID100右侧广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1469', '1441317510', '1', '编辑广告: 首页-分类ID100右侧广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1470', '1441317531', '1', '编辑广告: 首页-分类ID96右侧广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1471', '1441317544', '1', '编辑广告: 首页-分类ID96右侧广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1472', '1441317601', '1', '编辑广告位置: 频道页-分类ID1029-图片1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1473', '1441317644', '1', '编辑广告位置: 频道页-分类ID1029-图片2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1474', '1441317655', '1', '编辑广告位置: 频道页-分类ID1029-图片3', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1475', '1441317713', '1', '编辑广告: 频道页-分类ID1029-图片1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1476', '1441317735', '1', '编辑广告: 频道页-分类ID1029-图片2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1477', '1441317775', '1', '编辑广告: 频道页-分类ID1029-图片3', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1478', '1441317920', '1', '编辑商品分类: 车饰清洁', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1479', '1441317987', '1', '编辑商品分类: 皮具护理', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1480', '1441318009', '1', '编辑商品分类: 服饰清洁', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1481', '1441318066', '1', '编辑商品分类: 婚庆清洁', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1482', '1441318264', '1', '添加: 黑老包', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1483', '1441318407', '1', '编辑商品分类: 洗衣服务', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1484', '1441318443', '1', '编辑商品分类: 洗衣服务', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1485', '1441318553', '1', '编辑商品分类: 洗衣服务', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1486', '1441321343', '1', '编辑商品: 奢侈品箱包 清洁500元起', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1487', '1441321371', '1', '编辑商品: 奢侈品大包 清洁(35公分以上)400元起', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1488', '1441321425', '1', '编辑商品: 普通包大包 清洁(35公分以上)220元起', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1489', '1441321860', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1490', '1441323044', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1491', '1441323052', '1', '删除: 黑老包', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1492', '1441323213', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1493', '1441323251', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1494', '1441323398', '1', '编辑配送区域: 门店自提', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1495', '1441327320', '1', '添加: mic', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1496', '1441327662', '1', '删除: mic', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1497', '1441327724', '1', '添加: 黑老包店', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1498', '1441327821', '1', '编辑: 黑老包店', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1499', '1441328853', '1', '添加: 长宁街店', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1500', '1441328950', '1', '编辑: 黑老包店', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1501', '1441329088', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1502', '1441329223', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1503', '1441329751', '1', '添加广告: 商品详情页左侧广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1504', '1441329807', '1', '编辑广告: 商品详情页左侧广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1505', '1441331284', '1', '编辑会员等级: 普通会员', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1506', '1441331285', '1', '编辑会员等级: 铜牌会员', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1507', '1441331285', '1', '编辑会员等级: 金牌会员', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1508', '1441331286', '1', '编辑会员等级: 钻石会员', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1509', '1441331896', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1510', '1441331967', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1511', '1441331975', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1512', '1441332212', '1', '编辑广告: wap首页主广告3', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1513', '1441332248', '1', '编辑广告: wap首页主广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1514', '1441332291', '1', '编辑广告: wap首页主广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1515', '1441332964', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1516', '1441333003', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1517', '1441381040', '1', '编辑商店设置: ', '219.155.127.96');
INSERT INTO `ecs_admin_log` VALUES ('1518', '1441381237', '1', '编辑商店设置: ', '219.155.127.96');
INSERT INTO `ecs_admin_log` VALUES ('1519', '1441409400', '1', '编辑拍卖活动: 八轮', '219.155.127.96');
INSERT INTO `ecs_admin_log` VALUES ('1520', '1441409502', '1', '编辑超值礼包: 家庭精美厨具套餐', '219.155.127.96');
INSERT INTO `ecs_admin_log` VALUES ('1521', '1441409542', '1', '编辑超值礼包: 家庭精美厨具套餐', '219.155.127.96');
INSERT INTO `ecs_admin_log` VALUES ('1522', '1441470306', '1', '添加红包类型: 线下红包', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1523', '1441470314', '1', '添加用户红包: 1000018315', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1524', '1441495615', '1', '添加配送区域: 商城快递', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1525', '1441555484', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1526', '1441556260', '1', '编辑配送区域: 商城快递', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1527', '1441559846', '1', '编辑广告: 主广告右广告', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1528', '1441561598', '1', '编辑广告: 首页专题广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1529', '1441561708', '1', '编辑广告: 首页专题广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1530', '1441561732', '1', '编辑广告: 首页专题广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1531', '1441561744', '1', '编辑广告: 首页专题广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1532', '1441561780', '1', '编辑广告: 首页专题广告3', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1533', '1441561793', '1', '编辑广告: 首页专题广告4', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1534', '1441561805', '1', '编辑广告: 首页专题广告5', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1535', '1441563055', '1', '编辑会员账号: anan', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1536', '1441643677', '1', '添加广告位置: 导航菜单-93-右侧-促销专题', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1537', '1441643820', '1', '添加广告: 导航菜单-93-右侧-促销专题', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1538', '1441643961', '1', '添加广告位置: 导航菜单-93-右侧-促销专题1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1539', '1441643997', '1', '添加广告: 导航菜单-93-右侧-促销专题1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1540', '1441644044', '1', '编辑广告: 导航菜单-93-右侧-促销专题1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1541', '1441644092', '1', '删除广告: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1542', '1441644099', '1', '删除广告位置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1543', '1441644201', '1', '编辑广告: 导航菜单-93-右侧-促销专题', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1544', '1441644360', '1', '添加广告: 导航菜单-93-右侧-促销专题1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1545', '1441644604', '1', '添加在线调查: 从哪里了解我们的网站', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1546', '1441644624', '1', '添加在线调查: 搜索引擎', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1547', '1441644628', '1', '添加在线调查: 微信', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1548', '1441644634', '1', '添加在线调查: QQ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1549', '1441644641', '1', '添加在线调查: 论坛', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1550', '1441644649', '1', '添加在线调查: 朋友介绍', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1551', '1441647473', '1', '编辑文章分类: 购物保障', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1552', '1441647644', '1', '添加文章: 新手注册', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1553', '1441651832', '1', '删除会员注册项: QQ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1554', '1441651929', '1', '回收商品: 短发发达', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1555', '1441652856', '1', '添加文章: 门店自提', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1556', '1441653110', '1', '编辑文章: 配送费收取标准', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1557', '1441653188', '1', '添加文章: 收货指南', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1558', '1441653269', '1', '添加文章: 30分钟送达', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1559', '1441653750', '1', '编辑文章: 售后政策', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1560', '1441653881', '1', '添加文章: 正品保证', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1561', '1441653942', '1', '添加文章: 注册协议', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1562', '1441653970', '1', '添加文章: 隐私保护', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1563', '1441653988', '1', '添加文章: 免责声明', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1564', '1441654087', '1', '编辑文章: 小京东简介', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1565', '1441654135', '1', '编辑文章: 网点加盟', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1566', '1441654173', '1', '删除文章: 网点加盟', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1567', '1441654218', '1', '添加文章: 网点加盟', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1568', '1441654250', '1', '编辑文章: 网点加盟', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1569', '1441665139', '1', '删除广告: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1570', '1441665249', '1', '添加广告位置: 提货列表banner广告', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1571', '1441665469', '1', '添加广告: 提货列表banner广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1572', '1441665943', '1', '编辑广告: 提货列表banner广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1573', '1441666018', '1', '添加广告: 提货列表banner广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1574', '1441666060', '1', '编辑广告: 导航菜单-93-右侧-促销专题', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1575', '1441666096', '1', '编辑广告: 导航菜单-93-右侧-促销专题', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1576', '1441666274', '1', '编辑广告位置: 导航菜单-93-右侧-促销专题', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1577', '1441666356', '1', '编辑广告位置: 提货列表banner广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1578', '1441666370', '1', '删除广告: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1579', '1441666393', '1', '添加广告位置: 提货列表banner广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1580', '1441666413', '1', '添加广告: 提货列表banner广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1581', '1441670962', '1', '编辑广告: 导航菜单-93-右侧-促销专题', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1582', '1441671138', '1', '编辑广告位置: 导航菜单-98-右侧-促销专题', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1583', '1441671298', '1', '删除广告: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1584', '1441671420', '1', '编辑广告位置: 提货列表banner广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1585', '1441671439', '1', '添加广告位置: 提货列表banner广告3', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1586', '1441671527', '1', '添加广告: 提货列表banner广告3', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1587', '1441672376', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1588', '1441672419', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1589', '1441672727', '1', '编辑会员账号: lxg', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1590', '1441675028', '1', '编辑商品: 奥美康Y-M2102颈椎按摩枕  U型护颈枕保健按摩器', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1591', '1441675832', '1', '编辑商品: 蒙牛 特仑苏 纯牛奶250mlX12包/提', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1592', '1441676767', '1', '添加预售商品: 惠普生牌钙镁锌咀嚼片60片 补充钙镁锌', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1593', '1441676871', '1', '编辑商品: 蒙牛 特仑苏 纯牛奶250mlX12包/提', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1594', '1441676947', '1', '编辑商品: 蒙牛 特仑苏 纯牛奶250mlX12包/提', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1595', '1441677127', '1', '删除拍卖活动: 汽车玩具白色', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1596', '1441735672', '1', '编辑广告: 首页-分类ID93通栏广告', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1597', '1441750473', '1', '编辑广告: 首页-分类ID98通栏广告', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1598', '1441750600', '1', '编辑广告: 首页-分类ID96通栏广告', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1599', '1441820478', '1', '编辑广告: 首页专题广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1600', '1441820502', '1', '编辑广告: 首页专题广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1601', '1441820522', '1', '编辑广告: 首页专题广告3', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1602', '1441820538', '1', '编辑广告: 首页专题广告4', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1603', '1441820554', '1', '编辑广告: 首页专题广告5', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1604', '1441820617', '1', '编辑广告: 首页幻灯片-小图下1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1605', '1441820639', '1', '编辑广告: 首页幻灯片-小图下2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1606', '1441820648', '1', '编辑广告: 首页幻灯片-小图下3', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1607', '1441820820', '1', '编辑广告: 首页幻灯片-小图下1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1608', '1441820867', '1', '编辑广告: 首页幻灯片-小图下1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1609', '1441821711', '1', '编辑广告: wap首页主广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1610', '1441822315', '1', '编辑广告: 手机端首页左侧广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1611', '1441822581', '1', '编辑商品分类: 薯片', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1612', '1441822617', '1', '编辑商品分类: 薯片', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1613', '1441822830', '1', '编辑商品分类: 薯片', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1614', '1441822907', '1', '编辑商品分类: 薯片', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1615', '1441827580', '1', '编辑广告: 首页专题广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1616', '1441827633', '1', '编辑广告: 首页专题广告4', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1617', '1441827695', '1', '编辑广告: 首页专题广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1618', '1441827720', '1', '编辑广告: 首页专题广告3', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1619', '1441827747', '1', '编辑广告: 首页专题广告5', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1620', '1441827792', '1', '编辑商品分类: 酒茶饮料', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1621', '1441827821', '1', '编辑商品分类: 酒茶饮料', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1622', '1441841311', '1', '编辑商品分类: 薯片', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1623', '1441841455', '1', '编辑商品分类: 薯片', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1624', '1441847051', '1', '编辑广告位置: 手机端首页左侧广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1625', '1441903127', '1', '编辑广告: 手机端首页左侧广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1626', '1441903198', '1', '编辑广告位置: 手机端首页左侧广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1627', '1441903253', '1', '编辑广告: 手机端首页左侧广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1628', '1441903357', '1', '编辑广告: 手机端首页右侧广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1629', '1441903434', '1', '编辑广告位置: 手机端首页右侧广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1630', '1441903449', '1', '编辑广告: 手机端首页右侧广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1631', '1441903586', '1', '编辑广告: 手机端首页右侧广告1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1632', '1441903646', '1', '编辑广告位置: 手机端首页左侧广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1633', '1441903688', '1', '编辑广告: 手机端首页左侧广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1634', '1441903908', '1', '编辑广告: 手机端首页右侧广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1635', '1441903980', '1', '编辑广告位置: 手机端首页右侧广告2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1636', '1441904060', '1', '编辑广告位置: 手机端首页右侧广告1-1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1637', '1441904075', '1', '编辑广告位置: 手机端首页右侧广告1-2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1638', '1441904118', '1', '编辑广告: 手机端首页右侧广告1-1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1639', '1441904129', '1', '编辑广告: 手机端首页右侧广告1-2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1640', '1441904332', '1', '编辑前台语言项: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1641', '1441904561', '1', '添加广告位置: 手机端首页广告3-1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1642', '1441904576', '1', '添加广告: 手机端首页广告3-1', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1643', '1441904704', '1', '添加广告位置: 手机端首页广告3-2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1644', '1441904722', '1', '添加广告: 手机端首页广告3-2', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1645', '1441908647', '1', '添加广告位置: 分类-93-促销广告', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1646', '1441908680', '1', '添加广告: 分类-93-促销广告', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1647', '1441909162', '1', '编辑商品分类: 休闲零食', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1648', '1441909185', '1', '编辑商品分类: 休闲零食', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1649', '1441909209', '1', '编辑商品分类: 薯片', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1650', '1441911142', '1', '编辑商品分类: 锅巴', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1651', '1441912553', '1', '编辑商品分类: 洗衣服务', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1652', '1441922241', '1', '编辑商品分类: 洗衣服务', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1653', '1441924219', '1', '编辑商品分类: 洗衣服务', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1654', '1441926321', '1', '编辑商品分类: 洗衣服务', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1655', '1441926930', '1', '编辑文章: 常见问题', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1656', '1441927128', '1', '编辑文章: 常见问题', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1657', '1441927194', '1', '编辑文章: 常见问题', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1658', '1441927237', '1', '编辑文章: 常见问题', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1659', '1441927448', '1', '编辑文章: 常见问题', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1660', '1441927487', '1', '编辑文章: 常见问题', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1661', '1441927499', '1', '编辑文章: 常见问题', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1662', '1441950003', '1', '编辑商品分类: 休闲食品', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1663', '1441950169', '1', '编辑商品分类: 薯片', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1664', '1441957131', '1', '编辑商品分类: 休闲零食', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1665', '1441957519', '1', '编辑商品分类: 休闲零食', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1666', '1441957647', '1', '编辑商品分类: 休闲零食', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1667', '1441957706', '1', '编辑商品分类: 休闲零食', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1668', '1441957780', '1', '编辑商品分类: 薯片', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1669', '1441983201', '1', '编辑广告位置: 手机端首页左侧广告1', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1670', '1441983293', '1', '编辑广告位置: 手机端首页左侧广告1', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1671', '1441983294', '1', '编辑广告位置: 手机端首页左侧广告2', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1672', '1441983301', '1', '编辑广告位置: 手机端首页左侧广告1', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1673', '1441983305', '1', '编辑广告位置: 手机端首页左侧广告2', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1674', '1441983546', '1', '编辑广告位置: 手机端首页左侧广告1', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1675', '1441983992', '1', '添加广告位置: 95', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1676', '1441984001', '1', '编辑广告位置: 分类-93-促销广告', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1677', '1441984020', '1', '编辑广告位置: 分类-95-促销广告', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1678', '1441984267', '1', '添加广告: 分类-95-促销广告', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1679', '1441985108', '1', '编辑广告位置: 手机端首页右侧广告3', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1680', '1441985131', '1', '编辑广告位置: 手机端首页右侧广告3', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1681', '1441985191', '1', '编辑广告位置: 手机端首页左侧广告1', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1682', '1441985193', '1', '编辑广告位置: 手机端首页左侧广告2', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1683', '1441985195', '1', '编辑广告位置: 手机端首页右侧广告1-1', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1684', '1441985198', '1', '编辑广告位置: 手机端首页右侧广告1-2', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1685', '1441985199', '1', '编辑广告位置: 手机端首页左侧广告1', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1686', '1441985202', '1', '编辑广告位置: 手机端首页右侧广告1-1', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1687', '1441985208', '1', '编辑广告位置: 手机端首页左侧广告2', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1688', '1441985211', '1', '编辑广告位置: 手机端首页左侧广告1', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1689', '1441985360', '1', '编辑广告位置: 手机端首页左侧广告2', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1690', '1441985460', '1', '编辑广告: 手机端首页左侧广告1', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1691', '1441985518', '1', '编辑广告: 手机端首页左侧广告1', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1692', '1441985644', '1', '编辑广告位置: 手机端首页左侧广告2', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1693', '1441985672', '1', '编辑广告: 手机端首页左侧广告2', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1694', '1441985919', '1', '编辑广告位置: 手机端首页广告1-1', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1695', '1441985940', '1', '编辑广告位置: 手机端首页左侧广告1', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1696', '1441986000', '1', '编辑广告位置: 手机端首页广告1-1', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1697', '1441986039', '1', '编辑广告位置: 手机端首页广告1-2', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1698', '1441986045', '1', '编辑广告位置: 手机端首页广告1-3', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1699', '1441986101', '1', '编辑广告位置: 手机端首页左侧广告2', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1700', '1441986121', '1', '编辑广告位置: 手机端首页左侧广告2', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1701', '1441986136', '1', '编辑广告位置: 手机端首页左侧广告2', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1702', '1441986164', '1', '编辑广告位置: 手机端首页广告2-1', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1703', '1441986345', '1', '添加广告位置: 手机端首页广告2-2', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1704', '1441986397', '1', '编辑广告位置: 手机端首页广告2-2', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1705', '1441986444', '1', '编辑广告位置: 手机端首页广告2-2', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1706', '1441986467', '1', '添加广告位置: 手机端首页广告2-3', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1707', '1441986500', '1', '编辑广告位置: 手机端首页广告2-3', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1708', '1441986576', '1', '编辑广告位置: 手机端首页广告2-3', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1709', '1441986626', '1', '编辑广告位置: 手机端首页广告2-3', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1710', '1441986639', '1', '编辑广告位置: 手机端首页右侧广告3', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1711', '1441986732', '1', '编辑广告位置: 手机端首页广告3-1', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1712', '1441986738', '1', '编辑广告位置: 手机端首页广告3-3', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1713', '1441986780', '1', '编辑广告位置: 手机端首页广告3-1', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1714', '1441986800', '1', '编辑广告位置: 手机端首页广告3-2', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1715', '1441986828', '1', '编辑广告位置: 手机端首页广告3-3', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1716', '1441987076', '1', '编辑广告位置: 手机端首页广告3-3', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1717', '1441987144', '1', '添加广告位置: 手机端首页广告3-4', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1718', '1441987165', '1', '编辑广告位置: 658', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1719', '1441987193', '1', '编辑广告位置: 手机端首页广告3-4', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1720', '1441987268', '1', '编辑广告位置: 手机端首页广告3-4', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1721', '1441987693', '1', '编辑广告: 手机端首页左侧广告2', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1722', '1441988315', '1', '编辑广告: 手机端首页左侧广告2', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1723', '1441988358', '1', '编辑广告: 手机端首页右侧广告1-1', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1724', '1441988406', '1', '编辑广告: 手机端首页右侧广告1-1', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1725', '1441988441', '1', '编辑广告: 手机端首页右侧广告1-1', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1726', '1441988481', '1', '编辑广告: 手机端首页左侧广告1', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1727', '1441988577', '1', '编辑广告: 手机端首页右侧广告1-2', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1728', '1441988609', '1', '编辑广告: 手机端首页左侧广告1', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1729', '1441988630', '1', '编辑广告: 手机端首页右侧广告1-1', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1730', '1441988655', '1', '编辑广告: 手机端首页右侧广告1-2', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1731', '1441988739', '1', '编辑广告: 手机端首页左侧广告2', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1732', '1441988918', '1', '编辑广告: 手机端首页左侧广告2', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1733', '1441989041', '1', '编辑广告位置: 手机端首页广告2-1', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1734', '1441990036', '1', '编辑广告位置: 手机端首页广告3-2', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1735', '1441990036', '1', '编辑广告位置: 手机端首页广告3-2', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1736', '1441990413', '1', '删除广告: ', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1737', '1441990463', '1', '添加广告: 手机端首页左侧广告2-1', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1738', '1441990704', '1', '编辑广告位置: 手机端首页广告2-2', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1739', '1441990833', '1', '添加广告: 手机端首页广告2-2', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1740', '1441991033', '1', '添加广告: 手机端首页右侧广告2-3', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1741', '1442025906', '1', '编辑广告: 手机端首页右侧广告2-3', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1742', '1442025959', '1', '编辑广告位置: 手机端首页广告2-1', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1743', '1442025984', '1', '编辑广告位置: 173', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1744', '1442026031', '1', '编辑广告: 手机端首页左侧广告2-1', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1745', '1442026132', '1', '编辑广告: 手机端首页右侧广告2-3', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1746', '1442026190', '1', '编辑广告: 手机端首页广告2-2', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1747', '1442026215', '1', '编辑广告: 手机端首页右侧广告2-3', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1748', '1442026247', '1', '编辑广告: 手机端首页右侧广告2-3', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1749', '1442026876', '1', '编辑广告: 手机端首页右侧广告3', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1750', '1442071091', '1', '编辑商品分类: 薯片', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1751', '1442071327', '1', '编辑商品分类: 锅巴', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1752', '1442071356', '1', '编辑商品分类: 其它膨化食品', '115.60.24.23');
INSERT INTO `ecs_admin_log` VALUES ('1753', '1442099589', '1', '添加商品: 供应商商品', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1754', '1442099673', '1', '编辑商品: 浴天下洗澡巾 搓澡巾', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1755', '1442106281', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1756', '1442107889', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1757', '1442107930', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1758', '1442109845', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1759', '1442109886', '1', '编辑商店设置: ', '123.160.237.29');
INSERT INTO `ecs_admin_log` VALUES ('1760', '1442188035', '1', '编辑商店设置: ', '123.160.237.29');

-- ----------------------------
-- Table structure for `ecs_admin_message`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_admin_message`;
CREATE TABLE `ecs_admin_message` (
  `message_id` smallint(5) unsigned NOT NULL auto_increment,
  `sender_id` tinyint(3) unsigned NOT NULL default '0',
  `receiver_id` tinyint(3) unsigned NOT NULL default '0',
  `sent_time` int(11) unsigned NOT NULL default '0',
  `read_time` int(11) unsigned NOT NULL default '0',
  `readed` tinyint(1) unsigned NOT NULL default '0',
  `deleted` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(150) NOT NULL default '',
  `message` text NOT NULL,
  PRIMARY KEY  (`message_id`),
  KEY `sender_id` (`sender_id`,`receiver_id`),
  KEY `receiver_id` (`receiver_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_admin_message
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_admin_user`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_admin_user`;
CREATE TABLE `ecs_admin_user` (
  `user_id` smallint(5) unsigned NOT NULL auto_increment,
  `user_name` varchar(60) NOT NULL default '',
  `email` varchar(60) NOT NULL default '',
  `password` varchar(32) NOT NULL default '',
  `ec_salt` varchar(10) default NULL,
  `add_time` int(11) NOT NULL default '0',
  `last_login` int(11) NOT NULL default '0',
  `last_ip` varchar(15) NOT NULL default '',
  `action_list` text NOT NULL,
  `nav_list` text NOT NULL,
  `lang_type` varchar(50) NOT NULL default '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `suppliers_id` smallint(5) unsigned default '0',
  `todolist` longtext,
  `role_id` smallint(5) default NULL,
  PRIMARY KEY  (`user_id`),
  KEY `user_name` (`user_name`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_admin_user
-- ----------------------------
INSERT INTO `ecs_admin_user` VALUES ('1', 'admin', '222@qq.com', '53660e6be6421bdefa4675439a89828c', '7292', '1416555690', '1442186357', '123.160.237.29', 'all', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit', '', '0', '0', '', '0');

-- ----------------------------
-- Table structure for `ecs_adsense`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_adsense`;
CREATE TABLE `ecs_adsense` (
  `from_ad` smallint(5) NOT NULL default '0',
  `referer` varchar(255) NOT NULL default '',
  `clicks` int(10) unsigned NOT NULL default '0',
  KEY `from_ad` (`from_ad`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_adsense
-- ----------------------------
INSERT INTO `ecs_adsense` VALUES ('1', '本站', '36');
INSERT INTO `ecs_adsense` VALUES ('2', '本站', '22');
INSERT INTO `ecs_adsense` VALUES ('58', '本站', '2');
INSERT INTO `ecs_adsense` VALUES ('56', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('59', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('3', '本站', '18');
INSERT INTO `ecs_adsense` VALUES ('4', '本站', '15');
INSERT INTO `ecs_adsense` VALUES ('5', '本站', '11');
INSERT INTO `ecs_adsense` VALUES ('8', '本站', '6');
INSERT INTO `ecs_adsense` VALUES ('10', '本站', '2');
INSERT INTO `ecs_adsense` VALUES ('7', '本站', '3');
INSERT INTO `ecs_adsense` VALUES ('18', '本站', '3');
INSERT INTO `ecs_adsense` VALUES ('9', '本站', '3');
INSERT INTO `ecs_adsense` VALUES ('62', '本站', '8');
INSERT INTO `ecs_adsense` VALUES ('35', '本站', '5');
INSERT INTO `ecs_adsense` VALUES ('36', '本站', '3');
INSERT INTO `ecs_adsense` VALUES ('21', '本站', '4');
INSERT INTO `ecs_adsense` VALUES ('26', '本站', '8');
INSERT INTO `ecs_adsense` VALUES ('24', '本站', '2');
INSERT INTO `ecs_adsense` VALUES ('20', '本站', '2');
INSERT INTO `ecs_adsense` VALUES ('30', '本站', '3');
INSERT INTO `ecs_adsense` VALUES ('28', '本站', '4');
INSERT INTO `ecs_adsense` VALUES ('23', '本站', '2');
INSERT INTO `ecs_adsense` VALUES ('6', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('11', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('19', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('12', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('22', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('13', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('14', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('25', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('15', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('27', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('16', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('29', '本站', '2');
INSERT INTO `ecs_adsense` VALUES ('17', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('31', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('32', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('37', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('33', '本站', '1');
INSERT INTO `ecs_adsense` VALUES ('34', '本站', '1');

-- ----------------------------
-- Table structure for `ecs_ad_custom`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_ad_custom`;
CREATE TABLE `ecs_ad_custom` (
  `ad_id` mediumint(8) unsigned NOT NULL auto_increment,
  `ad_type` tinyint(1) unsigned NOT NULL default '1',
  `ad_name` varchar(60) default NULL,
  `add_time` int(10) unsigned NOT NULL default '0',
  `content` mediumtext,
  `url` varchar(255) default NULL,
  `ad_status` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_ad_custom
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_ad_position`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_ad_position`;
CREATE TABLE `ecs_ad_position` (
  `position_id` tinyint(3) unsigned NOT NULL auto_increment,
  `position_name` varchar(60) NOT NULL default '',
  `ad_width` smallint(5) unsigned NOT NULL default '0',
  `ad_height` smallint(5) unsigned NOT NULL default '0',
  `position_desc` varchar(255) NOT NULL default '',
  `position_style` text NOT NULL,
  PRIMARY KEY  (`position_id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_ad_position
-- ----------------------------
INSERT INTO `ecs_ad_position` VALUES ('1', '首页专题广告1', '242', '348', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('2', '首页专题广告2', '242', '348', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('3', '首页专题广告3', '242', '348', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('4', '首页专题广告4', '242', '348', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('5', '首页专题广告5', '242', '348', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('6', '首页-店铺-左侧广告', '212', '326', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('7', '首页-店铺-右侧广告', '212', '326', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('8', '首页幻灯片-小图下1', '250', '172', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('9', '首页幻灯片-小图下2', '250', '172', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('10', '首页幻灯片-小图下3', '250', '172', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('11', '首页-分类ID93-左侧图片', '240', '296', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('12', '首页-分类ID95-左侧图片', '240', '296', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('13', '首页-分类ID97-左侧图片', '240', '296', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('14', '首页-分类ID98-左侧图片', '240', '296', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('15', '首页-分类ID101-左侧图片', '240', '296', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('16', '首页-分类ID99-左侧图片', '240', '296', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('17', '首页-分类ID100-左侧图片', '240', '296', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('18', '首页-分类ID96-左侧图片', '240', '296', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('19', '首页-分类ID93右侧广告1', '150', '280', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('20', '首页-分类ID93右侧广告2', '150', '280', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('21', '首页-分类ID95右侧广告1', '150', '280', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('22', '首页-分类ID95右侧广告2', '150', '280', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('23', '首页-分类ID97右侧广告1', '150', '280', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('24', '首页-分类ID97右侧广告2', '150', '280', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('25', '首页-分类ID98右侧广告1', '150', '280', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('26', '首页-分类ID98右侧广告2', '150', '280', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('27', '首页-分类ID101右侧广告1', '150', '280', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('28', '首页-分类ID101右侧广告2', '150', '280', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('29', '首页-分类ID99右侧广告1', '150', '280', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('30', '首页-分类ID99右侧广告2', '150', '280', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('31', '首页-分类ID100右侧广告1', '150', '280', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('32', '首页-分类ID100右侧广告2', '150', '280', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('33', '首页-分类ID96右侧广告1', '150', '280', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('34', '首页-分类ID96右侧广告2', '150', '280', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('35', '首页-分类ID93通栏广告', '1210', '100', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('36', '首页-分类ID98通栏广告', '1210', '100', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('37', '首页-分类ID96通栏广告', '1210', '100', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('38', '频道页-分类ID1029-图片1', '510', '187', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('39', '频道页-分类ID1029-图片2', '340', '187', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('40', '频道页-分类ID1029-图片3', '340', '187', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('41', '频道页-分类ID2-图片1', '248', '484', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('42', '频道页-分类ID2-图片2', '248', '484', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('43', '频道页-分类ID2-图片3', '247', '241', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('44', '积分商城banner广告1', '910', '320', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('45', '积分商城banner广告2', '910', '320', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('46', '积分商城banner广告3', '910', '320', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('47', '积分商城banner广告4', '910', '320', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('48', '频道页面-小分类ID55-广告', '483', '456', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('49', '积分商城通栏广告', '1210', '60', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('50', '频道页面-小分类ID57-广告', '483', '456', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('51', '拍卖列表banner广告1', '1210', '360', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('52', '拍卖列表banner广告2', '1210', '360', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('53', '拍卖列表banner广告3', '1210', '360', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('54', '拍卖列表banner广告4', '1210', '360', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('55', '频道页面-小分类ID56-广告', '483', '456', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('56', '商品详情页左侧广告1', '210', '260', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('57', '商品详情页左侧广告2', '210', '260', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('58', '导航菜单-98-右侧-促销专题', '194', '70', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('60', '提货列表banner广告1', '1210', '320', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('61', '提货列表banner广告2', '1210', '320', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` VALUES ('62', '提货列表banner广告3', '1210', '320', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');

-- ----------------------------
-- Table structure for `ecs_affiliate_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_affiliate_log`;
CREATE TABLE `ecs_affiliate_log` (
  `log_id` mediumint(8) NOT NULL auto_increment,
  `order_id` mediumint(8) NOT NULL,
  `time` int(10) NOT NULL,
  `user_id` mediumint(8) NOT NULL,
  `user_name` varchar(60) default NULL,
  `money` decimal(10,2) NOT NULL default '0.00',
  `point` int(10) NOT NULL default '0',
  `separate_type` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_affiliate_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_agency`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_agency`;
CREATE TABLE `ecs_agency` (
  `agency_id` smallint(5) unsigned NOT NULL auto_increment,
  `agency_name` varchar(255) NOT NULL,
  `agency_desc` text NOT NULL,
  PRIMARY KEY  (`agency_id`),
  KEY `agency_name` (`agency_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_agency
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_area_region`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_area_region`;
CREATE TABLE `ecs_area_region` (
  `shipping_area_id` smallint(5) unsigned NOT NULL default '0',
  `region_id` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`shipping_area_id`,`region_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_area_region
-- ----------------------------
INSERT INTO `ecs_area_region` VALUES ('13', '2');
INSERT INTO `ecs_area_region` VALUES ('14', '2');

-- ----------------------------
-- Table structure for `ecs_article`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_article`;
CREATE TABLE `ecs_article` (
  `article_id` mediumint(8) unsigned NOT NULL auto_increment,
  `cat_id` smallint(5) NOT NULL default '0',
  `title` varchar(150) NOT NULL default '',
  `content` longtext NOT NULL,
  `author` varchar(30) NOT NULL default '',
  `author_email` varchar(60) NOT NULL default '',
  `keywords` varchar(255) NOT NULL default '',
  `article_type` tinyint(1) unsigned NOT NULL default '2',
  `is_open` tinyint(1) unsigned NOT NULL default '1',
  `add_time` int(10) unsigned NOT NULL default '0',
  `file_url` varchar(255) NOT NULL default '',
  `open_type` tinyint(1) unsigned NOT NULL default '0',
  `link` varchar(255) NOT NULL default '',
  `description` varchar(255) default NULL,
  PRIMARY KEY  (`article_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_article
-- ----------------------------
INSERT INTO `ecs_article` VALUES ('1', '2', '免责条款', '', '', '', '', '0', '1', '1291604914', '', '0', '', '');
INSERT INTO `ecs_article` VALUES ('2', '2', '隐私保护', '', '', '', '', '0', '1', '1291604914', '', '0', '', '');
INSERT INTO `ecs_article` VALUES ('3', '2', '咨询热点', '', '', '', '', '0', '1', '1291604914', '', '0', '', '');
INSERT INTO `ecs_article` VALUES ('4', '2', '联系我们', '', '', '', '', '0', '1', '1291604914', '', '0', '', '');
INSERT INTO `ecs_article` VALUES ('5', '2', '公司简介', '', '', '', '', '0', '1', '1291604914', '', '0', '', '');
INSERT INTO `ecs_article` VALUES ('6', '-1', '用户协议', '', '', '', '', '0', '1', '1291604914', '', '0', '', '');
INSERT INTO `ecs_article` VALUES ('121', '4', '出错的艺术：如何设计404页面', '<p style=\"text-align: center;\"><br/><img src=\"http://127.0.0.9/includes/ueditor/php/../../../bdimages/upload1/20150720/1437376150737952.png\" title=\"1429682707727611215.png\"/></p>', '', '', '', '0', '1', '1437347353', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('122', '4', '电商营销推广中的四个必杀要点', '<p style=\"text-align: center;\"><img src=\"http://127.0.0.9/includes/ueditor/php/../../../bdimages/upload1/20150720/1437376186103099.jpg\" title=\"1429749558036748346.jpg\"/></p>', '', '', '', '0', '1', '1437347398', '', '0', 'http://www.68ecshop.com/article-1666.html', '');
INSERT INTO `ecs_article` VALUES ('123', '4', '什么是个性化网络营销？', '<p style=\"text-align: center;\"><br/><img src=\"http://127.0.0.9/includes/ueditor/php/../../../bdimages/upload1/20150720/1437376238836623.jpg\" title=\"1429749702100803640.jpg\"/></p>', '', '', '', '0', '1', '1437347454', '', '0', 'http://www.68ecshop.com/article-1666.html', '');
INSERT INTO `ecs_article` VALUES ('124', '4', '阿里云建站市场如何进行网站备案', '<p style=\"text-align: center;\"><br/><img src=\"http://127.0.0.9/includes/ueditor/php/../../../bdimages/upload1/20150720/1437376282729948.png\" title=\"1429844095151690243.png\"/></p>', '', '', '', '0', '1', '1437347484', '', '0', 'http://www.68ecshop.com/article-1610.html', '');
INSERT INTO `ecs_article` VALUES ('125', '4', '初创品牌：如何建立宗教一样的粉丝信仰', '<p style=\"text-align: center;\"><br/><img src=\"http://127.0.0.9/includes/ueditor/php/../../../bdimages/upload1/20150720/1437376314889552.jpg\" title=\"1429749852934400390.jpg\"/></p>', '', '', '', '0', '1', '1437347517', '', '0', 'http://www.68ecshop.com/article-1584.html', '');
INSERT INTO `ecs_article` VALUES ('126', '4', '从VC角度看，什么样的人适合做企业家级创始人', '<p style=\"text-align: center;\"><br/><img src=\"http://127.0.0.9/includes/ueditor/php/../../../bdimages/upload1/20150720/1437376431126857.jpg\" title=\"1429690611334644612.jpg\"/></p>', '', '', '', '0', '1', '1437347633', '', '0', 'http://www.68ecshop.com/article-1563.html', '');
INSERT INTO `ecs_article` VALUES ('127', '4', '2014这一年———小卖家的机会', '<p style=\"text-align: center;\"><br/><img src=\"http://127.0.0.9/includes/ueditor/php/../../../bdimages/upload1/20150720/1437376464197989.jpg\" title=\"1429690759648279542.jpg\"/></p>', '', '', '', '0', '1', '1437347666', '', '0', 'http://www.68ecshop.com/article-1559.html', '');
INSERT INTO `ecs_article` VALUES ('128', '4', '90后创业更擅长喊口号 创业团队拿第一笔融资时应注意什么', '<p style=\"text-align: center;\"><br/><img src=\"http://127.0.0.9/includes/ueditor/php/../../../bdimages/upload1/20150720/1437376601586523.jpg\" title=\"1429690841808104933.jpg\"/></p>', '', '', '', '0', '1', '1437347803', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('129', '4', '传统企业可以融入的互联网思维', '<p style=\"text-align: center;\"><br/><img src=\"http://127.0.0.9/includes/ueditor/php/../../../bdimages/upload1/20150720/1437376628428123.jpg\" title=\"1429756915441137724.jpg\"/></p>', '', '', '', '0', '1', '1437347838', '', '0', 'http://www.68ecshop.com/article-1542.html', '');
INSERT INTO `ecs_article` VALUES ('130', '4', '网店一条街和网店连锁店的未来', '<p><br/><img src=\"http://127.0.0.9/includes/ueditor/php/../../../bdimages/upload1/20150720/1437376698700858.jpg\" title=\"1429749290863113365.jpg\"/></p>', '', '', '', '0', '1', '1437347908', '', '0', 'http://www.68ecshop.com/article-1516.html', '');
INSERT INTO `ecs_article` VALUES ('9', '5', '售后流程', '', '', '', '', '0', '0', '1242576700', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('10', '5', '购物流程', '<p><img height=\"4587\" width=\"813\" alt=\"\" src=\"/ec273cn/utf/360buy2013/images/upload/Image/11111.jpg\" /></p>', '', '', '', '0', '0', '1242576717', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('11', '5', '订购方式', '<p>1、增加用户体验、提高工作效率，高效率就是高收益</p>\r\n<p>2、后台操作时经常迷失在点了哪个分类菜单，现在你不用怕了，选哪个就标注哪个，用了68ecshop模板你还用愁吗？</p>\r\n<p><br />\r\n&nbsp;</p>', '', '', '', '0', '0', '1242576727', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('51', '13', '面部护理满额送157元家', '', '', '', '', '0', '1', '1296113247', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('52', '13', '买家庭护理用品送宝洁魅力', '', '', '', '', '0', '1', '1296113269', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('53', '13', '买名品香水送博柏利女士香', '', '', '', '', '0', '1', '1296113710', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('55', '13', '买婴儿服装送价值39元', '', '', '', '', '0', '1', '1296113776', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('92', '17', '广告通栏1', '', '', '', '', '0', '0', '1437343954', 'data/article/1437442307400141231.jpg', '1', 'http://', '');
INSERT INTO `ecs_article` VALUES ('93', '17', '广告通栏2', '', '', '', '', '0', '0', '1437343982', 'data/article/1437442318510034222.jpg', '1', 'http://', '');
INSERT INTO `ecs_article` VALUES ('15', '7', '货到付款区域', '', '', '', '', '0', '0', '1242577023', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('16', '7', '配送费收取标准', '<p style=\"color:#3C3C3C;font-family:微软雅黑, \"><span style=\"font-family:微软雅黑, sans-serif;font-size:16px;\"><span style=\"color:#3C3C3C;line-height:24px;font-family:SimSun;font-size:14px;background-color:#FFFFFF;\"><span style=\"font-size:18px;\">&nbsp; &nbsp; 配送范围：新密市区及各乡镇</span><br/><span style=\"font-size:18px;\"> &nbsp; &nbsp; 配送费用：包邮免运费</span><br/><span style=\"font-size:18px;\"> &nbsp;</span><span style=\"font-size:18px;\">&nbsp;&nbsp;&nbsp;配送时间：每日 08：00—18：30</span><br/><span style=\"font-size:18px;\"> &nbsp; &nbsp; 服务承诺：</span></span></span><span style=\"font-size:18px;font-family:SimSun;line-height:24px;\">◆新密市区（南环——北环——平安路——迎宾大道以内）</span><span style=\"font-size:18px;font-family:SimSun;line-height:24px;\">18:30之前的订单</span><span style=\"font-size:14px;background-color:#FFFFFF;font-family:SimSun;line-height:24px;\"></span><span style=\"font-size:18px;font-family:SimSun;line-height:24px;\">30分钟内送达，</span><span style=\"font-size:18px;font-family:SimSun;line-height:24px;\">18:30以后的</span><span style=\"font-size:14px;font-family:SimSun;line-height:24px;background-color:#FFFFFF;\"><span style=\"font-size:18px;\">订单次日8:00安排配送，</span><span style=\"font-family:SimSun;font-size:18px;line-height:24px;\">配送</span><span style=\"color:#3C3C3C;font-family:SimSun;font-size:14px;line-height:24px;background-color:#FFFFFF;\"></span><span style=\"font-family:SimSun;font-size:18px;line-height:24px;\">其它区域每加1公里送达时间延长10分钟。</span><span style=\"color:#3C3C3C;font-family:SimSun;font-size:14px;line-height:24px;background-color:#FFFFFF;\"></span><span style=\"color:#3C3C3C;font-family:SimSun;font-size:14px;line-height:24px;background-color:#FFFFFF;\"></span></span> \r\n	</p><p style=\"color:#3C3C3C;font-family:微软雅黑, \"><span style=\"font-family:微软雅黑, sans-serif;font-size:18px;\"><span style=\"line-height:24px;font-family:SimSun;font-size:18px;\"><span style=\"font-size:18px;\">&nbsp; &nbsp;</span></span></span><span style=\"font-family:SimSun;font-size:18px;line-height:24px;\">&nbsp;</span><span style=\"font-family:SimSun;font-size:18px;line-height:24px;\">◆</span><span style=\"font-family:SimSun;font-size:18px;line-height:24px;\">各乡镇 &nbsp;每日12点之前下单，当天送达；12点之后下单，第二天送达。</span> </p><p style=\"color:#3C3C3C;font-family:微软雅黑, \"><span style=\"font-family:微软雅黑, sans-serif;font-size:16px;\"><span style=\"color:#3C3C3C;line-height:24px;font-family:SimSun;font-size:14px;background-color:#FFFFFF;\"> <span style=\"font-size:18px;\"> &nbsp; &nbsp; 如您不清楚所在位置是否在配送范围内，请咨询在线客服或者拨打客服电话400-8388-738。</span></span></span>\r\n	</p><p style=\"color:#3C3C3C;font-family:微软雅黑, \"><span style=\"font-family:微软雅黑, sans-serif;\"><span style=\"color:#3C3C3C;line-height:24px;font-family:SimSun;background-color:#FFFFFF;\"><br/> <span style=\"font-size:18px;\"> &nbsp; &nbsp; 补充说明：如果有自然灾害等其他不可抗拒因素，影响了咱们物流小哥的速度，导致送货延迟， 也请您谅解。这种概率很小很小的是不是？</span><br/></span></span> </p><p><br/></p>', '', '', '', '0', '1', '1242577032', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('17', '7', '支付方式说明', '', '', '', '', '0', '0', '1242577041', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('18', '10', '常见问题', '<p><span style=\"font-family: 宋体,SimSun; font-size: 14px;\">Q：登录小京东商城总是无法链接，这是怎么回事？ <br/>A：请您先刷新一下；或者检查一下网络是否正常，能否登录其它网站，如果以上两种方式都无效，还有一种情况是网页正在更新，可能会影响您的浏览，还望能谅解。 <br/>Q：网站上面显示商品已售完请问什么时候可以在到货？ <br/>A：一般补货时间是7-15个工作日，具体还是以网站信息为准。 <br/>Q：此类商品的规格是什么？性能怎样？ <br/>A：具体商品规格参数及性能问题请您关注商品页面信息，也可以联系厂家电话咨询，或者在商品页面下方发表商品咨询，会有专业人员为您解答！ <br/>Q：如何取消订单？ <br/>A：您可以进入会员中心--我的订单自行操作订单取消或致电客服中心由客服为您取消订单；如订单已进入配送环节不确保能够拦截成功，配送上门时还请您拒收，感谢您的配合。 <br/>Q：我的积分有什么用途吗？ <br/>A：您可以用积分至小京东商城&quot;积分商城&quot;频道免费兑换或积分+现金的形式购买特惠专享商品。 <br/>&nbsp;</span></p><p><span style=\"font-family: 宋体,SimSun; font-size: 14px;\">支付类常见问题&gt;&gt; <br/>Q：如果我选择银行转账，我需要注意什么吗？ <br/>A：如果您选择的是银行转账，请您务必在汇款单的用途栏内注明您的订单号，货款到账时间一般为款汇出后2-5个工作日，收到货款后我们会尽快确认为您发货，9天未付款的订单将被取消，需重新下单。汇款完毕后进入我的订单信息页面填写转账信息。如下图： <br/>Q：我通过网上支付了，为什么订单显示未到款？ <br/>A：请您先查看您的网上银行交易记录（您可以电话联系银行客服、或是通过ATM、银行柜台、登陆个人网上银行等方式查询），确认款项是否成功划出： <br/>●若款项未成功划出，请您在&quot;会员中心--我的订单&quot;中找到该订单重新支付即可</span></p><p><span style=\"font-family: 宋体,SimSun; font-size: 14px;\">●若款项已成功划出，请您联系小京东商城客服处理</span></p><p><span style=\"font-family: 宋体,SimSun; font-size: 14px;\">Q：为什么我的订单不能选择货到付款？ <br/>A:以下几种情况不支持货到付款的：（1）部分商品属于第三方卖家发货的商品，不支持货到付款；（2）您所在地区不在货到付款配送范围配送类常见问题&gt;&gt; <br/>Q：订单已提交成功，什么时候可以发货？ <br/>A：订单提交成功后我们会尽快发货，详细进度查询，您可进入会员中心--我的订单，点击跟踪包裹可实时查看订单进度。 <br/>Q：签收时发现商品包装破损，该如何处理？ <br/>A：商品签收时如包装有破损，请您直接拒收；商品签收后如商品本身有问题，请您在会员中心--我的订单中提交退换货申请，将有专业售后人员为您解决。 <br/>Q配送费如何收取？ <br/>Q：能否提供配送员的联系电话？ <br/>A：当订单状态显示已发货，小京东商城自配送会在系统中更新配送人员号码；在我的订单----包裹跟踪---包装状态-查询配送员电话。 <br/>Q：订单取消了，还想要，能不能再配送过来？ <br/>A：非常抱歉，订单一旦取消将无法恢复，建议您重新下单购买 <br/>Q：为什么提交订单时系统提示液体无法配送？ <br/>A：液体商品因考虑到运输安全，受公安部门、安检限制，因此无法配送，建议您选择其他途径购买。 <br/>退换货常见问题&gt;&gt; <br/>Q：我想办理退换货如何操作？ <br/>A：小京东商城为您提供了自助申请退换货的服务，登录后进入会员中心--我的订单点击“申请退换货”自助完成退换货的申请。如下图显示： <br/>Q：我提交了退换货申请想要取消，怎么办？ <br/>A：您可至会员中心--我的退换货--我的退换货记录点击“取消”按钮即可。 <br/>Q：什么样的情况会收取退换货的运费？ <br/>A：因商品质量问题造成的退换货，小京东商城免费为您提供上门取件或上门换货服务；但因非商品质量问题由客户发起的退换货行为，将由客户承担退换货运费！ <br/>退款类常见问题&gt;&gt; <br/>Q：订单取消成功后多久可以收到退款？ <br/>A：各类型订单退款周期不一样， <br/>Q：礼品卡支付的，款项退到哪里？ <br/>A：礼品卡支付的款项，产生取消、退换货只可退回到您的小京东商城账户中 <br/>发票类常见问题&gt;&gt; <br/>Q：订单送到了，但没有发票，怎么办？ <br/>A：请您在订单发货后一个月内申请补开发票，可进入会员中心--发票管理,点击“补开发票”进行自助申请，收到您的申请后，我们会通过平信方式寄出。 <br/>账户类常见问题&gt;&gt; <br/>Q：如何增强账户的安全性？ <br/>A：您可以登录小京东商城账户， 在会员中心--个人信息管理里，绑定账户手机号码、验证邮箱并及时修改账户密码（高强度密码建议：3种任意组合字母、数字、标点符号），提高您账户的安全性能。 <br/><br/>&nbsp;<br/>&nbsp;</span></p>', '', '', '', '0', '1', '1242577127', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('19', '10', '交易条款', '', '', '', '', '0', '0', '1242577178', '', '0', 'user.php?act=collection_list', '');
INSERT INTO `ecs_article` VALUES ('20', '10', '订购流程', '', '', '', '', '0', '1', '1242577199', '', '0', 'user.php?act=order_list', '');
INSERT INTO `ecs_article` VALUES ('21', '8', '售后政策', '<p><span style=\"font-family: 宋体,SimSun;\"><strong><span style=\"color: rgb(102, 102, 102); font-family: 宋体,SimSun; font-size: 12px;\">小京东承诺符合以下情况，自客户收到商品之日起7日内可以退货，15日内可以换货，客户可在线提交返修申请办理退换货事宜。具体退换货标准如下：</span></strong></span></p><table class=\"tablecss\" cellpadding=\"0\" cellspacing=\"0\" width=\"99%\"><tbody align=\"center\"><tr class=\"firstRow\"><th style=\"background: rgb(246, 252, 254); border: 1px solid rgb(185, 232, 249); line-height: 21px; font-size: 14px; border-collapse: collapse; border-spacing: 0px;\" height=\"30\" width=\"20%\"><span style=\"font-family: 宋体,SimSun;\">退换类别</span></th><th style=\"background: rgb(246, 252, 254); border: 1px solid rgb(185, 232, 249); line-height: 21px; font-size: 14px; border-collapse: collapse; border-spacing: 0px;\" height=\"30\" width=\"20%\"><span style=\"font-family: 宋体,SimSun;\">具体描述</span></th><th style=\"background: rgb(246, 252, 254); border: 1px solid rgb(185, 232, 249); line-height: 21px; font-size: 14px; border-collapse: collapse; border-spacing: 0px;\" height=\"30\" width=\"15%\"><span style=\"font-family: 宋体,SimSun;\">是否支持7天（含）内退货</span></th><th style=\"background: rgb(246, 252, 254); border: 1px solid rgb(185, 232, 249); line-height: 21px; font-size: 14px; border-collapse: collapse; border-spacing: 0px;\" height=\"30\" width=\"15%\"><span style=\"font-family: 宋体,SimSun;\">是否支持15天（含）内换货</span></th><th style=\"background: rgb(246, 252, 254); border: 1px solid rgb(185, 232, 249); line-height: 21px; font-size: 14px; border-collapse: collapse; border-spacing: 0px;\" width=\"10%\"><span style=\"font-family: 宋体,SimSun;\">是否收取返回运费</span></th><th style=\"background: rgb(246, 252, 254); border: 1px solid rgb(185, 232, 249); line-height: 21px; font-size: 14px; border-collapse: collapse; border-spacing: 0px;\" width=\"20%\"><span style=\"font-family: 宋体,SimSun;\">备注</span></th></tr><tr><td style=\"padding: 4px; border: 1px solid rgb(185, 232, 249); line-height: 18px; font-size: 12px; border-collapse: collapse; border-spacing: 0px;\"><span style=\"font-family: 宋体,SimSun;\">国家法律所规定的功能性故障或商品质量问题</span></td><td style=\"padding: 4px; border: 1px solid rgb(185, 232, 249); line-height: 18px; font-size: 12px; border-collapse: collapse; border-spacing: 0px;\"><p style=\"margin: 0px; padding: 0px; text-align: left;\"><span style=\"font-family: 宋体,SimSun;\">经由生产厂家指定或特约售后服务中心检测确认，并出具检测报告或经京东售后确认属于商品质量问题。</span></p></td><td style=\"padding: 4px; border: 1px solid rgb(185, 232, 249); line-height: 18px; font-size: 12px; border-collapse: collapse; border-spacing: 0px;\"><span style=\"font-family: 宋体,SimSun;\">是</span></td><td style=\"padding: 4px; border: 1px solid rgb(185, 232, 249); line-height: 18px; font-size: 12px; border-collapse: collapse; border-spacing: 0px;\"><span style=\"font-family: 宋体,SimSun;\">是</span></td><td style=\"padding: 4px; border: 1px solid rgb(185, 232, 249); line-height: 18px; font-size: 12px; border-collapse: collapse; border-spacing: 0px;\"><span style=\"font-family: 宋体,SimSun;\">否</span></td><td style=\"padding: 4px; border: 1px solid rgb(185, 232, 249); line-height: 18px; font-size: 12px; border-collapse: collapse; border-spacing: 0px;\"><span style=\"font-family: 宋体,SimSun;\">当地无检测条件的请联系小京东售后处理。</span></td></tr><tr><td style=\"padding: 4px; border: 1px solid rgb(185, 232, 249); line-height: 18px; font-size: 12px; border-collapse: collapse; border-spacing: 0px;\"><span style=\"font-family: 宋体,SimSun;\">到货物流损、缺件或商品描述与网站不符等京东原因</span></td><td style=\"padding: 4px; border: 1px solid rgb(185, 232, 249); line-height: 18px; font-size: 12px; border-collapse: collapse; border-spacing: 0px;\"><p style=\"margin: 0px; padding: 0px; text-align: left;\"><span style=\"font-family: 宋体,SimSun;\">物流损指在运输过程中造成的损坏、漏液、破碎、性能故障，经售后人员核查情况属实。缺件指商品原装配件缺失。</span></p></td><td style=\"padding: 4px; border: 1px solid rgb(185, 232, 249); line-height: 18px; font-size: 12px; border-collapse: collapse; border-spacing: 0px;\"><span style=\"font-family: 宋体,SimSun;\">是</span></td><td style=\"padding: 4px; border: 1px solid rgb(185, 232, 249); line-height: 18px; font-size: 12px; border-collapse: collapse; border-spacing: 0px;\"><span style=\"font-family: 宋体,SimSun;\">是</span></td><td style=\"padding: 4px; border: 1px solid rgb(185, 232, 249); line-height: 18px; font-size: 12px; border-collapse: collapse; border-spacing: 0px;\"><span style=\"font-family: 宋体,SimSun;\">否</span></td><td style=\"padding: 4px; border: 1px solid rgb(185, 232, 249); line-height: 18px; font-size: 12px; border-collapse: collapse; border-spacing: 0px;\"><span style=\"font-family: 宋体,SimSun;\">小京东审核期间可能需要快递人员证明或要求您提供实物照片等，以便售后人员快速做出判断并及时处理。</span></td></tr><tr><td style=\"padding: 4px; border: 1px solid rgb(185, 232, 249); line-height: 18px; font-size: 12px; border-collapse: collapse; border-spacing: 0px;\"><span style=\"font-family: 宋体,SimSun;\">其他原因</span></td><td style=\"padding: 4px; border: 1px solid rgb(185, 232, 249); line-height: 18px; font-size: 12px; border-collapse: collapse; border-spacing: 0px;\"><p style=\"margin: 0px; padding: 0px; text-align: left;\"><span style=\"font-family: 宋体,SimSun;\">除以上两种原因之外，如个人原因导致的退换货，在商品完好的前提下。</span></p></td><td style=\"padding: 4px; border: 1px solid rgb(185, 232, 249); line-height: 18px; font-size: 12px; border-collapse: collapse; border-spacing: 0px;\"><span style=\"font-family: 宋体,SimSun;\">是</span></td><td style=\"padding: 4px; border: 1px solid rgb(185, 232, 249); line-height: 18px; font-size: 12px; border-collapse: collapse; border-spacing: 0px;\"><span style=\"font-family: 宋体,SimSun;\">否</span></td><td style=\"padding: 4px; border: 1px solid rgb(185, 232, 249); line-height: 18px; font-size: 12px; border-collapse: collapse; border-spacing: 0px;\"><span style=\"font-family: 宋体,SimSun;\">是</span></td><td style=\"padding: 4px; border: 1px solid rgb(185, 232, 249); line-height: 18px; font-size: 12px; border-collapse: collapse; border-spacing: 0px;\"><span style=\"font-family: 宋体,SimSun;\"></span>由您承担商品返回小京东的运费<a href=\"http://help.jd.com/user/issue/list-116-131.html\" target=\"_blank\"></a></td></tr></tbody></table><p>&nbsp;</p><p><br/></p>', '', '', '服务', '0', '1', '1242577293', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('22', '8', '售后服务保证 ', '', '', '', '售后', '0', '0', '1242577308', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('23', '8', '产品质量保证 ', '', '', '', '质量', '1', '0', '1242577326', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('24', '9', '网站故障报告', '', '', '', '', '0', '0', '1242577432', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('25', '9', '选机咨询 ', '', '', '', '', '0', '0', '1242577448', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('26', '9', '投诉与建议 ', '', '', '', '', '0', '0', '1242577459', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('107', '11', '乐视商城荣获首届艾奇奖“商业模式创新类B2C”银奖', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 近日，首届国际电商创新奖——艾奇奖(ECI Awards)在上海嘉定工业园举办了“国际电商创新论坛暨艾奇奖颁奖盛典”，乐视商城从全球近500余件参赛作品中脱颖而出，荣获首届艾奇奖“商业模式创新类B2C”银奖。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src=\"http://127.0.0.9/includes/ueditor/php/../../../bdimages/upload1/20150720/1437374688345889.jpg\" title=\"1429687406443715819.jpg\"/></p><p>　　作为电商产业的顶级盛会，本次艾奇奖赛事截止最终截稿日，案例数达到500余件，覆盖7个大类、27个细分类别，横扫知名电商平台、品牌与企业，覆盖电商全产业链。其中有5%的案例来自北美，11%来自韩国，18%来自台湾，4%来自香港。<br/>　　而在过去的一年半里，作为乐视超级电视的核心销售渠道乐视商城，完成了整个超级电视150万销售量的60%以上。而2015年，乐视商城将不仅仅销售超级电视，还将出现超级手机智能终端，以及超级汽车。<br/>　　据了解，2015年乐视商城的首要目标是要打造全球首家生态型电商。具体有三个特征，第一，要服务于生态型的用户;第二，销售产品是乐视生态的相关产品;第三是基于生态电商，基于内容为入口做场景话和多终端的体验。<br/>　　乐视智能终端事业群副总裁赵一成表示，“乐视商城要转为乐视生态型的电商，除了硬件销售，最核心的就是完成乐视生态产品所有环节打通，这个是未来三年的发展。未来承载的不仅仅是超级电视，而是一系列乐视生态的相关产品。”<br/>　　为了顺应时代发展和更好满足用户需求，乐视还推出了“LePar超级合伙人”计划，即通过创新的“O2O+C2B+众筹”多维一体合作模式，充分利用乐视生态资源，与加入LePar项目的超级合伙人一起，共同掘金大屏互联网市场。<br/>　　目前乐视商城主要覆盖深度互联网用户，而LePar则将覆盖更多广阔的非深度互联网用户。在LePar服务的区域，乐视商城也会持续不断的为 LePar带来客户，由LePar来为用户提供后续服务，成为乐视商城服务延伸的线下载体，通过乐视商城和LePar可实现线上和线下密切的融合，形成强 大的化学反应。</p>', '', '', '', '0', '1', '1437345891', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('108', '11', '街头小卖部真的被电商和超市逼得走投无路了吗？', '<p>有人还是支了一些招数，它看起来不是自救，更像业态升级。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;<img src=\"http://127.0.0.9/includes/ueditor/php/../../../bdimages/upload1/20150720/1437374786400195.jpg\" title=\"1429686882028132874.jpg\"/></p><p>　　前有大型连锁超市和小型便利店，后有网络生鲜平台和农夫市集，食品零售生意在国外相当不好做。过去十年，传统食品零售业的市场份额丢了 15% (是美国，美国，别着急)。<br/>　　曾经出席奥斯汀西南偏南大会的产业分析师 Philip Lambert 给出了以下几个建议，不管是超市还是传统老店，都可以朝这个方向试试看：<br/>　　1. 假装自己是餐厅!(Grocery+Restaurant=Grocerant)<br/>　　最早你们会看到超市或者小卖部里面有卖熟食的地方，然后发现便利店或者有机商店摆了几把椅子或者放了一个小桌子方便大家吃吃简餐，现在有的食品 零售商基本更像是餐厅了，比如我们之前报道过的 Hunter Gatherer，拥有宽裕的用餐空间、完整的菜单、现点现做的食物。在美国，有群众玩的更过瘾， 小型连锁的 Market Grille 里面能吃到寿司、牛排、早午餐甚至新鲜的苹果酒，伊利诺伊州的 Mariano&#39;s 连锁商店则提供更高级的烧烤和生蚝吧。这些都是直接展示自己贩卖的食材以及为店铺增加特色分的办法。<br/>　　2. 店铺不要开的那么大，选货精准更精准。<br/>　　其实十年里，食品零售店的平均面积一直在减少，这一部分归因于居民区的精品杂货店的数量增加，它们精选的产品比大超市更为独特、灵活、注重品 质。和木头柜子上美美的 3 款产品中选 1 种的体验相比，消费者并不一定想从看不到尽头的货架上的 50 种产品里面艰辛地挑选。现在大型超市连锁都开始试图缩小自己的尺寸，或者推出提供快捷购物的社区店。<br/>　　3. 服务周全更周全。<br/>　　在大家都愿意接受风霜雨雪去露天的农夫市集买菜的时候，作为零售商店能做的可能就是增加更多“人”的成分，现在越来越多的海鲜区和肉类区站着一位师傅给你讲解操作(就好像这些是他养的一样)，红酒和奶酪的区域也有更为专业的人员提供一些搭配建议。<br/>　　4. 讨好 80 和 90 后的尝鲜口味。<br/>　　要满足这个装腔作势高发人群的口味，食品零售可以突出各种生鲜、本土、有机的元素，再来一点遥远的异国风情(来个中东的什么谷物或者亚洲的什么发酵玩意)。针对这些没事找事爱凑热闹的人，也许还需要多办一些品尝会、分享会、小课堂之类的地接活动。<br/>　　5. 对人类的懒惰做好准备。<br/>　　现在根本就是有人连门都懒得出、商店都懒得进，所以零售业者需要在物流上面下点功夫。不是说这些零售店一定要开自己的网店，比如他们就可以试着和亚马逊、 Uber 之类已经布好网络或平台的公司合作，借力完成自己的运输。</p>', '', '', '', '0', '1', '1437345989', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('31', '12', '诺基亚6681手机广告欣赏', '<object>\n<param value=\"always\" name=\"allowScriptAccess\" />\n<param value=\"transparent\" name=\"wmode\" />\n<param value=\"http://6.cn/player.swf?flag=0&amp;vid=nZNyu3nGNWWYjmtPQDY9nQ\" name=\"movie\" /><embed width=\"480\" height=\"385\" src=\"http://6.cn/player.swf?flag=0&amp;vid=nZNyu3nGNWWYjmtPQDY9nQ\" allowscriptaccess=\"always\" wmode=\"transparent\" type=\"application/x-shockwave-flash\"></embed></object>', '', '', '', '0', '1', '1242579069', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('32', '12', '手机游戏下载', '<p>三星SGHU308说明书下载，点击相关链接下载</p>', '', '', '', '1', '1', '1242579189', '', '0', 'http://soft.imobile.com.cn/index-a-list_softs-cid-1.html', '');
INSERT INTO `ecs_article` VALUES ('33', '12', '三星SGHU308说明书下载', '<p>三星SGHU308说明书下载</p>', '', '', '', '1', '1', '1242579559', 'data/article/1245043292228851198.rar', '2', 'http://', '');
INSERT INTO `ecs_article` VALUES ('34', '12', '3G知识普及', '<p>\n<h2>3G知识普及</h2>\n<div class=\"t_msgfont\" id=\"postmessage_8792145\"><font color=\"black\">3G，全称为3rd Generation，中文含义就是指第三代数字通信。<br />\n</font><br />\n<font color=\"black\">　　1995年问世的第一代<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%C4%A3%C4%E2\">模拟</span>制式<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%CA%D6%BB%FA\">手机</span>（1G）只能进行<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%D3%EF%D2%F4\">语音</span>通话；<br />\n</font><br />\n<font color=\"black\">　　1996到1997年出现的第二代GSM、TDMA等数字制式手机（2G）便增加了接收数据的功能，如接收电子邮件或网页；<br />\n</font><br />\n<font color=\"black\">　　3G不是2009年诞生的，它是上个世纪的产物，而早在2007年国外就已经产生4G了，而<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%D6%D0%B9%FA\">中国</span>也于2008年成功开发出<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%D6%D0%B9%FA\">中国</span>4G，其网络传输的速度可达到每秒钟2G，也就相当于下一部电影只要一秒钟。在上世纪90年末的日韩电影如《我的野蛮女友》中，女主角使用的可以让对方看见自己的视频<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%B5%E7%BB%B0\">电话</span>，就是属于3G技术的重要运用之一。日韩等国3G的运用是上世纪末期的事。而目前国外有些地区已经试运行3.5G甚至4G网络。<br />\n</font><br />\n<font color=\"black\">　 </font><font color=\"black\">（以下为误导）2009年问世的第三代（3G）与 前两代的主要区别是在传输声音和数据的速度上的提升，它能够在全球范围内更好地实现无缝漫游，并处理图像、音乐、视频流等多种媒体形式，提供包括网页浏 览、电话会议、电子商务等多种信息服务，同时也要考虑与已有第二代系统的良好兼容性。为了提供这种服务，无线网络必须能够支持不同的数据传输速度，也就是 说在室内、室外和行车的环境中能够分别支持至少2Mbps（兆比特／每秒）、384kbps（千比特／每秒）以及144kbps的传输速度。（此数值根据 网络环境会发生变化)。<br />\n</font><br />\n<font color=\"black\">　　3G标准，国际电信联盟(ITU)目前一共确定了全球四大3G标准，它们分别是WCDMA、CDMA2000和TD-SCDMA和WiMAX。</font><br />\n<br />\n<font color=\"black\">3G标准　　国际电信联盟（ITU）在2000年5月确定W-CDMA、CDMA2000、TD-SCDMA以 及WiMAX四大主流无线接口标准，写入3G技术指导性文件《2000年国际移动通讯计划》（简称IMT&mdash;2000）。 CDMA是Code Division Multiple Access (码分多址)的缩写，是第三代移动通信系统的技术基础。第一代移动通信系统采用频分多址(FDMA)的模拟调制方式，这种系统的主要缺点是频谱利用率低， 信令干扰话音业务。第二代移动通信系统主要采用时分多址(TDMA)的数字调制方式，提高了系统容量，并采用独立信道传送信令，使系统性能大大改善，但 TDMA的系统容量仍然有限，越区切换性能仍不完善。CDMA系统以其频率规划简单、系统容量大、频率复用系数高、抗多径能力强、通信质量好、软容量、软 切换等特点显示出巨大的发展潜力。下面分别介绍一下3G的几种标准：<br />\n</font><br />\n<br />\n<font color=\"black\">　　 </font><br />\n<font color=\"black\">(1) W-CDMA</font><font color=\"black\"><br />\n</font><br />\n<br />\n<font color=\"black\">　　也称为WCDMA，全称为Wideband CDMA，也称为CDMA Direct Spread，意为宽频分码多重存取，这是基于GSM网发展出来的3G技术规范，是欧洲提出的宽带CDMA技术，它与日本提出的宽带CDMA技术基本相 同，目前正在进一步融合。W-CDMA的支持者主要是以GSM系统为主的欧洲厂商，日本公司也或多或少参与其中，包括欧美的爱立信、阿尔卡特、<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%C5%B5%BB%F9%D1%C7\">诺基亚</span>、 朗讯、北电，以及日本的NTT、富士通、夏普等厂商。 该标准提出了GSM(2G)-GPRS-EDGE-WCDMA(3G)的演进策略。这套系统能够架设在现有的GSM网络上，对于系统提供商而言可以较轻易 地过渡，但是GSM系统相当普及的亚洲对这套新技术的接受度预料会相当高。因此W-CDMA具有先天的市场优势。<br />\n</font><br />\n<br />\n<font color=\"black\">　　 </font><br />\n<font color=\"black\">(2)CDMA2000</font><font color=\"black\"><br />\n</font><br />\n<br />\n<font color=\"black\">　　CDMA2000是由窄带CDMA(CDMA IS95)技术发展而来的宽带CDMA技术，也称为CDMA Multi-Carrier，它是由美国高通北美公司为主导提出，<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%C4%A6%CD%D0%C2%DE%C0%AD\">摩托罗拉</span>、Lucent 和后来加入的韩国三星都有参与，韩国现在成为该标准的主导者。这套系统是从窄频CDMAOne数字标准衍生出来的，可以从原有的CDMAOne结构直接升 级到3G，建设成本低廉。但目前使用CDMA的地区只有日、韩和北美，所以CDMA2000的支持者不如W-CDMA多。不过CDMA2000的研发技术 却是目前各标准中进度最快的，许多3G手机已经率先面世。该标准提出了从CDMA IS95(2G)-CDMA20001x-CDMA20003x(3G)的演进策略。CDMA20001x被称为2.5代移动通信技术。 CDMA20003x与CDMA20001x的主要区别在于应用了多路载波技术，通过采用三载波使带宽提高。目前<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%D6%D0%B9%FA%B5%E7%D0%C5\">中国电信</span>正在采用这一方案向3G过渡，并已建成了CDMA IS95网络。<br />\n</font><br />\n<br />\n<font color=\"black\">　　 </font><br />\n<font color=\"black\">(3)TD-SCDMA</font><font color=\"black\"><br />\n</font><br />\n<br />\n<font color=\"black\">　　全称为Time Division - Synchronous CDMA(时分<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%CD%AC%B2%BD\">同步</span>CDMA)，该标准是由中国大陆独自制定的3G标准，1999年6月29日，中国原邮电部电信科学技术研究院（大唐电信）向ITU提出。该标准将智能无线、<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%CD%AC%B2%BD\">同步</span>CDMA和<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%C8%ED%BC%FE\">软件</span>无 线电等当今国际领先技术融于其中，在频谱利用率、对业务支持具有灵活性、频率灵活性及成本等方面的独特优势。另外，由于中国内的庞大的市场，该标准受到各 大主要电信设备厂商的重视，全球一半以上的设备厂商都宣布可以支持TD&mdash;SCDMA标准。 该标准提出不经过2.5代的中间环节，直接向3G过渡，非常适用于GSM系统向3G升级。<br />\n</font><br />\n<br />\n<font color=\"black\">　　 </font><br />\n<font color=\"black\">(4)WiMAX</font><font color=\"black\"><br />\n</font><br />\n<br />\n<font color=\"black\">　　WiMAX 的全名是微波存取全球互通(Worldwide Interoperability for Microwave Access)，又称为802&middot;16无线城域网，是又一种为企业和家庭用户提供&ldquo;最后一英里&rdquo;的宽带无线连接方案。将此技术与需要授权或免授权的微波设备 相结合之后，由于成本较低，将扩大宽带无线市场，改善企业与服务供应商的认知度。2007年10月19日，国际电信联盟在日内瓦举行的无线通信全体会议 上，经过多数国家投票通过，WiMAX正式被批准成为继WCDMA、CDMA2000和TD-SCDMA之后的第四个全球3G标准。</font></div>\n</p>', '', '', '', '0', '1', '1242580013', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('36', '13', '什么牌子的蜂胶好', '', '', '', '', '0', '1', '1292291460', '', '0', 'http://www.xxx.com', '');
INSERT INTO `ecs_article` VALUES ('37', '13', '蛋白粉有副作用吗？', '', '', '', '', '0', '1', '1292291484', '', '0', 'http://www.xxx.com', '');
INSERT INTO `ecs_article` VALUES ('38', '13', '维生素C ——春季必须补的维生素', '', '', '', '', '0', '1', '1292291503', '', '0', 'http://www.xxx.com', '');
INSERT INTO `ecs_article` VALUES ('39', '13', '青少年吸烟可导致抑郁症', '', '', '', '', '0', '1', '1292291534', '', '0', 'http://www.xxx.com', '');
INSERT INTO `ecs_article` VALUES ('40', '13', '常吃麻辣火锅影响头发生长容易造成脱发', '', '', '', '', '0', '1', '1292291558', '', '0', 'http://www.xxx.com', '');
INSERT INTO `ecs_article` VALUES ('41', '13', '每周骑车5小时或损害男性生育力', '', '', '', '', '0', '1', '1292291583', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('42', '8', '换货流程', '', '', '', '', '0', '1', '1292315950', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('43', '5', '商品评价 ', '', '', '', '', '0', '0', '1292315998', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('45', '7', '订单状态 ', '', '', '', '', '0', '0', '1292316056', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('46', '10', '注册新会员', '', '', '', '', '0', '0', '1292316080', '', '0', 'user.php?act=register', '');
INSERT INTO `ecs_article` VALUES ('47', '9', '联系方式', '', '', '', '', '0', '0', '1292316101', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('61', '12', '买名品香水送博柏利女士香 ', '', '', '', '', '0', '1', '1313660801', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('62', '12', '买家庭护理用品送宝洁魅力 ', '', '', '', '', '0', '1', '1313660809', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('63', '12', '面部护理满额送157元家 ', '', '', '', '', '0', '1', '1313660816', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('94', '18', '外卖O2O：轻模式、重模式、第三方平台', '', '', '', '', '0', '1', '1437344967', '', '0', 'http://www.68ecshop.com/article-1703.html', '');
INSERT INTO `ecs_article` VALUES ('95', '18', 'Etsy上市暴涨88% 中国工艺品电商何去何从？', '', '', '', '', '0', '1', '1437344987', '', '0', 'http://www.68ecshop.com/article-1702.html', '');
INSERT INTO `ecs_article` VALUES ('96', '18', '优衣库的稳健和精明，凡客的文艺和草莽', '', '', '', '', '0', '1', '1437345006', '', '0', 'http://www.68ecshop.com/article-1701.html', '');
INSERT INTO `ecs_article` VALUES ('97', '18', '跨界电商风生水起：京东淘宝进军海外市场困难重重', '', '', '', '', '0', '1', '1437345029', '', '0', 'http://www.68ecshop.com/article-1700.html', '');
INSERT INTO `ecs_article` VALUES ('66', '10', '团购/机票', '', '', '', '', '0', '0', '1365745215', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('67', '10', '大家电', '', '', '', '', '0', '0', '1365745227', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('68', '10', '联系客服', '', '', '', '', '0', '1', '1365745238', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('69', '7', '如何送礼', '', '', '', '', '0', '0', '1365745248', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('70', '7', 'Global Shipping', '', '', '', '', '0', '0', '1365745257', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('71', '5', '在线支付', '', '', '', '', '0', '0', '1365745269', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('72', '5', '公司转账', '', '', '', '', '0', '0', '1365745280', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('73', '8', '退款说明', '', '', '', '', '0', '1', '1365745287', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('74', '8', '返修/退换货', '', '', '', '', '0', '1', '1365745299', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('75', '8', '取消订单', '', '', '', '', '0', '0', '1365745306', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('77', '9', '小京东简介', '<p><span style=\"font-family:宋体;font-size:14px\">&nbsp;&nbsp; 河南小京东电子商务有限公司是河南新密麦迪森药业连锁有限公司承建的一家电商企业，小京东致力于打造O2O一站式服务体验平台，“网上商城+电商体验店”的模式，为推动县域经济互联网的发展，打通互联网消费最后一公里服务。</span> &nbsp;</p><p><img src=\"http://aaa.yshdcom.com/includes/ueditor/php/../../../images/image/47891441682886.png\" alt=\"\"/><br/> <span style=\"font-family:宋体;font-size:14px\"></span> &nbsp;</p><p><span style=\"font-family:宋体;font-size:14px\">&nbsp;&nbsp;&nbsp; 以“打造您身边的智慧社区，乐享家门口的衣食住行生活”为发展理念，以便民服务和便捷购物为主要业务，推动互联网带来的居民便捷生活方式，从而提高社区居民的生活质量和幸福指数！</span> &nbsp;</p><p><span style=\"font-family:宋体;font-size:14px\">&nbsp;&nbsp;&nbsp; 2015年5月，河南小京东电子商务有限公司成立，与麦迪森大药房23家连锁店，小京东生活道便利店2家，小京东健康洗衣中心，小京东物流仓储中心，知名快递公司3家， 达成长期战略伙伴携手合作。一站式服务体验店遍布城区及各乡镇，村，有点成线带动面，秉承“让购物变得简单，一切从服务开始”的宗旨，在家门口就能为居民 解决一切能够想要的生活所需。实现互联网时代居民在互联网时代下家门口的社区店，商城下单，店内免费体验，物流送货，各网点提货及vip送货上门的居民生活新形态，百米之内满足所需！&nbsp;&nbsp;&nbsp;&nbsp;</span> &nbsp;</p><p><span style=\"font-family:宋体;font-size:14px\">&nbsp;&nbsp;&nbsp; 在未来，小京东坚持努力开拓创新，以智能物流为基础，搭建O2O电商服务平台，稳步推进传统商业互联网转型。</span></p><p><br/></p>', '', '', '', '0', '1', '1365745320', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('78', '19', '供货商(入驻商文章标题)', '', 'yaso', 'yaso@yaso.com', '供货商,入驻商', '0', '1', '1401371486', '', '0', 'http://www.baidu.com', '');
INSERT INTO `ecs_article` VALUES ('79', '19', '商家帮助指南', '<p><span style=\"font-size: 12px;\">1、登陆商家管理中心</span></p><p><span style=\"font-size: 12px;\">点击首页的“登陆商家管理中心”链接，进入登陆页面，商家输入自己的用户名密码（此用户名密码与商家在网站注册的用户名密码相同）即可登陆</span></p><p><img src=\"http://xjd.68ecshop.com/includes/ueditor/php/../../../images/image/27991410944317.jpg\" title=\"1.jpg\"/></p><p><span style=\"font-size: 12px;\"><br/></span></p><p><span style=\"font-size: 12px;\">2、</span><span style=\"font-size: 12px;\">店铺基本设置</span></p><p><span style=\"font-size: 12px;\">点击店铺系统设置》店铺基本设置：网店信息</span></p><p style=\"text-align: left;\"><span style=\"font-size: 12px;\">2.1、填写商店名称、商店标题等基本信息，</span></p><p style=\"text-align: left;\"><span style=\"font-size: 12px;\">2.2、选择商店所在地址（必填项，否则前台店铺模板会报错），</span></p><p style=\"text-align: left;\"><span style=\"font-size: 12px;\">2.3、按要求上传店铺logo，大小要求：90 X 54像素</span></p><p style=\"text-align: left;\"><span style=\"font-size: 12px;\"><img src=\"http://xjd.68ecshop.com/includes/ueditor/php/../../../bdimages/upload1/20140917/1410942893866915.jpg\" title=\"2.jpg\"/></span></p><p style=\"text-align: left;\"><span style=\"font-size: 12px;\">2.4、设置商店首页商品数量，该数量控制店铺首页精品、新品、热卖的显示数量</span></p><p style=\"text-align: left;\"><span style=\"font-size: 12px;\">注意：该处不能为空，也不能删除，你可以按照要求修改其显示数量</span></p><p style=\"text-align: left;\"><span style=\"font-size: 12px;\">2.5、设置全店搜索价格区间，按如图要求的填写，不可为空<br/></span></p><p style=\"text-align: left;\"><span style=\"font-size: 12px;\"><img src=\"http://xjd.68ecshop.com/includes/ueditor/php/../../../images/image/34191410944325.jpg\" title=\"3.jpg\"/></span></p><p><span style=\"font-size: 12px;\">2.6、设置短信发送</span></p><p><span style=\"font-size: 12px;\">填写接收短信的手机号码，选择是否发送短信</span></p><p><span style=\"font-size: 12px;\"><img src=\"http://xjd.68ecshop.com/includes/ueditor/php/../../../images/image/85651410944325.jpg\" title=\"4.jpg\"/></span></p><p><span style=\"font-size: 12px;\"><br/></span></p><p><span style=\"font-size: 12px;\">3、选择模板</span></p><p><span style=\"font-size: 12px;\"><span style=\"font-size: 12px;\">点击店铺系统设置》店铺模板选择</span></span></p><p><span style=\"font-size: 12px;\"><span style=\"font-size: 12px;\">可以选择不同风格的模板</span></span></p><p><span style=\"font-size: 12px;\"><span style=\"font-size: 12px;\"><br/></span></span></p><p><span style=\"font-size: 12px;\"><span style=\"font-size: 12px;\">4、申请店铺街</span></span></p><p><span style=\"font-size: 12px;\"><span style=\"font-size: 12px;\">选择店铺的经营类型，填写店铺名称、标题、描述、标签，上传店铺海报，提交即可。网站方管理员审核通过后就可以在店铺街看到你的店铺展示啦</span></span></p><p><span style=\"font-size: 12px;\"><span style=\"font-size: 12px;\">店铺是否出现在店铺街底部的推荐展示以及店铺的排列顺序请联系网站方协商修改。<br/></span></span></p><p><img src=\"http://xjd.68ecshop.com/includes/ueditor/php/../../../bdimages/upload1/20140917/1410944591861430.jpg\" title=\"5.jpg\"/><span style=\"font-size: 12px;\"><span style=\"font-size: 12px;\"></span></span></p><p><span style=\"font-size: 12px;\"><span style=\"font-size: 12px;\"><br/></span></span></p><p><span style=\"font-size: 12px;\">5、</span><span style=\"font-size: 12px;\">权限管理</span></p><p><span style=\"font-size: 12px;\">点击权限管理》管理员列表：增加新的管理员，并为其设置权限，选中哪个就拥有哪个权限</span></p><p><span style=\"font-size: 12px;\"><img src=\"http://xjd.68ecshop.com/includes/ueditor/php/../../../images/image/92821410944327.jpg\" title=\"6.jpg\"/></span></p><p><span style=\"font-size: 12px;\"><br/></span></p><p><span style=\"font-size: 12px;\">6、添加商品分类：该商品分类是本店铺的分类</span></p><p><span style=\"font-size: 12px;\"><br/></span></p><p><span style=\"font-size: 12px;\">7、添加商品，提交后等待网站方审核，审核通过后即可上架销售了</span></p><p><span style=\"font-size: 12px;\"><br/></span></p><p><span style=\"font-size: 12px;\">8、管理自己的用户评论和用户晒单</span></p><p><span style=\"font-size: 12px;\"><br/></span></p><p><span style=\"font-size: 12px;\">9、促销管理：增加自己店铺的促销活动以及店铺红包</span></p><p><span style=\"font-size: 12px;\">9.1、促销活动：该促销活动有三种“满X元减Y元”、“满X元打Y折”、“满X元赠送YY、ZZ商品”</span></p><p style=\"text-align: left;\"><span style=\"font-size: 12px; color: rgb(127, 127, 127);\">图 促销活动</span></p><p><img src=\"http://xjd.68ecshop.com/includes/ueditor/php/../../../images/image/54341410944319.jpg\" style=\"float:none;\" title=\"7.jpg\"/></p><p><span style=\"font-size: 12px; color: rgb(0, 0, 0);\">9.2、</span><span style=\"font-size: 12px; color: rgb(0, 0, 0);\">红包类型：该红包类型有四种：“按用户发放”、“按商品发放”、“按订单金额发放”、“线下发放的红包”</span></p><p><span style=\"font-size: 12px; color: rgb(0, 0, 0);\">9.2.1、按用户发放：可以控制该红包发送给哪些会员</span></p><p><span style=\"font-size: 12px; color: rgb(0, 0, 0);\"></span><span style=\"font-size: 12px; color: rgb(127, 127, 127);\"><span style=\"font-size: 12px; color: rgb(0, 0, 0);\">9.2.2、按商品方法：可以控制用户购买哪些商品时可以获得该红包</span></span></p><p><span style=\"font-size: 12px; color: rgb(127, 127, 127);\"><span style=\"font-size: 12px; color: rgb(0, 0, 0);\"><span style=\"font-size: 12px; color: rgb(0, 0, 0);\">9.2.3、按订单金额方法：可以控制用户购买商品满多少元时可以获得该红包</span></span></span></p><p><span style=\"font-size: 12px; color: rgb(127, 127, 127);\"><span style=\"font-size: 12px; color: rgb(0, 0, 0);\"><span style=\"font-size: 12px; color: rgb(0, 0, 0);\"><span style=\"font-size: 12px; color: rgb(0, 0, 0);\">9.2.4、线下发放：属于线下发放的红包，直接将该红包序列号发送给用户，用户凭借该序列号即可使用该红包了</span></span></span></span></p><p><span style=\"font-size: 12px; color: rgb(127, 127, 127);\">图 红包类型</span><br/></p><p><span style=\"font-size: 12px;\"><img src=\"http://xjd.68ecshop.com/includes/ueditor/php/../../../bdimages/upload1/20140917/1410944574454318.jpg\" title=\"8.jpg\"/></span><br/></p>', '', '', '', '0', '1', '1410944026', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('80', '20', '广告1', '', '', '', '', '0', '0', '1437334217', 'data/article/1437603513188688137.jpg', '1', 'http://', '');
INSERT INTO `ecs_article` VALUES ('81', '20', '广告2', '', '', '', '', '0', '0', '1437334225', 'data/article/1437334690546712289.jpg', '1', 'http://', '');
INSERT INTO `ecs_article` VALUES ('82', '20', '广告3', '', '', '', '', '0', '0', '1437334250', 'data/article/1437334700595779668.jpg', '1', 'http://', '');
INSERT INTO `ecs_article` VALUES ('83', '20', '广告4', '', '', '', '', '0', '0', '1437334258', 'data/article/1437334712958170263.jpg', '1', 'http://', '');
INSERT INTO `ecs_article` VALUES ('84', '20', '广告5', '', '', '', '', '0', '0', '1437334269', 'data/article/1437334721101005376.jpg', '1', 'http://', '');
INSERT INTO `ecs_article` VALUES ('85', '14', '小京东V3.0谁与争锋——不同版本，更多选择！', '', '', '', '', '0', '1', '1437335305', '', '0', 'http://www.68ecshop.com/article-1781.html', '');
INSERT INTO `ecs_article` VALUES ('86', '14', '锐变|商之翼多商户V2.0版重磅来袭！Prefect！', '', '', '', '', '0', '1', '1437335344', '', '0', 'http://www.68ecshop.com/article-1780.html', '');
INSERT INTO `ecs_article` VALUES ('87', '14', '热烈庆祝商之翼多商户管理系统V1.0荣获国家软件著作权证书', '', '', '', '', '0', '1', '1437335367', '', '0', 'http://www.68ecshop.com/article-1777.html', '');
INSERT INTO `ecs_article` VALUES ('88', '14', '热烈庆祝商之翼XJD加盟连锁版系统V1.0荣获国家软件著作权证书', '', '', '', '', '0', '1', '1437335391', '', '0', 'http://www.68ecshop.com/article-1776.html', '');
INSERT INTO `ecs_article` VALUES ('89', '14', '端午佳节粽飘香，商之翼恭祝大家端午节安康！', '', '', '', '', '0', '1', '1437335411', '', '0', 'http://www.68ecshop.com/article-1752.html', '尊敬的用户：\r\n \r\n您好！根据国务院关于法定假日的规定，秦皇岛商之翼网络科技有限公司（68ecshop）端午节放假时间如下：2015年6月20日——2015年6月22日放假三天，6月23日正常上班。 ');
INSERT INTO `ecs_article` VALUES ('90', '14', '秦皇岛商之翼网络科技有限公司2015年端午节放假通知', '<p>大家好，ecshop开发中心的官方微信帐号开通了，感谢大家的关注。在这里，我们您可以抢先知道我们ecshop开发中心官方的了新产品信息，最新服务信息。 <br/></p>', '', '', '', '0', '1', '1437335436', '', '0', 'http://www.68ecshop.com/article-1751.html', '尊敬的用户：\r\n \r\n您好！根据国务院关于法定假日的规定，秦皇岛商之翼网络科技有限公司（68ecshop）端午节放假时间如下：2015年6月20日——2015年6月22日放假三天，6月23日正常上班。 ');
INSERT INTO `ecs_article` VALUES ('91', '16', 'ecshop开发中心官方微信开通了，求关注~~', '<p>大家好，ECSHOP开发中心的官方微信帐号开通了，感谢大家的关注。在这里，我们您可以抢先知道我们ecshop开发中心官方的了新产品信息，最新服务信息。<br/>可用手机扫描下面的二维码，即可轻松加我们微信为好友。</p><p><img src=\"http://127.0.0.9/includes/ueditor/php/../../../bdimages/upload1/20150720/1437372021893382.jpg\" title=\"20130301141935_64396.jpg\"/></p>', '', '', '', '0', '1', '1437343154', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('98', '18', '阿里下线11家快递打击炒信刷单 涉及中铁快运增益', '', '', '', '', '0', '1', '1437345047', '', '0', 'http://www.68ecshop.com/article-1699.html', '');
INSERT INTO `ecs_article` VALUES ('99', '18', '微商用微信营销软件挣钱的八种方法', '', '', '', '', '0', '1', '1437345074', '', '0', 'http://www.68ecshop.com/article-1698.html', '');
INSERT INTO `ecs_article` VALUES ('100', '18', '美丽说推服装反向定制 称供应链快过ZARA', '', '', '', '', '0', '1', '1437345096', '', '0', 'http://www.68ecshop.com/article-1697.html', '');
INSERT INTO `ecs_article` VALUES ('101', '18', '朋友圈广告首次嫁接电商 唯品会试撒娇付', '', '', '', '', '0', '1', '1437345124', '', '0', 'http://www.68ecshop.com/article-1696.html', '');
INSERT INTO `ecs_article` VALUES ('102', '18', '淘宝、天猫、聚划算整合，行癫履新，重开聚划算竞拍机制', '', '', '', '', '0', '1', '1437345271', '', '0', 'http://www.68ecshop.com/article-1695.html', '');
INSERT INTO `ecs_article` VALUES ('103', '18', '刘强东说要用这三个“F”搞定农村电商', '', '', '', '', '0', '1', '1437345287', '', '0', 'http://www.68ecshop.com/article-1694.html', '');
INSERT INTO `ecs_article` VALUES ('104', '14', '客户送锦旗 感恩“优质服务”', '', '', '', '', '0', '1', '1437345415', '', '0', 'http://www.68ecshop.com/article-1735.html', '');
INSERT INTO `ecs_article` VALUES ('105', '14', '秦皇岛商之翼“六一”儿童节发礼物啦！', '', '', '', '', '0', '1', '1437345436', '', '0', 'http://www.68ecshop.com/article-1732.html', '');
INSERT INTO `ecs_article` VALUES ('106', '14', '商之翼\"0\"元建站送主机-颠覆传统建站模式', '<p>0元= 一个PC端商城+wap手机端商城+ 1G万网主机！泡碗面的功夫，一个完整的高品质网站就这样诞生了，你信吗？<br/>商之翼很严肃的告诉您，这是真的！</p>', '', '', '', '0', '1', '1437345469', '', '0', 'http://www.68ecshop.com/article-1730.html', '');
INSERT INTO `ecs_article` VALUES ('109', '11', '“互联网+”下的全零售惠战 国美在线引领上半年电商行业最强战', '<p>&nbsp;&nbsp;&nbsp; 4月19日，国美在线418“购物大趴-放肆一把”打响收尾战，经过大半月的418大促，在为消费者带来最贴心优惠的同时，也让众电商看到商机，天 猫、京东、苏宁易购等电商纷纷跟进。其中以国美在线声势最为浩大，线上“六大放肆”回馈消费者，线下牵手《速度与激情7》、送货大车开到京东大本营“约 架”以及将“418放肆一把”的广告打到纽约时代广场等，在营销上赚足眼球，为其成功打造上半年最大购物节奠定基础。根据国美在线官方公布的数据，4月 16日-19日，国美在线四天内交易额同比增长220%，无线同比增长740%，占比全站突破40%，再次实现电商行业增速奇迹。<br/>&nbsp;&nbsp;&nbsp; 　电商促销大战达顶峰五一消费热潮提前燃烧.</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src=\"http://127.0.0.9/includes/ueditor/php/../../../bdimages/upload1/20150720/1437374860704903.jpg\" title=\"1429687926795021665.jpg\"/></p><p>　　从4月1日开始，国美在线就率先喊出418“放肆一把”的店庆大促口号。各种大力度优惠促销活动引发一波又一波抢购热潮，随后天猫、京东、1号店、苏宁易购等电商按捺不住纷纷加入418网购大战，将传统的五一消费热潮提前近半个月。<br/>　　在此轮418电商网购价格战中，大家电、电子产品甚至黄金等成为各大电商的热推产品，而以国美在线声势最为浩大，线上、线下、无线端全零售渠道 参与价格竞争，线上418元抢家电、家电报销买多少送多少等促销活动，比价京东贵就赔300，价保到五一等真低价服务保障，力保消费者安心放肆购;线下， “黄金72小时”家电跌破底价，全国多个地区的国美门店出现了市民排队抢购家电的情景。此外，135个城市上午下单下午送达的“计时达”快捷物流，30天 无理由退货，180天只换不修以及“家安保”售后延保服务;线上线下齐力，引领众电商将此次418网购大战推向最顶峰。<br/>　　线上放肆到底拼低价线下多渠道营销造大势<br/>　　此次418大促，国美在线再度刷新销售记录，骄人战绩的背后，离不开自始至终放肆到底的线上促销优惠。4月1日，国美在线即提前打响418购物 大趴揭幕战，“万品开门红”主题大促，多种重磅优惠吸引消费者关注;4月4日-15日，国美在线又轮番推出一系列分品类大趴专场。16日-17日，418 元家电每天6场“放肆抢”;5-8折大牌家电全额报销，买多少返多少现金券“放肆免”;更有低至4777元iPhone6、3599元索尼48英寸电视等 单品“放肆购”;18日，老牟专场BOSS亲选爆款全天放血价，全场购买自营家电满20000返2000红券;活动期间，微信端发放418元、4180元 两种现金红包“放肆领”，4180位老会员还享受全国包邮优厚待遇，此外，黄金每克209元、话费超值充41.8元抵50元、0元抽整车等也吸引了众多消 费者关注。<br/>　　除线上史无前例的促销活动吸引关注外，国美在线还通过线下多渠道活动为线上促销造势，拉动整体销量。由于与《速度与激情7》的品牌理念非常贴 合，国美在线成为与《速度与激情7》唯一合作的亚洲电商平台;418大促期间，国美在线还将418红皮货车开到京东办公楼下，“东哥，418一起放肆一 把”巨幅邀约，凸显线上“真低价”大促全面约战京东，扩大418整体大促影响力。此外，4月14日，国美在线“418放肆一把”成功登上美国纽约时代广 场，为线上大促宣传造势，至此国美在线418购物大趴掀起最高潮。<br/>　　国美在线418同比增220%加速进军行业前三<br/>　　今年418，国美在线与线下门店双线联动，携手格力、海尔、美的、苹果、方太等一线大牌厂商，依靠国美家、微店等创新业务，共同打造了一场全零 售购物狂欢盛宴。值得注意的是，以往的价格大战是线上通过价格透明对线下实体店造成一定的冲击，而此次国美在线418线上线下互通联动，今后将可能出现线 上和线下的价格倒挂，对消费者而言更加透明。国美在线副总裁黄向平表示，“下棋讲究棋逢对手，用户只要通过对比，就能很清晰地购买到最具性价比、最满足切 实需求的商品”。<br/>　　通过史无前例的促销优惠，国美在线418整体战绩突破新高，4月16日-19日，国美在线四天内交易额同比增长220%，无线同比增长 740%，占比全站突破40%，大家电销售突破32万台，iPhone6成为销售最快的热销产品，5秒内销售达1000台，黄金三天销售超1亿，新上线的 国美家和微店也表现抢眼，实现了自身业绩和口碑的又一次突破。<br/>　　业内人士分析表示，通过此轮价格大战，国美在线418很可能会创造堪比下半年双11的零售规模。418购物大趴之后，国美在线将能呈现更加快速 的增长态势，预计第二季度的增速或达150%，依托线下门店整体销售实力，国美在线将打响上半年电商行业“互联网+零售”战第一枪，向行业前三迈出坚实步 伐!</p>', '', '', '', '0', '1', '1437346062', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('110', '11', '王健林详解万达O2O，马云：赚钱的事想好了，代价呢？', '<p>&nbsp;&nbsp;&nbsp; 注：上周，万达集团董事长王健林曾发表演讲，谈的是万达商业地产的转型。在演讲中，王健林详细解读了万达的轻资产转型的原因以及一些具体的规 划，并表示轻资产快速扩大规模，还能产生边际效应，一大好处便是可为万达的O2O发展提资源。虎嗅也曾转载了这篇演讲。而今天，在中国企业家俱乐部主办的 2015中国绿公司年会上，王健林分享了万达做O2O的一些计划，却遭到同台马云的连声逼问。虎嗅依据新华网，凤凰科技报道，将现场演讲内容及问答内容整 理摘编如下。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src=\"http://127.0.0.9/includes/ueditor/php/../../../bdimages/upload1/20150720/1437374922544782.png\" title=\"1429686613146832425.png\"/></p><p>　　万达O2O，王健林说要干两件事<br/>　　王健林表示，房地产行业究竟怎么做互联网是一个新课题，万达的O2O现在做了只有一年的时间，算不上成熟，就是简单的摸索。O2O大概做哪两件 事呢?王健林称，第一个就是增加线下消费者的体验感和黏性。“什么叫增加体验感呢，比如我们在沈阳现在有四个万达广场，可能将来会增加的更多。有的去了以 后，比如说广场那边车满了，你到了才发现满了，你可能要排队很长的时间。O2O可能在家里一搜，就知道这个有车位没车位，或者你可以预定车位。”<br/>　　“还有比方说我们有一些油气项目，排队的时间非常长，他可以提前预约排号，提前多长时间等等。这一类的研发，已经有产品成熟了，体验感增加。但 是带来一个问题，这一类的增加体验感的项目，都是烧钱的项目，那这个公司的盈利方向在哪里呢，通过这一年多的摸索，现在我们又找到一个新的一个方向吧，就 是往互联网金融的方向走。”<br/>　　为什么说往互联网金融方向走?王健林表示，第一，现在万达商业正在由重变轻。“过去是我们自己持有资产，或者全部的租金。现在我们觉得有不少的 投资者，包括我们内部的、外部的投资者，愿意投钱给我们，让我们来负责设计、建造、招商、运营、管理，我们分一部分资金。由这里我们就想起来，我们最近正 在试验，由我们自己的一个互联网公司，可能会在这个月底，或者下个月初，发放一种新的理财产品，那这个理财产品投资万达广场，万达广场的分成，每年的利， 租金粉红，给互联网公司，他还要留下少少一部分利润，再分给投资者。<br/>　　那这种产品就有了一种模式了，这个模式随着中国现在在力推这个产品要成为公共产品，我相信就是一两年、两三年的产品，这个投资的产品，就可以变 成无限大的，每年持续多少个的一个金融产品，叫做房地产信托投资资金。它上市的时候，互联网公司还可以分30%，这是一个获利的方式。”<br/>　　第二个方面，万达有一个巨大的优势，人流量非常大。王健林称，去年万达有16亿人次，预计今年会超过20亿。“2020年，我们按照最保守的估 计，会有超过60亿的人次，进入到万达的广场、酒店、度假区，最保守估计。按照一人一个月一次，算活跃用户，至少有5亿的活跃用户。再往后可能会更多，这 些资源就是我们将来发放互联网金融贷款的客户。因为他的消费数据，在一二线城市，如果在北京上海，可能记录的不是很完整，但是对于像三线、四线城市，消费 数据记的是非常完整的。”<br/>　　王健林举例道，“廊坊一共不到40万人，去掉没有消费能力的小孩和老人，可能就30万人，就意味着一个人平均起来不到一周，四到五天去一次，他 买东西、看电影、吃饭、唱歌等等，都会成为我们掌握的数据，根据这个完整的数据链，我们就能判断这个人的消费能力和他的消费喜好。”<br/>　　“现在万达广场多了，我们今年开20个，因为我们会开50个万达广场，也许三年五年以后，大家会发现，我们一年会开业80到100个。这么大量 的开业，每一个广场四到五百个商家，收款期是我们投资的，掌握它的收款期。2020年，我们会掌握大概40万台POS机，这些商户也是我们掌握信用卡发放 贷款的对象，因为我们掌握的POS机，我们的贷款，第一不需要线下开门店。第二，我们绝对安全。”<br/>　　“为什么绝对安全?我们现在是设计了一套云POS，三季度就会陆续更换。商户会有二三十亿，把它替换下来，替换下来以后，我们设计的模式会贷 100万，每一天还款制，每一天设计出多少，云POS就会把我们的本和息全迁走。剩下的不影响你跟哪个银行有合作，很安全，互联网的金融模式。这样一弄很 简单。”<br/>　　王健林表示，目前来看，万达的O2O是往这两个方向走，一个是花钱增加体验感，增加黏度。第二，通过互联网金融，获取利润，增加O2O的进一步扩大和发展。<br/>　　马云发问：“做O2O想付出多少代价?”<br/>　　马云说：“转型就好像拔牙，你要停下工作，你要承受痛苦，你要付出时间和金钱，代价是必须的!你的企业转型，一定要付出巨大的代价，我不知道你 准备付出多大的代价，以及哪方面的代价，来实现你万达的(转型)。因为我听见你赚钱的(内容)，那你不赚钱的是什么东西?是准备怎么干?”<br/>　　王健林称，转型是必须付出代价的，万达27年的发展和历史，其实就始终在变。同时，他还以数据合作与生态圈的说法进行回答，但马云对此并不满意：“我还是没听明白万达想要付出多少代价，我只听懂了您要找多少人来一起承受代价。”<br/>　　“代价太大了，我就穷了，还谈什么转型?”王健林认为，任何一家企业都不会为了转型而转型，其目的都是为了将企业做的更好，更可持续。最后王健林直截了当地说：“我也没打算付出太多代价!”<br/>　　同时，王健林不忘调侃马云：“昨天本来还想请你给我洗洗脑，你跟我说说怎么做互联网，我给你讲讲怎么做实体。可惜啊，你昨天来晚了”</p>', '', '', '', '0', '1', '1437346126', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('111', '11', '刘强东带领京东高管下农村 拓展农村电商业务', '<p>&nbsp;&nbsp;&nbsp; DoNews 4月21日消息(记者 周勤燕)自2014年开始全面发力农村市场后，京东在2015年加速下乡，拓展农村电商业务。据透露，京东集团CEO刘强东近日带领包括CXO、副总裁等 数十位高管，赴河北省固安县调研农村电商市场，并在固安县野场村召开现场研讨会。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src=\"http://127.0.0.9/includes/ueditor/php/../../../bdimages/upload1/20150720/1437375002807362.jpg\" title=\"1429686248961891925.jpg\"/></p><p>　　刘强东在会上提出京东农村电商未来发展的“3F战略”，包括工业品进农村战略(Factory to Country)，农村金融战略(Finance to Country)和生鲜电商战略(Farm to Table)。<br/>　　基于工业品进农村战略(Factory to Country)，是指京东将通过提升面向农村的物流体系，让农民购买到化肥、农药等农资商品及手机、家电、日用百货等工业商品;<br/>　　农村金融战略(Finance to Country)则是通过京东白条、小额信贷等创新金融产品，帮助农民解决借钱难、贷款难、成本高等难题;<br/>　　生鲜电商战略(Farm to Table)是指，京东将通过大数据等技术，将农民的农产品种植与城市消费者的农产品需求进行高效对接，将农产品从田间地头直接送到城里人的餐桌。<br/>　　京东方面称，在其“3F”农村电商战略中，构建一张覆盖农村的网络尤为重要，它既是农资和工业品进村的物流配送网络和营销推广网络，也是农村金融战略中重要的征信数据采集网络和推广网络，又是生鲜电商战略中的生鲜农产品信息采集网络和采购网络。<br/>　　这张网络由京东自营县级服务中心、合作乡村合作点和乡村推广员及整合社会资源京东帮服务店等组成，其中京东帮服务店针对大件商品，提供营销、配送、安装、维修、保养等服务。<br/>　　业内人士认为，农村电商发展正处于政策红利期。今年两会期间，“互联网+”概念首次写入政府工作报告，中央一号文件也表示，支持电商、物流、商贸、金融等企业参与涉农电商平台建设，开展电商进农村综合示范点。<br/>　　从市场情况来看，截至2013年12月，农村网民规模达到1.77亿，占全国网民总数的28.6%。2014年全国农村网购市场总量超过1800亿元，2016年将突破4600亿元。除了京东之外，阿里巴巴和苏宁等电商巨头也在加紧布局农村电商。<br/>　　京东方面提供的数据显示，截止4月上旬，京东自营的县级服务中心已突破百家，服务范围覆盖100余县市的10,000多个村庄;与此同时，整合了大量社会资源的京东帮服务店也已超过400家。(完)</p>', '', '', '', '0', '1', '1437346204', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('112', '11', '让千禧一代爱上你品牌的11种方法', '<p style=\"text-align: center;\"><br/><img src=\"http://127.0.0.9/includes/ueditor/php/../../../images/image/32701437375099.jpg\" title=\"1435565835283187797.jpg\"/></p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">千禧一代（指1984-1995年出生的一代）正日益成为国民经济中的消费主力军，他们不仅具有购买力而且做好了买买买的准备——不过你怎么确保他们一定会选择你的产品？</p><p>来看看以下11位成功的公司创始人是怎么说的吧，他们就如何转变营销策略以更好地吸引千禧一代给出了自己的答案。</p><p>&nbsp;</p><p><span style=\"border: 0px; font-size: medium; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">1）阐明品牌愿景</span></p><p>吸引千禧一代最棒的方式就是通过阐明品牌的愿景和使命，为品牌及其传递的价值赋予一种情感反应。</p><p>千禧一代乐于投身宏大的事物，所以你的营销策略应该清晰地阐明行动的理由，以及为什么他们应该参与其中成为你的消费者。</p><p>&nbsp;</p><p><span style=\"border: 0px; font-size: medium; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">2）玩转最新潮的社交网络</span></p><p>当千禧一代中间又开始流行新的社交平台时，你就应该尽快将其纳入品牌营销战略。 这会使你占据新平台早期使用者（early adopter）的有利位置，也能让你在该平台变得不再小众之前就吸引到千禧一代的注意。更新一些技术或者媒体博客或许能帮你“上头条”。开始玩新社交平台时，别犹豫，多试验几次！</p><p>&nbsp;</p><p><span style=\"border: 0px; font-size: medium; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">3）写作很棒的内容</span></p><p>千禧一代不喜欢传统广告。 与其把营销预算砸在广告上，还不如将精力集中于写作有价值的内容上。</p><p>如果为千禧一代提供有帮助的信息，他们更有可能对品牌产生积极的印象。</p><p>&nbsp;</p><p><span style=\"border: 0px; font-size: medium; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">4）提供价值</span></p><p>千禧一代就像他们的父辈（50后60后）一样，一直都在寻找价值；他们不怎么热衷去淘所谓“高性价比”的便宜货（例如，苹果的销售额自本世纪初开始就一路飙升）。 他们想要标榜自己是多么与众不同，也随时做好了支持“失败者”的准备。 比如，备受千禧一代喜欢的意大利服装品牌Brandy Melville 和正面临业绩下滑的 Abercrombie＆Fitch 就是一组很好的例证。</p><p>&nbsp;</p><p><span style=\"border: 0px; font-size: medium; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">5）做简单易行的公益善事</span></p><p>作为由千禧一代主导的公司负责人，我经常被客户询问如何捕获千禧一代的心（和钱包）。 我的答案是：在营销活动中加入一些社会影响力元素。 千禧一代会被那些行善的企业吸引，而且希望参与所喜爱品牌回馈社会的行动。 同时，确保公益善事也是简单易行的！</p><p>&nbsp;</p><p><span style=\"border: 0px; font-size: medium; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">6）保持真诚</span></p><p>千禧一代会掏钱购买有价值的东西，他们对折扣和免费的噱头并不感冒。 我们会在内容和社群建设方面投入重金，让我们所做的事情、创造的价值和收入的流向变得尽可能透明开放。 我们希望那些已经是咨询顾问或者企业主的千禧一代知道，我们的大部分收入都会投入到完善产品中去。</p><p>&nbsp;</p><p><span style=\"border: 0px; font-size: medium; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">7）改善用户体验</span></p><p>千禧一代的成长几乎离不开各种电子娱乐设备，他们渴望体验到新产品赋予的便利性。 Uber、Dropbox、Airbnb等公司的成功在很大程度上是因为便利性和易用性，而不是什么酷炫的技术。 我们正积极致力于改善用户体验，精简冗余的步骤。</p><p>&nbsp;</p><p><span style=\"border: 0px; font-size: medium; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">8）邀请“影响者”加入社群</span></p><p>只是围绕着品牌做文章显然是不够的。 你需要在利基市场中找到千禧一代会买账的影响者，邀请他们加入话题。 这些影响者会在自己的圈内树立影响力，吸引更多的在线参与。这对于年轻人营销来说非常关键，因为他们希望亲身体验创意过程。</p><p>&nbsp;</p><p><span style=\"border: 0px; font-size: medium; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">9）让他们“与众不同”</span></p><p>千禧一代一直以标新立异而著称，他们想要与众不同。</p><p>你可以通过提供用户定制产品的选项或者给予他们超出经验之外的控制感，来拥抱品牌共创（co-creation）的趋势。</p><p>&nbsp;</p><p><span style=\"border: 0px; font-size: medium; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">10）移动端第一</span></p><p>如果你从来都没有想过移动端在吸引千禧一代方面有多重要的话，你是不会成功的。 这一群体不仅在移动设备上花费着比其他任何平台更多的时间，他们还会在这些设备上作出决策。</p><p>&nbsp;</p><p><span style=\"border: 0px; font-size: medium; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">11）加入视频</span></p><p>年轻人喜爱在线视频的程度远远超出了其他媒介形式，视频对于搜索引擎优化（SEO）的好处加成更是多多。</p><p><br/></p>', '', '', '', '0', '1', '1437346300', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('113', '11', '叫好不叫座！腾讯支付的瓶颈在哪儿？', '<p style=\"text-align: center;\"><br/><img src=\"http://127.0.0.9/includes/ueditor/php/../../../images/image/37571437375146.jpg\" title=\"1426212189080090226.jpg\"/><br/></p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-align: left; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2015年的春晚没有捧红一个名角，却捧红了微信红包。微信官方公布的数据显示，除夕当日微信红包收发总量达10.1亿次;18日20：00至19日00：48，春晚微信摇一摇互动总量达110亿次。逼格很高的数据背后，是腾讯支付市场份额的惨淡现状。艾瑞的统计数据显示：2014年第一季度支付宝在移动支付市场的份额是76.2%，财付通为12.9%，领先第三名5.3%;到了2014年第三季度，支付宝的市场份额增长至82.6%，财付通则下滑至10%，领先第三名5.6%。不难看出，腾讯支付与支付宝市场份额有着天壤之别。</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp; 在刚刚结束的红包大战中，从活跃数据上来看，以微信红包和QQ红包为代表的腾讯移动支付很活跃，市场份额是否会有质的飞跃呢?答案是很难。在2014年春晚上，微信红包也是春晚的合作伙伴，当时的数据也非常漂亮。半年时间过去了，微信“红包”背倚的财付通平台仍旧只有10%左右的市场份额。对此，不少业内人士质疑：腾讯支付为何叫好不叫座呢？</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp; 先来思考这样一个问题，以微信红包和QQ红包为代表的移动支付应用，生命周期是非常短的。准确地说，微信红包的火爆时长仅仅是在除夕当天的20：00到春晚结束的那几个小时里。春节过后，微信红包和QQ红包的活跃度锐减。按照民间通俗的说法，元宵节过去就意味着春节已经结束，讨红包的彩头划上了句号，微信红包和QQ红包因此被用户抛弃在一个角落中。所以，微信红包和QQ红包春节期间的火爆，并不代表腾讯支付市场份额实现了高速增长。按照此前的宣传，腾讯准备了30多亿红包，阿里不过拿出了10亿红包，最终腾讯支付却未能撼动支付宝。瓶颈究竟在哪里?</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><span style=\"border: 0px; font-size: smaller; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">&nbsp;</span></p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><span style=\"border: 0px; font-size: smaller; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">在笔者看来，腾讯支付叫好不叫座，有三大痛点。</span></p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp; 痛点一：场景过少。无所不能的微信，在支付领域俨然成为一个英雄无用武之地的角色。腾讯也深知支付场景过少，已经严重制约了支付市场份额的拓展。在过去的一年里，腾讯先是为大众点评和京东提供二级入口，尔后是携手滴滴打车与快的抢打补贴之战，以培养用户形成微信支付的习惯。尽管如此，腾讯的支付场景与支付宝还有相当大的差距。抛开淘宝、天猫两大平台每天数量上裴的交易量不说，支付宝已经围绕人们的生活，搭建了一个丰富的应用场景。从水、电、煤和手机这些日常交费，到电影票、火车票和机票的购买，以及余额宝理财，支付宝的应用场景可谓是无处不在。再看微信支付，虽然也有手机充值和理财通，但与支付宝的场景相比仍仍非常单薄。要知道，水、电、煤这三大日常交费应用的粘度，要远高于理财和手机充值。</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;痛点二：用户体验太差。早在PC端支付时代，腾讯财付通的糟糕用户体验是出了名的。在移动互联网大潮到来后，腾讯支付的用户体验有所改善，但与支付宝等第三方支付产品相比仍算不上出色。一直以来，马化腾就是圈子里最牛的产品经理，QQ今天的辉煌，与出色的体验有着必然的联系。在微信支付和QQ红包支付中，绑定银行卡，扫描二维码，甚至支付是还需要关注对方的微信公众号，这都影响了用户体验。试想，支付为何还要关注商家的微信公众帐号呢?</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;痛点三：安全隐患。网络诈骗事件层出不穷，网络支付安全的矛盾越来越尖锐。用户希望能够有一个有全面安全机制的支付平台，即从支付到应用的每一个环节。在这方面，腾讯支付做得最差。在激烈的竞争之下，腾讯和支付宝都与保险公司合作，推出了被盗赔偿的服务。只是，在一些细节方面，微信支付的安全性仍有待商榷。据悉，微信红包和QQ红包提现时，均会自动帮用户开通快捷支付，腾讯方面并没有显著的提醒，这可谓是一大安全漏洞。很多用户的银行卡资金被盗，就是因为用户在疏忽的情况下被腾讯强制开通了快捷支付。</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;事实上，除了三大痛点之外，用户多年来形成的支付习惯，也是腾讯支付难以逾越的一座大山。举一个简单的例子，在移动IM领域，阿里再努力，来往却一直半死不活，而微信却近乎垄断了移动IM的市场份额。为此，腾讯要想在支付领域颠覆支付宝，仅靠红包是远远不够的。未来，如果没有颠覆性的创新，腾讯支付注定是叫好不叫座的二流产品。</p><p><br/></p>', '', '', '', '0', '1', '1437346353', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('114', '11', '刘强东警告传统企业：加盟模式会被O2O干掉！', '', '', '', '', '0', '1', '1437346475', '', '0', 'http://www.68ecshop.com/article-1334.html', '');
INSERT INTO `ecs_article` VALUES ('115', '11', '电商这么火，能用它来发展农村经济吗？', '', '', '', '', '0', '1', '1437346595', '', '0', 'http://www.68ecshop.com/article-1335.html', '');
INSERT INTO `ecs_article` VALUES ('116', '11', '外卖O2O：轻模式、重模式、第三方平台', '<p style=\"text-align: center;\"><br/><img src=\"http://127.0.0.9/includes/ueditor/php/../../../images/image/97151437375448.jpg\" title=\"1429756377208768038.jpg\"/><br/></p><p><strong style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">O2O之外卖餐厅篇</strong><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\"></span></p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">　　O2O只是商业的一种表现形式，概括起来就三点：成本、效率、服务。</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">　　餐饮是目前互联网化很深的行业，从最初的团购、预定到现在最火的外卖。主要原因是餐饮行业市场很大，但同时存在激烈的竞争，目前人工、水电、房租、原材料成本很大。餐饮企业面临如何提高效率，降低成本的考验，很多餐饮企业寄希望于O2O。</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">　　一年时间，餐饮企业特别是连锁餐饮企业对外卖越来越重视，笔者由于从事外卖行业，有很深的体会，去年上半年找连锁企业谈外卖，要么直接拒绝，要 么说开会商议。很少可以深入洽谈并合作的。但是在去年下半年，很多连锁主动联系外卖公司，主动提出合作外卖。因为生意难做，希望通过O2O来找到解决方 法。最简单的是开启外卖合作。</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">　　外卖符合我们提到的O2O的三个点：成本、效率、服务。在不增加餐厅营业面积情况下，增加了就餐人数，间接降低成本(房租、人员成本固定);通 过让客户提前下单，避免堂食高峰期，提升后厨出餐量直接提升后厨效率;外卖是品牌服务的延伸，即降低客户获得餐厅服务难度(送餐到客户家里、办公室等 9)，而不需要亲自到店才可以享受服务。</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">　　餐厅做外卖存在的难点：如何获得外卖单量?</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">　　餐厅自己宣传开发同时与第三方平台合作。</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">　　如何让外送服务和店内的工作有序对接?</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">　　根据后厨出餐能力和外卖单量情况决定，如果后厨出餐能力足，外卖单量大，可以安排专人负责。</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">　　是自己建外送团队还是和第三方外送团队合作?</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">　　如果餐厅外卖单量大，距离近，可以考虑自己团队，如果单量比较分散可以和第三方团队合作。</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><strong style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">　　外卖第三方平台篇</strong></p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">　　现在O2O外卖从去年年初开始，在资本的助推下，越来越热，一些平台融资额也从最初的几百万美金、几千万美金飙升到数以美金。据笔者了解，今年在外卖O2O市场还会有更大资本进入。</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">　　目前外卖O2O平台存在主要集中形式：第一种，饿了么、美团外卖的平台倒流模式，即轻模式，只为商家提供订单，由商家自己配送。第二种，像到家 美食会、点我吧等自建平台，自己物流团队模式，即重模式。第三种，像达达，风先生专门为餐厅做跑腿服务的企业，目前收费低廉，主要是发展商户，扩大市场。 三种模式在未来也许会出现想相互交叉情况，目前饿了么已经在建品牌馆，为商家提供外卖配送，美团已经在组建自己线下物流团队。到家美食会在未来也会采取新 的变通。达达、风先生未来也可以把自己建成流量入口平台。对于商家来说，最重要的是如何利用第三方平台实现：成本、效率、服务的提升!</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">　　三种平台类型目前的优势：第一种，饿了么、美团的优势在人均低(人均20元以下)的餐厅，一是餐厅数量多啊，用户基数大，餐厅自己配送，目前市 场反应单量占有绝对优势。第二种，到家美食会，在品牌连锁，高人均餐厅(人均30~120元)占有绝对优势。第三种，达达，风先生，目前合作餐厅有限，但 是主要合作餐厅人均主要介于第一种和第二种之间。</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><strong style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">　　三种平台类型目前遇到问题：</strong></p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">　　第一种，目前饿了么、美团外卖扩张很快但是服务质量无法把控，送餐延时，食品安全存在隐患。所以现在饿了么创立品牌馆，自建物流配送，吸引知名商家入驻合作。</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">　　第二种，到家美食会服务质量是整个外卖行业标杆，对合作餐厅资质要求严格，从源头把控合作商家。但是扩张缓慢，从2010年成立至今只开通8个 城市，未来外卖需求增长迅猛，以目前模式扩张必然很难支持公司未来发展。有消息透露，目前到家美食会计划在二三线城市开启新的模式，一方面可以保证服务质 量，另一方面可以也可迅速扩张复制。</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">　　第三种，达达、风先生，扩张成本地，扩展速度快，但是存在人员培训服务、人员管理困难，有大量兼职人员，很难保证服务质量和品质。目前收费低廉，只是为了开发市场，一旦不受资本青睐，未来模式存在重大风险，所以需要开发更多高盈利业务。</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">　　O2O不管对于餐厅还是对于第三方外送平台，最后拼的就是：成本、服务、效率。未来比的就是谁的成本控制的更低，服务更好，效率更高。但是外卖行业以目前来说也很难出现一家独大的局面，毕竟外卖的市场巨大，每一家只要在自己所擅长的领域做的足够深，必然可以成为巨头。</p><p><br/></p>', '', '', '', '0', '1', '1437346650', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('117', '11', '刘强东你错了，是时候调整战略了', '<p style=\"text-align: center;\"><br/><img src=\"http://127.0.0.9/includes/ueditor/php/../../../images/image/65111437375507.jpg\" title=\"1.jpg\"/><br/></p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">“数一数二战略”来自通用杰克韦尔奇，在1981年时，通用电气公司大约有150个左右的业务，其中包括照明、电力系统和电机。通用电气公司的主要业务中只有燃气涡轮机称得上是世界性的市场领导者。通用电气公司的收入中的2/3来自增长缓慢或是根本没有增长的老业务。</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">当时杰克韦尔奇认为：在全球竞争激烈的市场中，只有领先对手才能立于不败之地，任何事业部门存在的条件就是在市场上“数一数二”，否则就要被砍掉、整顿、关闭或出售。</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">京东做不到每个品类数一数二</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">东哥提出这个战略主题，并非什么新玩意，那东哥为什么要提这个战略主题呢？难道是想要京东砍掉那些没有做到数一数二的品类吗？</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">在7月份的中欧商学院的演讲当中，刘强东有个观点：现在电商企业四十几家剩下的只有十几家，20几家已经出局，10多家还是太多，中国还能保留三到四家。</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">为什么只会保留三到四家呢？因为影响b2c用户网购决策三大点，商品价格和服务，京东的自营商品最丰富，价格不算最低也是比较低的，京东有最大的亚洲1号仓，自建211服务，再加上京东的效率最高成本相对最低，京东不想赢其它家不想死真的都很难。</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">但真的如此吗？按照刘强东的观点，未来京东在很多相对标准化的品类都会实现如家电3c通讯母婴品类一样业绩，占领第一市场份额，而独立官网的电商也就基本没戏了。</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">暂且不算阿里旗下的天猫、淘宝和聚划算，甚至只算实物b2c电商，最大的特卖b2c是京东，而且以平台模式为主的京东肯定没有可能超过唯品会。而最大的图书电商是当当网，今年夏季的时候京东已经决定减少对图书的投入了，所以图书超过当当网暂时看也没有可能。虽然受到假货风波影响，聚美优品业绩受到了冲击，但京东化妆品也不大可能超过聚美优品。而在奢侈品领域，随着7月份打假风暴的来临，寺库网一骑绝尘，京东也没有可能赶超。而苏宁易购、亚马逊中国也一时半会看不到倒下，在更多的细分品类母婴、生鲜，越来越多优秀垂直电商越来越多。从结果来看，越来越多的垂直b2c电商在经历了过去三五年的艰苦挣扎后，开始飞速成长。</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">现实与刘强东的判断越来越远，而京东现实所面临的品类挑战却越来越近！</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">京东靠3c通讯起家，而这些品类线上的占比已经不低，再高速复合增长的概率不大了，跟随小米之后，华为、oppo等厂商更多趋向于自己官网销售，而家电品类增长潜力不错，但竞争依然激烈。唯一能支撑京东高速增长的就是日百品类了，也难怪老刘派得力干将孙佳明管理了。服饰有规模，但主要放在开放平台，带来收入太小。至于自营的汽车、化妆品、图书、奢侈品等品类规模又太小。京东难道未来就靠一个日百品类支撑未来吗？天花板将近，京东应该有所警觉。</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">伴随着越来越多的垂直电商的崛起，京东刘强东应该重新思考品类扩张策略了。参照美国亚马逊，还不断收购了很多垂直电商。比如2008年对最大鞋类电商Zappos.com的12亿美元收购，以及2011年4月,亚马逊5.45亿美元收购了电子商务企业Quidsi,其旗下的Diapers.com网站在母婴用品的垂直品类上一直都是亚马逊最强大的对手。虽然京东也做过一些投资，基本都是一些末尾的小公司，看上去京东花钱真是能省，但是最后还是浪费了。说白了，还是格局不行。</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">所以说京东是时候改变了！</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">传统的京东扩品类的方法不奏效了，因为不只是成本效率问题，还有很多问题是创新和专业问题，京东缺乏足够的创新机会，因为京东已经陷入了一个聚焦短期kpi的陷阱，至少很多部门是这样。被短期kpi压的太死，哪有功夫去创新，做一些不一样的事情。很多人批评说，京东不如亚马逊，这点还真没错，京东的确只是一个能够把货以低价高效卖出去的零售公司。所以京东这个时候应该有两种选择。</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">一种是在这个制度之外，另外设立创新部门，不让它背那么重的短期kpi,有点像腾讯当年的广研（可能记错），反正新培育的业务都放在那，比如微信啊，财付通之类的。还有一个就是既然自己的机制不行，然后市场变化又很快，那就自己就大胆投资领先创新的公司（不局限于实物电商），大投入大回报，要投就投一二名，就不要去浪费钱去收一些被边缘化的公司了！</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">互联网马太效应难道失效了？</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">当然马云也有过类似观点，记得东哥参加2013年的《对话.马云》，其他人提到阿里垄断市场的时候。马云的回应是：“很多人会讲到垄断，互联网时代，规模化是降低整个社会的成本。互联网越来越透明，所以对垄断这两个字大家应重新思考。我们目的是降低整个社会的成本，让社会所有的商业环境更加透明、公正和开放。”也算是间接承认阿里是垄断了，这是互联网马太效应的自然结果，而且不一定是坏处。&nbsp;</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">马云说的自然垄断，就算是阿里最强的服饰品类，此后还诞生了唯品会，之后又有了美丽说蘑菇街，移动端有明星衣橱。在阿里平台之外的微信去中心化平台，诞生了口袋通，口袋购物，以及在这些第三方开发服务商培养起来的数百万的微信微店小卖家。</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">互联网的马太效应，自然垄断效应，真的是这样吗？东哥已经在针对刘强东和马云的观点的时候用事实举例证明了这个逻辑并不成立。难道互联网的马太效应消失了吗？</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">创业者找到自己的数一数二的“标签”</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">很多创业者都会遇到投资人的一个提问：请一句话说清楚你们公司是做什么的？或者请一句话说清楚你们公司的商业模式？很多创业者总是觉得一句话不够用。</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">腾讯是做社交产品的，社交用户想到腾讯；百度是做搜索的，搜索用户想到百度；阿里是购物平台，网购用户想到阿里；360是做杀毒的，杀毒用户想到360。虽然这四家公司的业务早就不局限于起点了，它们或许也不再是这么定义自己了，但从用户角度，它们的确是如此的。所以尽管如此不管你的项目里面有多少业务，一定要一句话说清楚自己是干嘛的，找到自己的标签！无论是渠道品牌，还是产品品牌。</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">特价就找唯品会，图书就上当当网，买正品奢侈品就去寺库网，而阿芙是卖精油，小狗是做吸尘器，三只松鼠是卖坚果的，这三家都努力实现后者等于前者。</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">互联网的马太效应一直都存在，那是针对同一类型产品需求的时候，但是网购这个事情，消费者天然的需求不一致，因为他们收入不一致，教育不一致，还有自己的一些习性判断，所以网购要搞垄断不容易。这是垂直电商创业者的机会，但是用户又很懒，记不住那么多品牌，其实我也记不住，就好像绝大多数人只知道珠穆朗玛峰一样，不知道乔戈里峰是第二高峰。所以每个创业者要清晰的找到自己的那个标签，并根据标签定义做到市场第一，即使再小，互联网也是小众即大众的市场。</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">综合性电商平台天然不会在每个品类上做到专业，这也给了更多电商创业者机会。 韦尔奇的“数一数二”战略，并不是只有在整个行业中的“数一数二”才有价值，在某一个具有吸引力的细分市场中“数一数二” ，也就是找到自己特定的标签！</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">最后刘强东和马云都错了，至少是在这个观点上。既然刘强东和马云都不能改变，那就让我们创业者抓住机会吧！也希望不同的人能够从这篇文章里找到自己的答案！</p><p style=\"border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-type: none; color: rgb(102, 102, 102); font-family: 微软雅黑; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">当然“数一数二战略”主题最后被否掉了，或许提有一些不合时宜吧！京东都这么成功了，可以刀枪入库，马放南山了，坐享天下。东哥也就可以出来创业，做电商天使投资人了。</p><p><br/></p>', '', '', '', '0', '1', '1437346710', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('118', '12', '出大事了！秦皇岛商之翼被录音啦！', '', '', '', '', '0', '1', '1437346999', '', '0', 'http://www.68ecshop.com/article-1740.html', '');
INSERT INTO `ecs_article` VALUES ('119', '12', 'ECSmart出免费版了！商之翼就是这么任性', '', '', '', '', '0', '1', '1437347016', '', '0', 'http://www.68ecshop.com/article-1738.html', '');
INSERT INTO `ecs_article` VALUES ('120', '12', '客户送锦旗 感恩“优质服务”', '', '', '', '', '0', '1', '1437347036', '', '0', 'http://www.68ecshop.com/article-1735.html', '');
INSERT INTO `ecs_article` VALUES ('131', '10', '新手注册', '<p style=\"margin-left:0;text-align:left\"><span style=\"font-family:宋体;font-size:16px\">1、打开</span><span style=\"font-family:宋体;font-size:16px\">小京东</span><span style=\"font-family:宋体;font-size:16px\">首页，点击注册（见图1）。&nbsp;</span> &nbsp;</p><p style=\"margin-left:0;text-align:center\"><br/> <span style=\"font-family:宋体;font-size:14px\"><img src=\"http://aaa.yshdcom.com/includes/ueditor/php/../../../images/image/72701441676434.png\" alt=\"\" height=\"161\" width=\"724\"/>&nbsp;</span> &nbsp;</p><p style=\"margin-left:0;text-align:center\"><span style=\"font-family:宋体;font-size:16px\">（图1）&nbsp;</span> &nbsp;</p><p style=\"margin-left:0;text-align:left\"><span style=\"font-family:宋体;font-size:16px\"><br/> </span> </p><p style=\"margin-left:0;text-align:left\"><span style=\"font-family:宋体;font-size:16px\">2、依次输入账号、密码、邮箱等信息（见图2）点击注册。&nbsp;</span> &nbsp;</p><p style=\"text-align:center\"><span style=\"font-family:宋体;font-size:16px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><img src=\"http://aaa.yshdcom.com/includes/ueditor/php/../../../images/image/53721441676434.png\" alt=\"\"/> &nbsp;</p><p style=\"margin-left:0;text-align:center\"><span style=\"font-family:宋体;font-size:16px\">（图2）</span> &nbsp;</p><p><span style=\"font-family:宋体;font-size:14px\"><br/> </span> </p><p><span style=\"font-family:宋体;font-size:14px\">3、</span><span style=\"font-family:宋体;font-size:19px\">注册成功后就可以登录啦！</span></p><p><br/></p>', '小京东', '', '新手注册', '1', '1', '1441647644', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('132', '7', '门店自提', '<p>自提是小京东为方便顾客收货，为顾客提供的一种固定地点提货的模式，顾客在提交订单时，选择“门店自提”，选择离自己最近的提货地点，订单到达自提点后，系统会以短信形式告知顾客；目前所有上门自提服务均免运费。</p>', '', '', '', '0', '1', '1441652856', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('133', '7', '收货指南', '<p><span style=\"font-family:微软雅黑;\"><span style=\"font-family:SimSun;\"> &nbsp; <span style=\"font-size:14px;\">请您在收货时务必按照以下步骤进行检查核对：</span></span><br/><span style=\"font-family:SimSun;font-size:14px;\"> &nbsp; &nbsp; 1、小京东所有商品均贴有入库标签和写有客户姓名的发货标签，收货时请检查此两个标签是否完整，所印信息是否正确。如发货标签上写的不是您的收件姓名或者入库标签上写的不是您订购的产品编号，请您及时与我们联系。</span><br/><span style=\"font-family:SimSun;\"></span></span></p><p class=\"p\" style=\"margin-left:0.0000pt;text-indent:21.0000pt;\">\r\n	<span style=\"font-family:&#39;Times New Roman&#39;;\"></span><span style=\"font-family:宋体;\"></span><span style=\"font-family:\"></span> </p><p class=\"p\" style=\"text-align:center;margin-left:0pt;text-indent:21pt;\">\r\n	<img src=\"http://aaa.yshdcom.com/includes/ueditor/php/../../../images/image/84081441681987.png\" alt=\"\" width=\"700\"/> </p><p class=\"p\" style=\"margin-left:0.0000pt;text-indent:21.0000pt;\">\r\n	<br/></p><p><span style=\"font-family:SimSun;\"><span style=\"font-size:14px;\">&nbsp; &nbsp; 2、产品在出库前都经过小京东仓库部门认真检查，如您在收货时发现有包装轻微损坏，请在签收时注明“异常签收”，写明损坏位置。如包装损坏严重，可要求拆箱验货并及时与小京东客服部门或仓库部门联系，小京东会给您提货建议，并处理问题。</span><br/><span style=\"font-size:14px;\"> &nbsp; &nbsp; 3、小京东发货信息包括发货件数，提货时请按照小京东实际发货件数进行清理核对，如有少件情况，请及时与小京东客服部门或仓库部门联系。</span></span></p><p><br/></p>', '', '', '', '0', '1', '1441653188', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('134', '7', '30分钟送达', '<p style=\"color:#3C3C3C;font-family:微软雅黑, &#39;Microsoft Yahei&#39;, 宋体, Arial, Helvetica, sans-serif;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-family:SimSun;font-size:14px;\"><span style=\"font-size:16px;\">&nbsp;</span><span style=\"font-size:18px;\">只要您的收货地址在小京东配送范围内，我们的小京东配送小哥将在您下单后，客服确认安排配货出库（耗时10分钟），到指定位置联系确认具体地址（耗时20-30分钟），节假日促销活动、预售商品、大宗团购等特殊情况不限30分钟。</span><br/><span style=\"font-size:18px;\"> &nbsp; &nbsp; 配送范围：新密市区及各乡镇</span><br/><span style=\"font-size:18px;\"> &nbsp; &nbsp; 配送时间：每日 08：00—19：30</span></span><span style=\"font-family:SimSun;font-size:18px;line-height:21px;\">&nbsp;&nbsp;</span> </p><p style=\"white-space: normal; color: rgb(60, 60, 60); text-indent: 2em;\"><span style=\"font-family:微软雅黑, sans-serif;font-size:16px;\"><span style=\"font-family:SimSun;font-size:14px;background-color:#FFFFFF;\"></span></span> \r\n	</p><p style=\"white-space: normal; color: rgb(60, 60, 60); text-indent: 2em;\"><span style=\"font-family:微软雅黑, sans-serif;font-size:18px;\"><span style=\"font-family:SimSun;font-size:18px;\">&nbsp;服务承诺：</span></span> </p><p style=\"white-space: normal; color: rgb(60, 60, 60); text-indent: 2em;\"><span style=\"font-family:微软雅黑, sans-serif;font-size:18px;\"><span style=\"font-family:SimSun;font-size:18px;\">&nbsp;</span></span><span style=\"font-size:18px;font-family:SimSun;line-height:24px;\">◆新密市区（南环——北环——平安路——迎宾大道以内）</span><span style=\"font-size:18px;font-family:SimSun;line-height:24px;\">19:30之前的订单</span><span style=\"font-size:14px;background-color:#FFFFFF;font-family:SimSun;line-height:24px;\"></span><span style=\"font-size:18px;font-family:SimSun;line-height:24px;\">30分钟内送达，</span><span style=\"font-size:18px;font-family:SimSun;line-height:24px;\">19:30以后的</span><span style=\"font-size:18px;font-family:SimSun;line-height:24px;\">订单次日8:00安排配送，配送其它区域每加1公里送达时间延长10分钟。</span> \r\n	</p><p style=\"white-space: normal; color: rgb(60, 60, 60); text-indent: 2em;\"><span style=\"font-family:微软雅黑, sans-serif;font-size:18px;\"><span style=\"font-family:SimSun;font-size:18px;\">&nbsp;</span></span><span style=\"font-family:SimSun;font-size:18px;line-height:24px;\">◆</span><span style=\"font-family:SimSun;font-size:18px;line-height:24px;\">各乡镇 &nbsp;每日12点之前下单，当天送达；12点之后下单，第二天送达。</span> </p><p style=\"white-space: normal; color: rgb(60, 60, 60); text-indent: 2em;\"><span style=\"font-size:18px;line-height:1.5;\">如您不清楚所在位置是否在配送范围内，请咨询在线客服，或者拨打客服电话：400-8388-738。</span> \r\n	</p><p><br/></p>', '', '', '', '0', '1', '1441653269', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('135', '5', '正品保证', '<p><span style=\"font-family:宋体,SimSun;font-size:14px\"><p><span style=\"font-family:宋体\">&nbsp;&nbsp; 一直秉承苛刻至极的品牌引入理念，每件商品都由专业领先的采购团队引进，严格把控商品资质，商品品质及供货商资质。我们敢承诺：“100%正牌真品，假一罚十！”</span> &nbsp;</p><p><span style=\"font-family:宋体\"><br/> </span> &nbsp;</p></span> &nbsp; <span style=\"font-family:宋体,SimSun;font-size:14px\"> &nbsp;<p><img src=\"http://aaa.yshdcom.com/includes/ueditor/php/../../../images/image/40921441682680.png\" alt=\"\"/> &nbsp;</p></span> &nbsp; <br/> <span style=\"font-family:\">&nbsp;&nbsp;&nbsp; <br/> </span> <span style=\"font-family:宋体,SimSun;font-size:14px\"> <p style=\"margin-left:0\"><span style=\"font-family:\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们承诺：所销售的每一件商品均为正牌真品，这不仅仅基于我们的经营理念与职业良知，更基于我们近乎&nbsp;严苛的内审流程、检验机制。当然，如果您认为您在</span><span style=\"font-family:宋体\">小京东</span><span style=\"font-family:\">购买的商品为假货，并能提供如下三种文件中的任意一种，那么，在嗨淘网收到您退回的商品、相关购物&nbsp;凭据与相关证明文件后，</span><span style=\"font-family:宋体\">小京东</span><span style=\"font-family:\">将第一时间进行核实、求证。如确认您的申请，嗨淘网将按照您购买该商品实际支付价款的十倍返还款项予您，并承担所涉商品退货往返的物流费用。</span> &nbsp;</p><p style=\"margin-left:0\"><span style=\"font-family:\">——&nbsp;县级以上质量监督部门出具的书面文件；</span><span style=\"font-family:\"><br/> </span><span style=\"font-family:\">——&nbsp;县级以上工商行政主管部门出具的书面文件；</span><span style=\"font-family:\"><br/> </span><span style=\"font-family:\">——&nbsp;品牌持有方、品牌持有方中国子公司/办事机构、品牌持有方的中国总代理出具的书面文件。</span> &nbsp;</p><br/> &nbsp;<p><br/> </p></span> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', '', '', '', '0', '1', '1441653881', '', '0', 'http://', '');
INSERT INTO `ecs_article` VALUES ('136', '5', '注册协议', '<p><span style=\"font-family:宋体;font-size:14px\">一、总则</span> &nbsp;</p><p><br/> &nbsp;</p><p><span style=\"font-family:宋体;font-size:14px\">1.1　用户应当同意本协议的条款并按照页面上的提示完成全部的注册程序。用户在进行注册程序过程中点击&quot;同意&quot;按钮即表示用户与小京东达成协议，完全接受本协议项下的全部条款。</span> &nbsp;</p><p><span style=\"font-family:宋体;font-size:14px\">&nbsp;</span> &nbsp;</p><p><span style=\"font-family:宋体;font-size:14px\">1.2　用户注册成功后，小京东将给予每个用户一个用户帐号及相应的密码，该用户帐号和密码由用户负责保管；用户应当对以其用户帐号进行的所有活动和事件负法律责任。</span> &nbsp;</p><p><span style=\"font-family:宋体;font-size:14px\">&nbsp;</span> &nbsp;</p><p><span style=\"font-family:宋体;font-size:14px\">1.3　用户可以使用小京东各个频道单项服务，当用户使用小京东各单项服务时，用户的使用行为视为其对该单项服务的服务条款以及小京东在该单项服务中发出的各类公告的同意。</span> &nbsp;</p><p><span style=\"font-family:宋体;font-size:14px\">&nbsp;</span> &nbsp;</p><p><span style=\"font-family:宋体;font-size:14px\">1.4　小京东会员服务协议以及各个频道单项服务条款和公告可由小京东随时更新，且无需另行通知。您在使用相关服务时,应关注并遵守其所适用的相关条款。您在使用小京东提供的各项服务之前，应仔细阅读本服务协议。如您不同意本服务协议及/或随时对其的修改，您可以主动取消小京东提供的服务；您一旦使用小京东服务，即视为您已了解并完全同意本服务协议各项内容，包括小京东对服务协议随时所做的任何修改，并成为小京东用户。</span> &nbsp;</p><p><span style=\"font-family:宋体;font-size:14px\">&nbsp;</span> &nbsp;</p><p><span style=\"font-family:宋体;font-size:14px\">二、注册信息和隐私保护</span> &nbsp;</p><p><span style=\"font-family:宋体;font-size:14px\">&nbsp;</span> &nbsp;</p><p><span style=\"font-family:宋体;font-size:14px\">2.1　小京东帐号（即小京东用户ID） 的所有权归小京东，用户完成注册申请手续后，获得小京东帐号的使用权。用户应提供及时、详尽及准确的个人资料，并不断更新注册资料，符合及时、详尽准 确的要求。所有原始键入的资料将引用为注册资料。如果因注册信息不真实而引起的问题，并对问题发生所带来的后果，小京东不负任何责任。</span> &nbsp;</p><p><span style=\"font-family:宋体;font-size:14px\">&nbsp;</span> &nbsp;</p><p><span style=\"font-family:宋体;font-size:14px\">2.2　用户不应将其帐号、密码转让或出借予他人使用。如用户发现其帐号遭他人非法使用，应立即通知小京东。因黑客行为或用户的保管疏忽导致帐号、密码遭他人非法使用，小京东不承担任何责任。</span> &nbsp;</p><p><span style=\"font-family:宋体;font-size:14px\">&nbsp;</span> &nbsp;</p><p><span style=\"font-family:宋体;font-size:14px\">2.3　小京东不对外公开或向第三方提供单个用户的注册资料，除非：</span> &nbsp;</p><p><span style=\"font-family:宋体;font-size:14px\">&nbsp;</span> &nbsp;</p><p><span style=\"font-family:宋体;font-size:14px\">