--
-- Table structure for table `logon_db_version`
--

DROP TABLE IF EXISTS `logon_db_version`;
CREATE TABLE `logon_db_version` (
  `required_803_logon_db_version` bit(1) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Last applied sql update to DB';

--
-- Dumping data for table `logon_db_version`
--

LOCK TABLES `logon_db_version` WRITE;
/*!40000 ALTER TABLE `logon_db_version` DISABLE KEYS */;
INSERT INTO `logon_db_version` VALUES
(NULL);
/*!40000 ALTER TABLE `logon_db_version` ENABLE KEYS */;
UNLOCK TABLES;