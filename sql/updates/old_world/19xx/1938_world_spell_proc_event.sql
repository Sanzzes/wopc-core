ALTER TABLE version CHANGE COLUMN required_1915_world_ixilium_string required_1938_world_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry`=53601;
INSERT INTO spell_proc_event VALUES(53601, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x000A02A8, 0x00000000, 0.000000, 0.000000, 6);