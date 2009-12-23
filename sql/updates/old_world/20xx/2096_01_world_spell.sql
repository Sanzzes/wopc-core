ALTER TABLE version CHANGE COLUMN required_2094_01_world_spell_script_target required_2096_01_world_spell bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (57989);

INSERT INTO `spell_proc_event` VALUES
(57989, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0.000000, 0.000000, 0);
