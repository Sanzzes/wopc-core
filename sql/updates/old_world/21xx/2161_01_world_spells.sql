ALTER TABLE version CHANGE COLUMN required_2156_01_world_scripts required_2161_01_world_spells bit;

DELETE FROM `spell_script_target` WHERE `entry` IN (54160,59474);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(54160, 1, 29266),
(59474, 1, 29266);
