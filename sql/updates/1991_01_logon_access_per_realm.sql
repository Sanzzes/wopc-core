ALTER TABLE logon_db_version CHANGE COLUMN required_1991_01_logon_account_settings required_1991_01_logon_access_per_realm bit;

-- ----------------------------
-- Table structure for `account_access`
-- ----------------------------
DROP TABLE IF EXISTS `account_access`;
CREATE TABLE `account_access` (
  `id` bigint(20) unsigned NOT NULL,
  `gmlevel` tinyint(3) unsigned NOT NULL,
  `RealmID` int(11) NOT NULL,
  PRIMARY KEY (`id`,`RealmID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of account_access
-- ----------------------------

INSERT INTO `account_access` (id, gmlevel, RealmID)
SELECT `id`, `gmlevel`, -1 FROM `account` WHERE `gmlevel` > 0;

ALTER TABLE account DROP COLUMN `gmlevel`;