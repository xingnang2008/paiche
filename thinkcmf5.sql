/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : thinkcmf5

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-08-22 00:21:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cmf_admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_admin_menu`;
CREATE TABLE `cmf_admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父菜单id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '菜单类型;1:有界面可访问菜单,2:无界面可访问菜单,0:只作为菜单',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;1:显示,0:不显示',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `app` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '应用名',
  `controller` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '操作名称',
  `param` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '额外参数',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parent_id` (`parent_id`),
  KEY `controller` (`controller`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COMMENT='后台菜单表';

-- ----------------------------
-- Records of cmf_admin_menu
-- ----------------------------
INSERT INTO `cmf_admin_menu` VALUES ('1', '0', '0', '1', '20', 'admin', 'Plugin', 'default', '', '插件中心', 'cloud', '插件中心');
INSERT INTO `cmf_admin_menu` VALUES ('2', '1', '1', '1', '10000', 'admin', 'Hook', 'index', '', '钩子管理', '', '钩子管理');
INSERT INTO `cmf_admin_menu` VALUES ('3', '2', '1', '0', '10000', 'admin', 'Hook', 'plugins', '', '钩子插件管理', '', '钩子插件管理');
INSERT INTO `cmf_admin_menu` VALUES ('4', '2', '2', '0', '10000', 'admin', 'Hook', 'pluginListOrder', '', '钩子插件排序', '', '钩子插件排序');
INSERT INTO `cmf_admin_menu` VALUES ('5', '2', '1', '0', '10000', 'admin', 'Hook', 'sync', '', '同步钩子', '', '同步钩子');
INSERT INTO `cmf_admin_menu` VALUES ('6', '0', '0', '1', '0', 'admin', 'Setting', 'default', '', '设置', 'cogs', '系统设置入口');
INSERT INTO `cmf_admin_menu` VALUES ('7', '6', '1', '1', '50', 'admin', 'Link', 'index', '', '友情链接', '', '友情链接管理');
INSERT INTO `cmf_admin_menu` VALUES ('8', '7', '1', '0', '10000', 'admin', 'Link', 'add', '', '添加友情链接', '', '添加友情链接');
INSERT INTO `cmf_admin_menu` VALUES ('9', '7', '2', '0', '10000', 'admin', 'Link', 'addPost', '', '添加友情链接提交保存', '', '添加友情链接提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('10', '7', '1', '0', '10000', 'admin', 'Link', 'edit', '', '编辑友情链接', '', '编辑友情链接');
INSERT INTO `cmf_admin_menu` VALUES ('11', '7', '2', '0', '10000', 'admin', 'Link', 'editPost', '', '编辑友情链接提交保存', '', '编辑友情链接提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('12', '7', '2', '0', '10000', 'admin', 'Link', 'delete', '', '删除友情链接', '', '删除友情链接');
INSERT INTO `cmf_admin_menu` VALUES ('13', '7', '2', '0', '10000', 'admin', 'Link', 'listOrder', '', '友情链接排序', '', '友情链接排序');
INSERT INTO `cmf_admin_menu` VALUES ('14', '7', '2', '0', '10000', 'admin', 'Link', 'toggle', '', '友情链接显示隐藏', '', '友情链接显示隐藏');
INSERT INTO `cmf_admin_menu` VALUES ('15', '6', '1', '1', '10', 'admin', 'Mailer', 'index', '', '邮箱配置', '', '邮箱配置');
INSERT INTO `cmf_admin_menu` VALUES ('16', '15', '2', '0', '10000', 'admin', 'Mailer', 'indexPost', '', '邮箱配置提交保存', '', '邮箱配置提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('17', '15', '1', '0', '10000', 'admin', 'Mailer', 'template', '', '邮件模板', '', '邮件模板');
INSERT INTO `cmf_admin_menu` VALUES ('18', '15', '2', '0', '10000', 'admin', 'Mailer', 'templatePost', '', '邮件模板提交', '', '邮件模板提交');
INSERT INTO `cmf_admin_menu` VALUES ('19', '15', '1', '0', '10000', 'admin', 'Mailer', 'test', '', '邮件发送测试', '', '邮件发送测试');
INSERT INTO `cmf_admin_menu` VALUES ('20', '6', '1', '0', '10000', 'admin', 'Menu', 'index', '', '后台菜单', '', '后台菜单管理');
INSERT INTO `cmf_admin_menu` VALUES ('21', '20', '1', '0', '10000', 'admin', 'Menu', 'lists', '', '所有菜单', '', '后台所有菜单列表');
INSERT INTO `cmf_admin_menu` VALUES ('22', '20', '1', '0', '10000', 'admin', 'Menu', 'add', '', '后台菜单添加', '', '后台菜单添加');
INSERT INTO `cmf_admin_menu` VALUES ('23', '20', '2', '0', '10000', 'admin', 'Menu', 'addPost', '', '后台菜单添加提交保存', '', '后台菜单添加提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('24', '20', '1', '0', '10000', 'admin', 'Menu', 'edit', '', '后台菜单编辑', '', '后台菜单编辑');
INSERT INTO `cmf_admin_menu` VALUES ('25', '20', '2', '0', '10000', 'admin', 'Menu', 'editPost', '', '后台菜单编辑提交保存', '', '后台菜单编辑提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('26', '20', '2', '0', '10000', 'admin', 'Menu', 'delete', '', '后台菜单删除', '', '后台菜单删除');
INSERT INTO `cmf_admin_menu` VALUES ('27', '20', '2', '0', '10000', 'admin', 'Menu', 'listOrder', '', '后台菜单排序', '', '后台菜单排序');
INSERT INTO `cmf_admin_menu` VALUES ('28', '20', '1', '0', '10000', 'admin', 'Menu', 'getActions', '', '导入新后台菜单', '', '导入新后台菜单');
INSERT INTO `cmf_admin_menu` VALUES ('29', '6', '1', '1', '30', 'admin', 'Nav', 'index', '', '导航管理', '', '导航管理');
INSERT INTO `cmf_admin_menu` VALUES ('30', '29', '1', '0', '10000', 'admin', 'Nav', 'add', '', '添加导航', '', '添加导航');
INSERT INTO `cmf_admin_menu` VALUES ('31', '29', '2', '0', '10000', 'admin', 'Nav', 'addPost', '', '添加导航提交保存', '', '添加导航提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('32', '29', '1', '0', '10000', 'admin', 'Nav', 'edit', '', '编辑导航', '', '编辑导航');
INSERT INTO `cmf_admin_menu` VALUES ('33', '29', '2', '0', '10000', 'admin', 'Nav', 'editPost', '', '编辑导航提交保存', '', '编辑导航提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('34', '29', '2', '0', '10000', 'admin', 'Nav', 'delete', '', '删除导航', '', '删除导航');
INSERT INTO `cmf_admin_menu` VALUES ('35', '29', '1', '0', '10000', 'admin', 'NavMenu', 'index', '', '导航菜单', '', '导航菜单');
INSERT INTO `cmf_admin_menu` VALUES ('36', '35', '1', '0', '10000', 'admin', 'NavMenu', 'add', '', '添加导航菜单', '', '添加导航菜单');
INSERT INTO `cmf_admin_menu` VALUES ('37', '35', '2', '0', '10000', 'admin', 'NavMenu', 'addPost', '', '添加导航菜单提交保存', '', '添加导航菜单提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('38', '35', '1', '0', '10000', 'admin', 'NavMenu', 'edit', '', '编辑导航菜单', '', '编辑导航菜单');
INSERT INTO `cmf_admin_menu` VALUES ('39', '35', '2', '0', '10000', 'admin', 'NavMenu', 'editPost', '', '编辑导航菜单提交保存', '', '编辑导航菜单提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('40', '35', '2', '0', '10000', 'admin', 'NavMenu', 'delete', '', '删除导航菜单', '', '删除导航菜单');
INSERT INTO `cmf_admin_menu` VALUES ('41', '35', '2', '0', '10000', 'admin', 'NavMenu', 'listOrder', '', '导航菜单排序', '', '导航菜单排序');
INSERT INTO `cmf_admin_menu` VALUES ('42', '1', '1', '1', '10000', 'admin', 'Plugin', 'index', '', '插件列表', '', '插件列表');
INSERT INTO `cmf_admin_menu` VALUES ('43', '42', '2', '0', '10000', 'admin', 'Plugin', 'toggle', '', '插件启用禁用', '', '插件启用禁用');
INSERT INTO `cmf_admin_menu` VALUES ('44', '42', '1', '0', '10000', 'admin', 'Plugin', 'setting', '', '插件设置', '', '插件设置');
INSERT INTO `cmf_admin_menu` VALUES ('45', '42', '2', '0', '10000', 'admin', 'Plugin', 'settingPost', '', '插件设置提交', '', '插件设置提交');
INSERT INTO `cmf_admin_menu` VALUES ('46', '42', '2', '0', '10000', 'admin', 'Plugin', 'install', '', '插件安装', '', '插件安装');
INSERT INTO `cmf_admin_menu` VALUES ('47', '42', '2', '0', '10000', 'admin', 'Plugin', 'update', '', '插件更新', '', '插件更新');
INSERT INTO `cmf_admin_menu` VALUES ('48', '42', '2', '0', '10000', 'admin', 'Plugin', 'uninstall', '', '卸载插件', '', '卸载插件');
INSERT INTO `cmf_admin_menu` VALUES ('49', '109', '0', '1', '10000', 'admin', 'User', 'default', '', '管理组', '', '管理组');
INSERT INTO `cmf_admin_menu` VALUES ('50', '49', '1', '1', '10000', 'admin', 'Rbac', 'index', '', '角色管理', '', '角色管理');
INSERT INTO `cmf_admin_menu` VALUES ('51', '50', '1', '0', '10000', 'admin', 'Rbac', 'roleAdd', '', '添加角色', '', '添加角色');
INSERT INTO `cmf_admin_menu` VALUES ('52', '50', '2', '0', '10000', 'admin', 'Rbac', 'roleAddPost', '', '添加角色提交', '', '添加角色提交');
INSERT INTO `cmf_admin_menu` VALUES ('53', '50', '1', '0', '10000', 'admin', 'Rbac', 'roleEdit', '', '编辑角色', '', '编辑角色');
INSERT INTO `cmf_admin_menu` VALUES ('54', '50', '2', '0', '10000', 'admin', 'Rbac', 'roleEditPost', '', '编辑角色提交', '', '编辑角色提交');
INSERT INTO `cmf_admin_menu` VALUES ('55', '50', '2', '0', '10000', 'admin', 'Rbac', 'roleDelete', '', '删除角色', '', '删除角色');
INSERT INTO `cmf_admin_menu` VALUES ('56', '50', '1', '0', '10000', 'admin', 'Rbac', 'authorize', '', '设置角色权限', '', '设置角色权限');
INSERT INTO `cmf_admin_menu` VALUES ('57', '50', '2', '0', '10000', 'admin', 'Rbac', 'authorizePost', '', '角色授权提交', '', '角色授权提交');
INSERT INTO `cmf_admin_menu` VALUES ('58', '0', '1', '0', '10000', 'admin', 'RecycleBin', 'index', '', '回收站', '', '回收站');
INSERT INTO `cmf_admin_menu` VALUES ('59', '58', '2', '0', '10000', 'admin', 'RecycleBin', 'restore', '', '回收站还原', '', '回收站还原');
INSERT INTO `cmf_admin_menu` VALUES ('60', '58', '2', '0', '10000', 'admin', 'RecycleBin', 'delete', '', '回收站彻底删除', '', '回收站彻底删除');
INSERT INTO `cmf_admin_menu` VALUES ('61', '6', '1', '1', '10000', 'admin', 'Route', 'index', '', 'URL美化', '', 'URL规则管理');
INSERT INTO `cmf_admin_menu` VALUES ('62', '61', '1', '0', '10000', 'admin', 'Route', 'add', '', '添加路由规则', '', '添加路由规则');
INSERT INTO `cmf_admin_menu` VALUES ('63', '61', '2', '0', '10000', 'admin', 'Route', 'addPost', '', '添加路由规则提交', '', '添加路由规则提交');
INSERT INTO `cmf_admin_menu` VALUES ('64', '61', '1', '0', '10000', 'admin', 'Route', 'edit', '', '路由规则编辑', '', '路由规则编辑');
INSERT INTO `cmf_admin_menu` VALUES ('65', '61', '2', '0', '10000', 'admin', 'Route', 'editPost', '', '路由规则编辑提交', '', '路由规则编辑提交');
INSERT INTO `cmf_admin_menu` VALUES ('66', '61', '2', '0', '10000', 'admin', 'Route', 'delete', '', '路由规则删除', '', '路由规则删除');
INSERT INTO `cmf_admin_menu` VALUES ('67', '61', '2', '0', '10000', 'admin', 'Route', 'ban', '', '路由规则禁用', '', '路由规则禁用');
INSERT INTO `cmf_admin_menu` VALUES ('68', '61', '2', '0', '10000', 'admin', 'Route', 'open', '', '路由规则启用', '', '路由规则启用');
INSERT INTO `cmf_admin_menu` VALUES ('69', '61', '2', '0', '10000', 'admin', 'Route', 'listOrder', '', '路由规则排序', '', '路由规则排序');
INSERT INTO `cmf_admin_menu` VALUES ('70', '61', '1', '0', '10000', 'admin', 'Route', 'select', '', '选择URL', '', '选择URL');
INSERT INTO `cmf_admin_menu` VALUES ('71', '6', '1', '1', '0', 'admin', 'Setting', 'site', '', '网站信息', '', '网站信息');
INSERT INTO `cmf_admin_menu` VALUES ('72', '71', '2', '0', '10000', 'admin', 'Setting', 'sitePost', '', '网站信息设置提交', '', '网站信息设置提交');
INSERT INTO `cmf_admin_menu` VALUES ('73', '6', '1', '0', '10000', 'admin', 'Setting', 'password', '', '密码修改', '', '密码修改');
INSERT INTO `cmf_admin_menu` VALUES ('74', '73', '2', '0', '10000', 'admin', 'Setting', 'passwordPost', '', '密码修改提交', '', '密码修改提交');
INSERT INTO `cmf_admin_menu` VALUES ('75', '6', '1', '1', '10000', 'admin', 'Setting', 'upload', '', '上传设置', '', '上传设置');
INSERT INTO `cmf_admin_menu` VALUES ('76', '75', '2', '0', '10000', 'admin', 'Setting', 'uploadPost', '', '上传设置提交', '', '上传设置提交');
INSERT INTO `cmf_admin_menu` VALUES ('77', '6', '1', '0', '10000', 'admin', 'Setting', 'clearCache', '', '清除缓存', '', '清除缓存');
INSERT INTO `cmf_admin_menu` VALUES ('78', '6', '1', '1', '40', 'admin', 'Slide', 'index', '', '幻灯片管理', '', '幻灯片管理');
INSERT INTO `cmf_admin_menu` VALUES ('79', '78', '1', '0', '10000', 'admin', 'Slide', 'add', '', '添加幻灯片', '', '添加幻灯片');
INSERT INTO `cmf_admin_menu` VALUES ('80', '78', '2', '0', '10000', 'admin', 'Slide', 'addPost', '', '添加幻灯片提交', '', '添加幻灯片提交');
INSERT INTO `cmf_admin_menu` VALUES ('81', '78', '1', '0', '10000', 'admin', 'Slide', 'edit', '', '编辑幻灯片', '', '编辑幻灯片');
INSERT INTO `cmf_admin_menu` VALUES ('82', '78', '2', '0', '10000', 'admin', 'Slide', 'editPost', '', '编辑幻灯片提交', '', '编辑幻灯片提交');
INSERT INTO `cmf_admin_menu` VALUES ('83', '78', '2', '0', '10000', 'admin', 'Slide', 'delete', '', '删除幻灯片', '', '删除幻灯片');
INSERT INTO `cmf_admin_menu` VALUES ('84', '78', '1', '0', '10000', 'admin', 'SlideItem', 'index', '', '幻灯片页面列表', '', '幻灯片页面列表');
INSERT INTO `cmf_admin_menu` VALUES ('85', '84', '1', '0', '10000', 'admin', 'SlideItem', 'add', '', '幻灯片页面添加', '', '幻灯片页面添加');
INSERT INTO `cmf_admin_menu` VALUES ('86', '84', '2', '0', '10000', 'admin', 'SlideItem', 'addPost', '', '幻灯片页面添加提交', '', '幻灯片页面添加提交');
INSERT INTO `cmf_admin_menu` VALUES ('87', '84', '1', '0', '10000', 'admin', 'SlideItem', 'edit', '', '幻灯片页面编辑', '', '幻灯片页面编辑');
INSERT INTO `cmf_admin_menu` VALUES ('88', '84', '2', '0', '10000', 'admin', 'SlideItem', 'editPost', '', '幻灯片页面编辑提交', '', '幻灯片页面编辑提交');
INSERT INTO `cmf_admin_menu` VALUES ('89', '84', '2', '0', '10000', 'admin', 'SlideItem', 'delete', '', '幻灯片页面删除', '', '幻灯片页面删除');
INSERT INTO `cmf_admin_menu` VALUES ('90', '84', '2', '0', '10000', 'admin', 'SlideItem', 'ban', '', '幻灯片页面隐藏', '', '幻灯片页面隐藏');
INSERT INTO `cmf_admin_menu` VALUES ('91', '84', '2', '0', '10000', 'admin', 'SlideItem', 'cancelBan', '', '幻灯片页面显示', '', '幻灯片页面显示');
INSERT INTO `cmf_admin_menu` VALUES ('92', '84', '2', '0', '10000', 'admin', 'SlideItem', 'listOrder', '', '幻灯片页面排序', '', '幻灯片页面排序');
INSERT INTO `cmf_admin_menu` VALUES ('93', '6', '1', '1', '10000', 'admin', 'Storage', 'index', '', '文件存储', '', '文件存储');
INSERT INTO `cmf_admin_menu` VALUES ('94', '93', '2', '0', '10000', 'admin', 'Storage', 'settingPost', '', '文件存储设置提交', '', '文件存储设置提交');
INSERT INTO `cmf_admin_menu` VALUES ('95', '6', '1', '1', '20', 'admin', 'Theme', 'index', '', '模板管理', '', '模板管理');
INSERT INTO `cmf_admin_menu` VALUES ('96', '95', '1', '0', '10000', 'admin', 'Theme', 'install', '', '安装模板', '', '安装模板');
INSERT INTO `cmf_admin_menu` VALUES ('97', '95', '2', '0', '10000', 'admin', 'Theme', 'uninstall', '', '卸载模板', '', '卸载模板');
INSERT INTO `cmf_admin_menu` VALUES ('98', '95', '2', '0', '10000', 'admin', 'Theme', 'installTheme', '', '模板安装', '', '模板安装');
INSERT INTO `cmf_admin_menu` VALUES ('99', '95', '2', '0', '10000', 'admin', 'Theme', 'update', '', '模板更新', '', '模板更新');
INSERT INTO `cmf_admin_menu` VALUES ('100', '95', '2', '0', '10000', 'admin', 'Theme', 'active', '', '启用模板', '', '启用模板');
INSERT INTO `cmf_admin_menu` VALUES ('101', '95', '1', '0', '10000', 'admin', 'Theme', 'files', '', '模板文件列表', '', '启用模板');
INSERT INTO `cmf_admin_menu` VALUES ('102', '95', '1', '0', '10000', 'admin', 'Theme', 'fileSetting', '', '模板文件设置', '', '模板文件设置');
INSERT INTO `cmf_admin_menu` VALUES ('103', '95', '1', '0', '10000', 'admin', 'Theme', 'fileArrayData', '', '模板文件数组数据列表', '', '模板文件数组数据列表');
INSERT INTO `cmf_admin_menu` VALUES ('104', '95', '2', '0', '10000', 'admin', 'Theme', 'fileArrayDataEdit', '', '模板文件数组数据添加编辑', '', '模板文件数组数据添加编辑');
INSERT INTO `cmf_admin_menu` VALUES ('105', '95', '2', '0', '10000', 'admin', 'Theme', 'fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '', '模板文件数组数据添加编辑提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('106', '95', '2', '0', '10000', 'admin', 'Theme', 'fileArrayDataDelete', '', '模板文件数组数据删除', '', '模板文件数组数据删除');
INSERT INTO `cmf_admin_menu` VALUES ('107', '95', '2', '0', '10000', 'admin', 'Theme', 'settingPost', '', '模板文件编辑提交保存', '', '模板文件编辑提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('108', '95', '1', '0', '10000', 'admin', 'Theme', 'dataSource', '', '模板文件设置数据源', '', '模板文件设置数据源');
INSERT INTO `cmf_admin_menu` VALUES ('109', '0', '0', '1', '10', 'user', 'AdminIndex', 'default', '', '用户管理', 'group', '用户管理');
INSERT INTO `cmf_admin_menu` VALUES ('110', '49', '1', '1', '10000', 'admin', 'User', 'index', '', '管理员', '', '管理员管理');
INSERT INTO `cmf_admin_menu` VALUES ('111', '110', '1', '0', '10000', 'admin', 'User', 'add', '', '管理员添加', '', '管理员添加');
INSERT INTO `cmf_admin_menu` VALUES ('112', '110', '2', '0', '10000', 'admin', 'User', 'addPost', '', '管理员添加提交', '', '管理员添加提交');
INSERT INTO `cmf_admin_menu` VALUES ('113', '110', '1', '0', '10000', 'admin', 'User', 'edit', '', '管理员编辑', '', '管理员编辑');
INSERT INTO `cmf_admin_menu` VALUES ('114', '110', '2', '0', '10000', 'admin', 'User', 'editPost', '', '管理员编辑提交', '', '管理员编辑提交');
INSERT INTO `cmf_admin_menu` VALUES ('115', '110', '1', '0', '10000', 'admin', 'User', 'userInfo', '', '个人信息', '', '管理员个人信息修改');
INSERT INTO `cmf_admin_menu` VALUES ('116', '110', '2', '0', '10000', 'admin', 'User', 'userInfoPost', '', '管理员个人信息修改提交', '', '管理员个人信息修改提交');
INSERT INTO `cmf_admin_menu` VALUES ('117', '110', '2', '0', '10000', 'admin', 'User', 'delete', '', '管理员删除', '', '管理员删除');
INSERT INTO `cmf_admin_menu` VALUES ('118', '110', '2', '0', '10000', 'admin', 'User', 'ban', '', '停用管理员', '', '停用管理员');
INSERT INTO `cmf_admin_menu` VALUES ('119', '110', '2', '0', '10000', 'admin', 'User', 'cancelBan', '', '启用管理员', '', '启用管理员');
INSERT INTO `cmf_admin_menu` VALUES ('120', '0', '0', '1', '30', 'portal', 'AdminIndex', 'default', '', '门户管理', 'th', '门户管理');
INSERT INTO `cmf_admin_menu` VALUES ('121', '120', '1', '1', '10000', 'portal', 'AdminArticle', 'index', '', '文章管理', '', '文章列表');
INSERT INTO `cmf_admin_menu` VALUES ('122', '121', '1', '0', '10000', 'portal', 'AdminArticle', 'add', '', '添加文章', '', '添加文章');
INSERT INTO `cmf_admin_menu` VALUES ('123', '121', '2', '0', '10000', 'portal', 'AdminArticle', 'addPost', '', '添加文章提交', '', '添加文章提交');
INSERT INTO `cmf_admin_menu` VALUES ('124', '121', '1', '0', '10000', 'portal', 'AdminArticle', 'edit', '', '编辑文章', '', '编辑文章');
INSERT INTO `cmf_admin_menu` VALUES ('125', '121', '2', '0', '10000', 'portal', 'AdminArticle', 'editPost', '', '编辑文章提交', '', '编辑文章提交');
INSERT INTO `cmf_admin_menu` VALUES ('126', '121', '2', '0', '10000', 'portal', 'AdminArticle', 'delete', '', '文章删除', '', '文章删除');
INSERT INTO `cmf_admin_menu` VALUES ('127', '121', '2', '0', '10000', 'portal', 'AdminArticle', 'publish', '', '文章发布', '', '文章发布');
INSERT INTO `cmf_admin_menu` VALUES ('128', '121', '2', '0', '10000', 'portal', 'AdminArticle', 'top', '', '文章置顶', '', '文章置顶');
INSERT INTO `cmf_admin_menu` VALUES ('129', '121', '2', '0', '10000', 'portal', 'AdminArticle', 'recommend', '', '文章推荐', '', '文章推荐');
INSERT INTO `cmf_admin_menu` VALUES ('130', '121', '2', '0', '10000', 'portal', 'AdminArticle', 'listOrder', '', '文章排序', '', '文章排序');
INSERT INTO `cmf_admin_menu` VALUES ('131', '120', '1', '1', '10000', 'portal', 'AdminCategory', 'index', '', '分类管理', '', '文章分类列表');
INSERT INTO `cmf_admin_menu` VALUES ('132', '131', '1', '0', '10000', 'portal', 'AdminCategory', 'add', '', '添加文章分类', '', '添加文章分类');
INSERT INTO `cmf_admin_menu` VALUES ('133', '131', '2', '0', '10000', 'portal', 'AdminCategory', 'addPost', '', '添加文章分类提交', '', '添加文章分类提交');
INSERT INTO `cmf_admin_menu` VALUES ('134', '131', '1', '0', '10000', 'portal', 'AdminCategory', 'edit', '', '编辑文章分类', '', '编辑文章分类');
INSERT INTO `cmf_admin_menu` VALUES ('135', '131', '2', '0', '10000', 'portal', 'AdminCategory', 'editPost', '', '编辑文章分类提交', '', '编辑文章分类提交');
INSERT INTO `cmf_admin_menu` VALUES ('136', '131', '1', '0', '10000', 'portal', 'AdminCategory', 'select', '', '文章分类选择对话框', '', '文章分类选择对话框');
INSERT INTO `cmf_admin_menu` VALUES ('137', '131', '2', '0', '10000', 'portal', 'AdminCategory', 'listOrder', '', '文章分类排序', '', '文章分类排序');
INSERT INTO `cmf_admin_menu` VALUES ('138', '131', '2', '0', '10000', 'portal', 'AdminCategory', 'delete', '', '删除文章分类', '', '删除文章分类');
INSERT INTO `cmf_admin_menu` VALUES ('139', '120', '1', '1', '10000', 'portal', 'AdminPage', 'index', '', '页面管理', '', '页面管理');
INSERT INTO `cmf_admin_menu` VALUES ('140', '139', '1', '0', '10000', 'portal', 'AdminPage', 'add', '', '添加页面', '', '添加页面');
INSERT INTO `cmf_admin_menu` VALUES ('141', '139', '2', '0', '10000', 'portal', 'AdminPage', 'addPost', '', '添加页面提交', '', '添加页面提交');
INSERT INTO `cmf_admin_menu` VALUES ('142', '139', '1', '0', '10000', 'portal', 'AdminPage', 'edit', '', '编辑页面', '', '编辑页面');
INSERT INTO `cmf_admin_menu` VALUES ('143', '139', '2', '0', '10000', 'portal', 'AdminPage', 'editPost', '', '编辑页面提交', '', '编辑页面提交');
INSERT INTO `cmf_admin_menu` VALUES ('144', '139', '2', '0', '10000', 'portal', 'AdminPage', 'delete', '', '删除页面', '', '删除页面');
INSERT INTO `cmf_admin_menu` VALUES ('145', '120', '1', '1', '10000', 'portal', 'AdminTag', 'index', '', '文章标签', '', '文章标签');
INSERT INTO `cmf_admin_menu` VALUES ('146', '145', '1', '0', '10000', 'portal', 'AdminTag', 'add', '', '添加文章标签', '', '添加文章标签');
INSERT INTO `cmf_admin_menu` VALUES ('147', '145', '2', '0', '10000', 'portal', 'AdminTag', 'addPost', '', '添加文章标签提交', '', '添加文章标签提交');
INSERT INTO `cmf_admin_menu` VALUES ('148', '145', '2', '0', '10000', 'portal', 'AdminTag', 'upStatus', '', '更新标签状态', '', '更新标签状态');
INSERT INTO `cmf_admin_menu` VALUES ('149', '145', '2', '0', '10000', 'portal', 'AdminTag', 'delete', '', '删除文章标签', '', '删除文章标签');
INSERT INTO `cmf_admin_menu` VALUES ('150', '0', '1', '0', '10000', 'user', 'AdminAsset', 'index', '', '资源管理', 'file', '资源管理列表');
INSERT INTO `cmf_admin_menu` VALUES ('151', '150', '2', '0', '10000', 'user', 'AdminAsset', 'delete', '', '删除文件', '', '删除文件');
INSERT INTO `cmf_admin_menu` VALUES ('152', '109', '0', '1', '10000', 'user', 'AdminIndex', 'default1', '', '用户组', '', '用户组');
INSERT INTO `cmf_admin_menu` VALUES ('153', '152', '1', '1', '10000', 'user', 'AdminIndex', 'index', '', '本站用户', '', '本站用户');
INSERT INTO `cmf_admin_menu` VALUES ('154', '153', '2', '0', '10000', 'user', 'AdminIndex', 'ban', '', '本站用户拉黑', '', '本站用户拉黑');
INSERT INTO `cmf_admin_menu` VALUES ('155', '153', '2', '0', '10000', 'user', 'AdminIndex', 'cancelBan', '', '本站用户启用', '', '本站用户启用');
INSERT INTO `cmf_admin_menu` VALUES ('156', '152', '1', '1', '10000', 'user', 'AdminOauth', 'index', '', '第三方用户', '', '第三方用户');
INSERT INTO `cmf_admin_menu` VALUES ('157', '156', '2', '0', '10000', 'user', 'AdminOauth', 'delete', '', '删除第三方用户绑定', '', '删除第三方用户绑定');
INSERT INTO `cmf_admin_menu` VALUES ('158', '6', '1', '1', '10000', 'user', 'AdminUserAction', 'index', '', '用户操作管理', '', '用户操作管理');
INSERT INTO `cmf_admin_menu` VALUES ('159', '158', '1', '0', '10000', 'user', 'AdminUserAction', 'edit', '', '编辑用户操作', '', '编辑用户操作');
INSERT INTO `cmf_admin_menu` VALUES ('160', '158', '2', '0', '10000', 'user', 'AdminUserAction', 'editPost', '', '编辑用户操作提交', '', '编辑用户操作提交');
INSERT INTO `cmf_admin_menu` VALUES ('161', '158', '1', '0', '10000', 'user', 'AdminUserAction', 'sync', '', '同步用户操作', '', '同步用户操作');
INSERT INTO `cmf_admin_menu` VALUES ('162', '0', '1', '1', '10000', 'Admin', 'check_point', 'index', '', '检测项管理', '', '');

-- ----------------------------
-- Table structure for `cmf_asset`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_asset`;
CREATE TABLE `cmf_asset` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `file_size` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小,单位B',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:可用,0:不可用',
  `download_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `file_key` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件惟一码',
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_path` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件路径,相对于upload目录,可以为url',
  `file_md5` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件md5值',
  `file_sha1` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `suffix` varchar(10) NOT NULL DEFAULT '' COMMENT '文件后缀名,不包括点',
  `more` text COMMENT '其它详细信息,JSON格式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COMMENT='资源表';

