# ************************************************************
# Sequel Ace SQL dump
# 版本号： 20062
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# 主机: 127.0.0.1 (MySQL 8.0.32)
# 数据库: msc_log
# 生成时间: 2024-01-18 03:04:19 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# 转储表 adm_user
# ------------------------------------------------------------

CREATE TABLE `adm_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(300) NOT NULL DEFAULT '' COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



# 转储表 alarm_config
# ------------------------------------------------------------

CREATE TABLE `alarm_config` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `monitorAppId` varchar(300) NOT NULL DEFAULT '' COMMENT '项目所属',
  `errorType` varchar(50) NOT NULL DEFAULT '' COMMENT '错误类型',
  `errorName` varchar(255) NOT NULL DEFAULT '' COMMENT '要报警错误名字',
  `timeRangeS` int NOT NULL COMMENT '报警时间范围_秒',
  `maxErrorCount` int NOT NULL COMMENT '报警错误数阈值',
  `alarmIntervalS` int NOT NULL COMMENT '报警时间间隔_秒',
  `isEnable` tinyint NOT NULL COMMENT '是否开启本条报警配置1：是0：否',
  `alertType` varchar(50) NOT NULL DEFAULT '' COMMENT '告警方式 1 钉钉',
  `note` varchar(300) NOT NULL DEFAULT '' COMMENT '配置说明',
  `serviceType` varchar(10) NOT NULL DEFAULT '' COMMENT '参数 = < >',
  `whereType` varchar(10) NOT NULL DEFAULT '' COMMENT '求和 where 平均 avg',
  `startHour` varchar(20) NOT NULL DEFAULT '' COMMENT '告警时间点',
  `endHour` varchar(20) NOT NULL DEFAULT '' COMMENT '告警时间点',
  `startTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



# 转储表 alarm_history
# ------------------------------------------------------------

CREATE TABLE `alarm_history` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `alarmId` int DEFAULT NULL COMMENT '关联告警表id',
  `sendContent` varchar(3000) NOT NULL COMMENT '发送内容',
  `errorMsg` varchar(2000) NOT NULL DEFAULT '' COMMENT '错误',
  `isSuccess` tinyint NOT NULL COMMENT '是否成功',
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



# 转储表 click_log
# ------------------------------------------------------------

CREATE TABLE `click_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(30) NOT NULL DEFAULT '' COMMENT '类别',
  `monitorAppId` varchar(100) NOT NULL DEFAULT '' COMMENT '项目',
  `uuId` varchar(100) NOT NULL DEFAULT '' COMMENT '用户标识',
  `level` varchar(10) NOT NULL DEFAULT '' COMMENT '级别',
  `happenTime` varchar(30) NOT NULL DEFAULT '' COMMENT '上报时间',
  `screenHeight` int NOT NULL COMMENT '设备高度',
  `screenWidth` int NOT NULL COMMENT '设备宽度',
  `pageUrl` varchar(1000) NOT NULL DEFAULT '' COMMENT '页面链接',
  `simpleUrl` varchar(1000) NOT NULL DEFAULT '' COMMENT '页面带*链接',
  `tagName` varchar(100) NOT NULL DEFAULT '' COMMENT '事件触发标签',
  `top` varchar(50) NOT NULL DEFAULT '' COMMENT '被点击元素距top 距离',
  `left` varchar(50) NOT NULL DEFAULT '' COMMENT '被点击距left 距离',
  `eventType` varchar(30) NOT NULL DEFAULT '' COMMENT '点击事件类型',
  `pageHeight` varchar(30) NOT NULL DEFAULT '' COMMENT '页面高度',
  `subType` varchar(30) NOT NULL DEFAULT '' COMMENT '子类型 事件类型',
  `startTime` varchar(50) NOT NULL DEFAULT '' COMMENT '页面加载后 至 发生错误时间',
  `innerHTML` text NOT NULL COMMENT '点击标签内部html',
  `viewport` varchar(300) NOT NULL DEFAULT '' COMMENT '屏幕 可视宽、高',
  `targetInfo` varchar(300) NOT NULL DEFAULT '' COMMENT '被点击元素的 offsetWidth,  offsetHeight,',
  PRIMARY KEY (`id`),
  KEY `m_id_time` (`monitorAppId`,`happenTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



