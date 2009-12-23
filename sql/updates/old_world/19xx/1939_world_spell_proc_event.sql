ALTER TABLE version CHANGE COLUMN required_1939_world_spell_chain required_1939_world_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (65661);
INSERT INTO `spell_proc_event` VALUES
 (65661, 0, 15, 0x00400010, 0x20020004, 0x00000000, 0x00000010, 0x00000000, 0.000000, 100.000000, 0);