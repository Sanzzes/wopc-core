ALTER TABLE character_db_version CHANGE COLUMN required_1093_characters_character required_1230_characters_character_reputation bit;

UPDATE character_reputation SET standing = 0 WHERE faction IN (729, 730) AND standing < 0;

TRUNCATE TABLE groups;
TRUNCATE TABLE group_instance; 
TRUNCATE TABLE group_member;
TRUNCATE TABLE instance;
TRUNCATE TABLE instance_reset;