-- ----------------------------
-- Records of cmf_asset
-- ----------------------------
INSERT INTO `cmf_asset` VALUES ('1', '3', '21023', '1534175411', '1', '0', '36b8f93611aea017145883be80c697f61e7b79636915ec540cd3a0453935b539', '1151024N6-0.jpg', 'admin/20180813/04394c486bf08aab5f6792f7b32a4342.jpg', '36b8f93611aea017145883be80c697f6', '0f264b0d60f8149c320c722094ae805ae1a290e5', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('2', '3', '79368', '1534176582', '1', '0', 'c653b93fa135ef5cde2413831b017382bc3bb85820382a8555f04cf081f69ac0', 'timg (2).jpg', 'admin/20180814/4f5c5c156332c74647e50b67bce9c44a.jpg', 'c653b93fa135ef5cde2413831b017382', '73e956450aa3c9872558239513c3e69caadb4dd5', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('3', '3', '84971', '1534177126', '1', '0', '3aafbd0640b80e4e34516cf9ea1f1a9a55683502b1a5e5df2fa702e192821e69', 'timg104.jpg', 'admin/20180814/c85856fadf24c1980086c2bf1f659da3.jpg', '3aafbd0640b80e4e34516cf9ea1f1a9a', '1aeb0066fd413311b8ec95b8e87ab46f28b037ec', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('4', '3', '77094', '1534250023', '1', '0', 'cba2d40633411f24720f57ac73300da89360361ae15d71a26b27f2d298a6c5dd', 'timg.jpg', 'admin/20180814/bc9ddac4afff71d458d67ca9abc50fab.jpg', 'cba2d40633411f24720f57ac73300da8', 'cc411399007ed0eb5c57094266fc3d74ee51e667', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('5', '1', '21023', '1534255226', '1', '0', '36b8f93611aea017145883be80c697f61e7b79636915ec540cd3a0453935b539', '1151024N6-0.jpg', 'portal/20180814/f053f84cdd1348d838906e0cbfc732cb.jpg', '36b8f93611aea017145883be80c697f6', '0f264b0d60f8149c320c722094ae805ae1a290e5', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('6', '1', '41480', '1534255237', '1', '0', '933c6aa64fb945aa20fc7274a9f68dcfaf6063e9222718f9c9451417a878f056', 'timg101.jpg', 'portal/20180814/5cda5ba70e3386d92cbd83fba372ca93.jpg', '933c6aa64fb945aa20fc7274a9f68dcf', '4e12be9501674a5bf45d50c6362d48aa858c0396', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('7', '1', '79368', '1534255550', '1', '0', 'c653b93fa135ef5cde2413831b017382bc3bb85820382a8555f04cf081f69ac0', 'timg (2).jpg', 'portal/20180814/308ac95a609538887aea8b6a3fef2965.jpg', 'c653b93fa135ef5cde2413831b017382', '73e956450aa3c9872558239513c3e69caadb4dd5', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('8', '3', '39164', '1534258861', '1', '0', 'cf79d09525e73992b53b5b80e961421bdd1a7645ebc953b3f784635529c6bdaf', 'c465.jpg', 'admin/20180814/4c3d5919323c15311cc080a083ac173e.jpg', 'cf79d09525e73992b53b5b80e961421b', '4b25cc02e10f89c3b0bf7b9f9eecb0ce114a400c', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('9', '3', '21554', '1534347974', '1', '0', '3b13df6d8de6837f7ac207ed218976904901e1cc6883380a96d9844b0bd4c7ee', 'timg (4).jpg', 'user/20180815/a6099f12a57ec4dc7d610791ce5115f2.jpg', '3b13df6d8de6837f7ac207ed21897690', 'f0b67c7d0b7aeff05f626fb4fdbe164e85ee6e95', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('10', '3', '41480', '1534430429', '1', '0', '933c6aa64fb945aa20fc7274a9f68dcfaf6063e9222718f9c9451417a878f056', 'timg101.jpg', 'user/20180816/52a807b931baad3c2aba07ee554e6434.jpg', '933c6aa64fb945aa20fc7274a9f68dcf', '4e12be9501674a5bf45d50c6362d48aa858c0396', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('11', '3', '87246', '1534431121', '1', '0', 'eb217ce61020e25d045c513b012a9375da1420c155790fadeaea484494287026', 'timg103.jpg', 'user/20180816/a050cafb12feed30752975b50e5cdc0a.jpg', 'eb217ce61020e25d045c513b012a9375', '6f02246be72e49f95109832989aacc41fc4fa26a', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('12', '3', '125985', '1534667989', '1', '0', 'f7afd3f9963b6c911ecde2009d833a69f9e7b45f87cdf6c5f73268afa8520087', '1130240058.jpg', 'user/20180819/fa90c4b8e97c0139cafc2f3283631029.jpg', 'f7afd3f9963b6c911ecde2009d833a69', 'f6b906c828d4d5715dae79c307d314ceda9d22f9', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('13', '3', '51323', '1534691305', '1', '0', '1b4f3c80e49dbd6dd5e1963d5f20020fbbfafe4d6abef564e4034d989dd23dd5', 'timg105.jpg', 'user/20180819/c0e62065dd3f88ca6db66f1fed78e3ca.jpg', '1b4f3c80e49dbd6dd5e1963d5f20020f', 'd743c4ea6fcff4f53f959664fec22a028156850e', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('14', '1', '21554', '1534775715', '1', '0', '3b13df6d8de6837f7ac207ed218976904901e1cc6883380a96d9844b0bd4c7ee', 'timg (4).jpg', 'user/20180820/b9c58e7ac6fbfe581b6efc1aee13df2f.jpg', '3b13df6d8de6837f7ac207ed21897690', 'f0b67c7d0b7aeff05f626fb4fdbe164e85ee6e95', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('15', '1', '39164', '1534775799', '1', '0', 'cf79d09525e73992b53b5b80e961421bdd1a7645ebc953b3f784635529c6bdaf', 'c465.jpg', 'user/20180820/9600a36288d09b3d2774156ddf70a7f1.jpg', 'cf79d09525e73992b53b5b80e961421b', '4b25cc02e10f89c3b0bf7b9f9eecb0ce114a400c', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('16', '1', '77094', '1534775799', '1', '0', 'cba2d40633411f24720f57ac73300da89360361ae15d71a26b27f2d298a6c5dd', 'timg.jpg', 'user/20180820/57cfa9c5556d2280cc67d259bbb418c4.jpg', 'cba2d40633411f24720f57ac73300da8', 'cc411399007ed0eb5c57094266fc3d74ee51e667', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('17', '1', '87246', '1534775800', '1', '0', 'eb217ce61020e25d045c513b012a9375da1420c155790fadeaea484494287026', 'timg103.jpg', 'user/20180820/d7e18648807b0b022b44ce5e5a54968a.jpg', 'eb217ce61020e25d045c513b012a9375', '6f02246be72e49f95109832989aacc41fc4fa26a', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('18', '1', '59332', '1534776551', '1', '0', '1d0b45d11b08ab539bf8a5845451cc693c0847c9e0f21dbf8f953865d0c79c3f', '6e31294907468174!600x600.jpg', 'user/20180820/13432f63efb7c43b7600dc107b469e3b.jpg', '1d0b45d11b08ab539bf8a5845451cc69', '0fcfd6f3ce46cf563e14066a70187add83ef6357', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('19', '1', '79326', '1534778189', '1', '0', '817060a31ba929605b3a17cf6f9c3d353607a20e05fb018aa5dc708e2837416f', '7f0caf27bba810418907f836a31771d1.jpeg', 'user/20180820/a649cc6af381b41d31858e6c94d8ee02.jpeg', '817060a31ba929605b3a17cf6f9c3d35', '7a245847b72aff66b89fd11361af3b0bda127c28', 'jpeg', null);
INSERT INTO `cmf_asset` VALUES ('20', '1', '70235', '1534778235', '1', '0', '0f87d0e7e456023d512e9d16904e1d314bfe31b7238e9493c80ec1fdfc32b4b3', '95d355f693d35ddbd672aacd99610b06.jpeg', 'user/20180820/91fca122847cc2e767f50fbe90ba88cf.jpeg', '0f87d0e7e456023d512e9d16904e1d31', '6f3f53daf776dfbdd38f9e801f9ccfa03ef39ad6', 'jpeg', null);
INSERT INTO `cmf_asset` VALUES ('21', '1', '31952', '1534778260', '1', '0', '659fe7afbfc7915d675a6c8138e9195997d52a6ad10f02c4d57e3fcc5ec0231f', '8ebb9da8da804099abc187554a758398!400x400.jpeg', 'user/20180820/4ebbe2ea4dbb4a2f68b45ae0c7796953.jpeg', '659fe7afbfc7915d675a6c8138e91959', '237bb509defb6f7474287ddf7392af956d16b86c', 'jpeg', null);
INSERT INTO `cmf_asset` VALUES ('22', '1', '68972', '1534778351', '1', '0', '5768c9ce61f3842a5c71d4047d2e7e8f5c1b3dcb63a3a3265741c98794db1e1d', '258c71b00c84aad4!600x600.jpg', 'user/20180820/55c0d8e649b12dace0fe6dbf206a4893.jpg', '5768c9ce61f3842a5c71d4047d2e7e8f', '70fefcd1bf2c45d05be0bcb31ee6d857c38dd454', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('23', '1', '54740', '1534779217', '1', '0', '1b192a3356bd5471d9c97e29ee9fa1100505bbca7dc60ad455c2b5eed1b36f14', '63b5d58c22a16635!600x600.jpg', 'user/20180820/9b1c8f2898ec2e0cd80ef68229b4e36e.jpg', '1b192a3356bd5471d9c97e29ee9fa110', 'bab7263895a22f50ae901dba9db5a45722f65fc7', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('24', '1', '79013', '1534779303', '1', '0', 'd8db9fb3ee0f9da30de968b6138fd4c648e69384774e96f6b79b73b0d1b3cce8', '465394ca5b2291da!400x400_big (2).jpg', 'user/20180820/346e53d505d0c58088db3b807dd13ebd.jpg', 'd8db9fb3ee0f9da30de968b6138fd4c6', '7c6cb70145fbb07f4d94d7c4025aee8b3d2925f5', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('25', '1', '62555', '1534779317', '1', '0', '3e6fb97c1b2ddfe7476c2318b88deaa270e47a84b862a6f5a459baaf2ccd406e', 'bd32e70d6a0e8e5dde6f7f999b4a2da0.jpg', 'user/20180820/28d2f59edfe4641a7898eb191265b591.jpg', '3e6fb97c1b2ddfe7476c2318b88deaa2', '2617a048f9ad77c9a38782d00499d63f1477002d', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('26', '1', '266507', '1534779335', '1', '0', '8b00e78e331e83ca7278fb3d5a1b97faf23a2da9145116c028c24e55a73d3c66', 'a37b16401f1276f4fb89ddc22bfc3f00.jpg', 'user/20180820/dd57122f3e34cfb057241e41fb4103bd.jpg', '8b00e78e331e83ca7278fb3d5a1b97fa', '52f50995b6d05a9c3d4a4c58774aed54fc84930e', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('27', '1', '101171', '1534779499', '1', '0', '94b6f7f610b408c288aea9c13ec7c3ba6acfd46337d10075f8ca1cdceaf3337d', '996f9eed8eb12df867bc12921c23f3e5.jpg', 'user/20180820/fa8e7b8d62e779a60434e7150321dd9c.jpg', '94b6f7f610b408c288aea9c13ec7c3ba', '0354cfbdfe29974c04e3510163e3fbdc877215c6', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('28', '1', '125985', '1534779499', '1', '0', 'f7afd3f9963b6c911ecde2009d833a69f9e7b45f87cdf6c5f73268afa8520087', '1130240058.jpg', 'user/20180820/95995ad87136847f824965ad044069c2.jpg', 'f7afd3f9963b6c911ecde2009d833a69', 'f6b906c828d4d5715dae79c307d314ceda9d22f9', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('29', '1', '90501', '1534779618', '1', '0', '4a5f42441f5caad612461834832fb305228fa8c530dbcdeedd113be07cb59765', '5163e863a715465610f3e65cc101c1ff.jpeg', 'user/20180820/20acb9fa66fb0e6a68b1186bd2aa125a.jpeg', '4a5f42441f5caad612461834832fb305', '35b6e4099b23124625ad31cc118fd2ccff4582da', 'jpeg', null);
INSERT INTO `cmf_asset` VALUES ('30', '1', '48899', '1534779832', '1', '0', '294a993c97636f20a273e56919299984f51b1ed53c4180096230b5a72ca46a09', '8332a79b75d9704f!600x600.jpg', 'user/20180820/9bc0ec9bba8c44af1f7793c9e68ac167.jpg', '294a993c97636f20a273e56919299984', '6d2575a174094278ca7f5bf4a2a46c75d273206d', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('31', '1', '19599', '1534779832', '1', '0', '6092cf659aa1533d34a2c9d3b5971a44539c30d0ed6df9508c37b65d50078b1d', '465394ca5b2291da!400x400_big (1).jpg', 'user/20180820/7a16c62b21fe03711d9fb5c8e31e507e.jpg', '6092cf659aa1533d34a2c9d3b5971a44', '15e787f630bc004224e6c2bae09cadfbf1555f20', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('32', '3', '59332', '1534855282', '1', '0', '1d0b45d11b08ab539bf8a5845451cc693c0847c9e0f21dbf8f953865d0c79c3f', '6e31294907468174!600x600.jpg', 'user/20180821/c6d87cc3dcaba6ec2e00933bc089f782.jpg', '1d0b45d11b08ab539bf8a5845451cc69', '0fcfd6f3ce46cf563e14066a70187add83ef6357', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('33', '3', '103455', '1534867282', '1', '0', 'c72d406a808e6630dc1660a9182ac56229332095bce58b6992bf3501c0eeeaa6', 'e08ba91785cea3e6673b4a19f442d74c.jpeg', 'user/20180822/a7511ba6c601c8ee49fc7225c5ff1e24.jpeg', 'c72d406a808e6630dc1660a9182ac562', 'b88ed99291e63b9c0a9d5843b19390af2179a252', 'jpeg', null);
INSERT INTO `cmf_asset` VALUES ('34', '3', '34250', '1534868411', '1', '0', 'c39615cd910ca5e43ae1bc3fd0bdf35b04eebc3ea7abf2b4c96f1c989fd87570', 'e8f9c2f033874e24!600x600.jpg', 'user/20180822/51af36b63f44773319a884c01ba21cad.jpg', 'c39615cd910ca5e43ae1bc3fd0bdf35b', '83a05400553b937344d170b0bc95068abba035ba', 'jpg', null);

-- ----------------------------
-- Table structure for `cmf_auction_cars`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auction_cars`;
CREATE TABLE `cmf_auction_cars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auction_id` varchar(20) DEFAULT NULL COMMENT '拍卖号',
  `city_id` int(11) DEFAULT NULL COMMENT '城市ID',
  `city` varchar(30) DEFAULT NULL COMMENT '城市名',
  `plate_number` varchar(20) DEFAULT NULL COMMENT '车牌',
  `vin` varchar(30) DEFAULT NULL,
  `engine_number` varchar(30) DEFAULT NULL COMMENT '发动机编号',
  `car_type_id` int(2) DEFAULT NULL COMMENT '车型id',
  `car_type` varchar(30) DEFAULT NULL COMMENT '车型',
  `title` varchar(100) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL COMMENT '封面图',
  `introduce` varchar(255) DEFAULT NULL COMMENT '简介',
  `swept_volume` float(2,1) unsigned zerofill DEFAULT NULL COMMENT '排量',
  `factory_date` date DEFAULT NULL COMMENT '出厂日期',
  `reg_date` date DEFAULT NULL COMMENT '上牌日期',
  `buy_money` int(11) DEFAULT NULL COMMENT '新车价格',
  `in_date` datetime DEFAULT NULL COMMENT '录入日期',
  `start_time` char(20) DEFAULT NULL COMMENT '开拍时间',
  `end_time` char(20) DEFAULT NULL COMMENT '结拍日期',
  `mileage` int(11) DEFAULT NULL COMMENT '里程',
  `start_money` int(11) unsigned zerofill DEFAULT NULL COMMENT '起拍价',
  `up_money` int(11) unsigned zerofill DEFAULT NULL COMMENT '递增价',
  `status` tinyint(1) unsigned zerofill DEFAULT '1' COMMENT '状态: 1,未开始，2进行中，3，流拍，4结束',
  `got_id` int(11) DEFAULT NULL,
  `got_name` varchar(30) DEFAULT NULL,
  `check_type_id` tinyint(1) DEFAULT '1' COMMENT '检测类型ID 1,车公正检测 2，其他',
  `check_type` varchar(20) DEFAULT NULL COMMENT '检测类型',
  `emission_standard` varchar(20) DEFAULT NULL COMMENT '排放标准',
  `emission_standard_id` tinyint(1) DEFAULT NULL COMMENT '排标ID ，1 国I  - 5 国V',
  `grade_id` tinyint(1) DEFAULT NULL COMMENT '评级ID',
  `grade` varchar(20) DEFAULT NULL COMMENT '评级',
  `gearbox_id` tinyint(1) DEFAULT NULL COMMENT '变速箱ID 1,手动，2自动，3手自一体',
  `gearbox` varchar(20) DEFAULT NULL COMMENT '变速箱',
  `brand` varchar(20) DEFAULT NULL COMMENT '品牌',
  `brand_id` tinyint(3) DEFAULT NULL COMMENT '品牌ID',
  `year_style` varchar(50) DEFAULT NULL COMMENT '年款',
  `operator_id` int(11) DEFAULT NULL,
  `operator` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auction` (`auction_id`) USING BTREE,
  KEY `muti` (`city_id`,`car_type_id`,`mileage`,`swept_volume`,`reg_date`,`start_money`,`check_type_id`,`emission_standard_id`,`grade_id`,`gearbox_id`,`brand_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cmf_auction_cars
-- ----------------------------
INSERT INTO `cmf_auction_cars` VALUES ('1', null, '1', null, null, null, null, null, null, '宝马3', 'admin/20180814/4f5c5c156332c74647e50b67bce9c44a.jpg', 'b', '1.8', '2018-08-14', '2018-08-14', '20', null, null, null, '10000', null, null, '1', null, null, '1', null, null, '4', null, null, '1', null, null, '3', null, null, null);
INSERT INTO `cmf_auction_cars` VALUES ('2', null, '2', '上海', null, null, null, '3', 'SUV', '奔驰3', 'admin/20180814/c85856fadf24c1980086c2bf1f659da3.jpg', 'b', '2.5', '2018-08-14', '2018-08-16', '3', null, null, null, '3000', null, null, '1', null, null, '2', '自检', '国II', '2', null, null, '2', '自动', '奔驰', '2', null, null, null);
INSERT INTO `cmf_auction_cars` VALUES ('3', null, '2', '上海', null, null, null, '1', '', '2016年 奥迪A9', 'admin/20180814/4f5c5c156332c74647e50b67bce9c44a.jpg', 'a9', '1.8', '2018-08-04', '2018-08-18', '21', null, null, null, '1000', null, null, '1', null, null, '1', '', '国IV', '4', null, null, '1', '', '', '1', null, null, null);
INSERT INTO `cmf_auction_cars` VALUES ('4', null, '1', '北京', null, null, null, '1', '两厢车', '2016年 奥迪A9', 'admin/20180814/4c3d5919323c15311cc080a083ac173e.jpg', '2016年车', '2.6', '2018-08-03', '2018-08-14', '25', null, null, null, '5000', null, null, '1', null, null, '1', '车公正', '国III', '3', null, null, '2', '自动', '奔驰', '2', null, null, null);
INSERT INTO `cmf_auction_cars` VALUES ('5', '1534603360670', '2', '上海', null, null, null, '1', '两厢车', '2016年 奥迪A8', 'admin/20180813/04394c486bf08aab5f6792f7b32a4342.jpg', '', '2.6', '2018-08-17', '2018-08-24', '21', null, '2018-08-19 16:00:00', '2018-08-30 12:00:00', '21000', '00000000011', '00000005000', '2', null, null, '1', '车公正', '国III', '3', null, null, '1', '手动', '奔驰', '2', '2015年 进取版', null, null);
INSERT INTO `cmf_auction_cars` VALUES ('6', '1534603360671', '1', '北京', null, null, null, '1', '两厢车', '2016年 奥迪A9', 'admin/20180814/4f5c5c156332c74647e50b67bce9c44a.jpg', '2塔顶', '2.5', '2018-08-16', '2018-08-15', '25', null, '2018-08-16 16:10:31', '2018-08-29 12:00:00', '25000', '00000000010', '00000005000', '2', null, null, '1', '车公正', '国IV', '4', null, null, '1', '手动', '奥迪', '1', '2014年 舒适版', null, null);
INSERT INTO `cmf_auction_cars` VALUES ('7', null, '1', '', null, null, null, '2', '', '18年 奥迪A6', '', '地', '2.0', '2018-06-05', '2018-08-16', '26', '2018-08-14 23:11:37', null, null, '10000', null, null, '1', null, null, '1', '', '', '4', null, null, '2', '', '', '2', null, '3', '');
INSERT INTO `cmf_auction_cars` VALUES ('8', null, '2', '上海', 'L4546546', 'K444A6654', 'K121321', '2', '三厢车', '1213', 'admin/20180813/04394c486bf08aab5f6792f7b32a4342.jpg', null, '1.6', '2018-08-14', '2018-08-15', null, '2018-08-15 23:44:43', null, null, '5000', null, null, '1', null, null, '1', '', '', '4', null, null, '2', '', '', '1', '18年A3L', '3', '');
INSERT INTO `cmf_auction_cars` VALUES ('9', null, '1', '北京', 'L4546546', 'K444A6654', 'K121321', '3', 'SUV', '1213', 'user/20180815/a6099f12a57ec4dc7d610791ce5115f2.jpg', null, '1.6', '2018-08-14', '2018-08-15', null, '2018-08-15 23:46:44', null, null, '5000', null, null, '1', null, null, '1', '车公正', '', '4', null, null, '1', '手动', '奥迪', '1', '18年A3L', '3', '郝建');
INSERT INTO `cmf_auction_cars` VALUES ('10', null, '1', '', 'L4546546', 'K444A6654', 'K121321', '3', '', '1213', 'admin/20180813/04394c486bf08aab5f6792f7b32a4342.jpg', null, '1.6', '2018-08-14', '2018-08-15', null, '2018-08-15 23:49:41', null, null, '5000', null, null, '1', null, null, '2', '自检', '国V', '5', null, null, '3', '手自一体', '', '1', '18年A3L', '3', '郝建');
INSERT INTO `cmf_auction_cars` VALUES ('11', null, '1', '北京', 'a32165', 'a546546a5465', 's1230456', '1', '两厢车', 'aa', 'admin/20180814/c85856fadf24c1980086c2bf1f659da3.jpg', null, '1.8', '2018-08-16', '2018-08-16', null, '2018-08-16 22:23:04', null, null, '50000', null, null, '1', null, null, '1', '车公正', '国IV', '4', null, null, '2', '自动', '奥迪', '1', '2016年 A3', '3', '郝建');
INSERT INTO `cmf_auction_cars` VALUES ('12', '1534603360672', '2', '', 'G5555', 'V1122132', 'V11111', '2', '', null, 'admin/20180813/04394c486bf08aab5f6792f7b32a4342.jpg', null, '1.6', '2018-08-24', '2018-08-16', null, '2018-08-18 22:42:40', null, null, '49999', null, null, '1', null, null, '1', '', '', '4', null, null, '2', '', '', '1', '2017年 捷路版', '3', '郝建');
INSERT INTO `cmf_auction_cars` VALUES ('13', '1534668025221', '1', '北京', '鲁P0000', 'V11111', 'F1111001', '0', '', null, 'user/20180819/fa90c4b8e97c0139cafc2f3283631029.jpg', null, '1.8', '2018-08-03', '2018-08-23', null, '2018-08-19 16:40:25', '1534668025221', '1534668025221', '5000', null, null, '2', null, null, '2', '自检', '国V', '5', null, null, '3', '手自一体', '奥迪', '1', '2017年 A3L', '3', '郝建');
INSERT INTO `cmf_auction_cars` VALUES ('14', '1534689308620', '1', '北京', 'LP45645', 'F11111', 'V4444', '2', '三厢车', null, 'admin/20180814/4f5c5c156332c74647e50b67bce9c44a.jpg', null, '1.5', '2018-08-14', '2018-08-08', null, '2018-08-19 22:36:22', null, null, '25000', null, null, '1', null, null, '1', '车公正', '国IV', '4', null, null, '3', '手自一体', '奔驰', '2', '2016年 狂奔', '3', '郝建');
INSERT INTO `cmf_auction_cars` VALUES ('15', '1534689385797', '1', '北京', 'LP555551', 'V11654021', 'Y111101', '3', 'SUV', null, 'user/20180819/c0e62065dd3f88ca6db66f1fed78e3ca.jpg', null, '2.5', '2018-08-09', '2018-08-20', null, '2018-08-20 00:16:45', null, null, '25000', null, null, '1', null, null, '1', '车公正', '国IV', '4', null, null, '3', '手自一体', '宝马', '3', '2010年 x6', '3', '郝建');
INSERT INTO `cmf_auction_cars` VALUES ('16', '1534779169514', '2', '上海', 'P4454', 'V2222220', 'F1111110', '2', '三厢车', null, 'user/20180820/9b1c8f2898ec2e0cd80ef68229b4e36e.jpg', null, '1.8', '2018-08-15', '2018-08-17', null, '2018-08-20 23:34:05', null, null, '10000', null, null, '1', null, null, '1', '车公正', '国V', '5', null, null, '2', '自动', '奥迪', '1', '2010年 A3', '3', '郝建');

-- ----------------------------
-- Table structure for `cmf_auction_offer`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auction_offer`;
CREATE TABLE `cmf_auction_offer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auction_id` int(11) DEFAULT NULL COMMENT '拍卖ID',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `auction_time` datetime DEFAULT NULL COMMENT '参与时间',
  `auction_money` int(11) DEFAULT NULL COMMENT '报价',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cmf_auction_offer
-- ----------------------------

-- ----------------------------
-- Table structure for `cmf_auction_status`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auction_status`;
CREATE TABLE `cmf_auction_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cmf_auction_status
-- ----------------------------

-- ----------------------------
-- Table structure for `cmf_auth_access`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auth_access`;
CREATE TABLE `cmf_auth_access` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类,请加应用前缀,如admin_',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限授权表';

-- ----------------------------
-- Records of cmf_auth_access
-- ----------------------------

-- ----------------------------
-- Table structure for `cmf_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auth_rule`;
CREATE TABLE `cmf_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `app` varchar(40) NOT NULL DEFAULT '' COMMENT '规则所属app',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(100) NOT NULL DEFAULT '' COMMENT '额外url参数',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则描述',
  `condition` varchar(200) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `module` (`app`,`status`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COMMENT='权限规则表';

-- ----------------------------
-- Records of cmf_auth_rule
-- ----------------------------
INSERT INTO `cmf_auth_rule` VALUES ('1', '1', 'admin', 'admin_url', 'admin/Hook/index', '', '钩子管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('2', '1', 'admin', 'admin_url', 'admin/Hook/plugins', '', '钩子插件管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('3', '1', 'admin', 'admin_url', 'admin/Hook/pluginListOrder', '', '钩子插件排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('4', '1', 'admin', 'admin_url', 'admin/Hook/sync', '', '同步钩子', '');
INSERT INTO `cmf_auth_rule` VALUES ('5', '1', 'admin', 'admin_url', 'admin/Link/index', '', '友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES ('6', '1', 'admin', 'admin_url', 'admin/Link/add', '', '添加友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES ('7', '1', 'admin', 'admin_url', 'admin/Link/addPost', '', '添加友情链接提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('8', '1', 'admin', 'admin_url', 'admin/Link/edit', '', '编辑友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES ('9', '1', 'admin', 'admin_url', 'admin/Link/editPost', '', '编辑友情链接提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('10', '1', 'admin', 'admin_url', 'admin/Link/delete', '', '删除友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES ('11', '1', 'admin', 'admin_url', 'admin/Link/listOrder', '', '友情链接排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('12', '1', 'admin', 'admin_url', 'admin/Link/toggle', '', '友情链接显示隐藏', '');
INSERT INTO `cmf_auth_rule` VALUES ('13', '1', 'admin', 'admin_url', 'admin/Mailer/index', '', '邮箱配置', '');
INSERT INTO `cmf_auth_rule` VALUES ('14', '1', 'admin', 'admin_url', 'admin/Mailer/indexPost', '', '邮箱配置提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('15', '1', 'admin', 'admin_url', 'admin/Mailer/template', '', '邮件模板', '');
INSERT INTO `cmf_auth_rule` VALUES ('16', '1', 'admin', 'admin_url', 'admin/Mailer/templatePost', '', '邮件模板提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('17', '1', 'admin', 'admin_url', 'admin/Mailer/test', '', '邮件发送测试', '');
INSERT INTO `cmf_auth_rule` VALUES ('18', '1', 'admin', 'admin_url', 'admin/Menu/index', '', '后台菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('19', '1', 'admin', 'admin_url', 'admin/Menu/lists', '', '所有菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('20', '1', 'admin', 'admin_url', 'admin/Menu/add', '', '后台菜单添加', '');
INSERT INTO `cmf_auth_rule` VALUES ('21', '1', 'admin', 'admin_url', 'admin/Menu/addPost', '', '后台菜单添加提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('22', '1', 'admin', 'admin_url', 'admin/Menu/edit', '', '后台菜单编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('23', '1', 'admin', 'admin_url', 'admin/Menu/editPost', '', '后台菜单编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('24', '1', 'admin', 'admin_url', 'admin/Menu/delete', '', '后台菜单删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('25', '1', 'admin', 'admin_url', 'admin/Menu/listOrder', '', '后台菜单排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('26', '1', 'admin', 'admin_url', 'admin/Menu/getActions', '', '导入新后台菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('27', '1', 'admin', 'admin_url', 'admin/Nav/index', '', '导航管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('28', '1', 'admin', 'admin_url', 'admin/Nav/add', '', '添加导航', '');
INSERT INTO `cmf_auth_rule` VALUES ('29', '1', 'admin', 'admin_url', 'admin/Nav/addPost', '', '添加导航提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('30', '1', 'admin', 'admin_url', 'admin/Nav/edit', '', '编辑导航', '');
INSERT INTO `cmf_auth_rule` VALUES ('31', '1', 'admin', 'admin_url', 'admin/Nav/editPost', '', '编辑导航提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('32', '1', 'admin', 'admin_url', 'admin/Nav/delete', '', '删除导航', '');
INSERT INTO `cmf_auth_rule` VALUES ('33', '1', 'admin', 'admin_url', 'admin/NavMenu/index', '', '导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('34', '1', 'admin', 'admin_url', 'admin/NavMenu/add', '', '添加导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('35', '1', 'admin', 'admin_url', 'admin/NavMenu/addPost', '', '添加导航菜单提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('36', '1', 'admin', 'admin_url', 'admin/NavMenu/edit', '', '编辑导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('37', '1', 'admin', 'admin_url', 'admin/NavMenu/editPost', '', '编辑导航菜单提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('38', '1', 'admin', 'admin_url', 'admin/NavMenu/delete', '', '删除导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('39', '1', 'admin', 'admin_url', 'admin/NavMenu/listOrder', '', '导航菜单排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('40', '1', 'admin', 'admin_url', 'admin/Plugin/default', '', '插件管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('41', '1', 'admin', 'admin_url', 'admin/Plugin/index', '', '插件列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('42', '1', 'admin', 'admin_url', 'admin/Plugin/toggle', '', '插件启用禁用', '');
INSERT INTO `cmf_auth_rule` VALUES ('43', '1', 'admin', 'admin_url', 'admin/Plugin/setting', '', '插件设置', '');
INSERT INTO `cmf_auth_rule` VALUES ('44', '1', 'admin', 'admin_url', 'admin/Plugin/settingPost', '', '插件设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('45', '1', 'admin', 'admin_url', 'admin/Plugin/install', '', '插件安装', '');
INSERT INTO `cmf_auth_rule` VALUES ('46', '1', 'admin', 'admin_url', 'admin/Plugin/update', '', '插件更新', '');
INSERT INTO `cmf_auth_rule` VALUES ('47', '1', 'admin', 'admin_url', 'admin/Plugin/uninstall', '', '卸载插件', '');
INSERT INTO `cmf_auth_rule` VALUES ('48', '1', 'admin', 'admin_url', 'admin/Rbac/index', '', '角色管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('49', '1', 'admin', 'admin_url', 'admin/Rbac/roleAdd', '', '添加角色', '');
INSERT INTO `cmf_auth_rule` VALUES ('50', '1', 'admin', 'admin_url', 'admin/Rbac/roleAddPost', '', '添加角色提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('51', '1', 'admin', 'admin_url', 'admin/Rbac/roleEdit', '', '编辑角色', '');
INSERT INTO `cmf_auth_rule` VALUES ('52', '1', 'admin', 'admin_url', 'admin/Rbac/roleEditPost', '', '编辑角色提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('53', '1', 'admin', 'admin_url', 'admin/Rbac/roleDelete', '', '删除角色', '');
INSERT INTO `cmf_auth_rule` VALUES ('54', '1', 'admin', 'admin_url', 'admin/Rbac/authorize', '', '设置角色权限', '');
INSERT INTO `cmf_auth_rule` VALUES ('55', '1', 'admin', 'admin_url', 'admin/Rbac/authorizePost', '', '角色授权提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('56', '1', 'admin', 'admin_url', 'admin/RecycleBin/index', '', '回收站', '');
INSERT INTO `cmf_auth_rule` VALUES ('57', '1', 'admin', 'admin_url', 'admin/RecycleBin/restore', '', '回收站还原', '');
INSERT INTO `cmf_auth_rule` VALUES ('58', '1', 'admin', 'admin_url', 'admin/RecycleBin/delete', '', '回收站彻底删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('59', '1', 'admin', 'admin_url', 'admin/Route/index', '', 'URL美化', '');
INSERT INTO `cmf_auth_rule` VALUES ('60', '1', 'admin', 'admin_url', 'admin/Route/add', '', '添加路由规则', '');
INSERT INTO `cmf_auth_rule` VALUES ('61', '1', 'admin', 'admin_url', 'admin/Route/addPost', '', '添加路由规则提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('62', '1', 'admin', 'admin_url', 'admin/Route/edit', '', '路由规则编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('63', '1', 'admin', 'admin_url', 'admin/Route/editPost', '', '路由规则编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('64', '1', 'admin', 'admin_url', 'admin/Route/delete', '', '路由规则删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('65', '1', 'admin', 'admin_url', 'admin/Route/ban', '', '路由规则禁用', '');
INSERT INTO `cmf_auth_rule` VALUES ('66', '1', 'admin', 'admin_url', 'admin/Route/open', '', '路由规则启用', '');
INSERT INTO `cmf_auth_rule` VALUES ('67', '1', 'admin', 'admin_url', 'admin/Route/listOrder', '', '路由规则排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('68', '1', 'admin', 'admin_url', 'admin/Route/select', '', '选择URL', '');
INSERT INTO `cmf_auth_rule` VALUES ('69', '1', 'admin', 'admin_url', 'admin/Setting/default', '', '设置', '');
INSERT INTO `cmf_auth_rule` VALUES ('70', '1', 'admin', 'admin_url', 'admin/Setting/site', '', '网站信息', '');
INSERT INTO `cmf_auth_rule` VALUES ('71', '1', 'admin', 'admin_url', 'admin/Setting/sitePost', '', '网站信息设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('72', '1', 'admin', 'admin_url', 'admin/Setting/password', '', '密码修改', '');
INSERT INTO `cmf_auth_rule` VALUES ('73', '1', 'admin', 'admin_url', 'admin/Setting/passwordPost', '', '密码修改提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('74', '1', 'admin', 'admin_url', 'admin/Setting/upload', '', '上传设置', '');
INSERT INTO `cmf_auth_rule` VALUES ('75', '1', 'admin', 'admin_url', 'admin/Setting/uploadPost', '', '上传设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('76', '1', 'admin', 'admin_url', 'admin/Setting/clearCache', '', '清除缓存', '');
INSERT INTO `cmf_auth_rule` VALUES ('77', '1', 'admin', 'admin_url', 'admin/Slide/index', '', '幻灯片管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('78', '1', 'admin', 'admin_url', 'admin/Slide/add', '', '添加幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES ('79', '1', 'admin', 'admin_url', 'admin/Slide/addPost', '', '添加幻灯片提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('80', '1', 'admin', 'admin_url', 'admin/Slide/edit', '', '编辑幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES ('81', '1', 'admin', 'admin_url', 'admin/Slide/editPost', '', '编辑幻灯片提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('82', '1', 'admin', 'admin_url', 'admin/Slide/delete', '', '删除幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES ('83', '1', 'admin', 'admin_url', 'admin/SlideItem/index', '', '幻灯片页面列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('84', '1', 'admin', 'admin_url', 'admin/SlideItem/add', '', '幻灯片页面添加', '');
INSERT INTO `cmf_auth_rule` VALUES ('85', '1', 'admin', 'admin_url', 'admin/SlideItem/addPost', '', '幻灯片页面添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('86', '1', 'admin', 'admin_url', 'admin/SlideItem/edit', '', '幻灯片页面编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('87', '1', 'admin', 'admin_url', 'admin/SlideItem/editPost', '', '幻灯片页面编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('88', '1', 'admin', 'admin_url', 'admin/SlideItem/delete', '', '幻灯片页面删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('89', '1', 'admin', 'admin_url', 'admin/SlideItem/ban', '', '幻灯片页面隐藏', '');
INSERT INTO `cmf_auth_rule` VALUES ('90', '1', 'admin', 'admin_url', 'admin/SlideItem/cancelBan', '', '幻灯片页面显示', '');
INSERT INTO `cmf_auth_rule` VALUES ('91', '1', 'admin', 'admin_url', 'admin/SlideItem/listOrder', '', '幻灯片页面排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('92', '1', 'admin', 'admin_url', 'admin/Storage/index', '', '文件存储', '');
INSERT INTO `cmf_auth_rule` VALUES ('93', '1', 'admin', 'admin_url', 'admin/Storage/settingPost', '', '文件存储设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('94', '1', 'admin', 'admin_url', 'admin/Theme/index', '', '模板管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('95', '1', 'admin', 'admin_url', 'admin/Theme/install', '', '安装模板', '');
INSERT INTO `cmf_auth_rule` VALUES ('96', '1', 'admin', 'admin_url', 'admin/Theme/uninstall', '', '卸载模板', '');
INSERT INTO `cmf_auth_rule` VALUES ('97', '1', 'admin', 'admin_url', 'admin/Theme/installTheme', '', '模板安装', '');
INSERT INTO `cmf_auth_rule` VALUES ('98', '1', 'admin', 'admin_url', 'admin/Theme/update', '', '模板更新', '');
INSERT INTO `cmf_auth_rule` VALUES ('99', '1', 'admin', 'admin_url', 'admin/Theme/active', '', '启用模板', '');
INSERT INTO `cmf_auth_rule` VALUES ('100', '1', 'admin', 'admin_url', 'admin/Theme/files', '', '模板文件列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('101', '1', 'admin', 'admin_url', 'admin/Theme/fileSetting', '', '模板文件设置', '');
INSERT INTO `cmf_auth_rule` VALUES ('102', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayData', '', '模板文件数组数据列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('103', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataEdit', '', '模板文件数组数据添加编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('104', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('105', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataDelete', '', '模板文件数组数据删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('106', '1', 'admin', 'admin_url', 'admin/Theme/settingPost', '', '模板文件编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('107', '1', 'admin', 'admin_url', 'admin/Theme/dataSource', '', '模板文件设置数据源', '');
INSERT INTO `cmf_auth_rule` VALUES ('108', '1', 'admin', 'admin_url', 'admin/User/default', '', '管理组', '');
INSERT INTO `cmf_auth_rule` VALUES ('109', '1', 'admin', 'admin_url', 'admin/User/index', '', '管理员', '');
INSERT INTO `cmf_auth_rule` VALUES ('110', '1', 'admin', 'admin_url', 'admin/User/add', '', '管理员添加', '');
INSERT INTO `cmf_auth_rule` VALUES ('111', '1', 'admin', 'admin_url', 'admin/User/addPost', '', '管理员添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('112', '1', 'admin', 'admin_url', 'admin/User/edit', '', '管理员编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('113', '1', 'admin', 'admin_url', 'admin/User/editPost', '', '管理员编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('114', '1', 'admin', 'admin_url', 'admin/User/userInfo', '', '个人信息', '');
INSERT INTO `cmf_auth_rule` VALUES ('115', '1', 'admin', 'admin_url', 'admin/User/userInfoPost', '', '管理员个人信息修改提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('116', '1', 'admin', 'admin_url', 'admin/User/delete', '', '管理员删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('117', '1', 'admin', 'admin_url', 'admin/User/ban', '', '停用管理员', '');
INSERT INTO `cmf_auth_rule` VALUES ('118', '1', 'admin', 'admin_url', 'admin/User/cancelBan', '', '启用管理员', '');
INSERT INTO `cmf_auth_rule` VALUES ('119', '1', 'portal', 'admin_url', 'portal/AdminArticle/index', '', '文章管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('120', '1', 'portal', 'admin_url', 'portal/AdminArticle/add', '', '添加文章', '');
INSERT INTO `cmf_auth_rule` VALUES ('121', '1', 'portal', 'admin_url', 'portal/AdminArticle/addPost', '', '添加文章提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('122', '1', 'portal', 'admin_url', 'portal/AdminArticle/edit', '', '编辑文章', '');
INSERT INTO `cmf_auth_rule` VALUES ('123', '1', 'portal', 'admin_url', 'portal/AdminArticle/editPost', '', '编辑文章提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('124', '1', 'portal', 'admin_url', 'portal/AdminArticle/delete', '', '文章删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('125', '1', 'portal', 'admin_url', 'portal/AdminArticle/publish', '', '文章发布', '');
INSERT INTO `cmf_auth_rule` VALUES ('126', '1', 'portal', 'admin_url', 'portal/AdminArticle/top', '', '文章置顶', '');
INSERT INTO `cmf_auth_rule` VALUES ('127', '1', 'portal', 'admin_url', 'portal/AdminArticle/recommend', '', '文章推荐', '');
INSERT INTO `cmf_auth_rule` VALUES ('128', '1', 'portal', 'admin_url', 'portal/AdminArticle/listOrder', '', '文章排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('129', '1', 'portal', 'admin_url', 'portal/AdminCategory/index', '', '分类管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('130', '1', 'portal', 'admin_url', 'portal/AdminCategory/add', '', '添加文章分类', '');
INSERT INTO `cmf_auth_rule` VALUES ('131', '1', 'portal', 'admin_url', 'portal/AdminCategory/addPost', '', '添加文章分类提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('132', '1', 'portal', 'admin_url', 'portal/AdminCategory/edit', '', '编辑文章分类', '');
INSERT INTO `cmf_auth_rule` VALUES ('133', '1', 'portal', 'admin_url', 'portal/AdminCategory/editPost', '', '编辑文章分类提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('134', '1', 'portal', 'admin_url', 'portal/AdminCategory/select', '', '文章分类选择对话框', '');
INSERT INTO `cmf_auth_rule` VALUES ('135', '1', 'portal', 'admin_url', 'portal/AdminCategory/listOrder', '', '文章分类排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('136', '1', 'portal', 'admin_url', 'portal/AdminCategory/delete', '', '删除文章分类', '');
INSERT INTO `cmf_auth_rule` VALUES ('137', '1', 'portal', 'admin_url', 'portal/AdminIndex/default', '', '门户管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('138', '1', 'portal', 'admin_url', 'portal/AdminPage/index', '', '页面管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('139', '1', 'portal', 'admin_url', 'portal/AdminPage/add', '', '添加页面', '');
INSERT INTO `cmf_auth_rule` VALUES ('140', '1', 'portal', 'admin_url', 'portal/AdminPage/addPost', '', '添加页面提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('141', '1', 'portal', 'admin_url', 'portal/AdminPage/edit', '', '编辑页面', '');
INSERT INTO `cmf_auth_rule` VALUES ('142', '1', 'portal', 'admin_url', 'portal/AdminPage/editPost', '', '编辑页面提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('143', '1', 'portal', 'admin_url', 'portal/AdminPage/delete', '', '删除页面', '');
INSERT INTO `cmf_auth_rule` VALUES ('144', '1', 'portal', 'admin_url', 'portal/AdminTag/index', '', '文章标签', '');
INSERT INTO `cmf_auth_rule` VALUES ('145', '1', 'portal', 'admin_url', 'portal/AdminTag/add', '', '添加文章标签', '');
INSERT INTO `cmf_auth_rule` VALUES ('146', '1', 'portal', 'admin_url', 'portal/AdminTag/addPost', '', '添加文章标签提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('147', '1', 'portal', 'admin_url', 'portal/AdminTag/upStatus', '', '更新标签状态', '');
INSERT INTO `cmf_auth_rule` VALUES ('148', '1', 'portal', 'admin_url', 'portal/AdminTag/delete', '', '删除文章标签', '');
INSERT INTO `cmf_auth_rule` VALUES ('149', '1', 'user', 'admin_url', 'user/AdminAsset/index', '', '资源管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('150', '1', 'user', 'admin_url', 'user/AdminAsset/delete', '', '删除文件', '');
INSERT INTO `cmf_auth_rule` VALUES ('151', '1', 'user', 'admin_url', 'user/AdminIndex/default', '', '用户管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('152', '1', 'user', 'admin_url', 'user/AdminIndex/default1', '', '用户组', '');
INSERT INTO `cmf_auth_rule` VALUES ('153', '1', 'user', 'admin_url', 'user/AdminIndex/index', '', '本站用户', '');
INSERT INTO `cmf_auth_rule` VALUES ('154', '1', 'user', 'admin_url', 'user/AdminIndex/ban', '', '本站用户拉黑', '');
INSERT INTO `cmf_auth_rule` VALUES ('155', '1', 'user', 'admin_url', 'user/AdminIndex/cancelBan', '', '本站用户启用', '');
INSERT INTO `cmf_auth_rule` VALUES ('156', '1', 'user', 'admin_url', 'user/AdminOauth/index', '', '第三方用户', '');
INSERT INTO `cmf_auth_rule` VALUES ('157', '1', 'user', 'admin_url', 'user/AdminOauth/delete', '', '删除第三方用户绑定', '');
INSERT INTO `cmf_auth_rule` VALUES ('158', '1', 'user', 'admin_url', 'user/AdminUserAction/index', '', '用户操作管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('159', '1', 'user', 'admin_url', 'user/AdminUserAction/edit', '', '编辑用户操作', '');
INSERT INTO `cmf_auth_rule` VALUES ('160', '1', 'user', 'admin_url', 'user/AdminUserAction/editPost', '', '编辑用户操作提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('161', '1', 'user', 'admin_url', 'user/AdminUserAction/sync', '', '同步用户操作', '');
INSERT INTO `cmf_auth_rule` VALUES ('162', '1', 'Admin', 'admin_url', 'Admin/check_point/index', '', '检测项管理', '');

-- ----------------------------
-- Table structure for `cmf_brand`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_brand`;
CREATE TABLE `cmf_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(20) DEFAULT NULL COMMENT '品牌',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cmf_brand
-- ----------------------------

-- ----------------------------
-- Table structure for `cmf_car_grade`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_car_grade`;
CREATE TABLE `cmf_car_grade` (
  `id` int(11) NOT NULL,
  `grade` varchar(20) DEFAULT NULL COMMENT '评级 级别',
  `introduce` varchar(255) DEFAULT NULL COMMENT '评级标准备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cmf_car_grade
-- ----------------------------

-- ----------------------------
-- Table structure for `cmf_car_info`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_car_info`;
CREATE TABLE `cmf_car_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auction_id` varchar(20) DEFAULT NULL COMMENT '拍卖ID',
  `use_type_id` int(11) DEFAULT NULL COMMENT '营运类型ID',
  `use_type` varchar(20) DEFAULT NULL COMMENT '营运类型',
  `has_accident` tinyint(1) DEFAULT NULL COMMENT '是否事故车',
  `pics` text COMMENT '图片',
  `seats` int(2) DEFAULT NULL COMMENT '坐位数',
  `color` varchar(20) DEFAULT NULL COMMENT '颜色',
  `remarks` varchar(255) DEFAULT NULL COMMENT '介绍说明',
  `oil_type_id` tinyint(2) DEFAULT NULL COMMENT '燃油类型ID',
  `oil_type` varchar(20) DEFAULT NULL COMMENT '燃油类型',
  `intake_type_id` tinyint(2) DEFAULT NULL COMMENT '进气类型ID',
  `intake_type` varchar(20) DEFAULT NULL COMMENT '进气类型',
  `insurance_id` tinyint(2) DEFAULT NULL COMMENT '保险类型ID',
  `insurance` varchar(30) DEFAULT NULL COMMENT '保险类型',
  `insurance_date` date DEFAULT NULL COMMENT '保险到期',
  `inspection_date` date DEFAULT NULL COMMENT '年检到期',
  `change_times` int(2) DEFAULT '0' COMMENT '过户次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `a_id` (`auction_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cmf_car_info
-- ----------------------------
INSERT INTO `cmf_car_info` VALUES ('1', '1534668025221', '1', '家用', '1', null, '5', '银灰色', null, null, '汽油', null, '涡轮增压', null, '商业险', '2020-10-20', '2019-10-19', '1');
INSERT INTO `cmf_car_info` VALUES ('4', '1534689385797', '1', '非营运', null, 'a:2:{i:0;a:2:{s:3:\"url\";s:51:\"admin/20180814/4c3d5919323c15311cc080a083ac173e.jpg\";s:4:\"name\";s:8:\"c465.jpg\";}i:1;a:2:{s:3:\"url\";s:50:\"user/20180816/a050cafb12feed30752975b50e5cdc0a.jpg\";s:4:\"name\";s:11:\"timg103.jpg\";}}', '5', '蓝色', null, '1', '汽油', '2', '涡轮增压', '2', '交强险+商业险', '2018-08-19', '2018-08-20', '5');
INSERT INTO `cmf_car_info` VALUES ('5', '1534779169514', '1', '非营运', null, 'a:2:{i:0;a:2:{s:3:\"url\";s:50:\"user/20180820/fa8e7b8d62e779a60434e7150321dd9c.jpg\";s:4:\"name\";s:36:\"996f9eed8eb12df867bc12921c23f3e5.jpg\";}i:1;a:2:{s:3:\"url\";s:50:\"user/20180820/95995ad87136847f824965ad044069c2.jpg\";s:4:\"name\";s:14:\"1130240058.jpg\";}}', '5', '白色', null, '1', '汽油', '2', '涡轮增压', '2', '交强险+商业险', '2018-08-31', '2018-08-31', '1');

-- ----------------------------
-- Table structure for `cmf_car_type`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_car_type`;
CREATE TABLE `cmf_car_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL COMMENT '车型',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cmf_car_type
-- ----------------------------

-- ----------------------------
-- Table structure for `cmf_check_infos`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_check_infos`;
CREATE TABLE `cmf_check_infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auction_id` varchar(20) DEFAULT NULL COMMENT '拍卖号',
  `check_date` date DEFAULT NULL COMMENT '检测日期',
  `check_place` varchar(255) DEFAULT NULL COMMENT '检测地点',
  `vedio_info` text COMMENT '视频',
  `trade_info` text COMMENT '交易信息检查',
  `exterior_info` text COMMENT '车身外观检测',
  `engine_info` text COMMENT '发动机检测',
  `inner_info` text COMMENT '内部检测',
  `other_info` text COMMENT '其他信息',
  `remarks` varchar(255) DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  `operator_id` int(10) DEFAULT NULL,
  `start_time` char(20) DEFAULT NULL,
  `end_time` char(20) DEFAULT NULL,
  `status` enum('3','2','1') DEFAULT '1' COMMENT '状态：1未完成 2提交 3完成',
  PRIMARY KEY (`id`),
  UNIQUE KEY `auction` (`auction_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cmf_check_infos
-- ----------------------------
INSERT INTO `cmf_check_infos` VALUES ('1', 'a123456', '2018-08-16', '聊城 北环', null, 'a:6:{s:12:\"\'is_scraped\'\";s:1:\"1\";s:15:\"\'is_prohibited\'\";s:1:\"1\";s:12:\"\'is_Illegal\'\";s:1:\"1\";s:12:\"\'is_equally\'\";s:1:\"1\";s:13:\"\'is_smuggled\'\";s:1:\"1\";s:11:\"\'is_seized\'\";s:1:\"1\";}', null, null, null, null, null, '2018-08-16', '3', null, null, '1');
INSERT INTO `cmf_check_infos` VALUES ('2', 'a12345674', '2018-08-16', 'asdf', null, 'a:6:{s:12:\"\'is_scraped\'\";s:1:\"1\";s:15:\"\'is_prohibited\'\";s:1:\"1\";s:12:\"\'is_Illegal\'\";s:1:\"1\";s:12:\"\'is_equally\'\";s:1:\"1\";s:13:\"\'is_smuggled\'\";s:1:\"1\";s:11:\"\'is_seized\'\";s:1:\"1\";}', null, null, null, null, null, '郝建', '3', null, null, '1');
INSERT INTO `cmf_check_infos` VALUES ('3', '', '0000-00-00', '', null, 'a:6:{s:12:\"\'is_scraped\'\";s:0:\"\";s:15:\"\'is_prohibited\'\";s:0:\"\";s:12:\"\'is_Illegal\'\";s:0:\"\";s:12:\"\'is_equally\'\";s:0:\"\";s:13:\"\'is_smuggled\'\";s:0:\"\";s:11:\"\'is_seized\'\";s:0:\"\";}', null, null, null, null, null, '郝建', '3', null, null, '1');
INSERT INTO `cmf_check_infos` VALUES ('4', 'a1234567', '2018-08-16', '555', null, 'a:6:{s:12:\"\'is_scraped\'\";s:1:\"1\";s:15:\"\'is_prohibited\'\";s:1:\"1\";s:12:\"\'is_Illegal\'\";s:1:\"1\";s:12:\"\'is_equally\'\";s:1:\"1\";s:13:\"\'is_smuggled\'\";s:1:\"1\";s:11:\"\'is_seized\'\";s:1:\"1\";}', null, null, null, null, null, '郝建', '3', null, null, '1');
INSERT INTO `cmf_check_infos` VALUES ('5', 'b123', '2018-08-16', 'lc ', null, 'a:6:{s:12:\"\'is_scraped\'\";s:1:\"1\";s:15:\"\'is_prohibited\'\";s:1:\"1\";s:12:\"\'is_Illegal\'\";s:1:\"1\";s:12:\"\'is_equally\'\";s:1:\"1\";s:13:\"\'is_smuggled\'\";s:1:\"1\";s:11:\"\'is_seized\'\";s:1:\"1\";}', null, null, null, null, null, '郝建', '3', null, null, '1');
INSERT INTO `cmf_check_infos` VALUES ('6', '1534603360671', '2018-08-15', 'lc', null, 'a:6:{s:12:\"\'is_scraped\'\";s:1:\"1\";s:15:\"\'is_prohibited\'\";s:1:\"1\";s:12:\"\'is_Illegal\'\";s:1:\"1\";s:12:\"\'is_equally\'\";s:1:\"1\";s:13:\"\'is_smuggled\'\";s:1:\"1\";s:11:\"\'is_seized\'\";s:1:\"1\";}', null, null, null, null, null, '郝建', '3', null, null, '1');
INSERT INTO `cmf_check_infos` VALUES ('7', 'f5565', '2018-08-16', 'lc', null, 'a:7:{s:12:\"\'is_scraped\'\";s:1:\"1\";s:15:\"\'is_prohibited\'\";s:1:\"1\";s:12:\"\'is_Illegal\'\";s:1:\"1\";s:12:\"\'is_equally\'\";s:1:\"1\";s:13:\"\'is_smuggled\'\";s:1:\"1\";s:11:\"\'is_seized\'\";s:1:\"1\";i:0;a:3:{i:0;a:2:{s:3:\"url\";s:51:\"admin/20180813/04394c486bf08aab5f6792f7b32a4342.jpg\";s:4:\"name\";s:15:\"1151024N6-0.jpg\";}i:1;a:2:{s:3:\"url\";s:51:\"admin/20180814/4f5c5c156332c74647e50b67bce9c44a.jpg\";s:4:\"name\";s:12:\"timg (2).jpg\";}i:2;a:2:{s:3:\"url\";s:50:\"user/20180815/a6099f12a57ec4dc7d610791ce5115f2.jpg\";s:4:\"name\";s:12:\"timg (4).jpg\";}}}', null, null, null, null, null, '郝建', '3', null, null, '1');
INSERT INTO `cmf_check_infos` VALUES ('8', 'x105', '2018-08-16', 'hz', null, 'a:7:{s:12:\"\'is_scraped\'\";s:1:\"1\";s:15:\"\'is_prohibited\'\";s:1:\"1\";s:12:\"\'is_Illegal\'\";s:1:\"1\";s:12:\"\'is_equally\'\";s:1:\"1\";s:13:\"\'is_smuggled\'\";s:1:\"1\";s:11:\"\'is_seized\'\";s:1:\"1\";i:0;a:1:{s:4:\"pics\";a:3:{i:0;a:2:{s:3:\"url\";s:51:\"admin/20180813/04394c486bf08aab5f6792f7b32a4342.jpg\";s:4:\"name\";s:15:\"1151024N6-0.jpg\";}i:1;a:2:{s:3:\"url\";s:51:\"admin/20180814/4c3d5919323c15311cc080a083ac173e.jpg\";s:4:\"name\";s:8:\"c465.jpg\";}i:2;a:2:{s:3:\"url\";s:51:\"admin/20180814/4f5c5c156332c74647e50b67bce9c44a.jpg\";s:4:\"name\";s:12:\"timg (2).jpg\";}}}}', null, null, null, null, null, '郝建', '3', null, null, '1');
INSERT INTO `cmf_check_infos` VALUES ('9', '555', '2018-08-17', 'zd', null, 'a:8:{s:12:\"\'is_scraped\'\";s:1:\"1\";s:15:\"\'is_prohibited\'\";s:1:\"1\";s:12:\"\'is_Illegal\'\";s:1:\"1\";s:12:\"\'is_equally\'\";s:1:\"1\";s:13:\"\'is_smuggled\'\";s:1:\"1\";s:11:\"\'is_seized\'\";s:1:\"1\";i:0;a:2:{s:3:\"url\";s:51:\"admin/20180813/04394c486bf08aab5f6792f7b32a4342.jpg\";s:4:\"name\";s:15:\"1151024N6-0.jpg\";}i:1;a:2:{s:3:\"url\";s:51:\"admin/20180814/4f5c5c156332c74647e50b67bce9c44a.jpg\";s:4:\"name\";s:12:\"timg (2).jpg\";}}', null, null, null, null, null, '郝建', '3', null, null, '1');
INSERT INTO `cmf_check_infos` VALUES ('10', 'af', '2018-08-16', 'sss', null, 'i:7;', null, null, null, null, null, '郝建', '3', null, null, '1');
INSERT INTO `cmf_check_infos` VALUES ('11', '1534668025221', '2018-08-16', 'f', null, 'a:7:{s:12:\"\'is_scraped\'\";s:1:\"1\";s:15:\"\'is_prohibited\'\";s:1:\"1\";s:12:\"\'is_Illegal\'\";s:1:\"1\";s:12:\"\'is_equally\'\";s:1:\"1\";s:13:\"\'is_smuggled\'\";s:1:\"1\";s:11:\"\'is_seized\'\";s:1:\"1\";s:4:\"pics\";a:3:{i:0;a:2:{s:3:\"url\";s:51:\"admin/20180813/04394c486bf08aab5f6792f7b32a4342.jpg\";s:4:\"name\";s:15:\"1151024N6-0.jpg\";}i:1;a:2:{s:3:\"url\";s:51:\"admin/20180814/4f5c5c156332c74647e50b67bce9c44a.jpg\";s:4:\"name\";s:12:\"timg (2).jpg\";}i:2;a:2:{s:3:\"url\";s:51:\"admin/20180814/bc9ddac4afff71d458d67ca9abc50fab.jpg\";s:4:\"name\";s:8:\"timg.jpg\";}}}', null, null, null, null, null, '郝建', '3', null, null, '1');
INSERT INTO `cmf_check_infos` VALUES ('12', '1534603360672', '2018-08-07', 'lc', null, 'a:8:{s:10:\"is_scraped\";s:1:\"1\";s:13:\"is_prohibited\";s:1:\"1\";s:10:\"is_Illegal\";s:1:\"1\";s:10:\"is_equally\";s:1:\"1\";s:11:\"is_smuggled\";s:1:\"1\";s:9:\"is_seized\";s:1:\"1\";s:7:\"remarks\";s:7:\"2131234\";s:4:\"pics\";a:1:{i:0;a:2:{s:3:\"url\";s:51:\"admin/20180814/c85856fadf24c1980086c2bf1f659da3.jpg\";s:4:\"name\";s:11:\"timg104.jpg\";}}}', null, null, null, null, null, '郝建', '3', null, null, '1');
INSERT INTO `cmf_check_infos` VALUES ('13', '1534779169514', '2018-08-22', 'lc hnl', null, 'a:8:{s:10:\"is_scraped\";s:1:\"1\";s:13:\"is_prohibited\";s:1:\"1\";s:10:\"is_Illegal\";s:1:\"1\";s:10:\"is_equally\";s:1:\"1\";s:11:\"is_smuggled\";s:1:\"1\";s:9:\"is_seized\";s:1:\"1\";s:7:\"remarks\";s:6:\"123456\";s:4:\"pics\";a:2:{i:0;a:2:{s:3:\"url\";s:51:\"user/20180822/a7511ba6c601c8ee49fc7225c5ff1e24.jpeg\";s:4:\"name\";s:37:\"e08ba91785cea3e6673b4a19f442d74c.jpeg\";}i:1;a:2:{s:3:\"url\";s:50:\"user/20180822/51af36b63f44773319a884c01ba21cad.jpg\";s:4:\"name\";s:28:\"e8f9c2f033874e24!600x600.jpg\";}}}', 'a:45:{s:3:\"top\";s:1:\"2\";s:7:\"top_img\";s:50:\"user/20180820/13432f63efb7c43b7600dc107b469e3b.jpg\";s:10:\"top_remark\";s:0:\"\";s:9:\"front_gai\";s:1:\"3\";s:13:\"front_gai_img\";s:51:\"user/20180820/a649cc6af381b41d31858e6c94d8ee02.jpeg\";s:16:\"front_gai_remark\";s:0:\"\";s:10:\"front_gang\";s:1:\"4\";s:14:\"front_gang_img\";s:51:\"user/20180820/4ebbe2ea4dbb4a2f68b45ae0c7796953.jpeg\";s:17:\"front_gang_remark\";s:6:\"塔顶\";s:14:\"left_front_ban\";s:1:\"1\";s:18:\"left_front_ban_img\";s:0:\"\";s:21:\"left_front_ban_remark\";s:0:\"\";s:15:\"left_front_door\";s:1:\"1\";s:19:\"left_front_door_img\";s:0:\"\";s:22:\"left_front_door_remark\";s:0:\"\";s:14:\"left_back_door\";s:1:\"1\";s:18:\"left_back_door_img\";s:0:\"\";s:21:\"left_back_door_remark\";s:0:\"\";s:13:\"left_back_ban\";s:1:\"1\";s:17:\"left_back_ban_img\";s:0:\"\";s:20:\"left_back_ban_remark\";s:0:\"\";s:8:\"back_gai\";s:1:\"1\";s:12:\"back_gai_img\";s:0:\"\";s:15:\"back_gai_remark\";s:0:\"\";s:9:\"back_gang\";s:1:\"1\";s:13:\"back_gang_img\";s:0:\"\";s:16:\"back_gang_remark\";s:0:\"\";s:14:\"right_back_ban\";s:1:\"1\";s:18:\"right_back_ban_img\";s:0:\"\";s:21:\"right_back_ban_remark\";s:0:\"\";s:15:\"right_back_door\";s:1:\"1\";s:19:\"right_back_door_img\";s:0:\"\";s:22:\"right_back_door_remark\";s:0:\"\";s:16:\"right_front_door\";s:1:\"1\";s:20:\"right_front_door_img\";s:0:\"\";s:23:\"right_front_door_remark\";s:0:\"\";s:15:\"right_front_ban\";s:1:\"1\";s:19:\"right_front_ban_img\";s:0:\"\";s:22:\"right_front_ban_remark\";s:0:\"\";s:5:\"glass\";s:1:\"1\";s:9:\"glass_img\";s:0:\"\";s:12:\"glass_remark\";s:0:\"\";s:4:\"lamp\";s:1:\"1\";s:8:\"lamp_img\";s:0:\"\";s:11:\"lamp_remark\";s:0:\"\";}', null, null, null, null, '郝建', '3', null, null, '1');

-- ----------------------------
-- Table structure for `cmf_check_point`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_check_point`;
CREATE TABLE `cmf_check_point` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(3) DEFAULT NULL COMMENT '上级id',
  `title` varchar(50) DEFAULT NULL COMMENT '名称',
  `sign` varchar(20) DEFAULT NULL COMMENT '英文标记',
  `is_use` tinyint(1) DEFAULT NULL COMMENT '是否启用',
  `remark` varchar(255) DEFAULT NULL COMMENT '注释',
  `level` text COMMENT '具体检测项',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cmf_check_point
-- ----------------------------
INSERT INTO `cmf_check_point` VALUES ('5', '0', '车身检测', 'exterior_info', '1', '', null);
INSERT INTO `cmf_check_point` VALUES ('10', '5', '车顶', 'top', '1', '', null);
INSERT INTO `cmf_check_point` VALUES ('11', '5', '机舱盖表面', 'front_gai', '1', '', null);
INSERT INTO `cmf_check_point` VALUES ('12', '5', '前保险杠', 'front_gang', '1', '', null);
INSERT INTO `cmf_check_point` VALUES ('13', '5', '左前叶子板', 'left_front_ban', '1', '', null);
INSERT INTO `cmf_check_point` VALUES ('14', '5', '左前门', 'left_front_door', '1', '', null);
INSERT INTO `cmf_check_point` VALUES ('15', '5', '左后门', 'left_back_door', '1', '', null);
INSERT INTO `cmf_check_point` VALUES ('16', '5', '左后叶子板', 'left_back_ban', '1', '', null);
INSERT INTO `cmf_check_point` VALUES ('17', '5', '后机盖', 'back_gai', '1', '', null);
INSERT INTO `cmf_check_point` VALUES ('18', '5', '后保险杠', 'back_gang', '1', '', null);
INSERT INTO `cmf_check_point` VALUES ('19', '5', '右后叶子板', 'right_back_ban', '1', '', null);
INSERT INTO `cmf_check_point` VALUES ('20', '5', '右后门', 'right_back_door', '1', '', null);
INSERT INTO `cmf_check_point` VALUES ('21', '5', '右前门', 'right_front_door', '1', '', null);
INSERT INTO `cmf_check_point` VALUES ('22', '5', '右前叶子板', 'right_front_ban', '1', '', null);
INSERT INTO `cmf_check_point` VALUES ('23', '5', '全车玻璃', 'glass', '1', '', null);
INSERT INTO `cmf_check_point` VALUES ('24', '5', '车大灯', 'lamp', '1', '', null);

-- ----------------------------
-- Table structure for `cmf_check_type`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_check_type`;
CREATE TABLE `cmf_check_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `check_type` varchar(20) DEFAULT NULL COMMENT '检测类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cmf_check_type
-- ----------------------------

-- ----------------------------
-- Table structure for `cmf_comment`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_comment`;
CREATE TABLE `cmf_comment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论内容 id',
  `like_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `dislike_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '不喜欢数',
  `floor` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '楼层数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:已审核,0:未审核',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '评论内容所在表，不带表前缀',
  `full_name` varchar(50) NOT NULL DEFAULT '' COMMENT '评论者昵称',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '评论者邮箱',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  `url` text COMMENT '原文地址',
  `content` text CHARACTER SET utf8mb4 COMMENT '评论内容',
  `more` text CHARACTER SET utf8mb4 COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  KEY `table_id_status` (`table_name`,`object_id`,`status`),
  KEY `object_id` (`object_id`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of cmf_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `cmf_emission_standard`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_emission_standard`;
CREATE TABLE `cmf_emission_standard` (
  `id` int(11) NOT NULL,
  `emission_standard` varchar(20) DEFAULT NULL COMMENT '排放标准',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cmf_emission_standard
-- ----------------------------

-- ----------------------------
-- Table structure for `cmf_finance`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_finance`;
CREATE TABLE `cmf_finance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT 'UID',
  `action_time` char(20) DEFAULT NULL COMMENT '操作时间',
  `action_type` tinyint(1) DEFAULT NULL COMMENT '操作类型 1充值，2提现，3冻结，4解冻',
  `action` varchar(30) DEFAULT NULL COMMENT '操作',
  `money` decimal(11,2) DEFAULT '0.00' COMMENT '金额',
  `remain` decimal(11,2) DEFAULT '0.00' COMMENT '剩余金额',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cmf_finance
-- ----------------------------

-- ----------------------------
-- Table structure for `cmf_gearbox`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_gearbox`;
CREATE TABLE `cmf_gearbox` (
  `id` int(11) NOT NULL,
  `gearbox` varchar(20) DEFAULT NULL COMMENT '变速箱分类',
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cmf_gearbox
-- ----------------------------

-- ----------------------------
-- Table structure for `cmf_hook`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_hook`;
CREATE TABLE `cmf_hook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '钩子类型(1:系统钩子;2:应用钩子;3:模板钩子;4:后台模板钩子)',
  `once` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否只允许一个插件运行(0:多个;1:一个)',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子',
  `app` varchar(15) NOT NULL DEFAULT '' COMMENT '应用名(只有应用钩子才用)',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子表';

-- ----------------------------
-- Records of cmf_hook
-- ----------------------------
INSERT INTO `cmf_hook` VALUES ('1', '1', '0', '应用初始化', 'app_init', 'cmf', '应用初始化');
INSERT INTO `cmf_hook` VALUES ('2', '1', '0', '应用开始', 'app_begin', 'cmf', '应用开始');
INSERT INTO `cmf_hook` VALUES ('3', '1', '0', '模块初始化', 'module_init', 'cmf', '模块初始化');
INSERT INTO `cmf_hook` VALUES ('4', '1', '0', '控制器开始', 'action_begin', 'cmf', '控制器开始');
INSERT INTO `cmf_hook` VALUES ('5', '1', '0', '视图输出过滤', 'view_filter', 'cmf', '视图输出过滤');
INSERT INTO `cmf_hook` VALUES ('6', '1', '0', '应用结束', 'app_end', 'cmf', '应用结束');
INSERT INTO `cmf_hook` VALUES ('7', '1', '0', '日志write方法', 'log_write', 'cmf', '日志write方法');
INSERT INTO `cmf_hook` VALUES ('8', '1', '0', '输出结束', 'response_end', 'cmf', '输出结束');
INSERT INTO `cmf_hook` VALUES ('9', '1', '0', '后台控制器初始化', 'admin_init', 'cmf', '后台控制器初始化');
INSERT INTO `cmf_hook` VALUES ('10', '1', '0', '前台控制器初始化', 'home_init', 'cmf', '前台控制器初始化');
INSERT INTO `cmf_hook` VALUES ('11', '1', '1', '发送手机验证码', 'send_mobile_verification_code', 'cmf', '发送手机验证码');
INSERT INTO `cmf_hook` VALUES ('12', '3', '0', '模板 body标签开始', 'body_start', '', '模板 body标签开始');
INSERT INTO `cmf_hook` VALUES ('13', '3', '0', '模板 head标签结束前', 'before_head_end', '', '模板 head标签结束前');
INSERT INTO `cmf_hook` VALUES ('14', '3', '0', '模板底部开始', 'footer_start', '', '模板底部开始');
INSERT INTO `cmf_hook` VALUES ('15', '3', '0', '模板底部开始之前', 'before_footer', '', '模板底部开始之前');
INSERT INTO `cmf_hook` VALUES ('16', '3', '0', '模板底部结束之前', 'before_footer_end', '', '模板底部结束之前');
INSERT INTO `cmf_hook` VALUES ('17', '3', '0', '模板 body 标签结束之前', 'before_body_end', '', '模板 body 标签结束之前');
INSERT INTO `cmf_hook` VALUES ('18', '3', '0', '模板左边栏开始', 'left_sidebar_start', '', '模板左边栏开始');
INSERT INTO `cmf_hook` VALUES ('19', '3', '0', '模板左边栏结束之前', 'before_left_sidebar_end', '', '模板左边栏结束之前');
INSERT INTO `cmf_hook` VALUES ('20', '3', '0', '模板右边栏开始', 'right_sidebar_start', '', '模板右边栏开始');
INSERT INTO `cmf_hook` VALUES ('21', '3', '0', '模板右边栏结束之前', 'before_right_sidebar_end', '', '模板右边栏结束之前');
INSERT INTO `cmf_hook` VALUES ('22', '3', '1', '评论区', 'comment', '', '评论区');
INSERT INTO `cmf_hook` VALUES ('23', '3', '1', '留言区', 'guestbook', '', '留言区');
INSERT INTO `cmf_hook` VALUES ('24', '2', '0', '后台首页仪表盘', 'admin_dashboard', 'admin', '后台首页仪表盘');
INSERT INTO `cmf_hook` VALUES ('25', '4', '0', '后台模板 head标签结束前', 'admin_before_head_end', '', '后台模板 head标签结束前');
INSERT INTO `cmf_hook` VALUES ('26', '4', '0', '后台模板 body 标签结束之前', 'admin_before_body_end', '', '后台模板 body 标签结束之前');
INSERT INTO `cmf_hook` VALUES ('27', '2', '0', '后台登录页面', 'admin_login', 'admin', '后台登录页面');
INSERT INTO `cmf_hook` VALUES ('28', '1', '1', '前台模板切换', 'switch_theme', 'cmf', '前台模板切换');
INSERT INTO `cmf_hook` VALUES ('29', '3', '0', '主要内容之后', 'after_content', '', '主要内容之后');
INSERT INTO `cmf_hook` VALUES ('30', '2', '0', '文章显示之前', 'portal_before_assign_article', 'portal', '文章显示之前');
INSERT INTO `cmf_hook` VALUES ('31', '2', '0', '后台文章保存之后', 'portal_admin_after_save_article', 'portal', '后台文章保存之后');
INSERT INTO `cmf_hook` VALUES ('32', '2', '1', '获取上传界面', 'fetch_upload_view', 'user', '获取上传界面');
INSERT INTO `cmf_hook` VALUES ('33', '3', '0', '主要内容之前', 'before_content', 'cmf', '主要内容之前');
INSERT INTO `cmf_hook` VALUES ('34', '1', '0', '日志写入完成', 'log_write_done', 'cmf', '日志写入完成');
INSERT INTO `cmf_hook` VALUES ('35', '1', '1', '后台模板切换', 'switch_admin_theme', 'cmf', '后台模板切换');

-- ----------------------------
-- Table structure for `cmf_hook_plugin`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_hook_plugin`;
CREATE TABLE `cmf_hook_plugin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名',
  `plugin` varchar(50) NOT NULL DEFAULT '' COMMENT '插件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子插件表';

-- ----------------------------
-- Records of cmf_hook_plugin
-- ----------------------------
INSERT INTO `cmf_hook_plugin` VALUES ('1', '10000', '1', 'send_mobile_verification_code', 'MobileCodeDemo');

-- ----------------------------
-- Table structure for `cmf_link`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_link`;
CREATE TABLE `cmf_link` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:不显示',
  `rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接描述',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接地址',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '友情链接名称',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '友情链接图标',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `rel` varchar(50) NOT NULL DEFAULT '' COMMENT '链接与网站的关系',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='友情链接表';

-- ----------------------------
-- Records of cmf_link
-- ----------------------------
INSERT INTO `cmf_link` VALUES ('1', '1', '1', '8', 'thinkcmf官网', 'http://www.thinkcmf.com', 'ThinkCMF', '', '_blank', '');

-- ----------------------------
-- Table structure for `cmf_nav`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_nav`;
CREATE TABLE `cmf_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_main` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否为主导航;1:是;0:不是',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '导航位置名称',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航位置表';

-- ----------------------------
-- Records of cmf_nav
-- ----------------------------
INSERT INTO `cmf_nav` VALUES ('1', '1', '主导航', '主导航');
INSERT INTO `cmf_nav` VALUES ('2', '0', '底部导航', '');

-- ----------------------------
-- Table structure for `cmf_nav_menu`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_nav_menu`;
CREATE TABLE `cmf_nav_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` int(11) NOT NULL COMMENT '导航 id',
  `parent_id` int(11) NOT NULL COMMENT '父 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '打开方式',
  `href` varchar(100) NOT NULL DEFAULT '' COMMENT '链接',
  `icon` varchar(20) NOT NULL DEFAULT '' COMMENT '图标',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航菜单表';

-- ----------------------------
-- Records of cmf_nav_menu
-- ----------------------------
INSERT INTO `cmf_nav_menu` VALUES ('1', '1', '0', '1', '0', '首页', '', 'home', '', '0-1');

-- ----------------------------
-- Table structure for `cmf_option`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_option`;
CREATE TABLE `cmf_option` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `autoload` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否自动加载;1:自动加载;0:不自动加载',
  `option_name` varchar(64) NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '配置值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='全站配置表';

-- ----------------------------
-- Records of cmf_option
-- ----------------------------
INSERT INTO `cmf_option` VALUES ('1', '1', 'site_info', '{\"site_name\":\"ThinkCMF\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6\",\"site_seo_title\":\"ThinkCMF\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6\",\"site_seo_keywords\":\"ThinkCMF,php,\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6,cmf,cms,\\u7b80\\u7ea6\\u98ce, simplewind,framework\",\"site_seo_description\":\"ThinkCMF\\u662f\\u7b80\\u7ea6\\u98ce\\u7f51\\u7edc\\u79d1\\u6280\\u53d1\\u5e03\\u7684\\u4e00\\u6b3e\\u7528\\u4e8e\\u5feb\\u901f\\u5f00\\u53d1\\u7684\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6\"}');

-- ----------------------------
-- Table structure for `cmf_plugin`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_plugin`;
CREATE TABLE `cmf_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '插件类型;1:网站;8:微信',
  `has_admin` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台管理,0:没有;1:有',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:开启;0:禁用',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '插件标识名,英文字母(惟一)',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件名称',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `hooks` varchar(255) NOT NULL DEFAULT '' COMMENT '实现的钩子;以“,”分隔',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '插件版本号',
  `description` varchar(255) NOT NULL COMMENT '插件描述',
  `config` text COMMENT '插件配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='插件表';

-- ----------------------------
-- Records of cmf_plugin
-- ----------------------------
INSERT INTO `cmf_plugin` VALUES ('1', '1', '0', '1', '0', 'MobileCodeDemo', '手机验证码演示插件', '', '', 'ThinkCMF', '', '1.0', '手机验证码演示插件', '{\"account_sid\":\"\",\"auth_token\":\"\",\"app_id\":\"\",\"template_id\":\"\",\"expire_minute\":\"30\"}');

-- ----------------------------
-- Table structure for `cmf_portal_category`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_category`;
CREATE TABLE `cmf_portal_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类父id',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类文章数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '分类描述',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '分类层级关系路径',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '',
  `seo_description` varchar(255) NOT NULL DEFAULT '',
  `list_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类列表模板',
  `one_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类文章页模板',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章分类表';

-- ----------------------------
-- Records of cmf_portal_category
-- ----------------------------
INSERT INTO `cmf_portal_category` VALUES ('1', '0', '0', '1', '0', '10000', '新闻', '', '0-1', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');

-- ----------------------------
-- Table structure for `cmf_portal_category_post`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_category_post`;
CREATE TABLE `cmf_portal_category_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `category_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `term_taxonomy_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='portal应用 分类文章对应表';

-- ----------------------------
-- Records of cmf_portal_category_post
-- ----------------------------
INSERT INTO `cmf_portal_category_post` VALUES ('1', '1', '1', '10000', '1');

-- ----------------------------
-- Table structure for `cmf_portal_post`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_post`;
CREATE TABLE `cmf_portal_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `post_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '类型,1:文章;2:页面',
  `post_format` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '内容格式;1:html;2:md',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '发表者用户id',
  `post_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:已发布;0:未发布;',
  `comment_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论状态;1:允许;0:不允许',
  `is_top` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶;1:置顶;0:不置顶',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_hits` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '查看数',
  `post_favorites` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数',
  `post_like` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `comment_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `published_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `post_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'post标题',
  `post_keywords` varchar(150) NOT NULL DEFAULT '' COMMENT 'seo keywords',
  `post_excerpt` varchar(500) NOT NULL DEFAULT '' COMMENT 'post摘要',
  `post_source` varchar(150) NOT NULL DEFAULT '' COMMENT '转载文章的来源',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `post_content` text COMMENT '文章内容',
  `post_content_filtered` text COMMENT '处理过的文章内容',
  `more` text COMMENT '扩展属性,如缩略图;格式为json',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`create_time`,`id`),
  KEY `parent_id` (`parent_id`),
  KEY `user_id` (`user_id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='portal应用 文章表';

-- ----------------------------
-- Records of cmf_portal_post
-- ----------------------------
INSERT INTO `cmf_portal_post` VALUES ('1', '0', '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '1534255574', '1534255574', '1534255509', '0', '新闻测试', '', '在', '', 'portal/20180814/f053f84cdd1348d838906e0cbfc732cb.jpg', '&lt;p&gt;大&lt;/p&gt;', null, '{\"thumbnail\":\"portal\\/20180814\\/f053f84cdd1348d838906e0cbfc732cb.jpg\",\"template\":\"article\",\"photos\":[{\"url\":\"portal\\/20180814\\/308ac95a609538887aea8b6a3fef2965.jpg\",\"name\":\"timg (2).jpg\"},{\"url\":\"portal\\/20180814\\/5cda5ba70e3386d92cbd83fba372ca93.jpg\",\"name\":\"timg101.jpg\"}]}');

-- ----------------------------
-- Table structure for `cmf_portal_tag`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_tag`;
CREATE TABLE `cmf_portal_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签文章数',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标签名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章标签表';

-- ----------------------------
-- Records of cmf_portal_tag
-- ----------------------------

-- ----------------------------
-- Table structure for `cmf_portal_tag_post`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_tag_post`;
CREATE TABLE `cmf_portal_tag_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签 id',
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='portal应用 标签文章对应表';

-- ----------------------------
-- Records of cmf_portal_tag_post
-- ----------------------------

-- ----------------------------
-- Table structure for `cmf_recycle_bin`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_recycle_bin`;
CREATE TABLE `cmf_recycle_bin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT '0' COMMENT '删除内容 id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(60) DEFAULT '' COMMENT '删除内容所在表名',
  `name` varchar(255) DEFAULT '' COMMENT '删除内容名称',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT=' 回收站';

-- ----------------------------
-- Records of cmf_recycle_bin
-- ----------------------------

-- ----------------------------
-- Table structure for `cmf_role`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_role`;
CREATE TABLE `cmf_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父角色ID',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;0:禁用;1:正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `list_order` float NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

-- ----------------------------
-- Records of cmf_role
-- ----------------------------
INSERT INTO `cmf_role` VALUES ('1', '0', '1', '1329633709', '1329633709', '0', '超级管理员', '拥有网站最高管理员权限！');
INSERT INTO `cmf_role` VALUES ('2', '0', '1', '1329633709', '1329633709', '0', '普通管理员', '权限由最高管理员分配！');
INSERT INTO `cmf_role` VALUES ('3', '0', '1', '0', '0', '0', '检测员', '检测车辆，并录入系统');

-- ----------------------------
-- Table structure for `cmf_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_role_user`;
CREATE TABLE `cmf_role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '角色 id',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户角色对应表';

-- ----------------------------
-- Records of cmf_role_user
-- ----------------------------
INSERT INTO `cmf_role_user` VALUES ('1', '3', '3');

-- ----------------------------
-- Table structure for `cmf_route`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_route`;
CREATE TABLE `cmf_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态;1:启用,0:不启用',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'URL规则类型;1:用户自定义;2:别名添加',
  `full_url` varchar(255) NOT NULL DEFAULT '' COMMENT '完整url',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '实际显示的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='url路由表';

-- ----------------------------
-- Records of cmf_route
-- ----------------------------
INSERT INTO `cmf_route` VALUES ('1', '5000', '1', '2', 'portal/List/index?id=1', 'news');
INSERT INTO `cmf_route` VALUES ('2', '4999', '1', '2', 'portal/Article/index?cid=1', 'news/:id');

-- ----------------------------
-- Table structure for `cmf_slide`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_slide`;
CREATE TABLE `cmf_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示,0不显示',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片分类',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '分类备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片表';

-- ----------------------------
-- Records of cmf_slide
-- ----------------------------

-- ----------------------------
-- Table structure for `cmf_slide_item`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_slide_item`;
CREATE TABLE `cmf_slide_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slide_id` int(11) NOT NULL DEFAULT '0' COMMENT '幻灯片id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '幻灯片名称',
  `image` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片图片',
  `url` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片链接',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `description` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片描述',
  `content` text CHARACTER SET utf8 COMMENT '幻灯片内容',
  `more` text COMMENT '链接打开方式',
  PRIMARY KEY (`id`),
  KEY `slide_id` (`slide_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片子项表';

-- ----------------------------
-- Records of cmf_slide_item
-- ----------------------------

-- ----------------------------
-- Table structure for `cmf_theme`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_theme`;
CREATE TABLE `cmf_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后升级时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '模板状态,1:正在使用;0:未使用',
  `is_compiled` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否为已编译模板',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '主题目录名，用于主题的维一标识',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '主题名称',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '主题版本号',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `author` varchar(20) NOT NULL DEFAULT '' COMMENT '主题作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `lang` varchar(10) NOT NULL DEFAULT '' COMMENT '支持语言',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT '主题关键字',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '主题描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cmf_theme
-- ----------------------------
INSERT INTO `cmf_theme` VALUES ('1', '0', '0', '0', '0', 'simpleboot3', 'simpleboot3', '1.0.2', 'http://demo.thinkcmf.com', '', 'ThinkCMF', 'http://www.thinkcmf.com', 'zh-cn', 'ThinkCMF模板', 'ThinkCMF默认模板');

-- ----------------------------
-- Table structure for `cmf_theme_file`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_theme_file`;
CREATE TABLE `cmf_theme_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_public` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否公共的模板文件',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '模板名称',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '模板文件名',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作',
  `file` varchar(50) NOT NULL DEFAULT '' COMMENT '模板文件，相对于模板根目录，如Portal/index.html',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '模板文件描述',
  `more` text COMMENT '模板更多配置,用户自己后台设置的',
  `config_more` text COMMENT '模板更多配置,来源模板的配置文件',
  `draft_more` text COMMENT '模板更多配置,用户临时保存的配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cmf_theme_file
-- ----------------------------
INSERT INTO `cmf_theme_file` VALUES ('1', '0', '10', 'simpleboot3', '文章页', 'portal/Article/index', 'portal/article', '文章页模板文件', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('2', '0', '10', 'simpleboot3', '联系我们页', 'portal/Page/index', 'portal/contact', '联系我们页模板文件', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('3', '0', '5', 'simpleboot3', '首页', 'portal/Index/index', 'portal/index', '首页模板文件', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('4', '0', '10', 'simpleboot3', '文章列表页', 'portal/List/index', 'portal/list', '文章列表模板文件', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('5', '0', '10', 'simpleboot3', '单页面', 'portal/Page/index', 'portal/page', '单页面模板文件', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('6', '0', '10', 'simpleboot3', '搜索页面', 'portal/search/index', 'portal/search', '搜索模板文件', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('7', '1', '0', 'simpleboot3', '模板全局配置', 'public/Config', 'public/config', '模板全局配置文件', '{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}', '{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('8', '1', '1', 'simpleboot3', '导航条', 'public/Nav', 'public/nav', '导航条模板文件', '{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"ThinkCMF\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"ThinkCMF\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', null);

-- ----------------------------
-- Table structure for `cmf_third_party_user`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_third_party_user`;
CREATE TABLE `cmf_third_party_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '本站用户id',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'access_token过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '绑定时间',
  `login_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:正常;0:禁用',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `third_party` varchar(20) NOT NULL DEFAULT '' COMMENT '第三方惟一码',
  `app_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方应用 id',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `access_token` varchar(512) NOT NULL DEFAULT '' COMMENT '第三方授权码',
  `openid` varchar(40) NOT NULL DEFAULT '' COMMENT '第三方用户id',
  `union_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方用户多个产品中的惟一 id,(如:微信平台)',
  `more` text COMMENT '扩展信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='第三方用户表';

-- ----------------------------
-- Records of cmf_third_party_user
-- ----------------------------

-- ----------------------------
-- Table structure for `cmf_user`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user`;
CREATE TABLE `cmf_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户类型;1:admin;2:会员',
  `sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别;0:保密,1:男,2:女',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `coin` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '金币',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `user_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网址',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像',
  `signature` varchar(255) NOT NULL DEFAULT '' COMMENT '个性签名',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '中国手机不带国家代码，国际手机号格式为：国家代码-手机号',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  KEY `user_login` (`user_login`),
  KEY `user_nickname` (`user_nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

-- ----------------------------
-- Records of cmf_user
-- ----------------------------
INSERT INTO `cmf_user` VALUES ('1', '1', '0', '0', '1534769154', '3', '3', '0.00', '1533398336', '1', 'admin', '###f0daa7f5aa36070dcede5f6bf9d0db9a', 'admin', '123@123.com', '', '', '', '127.0.0.1', '', '', null);
INSERT INTO `cmf_user` VALUES ('2', '2', '0', '0', '1534077623', '0', '0', '0.00', '1534077623', '1', '', '###f0daa7f5aa36070dcede5f6bf9d0db9a', '', '', '', '', '', '127.0.0.1', '', '13911049454', null);
INSERT INTO `cmf_user` VALUES ('3', '1', '0', '0', '1534855026', '9', '9', '0.00', '0', '1', 'haojian', '###f0daa7f5aa36070dcede5f6bf9d0db9a', '郝建', 'hao@163.com', '', '', '', '127.0.0.1', '', '', null);

-- ----------------------------
-- Table structure for `cmf_user_action`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_action`;
CREATE TABLE `cmf_user_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  `reward_number` int(11) NOT NULL DEFAULT '0' COMMENT '奖励次数',
  `cycle_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '周期类型;0:不限;1:按天;2:按小时;3:永久',
  `cycle_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '周期时间值',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `app` varchar(50) NOT NULL DEFAULT '' COMMENT '操作所在应用名或插件名等',
  `url` text COMMENT '执行操作的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户操作表';

-- ----------------------------
-- Records of cmf_user_action
-- ----------------------------
INSERT INTO `cmf_user_action` VALUES ('1', '1', '1', '1', '2', '1', '用户登录', 'login', 'user', '');

-- ----------------------------
-- Table structure for `cmf_user_action_log`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_action_log`;
CREATE TABLE `cmf_user_action_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问次数',
  `last_visit_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后访问时间',
  `object` varchar(100) NOT NULL DEFAULT '' COMMENT '访问对象的id,格式:不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作名称;格式:应用名+控制器+操作名,也可自己定义格式只要不发生冲突且惟一;',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`user_id`,`object`,`action`),
  KEY `user_object_action_ip` (`user_id`,`object`,`action`,`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='访问记录表';

-- ----------------------------
-- Records of cmf_user_action_log
-- ----------------------------

-- ----------------------------
-- Table structure for `cmf_user_balance_log`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_balance_log`;
CREATE TABLE `cmf_user_balance_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `change` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '更改余额',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '更改后余额',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户余额变更日志表';

-- ----------------------------
-- Records of cmf_user_balance_log
-- ----------------------------

-- ----------------------------
-- Table structure for `cmf_user_favorite`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_favorite`;
CREATE TABLE `cmf_user_favorite` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '收藏内容的标题',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `url` varchar(255) DEFAULT NULL COMMENT '收藏内容的原文地址，JSON格式',
  `description` text COMMENT '收藏内容的描述',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '收藏实体以前所在表,不带前缀',
  `object_id` int(10) unsigned DEFAULT '0' COMMENT '收藏内容原来的主键id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '收藏时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户收藏表';

-- ----------------------------
-- Records of cmf_user_favorite
-- ----------------------------

-- ----------------------------
-- Table structure for `cmf_user_like`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_like`;
CREATE TABLE `cmf_user_like` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '内容原来的主键id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '内容以前所在表,不带前缀',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '内容的原文地址，不带域名',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '内容的标题',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `description` text COMMENT '内容的描述',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户点赞表';

-- ----------------------------
-- Records of cmf_user_like
-- ----------------------------

-- ----------------------------
-- Table structure for `cmf_user_login_attempt`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_login_attempt`;
CREATE TABLE `cmf_user_login_attempt` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login_attempts` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试次数',
  `attempt_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试登录时间',
  `locked_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '锁定时间',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户 ip',
  `account` varchar(100) NOT NULL DEFAULT '' COMMENT '用户账号,手机号,邮箱或用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='用户登录尝试表';

-- ----------------------------
-- Records of cmf_user_login_attempt
-- ----------------------------

-- ----------------------------
-- Table structure for `cmf_user_score_log`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_score_log`;
CREATE TABLE `cmf_user_score_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COMMENT='用户操作积分等奖励日志表';

-- ----------------------------
-- Records of cmf_user_score_log
-- ----------------------------
INSERT INTO `cmf_user_score_log` VALUES ('1', '1', '1533999734', 'login', '1', '1');
INSERT INTO `cmf_user_score_log` VALUES ('2', '1', '1534040829', 'login', '1', '1');
INSERT INTO `cmf_user_score_log` VALUES ('3', '1', '1534171064', 'login', '1', '1');
INSERT INTO `cmf_user_score_log` VALUES ('4', '3', '1534340058', 'login', '1', '1');
INSERT INTO `cmf_user_score_log` VALUES ('5', '3', '1534424141', 'login', '1', '1');
INSERT INTO `cmf_user_score_log` VALUES ('6', '3', '1534516709', 'login', '1', '1');
INSERT INTO `cmf_user_score_log` VALUES ('7', '3', '1534594577', 'login', '1', '1');
INSERT INTO `cmf_user_score_log` VALUES ('8', '3', '1534603020', 'login', '1', '1');
INSERT INTO `cmf_user_score_log` VALUES ('9', '3', '1534667928', 'login', '1', '1');
INSERT INTO `cmf_user_score_log` VALUES ('10', '3', '1534681790', 'login', '1', '1');
INSERT INTO `cmf_user_score_log` VALUES ('11', '3', '1534771072', 'login', '1', '1');
INSERT INTO `cmf_user_score_log` VALUES ('12', '3', '1534855026', 'login', '1', '1');

-- ----------------------------
-- Table structure for `cmf_user_token`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_token`;
CREATE TABLE `cmf_user_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' 过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `token` varchar(64) NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) NOT NULL DEFAULT '' COMMENT '设备类型;mobile,android,iphone,ipad,web,pc,mac,wxapp',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='用户客户端登录 token 表';

-- ----------------------------
-- Records of cmf_user_token
-- ----------------------------
INSERT INTO `cmf_user_token` VALUES ('1', '1', '1549551734', '1533999734', '3f4f0423ed988f75d23336fe6483ba9c3f4f0423ed988f75d23336fe6483ba9c', 'web');
INSERT INTO `cmf_user_token` VALUES ('2', '2', '1549629623', '1534077623', '81d178e2b00b4586cde03a88954e279281d178e2b00b4586cde03a88954e2792', 'web');
INSERT INTO `cmf_user_token` VALUES ('3', '3', '1549727376', '1534175376', '23488f37d38821ad85cf7416e78f0b2223488f37d38821ad85cf7416e78f0b22', 'web');

-- ----------------------------
-- Table structure for `cmf_verification_code`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_verification_code`;
CREATE TABLE `cmf_verification_code` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当天已经发送成功的次数',
  `send_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后发送成功时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证码过期时间',
  `code` varchar(8) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '最后发送成功的验证码',
  `account` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '手机号或者邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='手机邮箱数字验证码表';

-- ----------------------------
-- Records of cmf_verification_code
-- ----------------------------
INSERT INTO `cmf_verification_code` VALUES ('1', '2', '1534077614', '1534079414', '879205', '13911049454');

-- ----------------------------
-- Table structure for `yys_area_daili`
-- ----------------------------
DROP TABLE IF EXISTS `yys_area_daili`;
CREATE TABLE `yys_area_daili` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(11) DEFAULT NULL,
  `parentId` varchar(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `level` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47496 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='全国省市区街道';

-- ----------------------------
-- Records of yys_area_daili
-- ----------------------------
INSERT INTO `yys_area_daili` VALUES ('1', '11', '0', '北京市', '1');
INSERT INTO `yys_area_daili` VALUES ('2', '1101', '11', '北京市辖区', '2');
INSERT INTO `yys_area_daili` VALUES ('300', '1102', '11', '县', '2');
INSERT INTO `yys_area_daili` VALUES ('338', '12', '0', '天津市', '1');
INSERT INTO `yys_area_daili` VALUES ('339', '1201', '12', '天津市辖区', '2');
INSERT INTO `yys_area_daili` VALUES ('569', '1202', '12', '市辖县', '2');
INSERT INTO `yys_area_daili` VALUES ('636', '13', '0', '河北省', '1');
INSERT INTO `yys_area_daili` VALUES ('637', '1301', '13', '河北市辖区', '2');
INSERT INTO `yys_area_daili` VALUES ('936', '1302', '13', '唐山市', '2');
INSERT INTO `yys_area_daili` VALUES ('1188', '1303', '13', '秦皇岛市', '2');
INSERT INTO `yys_area_daili` VALUES ('1291', '1304', '13', '邯郸市', '2');
INSERT INTO `yys_area_daili` VALUES ('1554', '1305', '13', '邢台市', '2');
INSERT INTO `yys_area_daili` VALUES ('1772', '1306', '13', '保定市', '2');
INSERT INTO `yys_area_daili` VALUES ('2142', '1307', '13', '张家口市', '2');
INSERT INTO `yys_area_daili` VALUES ('2400', '1308', '13', '承德市', '2');
INSERT INTO `yys_area_daili` VALUES ('2629', '1309', '13', '沧州市', '2');
INSERT INTO `yys_area_daili` VALUES ('2849', '1310', '13', '廊坊市', '2');
INSERT INTO `yys_area_daili` VALUES ('2968', '1311', '13', '衡水市', '2');
INSERT INTO `yys_area_daili` VALUES ('3102', '14', '0', '山西', '1');
INSERT INTO `yys_area_daili` VALUES ('3103', '1401', '14', '太原市', '2');
INSERT INTO `yys_area_daili` VALUES ('3224', '1402', '14', '大同市', '2');
INSERT INTO `yys_area_daili` VALUES ('3379', '1403', '14', '阳泉市', '2');
INSERT INTO `yys_area_daili` VALUES ('3431', '1404', '14', '长治市', '2');
INSERT INTO `yys_area_daili` VALUES ('3597', '1405', '14', '晋城市', '2');
INSERT INTO `yys_area_daili` VALUES ('3690', '1406', '14', '朔州市', '2');
INSERT INTO `yys_area_daili` VALUES ('3776', '1407', '14', '晋中市', '2');
INSERT INTO `yys_area_daili` VALUES ('3925', '1408', '14', '运城市', '2');
INSERT INTO `yys_area_daili` VALUES ('4093', '1409', '14', '忻州市', '2');
INSERT INTO `yys_area_daili` VALUES ('4304', '1410', '14', '临汾市', '2');
INSERT INTO `yys_area_daili` VALUES ('4494', '1411', '14', '吕梁市', '2');
INSERT INTO `yys_area_daili` VALUES ('4670', '15', '0', '内蒙古自治区', '1');
INSERT INTO `yys_area_daili` VALUES ('4671', '1501', '15', '呼和浩特市', '2');
INSERT INTO `yys_area_daili` VALUES ('4759', '1502', '15', '包头市', '2');
INSERT INTO `yys_area_daili` VALUES ('4849', '1503', '15', '乌海市', '2');
INSERT INTO `yys_area_daili` VALUES ('4874', '1504', '15', '赤峰市', '2');
INSERT INTO `yys_area_daili` VALUES ('5029', '1505', '15', '通辽市', '2');
INSERT INTO `yys_area_daili` VALUES ('5162', '1506', '15', '鄂尔多斯市', '2');
INSERT INTO `yys_area_daili` VALUES ('5236', '1507', '15', '呼伦贝尔市', '2');
INSERT INTO `yys_area_daili` VALUES ('5418', '1508', '15', '巴彦淖尔市', '2');
INSERT INTO `yys_area_daili` VALUES ('5505', '1509', '15', '乌兰察布市', '2');
INSERT INTO `yys_area_daili` VALUES ('5616', '1522', '15', '兴安盟', '2');
INSERT INTO `yys_area_daili` VALUES ('5702', '1525', '15', '锡林郭勒盟', '2');
INSERT INTO `yys_area_daili` VALUES ('5799', '1529', '15', '阿拉善盟', '2');
INSERT INTO `yys_area_daili` VALUES ('5827', '21', '0', '辽宁省', '1');
INSERT INTO `yys_area_daili` VALUES ('5828', '2101', '21', '沈阳市', '2');
INSERT INTO `yys_area_daili` VALUES ('6088', '2102', '21', '大连市', '2');
INSERT INTO `yys_area_daili` VALUES ('6266', '2103', '21', '鞍山市', '2');
INSERT INTO `yys_area_daili` VALUES ('6384', '2104', '21', '抚顺市', '2');
INSERT INTO `yys_area_daili` VALUES ('6476', '2105', '21', '本溪市', '2');
INSERT INTO `yys_area_daili` VALUES ('6542', '2106', '21', '丹东市', '2');
INSERT INTO `yys_area_daili` VALUES ('6643', '2107', '21', '锦州市', '2');
INSERT INTO `yys_area_daili` VALUES ('6771', '2108', '21', '营口市', '2');
INSERT INTO `yys_area_daili` VALUES ('6851', '2109', '21', '阜新市', '2');
INSERT INTO `yys_area_daili` VALUES ('6955', '2110', '21', '辽阳市', '2');
INSERT INTO `yys_area_daili` VALUES ('7024', '2111', '21', '盘锦市', '2');
INSERT INTO `yys_area_daili` VALUES ('7088', '2112', '21', '铁岭市', '2');
INSERT INTO `yys_area_daili` VALUES ('7208', '2113', '21', '朝阳市', '2');
INSERT INTO `yys_area_daili` VALUES ('7391', '2114', '21', '葫芦岛市', '2');
INSERT INTO `yys_area_daili` VALUES ('7531', '22', '0', '吉林省', '1');
INSERT INTO `yys_area_daili` VALUES ('7532', '2201', '22', '长春市', '2');
INSERT INTO `yys_area_daili` VALUES ('7706', '2202', '22', '吉林市', '2');
INSERT INTO `yys_area_daili` VALUES ('7868', '2203', '22', '四平市', '2');
INSERT INTO `yys_area_daili` VALUES ('7986', '2204', '22', '辽源市', '2');
INSERT INTO `yys_area_daili` VALUES ('8037', '2205', '22', '通化市', '2');
INSERT INTO `yys_area_daili` VALUES ('8144', '2206', '22', '白山市', '2');
INSERT INTO `yys_area_daili` VALUES ('8216', '2207', '22', '松原市', '2');
INSERT INTO `yys_area_daili` VALUES ('8333', '2208', '22', '白城市', '2');
INSERT INTO `yys_area_daili` VALUES ('8445', '2224', '22', '延边朝鲜族自治州', '2');
INSERT INTO `yys_area_daili` VALUES ('8558', '23', '0', '黑龙江省', '1');
INSERT INTO `yys_area_daili` VALUES ('8559', '2301', '23', '哈尔滨市', '2');
INSERT INTO `yys_area_daili` VALUES ('8884', '2302', '23', '齐齐哈尔市', '2');
INSERT INTO `yys_area_daili` VALUES ('9117', '2303', '23', '鸡西市', '2');
INSERT INTO `yys_area_daili` VALUES ('9222', '2304', '23', '鹤岗市', '2');
INSERT INTO `yys_area_daili` VALUES ('9296', '2305', '23', '双鸭山市', '2');
INSERT INTO `yys_area_daili` VALUES ('9419', '2306', '23', '大庆市', '2');
INSERT INTO `yys_area_daili` VALUES ('9553', '2307', '23', '伊春市', '2');
INSERT INTO `yys_area_daili` VALUES ('9785', '2308', '23', '佳木斯市', '2');
INSERT INTO `yys_area_daili` VALUES ('9930', '2309', '23', '七台河市', '2');
INSERT INTO `yys_area_daili` VALUES ('9981', '2310', '23', '牡丹江市', '2');
INSERT INTO `yys_area_daili` VALUES ('10084', '2311', '23', '黑河市', '2');
INSERT INTO `yys_area_daili` VALUES ('10252', '2312', '23', '绥化市', '2');
INSERT INTO `yys_area_daili` VALUES ('10483', '2327', '23', '大兴安岭地区', '2');
INSERT INTO `yys_area_daili` VALUES ('10543', '31', '0', '上海市', '1');
INSERT INTO `yys_area_daili` VALUES ('10544', '3101', '31', '上海市辖区', '2');
INSERT INTO `yys_area_daili` VALUES ('10779', '3102', '31', '县', '2');
INSERT INTO `yys_area_daili` VALUES ('10808', '32', '0', '江苏省', '1');
INSERT INTO `yys_area_daili` VALUES ('10809', '3201', '32', '南京市', '2');
INSERT INTO `yys_area_daili` VALUES ('10960', '3202', '32', '无锡市', '2');
INSERT INTO `yys_area_daili` VALUES ('11067', '3203', '32', '徐州市', '2');
INSERT INTO `yys_area_daili` VALUES ('11245', '3204', '32', '常州市', '2');
INSERT INTO `yys_area_daili` VALUES ('11348', '3205', '32', '苏州市', '2');
INSERT INTO `yys_area_daili` VALUES ('11482', '3206', '32', '南通市', '2');
INSERT INTO `yys_area_daili` VALUES ('11568', '320682', '3206', '\"如皋市', '0');
INSERT INTO `yys_area_daili` VALUES ('11569', '320682100', '320682', '\"如城镇', '0');
INSERT INTO `yys_area_daili` VALUES ('11570', '320682101', '320682', '\"柴湾镇', '0');
INSERT INTO `yys_area_daili` VALUES ('11571', '320682102', '320682', '\"雪岸镇', '0');
INSERT INTO `yys_area_daili` VALUES ('11572', '320682103', '320682', '\"东陈镇', '0');
INSERT INTO `yys_area_daili` VALUES ('11573', '320682104', '320682', '\"丁堰镇', '0');
INSERT INTO `yys_area_daili` VALUES ('11574', '320682105', '320682', '\"白蒲镇', '0');
INSERT INTO `yys_area_daili` VALUES ('11575', '320682106', '320682', '\"林梓镇', '0');
INSERT INTO `yys_area_daili` VALUES ('11576', '320682107', '320682', '\"下原镇', '0');
INSERT INTO `yys_area_daili` VALUES ('11577', '320682108', '320682', '\"九华镇', '0');
INSERT INTO `yys_area_daili` VALUES ('11578', '320682109', '320682', '\"郭园镇', '0');
INSERT INTO `yys_area_daili` VALUES ('11579', '320682110', '320682', '\"石庄镇', '0');
INSERT INTO `yys_area_daili` VALUES ('11580', '320682111', '320682', '\"长江镇', '0');
INSERT INTO `yys_area_daili` VALUES ('11581', '320682112', '320682', '\"吴窑镇', '0');
INSERT INTO `yys_area_daili` VALUES ('11582', '320682113', '320682', '\"江安镇', '0');
INSERT INTO `yys_area_daili` VALUES ('11583', '320682114', '320682', '\"高明镇', '0');
INSERT INTO `yys_area_daili` VALUES ('11584', '320682115', '320682', '\"常青镇', '0');
INSERT INTO `yys_area_daili` VALUES ('11585', '320682116', '320682', '\"搬经镇', '0');
INSERT INTO `yys_area_daili` VALUES ('11586', '320682117', '320682', '\"磨头镇', '0');
INSERT INTO `yys_area_daili` VALUES ('11587', '320682118', '320682', '\"桃园镇', '0');
INSERT INTO `yys_area_daili` VALUES ('11588', '320682119', '320682', '\"袁桥镇', '0');
INSERT INTO `yys_area_daili` VALUES ('11590', '320682401', '320682', '\"如皋港开发区', '0');
INSERT INTO `yys_area_daili` VALUES ('11592', '320682403', '320682', '\"如皋市蚕种场', '0');
INSERT INTO `yys_area_daili` VALUES ('11593', '320682404', '320682', '\"如皋市良种场', '0');
INSERT INTO `yys_area_daili` VALUES ('11595', '320682406', '320682', '\"如皋市种猪场', '0');
INSERT INTO `yys_area_daili` VALUES ('11596', '320682407', '320682', '\"如皋市农科所', '0');
INSERT INTO `yys_area_daili` VALUES ('11663', '3207', '32', '连云港市', '2');
INSERT INTO `yys_area_daili` VALUES ('11786', '3208', '32', '淮安市', '2');
INSERT INTO `yys_area_daili` VALUES ('11947', '3209', '32', '盐城市', '2');
INSERT INTO `yys_area_daili` VALUES ('12135', '3210', '32', '扬州市', '2');
INSERT INTO `yys_area_daili` VALUES ('12249', '3211', '32', '镇江市', '2');
INSERT INTO `yys_area_daili` VALUES ('12343', '3212', '32', '泰州市', '2');
INSERT INTO `yys_area_daili` VALUES ('12475', '3213', '32', '宿迁市', '2');
INSERT INTO `yys_area_daili` VALUES ('12596', '33', '0', '浙江省', '1');
INSERT INTO `yys_area_daili` VALUES ('12597', '3301', '33', '杭州市', '2');
INSERT INTO `yys_area_daili` VALUES ('12813', '3302', '33', '宁波市', '2');
INSERT INTO `yys_area_daili` VALUES ('12974', '3303', '33', '温州市', '2');
INSERT INTO `yys_area_daili` VALUES ('13280', '3304', '33', '嘉兴市', '2');
INSERT INTO `yys_area_daili` VALUES ('13364', '3305', '33', '湖州市', '2');
INSERT INTO `yys_area_daili` VALUES ('13437', '3306', '33', '绍兴市', '2');
INSERT INTO `yys_area_daili` VALUES ('13564', '3307', '33', '金华市', '2');
INSERT INTO `yys_area_daili` VALUES ('13726', '3308', '33', '衢州市', '2');
INSERT INTO `yys_area_daili` VALUES ('13840', '3309', '33', '舟山市', '2');
INSERT INTO `yys_area_daili` VALUES ('13890', '3310', '33', '台州市', '2');
INSERT INTO `yys_area_daili` VALUES ('14033', '3311', '33', '丽水市', '2');
INSERT INTO `yys_area_daili` VALUES ('14234', '34', '0', '安徽省', '1');
INSERT INTO `yys_area_daili` VALUES ('14235', '3401', '34', '合肥市', '2');
INSERT INTO `yys_area_daili` VALUES ('14351', '3402', '34', '芜湖市', '2');
INSERT INTO `yys_area_daili` VALUES ('14410', '3403', '34', '蚌埠市', '2');
INSERT INTO `yys_area_daili` VALUES ('14500', '3404', '34', '淮南市', '2');
INSERT INTO `yys_area_daili` VALUES ('14575', '3405', '34', '马鞍山市', '2');
INSERT INTO `yys_area_daili` VALUES ('14612', '3406', '34', '淮北市', '2');
INSERT INTO `yys_area_daili` VALUES ('14653', '3407', '34', '铜陵市', '2');
INSERT INTO `yys_area_daili` VALUES ('14687', '3408', '34', '安庆市', '2');
INSERT INTO `yys_area_daili` VALUES ('14887', '3410', '34', '黄山市', '2');
INSERT INTO `yys_area_daili` VALUES ('15005', '3411', '34', '滁州市', '2');
INSERT INTO `yys_area_daili` VALUES ('15194', '3412', '34', '阜阳市', '2');
INSERT INTO `yys_area_daili` VALUES ('15378', '3413', '34', '宿州市', '2');
INSERT INTO `yys_area_daili` VALUES ('15499', '3414', '34', '巢湖市', '2');
INSERT INTO `yys_area_daili` VALUES ('15586', '3415', '34', '六安市', '2');
INSERT INTO `yys_area_daili` VALUES ('15764', '3416', '34', '亳州市', '2');
INSERT INTO `yys_area_daili` VALUES ('15871', '3417', '34', '池州市', '2');
INSERT INTO `yys_area_daili` VALUES ('15958', '3418', '34', '宣城市', '2');
INSERT INTO `yys_area_daili` VALUES ('16068', '35', '0', '福建省', '1');
INSERT INTO `yys_area_daili` VALUES ('16069', '3501', '35', '福州市', '2');
INSERT INTO `yys_area_daili` VALUES ('16278', '3502', '35', '厦门市', '2');
INSERT INTO `yys_area_daili` VALUES ('16348', '3503', '35', '莆田市', '2');
INSERT INTO `yys_area_daili` VALUES ('16412', '3504', '35', '三明市', '2');
INSERT INTO `yys_area_daili` VALUES ('16572', '3505', '35', '泉州市', '2');
INSERT INTO `yys_area_daili` VALUES ('16754', '3506', '35', '漳州市', '2');
INSERT INTO `yys_area_daili` VALUES ('16924', '3507', '35', '南平市', '2');
INSERT INTO `yys_area_daili` VALUES ('17006', '350725104', '350725', '\"镇前镇', '0');
INSERT INTO `yys_area_daili` VALUES ('17009', '350725202', '350725', '\"杨源乡', '0');
INSERT INTO `yys_area_daili` VALUES ('17010', '350725203', '350725', '\"澄源乡', '0');
INSERT INTO `yys_area_daili` VALUES ('17011', '350725204', '350725', '\"岭腰乡', '0');
INSERT INTO `yys_area_daili` VALUES ('17077', '3508', '35', '龙岩市', '2');
INSERT INTO `yys_area_daili` VALUES ('17219', '3509', '35', '宁德市　', '2');
INSERT INTO `yys_area_daili` VALUES ('17359', '36', '0', '江西省', '1');
INSERT INTO `yys_area_daili` VALUES ('17360', '3601', '36', '南昌市', '2');
INSERT INTO `yys_area_daili` VALUES ('17408', '360111105', '360111', '\"塘山镇', '0');
INSERT INTO `yys_area_daili` VALUES ('17477', '360123105', '360123', '\"东阳镇', '0');
INSERT INTO `yys_area_daili` VALUES ('17508', '3602', '36', '景德镇市', '2');
INSERT INTO `yys_area_daili` VALUES ('17589', '3603', '36', '萍乡市', '2');
INSERT INTO `yys_area_daili` VALUES ('17651', '3604', '36', '九江市', '2');
INSERT INTO `yys_area_daili` VALUES ('17894', '3605', '36', '新余市', '2');
INSERT INTO `yys_area_daili` VALUES ('17934', '3606', '36', '鹰潭市', '2');
INSERT INTO `yys_area_daili` VALUES ('17999', '3607', '36', '赣州市', '2');
INSERT INTO `yys_area_daili` VALUES ('18330', '3608', '36', '吉安市', '2');
INSERT INTO `yys_area_daili` VALUES ('18598', '3609', '36', '宜春市', '2');
INSERT INTO `yys_area_daili` VALUES ('18829', '3610', '36', '抚州市', '2');
INSERT INTO `yys_area_daili` VALUES ('19024', '3611', '36', '上饶市', '2');
INSERT INTO `yys_area_daili` VALUES ('19280', '37', '0', '山东省', '1');
INSERT INTO `yys_area_daili` VALUES ('19281', '3701', '37', '济南市', '2');
INSERT INTO `yys_area_daili` VALUES ('19421', '3702', '37', '青岛市', '2');
INSERT INTO `yys_area_daili` VALUES ('19608', '3703', '37', '淄博市', '2');
INSERT INTO `yys_area_daili` VALUES ('19724', '3704', '37', '枣庄市', '2');
INSERT INTO `yys_area_daili` VALUES ('19796', '3705', '37', '东营市', '2');
INSERT INTO `yys_area_daili` VALUES ('19846', '3706', '37', '烟台市', '2');
INSERT INTO `yys_area_daili` VALUES ('20012', '3707', '37', '潍坊市', '2');
INSERT INTO `yys_area_daili` VALUES ('20216', '3708', '37', '济宁市', '2');
INSERT INTO `yys_area_daili` VALUES ('20224', '370802006', '370802', '\"观音阁街道办事处', '0');
INSERT INTO `yys_area_daili` VALUES ('20241', '370826', '3708', '\"微山县', '0');
INSERT INTO `yys_area_daili` VALUES ('20244', '370826101', '370826', '\"韩庄镇', '0');
INSERT INTO `yys_area_daili` VALUES ('20245', '370826102', '370826', '\"欢城镇', '0');
INSERT INTO `yys_area_daili` VALUES ('20246', '370826103', '370826', '\"南阳镇', '0');
INSERT INTO `yys_area_daili` VALUES ('20248', '370826105', '370826', '\"傅村镇', '0');
INSERT INTO `yys_area_daili` VALUES ('20252', '370826205', '370826', '\"马坡乡', '0');
INSERT INTO `yys_area_daili` VALUES ('20253', '370826206', '370826', '\"高楼乡', '0');
INSERT INTO `yys_area_daili` VALUES ('20256', '370826210', '370826', '\"西平乡', '0');
INSERT INTO `yys_area_daili` VALUES ('20386', '3709', '37', '泰安市', '2');
INSERT INTO `yys_area_daili` VALUES ('20480', '3710', '37', '威海市', '2');
INSERT INTO `yys_area_daili` VALUES ('20558', '3711', '37', '日照市', '2');
INSERT INTO `yys_area_daili` VALUES ('20618', '3712', '37', '莱芜市', '2');
INSERT INTO `yys_area_daili` VALUES ('20642', '3713', '37', '临沂市', '2');
INSERT INTO `yys_area_daili` VALUES ('20836', '3714', '37', '德州市', '2');
INSERT INTO `yys_area_daili` VALUES ('20981', '3715', '37', '聊城市', '2');
INSERT INTO `yys_area_daili` VALUES ('21123', '3716', '37', '滨州市', '2');
INSERT INTO `yys_area_daili` VALUES ('21218', '3717', '37', '菏泽市', '2');
INSERT INTO `yys_area_daili` VALUES ('21387', '41', '0', '河南省', '1');
INSERT INTO `yys_area_daili` VALUES ('21388', '4101', '41', '郑州市', '2');
INSERT INTO `yys_area_daili` VALUES ('21575', '4102', '41', '开封市', '2');
INSERT INTO `yys_area_daili` VALUES ('21711', '4103', '41', '洛阳市', '2');
INSERT INTO `yys_area_daili` VALUES ('21913', '4104', '41', '平顶山市', '2');
INSERT INTO `yys_area_daili` VALUES ('22058', '4105', '41', '安阳市', '2');
INSERT INTO `yys_area_daili` VALUES ('22206', '4106', '41', '鹤壁市', '2');
INSERT INTO `yys_area_daili` VALUES ('22251', '4107', '41', '新乡市', '2');
INSERT INTO `yys_area_daili` VALUES ('22423', '4108', '41', '焦作市', '2');
INSERT INTO `yys_area_daili` VALUES ('22558', '4109', '41', '濮阳市', '2');
INSERT INTO `yys_area_daili` VALUES ('22655', '4110', '41', '许昌市', '2');
INSERT INTO `yys_area_daili` VALUES ('22762', '4111', '41', '漯河市', '2');
INSERT INTO `yys_area_daili` VALUES ('22824', '4112', '41', '三门峡市', '2');
INSERT INTO `yys_area_daili` VALUES ('22910', '4113', '41', '南阳市', '2');
INSERT INTO `yys_area_daili` VALUES ('23170', '4114', '41', '商丘市', '2');
INSERT INTO `yys_area_daili` VALUES ('23372', '4115', '41', '信阳市', '2');
INSERT INTO `yys_area_daili` VALUES ('23589', '4116', '41', '周口市', '2');
INSERT INTO `yys_area_daili` VALUES ('23818', '4117', '41', '驻马店市', '2');
INSERT INTO `yys_area_daili` VALUES ('24022', '42', '0', '湖北省', '1');
INSERT INTO `yys_area_daili` VALUES ('24023', '4201', '42', '武汉市', '2');
INSERT INTO `yys_area_daili` VALUES ('24224', '4202', '42', '黄石市', '2');
INSERT INTO `yys_area_daili` VALUES ('24291', '4203', '42', '十堰市', '2');
INSERT INTO `yys_area_daili` VALUES ('24453', '4205', '42', '宜昌市', '2');
INSERT INTO `yys_area_daili` VALUES ('24580', '4206', '42', '襄樊市', '2');
INSERT INTO `yys_area_daili` VALUES ('24706', '4207', '42', '鄂州市', '2');
INSERT INTO `yys_area_daili` VALUES ('24737', '4208', '42', '荆门市', '2');
INSERT INTO `yys_area_daili` VALUES ('24816', '4209', '42', '孝感市', '2');
INSERT INTO `yys_area_daili` VALUES ('24949', '4210', '42', '荆州市', '2');
INSERT INTO `yys_area_daili` VALUES ('25086', '4211', '42', '黄冈市', '2');
INSERT INTO `yys_area_daili` VALUES ('25249', '4212', '42', '咸宁市', '2');
INSERT INTO `yys_area_daili` VALUES ('25335', '4213', '42', '随州市', '2');
INSERT INTO `yys_area_daili` VALUES ('25388', '4228', '42', '恩施州', '2');
INSERT INTO `yys_area_daili` VALUES ('25487', '4290', '42', '省直辖行政单位', '2');
INSERT INTO `yys_area_daili` VALUES ('25579', '43', '0', '湖南省', '1');
INSERT INTO `yys_area_daili` VALUES ('25580', '4301', '43', '长沙市', '2');
INSERT INTO `yys_area_daili` VALUES ('25758', '4302', '43', '株洲市', '2');
INSERT INTO `yys_area_daili` VALUES ('25912', '4303', '43', '湘潭市', '2');
INSERT INTO `yys_area_daili` VALUES ('26001', '4304', '43', '衡阳市', '2');
INSERT INTO `yys_area_daili` VALUES ('26242', '4305', '43', '邵阳市', '2');
INSERT INTO `yys_area_daili` VALUES ('26485', '4306', '43', '岳阳市', '2');
INSERT INTO `yys_area_daili` VALUES ('26683', '4307', '43', '常德市', '2');
INSERT INTO `yys_area_daili` VALUES ('26925', '4308', '43', '张家界市', '2');
INSERT INTO `yys_area_daili` VALUES ('27038', '4309', '43', '益阳市', '2');
INSERT INTO `yys_area_daili` VALUES ('27147', '4310', '43', '郴州市', '2');
INSERT INTO `yys_area_daili` VALUES ('27418', '4311', '43', '永州市', '2');
INSERT INTO `yys_area_daili` VALUES ('27650', '4312', '43', '怀化市', '2');
INSERT INTO `yys_area_daili` VALUES ('27963', '4313', '43', '娄底市', '2');
INSERT INTO `yys_area_daili` VALUES ('28065', '4331', '43', '湘西土家族苗族自治州', '2');
INSERT INTO `yys_area_daili` VALUES ('28240', '44', '0', '广东省', '1');
INSERT INTO `yys_area_daili` VALUES ('28241', '4401', '44', '广州市', '2');
INSERT INTO `yys_area_daili` VALUES ('28421', '4402', '44', '韶关市', '2');
INSERT INTO `yys_area_daili` VALUES ('28558', '4403', '44', '深圳市', '2');
INSERT INTO `yys_area_daili` VALUES ('28626', '4404', '44', '珠海市', '2');
INSERT INTO `yys_area_daili` VALUES ('28659', '4405', '44', '汕头市', '2');
INSERT INTO `yys_area_daili` VALUES ('28737', '4406', '44', '佛山市', '2');
INSERT INTO `yys_area_daili` VALUES ('28785', '4407', '44', '江门市', '2');
INSERT INTO `yys_area_daili` VALUES ('28880', '4408', '44', '湛江市', '2');
INSERT INTO `yys_area_daili` VALUES ('29026', '4409', '44', '茂名市', '2');
INSERT INTO `yys_area_daili` VALUES ('29159', '4412', '44', '肇庆市', '2');
INSERT INTO `yys_area_daili` VALUES ('29282', '4413', '44', '惠州市', '2');
INSERT INTO `yys_area_daili` VALUES ('29371', '4414', '44', '梅州市', '2');
INSERT INTO `yys_area_daili` VALUES ('29498', '4415', '44', '汕尾市', '2');
INSERT INTO `yys_area_daili` VALUES ('29568', '4416', '44', '河源市', '2');
INSERT INTO `yys_area_daili` VALUES ('29679', '4417', '44', '阳江市', '2');
INSERT INTO `yys_area_daili` VALUES ('29755', '4418', '44', '清远市', '2');
INSERT INTO `yys_area_daili` VALUES ('29855', '4419', '44', '东莞市', '2');
INSERT INTO `yys_area_daili` VALUES ('29890', '4420', '44', '中山市', '2');
INSERT INTO `yys_area_daili` VALUES ('29915', '4451', '44', '潮州市', '2');
INSERT INTO `yys_area_daili` VALUES ('29977', '4452', '44', '揭阳市', '2');
INSERT INTO `yys_area_daili` VALUES ('30086', '4453', '44', '云浮市', '2');
INSERT INTO `yys_area_daili` VALUES ('30164', '45', '0', '广西壮族自治区', '1');
INSERT INTO `yys_area_daili` VALUES ('30165', '4501', '45', '南宁市', '2');
INSERT INTO `yys_area_daili` VALUES ('30319', '4502', '45', '柳州市', '2');
INSERT INTO `yys_area_daili` VALUES ('30448', '4503', '45', '桂林市', '2');
INSERT INTO `yys_area_daili` VALUES ('30613', '4504', '45', '梧州市', '2');
INSERT INTO `yys_area_daili` VALUES ('30688', '4505', '45', '北海市', '2');
INSERT INTO `yys_area_daili` VALUES ('30724', '4506', '45', '防城港市', '2');
INSERT INTO `yys_area_daili` VALUES ('30762', '4507', '45', '钦州市', '2');
INSERT INTO `yys_area_daili` VALUES ('30834', '4508', '45', '贵港市', '2');
INSERT INTO `yys_area_daili` VALUES ('30915', '4509', '45', '玉林市', '2');
INSERT INTO `yys_area_daili` VALUES ('31033', '4510', '45', '百色市', '2');
INSERT INTO `yys_area_daili` VALUES ('31184', '4511', '45', '贺州市', '2');
INSERT INTO `yys_area_daili` VALUES ('31249', '4512', '45', '河池市', '2');
INSERT INTO `yys_area_daili` VALUES ('31401', '4513', '45', '来宾市', '2');
INSERT INTO `yys_area_daili` VALUES ('31478', '4514', '45', '崇左市', '2');
INSERT INTO `yys_area_daili` VALUES ('31563', '46', '0', '海南省', '1');
INSERT INTO `yys_area_daili` VALUES ('31564', '4601', '46', '海口市', '2');
INSERT INTO `yys_area_daili` VALUES ('31618', '4602', '46', '三亚市', '2');
INSERT INTO `yys_area_daili` VALUES ('31633', '4690', '46', '省属虚拟市', '2');
INSERT INTO `yys_area_daili` VALUES ('31929', '50', '0', '重庆市', '1');
INSERT INTO `yys_area_daili` VALUES ('31930', '5001', '50', '市辖区', '2');
INSERT INTO `yys_area_daili` VALUES ('32380', '5002', '50', '县', '2');
INSERT INTO `yys_area_daili` VALUES ('33007', '51', '0', '四川省', '1');
INSERT INTO `yys_area_daili` VALUES ('33008', '5101', '51', '成都市', '2');
INSERT INTO `yys_area_daili` VALUES ('33344', '5103', '51', '自贡市', '2');
INSERT INTO `yys_area_daili` VALUES ('33460', '5104', '51', '攀枝花市', '2');
INSERT INTO `yys_area_daili` VALUES ('33528', '5105', '51', '泸州市', '2');
INSERT INTO `yys_area_daili` VALUES ('33681', '5106', '51', '德阳市', '2');
INSERT INTO `yys_area_daili` VALUES ('33817', '5107', '51', '绵阳市', '2');
INSERT INTO `yys_area_daili` VALUES ('34120', '5108', '51', '广元市', '2');
INSERT INTO `yys_area_daili` VALUES ('34376', '5109', '51', '遂宁市', '2');
INSERT INTO `yys_area_daili` VALUES ('34501', '5110', '51', '内江市', '2');
INSERT INTO `yys_area_daili` VALUES ('34628', '5111', '51', '乐山市', '2');
INSERT INTO `yys_area_daili` VALUES ('34859', '5113', '51', '南充市', '2');
INSERT INTO `yys_area_daili` VALUES ('35288', '5114', '51', '眉山市', '2');
INSERT INTO `yys_area_daili` VALUES ('35427', '5115', '51', '宜宾市', '2');
INSERT INTO `yys_area_daili` VALUES ('35625', '5116', '51', '广安市', '2');
INSERT INTO `yys_area_daili` VALUES ('35813', '5117', '51', '达州市', '2');
INSERT INTO `yys_area_daili` VALUES ('36136', '5118', '51', '雅安市', '2');
INSERT INTO `yys_area_daili` VALUES ('36299', '5119', '51', '巴中市', '2');
INSERT INTO `yys_area_daili` VALUES ('36497', '5120', '51', '资阳市', '2');
INSERT INTO `yys_area_daili` VALUES ('36679', '5132', '51', '阿坝州', '2');
INSERT INTO `yys_area_daili` VALUES ('36926', '5133', '51', '甘孜藏族自治州', '2');
INSERT INTO `yys_area_daili` VALUES ('37270', '5134', '51', '凉山州', '2');
INSERT INTO `yys_area_daili` VALUES ('37906', '52', '0', '贵州省', '1');
INSERT INTO `yys_area_daili` VALUES ('37907', '5201', '52', '贵阳市', '2');
INSERT INTO `yys_area_daili` VALUES ('38042', '5202', '52', '六盘水市', '2');
INSERT INTO `yys_area_daili` VALUES ('38145', '5203', '52', '遵义市', '2');
INSERT INTO `yys_area_daili` VALUES ('38402', '5204', '52', '安顺市', '2');
INSERT INTO `yys_area_daili` VALUES ('38497', '5222', '52', '铜仁地区', '2');
INSERT INTO `yys_area_daili` VALUES ('38677', '5223', '52', '黔西南州', '2');
INSERT INTO `yys_area_daili` VALUES ('38816', '5224', '52', '毕节地区', '2');
INSERT INTO `yys_area_daili` VALUES ('39075', '5226', '52', '黔东南苗族侗族自治州', '2');
INSERT INTO `yys_area_daili` VALUES ('39302', '5227', '52', '黔南布依族苗族自治州', '2');
INSERT INTO `yys_area_daili` VALUES ('39556', '53', '0', '云南省', '1');
INSERT INTO `yys_area_daili` VALUES ('39557', '5301', '53', '昆明市', '2');
INSERT INTO `yys_area_daili` VALUES ('39710', '5303', '53', '曲靖市', '2');
INSERT INTO `yys_area_daili` VALUES ('39836', '5304', '53', '玉溪市', '2');
INSERT INTO `yys_area_daili` VALUES ('39923', '5305', '53', '保山市', '2');
INSERT INTO `yys_area_daili` VALUES ('40004', '5306', '53', '昭通市', '2');
INSERT INTO `yys_area_daili` VALUES ('40160', '5307', '53', '丽江市', '2');
INSERT INTO `yys_area_daili` VALUES ('40230', '5308', '53', '思茅市', '2');
INSERT INTO `yys_area_daili` VALUES ('40348', '5309', '53', '临沧市', '2');
INSERT INTO `yys_area_daili` VALUES ('40441', '5323', '53', '楚雄州', '2');
INSERT INTO `yys_area_daili` VALUES ('40555', '5325', '53', '红河州', '2');
INSERT INTO `yys_area_daili` VALUES ('40705', '5326', '53', '文山州', '2');
INSERT INTO `yys_area_daili` VALUES ('40816', '5328', '53', '西双版纳州', '2');
INSERT INTO `yys_area_daili` VALUES ('40852', '5329', '53', '大理州', '2');
INSERT INTO `yys_area_daili` VALUES ('40979', '5331', '53', '德宏州', '2');
INSERT INTO `yys_area_daili` VALUES ('41036', '5333', '53', '怒江州', '2');
INSERT INTO `yys_area_daili` VALUES ('41070', '5334', '53', '迪庆州', '2');
INSERT INTO `yys_area_daili` VALUES ('41103', '54', '0', '西藏自治区', '1');
INSERT INTO `yys_area_daili` VALUES ('41104', '5401', '54', '拉萨市', '2');
INSERT INTO `yys_area_daili` VALUES ('41178', '5421', '54', '昌都地区', '2');
INSERT INTO `yys_area_daili` VALUES ('41328', '5422', '54', '山南地区', '2');
INSERT INTO `yys_area_daili` VALUES ('41423', '5423', '54', '日喀则地区', '2');
INSERT INTO `yys_area_daili` VALUES ('41645', '5424', '54', '那曲地区', '2');
INSERT INTO `yys_area_daili` VALUES ('41770', '5425', '54', '阿里地区', '2');
INSERT INTO `yys_area_daili` VALUES ('41814', '5426', '54', '林芝地区', '2');
INSERT INTO `yys_area_daili` VALUES ('41877', '61', '0', '陕西省', '1');
INSERT INTO `yys_area_daili` VALUES ('41878', '6101', '61', '西安市', '2');
INSERT INTO `yys_area_daili` VALUES ('42069', '6102', '61', '铜川市', '2');
INSERT INTO `yys_area_daili` VALUES ('42076', '610202100', '610202', '\"黄堡镇', '0');
INSERT INTO `yys_area_daili` VALUES ('42078', '610202201', '610202', '\"王益乡', '0');
INSERT INTO `yys_area_daili` VALUES ('42119', '6103', '61', '宝鸡市', '2');
INSERT INTO `yys_area_daili` VALUES ('42287', '6104', '61', '咸阳市', '2');
INSERT INTO `yys_area_daili` VALUES ('42490', '6105', '61', '渭南市', '2');
INSERT INTO `yys_area_daili` VALUES ('42703', '6106', '61', '延安市', '2');
INSERT INTO `yys_area_daili` VALUES ('42888', '6107', '61', '汉中市', '2');
INSERT INTO `yys_area_daili` VALUES ('43136', '6108', '61', '榆林市', '2');
INSERT INTO `yys_area_daili` VALUES ('43379', '6109', '61', '安康市', '2');
INSERT INTO `yys_area_daili` VALUES ('43523', '610926100', '610926', '\"城关镇', '0');
INSERT INTO `yys_area_daili` VALUES ('43592', '6110', '61', '商洛市', '2');
INSERT INTO `yys_area_daili` VALUES ('43776', '62', '0', '甘肃省', '1');
INSERT INTO `yys_area_daili` VALUES ('43777', '6201', '62', '兰州市', '2');
INSERT INTO `yys_area_daili` VALUES ('43904', '6202', '62', '嘉峪关市', '2');
INSERT INTO `yys_area_daili` VALUES ('43914', '6203', '62', '金昌市', '2');
INSERT INTO `yys_area_daili` VALUES ('43936', '6204', '62', '白银市', '2');
INSERT INTO `yys_area_daili` VALUES ('44022', '6205', '62', '天水市', '2');
INSERT INTO `yys_area_daili` VALUES ('44154', '6206', '62', '武威市', '2');
INSERT INTO `yys_area_daili` VALUES ('44265', '6207', '62', '张掖市', '2');
INSERT INTO `yys_area_daili` VALUES ('44352', '6208', '62', '平凉市', '2');
INSERT INTO `yys_area_daili` VALUES ('44477', '6209', '62', '酒泉市', '2');
INSERT INTO `yys_area_daili` VALUES ('44569', '6210', '62', '庆阳市', '2');
INSERT INTO `yys_area_daili` VALUES ('44699', '6211', '62', '定西市', '2');
INSERT INTO `yys_area_daili` VALUES ('44829', '6212', '62', '陇南市', '2');
INSERT INTO `yys_area_daili` VALUES ('45035', '6229', '62', '临夏州', '2');
INSERT INTO `yys_area_daili` VALUES ('45174', '6230', '62', '甘南州', '2');
INSERT INTO `yys_area_daili` VALUES ('45286', '63', '0', '青海省', '1');
INSERT INTO `yys_area_daili` VALUES ('45287', '6301', '63', '西宁市', '2');
INSERT INTO `yys_area_daili` VALUES ('45368', '6321', '63', '海东地区', '2');
INSERT INTO `yys_area_daili` VALUES ('45471', '6322', '63', '海北州', '2');
INSERT INTO `yys_area_daili` VALUES ('45510', '6323', '63', '黄南州', '2');
INSERT INTO `yys_area_daili` VALUES ('45548', '6325', '63', '海南州', '2');
INSERT INTO `yys_area_daili` VALUES ('45597', '6326', '63', '果洛州', '2');
INSERT INTO `yys_area_daili` VALUES ('45648', '6327', '63', '玉树州', '2');
INSERT INTO `yys_area_daili` VALUES ('45701', '6328', '63', '海西州', '2');
INSERT INTO `yys_area_daili` VALUES ('45753', '64', '0', '宁夏回族自治区', '1');
INSERT INTO `yys_area_daili` VALUES ('45754', '6401', '64', '银川市', '2');
INSERT INTO `yys_area_daili` VALUES ('45825', '6402', '64', '石嘴山市', '2');
INSERT INTO `yys_area_daili` VALUES ('45871', '6403', '64', '吴忠市', '2');
INSERT INTO `yys_area_daili` VALUES ('45926', '6404', '64', '固原市', '2');
INSERT INTO `yys_area_daili` VALUES ('45999', '6405', '64', '中卫市', '2');
INSERT INTO `yys_area_daili` VALUES ('46047', '65', '0', '新疆维吾尔自治区', '1');
INSERT INTO `yys_area_daili` VALUES ('46048', '6501', '65', '乌鲁木齐市', '2');
INSERT INTO `yys_area_daili` VALUES ('46138', '6502', '65', '克拉玛依市', '2');
INSERT INTO `yys_area_daili` VALUES ('46162', '6521', '65', '吐鲁番地区', '2');
INSERT INTO `yys_area_daili` VALUES ('46197', '6522', '65', '哈密地区', '2');
INSERT INTO `yys_area_daili` VALUES ('46255', '6523', '65', '昌吉州', '2');
INSERT INTO `yys_area_daili` VALUES ('46380', '6527', '65', '博尔塔拉蒙古自治州', '2');
INSERT INTO `yys_area_daili` VALUES ('46422', '6528', '65', '巴音郭楞蒙古自治州', '2');
INSERT INTO `yys_area_daili` VALUES ('46551', '6529', '65', '阿克苏地区', '2');
INSERT INTO `yys_area_daili` VALUES ('46688', '6530', '65', '克州', '2');
INSERT INTO `yys_area_daili` VALUES ('46747', '6531', '65', '喀什地区', '2');
INSERT INTO `yys_area_daili` VALUES ('46957', '6532', '65', '和田地区', '2');
INSERT INTO `yys_area_daili` VALUES ('47069', '6540', '65', '伊犁州', '2');
INSERT INTO `yys_area_daili` VALUES ('47241', '6542', '65', '塔城地区', '2');
INSERT INTO `yys_area_daili` VALUES ('47374', '6543', '65', '阿勒泰地区', '2');
INSERT INTO `yys_area_daili` VALUES ('47450', '6590', '65', '省直辖行政单位', '2');
INSERT INTO `yys_area_daili` VALUES ('47493', '71', '0', '台湾省', '1');
INSERT INTO `yys_area_daili` VALUES ('47494', '81', '0', '香港特别行政区', '1');
INSERT INTO `yys_area_daili` VALUES ('47495', '82', '0', '澳门特别行政区', '1');
