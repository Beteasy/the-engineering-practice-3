/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80017
Source Host           : 127.0.0.1:3306
Source Database       : kaoqin

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2019-12-26 14:50:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for attendance
-- ----------------------------
DROP TABLE IF EXISTS `attendance`;
CREATE TABLE `attendance` (
  `stuNo` int(11) NOT NULL,
  `stuName` varchar(45) NOT NULL,
  `grade` int(11) DEFAULT NULL,
  `classId` int(11) NOT NULL,
  `courNo` int(11) DEFAULT NULL,
  `arriveTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `leaveTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`stuNo`,`arriveTime`,`leaveTime`),
  KEY `stuNo_att` (`stuNo`),
  KEY `courNo_att` (`courNo`),
  CONSTRAINT `stuNo_att` FOREIGN KEY (`stuNo`) REFERENCES `student` (`stuNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attendance
-- ----------------------------
INSERT INTO `attendance` VALUES ('2016001001', '小小', '2', '1', '1', '2019-12-04 19:37:00', '2019-12-04 20:37:00', '3');
INSERT INTO `attendance` VALUES ('2017001001', '小李', '1', '1', '1', '2019-12-04 19:37:00', '2019-12-04 20:37:00', '2');
INSERT INTO `attendance` VALUES ('2017001001', '小李', '1', '1', '2', '2019-12-05 08:20:00', '2019-12-05 09:05:00', null);
INSERT INTO `attendance` VALUES ('2017001001', '小李', '1', '1', '1', '2019-12-05 23:14:04', '2019-12-05 23:14:04', '0');
INSERT INTO `attendance` VALUES ('2017001001', '小张', '1', '1', '3', '2019-12-06 09:05:00', '2019-12-06 10:00:00', null);
INSERT INTO `attendance` VALUES ('2017001001', '小张', '1', '1', '1', '2019-12-06 11:15:00', '2019-12-06 12:00:00', null);
INSERT INTO `attendance` VALUES ('2017001001', '小栋', '1', '1', '4', '2019-12-07 10:20:00', '2019-12-07 11:05:00', null);
INSERT INTO `attendance` VALUES ('2017001001', '小李', '1', '1', '1', '2019-12-09 08:20:00', '2019-12-05 09:05:00', null);
INSERT INTO `attendance` VALUES ('2017001002', '小皮', '1', '1', '2', '2019-12-04 19:37:00', '2019-12-04 20:37:00', '1');
INSERT INTO `attendance` VALUES ('2017001003', '小强', '1', '1', '3', '2019-12-04 19:37:00', '2019-12-04 20:37:00', '1');

-- ----------------------------
-- Table structure for counselor
-- ----------------------------
DROP TABLE IF EXISTS `counselor`;
CREATE TABLE `counselor` (
  `counNo` int(11) NOT NULL AUTO_INCREMENT,
  `counName` varchar(45) NOT NULL,
  `grade` int(11) NOT NULL,
  PRIMARY KEY (`counNo`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of counselor
-- ----------------------------
INSERT INTO `counselor` VALUES ('101', '李一', '1');
INSERT INTO `counselor` VALUES ('102', '皮星', '2');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `courNo` int(11) NOT NULL AUTO_INCREMENT,
  `courName` varchar(45) NOT NULL,
  `totalTime` int(11) NOT NULL,
  PRIMARY KEY (`courNo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'c语言程序设计', '78');
INSERT INTO `course` VALUES ('2', 'java高级编程', '80');
INSERT INTO `course` VALUES ('3', '数据结构', '82');
INSERT INTO `course` VALUES ('4', '计算机组成原理', '78');
INSERT INTO `course` VALUES ('5', '高等数学', '78');
INSERT INTO `course` VALUES ('6', '操作系统原理', '80');
INSERT INTO `course` VALUES ('7', '中国近现代史', '78');
INSERT INTO `course` VALUES ('8', '计算机网络', '80');
INSERT INTO `course` VALUES ('9', '大学物理', '80');
INSERT INTO `course` VALUES ('10', '大学英语', '80');

