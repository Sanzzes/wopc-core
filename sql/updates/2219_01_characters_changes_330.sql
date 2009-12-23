ALTER TABLE character_db_version CHANGE COLUMN required_2015_01_characters_character_skills required_2219_01_characters_changes_330 bit;

RENAME TABLE account_data TO account_data_temp;
DROP TABLE IF EXISTS account_data;
CREATE TABLE account_data (
  `account` int(11) unsigned NOT NULL default '0',
  `type` int(11) unsigned NOT NULL default '0',
  `time` bigint(11) unsigned NOT NULL default '0',
  `data` longblob NOT NULL,
  PRIMARY KEY  (`account`,`type`)
) ENGINE=MYISAM DEFAULT CHARSET=utf8;
INSERT INTO account_data SELECT * FROM account_data_temp;
DROP TABLE account_data_temp;



RENAME TABLE character_account_data TO character_account_data_temp;
DROP TABLE IF EXISTS character_account_data;
CREATE TABLE character_account_data (
  `guid` int(11) unsigned NOT NULL default '0',
  `type` int(11) unsigned NOT NULL default '0',
  `time` bigint(11) unsigned NOT NULL default '0',
  `data` longblob NOT NULL,
  PRIMARY KEY  (`guid`,`type`)
) ENGINE=MYISAM DEFAULT CHARSET=utf8;
INSERT INTO character_account_data SELECT * FROM character_account_data_temp;
DROP TABLE character_account_data_temp;

DELETE FROM `characters`.`character_spell` WHERE `spell` IN (1785,1786,1787);
DELETE FROM `world`.`npc_trainer` WHERE `spell` IN (1785,1786,1787);


DELETE FROM `characters`.`character_spell` WHERE `spell` IN (6783,9913);
DELETE FROM `world`.`npc_trainer` WHERE `spell` IN (6783,9913);

