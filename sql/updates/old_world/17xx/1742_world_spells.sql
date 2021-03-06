ALTER TABLE version CHANGE COLUMN required_1739_world_ixilium_string required_1742_world_spells bit;

UPDATE `creature_template` SET `ScriptName`='npc_mageguard_dalaran' WHERE `entry` IN (29254,29255);

-- positions for Dalaran 'Trespasser!' spell
DELETE FROM `spell_target_position` WHERE `id` IN (54028,54029);
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(54028, 571, 5758.79, 678.359, 642.726, 5.572),
(54029, 571, 5849.16, 602.093, 651.13, 2.364);
