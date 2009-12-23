ALTER TABLE version CHANGE COLUMN required_2042_01_world_spell_pet_auras required_2080_2083_world_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (67353);
REPLACE INTO `spell_proc_event` VALUES
(67353, 0x00000000, 7, 0x00008000, 0x00100500, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);