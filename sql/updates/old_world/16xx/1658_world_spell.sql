ALTER TABLE version CHANGE COLUMN required_1651_world_spell required_1658_world_spell bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (64127);
INSERT INTO `spell_proc_event` VALUES
(64127,0x00,6,0x00000001,0x00000001,0x00000000,0x00000000,0x00000000,0.000000,0.000000,0);