# 转储表 data_hour
# ------------------------------------------------------------

CREATE TABLE `data_hour` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `monitorAppId` varchar(100) NOT NULL DEFAULT '' COMMENT '项目ID',
  `happenTime` varchar(30) NOT NULL DEFAULT '' COMMENT '时间精确到小时',
  `pvCount` int NOT NULL COMMENT '页面pv',
  `uvCount` int NOT NULL COMMENT '页面uv',
  `jsErrorCount` int NOT NULL COMMENT 'js错误个数',
  `resourceLinkCount` int NOT NULL COMMENT '资源css错误',
  `resourceScriptCount` int NOT NULL COMMENT '资源js错误',
  `resourceImgCount` int NOT NULL COMMENT '资源图片错误',
  PRIMARY KEY (`id`),
  KEY `m_id_time` (`monitorAppId`,`happenTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



# 转储表 http_log
# ------------------------------------------------------------

CREATE TABLE `http_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(30) NOT NULL COMMENT '类别',
  `monitorAppId` varchar(100) NOT NULL DEFAULT '' COMMENT '项目',
  `uuId` varchar(100) NOT NULL DEFAULT '' COMMENT '用户标识',
  `level` varchar(10) NOT NULL DEFAULT '' COMMENT '级别',
  `happenTime` varchar(30) NOT NULL DEFAULT '' COMMENT '上报时间',
  `netWork` varchar(10) NOT NULL DEFAULT '' COMMENT '网络',
  `ip` varchar(300) DEFAULT NULL COMMENT 'ip',
  `country` varchar(10) NOT NULL DEFAULT '' COMMENT '省',
  `province` varchar(10) NOT NULL DEFAULT '' COMMENT '市',
  `city` varchar(10) NOT NULL DEFAULT '' COMMENT '区',
  `pageUrl` varchar(1000) NOT NULL DEFAULT '' COMMENT '页面链接',
  `simpleUrl` varchar(1000) NOT NULL DEFAULT '' COMMENT '页面带*链接',
  `duration` varchar(30) NOT NULL DEFAULT '' COMMENT 'http 请求持续时间',
  `method` varchar(30) NOT NULL DEFAULT '' COMMENT 'http 请求方式： Post, Get',
  `pathName` varchar(100) NOT NULL DEFAULT '' COMMENT 'http 请求链接',
  `requestText` text NOT NULL COMMENT 'http 请求入参',
  `responseText` text NOT NULL COMMENT 'http 请求结果',
  `httpOptions` varchar(500) NOT NULL DEFAULT '' COMMENT 'http 请求配置,',
  `status` varchar(11) NOT NULL DEFAULT '' COMMENT 'http 状态码',
  `timeout` varchar(11) NOT NULL DEFAULT '' COMMENT 'http 超时时间',
  `statusText` varchar(30) NOT NULL DEFAULT '' COMMENT 'http 状态描述',
  `type` varchar(100) NOT NULL DEFAULT '' COMMENT 'http 请求工具: xml,fetch',
  `eventType` varchar(50) NOT NULL DEFAULT '' COMMENT 'http ： load error abort',
  PRIMARY KEY (`id`),
  KEY `m_id_time` (`monitorAppId`,`happenTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



# 转储表 js_log
# ------------------------------------------------------------

CREATE TABLE `js_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(30) NOT NULL COMMENT '类别',
  `monitorAppId` varchar(100) NOT NULL DEFAULT '' COMMENT '项目',
  `userAgent` varchar(500) NOT NULL DEFAULT '' COMMENT 'UA',
  `uuId` varchar(100) NOT NULL DEFAULT '' COMMENT '用户标识',
  `level` varchar(10) NOT NULL DEFAULT '' COMMENT '级别',
  `happenTime` varchar(30) NOT NULL DEFAULT '' COMMENT '上报时间',
  `deviceType` varchar(100) NOT NULL DEFAULT '' COMMENT '设备',
  `os` varchar(100) NOT NULL DEFAULT '' COMMENT '设备',
  `browserInfo` varchar(100) NOT NULL DEFAULT '' COMMENT '设备',
  `device` varchar(100) NOT NULL DEFAULT '' COMMENT '设备',
  `deviceModel` varchar(100) NOT NULL DEFAULT '' COMMENT '设备',
  `screenHeight` int NOT NULL COMMENT '设备高度',
  `screenWidth` int NOT NULL COMMENT '设备宽度',
  `language` varchar(30) NOT NULL DEFAULT '' COMMENT '语言',
  `netWork` varchar(10) NOT NULL DEFAULT '' COMMENT '网络',
  `ip` varchar(300) NOT NULL DEFAULT '' COMMENT 'ip',
  `country` varchar(10) NOT NULL DEFAULT '' COMMENT '省',
  `province` varchar(10) NOT NULL DEFAULT '' COMMENT '市',
  `city` varchar(10) NOT NULL DEFAULT '' COMMENT '区',
  `pageUrl` varchar(1000) NOT NULL DEFAULT '' COMMENT '页面链接',
  `simpleUrl` varchar(1000) NOT NULL DEFAULT '' COMMENT '页面带*链接',
  `errorMsg` varchar(1000) NOT NULL DEFAULT '' COMMENT '错误信息',
  `line` int NOT NULL COMMENT 'js错误行',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '错误类型',
  `col` int NOT NULL COMMENT 'js错误行列',
  `stackTraces` text NOT NULL COMMENT '错误栈',
  `componentName` varchar(30) NOT NULL DEFAULT '' COMMENT '组件名称',
  `subType` varchar(300) NOT NULL DEFAULT '' COMMENT '二级类型 js、 vue',
  `propsData` text NOT NULL COMMENT '组件prop',
  `hook` varchar(300) NOT NULL DEFAULT '' COMMENT '报错的Vue阶段',
  `componentNameTrace` text NOT NULL COMMENT '组件tree',
  PRIMARY KEY (`id`),
  KEY `m_id_time` (`monitorAppId`,`happenTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



# 转储表 page_data_analysis
# ------------------------------------------------------------

CREATE TABLE `page_data_analysis` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `monitorAppId` varchar(300) DEFAULT '',
  `pvCount` int NOT NULL,
  `uvCount` int NOT NULL,
  `newUvCount` int NOT NULL,
  `ipCounct` int NOT NULL,
  `jumpCount` int NOT NULL,
  `visitFrequency` float NOT NULL,
  `happenTime` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `m_id_time` (`monitorAppId`,`happenTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



# 转储表 page_log
# ------------------------------------------------------------

CREATE TABLE `page_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(30) NOT NULL COMMENT '上报类别',
  `monitorAppId` varchar(100) NOT NULL DEFAULT '' COMMENT '项目',
  `userAgent` varchar(500) NOT NULL DEFAULT '' COMMENT 'UA',
  `uuId` varchar(100) NOT NULL DEFAULT '' COMMENT '用户标识',
  `level` varchar(10) NOT NULL DEFAULT '' COMMENT '级别',
  `happenTime` varchar(30) NOT NULL DEFAULT '' COMMENT '上报时间',
  `deviceType` varchar(100) NOT NULL DEFAULT '' COMMENT '设备',
  `os` varchar(100) NOT NULL DEFAULT '' COMMENT '设备',
  `browserInfo` varchar(100) NOT NULL DEFAULT '' COMMENT '设备',
  `device` varchar(100) NOT NULL DEFAULT '' COMMENT '设备',
  `deviceModel` varchar(100) NOT NULL DEFAULT '' COMMENT '设备',
  `screenHeight` int NOT NULL COMMENT '设备高度',
  `screenWidth` int NOT NULL COMMENT '设备宽度',
  `language` varchar(30) NOT NULL DEFAULT '' COMMENT '语言',
  `netWork` varchar(10) NOT NULL DEFAULT '' COMMENT '网络',
  `ip` varchar(300) NOT NULL DEFAULT '' COMMENT 'ip',
  `country` varchar(10) NOT NULL DEFAULT '' COMMENT '省',
  `province` varchar(10) NOT NULL DEFAULT '' COMMENT '市',
  `city` varchar(10) NOT NULL DEFAULT '' COMMENT '区',
  `pageUrl` varchar(1000) NOT NULL DEFAULT '' COMMENT '页面链接',
  `simpleUrl` varchar(1000) NOT NULL DEFAULT '' COMMENT '页面带*链接',
  `to` varchar(300) NOT NULL DEFAULT '' COMMENT '跳转进入页面',
  `from` varchar(300) NOT NULL DEFAULT '' COMMENT '来源页面',
  `subType` varchar(30) NOT NULL DEFAULT '' COMMENT '子类型 ：popstate、hashchange',
  `duration` varchar(30) NOT NULL DEFAULT '' COMMENT 'from 页面 停留时间',
  `startTime` varchar(50) NOT NULL DEFAULT '' COMMENT '时间',
  `referrer` varchar(3000) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `m_id_time` (`monitorAppId`,`happenTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



# 转储表 performance
# ------------------------------------------------------------

CREATE TABLE `performance` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `monitorAppId` varchar(100) NOT NULL DEFAULT '' COMMENT '项目ID',
  `uuId` varchar(100) NOT NULL DEFAULT '' COMMENT '用户ID',
  `sessionId` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '一次会话Id',
  `key` varchar(300) NOT NULL DEFAULT '' COMMENT '名称',
  `score` int NOT NULL COMMENT '分数',
  `textValue` varchar(20000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '数据',
  `numValue` int NOT NULL COMMENT '数据',
  `happenTime` varchar(30) NOT NULL DEFAULT '' COMMENT '时间',
  `simpleUrl` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `m_id_time` (`monitorAppId`,`happenTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



# 转储表 projects
# ------------------------------------------------------------

CREATE TABLE `projects` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL DEFAULT '' COMMENT '应用名称',
  `desc` varchar(100) NOT NULL COMMENT '应用说明',
  `monitorAppId` varchar(100) NOT NULL DEFAULT '' COMMENT '应用ID',
  `watch` varchar(300) NOT NULL DEFAULT '' COMMENT '配置',
  `maxQueues` tinyint NOT NULL COMMENT '上报条数',
  `projectType` varchar(10) NOT NULL DEFAULT '' COMMENT '1 web',
  `encryption` varchar(10) NOT NULL DEFAULT '' COMMENT '0 不加密 1 加密',
  `delay` int NOT NULL COMMENT '应用间隔时间',
  `status` tinyint DEFAULT NULL COMMENT '0 禁用 1 启用',
  `startTime` varchar(30) NOT NULL DEFAULT '' COMMENT '创建时间',
  `updateTime` varchar(30) NOT NULL DEFAULT '' COMMENT '修改时间',
  `cookieUserKey` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



# 转储表 promise_log
# ------------------------------------------------------------

CREATE TABLE `promise_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(30) NOT NULL DEFAULT '' COMMENT '类别',
  `monitorAppId` varchar(100) NOT NULL DEFAULT '' COMMENT '项目',
  `userAgent` varchar(500) NOT NULL DEFAULT '' COMMENT 'UA',
  `uuId` varchar(100) NOT NULL DEFAULT '' COMMENT '用户标识',
  `level` varchar(10) NOT NULL DEFAULT '' COMMENT '级别',
  `happenTime` varchar(30) NOT NULL DEFAULT '' COMMENT '上报时间',
  `deviceType` varchar(100) NOT NULL DEFAULT '' COMMENT '设备',
  `os` varchar(100) NOT NULL DEFAULT '' COMMENT '设备',
  `browserInfo` varchar(100) NOT NULL DEFAULT '' COMMENT '设备',
  `device` varchar(100) NOT NULL DEFAULT '' COMMENT '设备',
  `deviceModel` varchar(100) NOT NULL DEFAULT '' COMMENT '设备',
  `screenHeight` int NOT NULL COMMENT '设备高度',
  `screenWidth` int NOT NULL COMMENT '设备宽度',
  `language` varchar(30) NOT NULL DEFAULT '' COMMENT '语言',
  `netWork` varchar(10) NOT NULL DEFAULT '' COMMENT '网络',
  `ip` varchar(300) NOT NULL DEFAULT '' COMMENT 'ip',
  `country` varchar(10) NOT NULL DEFAULT '' COMMENT '省',
  `province` varchar(10) NOT NULL DEFAULT '' COMMENT '市',
  `city` varchar(10) NOT NULL DEFAULT '' COMMENT '区',
  `pageUrl` varchar(1000) NOT NULL DEFAULT '' COMMENT '页面链接',
  `simpleUrl` varchar(1000) NOT NULL DEFAULT '' COMMENT '页面带*链接',
  `errorMsg` varchar(3000) NOT NULL DEFAULT '' COMMENT '错误信息',
  `startTime` varchar(300) NOT NULL DEFAULT '' COMMENT '页面加载后 至 发生错误时间,',
  PRIMARY KEY (`id`),
  KEY `m_id_time` (`monitorAppId`,`happenTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



# 转储表 resource_log
# ------------------------------------------------------------

CREATE TABLE `resource_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(30) NOT NULL DEFAULT '' COMMENT '类别',
  `monitorAppId` varchar(100) NOT NULL DEFAULT '' COMMENT '项目',
  `userAgent` varchar(500) NOT NULL DEFAULT '' COMMENT 'UA',
  `uuId` varchar(100) NOT NULL DEFAULT '' COMMENT '用户标识',
  `level` varchar(10) NOT NULL DEFAULT '' COMMENT '级别',
  `happenTime` varchar(30) NOT NULL DEFAULT '' COMMENT '上报时间',
  `deviceType` varchar(100) NOT NULL DEFAULT '' COMMENT '设备',
  `os` varchar(100) NOT NULL DEFAULT '' COMMENT '设备',
  `browserInfo` varchar(100) NOT NULL DEFAULT '' COMMENT '设备',
  `device` varchar(100) NOT NULL DEFAULT '' COMMENT '设备',
  `deviceModel` varchar(100) NOT NULL DEFAULT '' COMMENT '设备',
  `screenHeight` int NOT NULL COMMENT '设备高度',
  `screenWidth` int NOT NULL COMMENT '设备宽度',
  `language` varchar(30) NOT NULL DEFAULT '' COMMENT '语言',
  `netWork` varchar(10) NOT NULL DEFAULT '' COMMENT '网络',
  `ip` varchar(300) NOT NULL DEFAULT '' COMMENT 'ip',
  `country` varchar(10) NOT NULL DEFAULT '' COMMENT '省',
  `province` varchar(10) NOT NULL DEFAULT '' COMMENT '市',
  `city` varchar(10) NOT NULL DEFAULT '' COMMENT '区',
  `pageUrl` varchar(1000) NOT NULL DEFAULT '' COMMENT '页面链接',
  `simpleUrl` varchar(1000) NOT NULL DEFAULT '' COMMENT '页面带*链接',
  `errorMsg` varchar(100) NOT NULL DEFAULT '' COMMENT '错误信息',
  `url` varchar(1000) NOT NULL DEFAULT '' COMMENT '错误url',
  `html` text NOT NULL,
  `resourceType` varchar(100) NOT NULL DEFAULT '' COMMENT '资源类型',
  `paths` varchar(3000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `m_id_time` (`monitorAppId`,`happenTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



# 转储表 sourcemap
# ------------------------------------------------------------

CREATE TABLE `sourcemap` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `monitorAppId` varchar(300) NOT NULL COMMENT '项目',
  `filename` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT 'url',
  `originalname` varchar(300) NOT NULL,
  `destination` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `path` varchar(300) NOT NULL,
  `size` int NOT NULL,
  `version` varchar(30) NOT NULL DEFAULT '' COMMENT '版本号',
  `updateTime` datetime NOT NULL COMMENT '上传时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



# 转储表 user_behavior
# ------------------------------------------------------------

CREATE TABLE `user_behavior` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `monitorAppId` varchar(100) NOT NULL DEFAULT '' COMMENT '项目',
  `uuId` varchar(100) NOT NULL DEFAULT '' COMMENT '用户ID',
  `category` varchar(30) NOT NULL DEFAULT '' COMMENT '类别',
  `tb_id` int NOT NULL COMMENT '联表id',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `monitorAppId` (`monitorAppId`,`createTime`,`uuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
