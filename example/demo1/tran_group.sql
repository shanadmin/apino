/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : tran_group

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 02/07/2020 10:16:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hisi_course
-- ----------------------------
DROP TABLE IF EXISTS `hisi_course`;
CREATE TABLE `hisi_course`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` int(10) NULL DEFAULT NULL,
  `teacher_id` int(10) NULL DEFAULT NULL,
  `desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hisi_course
-- ----------------------------
INSERT INTO `hisi_course` VALUES (1, '英语', 1585584000, 3, 'asdf');
INSERT INTO `hisi_course` VALUES (4, '语文', 1583078400, 19, '我是一门语文');
INSERT INTO `hisi_course` VALUES (5, '数学', 1584288000, 18, '我是数学');

-- ----------------------------
-- Table structure for hisi_course_appoint
-- ----------------------------
DROP TABLE IF EXISTS `hisi_course_appoint`;
CREATE TABLE `hisi_course_appoint`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '前台课程预约',
  `course` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hisi_course_appoint
-- ----------------------------
INSERT INTO `hisi_course_appoint` VALUES (3, '阿斯蒂芬', '123123', '14');
INSERT INTO `hisi_course_appoint` VALUES (2, '1231', '13131', '4123');
INSERT INTO `hisi_course_appoint` VALUES (4, '123', '13145211410', '12');
INSERT INTO `hisi_course_appoint` VALUES (5, 'sx', '11111111111', '15');
INSERT INTO `hisi_course_appoint` VALUES (6, '11', '12345123451', '11');

-- ----------------------------
-- Table structure for hisi_developer_versions
-- ----------------------------
DROP TABLE IF EXISTS `hisi_developer_versions`;
CREATE TABLE `hisi_developer_versions`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '类型：1模块，2插件，3模板',
  `app_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '应用code',
  `app_version` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '应用版本号',
  `update_log` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '应用更新日志',
  `update_file` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '更新文件记录',
  `delete_file` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '删除文件记录',
  `update_sql` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '更新sql',
  `install_package` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '安装包',
  `upgrade_package` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '升级包',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '发布状态：1已发布，0待发布',
  `ctime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[开发助手] 版本记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for hisi_front_user
