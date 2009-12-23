--
-- Table structure for table `character_db_version`
--

DROP TABLE IF EXISTS `character_db_version`;
CREATE TABLE `character_db_version` (
  `required_803_characters_character_db_version` bit(1) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Last applied sql update to DB';

--
-- Dumping data for table `character_db_version`
--

LOCK TABLES `character_db_version` WRITE;
INSERT INTO `character_db_version` VALUES
(NULL);
UNLOCK TABLES;