-- ----------------------------
-- Table structure for dayoff
-- ----------------------------
DROP TABLE IF EXISTS `dayoff`;
CREATE TABLE `dayoff` (
  `JTNo` int(11) NOT NULL AUTO_INCREMENT,
  `stuNo` int(11) NOT NULL,
  `stuName` varchar(45) NOT NULL,
  `grade` int(11) NOT NULL,
  `classId` int(11) NOT NULL,
  `courNo` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `content` varchar(100) NOT NULL,
  `startdate` datetime NOT NULL,
  `enddate` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`JTNo`),
  KEY `courNo_doff` (`courNo`),
  KEY `stuNo_idx` (`stuNo`),
  KEY `stuName_idx` (`stuName`),
  CONSTRAINT `courNo_doff` FOREIGN KEY (`courNo`) REFERENCES `course` (`courNo`),
  CONSTRAINT `stuNo` FOREIGN KEY (`stuNo`) REFERENCES `student` (`stuNo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dayoff
-- ----------------------------
INSERT INTO `dayoff` VALUES ('1', '2016001001', '小小', '2', '1', '1', '1', '回家看妈妈', '2019-12-05 00:00:00', '2019-12-06 00:00:00', '1');
INSERT INTO `dayoff` VALUES ('2', '2017001001', '小李', '1', '1', '1', '1', 'hello', '2019-12-04 00:00:00', '2019-12-04 00:00:00', '2');
INSERT INTO `dayoff` VALUES ('3', '2017001001', '小李', '1', '1', '1', '1', '1', '2019-12-05 00:00:00', '2019-12-12 00:00:00', '1');
INSERT INTO `dayoff` VALUES ('4', '2017001001', '小李', '1', '1', '1', '1', '3', '2019-12-04 00:00:00', '2019-12-04 00:00:00', '1');
INSERT INTO `dayoff` VALUES ('5', '2017001001', '小李', '1', '1', '2', '1', '33333', '2019-12-04 00:00:00', '2019-12-05 00:00:00', '2');
INSERT INTO `dayoff` VALUES ('6', '2016001001', '小小', '2', '1', '1', '1', '没什么原因，就是想请假', '2019-12-05 00:00:00', '2019-12-06 00:00:00', '1');

-- ----------------------------
-- Table structure for paike
-- ----------------------------
DROP TABLE IF EXISTS `paike`;
CREATE TABLE `paike` (
  `courNo` int(11) NOT NULL,
  `classId` varchar(45) NOT NULL,
  `xingQi` int(11) NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time DEFAULT NULL,
  PRIMARY KEY (`courNo`,`classId`,`xingQi`,`startTime`),
  CONSTRAINT `courNo` FOREIGN KEY (`courNo`) REFERENCES `course` (`courNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paike
-- ----------------------------
INSERT INTO `paike` VALUES ('1', '1', '1', '08:20:00', '10:00:00');
INSERT INTO `paike` VALUES ('1', '1', '3', '08:20:00', '10:00:00');
INSERT INTO `paike` VALUES ('1', '2', '1', '08:20:00', '10:00:00');
INSERT INTO `paike` VALUES ('1', '2', '3', '08:20:00', '10:00:00');
INSERT INTO `paike` VALUES ('1', '3', '1', '10:20:00', '12:00:00');
INSERT INTO `paike` VALUES ('1', '3', '3', '10:20:00', '12:00:00');
INSERT INTO `paike` VALUES ('1', '4', '1', '10:20:00', '12:00:00');
INSERT INTO `paike` VALUES ('1', '4', '3', '10:20:00', '12:00:00');

-- ----------------------------
-- Table structure for selectedcourse
-- ----------------------------
DROP TABLE IF EXISTS `selectedcourse`;
CREATE TABLE `selectedcourse` (
  `stuNo` int(11) NOT NULL,
  `courNo` int(11) NOT NULL,
  `finTime` int(11) NOT NULL,
  PRIMARY KEY (`stuNo`,`courNo`),
  KEY `courNo_idx_sel` (`courNo`),
  CONSTRAINT `courNo_sel` FOREIGN KEY (`courNo`) REFERENCES `course` (`courNo`),
  CONSTRAINT `stuNo_sel` FOREIGN KEY (`stuNo`) REFERENCES `student` (`stuNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of selectedcourse
-- ----------------------------
INSERT INTO `selectedcourse` VALUES ('2016001001', '1', '10');
INSERT INTO `selectedcourse` VALUES ('2016001001', '2', '10');
INSERT INTO `selectedcourse` VALUES ('2016001001', '3', '10');
INSERT INTO `selectedcourse` VALUES ('2016001001', '5', '10');
INSERT INTO `selectedcourse` VALUES ('2016001001', '6', '10');
INSERT INTO `selectedcourse` VALUES ('2016001001', '8', '10');
INSERT INTO `selectedcourse` VALUES ('2016001001', '9', '10');
INSERT INTO `selectedcourse` VALUES ('2017001001', '1', '10');
INSERT INTO `selectedcourse` VALUES ('2017001001', '2', '10');
INSERT INTO `selectedcourse` VALUES ('2017001001', '6', '12');
INSERT INTO `selectedcourse` VALUES ('2017001001', '8', '12');
INSERT INTO `selectedcourse` VALUES ('2017001001', '9', '12');
INSERT INTO `selectedcourse` VALUES ('2017001001', '10', '10');
INSERT INTO `selectedcourse` VALUES ('2017001003', '6', '12');
INSERT INTO `selectedcourse` VALUES ('2017001007', '6', '12');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `stuNo` int(11) NOT NULL AUTO_INCREMENT,
  `stuName` varchar(45) NOT NULL,
  `classId` int(11) NOT NULL,
  `grade` int(11) NOT NULL,
  PRIMARY KEY (`stuNo`)
) ENGINE=InnoDB AUTO_INCREMENT=2017001010 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('2016001001', '小小', '1', '2');
INSERT INTO `student` VALUES ('2016001002', '小也', '1', '2');
INSERT INTO `student` VALUES ('2017001001', '小李', '1', '1');
INSERT INTO `student` VALUES ('2017001002', '小皮', '1', '1');
INSERT INTO `student` VALUES ('2017001003', '小强', '1', '1');
INSERT INTO `student` VALUES ('2017001004', '小张', '1', '1');
INSERT INTO `student` VALUES ('2017001005', '小栋', '1', '1');
INSERT INTO `student` VALUES ('2017001006', '小星', '2', '1');
INSERT INTO `student` VALUES ('2017001007', '小哇', '2', '1');
INSERT INTO `student` VALUES ('2017001008', '小草', '3', '1');
INSERT INTO `student` VALUES ('2017001009', '小中', '2', '1');

-- ----------------------------
-- Table structure for taughtcourse
-- ----------------------------
DROP TABLE IF EXISTS `taughtcourse`;
CREATE TABLE `taughtcourse` (
  `teaNo` int(11) NOT NULL,
  `courNo` int(11) NOT NULL,
  `classId` int(11) NOT NULL,
  `teaTime` int(11) NOT NULL,
  PRIMARY KEY (`teaNo`,`courNo`,`classId`),
  KEY `courNo_tau` (`courNo`),
  CONSTRAINT `courNo_tau` FOREIGN KEY (`courNo`) REFERENCES `course` (`courNo`),
  CONSTRAINT `teaNo_tau` FOREIGN KEY (`teaNo`) REFERENCES `teacher` (`teaNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of taughtcourse
-- ----------------------------
INSERT INTO `taughtcourse` VALUES ('1', '1', '1', '10');
INSERT INTO `taughtcourse` VALUES ('1', '6', '1', '10');
INSERT INTO `taughtcourse` VALUES ('1', '6', '2', '10');
INSERT INTO `taughtcourse` VALUES ('2', '10', '1', '10');
INSERT INTO `taughtcourse` VALUES ('3', '9', '1', '10');
INSERT INTO `taughtcourse` VALUES ('5', '8', '1', '10');
INSERT INTO `taughtcourse` VALUES ('7', '3', '1', '10');
INSERT INTO `taughtcourse` VALUES ('8', '5', '1', '10');
INSERT INTO `taughtcourse` VALUES ('9', '2', '1', '10');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `teaNo` int(11) NOT NULL AUTO_INCREMENT,
  `teaName` varchar(45) NOT NULL,
  PRIMARY KEY (`teaNo`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '李老师');
INSERT INTO `teacher` VALUES ('2', '皮老师');
INSERT INTO `teacher` VALUES ('3', '强老师');
INSERT INTO `teacher` VALUES ('4', '张老师');
INSERT INTO `teacher` VALUES ('5', '栋老师');
INSERT INTO `teacher` VALUES ('6', '星老师');
INSERT INTO `teacher` VALUES ('7', '哇老师');
INSERT INTO `teacher` VALUES ('8', '高老师');
INSERT INTO `teacher` VALUES ('9', '中老师');
INSERT INTO `teacher` VALUES ('10', '小老师');
INSERT INTO `teacher` VALUES ('11', '也老师');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userNo` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `permission` int(11) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`username`),
  KEY `userNo_coun` (`userNo`),
  CONSTRAINT `userNo_coun` FOREIGN KEY (`userNo`) REFERENCES `counselor` (`counNo`),
  CONSTRAINT `userNo_stu` FOREIGN KEY (`userNo`) REFERENCES `student` (`stuNo`),
  CONSTRAINT `userNo_tea` FOREIGN KEY (`userNo`) REFERENCES `teacher` (`teaNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('101', 'cliyi', '3', '123456');
INSERT INTO `user` VALUES ('102', 'cpixing', '3', '123456');
INSERT INTO `user` VALUES ('5', 'tdong', '2', '123456');
INSERT INTO `user` VALUES ('8', 'tgao', '2', '123456');
INSERT INTO `user` VALUES ('1', 'tli', '2', '123456');
INSERT INTO `user` VALUES ('2', 'tpi', '2', '123456');
INSERT INTO `user` VALUES ('3', 'tqiang', '2', '123456');
INSERT INTO `user` VALUES ('7', 'twa', '2', '123456');
INSERT INTO `user` VALUES ('10', 'txiao', '2', '123456');
INSERT INTO `user` VALUES ('6', 'txing', '2', '123456');
INSERT INTO `user` VALUES ('11', 'tye', '2', '123456');
INSERT INTO `user` VALUES ('4', 'tzhang', '2', '123456');
INSERT INTO `user` VALUES ('9', 'tzhong', '2', '123456');
INSERT INTO `user` VALUES ('2017001008', 'xiaocao', '1', '123456');
INSERT INTO `user` VALUES ('2017001005', 'xiaodong', '1', '123456');
INSERT INTO `user` VALUES ('2017001001', 'xiaoli', '1', '123456');
INSERT INTO `user` VALUES ('2017001002', 'xiaopi', '1', '123456');
INSERT INTO `user` VALUES ('2017001003', 'xiaoqiang', '1', '123456');
INSERT INTO `user` VALUES ('2017001007', 'xiaowa', '1', '123456');
INSERT INTO `user` VALUES ('2016001001', 'xiaoxiao', '1', '123456');
INSERT INTO `user` VALUES ('2017001006', 'xiaoxing', '1', '123456');
INSERT INTO `user` VALUES ('2016001002', 'xiaoye', '1', '123456');
INSERT INTO `user` VALUES ('2017001004', 'xiaozhang', '1', '123456');
INSERT INTO `user` VALUES ('2017001009', 'xiaozhong', '1', '123456');
