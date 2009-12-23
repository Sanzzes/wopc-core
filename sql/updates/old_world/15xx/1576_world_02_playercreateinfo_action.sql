ALTER TABLE version CHANGE COLUMN required_1576_world_01_playercreateinfo_spell required_1576_world_02_playercreateinfo_action bit;

UPDATE `playercreateinfo_action` 
 SET `action` = 26297
 WHERE `action` IN (20554,26296,50621) AND `type` = 0;
