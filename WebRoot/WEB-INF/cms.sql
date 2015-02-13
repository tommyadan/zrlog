# Date: 2014-07-22 13:23:19
# Generator: MySQL-Front 5.3  (Build 4.43)

/*!40101 SET NAMES utf8 */;

DROP TABLE IF EXISTS `comment`, `link`, `log`, `lognav`, `plugin`, `tag`, `type`, `user`, `website`;

#
# Structure for table "link"
#

DROP TABLE IF EXISTS `link`;
CREATE TABLE `link` (
  `linkId` int(11) NOT NULL AUTO_INCREMENT,
  `alt` varchar(255) DEFAULT NULL,
  `linkName` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`linkId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Structure for table "lognav"
#

DROP TABLE IF EXISTS `lognav`;
CREATE TABLE `lognav` (
  `navId` int(11) NOT NULL AUTO_INCREMENT,
  `navName` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`navId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

#
# Structure for table "plugin"
#

DROP TABLE IF EXISTS `plugin`;
CREATE TABLE `plugin` (
  `pluginId` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `isSystem` bit(1) DEFAULT NULL,
  `pTitle` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `pluginName` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`pluginId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

#
# Structure for table "tag"
#

DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `tagId` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) NOT NULL DEFAULT '0',
  `text` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`tagId`),
  UNIQUE KEY `text` (`text`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

#
# Structure for table "type"
#

DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `typeId` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `typeName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`typeId`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `header` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `UK_hl8fftx66p59oqgkkcfit3eay` (`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Structure for table "log"
#

DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `logId` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) DEFAULT NULL,
  `canComment` bit(1) DEFAULT b'0',
  `click` int(11) DEFAULT '0',
  `content` text,
  `digest` text,
  `keywords` varchar(255) DEFAULT NULL,
  `recommended` bit(1) DEFAULT b'0',
  `releaseTime` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`logId`),
  KEY `FK_ahbt764f87xivuwnlifrouv3r` (`typeId`),
  KEY `FK_brn81v6sekj9w5gbdppqc1dpe` (`userId`),
  CONSTRAINT `FK_ahbt764f87xivuwnlifrouv3r` FOREIGN KEY (`typeId`) REFERENCES `type` (`typeId`),
  CONSTRAINT `FK_brn81v6sekj9w5gbdppqc1dpe` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;

#
# Structure for table "comment"
#

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `commentId` int(11) NOT NULL AUTO_INCREMENT,
  `commTime` datetime DEFAULT NULL,
  `hide` bit(1) DEFAULT NULL,
  `td` datetime DEFAULT NULL,
  `userComment` varchar(2048) DEFAULT NULL,
  `userHome` varchar(255) DEFAULT NULL,
  `userIp` varchar(255) DEFAULT NULL,
  `userMail` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `logId` int(11) DEFAULT NULL,
  `idRead` bit(1) DEFAULT NULL,
  PRIMARY KEY (`commentId`),
  KEY `FK_lcq3rf9ld0x969wbel2c1gwou` (`logId`),
  CONSTRAINT `FK_lcq3rf9ld0x969wbel2c1gwou` FOREIGN KEY (`logId`) REFERENCES `log` (`logId`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

#
# Structure for table "website"
#

DROP TABLE IF EXISTS `website`;
CREATE TABLE `website` (
  `siteId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` bit(1) DEFAULT 1,
  `value` varchar(255) DEFAULT NULL,
  `remark` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`siteId`),
  UNIQUE KEY `UK_1g5fdnldm2tgv94txo3kb4rn6` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
