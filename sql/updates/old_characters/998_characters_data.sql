ALTER TABLE character_db_version CHANGE COLUMN required_894_characters_game_event required_998_characters_data bit;

-- Broken character data blobs lately? Run this!
-- UPDATE `characters` SET `data`=CONCAT(SUBSTRING_INDEX(`data`,' ',1248), ' ',SUBSTRING_INDEX(`data`,' ',-(1295-1248))) WHERE SUBSTRING_INDEX(SUBSTRING_INDEX(`data`,' ',1295+1),' ',-1) IS NOT NULL;