-- ----------------------------
DROP TABLE IF EXISTS `hisi_front_user`;
CREATE TABLE `hisi_front_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hisi_front_user
-- ----------------------------
INSERT INTO `hisi_front_user` VALUES (1, 'qweqwe', 'qweqwe');
INSERT INTO `hisi_front_user` VALUES (2, 'ewqewq', 'ewqewq');
INSERT INTO `hisi_front_user` VALUES (4, '月', '123456');
INSERT INTO `hisi_front_user` VALUES (5, 'qq', '123456');

-- ----------------------------
-- Table structure for hisi_job
-- ----------------------------
DROP TABLE IF EXISTS `hisi_job`;
CREATE TABLE `hisi_job`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '招聘ID',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hisi_job
-- ----------------------------
INSERT INTO `hisi_job` VALUES (4, '123', '123123');
INSERT INTO `hisi_job` VALUES (3, '书法老师', '有 经验有能力');

-- ----------------------------
-- Table structure for hisi_jobs
-- ----------------------------
DROP TABLE IF EXISTS `hisi_jobs`;
CREATE TABLE `hisi_jobs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED NULL DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for hisi_news
-- ----------------------------
DROP TABLE IF EXISTS `hisi_news`;
CREATE TABLE `hisi_news`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '新闻咨询',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ctime` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hisi_news
-- ----------------------------
INSERT INTO `hisi_news` VALUES (2, '啊手动阀手动阀', 'https://www.baidu.com/', 0);
INSERT INTO `hisi_news` VALUES (4, '呀呀呀呀呀呀晕晕晕晕晕晕晕晕晕晕晕晕晕晕晕晕晕晕晕晕晕', 'https://www.sohu.com/', 0);
INSERT INTO `hisi_news` VALUES (5, 'www', 'http://daohang.qq.com/?fr=favstart', 0);
INSERT INTO `hisi_news` VALUES (6, 'ssss', 'https://www.baidu.com/index.php?tn=98012088_5_dg&amp;ch=2', 0);

-- ----------------------------
-- Table structure for hisi_student
-- ----------------------------
DROP TABLE IF EXISTS `hisi_student`;
CREATE TABLE `hisi_student`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '学生ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `sex` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0女1男',
  `lift` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '身高cm',
  `weight` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '体重kg',
  `class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '年级',
  `school` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '学校',
  `mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '电话',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '家庭住址',
  `reg_time` int(10) NOT NULL DEFAULT 0 COMMENT '报名时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hisi_student
-- ----------------------------
INSERT INTO `hisi_student` VALUES (5, '三三', 0, '167', '40', '6', '深圳', '123456', '深圳', 1581436800);
INSERT INTO `hisi_student` VALUES (3, '我是一', 0, '160', '33', '3', '上海小学', '123456', '上海', 1583078400);
INSERT INTO `hisi_student` VALUES (4, '二二', 0, '134', '34', '3', '北京', '123456', '北京', 1585584000);
INSERT INTO `hisi_student` VALUES (6, '思思', 0, '156', '45', '7', '广东', '12345', '广东', 1583683200);
INSERT INTO `hisi_student` VALUES (7, '五五', 1, '170', '60', '8', '徐州', '170', '徐州', 1584892800);
INSERT INTO `hisi_student` VALUES (8, '六六', 1, '167', '45', '4', '六六', '123456', '六六', 1584374400);
INSERT INTO `hisi_student` VALUES (9, '七七', 1, '155', '54', '5', '七七', '155', '七七', 1580227200);
INSERT INTO `hisi_student` VALUES (10, '八八', 1, '144', '55', '5', '八八', '2277', '八八', 1584806400);
INSERT INTO `hisi_student` VALUES (11, '九九', 0, '157', '45', '6', '九九', '157', '九九', 1584892800);
INSERT INTO `hisi_student` VALUES (12, '史诗', 0, '111', '11', '1', '史诗', '111', '史诗', 1584806400);
INSERT INTO `hisi_student` VALUES (13, '十一', 0, '154', '33', '3', '十一', '145', '十一', 1585584000);
INSERT INTO `hisi_student` VALUES (14, '十二', 0, '122', '22', '2', '十二', '122', '十二', 1583683200);

-- ----------------------------
-- Table structure for hisi_student_other
-- ----------------------------
DROP TABLE IF EXISTS `hisi_student_other`;
CREATE TABLE `hisi_student_other`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '学生生活日常或成绩对比',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0生活1成绩',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `student_id` int(10) NULL DEFAULT NULL COMMENT '学生ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hisi_student_other
-- ----------------------------
INSERT INTO `hisi_student_other` VALUES (1, 'qwe', 1, '法大水法孙菲菲烦烦烦烦烦烦烦烦烦烦烦烦爱的色放啊手动阀手动阀手动阀', 1);
INSERT INTO `hisi_student_other` VALUES (3, '语文', 1, '99分', 3);
INSERT INTO `hisi_student_other` VALUES (5, '思思同学的数学', 1, '数学表现', 6);
INSERT INTO `hisi_student_other` VALUES (6, '三三同学第一周', 1, '帮助他人', 5);
INSERT INTO `hisi_student_other` VALUES (7, '思思的语文成绩', 1, '要加把劲', 6);

-- ----------------------------
-- Table structure for hisi_student_other_discuss
-- ----------------------------
DROP TABLE IF EXISTS `hisi_student_other_discuss`;
CREATE TABLE `hisi_student_other_discuss`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `student_other_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ctime` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hisi_student_other_discuss
-- ----------------------------
INSERT INTO `hisi_student_other_discuss` VALUES (1, 1, 1, '123', 1584626078);
INSERT INTO `hisi_student_other_discuss` VALUES (2, 1, 1, '啊啊啊啊时代', 1584626416);
INSERT INTO `hisi_student_other_discuss` VALUES (9, 3, 22, '真的吗', 1585751278);
INSERT INTO `hisi_student_other_discuss` VALUES (8, 3, 3, '还不错', 1585751222);
INSERT INTO `hisi_student_other_discuss` VALUES (6, 1, 3, 'asdf', 1584678848);
INSERT INTO `hisi_student_other_discuss` VALUES (7, 1, 3, '测试', 1584678880);
INSERT INTO `hisi_student_other_discuss` VALUES (10, 3, 3, '是的', 1585773945);
INSERT INTO `hisi_student_other_discuss` VALUES (11, 3, 22, '11', 1585774029);
INSERT INTO `hisi_student_other_discuss` VALUES (12, 5, 20, '44', 1585774074);
INSERT INTO `hisi_student_other_discuss` VALUES (13, 6, 21, '收到', 1585853253);

-- ----------------------------
-- Table structure for hisi_student_parent
-- ----------------------------
DROP TABLE IF EXISTS `hisi_student_parent`;
CREATE TABLE `hisi_student_parent`  (
  `id` int(10) NOT NULL COMMENT '家长ID',
  `student_id` int(10) NOT NULL COMMENT '学生ID',
  `head_img_url` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '头像',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hisi_student_parent
-- ----------------------------
INSERT INTO `hisi_student_parent` VALUES (22, 3, '\\upload\\img\\20200401\\000fb910c6ea8bcb41d59273832a5326.jpg');
INSERT INTO `hisi_student_parent` VALUES (20, 6, '\\upload\\img\\20200403\\63a04b85d3b193b802d1a6039db83e6c.jpg');
INSERT INTO `hisi_student_parent` VALUES (21, 5, '\\upload\\img\\20200401\\8b6dad7d79a4b5148f2eca9d7354acc2.jpg');
INSERT INTO `hisi_student_parent` VALUES (23, -1, '\\upload\\img\\20200402\\bf4f90714ac5f49b266f51d6e5c3e1c2.jpg');

-- ----------------------------
-- Table structure for hisi_student_special
-- ----------------------------
DROP TABLE IF EXISTS `hisi_student_special`;
CREATE TABLE `hisi_student_special`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '学生风采ID',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '首页图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hisi_student_special
-- ----------------------------
INSERT INTO `hisi_student_special` VALUES (1, '冲刺', '\\upload\\img\\20200402\\dd17963924ed9bcebd09a785b001e32f.jpeg');
INSERT INTO `hisi_student_special` VALUES (3, '123', '\\upload\\img\\20200319\\6235e128d66a9198b33b3a28fe5377f0.png');
INSERT INTO `hisi_student_special` VALUES (6, '春游', '\\upload\\img\\20200401\\34f18d0f19049324e9a6ae39ff4ef00e.jpg');

-- ----------------------------
-- Table structure for hisi_system_annex
-- ----------------------------
DROP TABLE IF EXISTS `hisi_system_annex`;
CREATE TABLE `hisi_system_annex`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '关联的数据ID',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '类型',
  `group` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'sys' COMMENT '文件分组',
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '上传文件',
  `hash` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件hash值',
  `size` decimal(12, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '附件大小KB',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '使用状态(0未使用，1已使用)',
  `ctime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `hash`(`hash`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[系统] 上传附件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for hisi_system_annex_group
-- ----------------------------
DROP TABLE IF EXISTS `hisi_system_annex_group`;
CREATE TABLE `hisi_system_annex_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '附件分组',
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '附件数量',
  `size` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '附件大小kb',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[系统] 附件分组' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for hisi_system_config
-- ----------------------------
DROP TABLE IF EXISTS `hisi_system_config`;
CREATE TABLE `hisi_system_config`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `system` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否为系统配置(1是，0否)',
  `group` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'base' COMMENT '分组',
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置标题',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置名称，由英文字母和下划线组成',
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置值',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'input' COMMENT '配置类型()',
  `options` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置项(选项名:选项值)',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件上传接口',
  `tips` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置提示',
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(1) UNSIGNED NOT NULL COMMENT '状态',
  `ctime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[系统] 系统配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hisi_system_config
-- ----------------------------
INSERT INTO `hisi_system_config` VALUES (1, 1, 'sys', '扩展配置分组', 'config_group', '', 'array', ' ', '', '请按如下格式填写：&lt;br&gt;键值:键名&lt;br&gt;键值:键名&lt;br&gt;&lt;span style=&quot;color:#f00&quot;&gt;键值只能为英文、数字、下划线&lt;/span&gt;', 2, 1, 1492140215, 1492140215);
INSERT INTO `hisi_system_config` VALUES (13, 1, 'base', '网站域名', 'site_domain', '', 'input', '', '', '', 2, 1, 1492140215, 1492140215);
INSERT INTO `hisi_system_config` VALUES (14, 1, 'upload', '图片上传大小限制', 'upload_image_size', '0', 'input', '', '', '单位：KB，0表示不限制大小', 3, 1, 1490841797, 1491040778);
INSERT INTO `hisi_system_config` VALUES (15, 1, 'upload', '允许上传图片格式', 'upload_image_ext', 'jpg,png,gif,jpeg,ico', 'input', '', '', '多个格式请用英文逗号（,）隔开', 4, 1, 1490842130, 1491040778);
INSERT INTO `hisi_system_config` VALUES (16, 1, 'upload', '缩略图裁剪方式', 'thumb_type', '2', 'select', '1:等比例缩放\r\n2:缩放后填充\r\n3:居中裁剪\r\n4:左上角裁剪\r\n5:右下角裁剪\r\n6:固定尺寸缩放\r\n', '', '', 5, 1, 1490842450, 1491040778);
INSERT INTO `hisi_system_config` VALUES (17, 1, 'upload', '图片水印开关', 'image_watermark', '1', 'switch', '0:关闭\r\n1:开启', '', '', 6, 1, 1490842583, 1491040778);
INSERT INTO `hisi_system_config` VALUES (18, 1, 'upload', '图片水印图', 'image_watermark_pic', '', 'image', '', '', '', 7, 1, 1490842679, 1491040778);
INSERT INTO `hisi_system_config` VALUES (19, 1, 'upload', '图片水印透明度', 'image_watermark_opacity', '50', 'input', '', '', '可设置值为0~100，数字越小，透明度越高', 8, 1, 1490857704, 1491040778);
INSERT INTO `hisi_system_config` VALUES (20, 1, 'upload', '图片水印图位置', 'image_watermark_location', '9', 'select', '7:左下角\r\n1:左上角\r\n4:左居中\r\n9:右下角\r\n3:右上角\r\n6:右居中\r\n2:上居中\r\n8:下居中\r\n5:居中', '', '', 9, 1, 1490858228, 1491040778);
INSERT INTO `hisi_system_config` VALUES (21, 1, 'upload', '文件上传大小限制', 'upload_file_size', '0', 'input', '', '', '单位：KB，0表示不限制大小', 1, 1, 1490859167, 1491040778);
INSERT INTO `hisi_system_config` VALUES (22, 1, 'upload', '允许上传文件格式', 'upload_file_ext', 'doc,docx,xls,xlsx,ppt,pptx,pdf,wps,txt,rar,zip', 'input', '', '', '多个格式请用英文逗号（,）隔开', 2, 1, 1490859246, 1491040778);
INSERT INTO `hisi_system_config` VALUES (23, 1, 'upload', '文字水印开关', 'text_watermark', '0', 'switch', '0:关闭\r\n1:开启', '', '', 10, 1, 1490860872, 1491040778);
INSERT INTO `hisi_system_config` VALUES (24, 1, 'upload', '文字水印内容', 'text_watermark_content', '', 'input', '', '', '', 11, 1, 1490861005, 1491040778);
INSERT INTO `hisi_system_config` VALUES (25, 1, 'upload', '文字水印字体', 'text_watermark_font', '', 'file', '', '', '不上传将使用系统默认字体', 12, 1, 1490861117, 1491040778);
INSERT INTO `hisi_system_config` VALUES (26, 1, 'upload', '文字水印字体大小', 'text_watermark_size', '20', 'input', '', '', '单位：px(像素)', 13, 1, 1490861204, 1491040778);
INSERT INTO `hisi_system_config` VALUES (27, 1, 'upload', '文字水印颜色', 'text_watermark_color', '#000000', 'input', '', '', '文字水印颜色，格式:#000000', 14, 1, 1490861482, 1491040778);
INSERT INTO `hisi_system_config` VALUES (28, 1, 'upload', '文字水印位置', 'text_watermark_location', '7', 'select', '7:左下角\r\n1:左上角\r\n4:左居中\r\n9:右下角\r\n3:右上角\r\n6:右居中\r\n2:上居中\r\n8:下居中\r\n5:居中', '', '', 11, 1, 1490861718, 1491040778);
INSERT INTO `hisi_system_config` VALUES (29, 1, 'upload', '缩略图尺寸', 'thumb_size', '300x300;500x500', 'input', '', '', '为空则不生成，生成 500x500 的缩略图，则填写 500x500，多个规格填写参考 300x300;500x500;800x800', 4, 1, 1490947834, 1491040778);
INSERT INTO `hisi_system_config` VALUES (30, 1, 'sys', '开发模式', 'app_debug', '1', 'switch', '0:关闭\r\n1:开启', '', '&lt;strong class=&quot;red&quot;&gt;生产环境下一定要关闭此配置&lt;/strong&gt;', 3, 1, 1491005004, 1492093874);
INSERT INTO `hisi_system_config` VALUES (31, 1, 'sys', '页面Trace', 'app_trace', '0', 'switch', '0:关闭\r\n1:开启', '', '&lt;strong class=&quot;red&quot;&gt;生产环境下一定要关闭此配置&lt;/strong&gt;', 4, 1, 1491005081, 1492093874);
INSERT INTO `hisi_system_config` VALUES (33, 1, 'sys', '富文本编辑器', 'editor', 'umeditor', 'select', 'ueditor:UEditor\r\numeditor:UMEditor\r\nkindeditor:KindEditor\r\nckeditor:CKEditor', '', '', 0, 1, 1491142648, 1492140215);
INSERT INTO `hisi_system_config` VALUES (35, 1, 'databases', '备份目录', 'backup_path', './backup/database/', 'input', '', '', '数据库备份路径,路径必须以 / 结尾', 0, 1, 1491881854, 1491965974);
INSERT INTO `hisi_system_config` VALUES (36, 1, 'databases', '备份分卷大小', 'part_size', '20971520', 'input', '', '', '用于限制压缩后的分卷最大长度。单位：B；建议设置20M', 0, 1, 1491881975, 1491965974);
INSERT INTO `hisi_system_config` VALUES (37, 1, 'databases', '备份压缩开关', 'compress', '1', 'switch', '0:关闭\r\n1:开启', '', '压缩备份文件需要PHP环境支持gzopen,gzwrite函数', 0, 1, 1491882038, 1491965974);
INSERT INTO `hisi_system_config` VALUES (38, 1, 'databases', '备份压缩级别', 'compress_level', '4', 'radio', '1:最低\r\n4:一般\r\n9:最高', '', '数据库备份文件的压缩级别，该配置在开启压缩时生效', 0, 1, 1491882154, 1491965974);
INSERT INTO `hisi_system_config` VALUES (39, 1, 'base', '网站状态', 'site_status', '1', 'switch', '0:关闭\r\n1:开启', '', '站点关闭后将不能访问，后台可正常登录', 1, 1, 1492049460, 1494690024);
INSERT INTO `hisi_system_config` VALUES (40, 1, 'sys', '后台管理路径', 'admin_path', 'admin.php', 'input', '', '', '必须以.php为后缀', 1, 1, 1492139196, 1492140215);
INSERT INTO `hisi_system_config` VALUES (41, 1, 'base', '网站标题', 'site_title', 'HisiPHP 开源后台管理框架', 'input', '', '', '网站标题是体现一个网站的主旨，要做到主题突出、标题简洁、连贯等特点，建议不超过28个字', 6, 1, 1492502354, 1494695131);
INSERT INTO `hisi_system_config` VALUES (42, 1, 'base', '网站关键词', 'site_keywords', 'hisiphp,hisiphp框架,php开源框架', 'input', '', '', '网页内容所包含的核心搜索关键词，多个关键字请用英文逗号&quot;,&quot;分隔', 7, 1, 1494690508, 1494690780);
INSERT INTO `hisi_system_config` VALUES (43, 1, 'base', '网站描述', 'site_description', '', 'textarea', '', '', '网页的描述信息，搜索引擎采纳后，作为搜索结果中的页面摘要显示，建议不超过80个字', 8, 1, 1494690669, 1494691075);
INSERT INTO `hisi_system_config` VALUES (44, 1, 'base', 'ICP备案信息', 'site_icp', '', 'input', '', '', '请填写ICP备案号，用于展示在网站底部，ICP备案官网：&lt;a href=&quot;http://www.miibeian.gov.cn&quot; target=&quot;_blank&quot;&gt;http://www.miibeian.gov.cn&lt;/a&gt;', 9, 1, 1494691721, 1494692046);
INSERT INTO `hisi_system_config` VALUES (45, 1, 'base', '站点统计代码', 'site_statis', '', 'textarea', '', '', '第三方流量统计代码，前台调用时请先用 htmlspecialchars_decode函数转义输出', 10, 1, 1494691959, 1494694797);
INSERT INTO `hisi_system_config` VALUES (46, 1, 'base', '网站名称', 'site_name', 'HisiPHP', 'input', '', '', '将显示在浏览器窗口标题等位置', 3, 1, 1494692103, 1494694680);
INSERT INTO `hisi_system_config` VALUES (47, 1, 'base', '网站LOGO', 'site_logo', '', 'image', '', '', '网站LOGO图片', 4, 1, 1494692345, 1494693235);
INSERT INTO `hisi_system_config` VALUES (48, 1, 'base', '网站图标', 'site_favicon', '', 'image', '', '/system/annex/favicon', '又叫网站收藏夹图标，它显示位于浏览器的地址栏或者标题前面，&lt;strong class=&quot;red&quot;&gt;.ico格式&lt;/strong&gt;，&lt;a href=&quot;https://www.baidu.com/s?ie=UTF-8&amp;wd=favicon&quot; target=&quot;_blank&quot;&gt;点此了解网站图标&lt;/a&gt;', 5, 1, 1494692781, 1494693966);
INSERT INTO `hisi_system_config` VALUES (49, 1, 'base', '手机网站', 'wap_site_status', '1', 'switch', '0:关闭\r\n1:开启', '', '如果有手机网站，请设置为开启状态，否则只显示PC网站', 2, 1, 1498405436, 1498405436);
INSERT INTO `hisi_system_config` VALUES (50, 1, 'sys', '云端推送', 'cloud_push', '0', 'switch', '0:关闭\r\n1:开启', '', '关闭之后，无法通过云端推送安装扩展', 5, 1, 1504250320, 1504250320);
INSERT INTO `hisi_system_config` VALUES (51, 1, 'base', '手机网站域名', 'wap_domain', '', 'input', '', '', '手机访问将自动跳转至此域名，示例：http://m.domain.com', 2, 1, 1504304776, 1504304837);
INSERT INTO `hisi_system_config` VALUES (52, 1, 'sys', '多语言支持', 'multi_language', '0', 'switch', '0:关闭\r\n1:开启', '', '开启后你可以自由上传多种语言包', 6, 1, 1506532211, 1506532211);
INSERT INTO `hisi_system_config` VALUES (53, 1, 'sys', '后台白名单验证', 'admin_whitelist_verify', '0', 'switch', '0:禁用\r\n1:启用', '', '禁用后不存在的菜单节点将不在提示', 7, 1, 1542012232, 1542012321);
INSERT INTO `hisi_system_config` VALUES (54, 1, 'sys', '系统日志保留', 'system_log_retention', '30', 'input', '', '', '单位天，系统将自动清除 ? 天前的系统日志', 8, 1, 1542013958, 1542014158);
INSERT INTO `hisi_system_config` VALUES (55, 1, 'upload', '上传驱动', 'upload_driver', 'local', 'select', 'local:本地上传', '', '资源上传驱动设置', 0, 1, 1558599270, 1558618703);

-- ----------------------------
-- Table structure for hisi_system_hook
-- ----------------------------
DROP TABLE IF EXISTS `hisi_system_hook`;
CREATE TABLE `hisi_system_hook`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `system` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '系统插件',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '钩子名称',
  `source` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '钩子来源[plugins.插件名，module.模块名]',
  `intro` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '钩子简介',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `ctime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `mtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[系统] 钩子表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hisi_system_hook
-- ----------------------------
INSERT INTO `hisi_system_hook` VALUES (1, 1, 'system_admin_index', '', '后台首页', 1, 1490885108, 1490885108);
INSERT INTO `hisi_system_hook` VALUES (2, 1, 'system_admin_tips', '', '后台所有页面提示', 1, 1490713165, 1490885137);
INSERT INTO `hisi_system_hook` VALUES (3, 1, 'system_annex_upload', '', '附件上传钩子，可扩展上传到第三方存储', 1, 1490884242, 1490885121);
INSERT INTO `hisi_system_hook` VALUES (4, 1, 'system_member_login', '', '会员登陆成功之后的动作', 1, 1490885108, 1490885108);
INSERT INTO `hisi_system_hook` VALUES (5, 1, 'system_member_register', '', '会员注册成功后的动作', 1, 1512610518, 1512610518);

-- ----------------------------
-- Table structure for hisi_system_hook_plugins
-- ----------------------------
DROP TABLE IF EXISTS `hisi_system_hook_plugins`;
CREATE TABLE `hisi_system_hook_plugins`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `hook` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '钩子id',
  `plugins` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '插件标识',
  `ctime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `mtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `sort` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[系统] 钩子-插件对应表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hisi_system_hook_plugins
-- ----------------------------
INSERT INTO `hisi_system_hook_plugins` VALUES (1, 'system_admin_index', 'hisiphp', 1509380301, 1509380301, 0, 1);

-- ----------------------------
-- Table structure for hisi_system_language
-- ----------------------------
DROP TABLE IF EXISTS `hisi_system_language`;
CREATE TABLE `hisi_system_language`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '语言包名称',
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '编码',
  `locale` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '本地浏览器语言编码',
  `icon` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图标',
  `pack` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '上传的语言包',
  `sort` tinyint(2) UNSIGNED NOT NULL DEFAULT 1,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[系统] 语言包' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hisi_system_language
-- ----------------------------
INSERT INTO `hisi_system_language` VALUES (1, '简体中文', 'zh-cn', 'zh-CN,zh-CN.UTF-8,zh-cn', '', '1', 1, 1);

-- ----------------------------
-- Table structure for hisi_system_log
-- ----------------------------
DROP TABLE IF EXISTS `hisi_system_log`;
CREATE TABLE `hisi_system_log`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `param` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `count` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `ctime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 311 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[系统] 操作日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hisi_system_log
-- ----------------------------
INSERT INTO `hisi_system_log` VALUES (1, 1, '后台首页', '/admin.php/system/index/index.html', '[]', '浏览数据', 19, '127.0.0.1', 1584519395, 1585410076);
INSERT INTO `hisi_system_log` VALUES (2, 1, '系统菜单', '/admin.php/system/menu/index.html', '[]', '浏览数据', 156, '127.0.0.1', 1584523898, 1585314732);
INSERT INTO `hisi_system_log` VALUES (3, 1, '系统管理员', '/admin.php/system/user/index.html', '[]', '浏览数据', 40, '127.0.0.1', 1584523900, 1585314933);
INSERT INTO `hisi_system_log` VALUES (4, 1, '系统管理员', '/admin.php/system/user/index.html?page=1&limit=20', '{\"page\":\"1\",\"limit\":\"20\"}', '浏览数据', 40, '127.0.0.1', 1584523900, 1585314933);
INSERT INTO `hisi_system_log` VALUES (5, 1, '管理员角色', '/admin.php/system/user/role.html', '[]', '浏览数据', 22, '127.0.0.1', 1584523902, 1585314787);
INSERT INTO `hisi_system_log` VALUES (6, 1, '管理员角色', '/admin.php/system/user/role.html?page=1&limit=10', '{\"page\":\"1\",\"limit\":\"10\"}', '浏览数据', 22, '127.0.0.1', 1584523903, 1585314787);
INSERT INTO `hisi_system_log` VALUES (7, 1, '添加角色', '/admin.php/system/user/addrole.html', '[]', '浏览数据', 5, '127.0.0.1', 1584523904, 1584546125);
INSERT INTO `hisi_system_log` VALUES (8, 1, '添加角色', '/admin.php/system/user/addrole.html', '{\"name\":\"\\u7ba1\\u7406\\u5458\",\"intro\":\"\",\"status\":\"1\",\"auth\":{\"90\":\"169\",\"91\":\"171\",\"92\":\"176\",\"93\":\"177\",\"94\":\"172\",\"95\":\"178\",\"96\":\"179\",\"97\":\"173\",\"98\":\"184\",\"99\":\"185\",\"100\":\"170\",\"101\":\"174\",\"102\":\"180\",\"103\":\"181\",\"104\":\"200\",\"105\":\"201\",\"106\":\"202\"},\"id\":\"\"}', '保存数据', 6, '127.0.0.1', 1584523981, 1584546138);
INSERT INTO `hisi_system_log` VALUES (9, 1, '应用市场', '/admin.php/system/store/index.html', '[]', '浏览数据', 5, '127.0.0.1', 1584523989, 1584524027);
INSERT INTO `hisi_system_log` VALUES (10, 1, '应用市场', '/admin.php/system/store/index.html?page=1&limit=10', '{\"page\":\"1\",\"limit\":\"10\"}', '浏览数据', 4, '127.0.0.1', 1584523993, 1584524027);
INSERT INTO `hisi_system_log` VALUES (11, 1, '框架升级', '/admin.php/system/upgrade/index.html', '{\"account\":\"937503784@qq.com\",\"password\":\"6b766b57fc749bb1181ac7ce31e1f205\"}', '保存数据', 1, '127.0.0.1', 1584524008, 1584524008);
INSERT INTO `hisi_system_log` VALUES (12, 1, '安装应用', '/admin.php/system/store/install.html?app_name=developer&app_type=1&app_keys=04565abdabf0759e21670354f117dac3&branch_id=2000015', '{\"app_name\":\"developer\",\"app_type\":\"1\",\"app_keys\":\"04565abdabf0759e21670354f117dac3\",\"branch_id\":\"2000015\"}', '浏览数据', 1, '127.0.0.1', 1584524020, 1584524020);
INSERT INTO `hisi_system_log` VALUES (13, 1, '配置管理', '/admin.php/system/config/index.html', '[]', '浏览数据', 7, '127.0.0.1', 1584524030, 1585314778);
INSERT INTO `hisi_system_log` VALUES (14, 1, '配置管理', '/admin.php/system/config/index.html?page=1&limit=20', '{\"page\":\"1\",\"limit\":\"20\"}', '浏览数据', 7, '127.0.0.1', 1584524030, 1585314779);
INSERT INTO `hisi_system_log` VALUES (15, 1, '模块列表', '/admin.php/developer/module/index.html', '[]', '浏览数据', 18, '127.0.0.1', 1584524040, 1584525643);
INSERT INTO `hisi_system_log` VALUES (16, 1, '插件列表', '/admin.php/developer/plugins/index.html', '[]', '浏览数据', 7, '127.0.0.1', 1584524042, 1584524439);
INSERT INTO `hisi_system_log` VALUES (17, 1, '生成模块', '/admin.php/developer/module/build.html', '[]', '浏览数据', 14, '127.0.0.1', 1584524044, 1584525658);
INSERT INTO `hisi_system_log` VALUES (18, 1, '生成模块', '/admin.php/developer/module/build.html', '{\"name\":\"teacher\",\"title\":\"\\u6559\\u5e08\",\"identifier\":\"teacher.module\",\"intro\":\"\",\"author\":\"\",\"url\":\"\",\"version\":\"1.0.0\",\"file\":\"common.php\",\"dir\":\"admin\\r\\nhome\\r\\nmodel\\r\\nlang\\r\\nsql\\r\\nvalidate\\r\\nview\"}', '保存数据', 11, '127.0.0.1', 1584524164, 1584525640);
INSERT INTO `hisi_system_log` VALUES (19, 1, '本地模块', '/admin.php/system/module/index/status/0.html', '{\"status\":\"0\"}', '浏览数据', 6, '127.0.0.1', 1584524167, 1584525470);
INSERT INTO `hisi_system_log` VALUES (20, 1, '添加快捷菜单', '/admin.php/system/menu/quick/id/143.html', '{\"id\":\"143\"}', '浏览数据', 1, '127.0.0.1', 1584524298, 1584524298);
INSERT INTO `hisi_system_log` VALUES (21, 1, '系统设置', '/admin.php/system/system/index.html', '[]', '浏览数据', 2, '127.0.0.1', 1584524379, 1584629234);
INSERT INTO `hisi_system_log` VALUES (22, 1, '版本管理', '/admin.php/developer/module/versions/app_name/teacher.html', '{\"app_name\":\"teacher\"}', '浏览数据', 1, '127.0.0.1', 1584524405, 1584524405);
INSERT INTO `hisi_system_log` VALUES (23, 1, '删除菜单', '/admin.php/system/menu/del/id/164.html', '{\"id\":\"164\"}', '浏览数据', 1, '127.0.0.1', 1584524414, 1584524414);
INSERT INTO `hisi_system_log` VALUES (24, 1, '删除菜单', '/admin.php/system/menu/del/id/163.html', '{\"id\":\"163\"}', '浏览数据', 1, '127.0.0.1', 1584524419, 1584524419);
INSERT INTO `hisi_system_log` VALUES (25, 1, '删除菜单', '/admin.php/system/menu/del/id/167.html', '{\"id\":\"167\"}', '浏览数据', 1, '127.0.0.1', 1584524424, 1584524424);
INSERT INTO `hisi_system_log` VALUES (26, 1, '删除菜单', '/admin.php/system/menu/del/id/168.html', '{\"id\":\"168\"}', '浏览数据', 1, '127.0.0.1', 1584524428, 1584524428);
INSERT INTO `hisi_system_log` VALUES (27, 1, '删除菜单', '/admin.php/system/menu/del/id/165.html', '{\"id\":\"165\"}', '浏览数据', 1, '127.0.0.1', 1584524433, 1584524433);
INSERT INTO `hisi_system_log` VALUES (28, 1, '状态设置', '/admin.php/system/menu/status/table/admin_menu/id/141.html?val=0', '{\"val\":\"0\",\"table\":\"admin_menu\",\"id\":\"141\"}', '浏览数据', 2, '127.0.0.1', 1584524485, 1584525674);
INSERT INTO `hisi_system_log` VALUES (29, 1, '状态设置', '/admin.php/system/menu/status/table/admin_menu/id/3.html?val=0', '{\"val\":\"0\",\"table\":\"admin_menu\",\"id\":\"3\"}', '浏览数据', 1, '127.0.0.1', 1584524490, 1584524490);
INSERT INTO `hisi_system_log` VALUES (30, 1, '删除菜单', '/admin.php/system/menu/del/id/166.html', '{\"id\":\"166\"}', '保存数据', 1, '127.0.0.1', 1584524496, 1584524496);
INSERT INTO `hisi_system_log` VALUES (31, 1, '状态设置', '/admin.php/system/menu/status/table/admin_menu/id/1.html?val=0', '{\"val\":\"0\",\"table\":\"admin_menu\",\"id\":\"1\"}', '浏览数据', 1, '127.0.0.1', 1584524500, 1584524500);
INSERT INTO `hisi_system_log` VALUES (32, 1, '删除菜单', '/admin.php/system/menu/del/id/141.html', '{\"id\":\"141\"}', '浏览数据', 1, '127.0.0.1', 1584524512, 1584524512);
INSERT INTO `hisi_system_log` VALUES (33, 1, '排序设置', '/admin.php/system/menu/sort/table/admin_menu/id/2.html', '{\"val\":\"200\",\"table\":\"admin_menu\",\"id\":\"2\"}', '保存数据', 1, '127.0.0.1', 1584524528, 1584524528);
INSERT INTO `hisi_system_log` VALUES (34, 1, '添加菜单', '/admin.php/system/menu/add/pid/169/mod/teach.html', '{\"pid\":\"169\",\"mod\":\"teach\"}', '浏览数据', 5, '127.0.0.1', 1584524538, 1584600037);
INSERT INTO `hisi_system_log` VALUES (35, 1, '添加菜单', '/admin.php/system/menu/add.html', '{\"pid\":\"216\",\"title\":\"\\u9884\\u7ea6\\u5217\\u8868\",\"icon\":\"aicon ai-caidan\",\"url\":\"other\\/Appoint\\/lst\",\"param\":\"\",\"status\":\"1\",\"system\":\"1\",\"nav\":\"1\",\"id\":\"\",\"module\":\"other\"}', '保存数据', 45, '127.0.0.1', 1584524566, 1585314047);
INSERT INTO `hisi_system_log` VALUES (36, 1, '添加菜单', '/admin.php/system/menu/add/pid/170/mod/other.html', '{\"pid\":\"170\",\"mod\":\"other\"}', '浏览数据', 5, '127.0.0.1', 1584524639, 1585313992);
INSERT INTO `hisi_system_log` VALUES (37, 1, '添加菜单', '/admin.php/system/menu/add/pid/171/mod/teach.html', '{\"pid\":\"171\",\"mod\":\"teach\"}', '浏览数据', 2, '127.0.0.1', 1584524729, 1584524756);
INSERT INTO `hisi_system_log` VALUES (38, 1, '添加菜单', '/admin.php/system/menu/add/pid/172/mod/teach.html', '{\"pid\":\"172\",\"mod\":\"teach\"}', '浏览数据', 2, '127.0.0.1', 1584524789, 1584524817);
INSERT INTO `hisi_system_log` VALUES (39, 1, '添加菜单', '/admin.php/system/menu/add/pid/174/mod/other.html', '{\"pid\":\"174\",\"mod\":\"other\"}', '浏览数据', 2, '127.0.0.1', 1584524864, 1584524920);
INSERT INTO `hisi_system_log` VALUES (40, 1, '添加菜单', '/admin.php/system/menu/add/pid/175/mod/other.html', '{\"pid\":\"175\",\"mod\":\"other\"}', '浏览数据', 2, '127.0.0.1', 1584525006, 1584525078);
INSERT INTO `hisi_system_log` VALUES (41, 1, '添加菜单', '/admin.php/system/menu/add/pid/173/mod/teach.html', '{\"pid\":\"173\",\"mod\":\"teach\"}', '浏览数据', 2, '127.0.0.1', 1584525138, 1584525276);
INSERT INTO `hisi_system_log` VALUES (42, 1, '状态设置', '/admin.php/system/menu/status/table/admin_menu/id/141.html?val=1', '{\"val\":\"1\",\"table\":\"admin_menu\",\"id\":\"141\"}', '浏览数据', 1, '127.0.0.1', 1584525408, 1584525408);
INSERT INTO `hisi_system_log` VALUES (43, 1, '添加菜单', '/admin.php/system/menu/add/pid/186/mod/parent.html', '{\"pid\":\"186\",\"mod\":\"parent\"}', '浏览数据', 3, '127.0.0.1', 1584525704, 1584526143);
INSERT INTO `hisi_system_log` VALUES (44, 1, '添加菜单', '/admin.php/system/menu/add/pid/188/mod/parent.html', '{\"pid\":\"188\",\"mod\":\"parent\"}', '浏览数据', 2, '127.0.0.1', 1584525823, 1584615487);
INSERT INTO `hisi_system_log` VALUES (45, 1, '添加菜单', '/admin.php/system/menu/add/pid/190/mod/parent.html', '{\"pid\":\"190\",\"mod\":\"parent\"}', '浏览数据', 1, '127.0.0.1', 1584525957, 1584525957);
INSERT INTO `hisi_system_log` VALUES (46, 1, '添加菜单', '/admin.php/system/menu/add/pid/191/mod/parent.html', '{\"pid\":\"191\",\"mod\":\"parent\"}', '浏览数据', 2, '127.0.0.1', 1584526233, 1584530571);
INSERT INTO `hisi_system_log` VALUES (47, 1, '添加菜单', '/admin.php/system/menu/add/pid/187/mod/teacher.html', '{\"pid\":\"187\",\"mod\":\"teacher\"}', '浏览数据', 5, '127.0.0.1', 1584526694, 1584617377);
INSERT INTO `hisi_system_log` VALUES (48, 1, '修改菜单', '/admin.php/system/menu/edit/id/193/mod/teacher.html', '{\"id\":\"193\",\"mod\":\"teacher\"}', '浏览数据', 2, '127.0.0.1', 1584526715, 1584617569);
INSERT INTO `hisi_system_log` VALUES (49, 1, '修改菜单', '/admin.php/system/menu/edit.html', '{\"pid\":\"191\",\"title\":\"\\u65e5\\u5e38\\u5217\\u8868\",\"icon\":\"aicon ai-caidan\",\"url\":\"parent\\/Student\\/lst\",\"param\":\"\",\"status\":\"1\",\"system\":\"1\",\"nav\":\"1\",\"id\":\"192\",\"module\":\"parent\"}', '保存数据', 13, '127.0.0.1', 1584526718, 1584628893);
INSERT INTO `hisi_system_log` VALUES (50, 1, '添加菜单', '/admin.php/system/menu/add/pid/193/mod/teacher.html', '{\"pid\":\"193\",\"mod\":\"teacher\"}', '浏览数据', 5, '127.0.0.1', 1584526721, 1584617596);
INSERT INTO `hisi_system_log` VALUES (51, 1, '添加菜单', '/admin.php/system/menu/add/pid/195/mod/teacher.html', '{\"pid\":\"195\",\"mod\":\"teacher\"}', '浏览数据', 3, '127.0.0.1', 1584526867, 1584621718);
INSERT INTO `hisi_system_log` VALUES (52, 1, '添加菜单', '/admin.php/system/menu/add/pid/198/mod/teacher.html', '{\"pid\":\"198\",\"mod\":\"teacher\"}', '浏览数据', 2, '127.0.0.1', 1584526966, 1584619218);
INSERT INTO `hisi_system_log` VALUES (53, 1, '删除菜单', '/admin.php/system/menu/del/id/190.html', '{\"id\":\"190\"}', '浏览数据', 1, '127.0.0.1', 1584526989, 1584526989);
INSERT INTO `hisi_system_log` VALUES (54, 1, '删除菜单', '/admin.php/system/menu/del/id/175.html', '{\"id\":\"175\"}', '浏览数据', 2, '127.0.0.1', 1584530357, 1584530372);
INSERT INTO `hisi_system_log` VALUES (55, 1, '删除菜单', '/admin.php/system/menu/del/id/183.html', '{\"id\":\"183\"}', '浏览数据', 1, '127.0.0.1', 1584530365, 1584530365);
INSERT INTO `hisi_system_log` VALUES (56, 1, '删除菜单', '/admin.php/system/menu/del/id/182.html', '{\"id\":\"182\"}', '浏览数据', 1, '127.0.0.1', 1584530368, 1584530368);
INSERT INTO `hisi_system_log` VALUES (57, 1, '添加菜单', '/admin.php/system/menu/add/pid/200/mod/other.html', '{\"pid\":\"200\",\"mod\":\"other\"}', '浏览数据', 2, '127.0.0.1', 1584530487, 1584530509);
INSERT INTO `hisi_system_log` VALUES (58, 1, '添加老师', '/admin.php/teach/teacher/edit.html', '[]', '浏览数据', 49, '127.0.0.1', 1584545347, 1585311741);
INSERT INTO `hisi_system_log` VALUES (59, 1, '老师列表', '/admin.php/teach/teacher/lst.html', '[]', '浏览数据', 87, '127.0.0.1', 1584545447, 1585410100);
INSERT INTO `hisi_system_log` VALUES (60, 1, '未加入系统菜单', '/admin.php/teach/teacher/uploadimage.html', '[]', '保存数据', 7, '127.0.0.1', 1584578502, 1585309663);
INSERT INTO `hisi_system_log` VALUES (61, 1, '老师列表', '/admin.php/teach/teacher/lst.html', '{\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 95, '127.0.0.1', 1584580981, 1585410101);
INSERT INTO `hisi_system_log` VALUES (62, 1, '添加老师', '/admin.php/teach/teacher/edit.html', '{\"nick\":\"\\u963f\\u65af\\u8482\\u82ac\",\"head_img_url\":\"\\\\upload\\\\img\\\\20200319\\\\d65c1a89751d2c2047a7fc4c4f448c4f.png\",\"username\":\"asdf1\",\"password\":\"\",\"mobile\":\"1234\",\"address\":\"asdf12\",\"desc\":\"asdfafddddddddddddddddddddddddddddddddd\",\"hor\":\"5\",\"manner\":\"5\",\"id\":\"3\"}', '保存数据', 35, '127.0.0.1', 1584582456, 1585410099);
INSERT INTO `hisi_system_log` VALUES (63, 1, '未加入系统菜单', '/admin.php/teach/teacher/%7B%7Bd.head_img_url%7D%7D', '[]', '浏览数据', 2, '127.0.0.1', 1584583275, 1584583523);
INSERT INTO `hisi_system_log` VALUES (64, 1, '未加入系统菜单', '/admin.php/teach/teacher/undefined', '[]', '浏览数据', 2, '127.0.0.1', 1584583587, 1584583656);
INSERT INTO `hisi_system_log` VALUES (65, 1, '添加老师', '/admin.php/teach/teacher/edit.html?id=3', '{\"id\":\"3\"}', '浏览数据', 13, '127.0.0.1', 1584583729, 1585410095);
INSERT INTO `hisi_system_log` VALUES (66, 1, '添加老师', '/admin.php/teach/teacher/edit.html?id=4', '{\"id\":\"4\"}', '浏览数据', 8, '127.0.0.1', 1584585789, 1584586001);
INSERT INTO `hisi_system_log` VALUES (67, 1, '添加学生', '/admin.php/teach/student/edit.html', '[]', '浏览数据', 25, '127.0.0.1', 1584587252, 1585311745);
INSERT INTO `hisi_system_log` VALUES (68, 1, '修改菜单', '/admin.php/system/menu/edit/id/179/mod/teach.html', '{\"id\":\"179\",\"mod\":\"teach\"}', '浏览数据', 1, '127.0.0.1', 1584590671, 1584590671);
INSERT INTO `hisi_system_log` VALUES (69, 1, '学生列表', '/admin.php/teach/student/lst.html', '[]', '浏览数据', 35, '127.0.0.1', 1584590754, 1585308240);
INSERT INTO `hisi_system_log` VALUES (70, 1, '学生列表', '/admin.php/teach/student/lst.html', '{\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 38, '127.0.0.1', 1584590754, 1585308240);
INSERT INTO `hisi_system_log` VALUES (71, 1, '添加学生', '/admin.php/teach/student/edit.html', '{\"name\":\"asf\",\"sex\":\"on\",\"mobile\":\"asdfsdf\",\"lift\":\"saf\",\"weight\":\"sfd\",\"class\":\"sdf\",\"school\":\"asf\",\"address\":\"asfd\",\"reg_time\":\"2020-03-17 00:00:00\",\"id\":\"\"}', '保存数据', 9, '127.0.0.1', 1584594087, 1584667298);
INSERT INTO `hisi_system_log` VALUES (72, 1, '未加入系统菜单', '/admin.php/teach/student/undefined', '[]', '浏览数据', 1, '127.0.0.1', 1584594959, 1584594959);
INSERT INTO `hisi_system_log` VALUES (73, 1, '添加学生', '/admin.php/teach/student/edit.html?id=1', '{\"id\":\"1\"}', '浏览数据', 2, '127.0.0.1', 1584595218, 1584614267);
INSERT INTO `hisi_system_log` VALUES (74, 1, '未加入系统菜单', '/admin.php/teach/student/updfield.html', '{\"id\":\"1\",\"name\":\"status\",\"val\":\"-1\"}', '保存数据', 1, '127.0.0.1', 1584595554, 1584595554);
INSERT INTO `hisi_system_log` VALUES (75, 1, '添加课程', '/admin.php/teach/course/edit.html', '[]', '浏览数据', 17, '127.0.0.1', 1584595585, 1584667383);
INSERT INTO `hisi_system_log` VALUES (76, 1, '修改菜单', '/admin.php/system/menu/edit/id/185/mod/teach.html', '{\"id\":\"185\",\"mod\":\"teach\"}', '浏览数据', 1, '127.0.0.1', 1584595595, 1584595595);
INSERT INTO `hisi_system_log` VALUES (77, 1, '修改菜单', '/admin.php/system/menu/edit/id/184/mod/teach.html', '{\"id\":\"184\",\"mod\":\"teach\"}', '浏览数据', 1, '127.0.0.1', 1584595605, 1584595605);
INSERT INTO `hisi_system_log` VALUES (78, 1, '课程列表', '/admin.php/teach/course/lst.html', '[]', '浏览数据', 20, '127.0.0.1', 1584595616, 1584667392);
INSERT INTO `hisi_system_log` VALUES (79, 1, '课程列表', '/admin.php/teach/course/lst.html', '{\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 26, '127.0.0.1', 1584595616, 1584667392);
INSERT INTO `hisi_system_log` VALUES (80, 1, '添加课程', '/admin.php/teach/course/edit.html', '{\"name\":\"ads\",\"teacher_id\":\"-1\",\"time\":\"2020-03-20 00:00:00\",\"desc\":\"asd\",\"id\":\"\"}', '保存数据', 10, '127.0.0.1', 1584596368, 1584667387);
INSERT INTO `hisi_system_log` VALUES (81, 1, '添加课程', '/admin.php/teach/course/edit.html?id=1', '{\"id\":\"1\"}', '浏览数据', 2, '127.0.0.1', 1584596907, 1584667378);
INSERT INTO `hisi_system_log` VALUES (82, 1, '添加招聘', '/admin.php/other/job/edit.html', '[]', '浏览数据', 15, '127.0.0.1', 1584597938, 1585313760);
INSERT INTO `hisi_system_log` VALUES (83, 1, '招聘列表', '/admin.php/other/job/lst.html', '[]', '浏览数据', 21, '127.0.0.1', 1584597943, 1585313761);
INSERT INTO `hisi_system_log` VALUES (84, 1, '招聘列表', '/admin.php/other/job/lst.html', '{\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 24, '127.0.0.1', 1584598018, 1585313761);
INSERT INTO `hisi_system_log` VALUES (85, 1, '添加招聘', '/admin.php/other/job/edit.html', '{\"title\":\"asdfsf\",\"content\":\"safdsf\",\"id\":\"\"}', '保存数据', 4, '127.0.0.1', 1584598064, 1584667748);
INSERT INTO `hisi_system_log` VALUES (86, 1, '列表', '/admin.php/other/student_special/lst.html', '[]', '浏览数据', 30, '127.0.0.1', 1584599598, 1585409644);
INSERT INTO `hisi_system_log` VALUES (87, 1, '添加', '/admin.php/other/student_special/edit.html', '[]', '浏览数据', 14, '127.0.0.1', 1584599602, 1585310111);
INSERT INTO `hisi_system_log` VALUES (88, 1, '列表', '/admin.php/other/student_special/lst.html', '{\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 37, '127.0.0.1', 1584599619, 1585409645);
INSERT INTO `hisi_system_log` VALUES (89, 1, '未加入系统菜单', '/admin.php/other/student_special/uploadimage.html', '[]', '保存数据', 1, '127.0.0.1', 1584599698, 1584599698);
INSERT INTO `hisi_system_log` VALUES (90, 1, '添加', '/admin.php/other/student_special/edit.html', '{\"title\":\"\\u963f\\u8428\\u5927fa\",\"img\":\"\\\\upload\\\\img\\\\20200319\\\\6235e128d66a9198b33b3a28fe5377f0.png\",\"id\":\"1\"}', '保存数据', 6, '127.0.0.1', 1584599703, 1585409589);
INSERT INTO `hisi_system_log` VALUES (91, 1, '添加', '/admin.php/other/student_special/edit.html?id=1', '{\"id\":\"1\"}', '浏览数据', 8, '127.0.0.1', 1584599728, 1585409661);
INSERT INTO `hisi_system_log` VALUES (92, 1, '添加菜单', '/admin.php/system/menu/add/pid/203/mod/teach.html', '{\"pid\":\"203\",\"mod\":\"teach\"}', '浏览数据', 2, '127.0.0.1', 1584600139, 1584600163);
INSERT INTO `hisi_system_log` VALUES (93, 1, '修改菜单', '/admin.php/system/menu/edit/id/204/mod/teach.html', '{\"id\":\"204\",\"mod\":\"teach\"}', '浏览数据', 2, '127.0.0.1', 1584601378, 1584601401);
INSERT INTO `hisi_system_log` VALUES (94, 1, '修改菜单', '/admin.php/system/menu/edit/id/205/mod/teach.html', '{\"id\":\"205\",\"mod\":\"teach\"}', '浏览数据', 2, '127.0.0.1', 1584601386, 1584601407);
INSERT INTO `hisi_system_log` VALUES (95, 1, '添加家长', '/admin.php/teach/student_parent/edit.html', '[]', '浏览数据', 22, '127.0.0.1', 1584602629, 1585311746);
INSERT INTO `hisi_system_log` VALUES (96, 1, '家长列表', '/admin.php/teach/student_parent/lst.html', '[]', '浏览数据', 14, '127.0.0.1', 1584602821, 1584667543);
INSERT INTO `hisi_system_log` VALUES (97, 1, '家长列表', '/admin.php/teach/student_parent/lst.html', '{\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 21, '127.0.0.1', 1584602822, 1585308256);
INSERT INTO `hisi_system_log` VALUES (98, 1, '未加入系统菜单', '/admin.php/teach/student_parent/uploadimage.html', '[]', '保存数据', 6, '127.0.0.1', 1584602834, 1584612752);
INSERT INTO `hisi_system_log` VALUES (99, 1, '添加家长', '/admin.php/teach/student_parent/edit.html', '{\"nick\":\"asdf\",\"head_img_url\":\"\",\"sex\":\"on\",\"student_id\":\"1\",\"username\":\"asdf\",\"password\":\"asdf\",\"mobile\":\"asdf\",\"id\":\"\"}', '保存数据', 20, '127.0.0.1', 1584602846, 1584667491);
INSERT INTO `hisi_system_log` VALUES (100, 1, '未加入系统菜单', '/admin.php/teach/student_parent/undefined', '[]', '浏览数据', 1, '127.0.0.1', 1584612827, 1584612827);
INSERT INTO `hisi_system_log` VALUES (101, 1, '家长列表', '/admin.php/teach/student_parent/lst.html?student_id=1', '{\"student_id\":\"1\"}', '浏览数据', 6, '127.0.0.1', 1584614295, 1585308441);
INSERT INTO `hisi_system_log` VALUES (102, 1, '修改', '/admin.php/parent/person/edit.html', '[]', '浏览数据', 7, '127.0.0.1', 1584615558, 1584667960);
INSERT INTO `hisi_system_log` VALUES (103, 1, '修改密码', '/admin.php/parent/person/editpass.html', '[]', '浏览数据', 12, '127.0.0.1', 1584615569, 1584667959);
INSERT INTO `hisi_system_log` VALUES (104, 3, '后台首页', '/admin.php/system/index/index.html', '[]', '浏览数据', 20, '127.0.0.1', 1584615995, 1585852736);
INSERT INTO `hisi_system_log` VALUES (105, 1, '添加家长', '/admin.php/teach/student_parent/edit.html?id=13', '{\"id\":\"13\"}', '浏览数据', 6, '127.0.0.1', 1584616071, 1585308237);
INSERT INTO `hisi_system_log` VALUES (106, 13, '后台首页', '/admin.php/system/index/index.html', '[]', '浏览数据', 6, '127.0.0.1', 1584616242, 1585313776);
INSERT INTO `hisi_system_log` VALUES (107, 1, '修改角色', '/admin.php/system/user/editrole.html?id=5', '{\"id\":\"5\"}', '浏览数据', 4, '127.0.0.1', 1584616294, 1584629229);
INSERT INTO `hisi_system_log` VALUES (108, 1, '修改角色', '/admin.php/system/user/editrole.html', '{\"name\":\"\\u7ba1\\u7406\\u5458\",\"intro\":\"\",\"status\":\"1\",\"auth\":{\"90\":\"169\",\"91\":\"171\",\"92\":\"176\",\"93\":\"177\",\"94\":\"172\",\"95\":\"178\",\"96\":\"179\",\"97\":\"173\",\"98\":\"184\",\"99\":\"185\",\"100\":\"203\",\"101\":\"204\",\"102\":\"205\",\"103\":\"170\",\"104\":\"174\",\"105\":\"180\",\"106\":\"181\",\"107\":\"200\",\"108\":\"201\",\"109\":\"202\",\"110\":\"213\",\"111\":\"214\",\"112\":\"215\",\"113\":\"216\",\"114\":\"217\"},\"id\":\"6\"}', '保存数据', 8, '127.0.0.1', 1584616299, 1585314797);
INSERT INTO `hisi_system_log` VALUES (109, 13, '修改', '/admin.php/parent/person/edit.html', '[]', '浏览数据', 9, '127.0.0.1', 1584616319, 1584678680);
INSERT INTO `hisi_system_log` VALUES (110, 13, '修改', '/admin.php/parent/person/edit.html', '{\"nick\":\"\\u963f\\u65af\\u8482\\u82ac\\u7684\\u5988\\u5988\",\"head_img_url\":\"\\\\upload\\\\img\\\\20200319\\\\e63632ebb09cdd8ad22d6c91d5bd4ee9.png\",\"mobile\":\"114232314\",\"id\":\"13\"}', '保存数据', 7, '127.0.0.1', 1584616403, 1584616794);
INSERT INTO `hisi_system_log` VALUES (111, 13, '修改密码', '/admin.php/parent/person/editpass.html', '[]', '浏览数据', 6, '127.0.0.1', 1584616820, 1584678679);
INSERT INTO `hisi_system_log` VALUES (112, 13, '修改密码', '/admin.php/parent/person/editpass.html', '{\"password\":\"asdfmm\",\"password1\":\"asdfmm\"}', '保存数据', 2, '127.0.0.1', 1584616827, 1584616854);
INSERT INTO `hisi_system_log` VALUES (113, 3, '学生列表', '/admin.php/teacher/student/lst.html', '[]', '浏览数据', 37, '127.0.0.1', 1584616978, 1585852952);
INSERT INTO `hisi_system_log` VALUES (114, 3, '学生列表', '/admin.php/teacher/student/lst.html', '{\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 41, '127.0.0.1', 1584616978, 1585852953);
INSERT INTO `hisi_system_log` VALUES (115, 3, '未加入系统菜单', '/admin.php/teacher/student/edit.html?id=1', '{\"id\":\"1\"}', '浏览数据', 2, '127.0.0.1', 1584616998, 1584617022);
INSERT INTO `hisi_system_log` VALUES (116, 1, '添加菜单', '/admin.php/system/menu/add/pid/207/mod/teacher.html', '{\"pid\":\"207\",\"mod\":\"teacher\"}', '浏览数据', 2, '127.0.0.1', 1584617436, 1584617472);
INSERT INTO `hisi_system_log` VALUES (117, 1, '修改菜单', '/admin.php/system/menu/edit/id/207/mod/teacher.html', '{\"id\":\"207\",\"mod\":\"teacher\"}', '浏览数据', 1, '127.0.0.1', 1584617463, 1584617463);
INSERT INTO `hisi_system_log` VALUES (118, 1, '修改菜单', '/admin.php/system/menu/edit/id/208/mod/teacher.html', '{\"id\":\"208\",\"mod\":\"teacher\"}', '浏览数据', 1, '127.0.0.1', 1584617509, 1584617509);
INSERT INTO `hisi_system_log` VALUES (119, 1, '删除菜单', '/admin.php/system/menu/del/id/207.html', '{\"id\":\"207\"}', '浏览数据', 2, '127.0.0.1', 1584617524, 1584617533);
INSERT INTO `hisi_system_log` VALUES (120, 1, '删除菜单', '/admin.php/system/menu/del/id/208.html', '{\"id\":\"208\"}', '浏览数据', 1, '127.0.0.1', 1584617530, 1584617530);
INSERT INTO `hisi_system_log` VALUES (121, 1, '修改菜单', '/admin.php/system/menu/edit/id/194/mod/teacher.html', '{\"id\":\"194\",\"mod\":\"teacher\"}', '浏览数据', 1, '127.0.0.1', 1584617576, 1584617576);
INSERT INTO `hisi_system_log` VALUES (122, 1, '修改角色', '/admin.php/system/user/editrole.html?id=4', '{\"id\":\"4\"}', '浏览数据', 3, '127.0.0.1', 1584617779, 1584629236);
INSERT INTO `hisi_system_log` VALUES (123, 3, '未加入系统菜单', '/admin.php/teach/student/parent_lst.html?student_id=1', '{\"student_id\":\"1\"}', '浏览数据', 2, '127.0.0.1', 1584617836, 1584617844);
INSERT INTO `hisi_system_log` VALUES (124, 3, '未加入系统菜单', '/admin.php/teach/student/parentLst.html?student_id=1', '{\"student_id\":\"1\"}', '浏览数据', 3, '127.0.0.1', 1584617846, 1584617861);
INSERT INTO `hisi_system_log` VALUES (125, 3, '未加入系统菜单', '/admin.php/teacher/student/parentLst.html?student_id=1', '{\"student_id\":\"1\"}', '浏览数据', 4, '127.0.0.1', 1584617879, 1585661463);
INSERT INTO `hisi_system_log` VALUES (126, 3, '未加入系统菜单', '/admin.php/teacher/student/parentlst.html', '{\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 8, '127.0.0.1', 1584617879, 1585773920);
INSERT INTO `hisi_system_log` VALUES (127, 3, '修改', '/admin.php/teacher/person/edit.html', '[]', '浏览数据', 19, '127.0.0.1', 1584619048, 1585852913);
INSERT INTO `hisi_system_log` VALUES (128, 3, '修改', '/admin.php/teacher/person/edit.html', '{\"nick\":\"asdf\",\"head_img_url\":\"\\\\upload\\\\img\\\\20200403\\\\6e64f74edee07f7de6c206a9ad9cf18a.jpg\",\"mobile\":\"1234\",\"address\":\"\\u6211\",\"desc\":\"asdfafddddddddddddddddddddddddddddddddd\"}', '保存数据', 8, '127.0.0.1', 1584619054, 1585852911);
INSERT INTO `hisi_system_log` VALUES (129, 3, '修改密码', '/admin.php/teacher/person/editpass.html', '[]', '浏览数据', 13, '127.0.0.1', 1584619295, 1585852938);
INSERT INTO `hisi_system_log` VALUES (130, 3, '修改密码', '/admin.php/teacher/person/editpass.html', '{\"password\":\"123456\",\"password1\":\"123456\"}', '保存数据', 6, '127.0.0.1', 1584619321, 1585852896);
INSERT INTO `hisi_system_log` VALUES (131, 1, '修改菜单', '/admin.php/system/menu/edit/id/195/mod/teacher.html', '{\"id\":\"195\",\"mod\":\"teacher\"}', '浏览数据', 1, '127.0.0.1', 1584619490, 1584619490);
INSERT INTO `hisi_system_log` VALUES (132, 1, '添加菜单', '/admin.php/system/menu/add/pid/196/mod/teacher.html', '{\"pid\":\"196\",\"mod\":\"teacher\"}', '浏览数据', 1, '127.0.0.1', 1584619503, 1584619503);
INSERT INTO `hisi_system_log` VALUES (133, 1, '修改菜单', '/admin.php/system/menu/edit/id/196/mod/teacher.html', '{\"id\":\"196\",\"mod\":\"teacher\"}', '浏览数据', 3, '127.0.0.1', 1584619514, 1584628876);
INSERT INTO `hisi_system_log` VALUES (134, 1, '发布学生文章', '/admin.php/teacher/student_other/edit.html', '[]', '浏览数据', 36, '127.0.0.1', 1584620437, 1584628681);
INSERT INTO `hisi_system_log` VALUES (135, 1, '历史列表', '/admin.php/teacher/student_other/lst.html', '[]', '浏览数据', 66, '127.0.0.1', 1584620443, 1585313657);
INSERT INTO `hisi_system_log` VALUES (136, 1, '历史列表', '/admin.php/teacher/student_other/lst.html', '{\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 65, '127.0.0.1', 1584620443, 1585313657);
INSERT INTO `hisi_system_log` VALUES (137, 1, '学生列表', '/admin.php/teacher/student/lst.html', '[]', '浏览数据', 10, '127.0.0.1', 1584620595, 1585410090);
INSERT INTO `hisi_system_log` VALUES (138, 1, '学生列表', '/admin.php/teacher/student/lst.html', '{\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 10, '127.0.0.1', 1584620595, 1585410090);
INSERT INTO `hisi_system_log` VALUES (139, 1, '修改', '/admin.php/teacher/person/edit.html', '[]', '浏览数据', 8, '127.0.0.1', 1584620629, 1585308454);
INSERT INTO `hisi_system_log` VALUES (140, 1, '修改密码', '/admin.php/teacher/person/editpass.html', '[]', '浏览数据', 5, '127.0.0.1', 1584620630, 1585308453);
INSERT INTO `hisi_system_log` VALUES (141, 1, '修改菜单', '/admin.php/system/menu/edit/id/197/mod/teacher.html', '{\"id\":\"197\",\"mod\":\"teacher\"}', '浏览数据', 2, '127.0.0.1', 1584620715, 1584620845);
INSERT INTO `hisi_system_log` VALUES (142, 1, '学生生活大厅', '/admin.php/teacher/student_other/lst.html', '[]', '浏览数据', 1, '127.0.0.1', 1584620732, 1584620732);
INSERT INTO `hisi_system_log` VALUES (143, 1, '学生生活大厅', '/admin.php/teacher/student_other/lst.html', '{\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 1, '127.0.0.1', 1584620732, 1584620732);
INSERT INTO `hisi_system_log` VALUES (144, 1, '发布学生文章', '/admin.php/teacher/student_other/edit.html', '{\"title\":\"qwe\",\"type\":\"1\",\"content\":\"\\u6cd5\\u5927\\u6c34\\u6cd5\\u5b59\\u83f2\\u83f2\\u70e6\\u70e6\\u70e6\\u70e6\\u70e6\\u70e6\\u70e6\\u70e6\\u70e6\\u70e6\\u70e6\\u70e6\\u7231\\u7684\\u8272\\u653e\\u554a\\u624b\\u52a8\\u9600\\u624b\\u52a8\\u9600\\u624b\\u52a8\\u9600\",\"id\":\"1\"}', '保存数据', 9, '127.0.0.1', 1584621002, 1584628180);
INSERT INTO `hisi_system_log` VALUES (145, 1, '发布学生文章', '/admin.php/teacher/student_other/edit.html?id=1', '{\"id\":\"1\"}', '浏览数据', 9, '127.0.0.1', 1584621433, 1584628181);
INSERT INTO `hisi_system_log` VALUES (146, 1, '修改菜单', '/admin.php/system/menu/edit/id/211/mod/teacher.html', '{\"id\":\"211\",\"mod\":\"teacher\"}', '浏览数据', 1, '127.0.0.1', 1584621819, 1584621819);
INSERT INTO `hisi_system_log` VALUES (147, 1, '详情', '/admin.php/teacher/student_other/info.html?id=1', '{\"id\":\"1\"}', '浏览数据', 48, '127.0.0.1', 1584623055, 1585311981);
INSERT INTO `hisi_system_log` VALUES (148, 1, '详情', '/admin.php/teacher/student_other/info.html', '{\"content\":\"\\u554a\\u554a\\u554a\\u554a\\u65f6\\u4ee3\",\"id\":\"1\"}', '保存数据', 4, '127.0.0.1', 1584625006, 1584626416);
INSERT INTO `hisi_system_log` VALUES (149, 1, '详情', '/admin.php/teacher/student_other/info.html', '[]', '浏览数据', 2, '127.0.0.1', 1584625013, 1584626080);
INSERT INTO `hisi_system_log` VALUES (150, 1, '未加入系统菜单', '/admin.php/teacher/student_other/uploadimage.html', '[]', '保存数据', 2, '127.0.0.1', 1584628263, 1584628278);
INSERT INTO `hisi_system_log` VALUES (151, 1, '修改菜单', '/admin.php/system/menu/edit/id/192/mod/parent.html', '{\"id\":\"192\",\"mod\":\"parent\"}', '浏览数据', 1, '127.0.0.1', 1584628888, 1584628888);
INSERT INTO `hisi_system_log` VALUES (152, 1, '日常列表', '/admin.php/parent/student/lst.html', '[]', '浏览数据', 8, '127.0.0.1', 1584629050, 1585313724);
INSERT INTO `hisi_system_log` VALUES (153, 1, '日常列表', '/admin.php/parent/student/lst.html', '{\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 8, '127.0.0.1', 1584629050, 1585313724);
INSERT INTO `hisi_system_log` VALUES (154, 1, '未加入系统菜单', '/admin.php/parent/student/info.html?id=1', '{\"id\":\"1\"}', '浏览数据', 1, '127.0.0.1', 1584629054, 1584629054);
INSERT INTO `hisi_system_log` VALUES (155, 1, '添加菜单', '/admin.php/system/menu/add/pid/192/mod/parent.html', '{\"pid\":\"192\",\"mod\":\"parent\"}', '浏览数据', 1, '127.0.0.1', 1584629073, 1584629073);
INSERT INTO `hisi_system_log` VALUES (156, 1, '详情', '/admin.php/parent/student/info.html?id=1', '{\"id\":\"1\"}', '浏览数据', 1, '127.0.0.1', 1584629101, 1584629101);
INSERT INTO `hisi_system_log` VALUES (157, 1, '基础配置', '/admin.php/system/system/index/group/base.html', '{\"group\":\"base\"}', '浏览数据', 1, '127.0.0.1', 1584629234, 1584629234);
INSERT INTO `hisi_system_log` VALUES (158, 1, '修改角色', '/admin.php/system/user/editrole.html?id=6', '{\"id\":\"6\"}', '浏览数据', 3, '127.0.0.1', 1584629246, 1585314789);
INSERT INTO `hisi_system_log` VALUES (159, 1, '添加管理员', '/admin.php/system/user/adduser.html?hisi_iframe=yes', '{\"hisi_iframe\":\"yes\"}', '浏览数据', 1, '127.0.0.1', 1584629341, 1584629341);
INSERT INTO `hisi_system_log` VALUES (160, 1, '添加管理员', '/admin.php/system/user/adduser.html', '{\"nick\":\"guanliyuan001\",\"username\":\"guanliyuan001\",\"password\":\"guanliyuan999\",\"password_confirm\":\"guanliyuan999\",\"email\":\"\",\"mobile\":\"\",\"iframe\":\"0\",\"status\":\"1\",\"role_id\":{\"4\":\"6\"},\"__token__\":\"f472382f689bab1be4812a81dca9cc17\",\"id\":\"\"}', '保存数据', 1, '127.0.0.1', 1584629367, 1584629367);
INSERT INTO `hisi_system_log` VALUES (161, 14, '后台首页', '/admin.php/system/index/index.html', '[]', '浏览数据', 21, '127.0.0.1', 1584629381, 1585853154);
INSERT INTO `hisi_system_log` VALUES (162, 14, '添加老师', '/admin.php/teach/teacher/edit.html', '[]', '浏览数据', 14, '127.0.0.1', 1584629385, 1585851957);
INSERT INTO `hisi_system_log` VALUES (163, 14, '老师列表', '/admin.php/teach/teacher/lst.html', '[]', '浏览数据', 35, '127.0.0.1', 1584629385, 1585852996);
INSERT INTO `hisi_system_log` VALUES (164, 14, '老师列表', '/admin.php/teach/teacher/lst.html', '{\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 39, '127.0.0.1', 1584629385, 1585852997);
INSERT INTO `hisi_system_log` VALUES (165, 14, '添加学生', '/admin.php/teach/student/edit.html', '[]', '浏览数据', 34, '127.0.0.1', 1584629386, 1585851997);
INSERT INTO `hisi_system_log` VALUES (166, 14, '学生列表', '/admin.php/teach/student/lst.html', '[]', '浏览数据', 35, '127.0.0.1', 1584629387, 1585852174);
INSERT INTO `hisi_system_log` VALUES (167, 14, '学生列表', '/admin.php/teach/student/lst.html', '{\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 42, '127.0.0.1', 1584629387, 1585852175);
INSERT INTO `hisi_system_log` VALUES (168, 14, '添加课程', '/admin.php/teach/course/edit.html', '[]', '浏览数据', 17, '127.0.0.1', 1584629388, 1585852049);
INSERT INTO `hisi_system_log` VALUES (169, 14, '课程列表', '/admin.php/teach/course/lst.html', '[]', '浏览数据', 25, '127.0.0.1', 1584629389, 1585852077);
INSERT INTO `hisi_system_log` VALUES (170, 14, '课程列表', '/admin.php/teach/course/lst.html', '{\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 29, '127.0.0.1', 1584629389, 1585852078);
INSERT INTO `hisi_system_log` VALUES (171, 14, '添加家长', '/admin.php/teach/student_parent/edit.html', '[]', '浏览数据', 22, '127.0.0.1', 1584629389, 1585852146);
INSERT INTO `hisi_system_log` VALUES (172, 14, '家长列表', '/admin.php/teach/student_parent/lst.html', '[]', '浏览数据', 35, '127.0.0.1', 1584629390, 1585853214);
INSERT INTO `hisi_system_log` VALUES (173, 14, '家长列表', '/admin.php/teach/student_parent/lst.html', '{\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 21, '127.0.0.1', 1584629390, 1585752931);
INSERT INTO `hisi_system_log` VALUES (174, 14, '添加招聘', '/admin.php/other/job/edit.html', '[]', '浏览数据', 9, '127.0.0.1', 1584629392, 1585852224);
INSERT INTO `hisi_system_log` VALUES (175, 14, '招聘列表', '/admin.php/other/job/lst.html', '[]', '浏览数据', 14, '127.0.0.1', 1584629393, 1585852256);
INSERT INTO `hisi_system_log` VALUES (176, 14, '招聘列表', '/admin.php/other/job/lst.html', '{\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 16, '127.0.0.1', 1584629393, 1585852256);
INSERT INTO `hisi_system_log` VALUES (177, 14, '添加', '/admin.php/other/student_special/edit.html', '[]', '浏览数据', 11, '127.0.0.1', 1584629394, 1585852316);
INSERT INTO `hisi_system_log` VALUES (178, 14, '列表', '/admin.php/other/student_special/lst.html', '[]', '浏览数据', 16, '127.0.0.1', 1584629394, 1585852349);
INSERT INTO `hisi_system_log` VALUES (179, 14, '列表', '/admin.php/other/student_special/lst.html', '{\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 20, '127.0.0.1', 1584629394, 1585852350);
INSERT INTO `hisi_system_log` VALUES (180, 1, '添加菜单', '/admin.php/system/menu/add/pid/213/mod/other.html', '{\"pid\":\"213\",\"mod\":\"other\"}', '浏览数据', 2, '127.0.0.1', 1584629717, 1584629745);
INSERT INTO `hisi_system_log` VALUES (181, 1, '修改菜单', '/admin.php/system/menu/edit/id/213/mod/other.html', '{\"id\":\"213\",\"mod\":\"other\"}', '浏览数据', 1, '127.0.0.1', 1584629742, 1584629742);
INSERT INTO `hisi_system_log` VALUES (182, 1, '添加', '/admin.php/other/news/edit.html', '[]', '浏览数据', 12, '127.0.0.1', 1584629858, 1584667810);
INSERT INTO `hisi_system_log` VALUES (183, 1, '列表', '/admin.php/other/news/lst.html', '[]', '浏览数据', 28, '127.0.0.1', 1584629859, 1585310095);
INSERT INTO `hisi_system_log` VALUES (184, 1, '列表', '/admin.php/other/news/lst.html', '{\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 24, '127.0.0.1', 1584629859, 1585310095);
INSERT INTO `hisi_system_log` VALUES (185, 1, '添加', '/admin.php/other/news/edit.html', '{\"title\":\"af\",\"content\":\"asdf\\u963f\\u65af\\u8482\\u82ac\",\"id\":\"2\"}', '保存数据', 4, '127.0.0.1', 1584630212, 1585310073);
INSERT INTO `hisi_system_log` VALUES (186, 14, '添加', '/admin.php/other/news/edit.html', '[]', '浏览数据', 9, '127.0.0.1', 1584630627, 1585852365);
INSERT INTO `hisi_system_log` VALUES (187, 14, '列表', '/admin.php/other/news/lst.html', '[]', '浏览数据', 22, '127.0.0.1', 1584630628, 1585852499);
INSERT INTO `hisi_system_log` VALUES (188, 14, '列表', '/admin.php/other/news/lst.html', '{\"page\":\"1\",\"limit\":\"15\",\"title\":\"\"}', '保存数据', 24, '127.0.0.1', 1584630628, 1585852486);
INSERT INTO `hisi_system_log` VALUES (189, 14, '未加入系统菜单', '/admin.php/teach/teacher/updfield.html', '{\"id\":\"3\",\"name\":\"status\",\"val\":\"-1\"}', '保存数据', 1, '127.0.0.1', 1584630773, 1584630773);
INSERT INTO `hisi_system_log` VALUES (190, 13, '日常列表', '/admin.php/parent/student/lst.html', '[]', '浏览数据', 7, '127.0.0.1', 1584666576, 1585313796);
INSERT INTO `hisi_system_log` VALUES (191, 13, '日常列表', '/admin.php/parent/student/lst.html', '{\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 7, '127.0.0.1', 1584666576, 1585313796);
INSERT INTO `hisi_system_log` VALUES (192, 13, '详情', '/admin.php/parent/student/info.html?id=1', '{\"id\":\"1\"}', '浏览数据', 6, '127.0.0.1', 1584666578, 1584678815);
INSERT INTO `hisi_system_log` VALUES (193, 13, '详情', '/admin.php/parent/student/info.html', '{\"content\":\"4124324\",\"id\":\"1\"}', '保存数据', 3, '127.0.0.1', 1584666580, 1584678812);
INSERT INTO `hisi_system_log` VALUES (194, 1, '未加入系统菜单', '/admin.php/teach/teacher/delteacher.html', '{\"id\":\"4\"}', '保存数据', 4, '127.0.0.1', 1584667019, 1584667134);
INSERT INTO `hisi_system_log` VALUES (195, 1, '未加入系统菜单', '/admin.php/teach/student/delstudent.html', '{\"id\":\"2\"}', '保存数据', 1, '127.0.0.1', 1584667303, 1584667303);
INSERT INTO `hisi_system_log` VALUES (196, 1, '未加入系统菜单', '/admin.php/teach/course/delcourse.html', '{\"id\":\"2\"}', '保存数据', 1, '127.0.0.1', 1584667392, 1584667392);
INSERT INTO `hisi_system_log` VALUES (197, 1, '未加入系统菜单', '/admin.php/teach/student_parent/updfield.html', '{\"id\":\"15\",\"name\":\"status\",\"val\":\"-1\"}', '保存数据', 1, '127.0.0.1', 1584667496, 1584667496);
INSERT INTO `hisi_system_log` VALUES (198, 1, '未加入系统菜单', '/admin.php/teach/student_parent/delstudentparent.html', '{\"id\":\"15\"}', '保存数据', 1, '127.0.0.1', 1584667534, 1584667534);
INSERT INTO `hisi_system_log` VALUES (199, 1, '未加入系统菜单', '/admin.php/other/job/deljob.html', '{\"id\":\"2\"}', '保存数据', 1, '127.0.0.1', 1584667777, 1584667777);
INSERT INTO `hisi_system_log` VALUES (200, 1, '未加入系统菜单', '/admin.php/other/student_special/delstudentspecial.html', '{\"id\":\"2\"}', '保存数据', 1, '127.0.0.1', 1584667803, 1584667803);
INSERT INTO `hisi_system_log` VALUES (201, 1, '未加入系统菜单', '/admin.php/other/news/delnews.html', '{\"id\":\"3\"}', '保存数据', 2, '127.0.0.1', 1584667815, 1584667831);
INSERT INTO `hisi_system_log` VALUES (202, 1, '发布学生日常', '/admin.php/teacher/student_other/edit.html', '[]', '浏览数据', 13, '127.0.0.1', 1584667943, 1585313495);
INSERT INTO `hisi_system_log` VALUES (203, 1, '发布学生日常', '/admin.php/teacher/student_other/edit.html', '{\"title\":\"qwe\",\"type\":\"1\",\"student_id\":\"1\",\"content\":\"\\u6cd5\\u5927\\u6c34\\u6cd5\\u5b59\\u83f2\\u83f2\\u70e6\\u70e6\\u70e6\\u70e6\\u70e6\\u70e6\\u70e6\\u70e6\\u70e6\\u70e6\\u70e6\\u70e6\\u7231\\u7684\\u8272\\u653e\\u554a\\u624b\\u52a8\\u9600\\u624b\\u52a8\\u9600\\u624b\\u52a8\\u9600\",\"id\":\"1\"}', '保存数据', 4, '127.0.0.1', 1584667945, 1585311969);
INSERT INTO `hisi_system_log` VALUES (204, 1, '未加入系统菜单', '/admin.php/teacher/student_other/delstudentother.html', '{\"id\":\"2\"}', '保存数据', 1, '127.0.0.1', 1584667949, 1584667949);
INSERT INTO `hisi_system_log` VALUES (205, 13, '未加入系统菜单', '/admin.php/parent/student/info.html/id=1', '[]', '浏览数据', 2, '127.0.0.1', 1584678688, 1584678689);
INSERT INTO `hisi_system_log` VALUES (206, 3, '发布学生日常', '/admin.php/teacher/student_other/edit.html', '[]', '浏览数据', 12, '127.0.0.1', 1584678829, 1585852811);
INSERT INTO `hisi_system_log` VALUES (207, 3, '历史列表', '/admin.php/teacher/student_other/lst.html', '[]', '浏览数据', 24, '127.0.0.1', 1584678831, 1585852870);
INSERT INTO `hisi_system_log` VALUES (208, 3, '历史列表', '/admin.php/teacher/student_other/lst.html', '{\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 29, '127.0.0.1', 1584678831, 1585852870);
INSERT INTO `hisi_system_log` VALUES (209, 3, '详情', '/admin.php/teacher/student_other/info.html?id=1', '{\"id\":\"1\"}', '浏览数据', 4, '127.0.0.1', 1584678845, 1584678882);
INSERT INTO `hisi_system_log` VALUES (210, 3, '详情', '/admin.php/teacher/student_other/info.html', '{\"content\":\"\\u662f\\u7684\",\"id\":\"3\"}', '保存数据', 4, '127.0.0.1', 1584678848, 1585773945);
INSERT INTO `hisi_system_log` VALUES (211, 3, '未加入系统菜单', '/admin.php/teacher/student_other/info.html/id=1', '[]', '浏览数据', 2, '127.0.0.1', 1584678850, 1584678869);
INSERT INTO `hisi_system_log` VALUES (212, 1, '添加老师', '/admin.php/teach/teacher/edit.html?id=18', '{\"id\":\"18\"}', '浏览数据', 5, '127.0.0.1', 1585309682, 1585309841);
INSERT INTO `hisi_system_log` VALUES (213, 1, '添加', '/admin.php/other/news/edit.html?id=2', '{\"id\":\"2\"}', '浏览数据', 3, '127.0.0.1', 1585309982, 1585310070);
INSERT INTO `hisi_system_log` VALUES (214, 1, '发布学生日常', '/admin.php/teacher/student_other/edit.html?id=1', '{\"id\":\"1\"}', '浏览数据', 5, '127.0.0.1', 1585311943, 1585311983);
INSERT INTO `hisi_system_log` VALUES (215, 1, '添加菜单', '/admin.php/system/menu/add/pid/216/mod/other.html', '{\"pid\":\"216\",\"mod\":\"other\"}', '浏览数据', 1, '127.0.0.1', 1585314031, 1585314031);
INSERT INTO `hisi_system_log` VALUES (216, 1, '修改菜单', '/admin.php/system/menu/edit/id/217/mod/other.html', '{\"id\":\"217\",\"mod\":\"other\"}', '浏览数据', 1, '127.0.0.1', 1585314075, 1585314075);
INSERT INTO `hisi_system_log` VALUES (217, 1, '预约列表', '/admin.php/other/appoint/lst.html', '[]', '浏览数据', 10, '127.0.0.1', 1585314264, 1585314686);
INSERT INTO `hisi_system_log` VALUES (218, 1, '预约列表', '/admin.php/other/appoint/lst.html', '{\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 19, '127.0.0.1', 1585314296, 1585314686);
INSERT INTO `hisi_system_log` VALUES (219, 1, '未加入系统菜单', '/admin.php/other/appoint/del.html', '{\"id\":\"1\"}', '保存数据', 1, '127.0.0.1', 1585314686, 1585314686);
INSERT INTO `hisi_system_log` VALUES (220, 1, '修改管理员', '/admin.php/system/user/edituser.html?id=14&hisi_iframe=yes', '{\"id\":\"14\",\"hisi_iframe\":\"yes\"}', '浏览数据', 1, '127.0.0.1', 1585314948, 1585314948);
INSERT INTO `hisi_system_log` VALUES (221, 1, '修改管理员', '/admin.php/system/user/edituser.html', '{\"nick\":\"guanliyuan001\",\"username\":\"guanliyuan001\",\"password\":\"guanliyuan001\",\"password_confirm\":\"guanliyuan001\",\"email\":\"\",\"mobile\":\"\",\"iframe\":\"0\",\"status\":\"1\",\"role_id\":{\"4\":\"6\"},\"__token__\":\"252a6747b668250842278ce0fbaac1bb\",\"id\":\"14\"}', '保存数据', 1, '127.0.0.1', 1585314973, 1585314973);
INSERT INTO `hisi_system_log` VALUES (222, 14, '预约列表', '/admin.php/other/appoint/lst.html', '[]', '浏览数据', 18, '127.0.0.1', 1585314998, 1585852534);
INSERT INTO `hisi_system_log` VALUES (223, 14, '预约列表', '/admin.php/other/appoint/lst.html', '{\"page\":\"1\",\"limit\":\"15\",\"mobile\":\"\"}', '保存数据', 30, '127.0.0.1', 1585314998, 1585852561);
INSERT INTO `hisi_system_log` VALUES (224, 14, '添加', '/admin.php/other/news/edit.html?id=2', '{\"id\":\"2\"}', '浏览数据', 3, '127.0.0.1', 1585320944, 1585745576);
INSERT INTO `hisi_system_log` VALUES (225, 14, '添加', '/admin.php/other/news/edit.html', '{\"title\":\"ssss\",\"content\":\"https:\\/\\/www.baidu.com\\/index.php?tn=98012088_5_dg&amp;ch=2\",\"id\":\"6\"}', '保存数据', 8, '127.0.0.1', 1585320951, 1585852374);
INSERT INTO `hisi_system_log` VALUES (226, 14, '添加老师', '/admin.php/teach/teacher/edit.html?id=18', '{\"id\":\"18\"}', '浏览数据', 18, '127.0.0.1', 1585321304, 1585852986);
INSERT INTO `hisi_system_log` VALUES (227, 14, '添加老师', '/admin.php/teach/teacher/edit.html', '{\"nick\":\"\\u4e00\\u7c73\\u516b\\u516b\",\"head_img_url\":\"\\\\upload\\\\img\\\\20200403\\\\d312b45f8c9c200ba561202ce243f230.jpeg\",\"username\":\"yimibaba\",\"password\":\"123456\",\"mobile\":\"123456\",\"address\":\"123456\",\"desc\":\"\\u4e00\\u7c73\\u516b\\u516b\",\"hor\":\"5\",\"manner\":\"5\",\"id\":\"18\"}', '保存数据', 14, '127.0.0.1', 1585322327, 1585852994);
INSERT INTO `hisi_system_log` VALUES (228, 14, '添加老师', '/admin.php/teach/teacher/edit.html?id=3', '{\"id\":\"3\"}', '浏览数据', 5, '127.0.0.1', 1585322338, 1585851784);
INSERT INTO `hisi_system_log` VALUES (229, 1, '添加', '/admin.php/other/student_special/edit.html?id=5', '{\"id\":\"5\"}', '浏览数据', 1, '127.0.0.1', 1585409641, 1585409641);
INSERT INTO `hisi_system_log` VALUES (230, 14, '未加入系统菜单', '/admin.php/teach/teacher/uploadimage.html', '[]', '保存数据', 6, '127.0.0.1', 1585661556, 1585851942);
INSERT INTO `hisi_system_log` VALUES (231, 14, '未加入系统菜单', '/admin.php/teach/teacher/delteacher.html', '{\"id\":\"24\"}', '保存数据', 2, '127.0.0.1', 1585661616, 1585851973);
INSERT INTO `hisi_system_log` VALUES (232, 14, '添加老师', '/admin.php/teach/teacher/edit.html?id=19', '{\"id\":\"19\"}', '浏览数据', 2, '127.0.0.1', 1585661706, 1585851766);
INSERT INTO `hisi_system_log` VALUES (233, 14, '添加学生', '/admin.php/teach/student/edit.html', '{\"name\":\"111\",\"mobile\":\"111\",\"lift\":\"11\",\"weight\":\"11\",\"class\":\"1\",\"school\":\"1\",\"address\":\"1\",\"reg_time\":\"2020-04-03 00:00:00\",\"id\":\"15\"}', '保存数据', 16, '127.0.0.1', 1585661799, 1585852019);
INSERT INTO `hisi_system_log` VALUES (234, 14, '家长列表', '/admin.php/teach/student_parent/lst.html?student_id=3', '{\"student_id\":\"3\"}', '浏览数据', 2, '127.0.0.1', 1585661814, 1585773805);
INSERT INTO `hisi_system_log` VALUES (235, 14, '未加入系统菜单', '/admin.php/teach/student/delstudent.html', '{\"id\":\"15\"}', '保存数据', 2, '127.0.0.1', 1585661872, 1585852027);
INSERT INTO `hisi_system_log` VALUES (236, 14, '添加学生', '/admin.php/teach/student/edit.html?id=4', '{\"id\":\"4\"}', '浏览数据', 1, '127.0.0.1', 1585661924, 1585661924);
INSERT INTO `hisi_system_log` VALUES (237, 14, '家长列表', '/admin.php/teach/student_parent/lst.html?student_id=5', '{\"student_id\":\"5\"}', '浏览数据', 5, '127.0.0.1', 1585662399, 1585852166);
INSERT INTO `hisi_system_log` VALUES (238, 14, '添加课程', '/admin.php/teach/course/edit.html', '{\"name\":\"www\",\"teacher_id\":\"18\",\"time\":\"2020-04-03 00:00:00\",\"desc\":\"w\",\"id\":\"8\"}', '保存数据', 8, '127.0.0.1', 1585662434, 1585852057);
INSERT INTO `hisi_system_log` VALUES (239, 14, '添加课程', '/admin.php/teach/course/edit.html?id=1', '{\"id\":\"1\"}', '浏览数据', 1, '127.0.0.1', 1585662467, 1585662467);
INSERT INTO `hisi_system_log` VALUES (240, 14, '未加入系统菜单', '/admin.php/teach/course/delcourse.html', '{\"id\":\"8\"}', '保存数据', 4, '127.0.0.1', 1585662651, 1585852077);
INSERT INTO `hisi_system_log` VALUES (241, 14, '未加入系统菜单', '/admin.php/teach/student_parent/uploadimage.html', '[]', '保存数据', 9, '127.0.0.1', 1585663005, 1585852100);
INSERT INTO `hisi_system_log` VALUES (242, 14, '添加家长', '/admin.php/teach/student_parent/edit.html', '{\"nick\":\"\\u4e09\\u4e09\\u7684\\u5988\\u5988\",\"head_img_url\":\"\\\\upload\\\\img\\\\20200401\\\\8b6dad7d79a4b5148f2eca9d7354acc2.jpg\",\"student_id\":\"5\",\"username\":\"sansanmama\",\"password\":\"123456\",\"mobile\":\"123456\",\"id\":\"21\"}', '保存数据', 17, '127.0.0.1', 1585663605, 1585853212);
INSERT INTO `hisi_system_log` VALUES (243, 14, '家长列表', '/admin.php/teach/student_parent/lst.html?student_id=6', '{\"student_id\":\"6\"}', '浏览数据', 2, '127.0.0.1', 1585745008, 1585773822);
INSERT INTO `hisi_system_log` VALUES (244, 14, '添加家长', '/admin.php/teach/student_parent/edit.html?id=13', '{\"id\":\"13\"}', '浏览数据', 2, '127.0.0.1', 1585745105, 1585745121);
INSERT INTO `hisi_system_log` VALUES (245, 14, '未加入系统菜单', '/admin.php/teach/student_parent/delstudentparent.html', '{\"id\":\"25\"}', '保存数据', 2, '127.0.0.1', 1585745152, 1585852157);
INSERT INTO `hisi_system_log` VALUES (246, 14, '添加学生', '/admin.php/teach/student/edit.html?id=5', '{\"id\":\"5\"}', '浏览数据', 1, '127.0.0.1', 1585745258, 1585745258);
INSERT INTO `hisi_system_log` VALUES (247, 14, '添加招聘', '/admin.php/other/job/edit.html', '{\"title\":\"sss\",\"content\":\"sss\",\"id\":\"5\"}', '保存数据', 5, '127.0.0.1', 1585745309, 1585852243);
INSERT INTO `hisi_system_log` VALUES (248, 14, '未加入系统菜单', '/admin.php/other/student_special/uploadimage.html', '[]', '保存数据', 5, '127.0.0.1', 1585745366, 1585852312);
INSERT INTO `hisi_system_log` VALUES (249, 14, '添加', '/admin.php/other/student_special/edit.html', '{\"title\":\"sss\",\"img\":\"\\\\upload\\\\img\\\\20200403\\\\3eb99f1c16e0074e3e7826ec5cac8c02.jpeg\",\"id\":\"8\"}', '保存数据', 6, '127.0.0.1', 1585745368, 1585852334);
INSERT INTO `hisi_system_log` VALUES (250, 14, '添加', '/admin.php/other/student_special/edit.html?id=1', '{\"id\":\"1\"}', '浏览数据', 2, '127.0.0.1', 1585745376, 1585772508);
INSERT INTO `hisi_system_log` VALUES (251, 14, '添加', '/admin.php/other/student_special/edit.html?id=3', '{\"id\":\"3\"}', '浏览数据', 1, '127.0.0.1', 1585745403, 1585745403);
INSERT INTO `hisi_system_log` VALUES (252, 14, '未加入系统菜单', '/admin.php/other/student_special/delstudentspecial.html', '{\"id\":\"8\"}', '保存数据', 4, '127.0.0.1', 1585745416, 1585852349);
INSERT INTO `hisi_system_log` VALUES (253, 14, '添加', '/admin.php/other/news/edit.html?id=4', '{\"id\":\"4\"}', '浏览数据', 1, '127.0.0.1', 1585745624, 1585745624);
INSERT INTO `hisi_system_log` VALUES (254, 14, '未加入系统菜单', '/admin.php/other', '[]', '浏览数据', 1, '127.0.0.1', 1585747809, 1585747809);
INSERT INTO `hisi_system_log` VALUES (255, 14, '未加入系统菜单', '/admin.php/other/appoint/edit.html', '[]', '浏览数据', 1, '127.0.0.1', 1585750381, 1585750381);
INSERT INTO `hisi_system_log` VALUES (256, 14, '添加家长', '/admin.php/teach/student_parent/edit.html?id=22', '{\"id\":\"22\"}', '浏览数据', 6, '127.0.0.1', 1585750628, 1585853217);
INSERT INTO `hisi_system_log` VALUES (257, 3, '未加入系统菜单', '/admin.php/teacher/student/parentLst.html?student_id=5', '{\"student_id\":\"5\"}', '浏览数据', 3, '127.0.0.1', 1585750884, 1585852742);
INSERT INTO `hisi_system_log` VALUES (258, 3, '发布学生日常', '/admin.php/teacher/student_other/edit.html', '{\"title\":\"\\u601d\\u601d\\u540c\\u5b66\\u7684\\u6570\\u5b66\",\"type\":\"1\",\"student_id\":\"6\",\"content\":\"\\u6570\\u5b66\\u8868\\u73b0\",\"id\":\"5\"}', '保存数据', 8, '127.0.0.1', 1585750936, 1585852867);
INSERT INTO `hisi_system_log` VALUES (259, 3, '发布学生日常', '/admin.php/teacher/student_other/edit.html?id=3', '{\"id\":\"3\"}', '浏览数据', 2, '127.0.0.1', 1585750950, 1585751149);
INSERT INTO `hisi_system_log` VALUES (260, 3, '详情', '/admin.php/teacher/student_other/info.html?id=3', '{\"id\":\"3\"}', '浏览数据', 6, '127.0.0.1', 1585751137, 1585773947);
INSERT INTO `hisi_system_log` VALUES (261, 3, '未加入系统菜单', '/admin.php/teacher/student_other/delstudentother.html', '{\"id\":\"4\"}', '保存数据', 1, '127.0.0.1', 1585751161, 1585751161);
INSERT INTO `hisi_system_log` VALUES (262, 22, '后台首页', '/admin.php/system/index/index.html', '[]', '浏览数据', 2, '127.0.0.1', 1585751247, 1585774016);
INSERT INTO `hisi_system_log` VALUES (263, 22, '日常列表', '/admin.php/parent/student/lst.html', '[]', '浏览数据', 2, '127.0.0.1', 1585751254, 1585774021);
INSERT INTO `hisi_system_log` VALUES (264, 22, '日常列表', '/admin.php/parent/student/lst.html', '{\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 2, '127.0.0.1', 1585751254, 1585774022);
INSERT INTO `hisi_system_log` VALUES (265, 22, '详情', '/admin.php/parent/student/info.html?id=3', '{\"id\":\"3\"}', '浏览数据', 4, '127.0.0.1', 1585751257, 1585774031);
INSERT INTO `hisi_system_log` VALUES (266, 22, '详情', '/admin.php/parent/student/info.html', '{\"content\":\"11\",\"id\":\"3\"}', '保存数据', 2, '127.0.0.1', 1585751278, 1585774029);
INSERT INTO `hisi_system_log` VALUES (267, 20, '后台首页', '/admin.php/system/index/index.html', '[]', '浏览数据', 4, '127.0.0.1', 1585751308, 1585853276);
INSERT INTO `hisi_system_log` VALUES (268, 20, '日常列表', '/admin.php/parent/student/lst.html', '[]', '浏览数据', 6, '127.0.0.1', 1585751315, 1585853301);
INSERT INTO `hisi_system_log` VALUES (269, 20, '日常列表', '/admin.php/parent/student/lst.html', '{\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 6, '127.0.0.1', 1585751316, 1585853302);
INSERT INTO `hisi_system_log` VALUES (270, 14, '添加招聘', '/admin.php/other/job/edit.html?id=1', '{\"id\":\"1\"}', '浏览数据', 1, '127.0.0.1', 1585772595, 1585772595);
INSERT INTO `hisi_system_log` VALUES (271, 14, '未加入系统菜单', '/admin.php/other/job/deljob.html', '{\"id\":\"5\"}', '保存数据', 2, '127.0.0.1', 1585772625, 1585852256);
INSERT INTO `hisi_system_log` VALUES (272, 14, '家长列表', '/admin.php/teach/student_parent/lst.html?student_id=', '{\"student_id\":\"\",\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 24, '127.0.0.1', 1585772680, 1585853215);
INSERT INTO `hisi_system_log` VALUES (273, 3, '未加入系统菜单', '/admin.php/teacher/student/parentLst.html?student_id=3', '{\"student_id\":\"3\"}', '浏览数据', 3, '127.0.0.1', 1585772997, 1585852763);
INSERT INTO `hisi_system_log` VALUES (274, 14, '家长列表', '/admin.php/teach/student_parent/lst.html?student_id=5', '{\"student_id\":\"5\",\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 2, '127.0.0.1', 1585773798, 1585852167);
INSERT INTO `hisi_system_log` VALUES (275, 14, '家长列表', '/admin.php/teach/student_parent/lst.html?student_id=3', '{\"student_id\":\"3\",\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 1, '127.0.0.1', 1585773805, 1585773805);
INSERT INTO `hisi_system_log` VALUES (276, 14, '家长列表', '/admin.php/teach/student_parent/lst.html?student_id=6', '{\"student_id\":\"6\",\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 1, '127.0.0.1', 1585773823, 1585773823);
INSERT INTO `hisi_system_log` VALUES (277, 3, '详情', '/admin.php/teacher/student_other/info.html?id=5', '{\"id\":\"5\"}', '浏览数据', 2, '127.0.0.1', 1585773972, 1585852854);
INSERT INTO `hisi_system_log` VALUES (278, 22, '修改', '/admin.php/parent/person/edit.html', '[]', '浏览数据', 2, '127.0.0.1', 1585774035, 1585774039);
INSERT INTO `hisi_system_log` VALUES (279, 22, '修改', '/admin.php/parent/person/edit.html', '{\"nick\":\"yiyidemama\",\"head_img_url\":\"\\\\upload\\\\img\\\\20200401\\\\000fb910c6ea8bcb41d59273832a5326.jpg\",\"mobile\":\"111\"}', '保存数据', 1, '127.0.0.1', 1585774036, 1585774036);
INSERT INTO `hisi_system_log` VALUES (280, 20, '修改密码', '/admin.php/parent/person/editpass.html', '[]', '浏览数据', 1, '127.0.0.1', 1585774059, 1585774059);
INSERT INTO `hisi_system_log` VALUES (281, 20, '修改密码', '/admin.php/parent/person/editpass.html', '{\"password\":\"guanliyuan001\",\"password1\":\"\"}', '保存数据', 1, '127.0.0.1', 1585774061, 1585774061);
INSERT INTO `hisi_system_log` VALUES (282, 20, '详情', '/admin.php/parent/student/info.html?id=5', '{\"id\":\"5\"}', '浏览数据', 4, '127.0.0.1', 1585774067, 1585853303);
INSERT INTO `hisi_system_log` VALUES (283, 20, '详情', '/admin.php/parent/student/info.html', '{\"content\":\"44\",\"id\":\"5\"}', '保存数据', 1, '127.0.0.1', 1585774074, 1585774074);
INSERT INTO `hisi_system_log` VALUES (284, 14, '添加学生', '/admin.php/teach/student/edit.html?id=15', '{\"id\":\"15\"}', '浏览数据', 2, '127.0.0.1', 1585852005, 1585852016);
INSERT INTO `hisi_system_log` VALUES (285, 14, '添加课程', '/admin.php/teach/course/edit.html?id=8', '{\"id\":\"8\"}', '浏览数据', 1, '127.0.0.1', 1585852055, 1585852055);
INSERT INTO `hisi_system_log` VALUES (286, 14, '添加家长', '/admin.php/teach/student_parent/edit.html?id=20', '{\"id\":\"20\"}', '浏览数据', 2, '127.0.0.1', 1585852093, 1585853163);
INSERT INTO `hisi_system_log` VALUES (287, 14, '家长列表', '/admin.php/teach/student_parent/lst.html?student_id=7', '{\"student_id\":\"7\"}', '浏览数据', 1, '127.0.0.1', 1585852172, 1585852172);
INSERT INTO `hisi_system_log` VALUES (288, 14, '家长列表', '/admin.php/teach/student_parent/lst.html?student_id=7', '{\"student_id\":\"7\",\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 1, '127.0.0.1', 1585852172, 1585852172);
INSERT INTO `hisi_system_log` VALUES (289, 14, '添加招聘', '/admin.php/other/job/edit.html?id=5', '{\"id\":\"5\"}', '浏览数据', 1, '127.0.0.1', 1585852238, 1585852238);
INSERT INTO `hisi_system_log` VALUES (290, 14, '添加', '/admin.php/other/student_special/edit.html?id=8', '{\"id\":\"8\"}', '浏览数据', 1, '127.0.0.1', 1585852332, 1585852332);
INSERT INTO `hisi_system_log` VALUES (291, 14, '添加', '/admin.php/other/news/edit.html?id=6', '{\"id\":\"6\"}', '浏览数据', 2, '127.0.0.1', 1585852372, 1585852500);
INSERT INTO `hisi_system_log` VALUES (292, 3, '未加入系统菜单', '/admin.php/teacher/student/parentlst.html?student_id=5', '{\"student_id\":\"5\",\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 1, '127.0.0.1', 1585852742, 1585852742);
INSERT INTO `hisi_system_log` VALUES (293, 3, '未加入系统菜单', '/admin.php/teacher/student/parentlst.html?student_id=3', '{\"student_id\":\"3\",\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 1, '127.0.0.1', 1585852763, 1585852763);
INSERT INTO `hisi_system_log` VALUES (294, 3, '详情', '/admin.php/teacher/student_other/info.html?id=6', '{\"id\":\"6\"}', '浏览数据', 1, '127.0.0.1', 1585852819, 1585852819);
INSERT INTO `hisi_system_log` VALUES (295, 3, '发布学生日常', '/admin.php/teacher/student_other/edit.html?id=6', '{\"id\":\"6\"}', '浏览数据', 1, '127.0.0.1', 1585852830, 1585852830);
INSERT INTO `hisi_system_log` VALUES (296, 3, '发布学生日常', '/admin.php/teacher/student_other/edit.html?id=5', '{\"id\":\"5\"}', '浏览数据', 1, '127.0.0.1', 1585852859, 1585852859);
INSERT INTO `hisi_system_log` VALUES (297, 3, '未加入系统菜单', '/admin.php/teacher/person/uploadimage.html', '[]', '保存数据', 1, '127.0.0.1', 1585852909, 1585852909);
INSERT INTO `hisi_system_log` VALUES (298, 18, '后台首页', '/admin.php/system/index/index.html', '[]', '浏览数据', 1, '127.0.0.1', 1585853019, 1585853019);
INSERT INTO `hisi_system_log` VALUES (299, 18, '学生列表', '/admin.php/teacher/student/lst.html', '[]', '浏览数据', 1, '127.0.0.1', 1585853021, 1585853021);
INSERT INTO `hisi_system_log` VALUES (300, 18, '学生列表', '/admin.php/teacher/student/lst.html', '{\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 1, '127.0.0.1', 1585853022, 1585853022);
INSERT INTO `hisi_system_log` VALUES (301, 18, '发布学生日常', '/admin.php/teacher/student_other/edit.html', '[]', '浏览数据', 2, '127.0.0.1', 1585853027, 1585853059);
INSERT INTO `hisi_system_log` VALUES (302, 18, '发布学生日常', '/admin.php/teacher/student_other/edit.html', '{\"title\":\"\\u601d\\u601d\\u7684\\u8bed\\u6587\\u6210\\u7ee9\",\"type\":\"1\",\"student_id\":\"6\",\"content\":\"\\u8981\\u52a0\\u628a\\u52b2\",\"id\":\"\"}', '保存数据', 1, '127.0.0.1', 1585853057, 1585853057);
INSERT INTO `hisi_system_log` VALUES (303, 18, '修改密码', '/admin.php/teacher/person/editpass.html', '[]', '浏览数据', 1, '127.0.0.1', 1585853061, 1585853061);
INSERT INTO `hisi_system_log` VALUES (304, 14, '添加家长', '/admin.php/teach/student_parent/edit.html?id=21', '{\"id\":\"21\"}', '浏览数据', 1, '127.0.0.1', 1585853198, 1585853198);
INSERT INTO `hisi_system_log` VALUES (305, 21, '后台首页', '/admin.php/system/index/index.html', '[]', '浏览数据', 1, '127.0.0.1', 1585853235, 1585853235);
INSERT INTO `hisi_system_log` VALUES (306, 21, '日常列表', '/admin.php/parent/student/lst.html', '[]', '浏览数据', 1, '127.0.0.1', 1585853239, 1585853239);
INSERT INTO `hisi_system_log` VALUES (307, 21, '日常列表', '/admin.php/parent/student/lst.html', '{\"page\":\"1\",\"limit\":\"15\"}', '保存数据', 1, '127.0.0.1', 1585853240, 1585853240);
INSERT INTO `hisi_system_log` VALUES (308, 21, '详情', '/admin.php/parent/student/info.html?id=6', '{\"id\":\"6\"}', '浏览数据', 2, '127.0.0.1', 1585853242, 1585853255);
INSERT INTO `hisi_system_log` VALUES (309, 21, '详情', '/admin.php/parent/student/info.html', '{\"content\":\"\\u6536\\u5230\",\"id\":\"6\"}', '保存数据', 1, '127.0.0.1', 1585853253, 1585853253);
INSERT INTO `hisi_system_log` VALUES (310, 20, '详情', '/admin.php/parent/student/info.html?id=7', '{\"id\":\"7\"}', '浏览数据', 1, '127.0.0.1', 1585853287, 1585853287);

-- ----------------------------
-- Table structure for hisi_system_menu
-- ----------------------------
DROP TABLE IF EXISTS `hisi_system_menu`;
CREATE TABLE `hisi_system_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '管理员ID(快捷菜单专用)',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `module` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模块名或插件名，插件名格式:plugins.插件名',
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单标题',
  `icon` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'aicon ai-shezhi' COMMENT '菜单图标',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '链接地址(模块/控制器/方法)',
  `param` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '扩展参数',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '_self' COMMENT '打开方式(_blank,_self)',
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `debug` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '开发模式可见',
  `system` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否为系统菜单，系统菜单不可删除',
  `nav` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否为菜单显示，1显示0不显示',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态1显示，0隐藏',
  `ctime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 218 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[系统] 管理菜单' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hisi_system_menu
-- ----------------------------
INSERT INTO `hisi_system_menu` VALUES (1, 0, 0, 'system', '首页', '', 'system/index', '', '_self', 0, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (2, 0, 0, 'system', '系统', '', 'system/system', '', '_self', 200, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (3, 0, 0, 'system', '插件', 'aicon ai-shezhi', 'system/plugins', '', '_self', 2, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (4, 0, 1, 'system', '快捷菜单', 'aicon ai-caidan', 'system/quick', '', '_self', 0, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (5, 0, 3, 'system', '插件列表', 'aicon ai-mokuaiguanli', 'system/plugins', '', '_self', 0, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (6, 0, 2, 'system', '系统基础', 'aicon ai-gongneng', 'system/system', '', '_self', 1, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (7, 0, 17, 'system', '导入主题SQL', '', 'system/module/exeSql', '', '_self', 10, 0, 1, 0, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (8, 0, 2, 'system', '系统扩展', 'aicon ai-shezhi', 'system/extend', '', '_self', 3, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (9, 0, 4, 'system', '预留占位', '', '', '', '_self', 4, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (10, 0, 6, 'system', '系统设置', 'aicon ai-icon01', 'system/system/index', '', '_self', 1, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (11, 0, 6, 'system', '配置管理', 'aicon ai-peizhiguanli', 'system/config/index', '', '_self', 2, 1, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (12, 0, 6, 'system', '系统菜单', 'aicon ai-systemmenu', 'system/menu/index', '', '_self', 3, 1, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (13, 0, 6, 'system', '管理员角色', '', 'system/user/role', '', '_self', 4, 0, 1, 0, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (14, 0, 6, 'system', '系统管理员', 'aicon ai-tubiao05', 'system/user/index', '', '_self', 5, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (15, 0, 6, 'system', '系统日志', 'aicon ai-xitongrizhi-tiaoshi', 'system/log/index', '', '_self', 7, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (16, 0, 6, 'system', '附件管理', '', 'system/annex/index', '', '_self', 8, 0, 1, 0, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (17, 0, 8, 'system', '本地模块', 'aicon ai-mokuaiguanli1', 'system/module/index', '', '_self', 1, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (18, 0, 8, 'system', '本地插件', 'aicon ai-chajianguanli', 'system/plugins/index', '', '_self', 2, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (19, 0, 8, 'system', '插件钩子', 'aicon ai-icon-test', 'system/hook/index', '', '_self', 3, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (20, 0, 4, 'system', '预留占位', '', '', '', '_self', 1, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (21, 0, 4, 'system', '预留占位', '', '', '', '_self', 2, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (22, 0, 4, 'system', '预留占位', '', '', '', '_self', 1, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (23, 0, 4, 'system', '预留占位', '', '', '', '_self', 2, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (24, 0, 4, 'system', '后台首页', '', 'system/index/index', '', '_self', 100, 0, 1, 0, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (25, 0, 4, 'system', '清空缓存', '', 'system/index/clear', '', '_self', 2, 0, 1, 0, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (26, 0, 12, 'system', '添加菜单', '', 'system/menu/add', '', '_self', 1, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (27, 0, 12, 'system', '修改菜单', '', 'system/menu/edit', '', '_self', 2, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (28, 0, 12, 'system', '删除菜单', '', 'system/menu/del', '', '_self', 3, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (29, 0, 12, 'system', '状态设置', '', 'system/menu/status', '', '_self', 4, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (30, 0, 12, 'system', '排序设置', '', 'system/menu/sort', '', '_self', 5, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (31, 0, 12, 'system', '添加快捷菜单', '', 'system/menu/quick', '', '_self', 6, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (32, 0, 12, 'system', '导出菜单', '', 'system/menu/export', '', '_self', 7, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (33, 0, 13, 'system', '添加角色', '', 'system/user/addrole', '', '_self', 1, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (34, 0, 13, 'system', '修改角色', '', 'system/user/editrole', '', '_self', 2, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (35, 0, 13, 'system', '删除角色', '', 'system/user/delrole', '', '_self', 3, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (36, 0, 13, 'system', '状态设置', '', 'system/user/statusRole', '', '_self', 4, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (37, 0, 14, 'system', '添加管理员', '', 'system/user/adduser', '', '_self', 1, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (38, 0, 14, 'system', '修改管理员', '', 'system/user/edituser', '', '_self', 2, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (39, 0, 14, 'system', '删除管理员', '', 'system/user/deluser', '', '_self', 3, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (40, 0, 14, 'system', '状态设置', '', 'system/user/status', '', '_self', 4, 0, 1, 0, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (41, 0, 4, 'system', '个人信息设置', '', 'system/user/info', '', '_self', 5, 0, 1, 0, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (42, 0, 18, 'system', '安装插件', '', 'system/plugins/install', '', '_self', 1, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (43, 0, 18, 'system', '卸载插件', '', 'system/plugins/uninstall', '', '_self', 2, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (44, 0, 18, 'system', '删除插件', '', 'system/plugins/del', '', '_self', 3, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (45, 0, 18, 'system', '状态设置', '', 'system/plugins/status', '', '_self', 4, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (46, 0, 18, 'system', '生成插件', '', 'system/plugins/design', '', '_self', 5, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (47, 0, 18, 'system', '运行插件', '', 'system/plugins/run', '', '_self', 6, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (48, 0, 18, 'system', '更新插件', '', 'system/plugins/update', '', '_self', 7, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (49, 0, 18, 'system', '插件配置', '', 'system/plugins/setting', '', '_self', 8, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (50, 0, 19, 'system', '添加钩子', '', 'system/hook/add', '', '_self', 1, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (51, 0, 19, 'system', '修改钩子', '', 'system/hook/edit', '', '_self', 2, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (52, 0, 19, 'system', '删除钩子', '', 'system/hook/del', '', '_self', 3, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (53, 0, 19, 'system', '状态设置', '', 'system/hook/status', '', '_self', 4, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (54, 0, 19, 'system', '插件排序', '', 'system/hook/sort', '', '_self', 5, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (55, 0, 11, 'system', '添加配置', '', 'system/config/add', '', '_self', 1, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (56, 0, 11, 'system', '修改配置', '', 'system/config/edit', '', '_self', 2, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (57, 0, 11, 'system', '删除配置', '', 'system/config/del', '', '_self', 3, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (58, 0, 11, 'system', '状态设置', '', 'system/config/status', '', '_self', 4, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (59, 0, 11, 'system', '排序设置', '', 'system/config/sort', '', '_self', 5, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (60, 0, 10, 'system', '基础配置', '', 'system/system/index', 'group=base', '_self', 1, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (61, 0, 10, 'system', '系统配置', '', 'system/system/index', 'group=sys', '_self', 2, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (62, 0, 10, 'system', '上传配置', '', 'system/system/index', 'group=upload', '_self', 3, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (63, 0, 10, 'system', '开发配置', '', 'system/system/index', 'group=develop', '_self', 4, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (64, 0, 17, 'system', '生成模块', '', 'system/module/design', '', '_self', 6, 1, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (65, 0, 17, 'system', '安装模块', '', 'system/module/install', '', '_self', 1, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (66, 0, 17, 'system', '卸载模块', '', 'system/module/uninstall', '', '_self', 2, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (67, 0, 17, 'system', '状态设置', '', 'system/module/status', '', '_self', 3, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (68, 0, 17, 'system', '设置默认模块', '', 'system/module/setdefault', '', '_self', 4, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (69, 0, 17, 'system', '删除模块', '', 'system/module/del', '', '_self', 5, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (70, 0, 4, 'system', '预留占位', '', '', '', '_self', 1, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (71, 0, 4, 'system', '预留占位', '', '', '', '_self', 2, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (72, 0, 4, 'system', '预留占位', '', '', '', '_self', 3, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (73, 0, 4, 'system', '预留占位', '', '', '', '_self', 4, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (74, 0, 4, 'system', '预留占位', '', '', '', '_self', 5, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (75, 0, 4, 'system', '预留占位', '', '', '', '_self', 0, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (76, 0, 4, 'system', '预留占位', '', '', '', '_self', 0, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (77, 0, 4, 'system', '预留占位', '', '', '', '_self', 0, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (78, 0, 16, 'system', '附件上传', '', 'system/annex/upload', '', '_self', 1, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (79, 0, 16, 'system', '删除附件', '', 'system/annex/del', '', '_self', 2, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (80, 0, 8, 'system', '框架升级', 'aicon ai-iconfontshengji', 'system/upgrade/index', '', '_self', 4, 0, 1, 1, 1, 1491352728);
INSERT INTO `hisi_system_menu` VALUES (81, 0, 80, 'system', '获取升级列表', '', 'system/upgrade/lists', '', '_self', 0, 0, 1, 1, 1, 1491353504);
INSERT INTO `hisi_system_menu` VALUES (82, 0, 80, 'system', '安装升级包', '', 'system/upgrade/install', '', '_self', 0, 0, 1, 1, 1, 1491353568);
INSERT INTO `hisi_system_menu` VALUES (83, 0, 80, 'system', '下载升级包', '', 'system/upgrade/download', '', '_self', 0, 0, 1, 1, 1, 1491395830);
INSERT INTO `hisi_system_menu` VALUES (84, 0, 6, 'system', '数据库管理', 'aicon ai-shujukuguanli', 'system/database/index', '', '_self', 6, 0, 1, 1, 1, 1491461136);
INSERT INTO `hisi_system_menu` VALUES (85, 0, 84, 'system', '备份数据库', '', 'system/database/export', '', '_self', 0, 0, 1, 1, 1, 1491461250);
INSERT INTO `hisi_system_menu` VALUES (86, 0, 84, 'system', '恢复数据库', '', 'system/database/import', '', '_self', 0, 0, 1, 1, 1, 1491461315);
INSERT INTO `hisi_system_menu` VALUES (87, 0, 84, 'system', '优化数据库', '', 'system/database/optimize', '', '_self', 0, 0, 1, 1, 1, 1491467000);
INSERT INTO `hisi_system_menu` VALUES (88, 0, 84, 'system', '删除备份', '', 'system/database/del', '', '_self', 0, 0, 1, 1, 1, 1491467058);
INSERT INTO `hisi_system_menu` VALUES (89, 0, 84, 'system', '修复数据库', '', 'system/database/repair', '', '_self', 0, 0, 1, 1, 1, 1491880879);
INSERT INTO `hisi_system_menu` VALUES (90, 0, 21, 'system', '设置默认等级', '', 'system/member/setdefault', '', '_self', 0, 0, 1, 1, 1, 1491966585);
INSERT INTO `hisi_system_menu` VALUES (91, 0, 10, 'system', '数据库配置', '', 'system/system/index', 'group=databases', '_self', 5, 0, 1, 0, 1, 1492072213);
INSERT INTO `hisi_system_menu` VALUES (92, 0, 17, 'system', '模块打包', '', 'system/module/package', '', '_self', 7, 0, 1, 1, 1, 1492134693);
INSERT INTO `hisi_system_menu` VALUES (93, 0, 18, 'system', '插件打包', '', 'system/plugins/package', '', '_self', 0, 0, 1, 1, 1, 1492134743);
INSERT INTO `hisi_system_menu` VALUES (94, 0, 17, 'system', '主题管理', '', 'system/module/theme', '', '_self', 8, 0, 1, 1, 1, 1492433470);
INSERT INTO `hisi_system_menu` VALUES (95, 0, 17, 'system', '设置默认主题', '', 'system/module/setdefaulttheme', '', '_self', 9, 0, 1, 1, 1, 1492433618);
INSERT INTO `hisi_system_menu` VALUES (96, 0, 17, 'system', '删除主题', '', 'system/module/deltheme', '', '_self', 10, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (97, 0, 6, 'system', '语言包管理', '', 'system/language/index', '', '_self', 9, 0, 1, 0, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (98, 0, 97, 'system', '添加语言包', '', 'system/language/add', '', '_self', 100, 0, 1, 0, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (99, 0, 97, 'system', '修改语言包', '', 'system/language/edit', '', '_self', 100, 0, 1, 0, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (100, 0, 97, 'system', '删除语言包', '', 'system/language/del', '', '_self', 100, 0, 1, 0, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (101, 0, 97, 'system', '排序设置', '', 'system/language/sort', '', '_self', 100, 0, 1, 0, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (102, 0, 97, 'system', '状态设置', '', 'system/language/status', '', '_self', 100, 0, 1, 0, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (103, 0, 16, 'system', '收藏夹图标上传', '', 'system/annex/favicon', '', '_self', 3, 0, 1, 0, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (104, 0, 17, 'system', '导入模块', '', 'system/module/import', '', '_self', 11, 0, 1, 0, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (105, 0, 4, 'system', '后台首页', '', 'system/index/welcome', '', '_self', 100, 0, 1, 0, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (106, 0, 4, 'system', '布局切换', '', 'system/user/iframe', '', '_self', 100, 0, 1, 0, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (107, 0, 15, 'system', '删除日志', '', 'system/log/del', 'table=admin_log', '_self', 100, 0, 1, 0, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (108, 0, 15, 'system', '清空日志', '', 'system/log/clear', '', '_self', 100, 0, 1, 0, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (109, 0, 17, 'system', '编辑模块', '', 'system/module/edit', '', '_self', 100, 0, 1, 0, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (110, 0, 17, 'system', '模块图标上传', '', 'system/module/icon', '', '_self', 100, 0, 1, 0, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (111, 0, 18, 'system', '导入插件', '', 'system/plugins/import', '', '_self', 100, 0, 1, 0, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (112, 0, 4, 'system', '钩子插件状态', '', 'system/hook/hookPluginsStatus', '', '_self', 100, 0, 1, 0, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (113, 0, 4, 'system', '设置主题', '', 'system/user/setTheme', '', '_self', 100, 0, 1, 0, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (114, 0, 8, 'system', '应用市场', 'aicon ai-app-store', 'system/store/index', '', '_self', 0, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (115, 0, 114, 'system', '安装应用', '', 'system/store/install', '', '_self', 0, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (116, 0, 21, 'system', '重置密码', '', 'system/member/resetPwd', '', '_self', 6, 0, 1, 1, 1, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (117, 0, 4, 'system', '预留占位', '', '', '', '_self', 100, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (118, 0, 4, 'system', '预留占位', '', '', '', '_self', 100, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (119, 0, 4, 'system', '预留占位', '', '', '', '_self', 100, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (120, 0, 4, 'system', '预留占位', '', '', '', '_self', 100, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (121, 0, 4, 'system', '预留占位', '', '', '', '_self', 100, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (122, 0, 4, 'system', '预留占位', '', '', '', '_self', 100, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (123, 0, 4, 'system', '预留占位', '', '', '', '_self', 100, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (124, 0, 4, 'system', '预留占位', '', '', '', '_self', 100, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (125, 0, 4, 'system', '预留占位', '', '', '', '_self', 100, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (126, 0, 4, 'system', '预留占位', '', '', '', '_self', 100, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (127, 0, 4, 'system', '预留占位', '', '', '', '_self', 100, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (128, 0, 4, 'system', '预留占位', '', '', '', '_self', 100, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (129, 0, 4, 'system', '预留占位', '', '', '', '_self', 100, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (130, 0, 4, 'system', '预留占位', '', '', '', '_self', 100, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (131, 0, 4, 'system', '预留占位', '', '', '', '_self', 100, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (132, 0, 4, 'system', '预留占位', '', '', '', '_self', 100, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (133, 0, 4, 'system', '预留占位', '', '', '', '_self', 100, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (134, 0, 4, 'system', '预留占位', '', '', '', '_self', 100, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (135, 0, 4, 'system', '预留占位', '', '', '', '_self', 100, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (136, 0, 4, 'system', '预留占位', '', '', '', '_self', 100, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (137, 0, 4, 'system', '预留占位', '', '', '', '_self', 100, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (138, 0, 4, 'system', '预留占位', '', '', '', '_self', 100, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (139, 0, 4, 'system', '预留占位', '', '', '', '_self', 100, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (140, 0, 4, 'system', '预留占位', '', '', '', '_self', 100, 0, 1, 1, 0, 1490315067);
INSERT INTO `hisi_system_menu` VALUES (141, 0, 0, 'developer', '开发助手', 'aicon ai-shezhi', 'developer', '', '_self', 100, 0, 0, 1, 0, 1584524020);
INSERT INTO `hisi_system_menu` VALUES (142, 0, 141, 'developer', '应用中心', 'aicon ai-shezhi', 'developer/index', '', '_self', 0, 0, 0, 1, 1, 1584524020);
INSERT INTO `hisi_system_menu` VALUES (143, 0, 142, 'developer', '模块列表', 'aicon ai-caidan', 'developer/module/index', '', '_self', 0, 0, 0, 1, 1, 1584524020);
INSERT INTO `hisi_system_menu` VALUES (144, 0, 143, 'developer', '设计模块', '', 'developer/module/design', '', '_self', 0, 0, 0, 0, 1, 1584524020);
INSERT INTO `hisi_system_menu` VALUES (145, 0, 143, 'developer', '版本管理', '', 'developer/module/versions', '', '_self', 0, 0, 0, 0, 1, 1584524020);
INSERT INTO `hisi_system_menu` VALUES (146, 0, 143, 'developer', '发布新版本', '', 'developer/module/addVersion', '', '_self', 0, 0, 0, 0, 1, 1584524020);
INSERT INTO `hisi_system_menu` VALUES (147, 0, 143, 'developer', '修改版本', '', 'developer/module/editVersion', '', '_self', 0, 0, 0, 0, 1, 1584524020);
INSERT INTO `hisi_system_menu` VALUES (148, 0, 143, 'developer', '版本打包', '', 'developer/module/package', '', '_self', 0, 0, 0, 0, 1, 1584524020);
INSERT INTO `hisi_system_menu` VALUES (149, 0, 143, 'developer', '版本状态', '', 'developer/module/status', 'table=developer_versions', '_self', 0, 0, 0, 0, 1, 1584524020);
INSERT INTO `hisi_system_menu` VALUES (150, 0, 143, 'developer', '删除版本', '', 'developer/module/delVersion', '', '_self', 0, 0, 0, 0, 1, 1584524020);
INSERT INTO `hisi_system_menu` VALUES (151, 0, 143, 'developer', '生成模块', '', 'developer/module/build', '', '_self', 0, 0, 0, 0, 1, 1584524020);
INSERT INTO `hisi_system_menu` VALUES (152, 0, 143, 'developer', '图标上传', '', 'developer/module/icon', '', '_self', 0, 0, 0, 0, 1, 1584524020);
INSERT INTO `hisi_system_menu` VALUES (153, 0, 142, 'developer', '插件列表', 'aicon ai-caidan', 'developer/plugins/index', '', '_self', 0, 0, 0, 1, 1, 1584524020);
INSERT INTO `hisi_system_menu` VALUES (154, 0, 153, 'developer', '设计插件', '', 'developer/plugins/design', '', '_self', 0, 0, 0, 0, 1, 1584524020);
INSERT INTO `hisi_system_menu` VALUES (155, 0, 153, 'developer', '版本管理', '', 'developer/plugins/versions', '', '_self', 0, 0, 0, 0, 1, 1584524020);
INSERT INTO `hisi_system_menu` VALUES (156, 0, 153, 'developer', '发布新版本', '', 'developer/plugins/addVersion', '', '_self', 0, 0, 0, 0, 1, 1584524020);
INSERT INTO `hisi_system_menu` VALUES (157, 0, 153, 'developer', '修改版本', '', 'developer/plugins/editVersion', '', '_self', 0, 0, 0, 0, 1, 1584524020);
INSERT INTO `hisi_system_menu` VALUES (158, 0, 153, 'developer', '版本打包', '', 'developer/plugins/package', '', '_self', 0, 0, 0, 0, 1, 1584524020);
INSERT INTO `hisi_system_menu` VALUES (159, 0, 153, 'developer', '版本状态', '', 'developer/plugins/status', 'table=developer_versions', '_self', 0, 0, 0, 0, 1, 1584524020);
INSERT INTO `hisi_system_menu` VALUES (160, 0, 153, 'developer', '删除版本', '', 'developer/plugins/delVersion', '', '_self', 0, 0, 0, 0, 1, 1584524020);
INSERT INTO `hisi_system_menu` VALUES (161, 0, 153, 'developer', '生成插件', '', 'developer/plugins/build', '', '_self', 0, 0, 0, 0, 1, 1584524020);
INSERT INTO `hisi_system_menu` VALUES (162, 0, 153, 'developer', '图标上传', '', 'developer/plugins/icon', '', '_self', 0, 0, 0, 0, 1, 1584524020);
INSERT INTO `hisi_system_menu` VALUES (169, 0, 0, 'teach', '教学', 'aicon ai-shezhi', 'teach', '', '_self', 100, 0, 0, 1, 1, 1584524457);
INSERT INTO `hisi_system_menu` VALUES (170, 0, 0, 'other', '其他', 'aicon ai-shezhi', 'other', '', '_self', 100, 0, 0, 1, 1, 1584524475);
INSERT INTO `hisi_system_menu` VALUES (171, 0, 169, 'teach', '老师管理', 'aicon ai-caidan', 'teach/Teacher', '', '_self', 0, 0, 1, 1, 1, 1584524566);
INSERT INTO `hisi_system_menu` VALUES (172, 0, 169, 'teach', '学生管理', 'aicon ai-caidan', 'teach/Student', '', '_self', 0, 0, 1, 1, 1, 1584524587);
INSERT INTO `hisi_system_menu` VALUES (173, 0, 169, 'teach', '课程管理', 'aicon ai-caidan', 'teach/Course', '', '_self', 0, 0, 1, 1, 1, 1584524626);
INSERT INTO `hisi_system_menu` VALUES (174, 0, 170, 'other', '招聘管理', 'aicon ai-caidan', 'other/Job', '', '_self', 0, 0, 1, 1, 1, 1584524660);
INSERT INTO `hisi_system_menu` VALUES (176, 0, 171, 'teach', '添加老师', 'fa fa-plus', 'teach/Teacher/edit', '', '_self', 0, 0, 1, 1, 1, 1584524752);
INSERT INTO `hisi_system_menu` VALUES (177, 0, 171, 'teach', '老师列表', 'aicon ai-caidan', 'teach/Teacher/lst', '', '_self', 0, 0, 1, 1, 1, 1584524773);
INSERT INTO `hisi_system_menu` VALUES (178, 0, 172, 'teach', '添加学生', 'fa fa-plus', 'teach/Student/edit', '', '_self', 0, 0, 1, 1, 1, 1584524806);
INSERT INTO `hisi_system_menu` VALUES (179, 0, 172, 'teach', '学生列表', 'aicon ai-caidan', 'teach/Student/lst', '', '_self', 0, 0, 1, 1, 1, 1584524832);
INSERT INTO `hisi_system_menu` VALUES (180, 0, 174, 'other', '添加招聘', 'fa fa-plus', 'other/Job/edit', '', '_self', 0, 0, 1, 1, 1, 1584524880);
INSERT INTO `hisi_system_menu` VALUES (181, 0, 174, 'other', '招聘列表', 'aicon ai-caidan', 'other/Job/lst', '', '_self', 0, 0, 1, 1, 1, 1584524984);
INSERT INTO `hisi_system_menu` VALUES (184, 0, 173, 'teach', '添加课程', 'fa fa-plus', 'teach/Course/edit', '', '_self', 0, 0, 1, 1, 1, 1584525159);
INSERT INTO `hisi_system_menu` VALUES (185, 0, 173, 'teach', '课程列表', 'aicon ai-caidan', 'teach/Course/lst', '', '_self', 0, 0, 1, 1, 1, 1584525293);
INSERT INTO `hisi_system_menu` VALUES (186, 0, 0, 'parent', '家长', 'aicon ai-shezhi', 'parent', '', '_self', 100, 0, 0, 1, 1, 1584525467);
INSERT INTO `hisi_system_menu` VALUES (187, 0, 0, 'teacher', '教师', 'aicon ai-shezhi', 'teacher', '', '_self', 100, 0, 0, 1, 1, 1584525641);
INSERT INTO `hisi_system_menu` VALUES (188, 0, 186, 'parent', '个人信息', 'aicon ai-tubiao05', 'parent/Person', '', '_self', 0, 0, 1, 1, 1, 1584525758);
INSERT INTO `hisi_system_menu` VALUES (189, 0, 188, 'parent', '修改', 'aicon ai-shezhi', 'parent/Person/edit', '', '_self', 0, 0, 1, 1, 1, 1584525849);
INSERT INTO `hisi_system_menu` VALUES (191, 0, 186, 'parent', '学生', 'aicon ai-caidan', 'parent/Student', '', '_self', 0, 0, 1, 1, 1, 1584526172);
INSERT INTO `hisi_system_menu` VALUES (192, 0, 191, 'parent', '日常列表', 'aicon ai-caidan', 'parent/Student/lst', '', '_self', 0, 0, 1, 1, 1, 1584526264);
INSERT INTO `hisi_system_menu` VALUES (193, 0, 187, 'teacher', '学生管理', 'aicon ai-caidan', 'teacher/Student', '', '_self', 0, 0, 1, 1, 1, 1584526710);
INSERT INTO `hisi_system_menu` VALUES (194, 0, 193, 'teacher', '学生列表', 'aicon ai-caidan', 'teacher/Student/lst', '', '_self', 0, 0, 1, 1, 1, 1584526744);
INSERT INTO `hisi_system_menu` VALUES (195, 0, 187, 'teacher', '学生其他管理', 'aicon ai-caidan', 'teacher/StudentOther', '', '_self', 0, 0, 1, 1, 1, 1584526861);
INSERT INTO `hisi_system_menu` VALUES (196, 0, 195, 'teacher', '发布学生日常', 'fa fa-plus', 'teacher/StudentOther/edit', '', '_self', 0, 0, 1, 1, 1, 1584526885);
INSERT INTO `hisi_system_menu` VALUES (197, 0, 195, 'teacher', '历史列表', 'aicon ai-caidan', 'teacher/StudentOther/lst', '', '_self', 0, 0, 1, 1, 1, 1584526921);
INSERT INTO `hisi_system_menu` VALUES (198, 0, 187, 'teacher', '个人信息', 'aicon ai-caidan', 'teacher/Person', '', '_self', 0, 0, 1, 1, 1, 1584526962);
INSERT INTO `hisi_system_menu` VALUES (199, 0, 198, 'teacher', '修改', 'aicon ai-shezhi', 'teacher/Person/edit', '', '_self', 0, 0, 1, 1, 1, 1584526983);
INSERT INTO `hisi_system_menu` VALUES (200, 0, 170, 'other', '学生风采', 'aicon ai-caidan', 'other/StudentSpecial', '', '_self', 0, 0, 1, 1, 1, 1584530483);
INSERT INTO `hisi_system_menu` VALUES (201, 0, 200, 'other', '添加', 'fa fa-plus', 'other/StudentSpecial/edit', '', '_self', 0, 0, 1, 1, 1, 1584530505);
INSERT INTO `hisi_system_menu` VALUES (202, 0, 200, 'other', '列表', 'aicon ai-caidan', 'other/StudentSpecial/lst', '', '_self', 0, 0, 1, 1, 1, 1584530528);
INSERT INTO `hisi_system_menu` VALUES (203, 0, 169, 'teach', '家长管理', 'aicon ai-caidan', 'teach/Parent', '', '_self', 0, 0, 1, 1, 1, 1584600135);
INSERT INTO `hisi_system_menu` VALUES (204, 0, 203, 'teach', '添加家长', 'fa fa-plus', 'teach/StudentParent/edit', '', '_self', 0, 0, 1, 1, 1, 1584600159);
INSERT INTO `hisi_system_menu` VALUES (205, 0, 203, 'teach', '家长列表', 'aicon ai-caidan', 'teach/StudentParent/lst', '', '_self', 0, 0, 1, 1, 1, 1584600178);
INSERT INTO `hisi_system_menu` VALUES (206, 0, 188, 'parent', '修改密码', 'aicon ai-shezhi', 'parent/Person/editPass', '', '_self', 0, 0, 1, 1, 1, 1584615506);
INSERT INTO `hisi_system_menu` VALUES (209, 0, 193, 'teacher', '教师列表', 'aicon ai-caidan', 'teacher/Student/teacherLst', '', '_self', 0, 0, 1, 0, 1, 1584617639);
INSERT INTO `hisi_system_menu` VALUES (210, 0, 198, 'teacher', '修改密码', 'aicon ai-shezhi', 'teacher/Person/editPass', '', '_self', 0, 0, 1, 1, 1, 1584619239);
INSERT INTO `hisi_system_menu` VALUES (211, 0, 195, 'teacher', '详情', 'typcn typcn-clipboard', 'teacher/StudentOther/info', '', '_self', 0, 0, 1, 0, 1, 1584621811);
INSERT INTO `hisi_system_menu` VALUES (212, 0, 192, 'parent', '详情', 'aicon ai-caidan', 'parent/Student/info', '', '_self', 0, 0, 0, 0, 1, 1584629096);
INSERT INTO `hisi_system_menu` VALUES (213, 0, 170, 'other', '新闻咨询', 'aicon ai-caidan', 'other/news', '', '_self', 0, 0, 1, 1, 1, 1584629713);
INSERT INTO `hisi_system_menu` VALUES (214, 0, 213, 'other', '添加', 'aicon ai-caidan', 'other/News/edit', '', '_self', 0, 0, 1, 1, 1, 1584629738);
INSERT INTO `hisi_system_menu` VALUES (215, 0, 213, 'other', '列表', 'aicon ai-caidan', 'other/News/lst', '', '_self', 0, 0, 1, 1, 1, 1584629757);
INSERT INTO `hisi_system_menu` VALUES (216, 0, 170, 'other', '预约', 'aicon ai-caidan', 'other/Appoint', '', '_self', 0, 0, 1, 1, 1, 1585314024);
INSERT INTO `hisi_system_menu` VALUES (217, 0, 216, 'other', '预约列表', 'aicon ai-caidan', 'other/Appoint/lst', '', '_self', 0, 0, 1, 1, 1, 1585314047);

-- ----------------------------
-- Table structure for hisi_system_menu_lang
-- ----------------------------
DROP TABLE IF EXISTS `hisi_system_menu_lang`;
CREATE TABLE `hisi_system_menu_lang`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `lang` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '语言包',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 271 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[系统] 管理菜单语言包' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hisi_system_menu_lang
-- ----------------------------
INSERT INTO `hisi_system_menu_lang` VALUES (131, 1, '首页', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (132, 2, '系统', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (133, 3, '插件', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (134, 4, '快捷菜单', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (135, 5, '插件列表', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (136, 6, '系统基础', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (137, 7, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (138, 8, '系统扩展', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (139, 9, '开发专用', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (140, 10, '系统设置', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (141, 11, '配置管理', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (142, 12, '系统菜单', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (143, 13, '管理员角色', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (144, 14, '系统管理员', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (145, 15, '系统日志', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (146, 16, '附件管理', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (147, 17, '本地模块', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (148, 18, '本地插件', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (149, 19, '插件钩子', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (150, 20, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (151, 21, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (152, 22, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (153, 23, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (154, 24, '后台首页', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (155, 25, '清空缓存', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (156, 26, '添加菜单', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (157, 27, '修改菜单', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (158, 28, '删除菜单', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (159, 29, '状态设置', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (160, 30, '排序设置', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (161, 31, '添加快捷菜单', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (162, 32, '导出菜单', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (163, 33, '添加角色', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (164, 34, '修改角色', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (165, 35, '删除角色', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (166, 36, '状态设置', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (167, 37, '添加管理员', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (168, 38, '修改管理员', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (169, 39, '删除管理员', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (170, 40, '状态设置', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (171, 41, '个人信息设置', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (172, 42, '安装插件', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (173, 43, '卸载插件', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (174, 44, '删除插件', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (175, 45, '状态设置', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (176, 46, '生成插件', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (177, 47, '运行插件', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (178, 48, '更新插件', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (179, 49, '插件配置', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (180, 50, '添加钩子', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (181, 51, '修改钩子', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (182, 52, '删除钩子', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (183, 53, '状态设置', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (184, 54, '插件排序', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (185, 55, '添加配置', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (186, 56, '修改配置', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (187, 57, '删除配置', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (188, 58, '状态设置', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (189, 59, '排序设置', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (190, 60, '基础配置', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (191, 61, '系统配置', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (192, 62, '上传配置', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (193, 63, '开发配置', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (194, 64, '生成模块', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (195, 65, '安装模块', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (196, 66, '卸载模块', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (197, 67, '状态设置', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (198, 68, '设置默认模块', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (199, 69, '删除模块', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (200, 70, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (201, 71, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (202, 72, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (203, 73, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (204, 74, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (205, 75, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (206, 76, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (207, 77, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (208, 78, '附件上传', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (209, 79, '删除附件', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (210, 80, '框架升级', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (211, 81, '获取升级列表', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (212, 82, '安装升级包', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (213, 83, '下载升级包', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (214, 84, '数据库管理', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (215, 85, '备份数据库', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (216, 86, '恢复数据库', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (217, 87, '优化数据库', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (218, 88, '删除备份', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (219, 89, '修复数据库', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (220, 90, '设置默认等级', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (221, 91, '数据库配置', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (222, 92, '模块打包', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (223, 93, '插件打包', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (224, 94, '主题管理', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (225, 95, '设置默认主题', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (226, 96, '删除主题', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (227, 97, '语言包管理', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (228, 98, '添加语言包', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (229, 99, '修改语言包', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (230, 100, '删除语言包', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (231, 101, '排序设置', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (232, 102, '状态设置', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (233, 103, '收藏夹图标上传', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (234, 104, '导入模块', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (235, 105, '后台首页', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (236, 106, '布局切换', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (237, 107, '删除日志', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (238, 108, '清空日志', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (239, 109, '编辑模块', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (240, 110, '模块图标上传', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (241, 111, '导入插件', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (242, 112, '钩子插件状态', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (243, 113, '设置主题', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (244, 114, '应用市场', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (245, 115, '安装应用', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (246, 116, '重置密码', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (247, 117, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (248, 118, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (249, 119, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (250, 120, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (251, 121, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (252, 122, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (253, 123, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (254, 124, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (255, 125, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (256, 126, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (257, 127, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (258, 128, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (259, 129, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (260, 130, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (261, 131, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (262, 132, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (263, 133, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (264, 134, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (265, 135, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (266, 136, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (267, 137, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (268, 138, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (269, 139, '预留占位', 1);
INSERT INTO `hisi_system_menu_lang` VALUES (270, 140, '预留占位', 1);

-- ----------------------------
-- Table structure for hisi_system_module
-- ----------------------------
DROP TABLE IF EXISTS `hisi_system_module`;
CREATE TABLE `hisi_system_module`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `system` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '系统模块',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模块名(英文)',
  `identifier` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模块标识(模块名(字母).开发者标识.module)',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模块标题',
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模块简介',
  `author` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作者',
  `icon` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'aicon ai-mokuaiguanli' COMMENT '图标',
  `version` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '版本号',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '链接',
  `sort` int(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0未安装，1未启用，2已启用',
  `default` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '默认模块(只能有一个)',
  `config` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置',
  `app_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '应用市场ID(0本地)',
  `app_keys` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '应用秘钥',
  `theme` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'default' COMMENT '主题模板',
  `ctime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `mtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  UNIQUE INDEX `identifier`(`identifier`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[系统] 模块' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hisi_system_module
-- ----------------------------
INSERT INTO `hisi_system_module` VALUES (1, 1, 'system', 'system.hisiphp.module', '系统管理模块', '系统核心模块，用于后台各项管理功能模块及功能拓展', 'HisiPHP官方出品', '', '1.0.0', 'http://www.hisiphp.com', 0, 2, 0, '', '0', '', 'default', 1489998096, 1489998096);
INSERT INTO `hisi_system_module` VALUES (2, 1, 'index', 'index.hisiphp.module', '默认模块', '推荐使用扩展模块作为默认首页。', 'HisiPHP官方出品', '', '1.0.0', 'http://www.hisiphp.com', 0, 2, 0, '', '0', '', 'default', 1489998096, 1489998096);
INSERT INTO `hisi_system_module` VALUES (3, 1, 'install', 'install.hisiphp.module', '系统安装模块', '系统安装模块，勿动。', 'HisiPHP官方出品', '', '1.0.0', 'http://www.hisiphp.com', 0, 2, 0, '', '0', '', 'default', 1489998096, 1489998096);
INSERT INTO `hisi_system_module` VALUES (4, 0, 'developer', 'developer.1000016.module.2000015', '开发助手', '为您提供了模块、插件可视化设计，还支持一键打包应用', 'HisiPHP', '/static/developer/developer.png', '1.0.1', 'http://www.hisiphp.com', 0, 2, 0, '', '0', '04565abdabf0759e21670354f117dac3', 'default', 1584524020, 1584524020);
INSERT INTO `hisi_system_module` VALUES (6, 0, 'student', 'student.module', '学生', '', '', '/static/student/student.png', '1.0.0', '', 0, 2, 0, '', '0', '', 'default', 1584524197, 1584524197);
INSERT INTO `hisi_system_module` VALUES (7, 0, 'news', 'news.module', '新闻咨询', '', '', '/static/news/news.png', '1.0.0', '', 0, 2, 0, '', '0', '', 'default', 1584524242, 1584524242);
INSERT INTO `hisi_system_module` VALUES (8, 0, 'job', 'job.module', '招聘', '', '', '/static/job/job.png', '1.0.0', '', 0, 2, 0, '', '0', '', 'default', 1584524311, 1584524311);
INSERT INTO `hisi_system_module` VALUES (9, 0, 'merchant', 'merchant.module', '招商', '', '', '/static/merchant/merchant.png', '1.0.0', '', 0, 2, 0, '', '0', '', 'default', 1584524376, 1584524376);
INSERT INTO `hisi_system_module` VALUES (10, 0, 'teach', 'teach.module', '教学', '', '', '/static/teach/teach.png', '1.0.0', '', 0, 2, 0, '', '0', '', 'default', 1584524457, 1584524457);
INSERT INTO `hisi_system_module` VALUES (11, 0, 'other', 'other.module', '其他', '', '', '/static/other/other.png', '1.0.0', '', 0, 2, 0, '', '0', '', 'default', 1584524475, 1584524475);
INSERT INTO `hisi_system_module` VALUES (12, 0, 'parent', 'parent.module', '家长', '', '', '/static/parent/parent.png', '1.0.0', '', 0, 2, 0, '', '0', '', 'default', 1584525467, 1584525467);
INSERT INTO `hisi_system_module` VALUES (13, 0, 'teacher', 'teacher.module', '教师', '', '', '/static/teacher/teacher.png', '1.0.0', '', 0, 2, 0, '', '0', '', 'default', 1584525640, 1584525640);

-- ----------------------------
-- Table structure for hisi_system_plugins
-- ----------------------------
DROP TABLE IF EXISTS `hisi_system_plugins`;
CREATE TABLE `hisi_system_plugins`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `system` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '插件名称(英文)',
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '插件标题',
  `icon` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图标',
  `intro` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '插件简介',
  `author` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作者',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作者主页',
  `version` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '版本号',
  `identifier` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '插件唯一标识符',
  `config` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '插件配置',
  `app_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '来源(0本地)',
  `app_keys` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '应用秘钥',
  `ctime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[系统] 插件表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hisi_system_plugins
-- ----------------------------
INSERT INTO `hisi_system_plugins` VALUES (1, 1, 'hisiphp', '系统基础信息', '/static/plugins/hisiphp/hisiphp.png', '后台首页展示系统基础信息和开发团队信息', 'HisiPHP', 'http://www.hisiphp.com', '1.0.0', 'hisiphp.hisiphp.plugins', '', '0', '', 1509379331, 1509379331, 0, 2);

-- ----------------------------
-- Table structure for hisi_system_role
-- ----------------------------
DROP TABLE IF EXISTS `hisi_system_role`;
CREATE TABLE `hisi_system_role`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `intro` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色简介',
  `auth` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限',
  `ctime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `mtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '修改时间',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[系统] 管理角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hisi_system_role
-- ----------------------------
INSERT INTO `hisi_system_role` VALUES (1, '超级管理员', '拥有系统最高权限', '0', 1489411760, 0, 1);
INSERT INTO `hisi_system_role` VALUES (2, '系统管理员', '拥有系统管理员权限', '[\"1\",\"4\",\"25\",\"24\",\"2\",\"6\",\"10\",\"60\",\"61\",\"62\",\"63\",\"91\",\"11\",\"55\",\"56\",\"57\",\"58\",\"59\",\"12\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"13\",\"33\",\"34\",\"35\",\"36\",\"14\",\"37\",\"38\",\"39\",\"40\",\"41\",\"16\",\"78\",\"79\",\"84\",\"85\",\"86\",\"87\",\"88\",\"89\",\"7\",\"20\",\"75\",\"76\",\"77\",\"21\",\"90\",\"70\",\"71\",\"72\",\"73\",\"74\",\"8\",\"17\",\"65\",\"66\",\"67\",\"68\",\"94\",\"95\",\"18\",\"42\",\"43\",\"45\",\"47\",\"48\",\"49\",\"19\",\"80\",\"81\",\"82\",\"83\",\"9\",\"22\",\"23\",\"3\",\"5\"]', 1489411760, 1507731116, 1);
INSERT INTO `hisi_system_role` VALUES (3, '普通管理员', '普通管理员', '{\"0\":\"1\",\"1\":\"4\",\"2\":\"25\",\"4\":\"24\",\"6\":\"106\",\"8\":\"113\"}', 1507737902, 1542075415, 1);
INSERT INTO `hisi_system_role` VALUES (4, '教师', '', '{\"117\":\"187\",\"118\":\"193\",\"119\":\"194\",\"120\":\"209\",\"121\":\"195\",\"122\":\"196\",\"123\":\"197\",\"124\":\"211\",\"125\":\"198\",\"126\":\"199\",\"127\":\"210\"}', 1584546105, 1584629242, 1);
INSERT INTO `hisi_system_role` VALUES (5, '家长', '', '{\"110\":\"186\",\"111\":\"188\",\"112\":\"189\",\"113\":\"206\",\"114\":\"191\",\"115\":\"192\",\"116\":\"212\"}', 1584546119, 1584629223, 1);
INSERT INTO `hisi_system_role` VALUES (6, '管理员', '', '{\"90\":\"169\",\"91\":\"171\",\"92\":\"176\",\"93\":\"177\",\"94\":\"172\",\"95\":\"178\",\"96\":\"179\",\"97\":\"173\",\"98\":\"184\",\"99\":\"185\",\"100\":\"203\",\"101\":\"204\",\"102\":\"205\",\"103\":\"170\",\"104\":\"174\",\"105\":\"180\",\"106\":\"181\",\"107\":\"200\",\"108\":\"201\",\"109\":\"202\",\"110\":\"213\",\"111\":\"214\",\"112\":\"215\",\"113\":\"216\",\"114\":\"217\"}', 1584546138, 1585314797, 1);

-- ----------------------------
-- Table structure for hisi_system_user
-- ----------------------------
DROP TABLE IF EXISTS `hisi_system_user`;
CREATE TABLE `hisi_system_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nick` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '昵称',
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '邮箱',
  `auth` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限',
  `iframe` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0默认，1框架',
  `theme` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'default' COMMENT '主题',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态',
  `last_login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '最后登陆IP',
  `last_login_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后登陆时间',
  `ctime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `mtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '修改时间',
  `sex` tinyint(1) NOT NULL DEFAULT 2 COMMENT '0女1男',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '[系统] 管理用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hisi_system_user
-- ----------------------------
INSERT INTO `hisi_system_user` VALUES (1, 'admin', '$2y$10$qp8QQlV8IIZ9IX9VOFJdPeSqms147ZcPU.W6ZmggvIp3yP5NvMkHC', '超级管理员', '', '', '', 0, 'default', 1, '127.0.0.1', 1585410073, 1584519382, 1584519382, 2);
INSERT INTO `hisi_system_user` VALUES (2, '123', '123', '123', ' ', ' ', ' ', 0, 'default', 1, ' ', 0, 0, 0, 2);
INSERT INTO `hisi_system_user` VALUES (3, 'asdf1', '$2y$10$6.DF8nTK7HzG2ZIF4LYwYeKIj.7eFffOnJwyhfOGmdA0GWcFVTfvO', 'asdf', '1234', '', '', 0, 'default', 1, '127.0.0.1', 1585852732, 0, 1585750617, 0);
INSERT INTO `hisi_system_user` VALUES (14, 'guanliyuan001', '$2y$10$aRvU.qDcbGvBI3l5tE4bMu5fOdg5LsNpINX7ovsGE1NcKHxuF19B6', 'guanliyuan001', '', '', '', 0, 'default', 1, '127.0.0.1', 1585853151, 1584629367, 1585314974, 2);
INSERT INTO `hisi_system_user` VALUES (15, 'asdfg', '$2y$10$r0RYKG9gtvvfxPIkQxO7a.10ASkRPaV54YMb1TVJILZUZEWje5lhm', 'asdf', '13145211419', '', '', 0, 'default', 1, '', 0, 0, 0, 1);
INSERT INTO `hisi_system_user` VALUES (16, 'asdfgasdf', '$2y$10$LWpnd8BuQd/cQ16Fng9tbOCdoB/h9VSzNyj2a3fTbgpmaM0itQc9G', 'asdf', '13145211419', '', '', 0, 'default', 1, '', 0, 0, 0, 1);
INSERT INTO `hisi_system_user` VALUES (18, 'yimibaba', '$2y$10$EI0effIl15Tzf26M4rjvl.aQ8LA5XUoTLNYCgXBYioD7.5RMc9yXm', '一米八八', '123456', '', '', 0, 'default', 1, '127.0.0.1', 1585853015, 0, 1585852994, 0);
INSERT INTO `hisi_system_user` VALUES (19, 'yimiwuba', '$2y$10$Dj8WmUf3S0926F8Jlokgw.TUYA82KrHQUb1HRHYOYF8HLMTCkbP.e', '一米五八', '123456', '', '', 0, 'default', 1, '127.0.0.1', 0, 0, 1585851778, 0);
INSERT INTO `hisi_system_user` VALUES (20, 'sisimama', '$2y$10$ONexiSWulVTJfglqS6rtY.211TJciXF0.l3EepFgZ7X1I6m8VgW4q', '思思的阿玛', '123456', '', '', 0, 'default', 1, '127.0.0.1', 1585853273, 0, 1585853169, 0);
INSERT INTO `hisi_system_user` VALUES (21, 'sansanmama', '$2y$10$VMzmV5vzXQ4iUqg1pa2piORgeYZHXP02qw.soLE.gQjlHjEjvrSeK', '三三的妈妈', '123456', '', '', 0, 'default', 1, '127.0.0.1', 1585853231, 0, 1585853212, 0);
INSERT INTO `hisi_system_user` VALUES (22, 'yiyimama', '$2y$10$1emHh0ybX8PaBOmEAQPFOOGQFh9oZSGl0zhxxWuUDy.BfQfJSMZji', 'yiyidemama', '111', '', '', 0, 'default', 1, '127.0.0.1', 1585774012, 0, 1585853193, 0);
INSERT INTO `hisi_system_user` VALUES (23, 'er', '$2y$10$WWyHe6mdlqSTRkJHqTuvB.Lml/n6Q7OBkPGM80cC0E2Sj23918jK2', 'er', '1234', '', '', 0, 'default', 1, '', 0, 0, 0, 0);

-- ----------------------------
-- Table structure for hisi_system_user_role
-- ----------------------------
DROP TABLE IF EXISTS `hisi_system_user_role`;
CREATE TABLE `hisi_system_user_role`  (
  `user_id` int(11) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员角色索引' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hisi_system_user_role
-- ----------------------------
INSERT INTO `hisi_system_user_role` VALUES (1, 1);
INSERT INTO `hisi_system_user_role` VALUES (14, 6);
INSERT INTO `hisi_system_user_role` VALUES (3, 4);
INSERT INTO `hisi_system_user_role` VALUES (18, 4);
INSERT INTO `hisi_system_user_role` VALUES (3, 4);
INSERT INTO `hisi_system_user_role` VALUES (19, 4);
INSERT INTO `hisi_system_user_role` VALUES (18, 4);
INSERT INTO `hisi_system_user_role` VALUES (19, 4);
INSERT INTO `hisi_system_user_role` VALUES (3, 4);
INSERT INTO `hisi_system_user_role` VALUES (20, 5);
INSERT INTO `hisi_system_user_role` VALUES (21, 5);
INSERT INTO `hisi_system_user_role` VALUES (22, 5);
INSERT INTO `hisi_system_user_role` VALUES (3, 4);
INSERT INTO `hisi_system_user_role` VALUES (22, 5);
INSERT INTO `hisi_system_user_role` VALUES (22, 5);
INSERT INTO `hisi_system_user_role` VALUES (18, 4);
INSERT INTO `hisi_system_user_role` VALUES (23, 5);
INSERT INTO `hisi_system_user_role` VALUES (18, 4);
INSERT INTO `hisi_system_user_role` VALUES (19, 4);
INSERT INTO `hisi_system_user_role` VALUES (20, 5);
INSERT INTO `hisi_system_user_role` VALUES (18, 4);
INSERT INTO `hisi_system_user_role` VALUES (20, 5);
INSERT INTO `hisi_system_user_role` VALUES (22, 5);
INSERT INTO `hisi_system_user_role` VALUES (22, 5);
INSERT INTO `hisi_system_user_role` VALUES (21, 5);

-- ----------------------------
-- Table structure for hisi_teacher
-- ----------------------------
DROP TABLE IF EXISTS `hisi_teacher`;
CREATE TABLE `hisi_teacher`  (
  `id` int(10) NOT NULL COMMENT '教师ID',
  `head_img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '教师头像',
  `address` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '介绍',
  `manner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教育态度',
  `hor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教育水平',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hisi_teacher
-- ----------------------------
INSERT INTO `hisi_teacher` VALUES (3, '\\upload\\img\\20200403\\6e64f74edee07f7de6c206a9ad9cf18a.jpg', '我', 'asdfafddddddddddddddddddddddddddddddddd', '5', '5');
INSERT INTO `hisi_teacher` VALUES (18, '\\upload\\img\\20200403\\d312b45f8c9c200ba561202ce243f230.jpeg', '123456', '一米八八', '5', '5');
INSERT INTO `hisi_teacher` VALUES (19, '\\upload\\img\\20200403\\33fbcfb4f546811d94077f2c63a09395.jpg', '一米五八', '一米五八', '2', '4');

-- ----------------------------
-- Table structure for hisi_token
-- ----------------------------
DROP TABLE IF EXISTS `hisi_token`;
CREATE TABLE `hisi_token`  (
  `token` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'Token',
  `tag` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '标签',
  `value` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '映射的值',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '过期时间',
  PRIMARY KEY (`token`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for hisi_user_log
-- ----------------------------
DROP TABLE IF EXISTS `hisi_user_log`;
CREATE TABLE `hisi_user_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` tinyint(1) NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
