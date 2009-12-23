ALTER TABLE version CHANGE COLUMN required_1534_world_fix_arena_and_bg required_1538_world_bg_scripts bit;

REPLACE INTO `ribon_string` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`) VALUES 
	(689,'Let the battle for Strand of the Ancients begin!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(688,'The battle for Strand of the Ancients begins in 30 seconds. Prepare yourselves!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(799,'The battle for Strand of the Ancients in 1 minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(798,'The battle for Strand of the Ancients begins in 2 minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(797,'Let the battle for Isle of Conquest begin!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(796,'The battle for Isle of Conquest begins in 30 seconds. Prepare yourselves!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(795,'The battle for Isle of Conquest begins in 1 minute.\r\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(794,'The battle for Isle of Conquest begins in 2 minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
