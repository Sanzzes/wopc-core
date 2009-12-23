ALTER TABLE version CHANGE COLUMN required_1820_world_arenadoors required_1832_world_scripts bit;
UPDATE `gameobject_template` SET `ScriptName`='go_blackfathom_altar' WHERE `entry` IN (103015,103016);
