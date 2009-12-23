ALTER TABLE character_db_version CHANGE COLUMN required_1065_characters_reputation required_1093_characters_character bit;
ALTER TABLE  `groups` 
    ADD COLUMN  `raiddifficulty` INT( 11 ) UNSIGNED DEFAULT  '0' NOT NULL AFTER  `difficulty` ;

ALTER TABLE  `bugreport` 
    CHANGE  `type`  `type` LONGTEXT NOT NULL ,
    CHANGE  `content`  `content` LONGTEXT NOT NULL ;
	
UPDATE characters SET DATA = REPLACE( DATA ,  '  ',  ' ' ) ;
UPDATE characters SET DATA = CONCAT( TRIM( DATA ) ,  ' ' ) ;

UPDATE  `characters` SET  `data` = CONCAT( 
    SUBSTRING_INDEX(  `data` ,  ' ', 1167 +1 ) ,  ' ',
	'0 0 ',
	SUBSTRING_INDEX( SUBSTRING_INDEX(  `data` ,  ' ', 1246 +1 ) ,  ' ', -1246 +1168 -1 ) ,  ' ',
	'0 0 0 ',
	SUBSTRING_INDEX( SUBSTRING_INDEX(  `data` ,  ' ', 1294 +1 ) ,  ' ', -1294 +1247 -1 ) ,  ' ',
	'0 '
	) 
WHERE LENGTH( SUBSTRING_INDEX( DATA ,  ' ', 1294 ) ) < LENGTH( DATA ) AND LENGTH( SUBSTRING_INDEX( DATA ,  ' ', 1294 +1 ) ) >= LENGTH( DATA ) ;

UPDATE characters SET DATA = REPLACE( DATA ,  '  ',  ' ' ) ;
UPDATE characters SET DATA = CONCAT( TRIM( DATA ) ,  ' ' ) ;
